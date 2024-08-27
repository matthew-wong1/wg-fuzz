struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: Struct_4) -> bool {
    var var_0 = Struct_1(select(!(!(!vec4<bool>(arg_2.a, false, arg_1.b, false))), select(vec4<bool>(all(vec3<bool>(true, arg_2.b, arg_2.b)), true, 1u > u_input.a, false), vec4<bool>(true, true, true, true), select(!vec4<bool>(arg_1.b, arg_2.a, arg_2.a, arg_1.a), vec4<bool>(arg_2.a, true, arg_1.b, false), false)), vec4<bool>(!arg_1.b, arg_1.a, arg_2.a, -893f <= _wgslsmith_f_op_f32(step(727f, -299f)))), arg_1.b, !(!vec2<bool>(arg_2.b | arg_2.b, arg_2.b)));
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-115f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -209f)))), 1f)));
    var var_2 = var_1.yz;
    let var_3 = !var_0.a;
    let var_4 = u_input.b.x;
    return !(!var_3.x);
}

fn func_2(arg_0: bool, arg_1: Struct_4, arg_2: i32) -> f32 {
    var var_0 = any(select(!select(!vec4<bool>(true, false, arg_0, arg_0), select(vec4<bool>(true, arg_0, true, arg_1.b), vec4<bool>(arg_1.a, arg_1.a, true, arg_0), arg_1.b), vec4<bool>(arg_0, true, true, false)), !vec4<bool>(true, true, arg_1.a, func_3(u_input.a, arg_1, Struct_4(arg_1.a, true))), select(select(select(vec4<bool>(true, arg_1.a, arg_0, true), vec4<bool>(true, arg_1.a, arg_0, true), false), select(vec4<bool>(arg_1.b, true, arg_0, arg_0), vec4<bool>(arg_1.b, true, arg_0, false), vec4<bool>(arg_0, arg_1.b, true, arg_1.a)), select(vec4<bool>(true, false, arg_0, false), vec4<bool>(arg_1.a, arg_0, false, arg_1.b), vec4<bool>(true, true, arg_0, false))), vec4<bool>(0u >= u_input.a, !arg_1.a, true, false), true)));
    var var_1 = arg_1.a;
    var var_2 = arg_1;
    var var_3 = Struct_2(select(u_input.b | ~u_input.b, _wgslsmith_add_vec2_i32(select(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_2, u_input.b.x), u_input.b), vec2<i32>(u_input.b.x, u_input.b.x), true), vec2<i32>(arg_2, i32(-1i) * -1i)), !vec2<bool>(true, all(vec4<bool>(var_2.a, false, false, var_2.a)))), global0[_wgslsmith_index_u32(0u, 22u)], Struct_1(!select(vec4<bool>(false, arg_0, true, var_2.b), !vec4<bool>(var_2.a, true, false, var_2.a), var_2.b && arg_0), false, vec2<bool>(true, true)), _wgslsmith_mod_u32(u_input.a, ~(~67518u) ^ u_input.a), select(!vec3<bool>(true, !arg_0, true), vec3<bool>(true, false, !arg_0 || true), !select(select(vec3<bool>(false, arg_1.b, false), vec3<bool>(arg_0, true, var_2.a), false), select(vec3<bool>(arg_0, false, var_2.b), vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, true, false)), vec3<bool>(arg_0, false, arg_0))));
    var_0 = arg_1.b;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1f))));
}

fn func_1(arg_0: Struct_4) -> f32 {
    var var_0 = Struct_1(select(select(vec4<bool>(select(arg_0.a, arg_0.a, false), arg_0.b, any(vec4<bool>(arg_0.b, arg_0.a, false, arg_0.b)), true), select(!vec4<bool>(arg_0.b, arg_0.b, arg_0.a, arg_0.a), !vec4<bool>(false, arg_0.b, arg_0.a, true), arg_0.b), all(!vec4<bool>(arg_0.a, arg_0.a, arg_0.b, false))), !select(!vec4<bool>(true, arg_0.b, true, arg_0.b), vec4<bool>(arg_0.b, arg_0.a, true, arg_0.b), !vec4<bool>(arg_0.a, arg_0.a, arg_0.b, false)), false), select(any(!vec4<bool>(arg_0.b, arg_0.b, arg_0.b, true)), !(!arg_0.b), arg_0.a) & true, vec2<bool>(!all(vec2<bool>(false, false)), !arg_0.a));
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(844f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(var_0.b, arg_0, u_input.b.x)) - _wgslsmith_f_op_f32(ceil(-1705f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(762f * 406f) - -391f)), _wgslsmith_f_op_f32(-461f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1169f)))), _wgslsmith_div_f32(-254f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1536f - -153f), _wgslsmith_f_op_f32(-470f * 264f)))))));
    let var_2 = global0[_wgslsmith_index_u32(11381u, 22u)];
    let var_3 = select(vec2<bool>(true, var_2.c.x), !(!var_0.c), !(!all(vec2<bool>(false, var_2.c.x))));
    var var_4 = Struct_3(global0[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.a, 60710u), 4189u, _wgslsmith_clamp_u32(20254u, 0u, 4294967295u))), 22u)]);
    return -495f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 22>();
    let var_0 = _wgslsmith_f_op_f32(666f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(Struct_4(false, false))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-334f - 246f))))) * _wgslsmith_f_op_f32(sign(-326f))));
    global0 = array<Struct_1, 22>();
    let var_1 = ~(1i >> (u_input.a % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, ~1i, _wgslsmith_div_vec2_u32(~select(vec2<u32>(u_input.a, 14122u), select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a), false), true), firstLeadingBit(vec2<u32>(u_input.a, _wgslsmith_mod_u32(u_input.a, u_input.a)))), ~_wgslsmith_add_vec4_u32(max(_wgslsmith_sub_vec4_u32(vec4<u32>(31624u, 1u, 0u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<u32>(u_input.a, u_input.a, 51656u, u_input.a) ^ vec4<u32>(4294967295u, 43589u, 7245u, u_input.a)), ~vec4<u32>(u_input.a, 4294967295u, u_input.a, 1u) << (~vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))));
}

