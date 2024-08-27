struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

var<private> global1: array<Struct_1, 19>;

var<private> global2: Struct_3;

var<private> global3: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(Struct_1(1u), -141f, vec3<u32>(0u, 23881u, 4294967295u), Struct_1(1u)), Struct_2(Struct_1(52988u), -1000f, vec3<u32>(4294967295u, 4294967295u, 0u), Struct_1(8828u)), Struct_2(Struct_1(1u), 1644f, vec3<u32>(4294967295u, 4294967295u, 1u), Struct_1(32610u)), Struct_2(Struct_1(38777u), -1417f, vec3<u32>(4294967295u, 122426u, 0u), Struct_1(0u)), Struct_2(Struct_1(1u), -398f, vec3<u32>(4294967295u, 13763u, 1u), Struct_1(40390u)));

var<private> global4: array<vec3<u32>, 9>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: f32) -> f32 {
    var var_0 = Struct_1(6054u);
    let var_1 = global0[_wgslsmith_index_u32(min(~(~_wgslsmith_mult_u32(0u, var_0.a)), ~(~(~global2.b))) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(firstTrailingBit(~vec4<u32>(global2.b, var_0.a, 31962u, global2.a.a)), ~max(vec4<u32>(64329u, 4294967295u, var_0.a, global2.b), vec4<u32>(66171u, 4294967295u, global2.b, 0u))), vec4<u32>(4294967295u, var_0.a, 0u >> ((1664u >> (var_0.a % 32u)) % 32u), 19076u)) % 32u), 16u)];
    let var_2 = global3[_wgslsmith_index_u32(66370u, 5u)];
    global4 = array<vec3<u32>, 9>();
    let var_3 = global3[_wgslsmith_index_u32(11003u, 5u)];
    return arg_1;
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: u32) -> f32 {
    let var_0 = _wgslsmith_sub_i32(i32(-1i) * -21819i, arg_0 >> (20169u % 32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(-1i, _wgslsmith_f_op_f32(261f * 365f))) - _wgslsmith_f_op_f32(select(-199f, arg_1.b, true)))));
}

fn func_3() -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(4294967295u, 16u)];
    let var_1 = true;
    let var_2 = _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~abs(_wgslsmith_sub_vec4_u32(vec4<u32>(global2.a.a, 1u, 35093u, var_0.a), vec4<u32>(0u, 4294967295u, global2.a.a, 1u))), vec4<u32>(var_0.a, 10285u, var_0.a, _wgslsmith_add_u32(1u, ~var_0.a))), global2.a.a);
    let var_3 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1494f, -965f)));
    let var_4 = Struct_3(global1[_wgslsmith_index_u32(global2.b, 19u)], _wgslsmith_clamp_u32(var_0.a, 1u, 45649u));
    return -_wgslsmith_div_i32(u_input.a, ~u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(953f, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -226f)))), _wgslsmith_f_op_f32(1247f + _wgslsmith_f_op_f32(func_1(~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, 20032i), vec3<i32>(u_input.a, u_input.a, u_input.a)), global3[_wgslsmith_index_u32(~global2.a.a ^ 45297u, 5u)], 4294967295u))));
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    global1 = array<Struct_1, 19>();
    let var_1 = Struct_3(Struct_1(1u), global2.b);
    let var_2 = select(vec4<i32>(0i, u_input.a, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-19083i, -1i, u_input.a, 2147483647i), vec4<i32>(u_input.a, 9620i, -22922i, u_input.a))), _wgslsmith_mod_i32(func_3(), reverseBits(-2860i)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -395i, 1i, 0i), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, u_input.a, u_input.a, u_input.a), vec4<i32>(21775i, u_input.a, -18041i, -1i)))), -14262i), vec4<i32>(-u_input.a, _wgslsmith_clamp_i32(-min(u_input.a, 0i), u_input.a, u_input.a), u_input.a, u_input.a), select(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), (0u == var_1.b) || true));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, abs(var_2.x), var_2.x, vec4<i32>(_wgslsmith_mod_i32(-u_input.a, u_input.a), ~u_input.a, -2147483647i, max(1i, _wgslsmith_dot_vec4_i32(var_2, reverseBits(var_2)))));
}

