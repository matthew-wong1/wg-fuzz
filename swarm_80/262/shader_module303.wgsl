struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec2<f32>(-1050f, 968f)), Struct_1(vec2<f32>(-785f, -319f)), Struct_1(vec2<f32>(-1209f, 1000f)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec3<i32>) -> i32 {
    global0 = array<Struct_1, 3>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(arg_0.a * vec2<f32>(-904f, _wgslsmith_f_op_f32(floor(arg_1)))));
    var var_1 = arg_0;
    var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(select(arg_0.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.a.x, 2078f), 903f)), true))));
    var_1 = Struct_1(var_1.a);
    return arg_2.x >> (0u % 32u);
}

fn func_2() -> vec3<u32> {
    let var_0 = -_wgslsmith_clamp_i32(~_wgslsmith_add_i32(26054i, ~30575i), firstLeadingBit(func_3(Struct_1(vec2<f32>(-2119f, -1005f)), 433f, vec3<i32>(3643i, -2147483647i, -22725i))) | -firstLeadingBit(-38372i), -_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 1i), -vec2<i32>(-1i, 7205i)));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -183f);
    let var_2 = true;
    return vec3<u32>(_wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(54219u, 66127u, 0u), vec3<u32>(u_input.a.x, 17081u, u_input.a.x) >> (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u)))), abs(u_input.a.x)), ~u_input.a.x, u_input.a.x);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1) -> StorageBuffer {
    var var_0 = func_2();
    var_0 = ~min(vec3<u32>(~1u, 0u, ~var_0.x), vec3<u32>(~_wgslsmith_sub_u32(43955u, 35682u), ~countOneBits(61364u), u_input.a.x));
    let var_1 = global0[_wgslsmith_index_u32(1u >> (~_wgslsmith_add_u32(var_0.x, 57788u ^ var_0.x) % 32u), 3u)];
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(157f, arg_1.a.x, -1314f, -125f))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 167f, var_1.a.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1083f, -464f, -459f)) * vec3<f32>(-166f, 1097f, arg_1.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(538f, -463f, -1318f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, 1483f, 235f) - vec3<f32>(-1486f, -1489f, arg_1.a.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(382f, arg_1.a.x, var_1.a.x) + vec3<f32>(var_1.a.x, -1142f, arg_1.a.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, -1571f) + vec2<f32>(arg_1.a.x, arg_1.a.x))))), vec4<i32>(-58513i, 1i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-1i, 0i, 32444i, -2147483647i)), min(vec4<i32>(-7950i, -1i, -10908i, 2147483647i), vec4<i32>(14362i, 2147483647i, 2147483647i, 0i)) >> (vec4<u32>(19156u, 12694u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), _wgslsmith_div_i32(-(i32(-1i) * -32492i), 11908i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(~u_input.a.xx, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(378f, _wgslsmith_div_f32(1292f, -1298f)) + vec2<f32>(-1060f, _wgslsmith_div_f32(946f, -1044f)))));
}

