struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
    c: Struct_2,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec2<u32>) -> vec2<u32> {
    var var_0 = arg_0;
    return arg_2;
}

fn func_3() -> f32 {
    let var_0 = vec2<u32>(abs(14032u >> (~abs(u_input.c) % 32u)), ~abs(min(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, u_input.c)), select(30082u, 74537u, true))));
    var var_1 = _wgslsmith_f_op_f32(trunc(1f));
    let var_2 = _wgslsmith_f_op_f32(541f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1491f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - -803f))));
    var_1 = _wgslsmith_div_f32(144f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2 * -714f), var_2));
    var_1 = 557f;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1301f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-882f - _wgslsmith_f_op_f32(-1279f * _wgslsmith_f_op_f32(-var_2))) * _wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * 1000f), var_2)))));
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: f32) -> vec2<u32> {
    var var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 1f));
    var_0 = _wgslsmith_f_op_f32(func_3());
    var var_2 = Struct_2(arg_1.wwy);
    var var_3 = Struct_1(var_2.a.yx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, arg_2) - vec2<f32>(arg_2, -481f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_2))))), arg_1.xz);
    return _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(0u & arg_1.x, 765u, ~(~u_input.c)), u_input.c), vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(41408u, u_input.c, 1u, arg_1.x), arg_1 >> (vec4<u32>(arg_1.x, var_2.a.x, 41403u, 1u) % vec4<u32>(32u))), arg_1), firstLeadingBit(_wgslsmith_sub_u32(reverseBits(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_2.a.x), vec2<u32>(arg_1.x, 1u))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~_wgslsmith_mult_vec2_u32(func_1(4294967295u > u_input.c, _wgslsmith_dot_vec3_i32(u_input.b.xyy, u_input.b.xyz), vec2<u32>(u_input.c, u_input.c)), abs(func_2(962f, vec4<u32>(u_input.c, 56310u, u_input.c, u_input.c), -315f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1037f, -1241f)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, -605f)))), vec2<f32>(_wgslsmith_f_op_f32(-1000f - -665f), _wgslsmith_f_op_f32(min(-1261f, -777f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1127f, 869f, false))), -1511f))), vec2<u32>(_wgslsmith_clamp_u32(u_input.c, min(1u, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 0u), vec2<u32>(u_input.c, 43504u))) ^ u_input.c, ~1u));
    let var_1 = Struct_2(~(~firstLeadingBit(vec3<u32>(u_input.c, 17571u, 29928u)) & firstLeadingBit(vec3<u32>(u_input.c, 8436u, var_0.a.x))));
    let var_2 = _wgslsmith_f_op_f32(-var_0.b.x);
    let var_3 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(-_wgslsmith_add_i32(u_input.b.x, u_input.a.x)), var_0.a.x, u_input.a.x, vec4<f32>(var_2, var_0.b.x, _wgslsmith_f_op_f32(var_2 - var_2), _wgslsmith_f_op_f32(var_2 * -1021f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3()), -267f)));
}

