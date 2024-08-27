struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec4<bool>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -57123i;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: i32) -> i32 {
    global0 = abs(_wgslsmith_sub_i32(arg_2, _wgslsmith_clamp_i32(-1i, 0i, 68034i)));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))));
    global0 = u_input.c;
    let var_1 = var_0.x;
    var var_2 = false;
    return arg_2;
}

fn func_2(arg_0: i32, arg_1: i32) -> vec4<bool> {
    global0 = -7005i;
    let var_0 = vec4<i32>((i32(-1i) * -56808i) ^ (-func_3(0u, vec4<bool>(false, false, true, true), 0i) | u_input.a), arg_0 << (~(~(~1u)) % 32u), -35989i, arg_0);
    let var_1 = ~vec2<u32>(1u, 1u);
    global0 = 0i;
    global0 = u_input.c;
    return !select(!vec4<bool>(var_0.x != -5767i, true, true, true), vec4<bool>(true, any(select(vec2<bool>(true, true), vec2<bool>(true, false), false)), ~u_input.a < (0i & arg_0), all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, select(true, false, true), true, true)));
}

fn func_1() -> f32 {
    var var_0 = u_input.c;
    global0 = u_input.d;
    var var_1 = !(!(!select(vec4<bool>(false, true, true, false), func_2(1i, 34741i), true)));
    let var_2 = -abs(-firstLeadingBit(~vec4<i32>(u_input.c, 2147483647i, 24532i, 9322i)));
    var_0 = _wgslsmith_dot_vec3_i32(max(-var_2.wzz, -vec3<i32>(1i, var_2.x, u_input.d)), vec3<i32>(-1i, abs(u_input.e), _wgslsmith_dot_vec2_i32(var_2.zz, var_2.yy)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1460f))))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(1532f, _wgslsmith_f_op_f32(f32(-1f) * -1844f)) * 1666f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(1u << (1u % 32u), 1u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1739f + 569f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(f32(-1f) * -1442f)))));
}

