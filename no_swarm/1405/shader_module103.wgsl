struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 5>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: u32) -> vec4<bool> {
    let var_0 = Struct_2(arg_0.a);
    global0 = array<vec3<f32>, 5>();
    var var_1 = arg_1;
    var var_2 = ~(~(~vec4<u32>(arg_3, 51770u, u_input.c, 9269u))) ^ ~_wgslsmith_sub_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 37237u, arg_3, 1u), vec4<u32>(u_input.c, arg_3, u_input.c, arg_3), vec4<u32>(59165u, arg_3, 96391u, arg_3)), firstTrailingBit(~vec4<u32>(0u, arg_3, 4152u, u_input.c)));
    global0 = array<vec3<f32>, 5>();
    return vec4<bool>(!all(select(!vec2<bool>(false, arg_0.a.x), vec2<bool>(true, false), !var_1.c.x)), select(arg_1.c.x, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b + -1022f) * _wgslsmith_f_op_f32(300f * -1000f)) != -354f), var_1.c.x, !(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(var_2.zw, var_2.zy), 4294967295u) <= var_2.x));
}

fn func_2() -> bool {
    var var_0 = ~abs(u_input.a.wz);
    let var_1 = Struct_1(u_input.a, _wgslsmith_f_op_f32(-212f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -607f), _wgslsmith_f_op_f32(round(1f))))), select(!func_3(Struct_2(vec3<bool>(true, false, false)), Struct_1(vec4<i32>(1i, var_0.x, var_0.x, u_input.a.x), -1339f, vec4<bool>(false, false, false, true)), _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(1u, 5u)] - vec3<f32>(794f, -776f, 1000f)), ~1091u), vec4<bool>(true, true, true, true), firstTrailingBit(-18108i >> (0u % 32u)) <= 1i));
    global0 = array<vec3<f32>, 5>();
    global0 = array<vec3<f32>, 5>();
    global0 = array<vec3<f32>, 5>();
    return true;
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: vec3<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - -622f)));
    var var_1 = func_2();
    global0 = array<vec3<f32>, 5>();
    let var_2 = !(!(func_3(Struct_2(vec3<bool>(true, true, false)), Struct_1(u_input.a, -2644f, vec4<bool>(true, true, false, true)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_2.x, arg_2.x, 282f))), 1u).x || true));
    let var_3 = 2147483647i;
    return _wgslsmith_div_u32(arg_1.x, arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_u32(1u, _wgslsmith_mod_u32(u_input.c, ~func_1(u_input.d, _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.c), vec2<u32>(43005u, 4294967295u)), vec3<f32>(176f, -2616f, -2400f))));
    var var_1 = vec3<bool>(false, true == any(select(func_3(Struct_2(vec3<bool>(true, true, true)), Struct_1(u_input.a, -193f, vec4<bool>(true, true, false, false)), global0[_wgslsmith_index_u32(var_0, 5u)], 4294967295u).yww, vec3<bool>(false, false, true), vec3<bool>(true, true, true))), func_2());
    let var_2 = ~select(u_input.a.x, u_input.d, any(vec3<bool>(true, true, func_3(Struct_2(vec3<bool>(var_1.x, var_1.x, false)), Struct_1(u_input.a, 1012f, vec4<bool>(var_1.x, true, var_1.x, true)), global0[_wgslsmith_index_u32(32463u, 5u)], 13981u).x)));
    let var_3 = Struct_1(u_input.a, -1157f, vec4<bool>(var_1.x, all(vec3<bool>(true, true, true)), false, u_input.a.x != abs(_wgslsmith_mod_i32(var_2, 45225i))));
    var_1 = !(!(!(!var_3.c.yxw)));
    let x = u_input.a;
    s_output = StorageBuffer(1677u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b * 1000f) + -995f)), -5867i, var_3.a.x);
}

