struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 3>;

var<private> global1: array<Struct_1, 29>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = vec4<bool>(false, true, arg_3.d, any(!arg_0.zy));
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(61367u, 3u)]);
    return _wgslsmith_sub_vec3_u32(vec3<u32>(1u, ~17544u, 70678u), ~_wgslsmith_div_vec3_u32(select(vec3<u32>(26701u, 66437u, 69349u) & vec3<u32>(4294967295u, 1002u, arg_3.a), vec3<u32>(arg_2.a, 16466u, 0u) ^ vec3<u32>(101366u, arg_3.a, arg_3.a), false), _wgslsmith_add_vec3_u32(vec3<u32>(34956u, 1u, arg_3.a) & vec3<u32>(4294967295u, arg_2.a, 34112u), vec3<u32>(arg_3.a, arg_2.a, arg_3.a))));
}

fn func_2() -> u32 {
    var var_0 = true;
    var var_1 = 7113u;
    var var_2 = vec4<i32>(0i, _wgslsmith_dot_vec2_i32(~select(vec2<i32>(-1i, 13800i), vec2<i32>(0i, -2147483647i), vec2<bool>(false, false)), firstTrailingBit(vec2<i32>(1i, 18279i))), _wgslsmith_mod_i32(u_input.a, _wgslsmith_sub_i32(~u_input.a, ~u_input.a)), u_input.a) >> (~_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 1863u, 0u, 0u), vec4<u32>(40688u, 4294967295u, ~7600u, reverseBits(41702u))) % vec4<u32>(32u));
    let var_3 = reverseBits(vec2<u32>(_wgslsmith_dot_vec3_u32(~func_3(global0[_wgslsmith_index_u32(1u, 3u)], true, Struct_1(0u, true, 1146f, false, -1236f), Struct_1(1u, false, -269f, true, 1561f)), ~vec3<u32>(1u, 1u, 1u)), _wgslsmith_mult_u32(_wgslsmith_add_u32(~1u, 1u), 1u)));
    var_1 = abs(0u) >> (0u % 32u);
    return 0u;
}

fn func_1() -> Struct_1 {
    global0 = array<vec3<bool>, 3>();
    var var_0 = 1u;
    global0 = array<vec3<bool>, 3>();
    let var_1 = func_2();
    let var_2 = 22712u;
    return global1[_wgslsmith_index_u32(15479u, 29u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_1();
    var var_1 = _wgslsmith_mod_vec4_i32(reverseBits(~(-vec4<i32>(-2147483647i, -37063i, u_input.a, u_input.a))), vec4<i32>(u_input.a, _wgslsmith_mod_i32(1i, u_input.a), 2147483647i, u_input.a));
    global0 = array<vec3<bool>, 3>();
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_0.c) + vec2<f32>(-356f, var_0.e)) + vec2<f32>(var_0.e, -491f)))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1454f, var_0.e))))), vec2<f32>(_wgslsmith_f_op_f32(-734f + var_0.e), -240f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, -536f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e, 1291f))))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.e, var_0.e)))))));
    let var_3 = Struct_2(global0[_wgslsmith_index_u32(31531u, 3u)]);
    let x = u_input.a;
    s_output = StorageBuffer(~(-(~_wgslsmith_div_vec3_i32(var_1.wzx, vec3<i32>(var_1.x, var_1.x, var_1.x)))), _wgslsmith_f_op_f32(var_0.c - 293f));
}

