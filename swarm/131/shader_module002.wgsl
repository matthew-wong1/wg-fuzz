struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-1569f, vec2<f32>(-1958f, -948f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec4<u32>) -> bool {
    global0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.a, global0.a))))), vec2<f32>(2097f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-361f, 392f)), _wgslsmith_f_op_f32(f32(-1f) * -143f))), -768f))));
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.b.x, -1000f, global0.a)));
    global0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-689f, global0.a), global0.b))), vec2<f32>(_wgslsmith_f_op_f32(var_0.x + global0.b.x), global0.a))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -224f)), var_0.x))));
    var var_1 = _wgslsmith_f_op_f32(var_0.x - global0.a);
    var_1 = _wgslsmith_f_op_f32(-global0.a);
    return any(select(!vec4<bool>(all(vec3<bool>(true, true, false)), true, true, true), select(vec4<bool>(true, true, true, u_input.a <= -30808i), vec4<bool>(true, true, true, true), !any(vec2<bool>(false, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), true), select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false)), true))));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: f32) -> vec2<f32> {
    var var_0 = Struct_3(_wgslsmith_dot_vec4_u32(~vec4<u32>(~1u, 79023u ^ u_input.d, u_input.d, 1u), ~(~(~vec4<u32>(u_input.d, u_input.d, 125812u, u_input.d)))), _wgslsmith_f_op_f32(min(470f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(150f))))))));
    var_0 = Struct_3(~((_wgslsmith_clamp_u32(65694u, 59281u, var_0.a) << (~0u % 32u)) >> (~_wgslsmith_mult_u32(25243u, var_0.a) % 32u)), _wgslsmith_f_op_f32(-var_0.b));
    return vec2<f32>(1705f, _wgslsmith_f_op_f32(336f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2)))));
}

fn func_1(arg_0: i32) -> Struct_2 {
    global0 = Struct_2(-656f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, -1334f)) - global0.b));
    let var_0 = _wgslsmith_f_op_vec2_f32(-global0.b);
    var var_1 = select(true, true, func_2(_wgslsmith_div_vec4_u32(~vec4<u32>(87705u, u_input.d, u_input.d, u_input.d), ~vec4<u32>(u_input.d, u_input.d, 30260u, u_input.d)) | ~vec4<u32>(23936u, 45523u, 4294967295u, u_input.d)));
    global0 = Struct_2(var_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(select(-vec4<i32>(-21357i, 25037i, 0i, arg_0), _wgslsmith_mult_vec4_i32(u_input.b, u_input.b), select(false, true, false)), ~(arg_0 ^ u_input.b.x), global0.a))));
    var_1 = true && !all(vec3<bool>(true, true, true));
    return Struct_2(-1033f, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1295f, -1559f))) - var_0))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d);
}

