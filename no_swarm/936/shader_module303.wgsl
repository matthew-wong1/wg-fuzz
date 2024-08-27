struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<f32> = vec4<f32>(-185f, -716f, -395f, 287f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32) -> vec4<f32> {
    var var_0 = vec3<bool>(any(vec3<bool>(true, true, true)), !((false || (arg_0 == 6268u)) | !any(vec2<bool>(true, false))), !all(vec2<bool>(select(true, false, false), any(vec4<bool>(false, false, true, false)))));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(global0.a * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global0.a.x, -347f, 163f) * global0.a))))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.x - 363f))), global1.x, _wgslsmith_f_op_f32(-1f), 1415f));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(global1.x, -1145f)), _wgslsmith_f_op_f32(max(-890f, 131f)), _wgslsmith_f_op_f32(-global1.x), -1163f)) - _wgslsmith_f_op_vec4_f32(global0.a * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-983f, 699f, -1045f, -1119f), global0.a) * vec4<f32>(-716f, global1.x, global0.a.x, global1.x)))), vec4<f32>(_wgslsmith_f_op_f32(min(1735f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, 738f)))), _wgslsmith_f_op_f32(max(1982f, global1.x)), -572f, global0.a.x));
    var var_1 = Struct_1(_wgslsmith_div_vec4_f32(global0.a, _wgslsmith_f_op_vec4_f32(-global0.a)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.x, _wgslsmith_f_op_f32(ceil(-938f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-673f * 866f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1169f)))))));
    var var_2 = 1157i;
    return global0.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.a.x)) * 1f) * _wgslsmith_f_op_vec4_f32(func_3(1u)).x), -682f), arg_1.b.x);
}

fn func_2(arg_0: Struct_1) -> vec2<u32> {
    global1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(arg_0.b.x + 312f)), arg_0.b.x), 311f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b.x, arg_0.a.x) - global0.b.x), _wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_vec4_f32(abs(global0.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(287f, global0.b.x, 348f, 1451f))), Struct_1(_wgslsmith_f_op_vec4_f32(func_3(16506u)), _wgslsmith_f_op_vec4_f32(floor(global0.b)))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.x * arg_0.b.x), _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_div_f32(global0.a.x, 1993f), -1590f, global1.x), vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3(~77490u)).x, -351f, arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-123f))))), !(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false))))));
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(global0.a + _wgslsmith_f_op_vec4_f32(global0.b + arg_0.a)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(global0.b)) * vec4<f32>(arg_0.a.x, arg_0.a.x, -781f, global0.a.x)) + vec4<f32>(_wgslsmith_f_op_f32(step(156f, global0.b.x)), _wgslsmith_f_op_f32(floor(-506f)), global0.b.x, _wgslsmith_f_op_f32(step(arg_0.a.x, global0.b.x)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.a.x, arg_0.b.x, _wgslsmith_f_op_f32(-1131f + 1405f), _wgslsmith_f_op_f32(-global1.x)))), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), true)), vec4<bool>(true, any(vec2<bool>(true, true)), false, true)))));
    var var_1 = ~vec3<u32>(0u, reverseBits(_wgslsmith_clamp_u32(14167u, ~1u, ~12060u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(95454u, 0u, 33565u, 1u), select(vec4<u32>(109606u, 76965u, 100897u, 1898u), vec4<u32>(738u, 4294967295u, 1u, 14698u), true)));
    var var_2 = 45793u;
    global0 = var_0;
    return var_1.xx;
}

fn func_1() -> Struct_1 {
    var var_0 = (4294967295u >> (1u % 32u)) != _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u));
    let var_1 = min(_wgslsmith_sub_vec2_i32(-u_input.a.zx & u_input.a.xy, u_input.a.yx) << (_wgslsmith_sub_vec2_u32(~(~vec2<u32>(49403u, 1u)), _wgslsmith_div_vec2_u32(~vec2<u32>(0u, 56897u), func_2(Struct_1(global0.a, global0.a)))) % vec2<u32>(32u)), vec2<i32>(u_input.a.x, _wgslsmith_sub_i32(_wgslsmith_add_i32(1i, firstTrailingBit(u_input.a.x)), _wgslsmith_clamp_i32(u_input.a.x, i32(-1i) * -27473i, u_input.a.x))));
    var_0 = !any(vec3<bool>(false, true, false));
    global1 = global0.a;
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a)) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(func_4(Struct_1(global0.a, vec4<f32>(global1.x, -2288f, global1.x, global0.a.x)), Struct_1(global0.b, vec4<f32>(global1.x, global1.x, 1122f, global0.a.x)))), -1000f)))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1691f + global1.x), _wgslsmith_f_op_f32(-1294f * global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.a.x)) * global1.x), global1.x)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1540f - -1441f) - -539f), global0.b.x), global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1027f, -1360f)) - _wgslsmith_f_op_f32(f32(-1f) * -719f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -910f), _wgslsmith_f_op_f32(global1.x - -200f), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.a.x - global0.b.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~_wgslsmith_div_u32(4294967295u, 1u) & (firstLeadingBit(26902u) << (_wgslsmith_clamp_u32(14353u, 4294967295u, 4294967295u) % 32u))));
    let var_1 = -312f;
    var var_2 = func_1();
    var_2 = func_1();
    global1 = global0.a;
    var_2 = func_1();
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2100f, _wgslsmith_f_op_f32(-var_1), 490f, _wgslsmith_f_op_f32(max(959f, 1273f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_2.b.x * -188f), _wgslsmith_f_op_f32(1896f + -385f), -1352f, _wgslsmith_f_op_f32(f32(-1f) * -2243f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x + global0.b.x)), var_1, var_2.b.x) + var_2.b));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x - -1879f))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.b) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(710f, -623f, 335f, 831f)))), vec4<f32>(_wgslsmith_f_op_f32(step(var_1, global1.x)), _wgslsmith_f_op_f32(-global1.x), 1475f, var_1))), ~(~1u), ~(~var_0), ~countOneBits(-u_input.a.xz));
}

