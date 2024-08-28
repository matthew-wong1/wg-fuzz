struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(2147483647i, 16242i, i32(-2147483648), 158i), 6069u, i32(-2147483648), false);

var<private> global1: bool = false;

var<private> global2: array<Struct_1, 28>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(~(-(~firstTrailingBit(vec4<i32>(global0.c, 13857i, global0.a.x, global0.a.x)))), 10990u, -global0.c << (12472u % 32u), all(!(!(!vec4<bool>(global0.d, global0.d, true, global0.d)))));
    let var_1 = global0.a.xzy;
    let var_2 = global2[_wgslsmith_index_u32(var_0.b, 28u)];
    var_0 = global2[_wgslsmith_index_u32(~global0.b, 28u)];
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(step(177f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1083f)) * 669f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-505f * -1184f), 213f)))));
    return global2[_wgslsmith_index_u32(0u, 28u)];
}

fn func_1() -> vec4<i32> {
    global0 = func_2();
    let var_0 = global2[_wgslsmith_index_u32(44200u, 28u)];
    var var_1 = _wgslsmith_dot_vec3_i32(~abs(_wgslsmith_mod_vec3_i32(vec3<i32>(33950i, 0i, global0.c), vec3<i32>(var_0.a.x, global0.c, 67017i))), vec3<i32>(global0.c, -10291i, global0.a.x));
    return var_0.a;
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = ~reverseBits(vec4<u32>(~(~global0.b), ~4294967295u, u_input.a.x, ~countOneBits(1u)));
    let var_1 = -32149i >= global0.a.x;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(max(arg_0, -773f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -706f))), arg_0)), -1028f, _wgslsmith_f_op_f32(round(-696f)));
    var_0 = abs(vec4<u32>(~u_input.a.x, ~(12422u << (u_input.a.x % 32u)), 8875u, 0u) & _wgslsmith_add_vec4_u32(~vec4<u32>(var_0.x, u_input.a.x, 13096u, u_input.a.x) & abs(vec4<u32>(13599u, global0.b, 58407u, 2887u)), firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, var_0.x, 69768u) | vec4<u32>(global0.b, 4294967295u, u_input.a.x, 66995u))));
    var_0 = _wgslsmith_div_vec4_u32(~(~select(vec4<u32>(1u, var_0.x, 0u, 4294967295u), vec4<u32>(var_0.x, 8969u, global0.b, 4294967295u), vec4<bool>(false, true, var_1, false))), ~vec4<u32>(var_0.x | var_0.x, 4294967295u, ~var_0.x, var_0.x)) ^ ~abs(vec4<u32>(~global0.b, 53139u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 54960u, 3704u, 112353u), vec4<u32>(var_0.x, 62741u, global0.b, 22533u)), u_input.a.x << (global0.b % 32u)));
    return !(4294967295u <= ~u_input.a.x);
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: vec3<i32>) -> u32 {
    return min(_wgslsmith_mod_u32(abs(61695u), ~select(34846u, 4294967295u, arg_1 && false)), firstLeadingBit(firstLeadingBit(1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec4_i32(global0.a, min(-vec4<i32>(13226i, 0i, global0.a.x, -2147483647i), func_1())) ^ -global0.c;
    let var_1 = -730f;
    let var_2 = func_2();
    var var_3 = Struct_1(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(var_2.a.x, -32056i, global0.a.x, var_2.c) | global0.a), -countOneBits(_wgslsmith_mod_vec4_i32(var_2.a, var_2.a))), func_4(_wgslsmith_clamp_i32(32371i, abs(var_0), max(_wgslsmith_div_i32(global0.a.x, -20779i), _wgslsmith_mod_i32(-3270i, var_2.a.x))), func_3(var_1), countOneBits(global0.a.yzy)), -13224i, true);
    let var_4 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(~(var_2.b | ~_wgslsmith_dot_vec3_u32(vec3<u32>(71424u, var_3.b, var_2.b), vec3<u32>(var_2.b, 43654u, 4294967295u))), ~countOneBits(vec4<u32>(22591u, u_input.a.x, var_2.b, reverseBits(var_3.b))));
}

