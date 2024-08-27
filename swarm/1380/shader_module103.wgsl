struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(749f, -705f, -392f, 1693f);

var<private> global1: Struct_1;

var<private> global2: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: i32) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), -561f), global0.x, _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-593f)) - _wgslsmith_f_op_f32(f32(-1f) * -745f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1105f * -191f))))))));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> vec3<bool> {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(784f * arg_1.a.x), _wgslsmith_f_op_f32(ceil(863f)), _wgslsmith_f_op_f32(f32(-1f) * -1399f)))))));
    global0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(22334u, -2147483647i))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, 1448f, global1.a.x, 1000f))))), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, -795f, global0.x, 1106f), vec4<f32>(arg_1.a.x, -487f, 514f, -1241f), false)) + _wgslsmith_div_vec4_f32(vec4<f32>(170f, -428f, arg_1.a.x, 461f), vec4<f32>(2434f, -1000f, global1.a.x, global2.a.x)))))));
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_1.a.x)), -847f));
    let var_1 = ~vec3<i32>(17313i, 1i, _wgslsmith_mult_i32(29873i, _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(-1i, u_input.b, arg_0))));
    return !vec3<bool>(arg_0 != abs(1i), true, any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), all(vec3<bool>(true, true, true)))));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> u32 {
    global1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1527f - 562f) + 432f)), _wgslsmith_f_op_f32(f32(-1f) * -1283f)));
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.x, 2156f, -1768f) * vec3<f32>(-465f, global1.a.x, arg_3.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a.x, arg_1.a.x, global2.a.x)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, 374f, arg_3.a.x)))), ~100000u > u_input.e.x)))), vec3<f32>(arg_3.a.x, 488f, _wgslsmith_f_op_f32(-853f - global1.a.x)), !func_2(abs(u_input.b), arg_1)));
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.x - global2.a.x)))));
    global1 = arg_1;
    global2 = var_1;
    return 31928u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32((_wgslsmith_div_u32(u_input.a.x, _wgslsmith_div_u32(u_input.a.x, 18972u)) ^ (func_1(u_input.e.x, Struct_1(global1.a), vec2<i32>(u_input.d.x, u_input.c), Struct_1(global2.a)) & ~u_input.e.x)) ^ _wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), vec4<u32>(u_input.a.x, 1u, u_input.e.x, u_input.a.x))), vec4<u32>(u_input.a.x, _wgslsmith_div_u32(u_input.e.x, u_input.a.x), 0u, u_input.e.x)), ~u_input.e.x);
    var_0 = u_input.a.x;
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, -889f, -245f, -1353f) * vec4<f32>(global0.x, -685f, -161f, global0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 2306f, -308f, global2.a.x) + vec4<f32>(global1.a.x, -397f, 991f, global1.a.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1131f, global0.x, 391f, 479f))))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, 918f, -171f, global1.a.x)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(-u_input.d, ~u_input.d), u_input.e.x);
}

