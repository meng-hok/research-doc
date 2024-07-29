let str = `  
    <nav class="col-md-2 d-none d-md-block bg-default sidebar">
        <div class="sidebar-sticky" >
            <ul class="nav flex-column">
            <li class="nav-item">
                <a class="nav-link text-white " href="index.html">
                    ទំព័រដើម <span class="sr-only">(current)</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-white " href="documents.html">
                    បញ្ចូលឯកសារ
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-white" href="documents.html">
                    រាយការណ៍លទ្ធផល
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-white" href="calculations.html">
                    បញ្ជី ឯកសារ
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-white " href="user.html">
                    គ្រប់គ្រងគណនី
                </a>
            </li>
            </ul>
        </div>
</nav>
                    
                    `
// active
$("#target_div").prepend(str)     