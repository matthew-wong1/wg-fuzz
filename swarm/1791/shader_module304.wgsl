struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: bool;

var<private> global2: array<vec4<bool>, 4>;

var<private> global3: array<vec4<i32>, 11>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> f32 {
    let var_0 = _wgslsmith_div_f32(2226f, 1f);
    global3 = array<vec4<i32>, 11>();
    global1 = !all(vec2<bool>(true, true));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1411f)), _wgslsmith_div_f32(var_0, 1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1071f + -1344f), -1000f))), true)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + var_0)));
    let var_2 = 763f;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -307f) - _wgslsmith_f_op_f32(1f + var_2));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    var var_0 = vec3<u32>(1u, max(_wgslsmith_dot_vec3_u32(select(u_input.b.yyz, ~u_input.b.zxy, true), u_input.b.xyw), 48588u), abs(4294967295u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1077f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-249f + 224f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1836f + 1388f)) - _wgslsmith_f_op_f32(trunc(-526f))), any(select(select(global2[_wgslsmith_index_u32(var_0.x, 4u)], vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, true), global2[_wgslsmith_index_u32(4294967295u, 4u)]), select(global2[_wgslsmith_index_u32(var_0.x, 4u)], vec4<bool>(false, true, arg_1.a.x, arg_1.a.x), arg_1.a), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, u_input.a), 4u)])))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> StorageBuffer {
    let var_0 = arg_1.a;
    let var_1 = Struct_2(vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(arg_0.a, arg_0.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.a, 41717i), vec2<i32>(u_input.e.x, 0i), vec2<i32>(u_input.e.x, 0i))), -u_input.e.xx), abs(max(arg_0.a, u_input.c.x)) << (~1u % 32u), arg_0.a));
    var var_2 = arg_0;
    let var_3 = var_1.a.x;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-(vec3<i32>(var_1.a.x, 0i, u_input.e.x) & vec3<i32>(0i, 2147483647i, var_1.a.x)), Struct_1(!vec4<bool>(var_0.x, true, var_0.x, true)), Struct_2(vec3<i32>(var_2.a, -2147483647i, var_2.a)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(arg_3, _wgslsmith_f_op_f32(max(279f, arg_3)))), arg_3))));
    return StorageBuffer(-809f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-854f, arg_3) * vec2<f32>(arg_3, 176f)))))), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(-u_input.c.yz, -vec2<i32>(1i, 35395i) & -u_input.c.xx), 1i), vec2<u32>(arg_2, _wgslsmith_add_u32(arg_2, _wgslsmith_clamp_u32(select(u_input.a, u_input.b.x, false), ~u_input.b.x, 1259u))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<i32>, 11>();
    global2 = array<vec4<bool>, 4>();
    let x = u_input.a;
    s_output = func_2(Struct_3(-select(_wgslsmith_sub_i32(u_input.c.x, u_input.e.x), 1i, any(vec3<bool>(true, false, false)))), Struct_1(select(vec4<bool>(all(vec2<bool>(true, false)), true, true, all(vec3<bool>(true, false, true))), vec4<bool>(false, true, true, true), false == any(vec3<bool>(false, true, false)))), select(~(1u ^ (u_input.b.x | u_input.d.x)), ~countOneBits(abs(u_input.d.x)), !(!any(vec3<bool>(false, false, false)))), _wgslsmith_f_op_f32(func_1(~0u, false, Struct_1(global2[_wgslsmith_index_u32(u_input.a, 4u)]), 0i)));
}

