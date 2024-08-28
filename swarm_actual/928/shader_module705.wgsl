struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec2<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: u32, arg_3: i32) -> i32 {
    let var_0 = vec2<i32>(-arg_1.x, arg_3);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(global0.zw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.wy)))))) + vec2<f32>(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-arg_0)), -1036f));
    var var_2 = _wgslsmith_sub_vec2_u32(~abs(select(vec2<u32>(34354u, arg_2), u_input.b.yx, vec2<bool>(true, true))), vec2<u32>(0u, u_input.b.x));
    let var_3 = -24879i;
    let var_4 = arg_3;
    return _wgslsmith_mult_i32(-8311i, var_3) ^ 30244i;
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_2) -> f32 {
    let var_0 = true;
    var var_1 = Struct_4(vec4<bool>(all(select(select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(var_0, var_0, arg_1), vec3<bool>(arg_1, arg_1, true)), select(vec3<bool>(true, arg_1, var_0), vec3<bool>(arg_1, arg_1, true), vec3<bool>(false, arg_1, arg_1)), arg_1)), true, true, select(arg_1, false, true)), u_input.b.x);
    var var_2 = _wgslsmith_sub_i32(-(-1i & _wgslsmith_dot_vec2_i32(vec2<i32>(-12295i, -29246i), vec2<i32>(1i, 1i))), ~(-func_3(_wgslsmith_f_op_f32(f32(-1f) * -707f), vec2<i32>(1i, 2147483647i), ~51707u, 1i)));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.b * arg_2.b) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_2.b))));
    var_2 = ~1i;
    return 1000f;
}

fn func_1(arg_0: vec3<u32>) -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x))), _wgslsmith_f_op_f32(round(-436f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(-1000f, false, Struct_2(vec4<u32>(arg_0.x, 12675u, 0u, 1u), vec4<f32>(-510f, -770f, 1497f, -314f), -435f))) - _wgslsmith_f_op_f32(exp2(global0.x))), -1128f) * vec4<f32>(global0.x, -777f, 652f, -654f)), global0.zw, vec4<u32>(~(~u_input.a), ~firstTrailingBit(88145u), _wgslsmith_add_u32(u_input.b.x, u_input.a), select(~48102u, _wgslsmith_mult_u32(97044u, arg_0.x), true)) << (reverseBits(vec4<u32>(~u_input.a, abs(36885u), _wgslsmith_add_u32(arg_0.x, u_input.b.x), ~0u)) % vec4<u32>(32u)), vec2<f32>(_wgslsmith_div_f32(-932f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -829f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-279f)), _wgslsmith_f_op_f32(742f + _wgslsmith_f_op_f32(trunc(341f)))))), Struct_2(vec4<u32>(72044u, 1u, arg_0.x, 4294967295u << (abs(u_input.b.x) % 32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(min(635f, global0.x)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * -883f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(var_0.a)) * vec4<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -661f), 551f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(249f, -1123f), global0.x, true)))));
    global0 = var_0.a;
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, var_0.b.x, 876f, -270f), var_0.a))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(var_0.e.b)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(step(1243f, global0.x)), var_0.e.b.x, global0.x) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, var_0.d.x, var_0.d.x) - var_0.a))))), !all(vec2<bool>(true, true))));
    var var_1 = Struct_2(abs(~(~vec4<u32>(u_input.a, u_input.a, 1u, u_input.b.x) | select(var_0.c, var_0.c, true))), var_0.a, _wgslsmith_f_op_f32(182f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)))));
    return -448f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1568f), -1283f, _wgslsmith_f_op_f32(-1287f * _wgslsmith_f_op_f32(f32(-1f) * -267f)), global0.x));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(min(global0.x, -767f))) + global0.x)), _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -948f))), -763f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec3<u32>(u_input.b.x, 35833u, 116336u))), _wgslsmith_f_op_f32(abs(global0.x))))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.x)) * _wgslsmith_f_op_f32(-global0.x)) + global0.x)), -829f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(func_1(vec3<u32>(0u, 43930u, 12019u) & vec3<u32>(59013u, 55142u, u_input.b.x))), select(true, true, all(vec2<bool>(true, false))), Struct_2(abs(vec4<u32>(4294967295u, 49874u, 5288u, 51044u)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, 819f, -513f, -1347f), vec4<f32>(global0.x, global0.x, 1210f, 577f), false)), _wgslsmith_f_op_f32(trunc(-122f)))))), global0.x);
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, -702f, 2577f, -352f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2111f, -296f, 943f, 704f), vec4<f32>(510f, global0.x, global0.x, -1601f), true))))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(152f, global0.x, -318f, global0.x), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(386f, 263f, 563f, global0.x), vec4<f32>(global0.x, 103f, global0.x, 337f))))))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, global0.x, true)) * 515f), _wgslsmith_f_op_f32(-586f - 136f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -390f), _wgslsmith_f_op_f32(min(global0.x, -249f)), global0.x, global0.x))));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-405f, _wgslsmith_f_op_f32(f32(-1f) * -1283f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1063f)) - _wgslsmith_f_op_f32(-global0.x)), global0.x), global0.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(651f, global0.x, 904f, global0.x)))) * vec4<f32>(_wgslsmith_f_op_f32(step(895f, -1805f)), -108f, _wgslsmith_f_op_f32(global0.x + 1535f), -761f))));
    let x = u_input.a;
    s_output = StorageBuffer(~(abs(reverseBits(vec4<i32>(14472i, 0i, -2119i, 0i))) << (~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 27331u), vec4<u32>(88016u, 0u, 45206u, 1u), vec4<u32>(0u, 0u, u_input.b.x, 4294967295u)) % vec4<u32>(32u))), vec4<u32>(u_input.b.x, ~u_input.a, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, 4294967295u, 1u), vec4<u32>(u_input.b.x, u_input.b.x, 45892u, 0u)) ^ 1u, u_input.b.x));
}

