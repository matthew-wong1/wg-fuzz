struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: vec4<f32>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec2<bool>,
    d: vec2<bool>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 11> = array<Struct_5, 11>(Struct_5(vec3<u32>(0u, 48805u, 77172u), vec3<f32>(2762f, -209f, 994f), vec2<bool>(true, false), vec2<bool>(false, true), Struct_3(349f, Struct_1(vec3<bool>(true, false, true), true, 24619i, vec2<i32>(1972i, 40245i)), Struct_2(vec4<i32>(-44991i, i32(-2147483648), i32(-2147483648), -7695i), vec4<u32>(4294967295u, 66213u, 29573u, 1u), vec4<i32>(-1i, 1i, -19737i, 1i), Struct_1(vec3<bool>(true, false, true), false, 11486i, vec2<i32>(0i, i32(-2147483648)))), vec3<i32>(i32(-2147483648), 1i, 2147483647i))), Struct_5(vec3<u32>(1u, 1u, 11805u), vec3<f32>(1708f, 736f, 985f), vec2<bool>(false, true), vec2<bool>(false, false), Struct_3(296f, Struct_1(vec3<bool>(false, false, true), false, -1i, vec2<i32>(-1930i, -27945i)), Struct_2(vec4<i32>(2147483647i, 7355i, 0i, -1060i), vec4<u32>(413u, 324u, 49097u, 0u), vec4<i32>(-44583i, -1i, 2866i, -1i), Struct_1(vec3<bool>(false, false, true), true, 0i, vec2<i32>(2147483647i, i32(-2147483648)))), vec3<i32>(7244i, -1i, 2147483647i))), Struct_5(vec3<u32>(7838u, 0u, 1u), vec3<f32>(-321f, 1067f, -189f), vec2<bool>(true, true), vec2<bool>(true, true), Struct_3(1278f, Struct_1(vec3<bool>(false, false, false), true, 2147483647i, vec2<i32>(1i, 2147483647i)), Struct_2(vec4<i32>(33991i, -1i, -23971i, 8420i), vec4<u32>(23769u, 17312u, 16416u, 4294967295u), vec4<i32>(2147483647i, -22834i, -30342i, 43669i), Struct_1(vec3<bool>(true, false, true), true, -35829i, vec2<i32>(53702i, 29911i))), vec3<i32>(i32(-2147483648), 0i, -44741i))), Struct_5(vec3<u32>(4447u, 1u, 0u), vec3<f32>(1000f, -1804f, 619f), vec2<bool>(false, false), vec2<bool>(true, false), Struct_3(392f, Struct_1(vec3<bool>(false, true, true), false, 1i, vec2<i32>(824i, 30093i)), Struct_2(vec4<i32>(13406i, 1i, 1i, 41290i), vec4<u32>(1756u, 4294967295u, 27796u, 15661u), vec4<i32>(-9543i, 0i, -7167i, 2147483647i), Struct_1(vec3<bool>(true, false, false), true, 1i, vec2<i32>(0i, 2147483647i))), vec3<i32>(62312i, -33363i, -13535i))), Struct_5(vec3<u32>(18226u, 12460u, 0u), vec3<f32>(-1000f, 166f, 940f), vec2<bool>(true, false), vec2<bool>(true, true), Struct_3(-762f, Struct_1(vec3<bool>(false, true, false), false, 1i, vec2<i32>(-27548i, 0i)), Struct_2(vec4<i32>(i32(-2147483648), -50019i, -45616i, 2147483647i), vec4<u32>(4294967295u, 0u, 837u, 1u), vec4<i32>(i32(-2147483648), -46427i, 19907i, 68993i), Struct_1(vec3<bool>(false, true, false), false, 35377i, vec2<i32>(-1i, -71609i))), vec3<i32>(-38444i, -44406i, i32(-2147483648)))), Struct_5(vec3<u32>(1u, 50112u, 1u), vec3<f32>(1483f, -906f, 428f), vec2<bool>(false, false), vec2<bool>(true, false), Struct_3(-914f, Struct_1(vec3<bool>(false, false, true), true, 23933i, vec2<i32>(-39312i, 1i)), Struct_2(vec4<i32>(24511i, 1i, i32(-2147483648), 10252i), vec4<u32>(0u, 0u, 15712u, 19288u), vec4<i32>(-22092i, 32132i, 0i, 37788i), Struct_1(vec3<bool>(false, true, true), true, 27985i, vec2<i32>(12191i, 23770i))), vec3<i32>(5770i, 720i, 59803i))), Struct_5(vec3<u32>(24080u, 1u, 4294967295u), vec3<f32>(2384f, -1026f, -281f), vec2<bool>(true, true), vec2<bool>(false, true), Struct_3(117f, Struct_1(vec3<bool>(true, false, true), false, 2147483647i, vec2<i32>(3986i, 2147483647i)), Struct_2(vec4<i32>(2147483647i, -16980i, 4084i, 2147483647i), vec4<u32>(4294967295u, 76334u, 62512u, 4398u), vec4<i32>(1i, -10875i, 0i, 19210i), Struct_1(vec3<bool>(false, false, true), false, 1i, vec2<i32>(1i, 1i))), vec3<i32>(2147483647i, -17565i, -25049i))), Struct_5(vec3<u32>(7220u, 99391u, 6778u), vec3<f32>(-385f, -985f, -486f), vec2<bool>(false, true), vec2<bool>(true, false), Struct_3(-1000f, Struct_1(vec3<bool>(false, false, true), true, 23858i, vec2<i32>(0i, i32(-2147483648))), Struct_2(vec4<i32>(-19924i, -31209i, -1i, 2147483647i), vec4<u32>(1u, 4294967295u, 46807u, 0u), vec4<i32>(-12866i, i32(-2147483648), -29825i, -10874i), Struct_1(vec3<bool>(true, true, true), false, i32(-2147483648), vec2<i32>(1i, -4323i))), vec3<i32>(-22162i, 0i, 1i))), Struct_5(vec3<u32>(0u, 1u, 25992u), vec3<f32>(128f, -700f, 1878f), vec2<bool>(true, false), vec2<bool>(false, false), Struct_3(652f, Struct_1(vec3<bool>(true, false, false), false, i32(-2147483648), vec2<i32>(-5313i, i32(-2147483648))), Struct_2(vec4<i32>(-38017i, -16008i, 41727i, 31306i), vec4<u32>(0u, 4294967295u, 4294967295u, 27969u), vec4<i32>(-2124i, -48458i, 2147483647i, i32(-2147483648)), Struct_1(vec3<bool>(false, false, false), true, 1i, vec2<i32>(51424i, 20917i))), vec3<i32>(8404i, 2147483647i, -1i))), Struct_5(vec3<u32>(28335u, 4294967295u, 4294967295u), vec3<f32>(332f, -811f, -794f), vec2<bool>(true, true), vec2<bool>(true, false), Struct_3(2212f, Struct_1(vec3<bool>(false, false, false), true, -1i, vec2<i32>(1i, 17280i)), Struct_2(vec4<i32>(-1i, 1i, 0i, -57522i), vec4<u32>(4294967295u, 4294967295u, 5547u, 29753u), vec4<i32>(-1i, -80384i, -14163i, -28462i), Struct_1(vec3<bool>(true, true, true), true, -16783i, vec2<i32>(-27478i, 0i))), vec3<i32>(1i, -10321i, -27559i))), Struct_5(vec3<u32>(1u, 4294967295u, 12656u), vec3<f32>(-1000f, 359f, -119f), vec2<bool>(false, false), vec2<bool>(false, true), Struct_3(702f, Struct_1(vec3<bool>(false, true, false), true, 66812i, vec2<i32>(-1i, 64110i)), Struct_2(vec4<i32>(-23990i, -34493i, -10016i, -13223i), vec4<u32>(0u, 4294967295u, 40143u, 0u), vec4<i32>(27563i, -4631i, 1i, 0i), Struct_1(vec3<bool>(false, true, true), false, 1i, vec2<i32>(-35149i, i32(-2147483648)))), vec3<i32>(-51130i, 2495i, -1i))));

var<private> global1: array<vec4<u32>, 24>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> bool {
    global0 = array<Struct_5, 11>();
    var var_0 = vec2<u32>(0u, arg_0.c.b.x);
    var var_1 = _wgslsmith_div_vec3_u32(~abs(arg_0.c.b.yxx), ~_wgslsmith_mod_vec3_u32(abs(arg_0.c.b.xxy) | ~vec3<u32>(arg_0.c.b.x, 48357u, 60083u), countOneBits(vec3<u32>(arg_0.c.b.x, 45553u, var_0.x))));
    let var_2 = arg_0.c.d;
    var var_3 = Struct_3(_wgslsmith_f_op_f32(423f * -1390f), var_2, Struct_2(_wgslsmith_clamp_vec4_i32(min(arg_0.c.c, u_input.d), abs(-vec4<i32>(-2147483647i, arg_0.b.c, -49466i, var_2.c)), u_input.d), vec4<u32>(~u_input.c ^ u_input.c, 67447u, countOneBits(var_0.x) ^ u_input.c, _wgslsmith_mult_u32(~1u, min(arg_0.c.b.x, arg_0.c.b.x))), ~countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.d.x, -26340i, arg_0.c.a.x, 2147483647i), vec4<i32>(2147483647i, u_input.b.x, -2147483647i, 1i))), Struct_1(var_2.a, var_2.a.x, ~(~(-38676i)), ~_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, arg_0.b.c), vec2<i32>(54593i, 18056i)))), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(22336i, -62814i, -1i, u_input.b.x) << (vec4<u32>(4294967295u, 1u, arg_1, 10731u) % vec4<u32>(32u)), ~vec4<i32>(0i, u_input.d.x, u_input.b.x, 2147483647i)), u_input.b.x), _wgslsmith_mult_i32(_wgslsmith_mult_i32(min(var_2.d.x, arg_0.b.c), 1i), -389i), 15071i));
    return false;
}

fn func_2(arg_0: vec2<i32>, arg_1: i32) -> u32 {
    global1 = array<vec4<u32>, 24>();
    global1 = array<vec4<u32>, 24>();
    var var_0 = vec2<bool>(!func_3(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -192f), Struct_1(vec3<bool>(true, false, true), false, 5414i, vec2<i32>(27838i, 59390i)), Struct_2(vec4<i32>(u_input.a.x, arg_0.x, 22953i, -22180i), vec4<u32>(36834u, u_input.c, 25568u, u_input.c), vec4<i32>(u_input.d.x, 2147483647i, -1i, arg_0.x), Struct_1(vec3<bool>(false, true, false), true, 2147483647i, arg_0)), vec3<i32>(arg_1, -29215i, -16456i)), 22603u), any(vec3<bool>(true, true, true)));
    var var_1 = -2147483647i;
    global1 = array<vec4<u32>, 24>();
    return ~(~reverseBits(abs(~u_input.c)));
}

fn func_4(arg_0: vec2<u32>, arg_1: u32) -> Struct_4 {
    var var_0 = true;
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1165f) - _wgslsmith_f_op_f32(trunc(1149f)))) >= _wgslsmith_div_f32(425f, -709f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -2573f, 2112f, 658f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(3734f, 328f, -2024f, -1198f), vec4<f32>(-786f, 2715f, 802f, 1146f), vec4<bool>(true, true, false, true))))))), ~(countOneBits(vec4<i32>(1i, u_input.d.x, -1i, u_input.d.x)) >> (~vec4<u32>(arg_0.x, 22070u, arg_1, u_input.c) % vec4<u32>(32u))) << (max(global1[_wgslsmith_index_u32(1u, 24u)], ~(~vec4<u32>(u_input.c, arg_1, arg_0.x, u_input.c))) % vec4<u32>(32u)), 69158u);
    global1 = array<vec4<u32>, 24>();
    var var_2 = vec2<bool>(true, any(vec4<bool>(!all(vec3<bool>(var_1.a, var_1.a, false)), false, _wgslsmith_f_op_f32(sign(var_1.b.x)) >= _wgslsmith_f_op_f32(-var_1.b.x), var_1.a)));
    var_2 = select(vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.b.x))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), false), !(!select(select(vec2<bool>(var_1.a, var_1.a), vec2<bool>(true, var_1.a), vec2<bool>(true, true)), select(vec2<bool>(true, var_2.x), vec2<bool>(true, var_2.x), vec2<bool>(var_2.x, false)), var_1.b.x <= var_1.b.x)), vec2<bool>(!(var_1.a | var_1.a), !func_3(Struct_3(var_1.b.x, Struct_1(vec3<bool>(var_1.a, var_2.x, var_2.x), false, u_input.b.x, u_input.a.zy), Struct_2(vec4<i32>(u_input.b.x, -2147483647i, -73207i, u_input.d.x), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u), var_1.c, Struct_1(vec3<bool>(var_1.a, false, true), var_2.x, var_1.c.x, u_input.a.yx)), vec3<i32>(var_1.c.x, -43481i, var_1.c.x)), arg_1)));
    return Struct_4(any(vec3<bool>(var_1.a, any(select(vec4<bool>(true, true, false, var_2.x), vec4<bool>(var_1.a, true, true, false), var_2.x)), var_1.a)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x - 1085f)) * 1005f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(var_1.b.x * var_1.b.x))), -307f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(510f - -1663f)))))), min(_wgslsmith_div_vec4_i32(min(u_input.d, var_1.c), vec4<i32>(var_1.c.x, u_input.b.x, 11525i, -18448i)), vec4<i32>(-u_input.b.x, 1824i, _wgslsmith_mod_i32(var_1.c.x, u_input.b.x), 1i & var_1.c.x)) ^ vec4<i32>((-5495i >> (arg_1 % 32u)) >> ((var_1.d | arg_1) % 32u), -39517i, -1i, -(~(-2147483647i))), arg_1);
}

fn func_1() -> Struct_2 {
    let var_0 = !(!(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), false))));
    var var_1 = func_4(vec2<u32>(u_input.c, func_2(vec2<i32>(0i, -1i) & (vec2<i32>(2147483647i, u_input.b.x) >> (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))), _wgslsmith_mod_i32(64047i, u_input.a.x))), 1u);
    var var_2 = 1i;
    var var_3 = 25055i;
    var_1 = Struct_4(true, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -521f), _wgslsmith_f_op_f32(-var_1.b.x), var_1.b.x, var_1.b.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-741f, 180f, var_1.b.x, var_1.b.x)))))), _wgslsmith_mult_vec4_i32(var_1.c, firstLeadingBit(var_1.c)), _wgslsmith_dot_vec3_u32(~abs(vec3<u32>(u_input.c, u_input.c, var_1.d)) | ~vec3<u32>(u_input.c, var_1.d, 1u), select(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.d, 0u, 7655u), vec3<u32>(u_input.c, 0u, u_input.c)), vec3<u32>(var_1.d, var_1.d, var_1.d), vec3<bool>(!var_1.a, false, true))));
    return Struct_2(vec4<i32>(-1i, ~var_1.c.x, ~var_1.c.x, u_input.b.x), select(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(24106u, u_input.c), select(vec2<u32>(var_1.d, var_1.d), ~vec2<u32>(53588u, 16554u), var_0.x)), 24u)], ~(global1[_wgslsmith_index_u32(4294967295u, 24u)] ^ global1[_wgslsmith_index_u32(86474u, 24u)]) ^ vec4<u32>(_wgslsmith_sub_u32(0u, u_input.c), 47207u << (var_1.d % 32u), ~68234u, _wgslsmith_dot_vec3_u32(vec3<u32>(46037u, u_input.c, u_input.c), vec3<u32>(4294967295u, u_input.c, 3422u))), true), vec4<i32>(max(abs(29468i), _wgslsmith_sub_i32(u_input.b.x, -2147483647i)), _wgslsmith_add_i32(_wgslsmith_sub_i32(var_1.c.x, 2147483647i), reverseBits(-11776i)), ~(~(-21880i)), _wgslsmith_dot_vec2_i32(u_input.d.zw, vec2<i32>(var_1.c.x, u_input.a.x) ^ var_1.c.wx)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u & var_1.d, reverseBits(70353u), min(u_input.c, u_input.c)), ~reverseBits(global1[_wgslsmith_index_u32(u_input.c, 24u)])) % vec4<u32>(32u)), Struct_1(select(vec3<bool>(func_4(vec2<u32>(var_1.d, u_input.c), 36751u).a, !var_0.x, true), vec3<bool>(!var_1.a, false, func_3(Struct_3(1698f, Struct_1(vec3<bool>(var_1.a, var_0.x, false), false, -23385i, vec2<i32>(1i, var_1.c.x)), Struct_2(var_1.c, global1[_wgslsmith_index_u32(var_1.d, 24u)], var_1.c, Struct_1(var_0.yxy, var_1.a, var_1.c.x, vec2<i32>(1i, var_1.c.x))), vec3<i32>(-1i, -1i, 1i)), var_1.d)), select(!var_0.xxw, vec3<bool>(var_1.a, false, true), select(var_0.xww, var_0.wyx, var_0.x))), any(select(vec4<bool>(false, var_0.x, true, false), vec4<bool>(var_1.a, var_1.a, true, var_1.a), var_0.x)), u_input.a.x, ~(~u_input.d.wx)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true))), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true))), false, u_input.b.x, u_input.b.zx);
    var var_1 = u_input.c << (~u_input.c % 32u);
    var var_2 = func_1();
    let var_3 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1627f), Struct_1(vec3<bool>(_wgslsmith_mod_i32(var_0.c, var_2.d.c) == (var_0.c & u_input.d.x), var_0.b, true), !(_wgslsmith_f_op_f32(floor(163f)) >= _wgslsmith_f_op_f32(max(-923f, -1387f))), 1i, func_1().a.xz), Struct_2(vec4<i32>(abs(-1i), u_input.d.x, var_0.c, ~(~u_input.d.x)), _wgslsmith_clamp_vec4_u32(~abs(vec4<u32>(var_2.b.x, var_2.b.x, 63704u, var_2.b.x)), ~global1[_wgslsmith_index_u32(var_2.b.x, 24u)] << (var_2.b % vec4<u32>(32u)), global1[_wgslsmith_index_u32(1u, 24u)]), ~(u_input.a | func_1().c), var_2.d), abs(var_2.c.wyx));
    var var_4 = func_1().b.x;
    var_2 = var_3.c;
    var var_5 = Struct_5(vec3<u32>(990u, var_2.b.x, var_3.c.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a, 1350f, -110f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a, var_3.a, var_3.a) - vec3<f32>(-1112f, -121f, var_3.a))))), !vec2<bool>(var_0.b && (var_3.a <= 1034f), !var_3.c.d.a.x), vec2<bool>(true, !func_3(var_3, func_2(vec2<i32>(2848i, var_2.d.c), 1i))), Struct_3(_wgslsmith_div_f32(-1000f, var_3.a), func_1().d, var_3.c, vec3<i32>(~46099i, -10124i, var_3.b.d.x)));
    let var_6 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec2_i32(-vec2<i32>(var_2.c.x, var_2.c.x), ~(var_5.e.d.zy | vec2<i32>(-32464i, 23682i))), u_input.c);
}

