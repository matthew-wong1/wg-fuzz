struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: f32,
    d: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: u32,
    d: vec3<bool>,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<f32>) -> vec3<u32> {
    var var_0 = ~(~vec2<i32>(1i, 1i) >> (u_input.b % vec2<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-668f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-825f * arg_0.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.a, 15u)])))))));
    var_1 = vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, 1u), 15u)]) + 287f)), -825f);
    return ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 1u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 1u, u_input.a, u_input.c), vec4<u32>(4294967295u, u_input.b.x, u_input.c, 119853u)), u_input.a, u_input.c), countOneBits(~vec3<u32>(u_input.b.x, u_input.a, u_input.c))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>) -> i32 {
    var var_0 = ~(~vec3<i32>(i32(-1i) * -74986i, reverseBits(-2147483647i), 53879i >> (arg_1.x % 32u))) | (firstTrailingBit(select(vec3<i32>(0i, 2147483647i, 2147483647i), select(vec3<i32>(0i, 0i, -2147483647i), vec3<i32>(39780i, -2147483647i, -2555i), vec3<bool>(true, false, false)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true)))) | vec3<i32>(1i, 1i, 1i));
    var_0 = vec3<i32>(-var_0.x, max(var_0.x, select(max(_wgslsmith_clamp_i32(var_0.x, var_0.x, var_0.x), -1i), -1i, true)), -2147483647i);
    global0 = array<f32, 15>();
    global0 = array<f32, 15>();
    let var_1 = var_0.x;
    return 32161i;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: f32) -> bool {
    var var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(~(-20112i), -2147483647i, 0i), max(firstTrailingBit(0i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 39190i, -11381i, 8384i), vec4<i32>(24638i, -10502i, 1i, -41426i)), -2147483647i)), vec2<i32>(1i, func_4(Struct_2(func_3(vec4<f32>(720f, 470f, global0[_wgslsmith_index_u32(6082u, 15u)], -531f))), arg_1.a)));
    let var_1 = select(vec2<bool>(false && (u_input.b.x == 93541u), any(vec3<bool>(-1i > var_0.x, any(vec2<bool>(true, true)), true))), !select(!select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(false, var_0.x < 32967i), vec2<bool>(true, arg_1.a.x < 1302u)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(true, true)))));
    let var_2 = arg_1;
    var_0 = _wgslsmith_clamp_vec2_i32(abs(~firstTrailingBit(vec2<i32>(var_0.x, -26193i))), abs(vec2<i32>(0i, select(-1i, ~var_0.x, false))), ~(~(-firstTrailingBit(vec2<i32>(var_0.x, var_0.x)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(step(arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_0)))));
    return var_1.x;
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> vec4<u32> {
    var var_0 = Struct_5(Struct_3(vec4<bool>(!(arg_0.a.x == arg_0.a.x), !all(vec2<bool>(false, false)), select(false, true, true), func_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, global0[_wgslsmith_index_u32(u_input.a, 15u)], 912f), vec3<f32>(arg_1, 211f, -732f), false)), arg_0, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.a.x, arg_0.a.x), 15u)])), ~reverseBits(vec4<u32>(1u, u_input.c, u_input.c, 65013u)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(24439u, 15u)]), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1133f)) + _wgslsmith_f_op_f32(round(-3397f))), global0[_wgslsmith_index_u32(10259u & _wgslsmith_add_u32(u_input.a, arg_0.a.x), 15u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-957f - -332f) * global0[_wgslsmith_index_u32(func_3(vec4<f32>(-1527f, arg_1, arg_1, arg_1)).x, 15u)]), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-481f, -1976f, true)))))), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1 * -286f)))), Struct_4(-2147483647i, Struct_3(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false)), firstTrailingBit(firstLeadingBit(vec4<u32>(0u, 1u, arg_0.a.x, u_input.c))), global0[_wgslsmith_index_u32(4294967295u, 15u)], _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 15u)], arg_1, arg_1, arg_1)), _wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(arg_0.a.x, 15u)], global0[_wgslsmith_index_u32(40331u, 15u)], arg_1, 742f), vec4<f32>(1005f, global0[_wgslsmith_index_u32(33945u, 15u)], -1610f, -405f)))), 41648u | ~_wgslsmith_add_u32(u_input.b.x, arg_0.a.x), vec3<bool>(true, false, true), Struct_3(vec4<bool>(true, true, true, true), ~vec4<u32>(arg_0.a.x, u_input.c, arg_0.a.x, u_input.a), _wgslsmith_div_f32(1000f, 889f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(681f, arg_1, -1431f, -978f))))));
    var var_1 = max(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.x, 1u, u_input.b.x ^ abs(1u)), arg_0.a), _wgslsmith_add_u32(~arg_0.a.x, 32731u));
    var var_2 = Struct_5(var_0.a, Struct_1(arg_1), Struct_4(var_0.c.a, Struct_3(!(!var_0.c.e.a), vec4<u32>(var_0.c.b.b.x, ~13869u, u_input.b.x, ~arg_0.a.x), _wgslsmith_f_op_f32(-arg_1), vec4<f32>(_wgslsmith_f_op_f32(arg_1 * arg_1), 826f, var_0.a.d.x, _wgslsmith_f_op_f32(arg_1 * 774f))), max(u_input.c, var_0.c.c), vec3<bool>(var_0.c.d.x, var_0.c.e.a.x, var_0.c.e.a.x), var_0.a));
    return var_0.c.e.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 40861u;
    let var_1 = -3609i;
    let var_2 = Struct_3(vec4<bool>(true, true, true, false), ~(~(func_1(Struct_2(vec3<u32>(var_0, var_0, 4294967295u)), global0[_wgslsmith_index_u32(33114u, 15u)]) | vec4<u32>(u_input.c, 0u, u_input.a, u_input.c))), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(var_0, 15u)], global0[_wgslsmith_index_u32(var_0, 15u)])), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0[_wgslsmith_index_u32(71691u, 15u)], global0[_wgslsmith_index_u32(0u, 15u)], -926f, global0[_wgslsmith_index_u32(66969u, 15u)])))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0[_wgslsmith_index_u32(131687u, 15u)], global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(var_0, 15u)], global0[_wgslsmith_index_u32(var_0, 15u)]), vec4<f32>(global0[_wgslsmith_index_u32(19692u, 15u)], global0[_wgslsmith_index_u32(var_0, 15u)], -1247f, -2084f))) + vec4<f32>(159f, global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)], 208f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0[_wgslsmith_index_u32(var_0, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)], -669f, global0[_wgslsmith_index_u32(4294967295u, 15u)]), vec4<f32>(-986f, global0[_wgslsmith_index_u32(33200u, 15u)], -457f, -2009f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(878f, global0[_wgslsmith_index_u32(u_input.c, 15u)], -1058f, -1504f))))), vec4<bool>(true, true, true, !all(vec2<bool>(false, false))))));
    let var_3 = ~var_2.b;
    global0 = array<f32, 15>();
    var var_4 = true;
    global0 = array<f32, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(min(vec3<i32>(41898i, var_1, -17214i), ~(~_wgslsmith_div_vec3_i32(vec3<i32>(25588i, var_1, var_1), vec3<i32>(-1i, 0i, -1i)))), -_wgslsmith_clamp_vec4_i32(~vec4<i32>(1i, var_1, var_1, var_1), vec4<i32>(-47739i, var_1, -13563i, var_1), -vec4<i32>(45255i, var_1, -9065i, var_1)) << (_wgslsmith_div_vec4_u32(~var_2.b, ~vec4<u32>(1u, 30483u, 85295u, 35768u) & vec4<u32>(4294967295u, var_3.x, 14829u, var_0)) % vec4<u32>(32u)));
}

