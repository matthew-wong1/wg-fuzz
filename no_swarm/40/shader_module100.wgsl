struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec3<bool>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-139f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(arg_0.b.x)), -155f)))));
    var var_1 = Struct_2(Struct_1(~arg_0.a & _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, arg_1, arg_0.a.x, u_input.a.x), vec4<i32>(arg_1, 0i, -29137i, u_input.a.x) | arg_0.a), var_0, !select(!arg_0.c, !vec3<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x), arg_0.c), 9293u, ~abs(_wgslsmith_mod_u32(arg_0.d, 4294967295u))));
    var_1 = Struct_2(arg_0);
    var_1 = Struct_2(var_1.a);
    var var_2 = any(vec4<bool>(var_1.a.c.x, var_1.a.c.x, false, arg_0.c.x));
    return (firstLeadingBit(arg_0.e) & ~var_1.a.d) == _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.e, arg_0.d), firstLeadingBit(vec2<u32>(arg_0.e, arg_0.e))) | (var_1.a.e >> (abs(arg_0.d) % 32u)), 83895u);
}

fn func_2() -> Struct_2 {
    let var_0 = ~u_input.a.x;
    var var_1 = false & select(all(vec4<bool>(true, true, true, true)), true, any(vec4<bool>(true, true, true, true)));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-676f, _wgslsmith_f_op_f32(1000f - 531f))) - 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -101f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1355f), 166f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1337f, _wgslsmith_f_op_f32(sign(333f))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-211f, 395f), vec2<f32>(1116f, -528f)))))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-287f, -386f))), (any(vec2<bool>(true, true)) || func_3(Struct_1(vec4<i32>(149i, -1i, -27032i, 9202i), vec2<f32>(1981f, -564f), vec3<bool>(false, false, true), 4294967295u, 99267u), -1982i)) == all(vec2<bool>(true, true)))));
    var var_3 = Struct_3(false);
    var var_4 = Struct_3(!var_3.a);
    return Struct_2(Struct_1(vec4<i32>(var_0 & u_input.a.x, -32064i, _wgslsmith_dot_vec2_i32(vec2<i32>(-12551i, var_0), u_input.a), var_0 & var_0) >> (~vec4<u32>(0u, 305u, 0u, 9191u) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1555f, var_2.x))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1467f, var_2.x))), select(var_3.a, true, false)))), select(vec3<bool>(false, any(vec3<bool>(false, false, false)), true), !(!vec3<bool>(true, true, var_4.a)), !(var_3.a || var_3.a)), ~_wgslsmith_add_u32(10998u, min(4294967295u, 25812u)), 0u));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: i32, arg_3: Struct_1) -> bool {
    var var_0 = func_2();
    let var_1 = 164f;
    var var_2 = -748f;
    let var_3 = !select(select(!vec4<bool>(false, arg_3.c.x, arg_1.x, arg_3.c.x), vec4<bool>(!var_0.a.c.x, var_0.a.b.x < arg_0.a.b.x, true, true), arg_1), arg_1, vec4<bool>(arg_1.x || (arg_2 < arg_2), arg_3.c.x, all(!vec2<bool>(arg_1.x, false)), any(arg_0.a.c) | arg_0.a.c.x));
    var var_4 = arg_0;
    return any(!vec4<bool>(!(!var_4.a.c.x), true && arg_1.x, false, arg_3.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -230f);
    var_0 = -_wgslsmith_mod_i32(_wgslsmith_div_i32(1i ^ max(0i, u_input.a.x), -min(u_input.a.x, u_input.a.x)), u_input.a.x);
    let var_2 = vec2<bool>(all(select(vec3<bool>(any(vec3<bool>(false, true, false)), func_1(Struct_2(Struct_1(vec4<i32>(u_input.a.x, 27813i, 32313i, -1i), vec2<f32>(1235f, -238f), vec3<bool>(true, true, false), 49452u, 4294967295u)), vec4<bool>(true, false, true, false), 0i, Struct_1(vec4<i32>(-1i, 10599i, 1i, -2147483647i), vec2<f32>(987f, -2232f), vec3<bool>(true, false, true), 0u, 4294967295u)), func_2().a.c.x), vec3<bool>(true, all(vec4<bool>(false, false, true, false)), true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))), true);
    var var_3 = vec3<i32>(abs(u_input.a.x & func_2().a.a.x), u_input.a.x, -8385i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, select(min(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 49765u), vec2<u32>(1u, 47340u))), 1u), ~_wgslsmith_mod_u32(_wgslsmith_div_u32(0u, 57194u), max(4294967295u, 14391u)), var_2.x));
}

