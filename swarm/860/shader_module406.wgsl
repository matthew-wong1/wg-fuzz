struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
    c: bool,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5> = array<i32, 5>(-13510i, 63453i, i32(-2147483648), -1i, i32(-2147483648));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> vec3<f32> {
    global0 = array<i32, 5>();
    global0 = array<i32, 5>();
    let var_0 = all(select(vec2<bool>(true, ~u_input.e <= (u_input.d << (40249u % 32u))), vec2<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false)), true), true));
    global0 = array<i32, 5>();
    global0 = array<i32, 5>();
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1121f, 1055f, 776f) - vec3<f32>(-1050f, -1953f, -420f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(189f, -1000f, 522f))) - vec3<f32>(498f, _wgslsmith_f_op_f32(f32(-1f) * -2106f), 1592f)))));
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = ~u_input.b;
    global0 = array<i32, 5>();
    let var_1 = arg_0;
    global0 = array<i32, 5>();
    var var_2 = 638f;
    return ~(1062u ^ u_input.e) < _wgslsmith_add_u32(37396u, ~(~0u));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: i32, arg_3: vec2<bool>) -> i32 {
    let var_0 = !vec3<bool>(arg_1, any(select(vec2<bool>(false, arg_1), vec2<bool>(arg_3.x, true), arg_3)) | arg_1, true);
    let var_1 = u_input.a.x;
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(func_2()), Struct_1(vec4<bool>(all(!vec2<bool>(var_0.x, var_0.x)), arg_1, any(!var_0), arg_1)), func_3(Struct_2(Struct_1(select(vec4<bool>(false, arg_3.x, var_0.x, var_0.x), vec4<bool>(arg_3.x, false, false, false), false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1382f, 1449f, -360f, -2391f), vec4<f32>(-2610f, 492f, -414f, 1410f)))))));
    let var_3 = Struct_5(vec3<bool>(arg_2 >= arg_2, true, all(var_0.yx)), ~max(max(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 74050u, var_1), vec3<u32>(42366u, 34022u, var_1), vec3<u32>(var_1, var_1, 17155u)), _wgslsmith_div_vec3_u32(vec3<u32>(1u, var_1, u_input.d), vec3<u32>(29791u, var_1, var_1))), ~(vec3<u32>(17358u, 1u, 1u) << (vec3<u32>(var_1, 0u, var_1) % vec3<u32>(32u)))), firstLeadingBit(vec4<i32>(select(arg_2, 19844i, func_3(Struct_2(Struct_1(var_2.b.a), vec4<f32>(var_2.a.x, 613f, var_2.a.x, -1331f)))), 2147483647i, global0[_wgslsmith_index_u32(var_1, 5u)] ^ ~(-8281i), -u_input.b.x)), var_2.a.x);
    var var_4 = vec2<u32>(var_1 & 51804u, _wgslsmith_sub_u32(77519u, firstLeadingBit(_wgslsmith_div_u32(~var_1, min(var_3.b.x, u_input.e)))));
    return _wgslsmith_add_i32(global0[_wgslsmith_index_u32(4294967295u, 5u)], _wgslsmith_dot_vec4_i32(-var_3.c, _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(var_3.c ^ var_3.c, vec4<i32>(0i, 61605i, 0i, 49949i) << (vec4<u32>(var_4.x, 24830u, var_1, 4294967295u) % vec4<u32>(32u))), select(vec4<i32>(arg_2, 2147483647i, var_3.c.x, -8807i), var_3.c, var_2.b.a.x) & firstTrailingBit(var_3.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 24706i != _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(~39191i, ~global0[_wgslsmith_index_u32(u_input.d, 5u)], -2147483647i, 39795i), vec4<i32>(0i, func_1(global0[_wgslsmith_index_u32(0u, 5u)], false, u_input.b.x, vec2<bool>(true, false)), 1i, 1i)), _wgslsmith_dot_vec2_i32(u_input.b.yz, vec2<i32>(global0[_wgslsmith_index_u32(min(1u, u_input.e), 5u)], 20904i)));
    global0 = array<i32, 5>();
    global0 = array<i32, 5>();
    global0 = array<i32, 5>();
    var var_1 = -1000f;
    var var_2 = -6836i;
    let var_3 = Struct_1(select(!(!(!vec4<bool>(false, true, var_0, var_0))), vec4<bool>(all(!vec4<bool>(false, var_0, false, var_0)), any(select(vec4<bool>(var_0, false, true, var_0), vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(var_0, var_0, false, var_0))), true != !var_0, all(vec2<bool>(false, var_0))), false));
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.a), min(0u, ~1u), _wgslsmith_clamp_vec3_i32(-min(u_input.b, u_input.b), u_input.b, u_input.b));
}

