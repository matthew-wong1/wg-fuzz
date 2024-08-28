struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 17> = array<vec4<i32>, 17>(vec4<i32>(2147483647i, 1i, 2147483647i, -1i), vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 52705i), vec4<i32>(-1i, 35826i, 2147483647i, 2147483647i), vec4<i32>(9482i, -20860i, i32(-2147483648), -1i), vec4<i32>(38665i, -7257i, 14947i, -23i), vec4<i32>(-29919i, i32(-2147483648), -9216i, 2147483647i), vec4<i32>(-4271i, i32(-2147483648), 9210i, -23294i), vec4<i32>(0i, 2147483647i, 9495i, -2578i), vec4<i32>(i32(-2147483648), 0i, -1i, 53911i), vec4<i32>(37212i, -6209i, -20215i, 2147483647i), vec4<i32>(i32(-2147483648), 2147483647i, 75932i, -1i), vec4<i32>(i32(-2147483648), 0i, 1i, 0i), vec4<i32>(1872i, 32560i, 0i, -15825i), vec4<i32>(2147483647i, i32(-2147483648), -16876i, -29680i), vec4<i32>(18635i, 1010i, -45436i, 36774i), vec4<i32>(0i, -60375i, 19194i, 2147483647i), vec4<i32>(2147483647i, -1i, i32(-2147483648), 2147483647i));

var<private> global1: vec2<u32> = vec2<u32>(63784u, 0u);

var<private> global2: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(Struct_1(vec4<i32>(33010i, -1i, 2147483647i, i32(-2147483648)), vec4<bool>(true, false, false, false)), Struct_2(Struct_1(vec4<i32>(-1i, 68260i, -40308i, 2147483647i), vec4<bool>(false, true, false, false)), true, -31233i, Struct_1(vec4<i32>(-1i, -34166i, -35974i, -1i), vec4<bool>(true, false, false, true)), Struct_1(vec4<i32>(-50055i, 33877i, 28599i, i32(-2147483648)), vec4<bool>(false, true, false, true)))), Struct_3(Struct_1(vec4<i32>(0i, 35249i, -2832i, 82770i), vec4<bool>(true, false, false, false)), Struct_2(Struct_1(vec4<i32>(-37072i, -16861i, -846i, 42661i), vec4<bool>(false, true, false, true)), false, 2147483647i, Struct_1(vec4<i32>(0i, 49915i, 5068i, 5042i), vec4<bool>(false, false, false, false)), Struct_1(vec4<i32>(48474i, 2147483647i, 1i, 1i), vec4<bool>(false, false, false, true)))), Struct_3(Struct_1(vec4<i32>(332i, -76241i, -4968i, i32(-2147483648)), vec4<bool>(false, true, true, false)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, -1i), vec4<bool>(true, false, true, true)), true, 0i, Struct_1(vec4<i32>(i32(-2147483648), 17548i, -41412i, 1i), vec4<bool>(true, false, false, false)), Struct_1(vec4<i32>(i32(-2147483648), 1i, 0i, i32(-2147483648)), vec4<bool>(false, false, true, true)))), Struct_3(Struct_1(vec4<i32>(3188i, -1i, -37681i, 29297i), vec4<bool>(false, true, true, false)), Struct_2(Struct_1(vec4<i32>(-8129i, -59654i, i32(-2147483648), 1i), vec4<bool>(false, false, true, false)), true, 0i, Struct_1(vec4<i32>(i32(-2147483648), -31953i, 10222i, -1i), vec4<bool>(false, false, true, false)), Struct_1(vec4<i32>(11506i, -15568i, i32(-2147483648), 42584i), vec4<bool>(true, false, false, true)))), Struct_3(Struct_1(vec4<i32>(1i, 2147483647i, -1i, i32(-2147483648)), vec4<bool>(true, true, false, true)), Struct_2(Struct_1(vec4<i32>(2147483647i, 36878i, -1i, 2147483647i), vec4<bool>(true, false, false, true)), true, -1i, Struct_1(vec4<i32>(-13842i, 2147483647i, 2147483647i, i32(-2147483648)), vec4<bool>(false, true, true, true)), Struct_1(vec4<i32>(-1i, 33669i, i32(-2147483648), 15866i), vec4<bool>(false, true, false, false)))), Struct_3(Struct_1(vec4<i32>(23018i, 0i, 0i, -7326i), vec4<bool>(true, true, true, true)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -10023i, -20539i, 10406i), vec4<bool>(false, true, false, false)), false, 60110i, Struct_1(vec4<i32>(-39480i, 1i, 2147483647i, 1i), vec4<bool>(true, false, false, false)), Struct_1(vec4<i32>(1i, 0i, 43540i, -8533i), vec4<bool>(true, false, false, false)))), Struct_3(Struct_1(vec4<i32>(-23226i, 51691i, 23105i, 2147483647i), vec4<bool>(true, false, false, true)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -9987i, -39753i, -13125i), vec4<bool>(true, true, true, true)), false, 0i, Struct_1(vec4<i32>(-1i, -25214i, 2147483647i, -8030i), vec4<bool>(true, false, true, true)), Struct_1(vec4<i32>(-1i, -10741i, -30054i, 2147483647i), vec4<bool>(false, false, true, true)))), Struct_3(Struct_1(vec4<i32>(i32(-2147483648), 0i, 1i, 1i), vec4<bool>(true, false, true, false)), Struct_2(Struct_1(vec4<i32>(2147483647i, 51644i, i32(-2147483648), -52603i), vec4<bool>(false, true, false, true)), false, 7069i, Struct_1(vec4<i32>(40716i, -1i, 1i, -15718i), vec4<bool>(true, true, false, false)), Struct_1(vec4<i32>(53993i, -16058i, i32(-2147483648), -82969i), vec4<bool>(true, false, true, true)))), Struct_3(Struct_1(vec4<i32>(36723i, 12887i, 2147483647i, i32(-2147483648)), vec4<bool>(true, false, false, false)), Struct_2(Struct_1(vec4<i32>(7595i, -1i, 0i, 16033i), vec4<bool>(false, true, true, true)), true, -46139i, Struct_1(vec4<i32>(-76977i, 9976i, 72924i, -37477i), vec4<bool>(false, true, false, false)), Struct_1(vec4<i32>(i32(-2147483648), 22822i, -1i, -43382i), vec4<bool>(false, true, true, true)))), Struct_3(Struct_1(vec4<i32>(21474i, -4509i, i32(-2147483648), 20283i), vec4<bool>(true, true, false, false)), Struct_2(Struct_1(vec4<i32>(24101i, 1i, i32(-2147483648), -31027i), vec4<bool>(true, true, true, true)), true, 23149i, Struct_1(vec4<i32>(-33331i, -1i, 1i, 35594i), vec4<bool>(false, true, true, false)), Struct_1(vec4<i32>(1i, 1i, 1913i, -25410i), vec4<bool>(true, false, true, true)))), Struct_3(Struct_1(vec4<i32>(-18741i, 1i, 2086i, 1i), vec4<bool>(true, true, true, false)), Struct_2(Struct_1(vec4<i32>(-45527i, 26069i, 0i, -37263i), vec4<bool>(true, false, true, false)), false, 2147483647i, Struct_1(vec4<i32>(-29528i, i32(-2147483648), 25947i, i32(-2147483648)), vec4<bool>(false, true, true, true)), Struct_1(vec4<i32>(2147483647i, 1i, 1i, 15193i), vec4<bool>(false, false, true, false)))), Struct_3(Struct_1(vec4<i32>(-1i, 1i, -6662i, 0i), vec4<bool>(true, true, true, true)), Struct_2(Struct_1(vec4<i32>(2147483647i, 1i, 0i, 901i), vec4<bool>(false, true, true, false)), false, 1i, Struct_1(vec4<i32>(13884i, -13019i, 49037i, -6226i), vec4<bool>(true, false, true, false)), Struct_1(vec4<i32>(i32(-2147483648), -7675i, -2423i, 30543i), vec4<bool>(true, true, false, true)))), Struct_3(Struct_1(vec4<i32>(-3711i, 16824i, -14987i, -4874i), vec4<bool>(false, true, true, false)), Struct_2(Struct_1(vec4<i32>(890i, 52392i, 3748i, 0i), vec4<bool>(false, false, false, true)), false, i32(-2147483648), Struct_1(vec4<i32>(0i, i32(-2147483648), 35568i, 1i), vec4<bool>(false, true, false, true)), Struct_1(vec4<i32>(24106i, 1i, -16234i, -65989i), vec4<bool>(false, true, false, false)))), Struct_3(Struct_1(vec4<i32>(26533i, -1i, 1i, 2147483647i), vec4<bool>(false, false, true, true)), Struct_2(Struct_1(vec4<i32>(-19471i, 2147483647i, -1i, -3979i), vec4<bool>(true, false, true, true)), true, i32(-2147483648), Struct_1(vec4<i32>(-31281i, 36836i, 17925i, 4981i), vec4<bool>(false, false, true, true)), Struct_1(vec4<i32>(17406i, 29406i, i32(-2147483648), 18905i), vec4<bool>(true, true, false, false)))), Struct_3(Struct_1(vec4<i32>(8333i, 17791i, -1i, -2823i), vec4<bool>(true, true, false, true)), Struct_2(Struct_1(vec4<i32>(2147483647i, 9735i, 25256i, i32(-2147483648)), vec4<bool>(false, false, true, false)), false, -12308i, Struct_1(vec4<i32>(i32(-2147483648), 1i, 1i, 48132i), vec4<bool>(true, false, false, false)), Struct_1(vec4<i32>(38644i, 0i, -19729i, 1i), vec4<bool>(true, false, true, false)))), Struct_3(Struct_1(vec4<i32>(1i, 0i, -16191i, -7021i), vec4<bool>(false, true, true, true)), Struct_2(Struct_1(vec4<i32>(2147483647i, 12399i, 2147483647i, 1i), vec4<bool>(false, false, false, false)), false, -17335i, Struct_1(vec4<i32>(-36610i, -40305i, -1i, 0i), vec4<bool>(false, false, false, false)), Struct_1(vec4<i32>(-49848i, 0i, -32770i, -31374i), vec4<bool>(true, false, true, true)))), Struct_3(Struct_1(vec4<i32>(11237i, 2147483647i, 2147483647i, -9970i), vec4<bool>(true, true, true, false)), Struct_2(Struct_1(vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), 0i), vec4<bool>(false, true, true, true)), false, i32(-2147483648), Struct_1(vec4<i32>(2147483647i, -26416i, 36816i, 2147483647i), vec4<bool>(false, false, false, false)), Struct_1(vec4<i32>(0i, 13932i, -56927i, -1i), vec4<bool>(true, false, true, true)))), Struct_3(Struct_1(vec4<i32>(-22364i, 2147483647i, 29621i, 31931i), vec4<bool>(true, false, false, false)), Struct_2(Struct_1(vec4<i32>(-16250i, 14614i, -1i, -1i), vec4<bool>(true, true, true, false)), true, 2147483647i, Struct_1(vec4<i32>(-20323i, 24751i, -1i, -18154i), vec4<bool>(false, false, true, false)), Struct_1(vec4<i32>(43242i, 1i, 40771i, -3960i), vec4<bool>(false, true, false, false)))), Struct_3(Struct_1(vec4<i32>(-20033i, 2504i, -9641i, 0i), vec4<bool>(false, false, false, false)), Struct_2(Struct_1(vec4<i32>(-1i, 2147483647i, 19053i, 4960i), vec4<bool>(true, true, true, true)), false, 0i, Struct_1(vec4<i32>(1i, -25639i, -69370i, i32(-2147483648)), vec4<bool>(true, true, true, false)), Struct_1(vec4<i32>(1i, -1i, 28956i, 1896i), vec4<bool>(false, false, true, true)))), Struct_3(Struct_1(vec4<i32>(-49757i, 1i, -77483i, -37394i), vec4<bool>(false, false, false, true)), Struct_2(Struct_1(vec4<i32>(-70308i, -27061i, -40871i, -15512i), vec4<bool>(true, false, true, false)), false, 24874i, Struct_1(vec4<i32>(7984i, i32(-2147483648), 28536i, 52815i), vec4<bool>(false, true, false, false)), Struct_1(vec4<i32>(1i, 0i, 2147483647i, i32(-2147483648)), vec4<bool>(true, false, true, true)))), Struct_3(Struct_1(vec4<i32>(0i, -27701i, 2147483647i, -1i), vec4<bool>(false, true, false, true)), Struct_2(Struct_1(vec4<i32>(0i, 1i, 1i, 25585i), vec4<bool>(false, true, true, true)), false, -1i, Struct_1(vec4<i32>(-1i, 12236i, 5759i, 40661i), vec4<bool>(false, false, true, false)), Struct_1(vec4<i32>(i32(-2147483648), 1i, 1i, i32(-2147483648)), vec4<bool>(false, true, true, true)))), Struct_3(Struct_1(vec4<i32>(1i, 57653i, 1i, -1i), vec4<bool>(true, false, false, false)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -17249i, 0i, -12168i), vec4<bool>(true, false, true, false)), false, i32(-2147483648), Struct_1(vec4<i32>(28733i, -1i, 1i, -101333i), vec4<bool>(true, true, false, false)), Struct_1(vec4<i32>(2147483647i, 0i, 82176i, i32(-2147483648)), vec4<bool>(false, true, true, false)))), Struct_3(Struct_1(vec4<i32>(2147483647i, 23517i, 2147483647i, -8773i), vec4<bool>(true, false, false, false)), Struct_2(Struct_1(vec4<i32>(-36006i, 37520i, 2147483647i, 3655i), vec4<bool>(true, false, false, false)), true, -16462i, Struct_1(vec4<i32>(-1i, -1i, 57136i, -4530i), vec4<bool>(true, false, true, true)), Struct_1(vec4<i32>(0i, 2147483647i, 12893i, 7834i), vec4<bool>(true, false, false, false)))), Struct_3(Struct_1(vec4<i32>(i32(-2147483648), -1i, -2583i, 1i), vec4<bool>(false, false, false, true)), Struct_2(Struct_1(vec4<i32>(1001i, -11117i, i32(-2147483648), -1i), vec4<bool>(true, false, false, true)), true, 1834i, Struct_1(vec4<i32>(i32(-2147483648), 41414i, 1i, 0i), vec4<bool>(false, false, false, true)), Struct_1(vec4<i32>(-1i, -21446i, 2147483647i, i32(-2147483648)), vec4<bool>(true, false, false, false)))), Struct_3(Struct_1(vec4<i32>(-24378i, 1i, 37160i, -4544i), vec4<bool>(false, false, true, true)), Struct_2(Struct_1(vec4<i32>(19709i, 30625i, 19912i, 0i), vec4<bool>(false, false, true, true)), true, -24767i, Struct_1(vec4<i32>(-1i, -3037i, 2147483647i, 5169i), vec4<bool>(false, false, true, false)), Struct_1(vec4<i32>(0i, 21576i, 0i, 1i), vec4<bool>(false, true, false, true)))));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    global2 = array<Struct_3, 25>();
    let var_0 = 2185f;
    let var_1 = false;
    global2 = array<Struct_3, 25>();
    let var_2 = -1000f;
    return global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(firstTrailingBit(firstLeadingBit(vec3<u32>(global1.x, 1u, global1.x)))), _wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(21728u, ~4294967295u, 6136u)), ~(~vec3<u32>(1u, global1.x, 42979u)) >> ((_wgslsmith_mult_vec3_u32(vec3<u32>(1u, global1.x, u_input.c), vec3<u32>(1u, global1.x, 0u)) | ~vec3<u32>(3399u, global1.x, 4294967295u)) % vec3<u32>(32u)))), 25u)];
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: bool) -> Struct_1 {
    var var_0 = select(-700i, abs(~_wgslsmith_mod_i32(1i, 1i) | select(-u_input.b.x, arg_0.a.a.x, false)), ~(-_wgslsmith_dot_vec4_i32(u_input.b, u_input.b)) < arg_1);
    var var_1 = arg_0.b;
    var_1 = Struct_2(var_1.a, true, max(arg_1, -1i), var_1.a, Struct_1(vec4<i32>(-13013i, 0i, _wgslsmith_add_i32(abs(33547i), select(-9794i, var_1.d.a.x, var_1.e.b.x)), -54354i), func_2(Struct_2(Struct_1(vec4<i32>(-1i, arg_1, var_1.a.a.x, -1992i), arg_0.a.b), arg_0.b.a.b.x, arg_0.a.a.x, var_1.d, func_2(Struct_2(var_1.e, true, 0i, Struct_1(vec4<i32>(2147483647i, arg_0.a.a.x, 1i, 2147483647i), vec4<bool>(arg_2, arg_0.b.a.b.x, false, true)), Struct_1(vec4<i32>(var_1.e.a.x, var_1.d.a.x, -56013i, u_input.b.x), vec4<bool>(var_1.b, arg_0.a.b.x, var_1.b, arg_2)))).a)).b.e.b));
    var var_2 = vec4<bool>(var_1.b, any(arg_0.a.b.xww) & true, arg_0.a.b.x, var_1.b);
    var var_3 = -1246f;
    return var_1.e;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_3 {
    var var_0 = 2147483647i;
    global0 = array<vec4<i32>, 17>();
    global2 = array<Struct_3, 25>();
    global1 = ~(~(~(~abs(u_input.a))));
    global0 = array<vec4<i32>, 17>();
    return Struct_3(func_3(func_2(arg_1), -u_input.b.x, true), func_2(arg_0).b);
}

fn func_5(arg_0: Struct_3, arg_1: vec4<i32>) -> f32 {
    global0 = array<vec4<i32>, 17>();
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1415f, -781f, 448f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(534f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-611f - 2319f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-3053f, -119f, -1934f))))), true));
    global1 = max(vec2<u32>(global1.x, ~firstLeadingBit(~1u)), u_input.a);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x * 1394f))), -101f, _wgslsmith_f_op_f32(step(-814f, var_0.x)), var_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 2722f, var_0.x, 1000f) * vec4<f32>(650f, -234f, -676f, var_0.x)), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))));
    global2 = array<Struct_3, 25>();
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(696f))));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec2<u32>) -> f32 {
    var var_0 = arg_2.x;
    var var_1 = Struct_1(~arg_1.e.a, !(!arg_1.d.b));
    let var_2 = var_1.a.x ^ (_wgslsmith_mod_i32(-23233i, var_1.a.x) | _wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, -8846i), -vec2<i32>(-33145i, 2147483647i)));
    let var_3 = _wgslsmith_f_op_f32(func_5(func_4(Struct_2(func_3(func_2(arg_1), _wgslsmith_mod_i32(-24987i, 2147483647i), true), true || any(vec4<bool>(false, false, arg_1.b, arg_1.e.b.x)), arg_1.a.a.x, func_3(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.xz, vec2<u32>(arg_0.x, arg_2.x)), 25u)], var_2, true), Struct_1(global0[_wgslsmith_index_u32(min(48138u, 68339u), 17u)], vec4<bool>(true, false, var_1.b.x, arg_1.e.b.x))), Struct_2(func_2(arg_1).b.a, true, 2147483647i, Struct_1(global0[_wgslsmith_index_u32(1u, 17u)], !var_1.b), Struct_1(vec4<i32>(arg_1.c, arg_1.a.a.x, 1i, var_2) << (vec4<u32>(arg_2.x, arg_2.x, 51122u, 0u) % vec4<u32>(32u)), vec4<bool>(arg_1.e.b.x, true, arg_1.a.b.x, var_1.b.x)))), abs(vec4<i32>(func_2(func_2(arg_1).b).a.a.x, 5823i, 0i, _wgslsmith_dot_vec2_i32(u_input.d >> (vec2<u32>(19185u, global1.x) % vec2<u32>(32u)), ~arg_1.a.a.ww)))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(1u, ~1u);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(361f, -260f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1410f, -435f) - vec2<f32>(1165f, 722f)))) * _wgslsmith_div_vec2_f32(vec2<f32>(-615f, _wgslsmith_f_op_f32(func_1(vec3<u32>(4294967295u, 4128u, global1.x), Struct_2(Struct_1(global0[_wgslsmith_index_u32(38142u, 17u)], vec4<bool>(false, true, true, false)), true, -2147483647i, Struct_1(u_input.b, vec4<bool>(false, true, false, false)), Struct_1(u_input.b, vec4<bool>(true, true, false, false))), var_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-879f, 2235f))))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(829f * _wgslsmith_f_op_f32(887f + -320f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(629f)) - _wgslsmith_f_op_f32(func_1(vec3<u32>(var_0.x, var_0.x, var_0.x), Struct_2(Struct_1(global0[_wgslsmith_index_u32(global1.x, 17u)], vec4<bool>(true, false, false, true)), true, -21230i, Struct_1(vec4<i32>(2147483647i, 1i, 1i, -2147483647i), vec4<bool>(true, false, false, true)), Struct_1(u_input.b, vec4<bool>(true, true, false, false))), vec2<u32>(u_input.c, 4294967295u))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1905f, -547f)))) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(737f, 1559f), vec2<f32>(-237f, 2016f)))), select(vec2<bool>(true, false), vec2<bool>(true, true), all(vec3<bool>(true, true, true))))));
    var var_2 = 1i << (0u % 32u);
    global2 = array<Struct_3, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -2418f, -1000f, var_1.x))), vec4<f32>(var_1.x, -115f, _wgslsmith_f_op_f32(trunc(-1227f)), _wgslsmith_f_op_f32(f32(-1f) * -144f)))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-383f * 934f), _wgslsmith_f_op_f32(max(-1000f, 1048f)), _wgslsmith_div_f32(var_1.x, var_1.x), var_1.x)))), _wgslsmith_div_f32(var_1.x, -1727f));
}

