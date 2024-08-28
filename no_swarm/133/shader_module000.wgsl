struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: i32;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec2<u32>) -> vec3<f32> {
    let var_0 = -2147483647i & firstLeadingBit(u_input.a);
    global0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, 1000f, -475f)));
    var var_1 = _wgslsmith_f_op_f32(exp2(global0.x));
    global0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, 1000f, global0.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1271f, global0.x, global0.x) + vec3<f32>(global0.x, -341f, global0.x)))) * vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(global0.x * -166f)))))));
    var var_2 = arg_0;
    return vec3<f32>(-2134f, _wgslsmith_f_op_f32(step(global0.x, global0.x)), global0.x);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = ~_wgslsmith_div_i32(arg_2.x, -arg_2.x);
    let var_1 = true;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(1158f)), _wgslsmith_f_op_f32(-global0.x), global0.x);
    var_0 = countOneBits(2147483647i);
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_3(arg_1, 1u, vec2<u32>(17207u, 4294967295u)))))))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(max(global0.x, global0.x)), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + 297f))))), arg_0.yzx));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -737f)))), _wgslsmith_f_op_f32(-875f + 1250f), global0.x) * vec3<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1870f), _wgslsmith_f_op_f32(f32(-1f) * -149f)));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec4<u32>, arg_3: f32) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(148f, 568f, -1315f, global0.x)) + vec4<f32>(_wgslsmith_f_op_f32(floor(1103f)), arg_3, _wgslsmith_f_op_f32(max(170f, -1343f)), _wgslsmith_f_op_f32(1364f * 1512f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1322f, 1488f, -602f, 1000f))), vec4<f32>(global0.x, -229f, arg_3, global0.x)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(f32(-1f) * -964f), _wgslsmith_div_f32(329f, 1000f))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-563f, -1263f, -425f, 1086f) - vec4<f32>(-235f, 1216f, -1000f, arg_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(639f, 1152f, global0.x, -2337f) - vec4<f32>(-1259f, 482f, -2822f, -729f)))))));
    var var_1 = u_input.a;
    let var_2 = !(!select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), true), vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(true, false)), true, true)));
    global1 = -u_input.a;
    let var_3 = var_0.x;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.xyx, _wgslsmith_f_op_vec3_f32(func_2(vec4<bool>(false, var_2.x, var_2.x, true), Struct_1(true), vec2<i32>(0i, u_input.a) | vec2<i32>(2147483647i, 22401i), Struct_1(var_2.x)))) + vec3<f32>(global0.x, var_0.x, _wgslsmith_div_f32(global0.x, -1391f))) * _wgslsmith_f_op_vec3_f32(var_0.yyx * var_0.wxw));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-189f, _wgslsmith_f_op_f32(-177f - -840f), -649f) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, global0.x, global0.x))))))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1562f, global0.x, global0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1795f, 469f, -168f)))))));
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-350f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1050f + global0.x))))), global0.x));
    let var_0 = ~(-2147483647i);
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, -899f, -756f), vec3<f32>(global0.x, -1326f, global0.x))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 266f, 909f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, 615f, 715f), vec3<f32>(-1000f, -1357f, global0.x)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1351f, 1389f, global0.x)))) - _wgslsmith_f_op_vec3_f32(func_1(global0.x, _wgslsmith_div_u32(max(24148u, 30637u), 1u), ~vec4<u32>(43459u, 4294967295u, 1u, 0u), -2348f))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), -1240f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(exp2(global0.x)))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -2076f, global0.x) * vec3<f32>(-379f, 924f, -1810f)))))) + vec3<f32>(1694f, _wgslsmith_f_op_f32(abs(660f)), -546f));
    let var_1 = false;
    var var_2 = Struct_1(var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(381f + global0.x), vec4<i32>(-(~8974i), var_0, -2147483647i, _wgslsmith_dot_vec3_i32(-min(vec3<i32>(var_0, -22299i, u_input.a), vec3<i32>(var_0, 32994i, 0i)), select(vec3<i32>(-1i, u_input.a, var_0), ~vec3<i32>(0i, u_input.a, var_0), select(vec3<bool>(var_2.a, false, false), vec3<bool>(var_2.a, false, false), var_2.a)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(1000f * -1396f), !var_1)), global0.x, 256f), vec3<f32>(-905f, _wgslsmith_f_op_vec3_f32(func_3(Struct_1(var_1), 45040u, countOneBits(vec2<u32>(41354u, 0u)))).x, _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(round(968f))))), vec3<u32>(4294967295u, ~1u & firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 0u, 0u), vec4<u32>(0u, 4294967295u, 6966u, 1u))), firstLeadingBit(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 58781u, 0u), vec3<u32>(1u, 0u, 4294967295u))))), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-42783i, u_input.a, -1i), firstTrailingBit(vec3<i32>(-2147483647i, 8277i, 2147483647i))), _wgslsmith_sub_vec3_i32(-vec3<i32>(-1i, u_input.a, u_input.a), vec3<i32>(u_input.a, 15593i, 12042i))), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, _wgslsmith_sub_i32(u_input.a, 2147483647i), -1i), ~(vec3<i32>(-1i, u_input.a, u_input.a) | vec3<i32>(u_input.a, 2147483647i, var_0)))));
}

