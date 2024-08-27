struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1;

var<private> global2: array<vec2<bool>, 3>;

var<private> global3: bool = false;

var<private> global4: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(Struct_1(true, vec3<f32>(-1000f, 1858f, 708f), 14206i), -395f, vec3<u32>(0u, 19971u, 0u)), Struct_2(Struct_1(true, vec3<f32>(-869f, -2148f, -413f), -15457i), -1148f, vec3<u32>(4294967295u, 25306u, 31400u)), Struct_2(Struct_1(true, vec3<f32>(-120f, 1755f, -621f), 15340i), -424f, vec3<u32>(75961u, 4294967295u, 0u)), Struct_2(Struct_1(true, vec3<f32>(309f, -550f, 1826f), -31730i), -1000f, vec3<u32>(13393u, 57167u, 24781u)), Struct_2(Struct_1(false, vec3<f32>(-1194f, 1050f, 1152f), -11751i), 1403f, vec3<u32>(16601u, 0u, 8944u)), Struct_2(Struct_1(true, vec3<f32>(-1110f, -1366f, -1379f), -43686i), 1000f, vec3<u32>(105659u, 1u, 1u)), Struct_2(Struct_1(false, vec3<f32>(563f, -1341f, 1482f), 2147483647i), -1270f, vec3<u32>(32474u, 4294967295u, 1u)), Struct_2(Struct_1(true, vec3<f32>(-878f, -192f, 1583f), -1i), 297f, vec3<u32>(0u, 0u, 1u)), Struct_2(Struct_1(false, vec3<f32>(-1395f, -738f, -248f), -37324i), 1227f, vec3<u32>(4127u, 51517u, 4294967295u)), Struct_2(Struct_1(true, vec3<f32>(506f, -578f, -2521f), 25077i), 350f, vec3<u32>(0u, 37804u, 64298u)), Struct_2(Struct_1(true, vec3<f32>(-481f, 2239f, 383f), 6732i), 832f, vec3<u32>(28997u, 0u, 0u)), Struct_2(Struct_1(true, vec3<f32>(173f, -431f, -1512f), -28255i), -1057f, vec3<u32>(47508u, 37769u, 59626u)), Struct_2(Struct_1(true, vec3<f32>(116f, 1355f, -410f), 2147483647i), 952f, vec3<u32>(4294967295u, 0u, 32150u)), Struct_2(Struct_1(false, vec3<f32>(384f, 193f, 1965f), 3815i), -100f, vec3<u32>(62073u, 0u, 4294967295u)), Struct_2(Struct_1(false, vec3<f32>(-1097f, -530f, 1039f), 45159i), -1082f, vec3<u32>(1u, 1u, 0u)), Struct_2(Struct_1(true, vec3<f32>(364f, -444f, -1724f), 2147483647i), 101f, vec3<u32>(1u, 110178u, 6425u)), Struct_2(Struct_1(false, vec3<f32>(1932f, 301f, 999f), -54i), -1000f, vec3<u32>(0u, 0u, 89496u)), Struct_2(Struct_1(false, vec3<f32>(1000f, 551f, 1000f), -37811i), 406f, vec3<u32>(48722u, 4294967295u, 0u)), Struct_2(Struct_1(true, vec3<f32>(793f, 711f, 606f), 17934i), 1273f, vec3<u32>(1u, 21038u, 37660u)), Struct_2(Struct_1(true, vec3<f32>(-567f, 1269f, 332f), 2147483647i), -594f, vec3<u32>(128649u, 17177u, 2661u)), Struct_2(Struct_1(false, vec3<f32>(310f, 193f, -1165f), 1i), -1000f, vec3<u32>(0u, 79350u, 4294967295u)), Struct_2(Struct_1(false, vec3<f32>(-1000f, -729f, 210f), -18824i), -1460f, vec3<u32>(1u, 13212u, 34272u)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_3) -> i32 {
    return -global1.c;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_3(Struct_1(false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, -815f, -652f) * _wgslsmith_f_op_vec3_f32(global1.b * global1.b)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.b * global1.b) + _wgslsmith_f_op_vec3_f32(-global1.b))), ~(~func_2(vec3<u32>(u_input.b, 51468u, 10713u), Struct_3(Struct_1(true, global1.b, 18122i), u_input.a.x, global1.c, Struct_2(Struct_1(global1.a, global1.b, global1.c), 711f, vec3<u32>(1u, 29315u, 15078u)))))), _wgslsmith_dot_vec2_i32(vec2<i32>(func_2(vec3<u32>(4294967295u, u_input.b, u_input.b), Struct_3(Struct_1(global1.a, global1.b, 2147483647i), global1.c, 23676i, Struct_2(Struct_1(global1.a, vec3<f32>(-1191f, 493f, global1.b.x), global1.c), global1.b.x, vec3<u32>(u_input.b, u_input.b, u_input.b)))) >> (_wgslsmith_add_u32(u_input.b, 69283u) % 32u), 28108i), u_input.a), -7352i, Struct_2(Struct_1(false, global1.b, abs(-44324i)), -1658f, ~_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.b, 55087u, u_input.b), vec3<u32>(u_input.b, 30183u, u_input.b) ^ vec3<u32>(4294967295u, u_input.b, 35147u))));
    let var_1 = Struct_2(var_0.a, _wgslsmith_f_op_f32(min(-1640f, global1.b.x)), vec3<u32>(var_0.d.c.x, 74023u, 91220u));
    var var_2 = ~(~(firstLeadingBit(vec4<u32>(var_0.d.c.x, var_0.d.c.x, 69383u, var_1.c.x)) & ~vec4<u32>(var_1.c.x, 103425u, 75904u, 21824u)) << (vec4<u32>(var_0.d.c.x, 0u, 1807u, abs(select(9595u, u_input.b, true))) % vec4<u32>(32u)));
    return Struct_1(!global1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a.b)))), ~(-(~firstTrailingBit(-3957i))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: vec3<bool>) -> Struct_3 {
    global0 = abs(countOneBits(-2147483647i));
    let var_0 = global4[_wgslsmith_index_u32(~_wgslsmith_add_u32(arg_1.d.c.x, 36177u), 22u)];
    var var_1 = Struct_2(arg_0, func_1().b.x, ~(vec3<u32>(abs(var_0.c.x), u_input.b << (arg_1.d.c.x % 32u), ~arg_1.d.c.x) ^ ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, var_0.c.x, u_input.b), var_0.c)));
    global4 = array<Struct_2, 22>();
    var var_2 = -vec2<i32>(-max(-18821i, select(-14285i, arg_2.x, var_0.a.a)), arg_1.d.a.c & arg_2.x);
    return arg_1;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> StorageBuffer {
    var var_0 = Struct_3(Struct_1(arg_0.a.a, vec3<f32>(236f, 288f, _wgslsmith_f_op_f32(floor(-1774f))), u_input.a.x), 0i, arg_1.a.c, arg_0.d);
    var var_1 = func_3(func_1(), func_3(Struct_1(var_0.d.a.a, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(177f, 455f, -377f))))), 0i >> (_wgslsmith_mult_u32(0u, arg_0.d.c.x) % 32u)), Struct_3(func_1(), firstLeadingBit(2147483647i), _wgslsmith_clamp_i32(17509i, arg_0.a.c, -7722i) ^ -25882i, func_3(Struct_1(false, vec3<f32>(arg_1.a.b.x, -214f, arg_1.b), -1i), Struct_3(Struct_1(global1.a, vec3<f32>(-1843f, -2520f, -196f), -17961i), -2147483647i, var_0.d.a.c, Struct_2(Struct_1(arg_1.a.a, global1.b, -9962i), var_0.d.b, var_0.d.c)), vec3<i32>(u_input.c, var_0.c, 36870i), select(vec3<bool>(global1.a, global1.a, arg_1.a.a), vec3<bool>(arg_1.a.a, arg_1.a.a, true), vec3<bool>(global1.a, arg_1.a.a, global1.a))).d), max(vec3<i32>(var_0.d.a.c ^ -1i, global1.c | global1.c, 1i), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global1.c, 1i, var_0.a.c), vec3<i32>(var_0.b, -4299i, 31201i)), min(vec3<i32>(arg_0.a.c, u_input.c, global1.c), vec3<i32>(var_0.d.a.c, u_input.d, 0i)))), select(vec3<bool>(true, true, any(vec3<bool>(true, arg_0.a.a, true))), select(select(vec3<bool>(false, false, false), vec3<bool>(arg_0.a.a, true, arg_1.a.a), false), select(vec3<bool>(global1.a, var_0.d.a.a, true), vec3<bool>(arg_0.a.a, true, var_0.a.a), var_0.d.a.a), vec3<bool>(true, true, true)), true)), vec3<i32>(-1i) * -vec3<i32>(~2147483647i, var_0.b << (44735u % 32u), -10433i), !select(select(select(vec3<bool>(global1.a, false, global1.a), vec3<bool>(global1.a, true, false), vec3<bool>(false, global1.a, arg_0.d.a.a)), select(vec3<bool>(arg_1.a.a, false, true), vec3<bool>(false, false, true), arg_0.d.a.a), vec3<bool>(var_0.d.a.a, arg_1.a.a, true)), vec3<bool>(true, arg_1.a.a, any(vec4<bool>(arg_1.a.a, var_0.a.a, arg_0.a.a, var_0.d.a.a))), !vec3<bool>(arg_1.a.a, arg_0.a.a, true))).a;
    let var_2 = abs((vec2<u32>(_wgslsmith_add_u32(arg_0.d.c.x, 4294967295u), ~17323u) & vec2<u32>(0u, ~61191u)) << (~(~arg_1.c.zx) % vec2<u32>(32u)));
    let var_3 = Struct_2(arg_0.d.a, _wgslsmith_f_op_f32(-arg_0.d.a.b.x), vec3<u32>(arg_0.d.c.x, arg_1.c.x ^ ~abs(15703u), min(8766u, var_2.x)));
    var var_4 = var_0.a;
    return StorageBuffer(_wgslsmith_f_op_f32(var_1.b.x - 257f), ~(~var_0.d.c.x), ~var_3.a.c, ~(-var_4.c), vec2<f32>(-1149f, 1006f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 3>();
    global0 = select(34447i, 2147483647i, global1.a);
    let x = u_input.a;
    s_output = func_4(func_3(func_1(), Struct_3(Struct_1(true, _wgslsmith_f_op_vec3_f32(vec3<f32>(1647f, -446f, global1.b.x) * vec3<f32>(global1.b.x, global1.b.x, global1.b.x)), global1.c), -2147483647i, global1.c, global4[_wgslsmith_index_u32(u_input.b, 22u)]), -(~(~vec3<i32>(global1.c, u_input.c, 5717i))), !vec3<bool>(global1.a, true, true)), global4[_wgslsmith_index_u32(4294967295u, 22u)]);
}

