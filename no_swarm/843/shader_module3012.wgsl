struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<u32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: u32) -> i32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-802f)))) * 1255f), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -285f) + 191f))), _wgslsmith_f_op_f32(f32(-1f) * -356f));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))))), -1178f);
    let var_2 = select(!vec3<bool>(!all(vec4<bool>(true, true, true, false)), (global0.a.a.x > arg_1) || true, true || (-224f == var_0.x)), vec3<bool>(!(max(14576i, u_input.b) < -1i), any(vec4<bool>(true, true, true, true)), u_input.b > -2147483647i), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), all(vec3<bool>(false, true, false)))) && !all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false))));
    let var_3 = u_input.a;
    let var_4 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(var_0)), vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 963f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(291f + _wgslsmith_f_op_f32(-var_0.x))))));
    return _wgslsmith_clamp_i32(select(_wgslsmith_sub_i32(max(-2147483647i ^ u_input.a, var_3), -2147483647i), u_input.b, var_2.x), -_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), -_wgslsmith_div_vec2_i32(vec2<i32>(43506i, -55475i), vec2<i32>(u_input.b, 2147483647i))), _wgslsmith_sub_i32(-47950i, -40427i ^ -u_input.a));
}

fn func_4(arg_0: vec3<bool>, arg_1: i32) -> vec4<f32> {
    global0 = Struct_2(Struct_1(vec3<u32>(~abs(global1.x), ~global1.x, reverseBits(41982u >> (global0.a.a.x % 32u)))), 2553u);
    var var_0 = -(abs(abs(~vec2<i32>(1i, arg_1))) ^ vec2<i32>(arg_1, u_input.b));
    var var_1 = ~(~(~vec4<u32>(global0.a.a.x, global0.b, 4294967295u, global1.x) | abs(~vec4<u32>(global1.x, 1u, global1.x, global0.b))));
    global1 = global0.a.a.xx;
    global1 = ~_wgslsmith_mod_vec2_u32(vec2<u32>(~(~global1.x), 0u), abs(_wgslsmith_mult_vec2_u32(var_1.xw, global0.a.a.zx) >> ((vec2<u32>(global1.x, var_1.x) ^ var_1.zy) % vec2<u32>(32u))));
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1335f, 1000f, -1000f, -772f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2016f, -152f, 727f, 1252f)), !arg_0.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(973f, 1000f, -1458f, -754f), vec4<f32>(-1503f, -159f, -100f, -243f), vec4<bool>(false, true, false, arg_0.x))) * vec4<f32>(1f, 1f, 1f, 1f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-944f, -831f, -1000f, -424f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1282f, -495f, -552f, 642f) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-761f, 1000f, -2039f, -2108f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1184f, 1626f, 1617f, 341f), vec4<f32>(458f, 1061f, 102f, -102f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-346f, 157f, -208f, -1464f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 159f, -1000f, 791f) + vec4<f32>(655f, 483f, -1157f, 1050f)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1339f - -576f)), 2350f, -391f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-241f)), -1644f)))));
}

fn func_2(arg_0: bool, arg_1: u32) -> i32 {
    var var_0 = Struct_2(Struct_1(vec3<u32>(global0.b, ~global0.a.a.x, global1.x)), global0.a.a.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(select(vec3<bool>(true, arg_0 && true, arg_0), vec3<bool>(false, all(vec2<bool>(arg_0, arg_0)), !arg_0), func_3(global0.a.a.x, global1.x, 23053u) == _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.a), vec3<i32>(2147483647i, u_input.a, u_input.a))), _wgslsmith_dot_vec3_i32(~(~vec3<i32>(-22434i, u_input.b, u_input.b)), -vec3<i32>(u_input.b, u_input.b, u_input.b) ^ (vec3<i32>(-55331i, u_input.a, u_input.b) >> (vec3<u32>(9541u, 22727u, 32965u) % vec3<u32>(32u)))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -227f), -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-958f + 534f))), _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(round(-3429f))));
    global0 = Struct_2(global0.a, min(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.a.a.xy, vec2<u32>(1u, global1.x)), var_0.a.a.zz), 1u) >> (4294967295u % 32u));
    var var_2 = var_1.xy;
    global1 = ~(global0.a.a.zz >> (vec2<u32>(~global0.a.a.x, ~var_0.a.a.x) % vec2<u32>(32u))) | ~(~(~global0.a.a.yy));
    return (i32(-1i) * -u_input.b) >> (0u % 32u);
}

fn func_1() -> u32 {
    var var_0 = func_2(true, global0.b);
    global1 = global0.a.a.yx;
    global0 = Struct_2(global0.a, ~global0.b);
    var var_1 = ~_wgslsmith_div_u32(68225u, 878u);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(283f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1913f) + _wgslsmith_div_f32(-429f, -924f))) - -1629f);
    return _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(global0.a.a.zz, select(~global0.a.a.xx, ~vec2<u32>(1u, 1u), true != select(true, false, false))), _wgslsmith_div_vec2_u32(~select(global0.a.a.xy, _wgslsmith_div_vec2_u32(vec2<u32>(17324u, global0.b), vec2<u32>(global0.a.a.x, global1.x)), false), ~(global0.a.a.zx >> (select(vec2<u32>(global0.b, global1.x), global0.a.a.xz, vec2<bool>(false, false)) % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var_0 = func_1();
    global1 = ~global0.a.a.zy;
    var var_1 = vec4<i32>(59053i >> (_wgslsmith_mult_u32(reverseBits(38187u) ^ (0u | global1.x), select(abs(global0.b), _wgslsmith_add_u32(4294967295u, global1.x), select(true, true, true))) % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(min(45819i, u_input.a), select(u_input.a, 0i, false), u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(6191i, u_input.a, u_input.a), vec3<i32>(-14952i, -2147483647i, 1960i))) ^ _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, 2147483647i), _wgslsmith_mult_vec2_i32(vec2<i32>(13221i, 2354i), vec2<i32>(u_input.a, u_input.b))), _wgslsmith_add_i32(-1i, u_input.a)), u_input.b, ~(0i & _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(u_input.a, 2147483647i, 2147483647i)), _wgslsmith_sub_vec3_i32(vec3<i32>(25727i, u_input.a, 0i), vec3<i32>(u_input.b, 0i, u_input.b)))));
    global1 = vec2<u32>(global1.x, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(global1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(495f, 2066f), -942f, -468f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1235f, -852f, 784f) + vec3<f32>(-480f, -1168f, 500f)), vec3<f32>(1f, 1f, 1f)), vec3<bool>(true, any(vec2<bool>(false, false)), true)))), select(~_wgslsmith_sub_vec2_i32(~var_1.wx, reverseBits(vec2<i32>(22338i, u_input.a))), -abs(vec2<i32>(-18318i, u_input.b)), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true))), u_input.b, _wgslsmith_mod_vec4_i32(vec4<i32>(-55849i, var_1.x, -1i, _wgslsmith_div_i32(-1i, -14710i)) | ~(-vec4<i32>(-1i, var_1.x, -1i, var_1.x)), vec4<i32>(firstTrailingBit(1i), ~firstTrailingBit(62628i), var_1.x, abs(-var_1.x))));
}

