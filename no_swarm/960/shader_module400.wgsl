struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 17> = array<vec2<i32>, 17>(vec2<i32>(33042i, i32(-2147483648)), vec2<i32>(-15898i, i32(-2147483648)), vec2<i32>(2147483647i, -1i), vec2<i32>(106053i, 0i), vec2<i32>(i32(-2147483648), 14308i), vec2<i32>(-2979i, 63760i), vec2<i32>(-1i, -50881i), vec2<i32>(1i, 34684i), vec2<i32>(0i, -1i), vec2<i32>(34105i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(1i, 0i), vec2<i32>(-1i, 2147483647i), vec2<i32>(55171i, -1i), vec2<i32>(14748i, 7058i), vec2<i32>(57592i, -1i), vec2<i32>(2147483647i, 1i));

var<private> global1: vec3<f32> = vec3<f32>(637f, -2220f, -565f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: vec3<bool>) -> u32 {
    return ~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, ~4294967295u), u_input.d.x, abs(~u_input.d.x)), ~4294967295u, u_input.d.x);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2) -> f32 {
    global1 = _wgslsmith_f_op_vec3_f32(trunc(arg_0.yww));
    var var_0 = ~(~u_input.d.x);
    var var_1 = Struct_1((vec3<u32>(0u, abs(u_input.d.x), 1u) << (u_input.d % vec3<u32>(32u))) ^ ~u_input.d, u_input.d.x);
    var var_2 = Struct_1(select(vec3<u32>(var_1.a.x, ~u_input.d.x, firstTrailingBit(8990u)), abs(var_1.a), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), ~_wgslsmith_clamp_u32(min(0u, _wgslsmith_mult_u32(1u, 1u)), 10292u, max(u_input.d.x, ~1u)));
    var_0 = 8754u;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(648f)))), arg_0.x)), global1.x) + _wgslsmith_f_op_f32(arg_0.x * -1000f));
}

fn func_2() -> StorageBuffer {
    var var_0 = 32084i;
    var_0 = u_input.e;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, 433f, global1.x, 427f), vec4<f32>(global1.x, 912f, -998f, global1.x), true)), Struct_2(u_input.a, 7868i))) + 1369f)));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -385f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * global1.x)))));
    global1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.x, _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(min(318f, global1.x))), _wgslsmith_f_op_f32(-global1.x))));
    return StorageBuffer(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(1i, u_input.c, -1i, 0i)), vec4<i32>(u_input.b, 1i, -14859i, 1i) << (vec4<u32>(1u, 0u, u_input.d.x, 1u) % vec4<u32>(32u))), u_input.b ^ _wgslsmith_sub_i32(u_input.e, -1i)) | ((7260i | -u_input.a.x) >> (u_input.d.x % 32u)), ~_wgslsmith_mult_u32(max(u_input.d.x, ~u_input.d.x), ~88840u), vec2<f32>(_wgslsmith_f_op_f32(max(175f, global1.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -242f;
    let var_1 = _wgslsmith_div_u32(~18509u, u_input.d.x) & select(u_input.d.x, func_1(vec3<bool>(true, true, true)), true);
    global1 = vec3<f32>(1309f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1746f))));
    let x = u_input.a;
    s_output = func_2();
}

