struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<u32>(60857u, 0u, 0u), vec4<i32>(-13402i, 24718i, 2147483647i, 50148i), 28943u), false);

var<private> global1: Struct_3 = Struct_3(-1634f, false);

var<private> global2: f32;

var<private> global3: array<f32, 32> = array<f32, 32>(1012f, -407f, -546f, -611f, 1080f, 112f, 1297f, 319f, 1270f, -633f, -1895f, -2044f, 137f, 341f, -335f, -1595f, 1528f, -843f, 347f, 112f, 708f, -1260f, -621f, 1995f, -255f, -1755f, -1103f, 1701f, -992f, -643f, 758f, -235f);

var<private> global4: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(1046f, false), Struct_3(2039f, true), Struct_3(-1271f, false), Struct_3(945f, false), Struct_3(582f, true), Struct_3(130f, false), Struct_3(893f, true), Struct_3(-212f, false), Struct_3(617f, true), Struct_3(-530f, false), Struct_3(543f, false), Struct_3(-393f, false), Struct_3(897f, true), Struct_3(1000f, false), Struct_3(-1788f, true), Struct_3(-959f, true), Struct_3(1671f, true), Struct_3(-184f, true), Struct_3(-419f, false), Struct_3(-1182f, false), Struct_3(-929f, true), Struct_3(396f, true));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec4<i32>) -> vec4<bool> {
    let var_0 = all(!select(!vec2<bool>(global0.b, false), vec2<bool>(true, global0.b), arg_0 || !arg_0));
    global4 = array<Struct_3, 22>();
    var var_1 = global4[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 13183u), 22u)];
    global0 = Struct_2(Struct_1(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_2.a.x, 88752u, 39495u), vec4<u32>(4294967295u, global0.a.a.x, arg_2.a.x, 23995u)), 1u, 22740u), abs(global0.a.b), u_input.a), true || !(!(!var_1.b)));
    var var_2 = Struct_2(arg_2, any(select(select(vec4<bool>(false, global1.b, global1.b, arg_0), !vec4<bool>(global0.b, true, global0.b, true), any(vec2<bool>(var_1.b, false))), !vec4<bool>(var_0, false, true, var_1.b), select(vec4<bool>(false, false, true, var_0), vec4<bool>(arg_0, global0.b, var_1.b, arg_0), !vec4<bool>(true, global0.b, true, arg_0)))));
    return vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.c, 32u)] > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.a))), true, any(vec4<bool>(all(vec2<bool>(arg_0, false)), select(arg_0, false, !var_0), !global0.b, true)));
}

fn func_2() -> Struct_1 {
    var var_0 = -1604f;
    let var_1 = global4[_wgslsmith_index_u32(4294967295u, 22u)];
    let var_2 = max(~_wgslsmith_add_vec4_u32(~(vec4<u32>(u_input.a, 52484u, 4294967295u, u_input.c) & vec4<u32>(global0.a.a.x, 40164u, 4294967295u, 23053u)), select(~vec4<u32>(u_input.a, u_input.c, u_input.c, 92100u), ~vec4<u32>(0u, global0.a.c, global0.a.a.x, global0.a.c), true)), abs(select(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.a.a.x, 105100u, 0u, global0.a.a.x), vec4<u32>(4171u, 4294967295u, 65296u, 0u)) | vec4<u32>(global0.a.a.x, 1u, 23245u, u_input.d.x), _wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 0u, global0.a.a.x, 48300u), ~vec4<u32>(global0.a.c, 0u, 4294967295u, u_input.c)), func_3(all(vec3<bool>(global1.b, global0.b, false)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.a, 956f))), Struct_1(vec3<u32>(0u, 1u, u_input.a), global0.a.b, 73654u), -global0.a.b))));
    var var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3[_wgslsmith_index_u32(u_input.d.x, 32u)], -480f, global3[_wgslsmith_index_u32(18120u, 32u)], 2186f), vec4<f32>(var_1.a, 1081f, var_1.a, global3[_wgslsmith_index_u32(global0.a.a.x, 32u)]))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1019f, 486f, -1708f, 134f), vec4<f32>(-413f, -626f, global1.a, 283f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1156f, -1189f, 347f, -1107f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a, -1660f, global3[_wgslsmith_index_u32(6842u, 32u)], -821f), vec4<f32>(-376f, global3[_wgslsmith_index_u32(4294967295u, 32u)], global3[_wgslsmith_index_u32(u_input.c, 32u)], -601f), vec4<bool>(global0.b, true, var_1.b, global1.b))) - _wgslsmith_div_vec4_f32(vec4<f32>(-551f, global3[_wgslsmith_index_u32(21078u, 32u)], -1646f, var_1.a), vec4<f32>(global3[_wgslsmith_index_u32(33144u, 32u)], global1.a, var_1.a, -501f))))))));
    var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-154f, global1.a, global3[_wgslsmith_index_u32(global0.a.a.x, 32u)], var_3.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_3.x, -491f, -384f, global3[_wgslsmith_index_u32(u_input.b.x, 32u)]), vec4<f32>(-461f, 197f, global1.a, var_3.x)))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(751f, var_3.x, var_1.a, global3[_wgslsmith_index_u32(var_2.x, 32u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(84348u, 32u)], global1.a, var_3.x, 481f))))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, var_3.x, -343f, -1467f) - vec4<f32>(var_3.x, var_1.a, global1.a, -276f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1568f, -679f, 2302f, global1.a)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, global1.a, global3[_wgslsmith_index_u32(2300u, 32u)], global3[_wgslsmith_index_u32(global0.a.c, 32u)]) + vec4<f32>(1513f, var_3.x, 703f, -2427f)) + vec4<f32>(global1.a, -265f, -729f, var_1.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(u_input.d.x, 32u)], global3[_wgslsmith_index_u32(var_2.x, 32u)], var_3.x, 2316f)))), vec4<bool>((global0.a.c | 34071u) != 7024u, true, false, !global0.b == global1.b))));
    return global0.a;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2) -> bool {
    let var_0 = vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(arg_1.a.a, ~(vec3<u32>(81536u, 21386u, u_input.a) & arg_1.a.a)), abs(_wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_1.a.c, arg_1.a.c), ~1u))), 4294967295u, _wgslsmith_clamp_u32(~4294967295u, arg_1.a.c, ~0u), ~firstTrailingBit(global0.a.a.x));
    let var_1 = global4[_wgslsmith_index_u32(global0.a.c, 22u)];
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.a), global3[_wgslsmith_index_u32(4294967295u, 32u)])))));
    var var_3 = 1u;
    let var_4 = _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(global0.a.b.wxz, arg_1.a.b.ywz), abs(global0.a.b.x));
    return global0.b;
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = select(false, arg_0, func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-656f, global3[_wgslsmith_index_u32(global0.a.a.x, 32u)]))) - _wgslsmith_div_vec2_f32(vec2<f32>(global1.a, global1.a), vec2<f32>(global1.a, global1.a))), Struct_2(func_2(), true)));
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global0.a.a.x, 32u)]) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(true)) - _wgslsmith_div_f32(-376f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~1u, 32u)] * _wgslsmith_f_op_f32(-336f * 171f)))));
    let var_0 = 1174f;
    let var_1 = 4294967295u;
    var var_2 = ~(~_wgslsmith_div_u32(var_1 & var_1, countOneBits(52563u)) | _wgslsmith_dot_vec4_u32(~vec4<u32>(18546u, 64860u, global0.a.c, global0.a.c), vec4<u32>(firstTrailingBit(u_input.d.x), 94u, 4294967295u, _wgslsmith_mod_u32(64473u, 4294967295u))));
    global1 = global4[_wgslsmith_index_u32(global0.a.c, 22u)];
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(1044f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * -611f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(var_1, _wgslsmith_mod_u32(u_input.d.x, u_input.c)), _wgslsmith_mult_i32(-global0.a.b.x, abs(-72i)), _wgslsmith_mult_u32(var_1, _wgslsmith_clamp_u32(u_input.c, 3480u, 4294967295u)));
}

