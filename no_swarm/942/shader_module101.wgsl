struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(4294967295u, vec4<f32>(-329f, -2127f, 829f, -555f), 2147483647i), Struct_1(0u, vec4<f32>(776f, 522f, -969f, 133f), -31121i), Struct_1(33356u, vec4<f32>(857f, 423f, -611f, 1174f), 2147483647i), Struct_1(1u, vec4<f32>(1227f, -577f, -1446f, 1726f), 2147483647i), Struct_1(0u, vec4<f32>(-799f, -350f, -1265f, 898f), 41231i), Struct_1(13169u, vec4<f32>(-531f, 1328f, -161f, 1964f), -1i), Struct_1(0u, vec4<f32>(1277f, 1252f, -114f, -405f), 38907i), Struct_1(0u, vec4<f32>(-1057f, 339f, -772f, 183f), 2147483647i), Struct_1(4294967295u, vec4<f32>(603f, 598f, -280f, 316f), -19198i), Struct_1(10008u, vec4<f32>(-799f, -640f, -825f, 185f), -35047i), Struct_1(76040u, vec4<f32>(150f, 450f, 977f, -377f), 2147483647i), Struct_1(70189u, vec4<f32>(2781f, 589f, 613f, -1273f), -1i), Struct_1(49520u, vec4<f32>(-1148f, -243f, 1037f, -1798f), 2147483647i), Struct_1(91u, vec4<f32>(-218f, 1741f, 387f, -336f), -64409i), Struct_1(53149u, vec4<f32>(1204f, -103f, 1700f, 353f), 0i), Struct_1(0u, vec4<f32>(-1000f, -633f, -952f, -200f), i32(-2147483648)));

var<private> global1: array<vec2<u32>, 27>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = ~_wgslsmith_add_u32(31653u, ~(~_wgslsmith_add_u32(0u, 72197u)));
    global1 = array<vec2<u32>, 27>();
    var var_1 = Struct_1(var_0, vec4<f32>(_wgslsmith_f_op_f32(363f + -341f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -192f))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-625f, -819f, arg_0)), -376f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -423f), _wgslsmith_f_op_f32(step(626f, -1434f)), true)))), 365f), abs(-1i));
    global0 = array<Struct_1, 16>();
    var var_2 = var_1.b.x;
    return Struct_1(1879u, var_1.b, ~(~firstTrailingBit(-1i)));
}

fn func_1(arg_0: f32, arg_1: vec4<u32>) -> Struct_2 {
    global0 = array<Struct_1, 16>();
    var var_0 = func_2(true);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(356f - _wgslsmith_f_op_f32(min(546f, var_0.b.x))))));
    global1 = array<vec2<u32>, 27>();
    global1 = array<vec2<u32>, 27>();
    return Struct_2(func_2(!select(any(vec2<bool>(true, true)), all(vec2<bool>(false, true)), any(vec4<bool>(true, false, true, false)))), func_2(any(vec2<bool>(all(vec3<bool>(false, false, true)), all(vec4<bool>(true, true, false, false))))), ~arg_1, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, firstLeadingBit(func_2(false).c)), -vec2<i32>(~14618i, -3014i)), Struct_1(_wgslsmith_mult_u32(1u, 97409u), vec4<f32>(2142f, -1557f, _wgslsmith_f_op_f32(-630f * _wgslsmith_div_f32(var_0.b.x, var_0.b.x)), arg_0), 1i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    global1 = array<vec2<u32>, 27>();
    global0 = array<Struct_1, 16>();
    var var_0 = vec4<u32>(abs(_wgslsmith_add_u32(arg_0.a << (arg_1.a.a % 32u), 1u) | arg_1.c.x), 4636u, _wgslsmith_mult_u32(~4294967295u, select(_wgslsmith_div_u32(~17589u, arg_1.b.a | 1u), ~_wgslsmith_mult_u32(arg_0.a, arg_0.a), false)), min(34725u << ((~arg_1.c.x ^ ~arg_1.a.a) % 32u), 23920u));
    let var_1 = Struct_1(reverseBits(firstTrailingBit(~11998u) & _wgslsmith_dot_vec4_u32(arg_1.c & vec4<u32>(arg_0.a, 3273u, arg_0.a, 4294967295u), vec4<u32>(arg_1.a.a, 4294967295u, var_0.x, 0u) << (arg_1.c % vec4<u32>(32u)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(arg_0.b)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-957f, -104f, arg_0.b.x, 793f) * arg_1.b.b)), arg_1.b.b)), firstTrailingBit(countOneBits(-1i) ^ _wgslsmith_dot_vec3_i32(u_input.b, u_input.b)) ^ (countOneBits(1i) ^ arg_0.c));
    var_0 = (~arg_1.c & select(arg_1.c, vec4<u32>(firstTrailingBit(arg_1.c.x), 42241u, var_0.x, ~67477u), !(var_1.b.x >= arg_0.b.x))) | arg_1.c;
    return global0[_wgslsmith_index_u32(arg_0.a & var_1.a, 16u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_3(global0[_wgslsmith_index_u32(0u, 16u)], func_1(1159f, vec4<u32>(4294967295u, 0u, countOneBits(~1u), 1u << (0u % 32u))));
    var var_1 = Struct_1(~min(var_0.a, _wgslsmith_add_u32(0u, firstLeadingBit(var_0.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_0.b)) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1642f, -1232f, -889f, 1330f))), var_0.b))), -((_wgslsmith_sub_i32(u_input.b.x, var_0.c) << (14842u % 32u)) ^ 0i));
    global0 = array<Struct_1, 16>();
    let var_2 = func_3(var_0, Struct_2(func_2(false), func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b.x))), vec4<u32>(70296u, var_0.a, 57013u, func_2(false).a)).b, vec4<u32>(~57178u, 1u, var_1.a, 4294967295u) << (_wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.a, 9249u, var_0.a, var_1.a), select(vec4<u32>(var_1.a, 11509u, var_1.a, var_1.a), vec4<u32>(var_1.a, 0u, var_1.a, 24926u), vec4<bool>(false, false, true, true))) % vec4<u32>(32u)), vec2<i32>(1i, 37074i), func_1(var_0.b.x, vec4<u32>(var_1.a, 1u, _wgslsmith_add_u32(48760u, 23229u), ~11552u)).b));
    let var_3 = vec4<u32>(var_1.a, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_2.a, 0u, var_1.a) & vec3<u32>(1110u, 2618u, var_2.a)), countOneBits(firstLeadingBit(vec3<u32>(4294967295u, var_0.a, var_1.a)))), _wgslsmith_add_u32(func_1(-311f, firstTrailingBit(vec4<u32>(43116u, var_0.a, var_2.a, 4294967295u) & vec4<u32>(var_0.a, 1u, 4294967295u, 54951u))).a.a, _wgslsmith_mod_u32(var_0.a, 1085u)), reverseBits(select(var_1.a, ~35497u, !(var_0.a < var_2.a))));
    var var_4 = _wgslsmith_f_op_vec3_f32(round(var_0.b.yww));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -766f), vec2<i32>(u_input.b.x, 0i));
}

