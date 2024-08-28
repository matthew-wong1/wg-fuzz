struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec2<f32> {
    var var_0 = true;
    var var_1 = false;
    var_0 = all(select(vec4<bool>(true, true, true, !any(vec4<bool>(false, false, true, false))), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, false, true)), false));
    var var_2 = !(622f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1189f, _wgslsmith_f_op_f32(ceil(-2518f))))));
    var_2 = !(-firstLeadingBit(u_input.a.x) < _wgslsmith_div_i32(1i, u_input.a.x));
    return vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1005f) - _wgslsmith_f_op_f32(f32(-1f) * -194f)), _wgslsmith_f_op_f32(-592f + _wgslsmith_f_op_f32(trunc(-750f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(800f + -1089f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1241f + 708f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-271f, _wgslsmith_f_op_f32(min(286f, 1171f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-512f))), true)));
}

fn func_2(arg_0: i32) -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-483f, 902f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, -101f), vec2<f32>(812f, -1648f))) - _wgslsmith_f_op_vec2_f32(func_3()))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -969f), _wgslsmith_div_f32(505f, -2026f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(362f, 156f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(831f, 1293f)))), any(select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(false, false), true)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-708f, var_0.a.x, var_0.a.x))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.a.x, var_0.a.x, -1448f))))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, 706f, var_0.a.x) * vec3<f32>(-1000f, 1000f, -236f)))))) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(393f)), _wgslsmith_f_op_f32(abs(var_0.a.x)), var_0.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-392f, var_0.a.x, 1000f)))))));
    return vec2<bool>(true, select(_wgslsmith_clamp_u32(1u, 5891u, 31169u) < _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 21086u), vec2<u32>(1u, 5011u)), var_1.x == _wgslsmith_f_op_f32(-var_1.x), !any(vec4<bool>(true, false, false, false))) && any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-214f, 520f) * arg_2.a), arg_2.a, arg_0.a.x)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-288f, var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(var_0.a.x - arg_2.a.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(296f, 1696f, 229f, arg_1.a.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1397f, arg_2.a.x, -1471f, arg_1.a.x)))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1832f, arg_1.a.x, var_0.a.x, -279f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a.x))), 1067f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x + 102f) * _wgslsmith_f_op_f32(var_0.a.x + arg_1.a.x)), 641f))));
    let var_2 = _wgslsmith_f_op_f32(ceil(1126f));
    var var_3 = ~vec3<u32>(1u, 1u, 1u);
    var_3 = vec3<u32>(abs(var_3.x), ~(~0u), ~(~(~67754u)));
    return Struct_3(select(vec3<u32>(var_3.x, 1u, var_3.x), select(min(max(vec3<u32>(42229u, 1u, var_3.x), vec3<u32>(49221u, 0u, 1u)), _wgslsmith_mod_vec3_u32(vec3<u32>(77664u, 10878u, 0u), vec3<u32>(var_3.x, 4294967295u, 39461u))), _wgslsmith_add_vec3_u32(~vec3<u32>(var_3.x, var_3.x, 72997u), firstTrailingBit(vec3<u32>(var_3.x, var_3.x, var_3.x))), true), !all(vec4<bool>(true, false, true, arg_0.a.x))), arg_0);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: f32) -> Struct_2 {
    let var_0 = ~u_input.a.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, 503f, arg_3)) - vec3<f32>(-742f, -617f, arg_3)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_3, arg_3, arg_3), vec3<f32>(arg_3, arg_3, 1000f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_3, 939f, 938f), vec3<f32>(arg_3, arg_3, arg_3))), vec3<f32>(arg_3, -1026f, arg_3), true))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, _wgslsmith_f_op_f32(floor(arg_3)), arg_3))));
    let var_2 = _wgslsmith_f_op_f32(max(var_1.x, -1000f));
    var var_3 = arg_1.b;
    var var_4 = Struct_1(var_1.xz);
    return Struct_2(vec2<bool>(true, true));
}

fn func_1() -> Struct_3 {
    let var_0 = func_5(func_4(Struct_2(select(func_2(u_input.a.x), vec2<bool>(true, false), func_2(-52187i))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(834f, 384f)))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-324f, 1717f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1207f, 393f) + vec2<f32>(177f, 127f))))), func_4(func_4(func_4(Struct_2(vec2<bool>(false, false)), Struct_1(vec2<f32>(517f, -244f)), Struct_1(vec2<f32>(-843f, 1456f))).b, Struct_1(vec2<f32>(1276f, 1494f)), Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1832f, 1466f), vec2<f32>(1716f, 943f))))).b, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, 859f))))), Struct_1(vec2<f32>(780f, -463f))), ~vec2<u32>(~_wgslsmith_mod_u32(7009u, 41480u), 1u), 229f);
    var var_1 = func_4(var_0, Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-554f, 878f), vec2<f32>(-809f, 110f)), vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1820f, -681f))), vec2<f32>(2144f, -1000f))), vec2<bool>(any(vec4<bool>(var_0.a.x, true, false, false)), var_0.a.x)))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1043f, 394f)))));
    var_1 = func_4(var_0, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, 586f))), _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -1153f), vec2<f32>(-655f, -167f)), !vec2<bool>(var_1.b.a.x, var_1.b.a.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-671f, 1085f)))))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec2_f32(func_3()).x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1055f * 600f) - -559f))));
    let var_2 = Struct_2(vec2<bool>(true, any(vec4<bool>(var_0.a.x, var_1.b.a.x, any(var_1.b.a), true))));
    var_1 = func_4(func_5(Struct_3(_wgslsmith_div_vec3_u32(var_1.a, vec3<u32>(1u, var_1.a.x, var_1.a.x)) & vec3<u32>(var_1.a.x, 23694u, var_1.a.x), var_1.b), func_4(var_1.b, Struct_1(vec2<f32>(-436f, -343f)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(501f, -280f)))), ~vec2<u32>(~0u, ~var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(819f * -1080f)))), Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(399f, 691f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 892f) - vec2<f32>(1190f, -802f)))))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1833f, -211f))));
    return Struct_3(firstLeadingBit(var_1.a), var_1.b);
}

fn func_6(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec3<i32>) -> f32 {
    let var_0 = arg_0.a & abs(vec3<u32>(~arg_1.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.x, 372u, 4294967295u, 4294967295u), vec4<u32>(arg_0.a.x, 0u, arg_0.a.x, 19448u)) % 32u), 61064u, arg_0.a.x));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1173f))))));
    var var_2 = ~(~(min(_wgslsmith_mult_i32(-1i, u_input.a.x), 36545i) << (~_wgslsmith_add_u32(586u, 54134u) % 32u)));
    let var_3 = arg_0.b;
    var_2 = arg_2.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3()).x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(-1492f, -1431f);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(func_1(), vec2<u32>(reverseBits(1u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(7539u, 0u, 4294967295u), vec3<u32>(0u, 1u, 0u))), vec3<i32>(u_input.a.x, u_input.a.x, min(_wgslsmith_div_i32(-16030i, u_input.a.x), 1i)))) + _wgslsmith_f_op_f32(func_6(Struct_3(~_wgslsmith_clamp_vec3_u32(vec3<u32>(41778u, 0u, 60601u), vec3<u32>(35033u, 69195u, 1u), vec3<u32>(89742u, 4294967295u, 157335u)), func_5(func_4(Struct_2(vec2<bool>(true, true)), Struct_1(vec2<f32>(-356f, -884f)), Struct_1(vec2<f32>(924f, -1000f))), func_1(), countOneBits(vec2<u32>(1u, 38068u)), _wgslsmith_f_op_f32(f32(-1f) * -298f))), ~_wgslsmith_sub_vec2_u32(~vec2<u32>(33157u, 4294967295u), _wgslsmith_mod_vec2_u32(vec2<u32>(58389u, 4294967295u), vec2<u32>(4294967295u, 4294967295u))), _wgslsmith_mod_vec3_i32(vec3<i32>(~u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(21082i, -20756i, u_input.a.x, u_input.a.x), vec4<i32>(-4285i, u_input.a.x, -2147483647i, -75497i)), _wgslsmith_clamp_i32(u_input.a.x, -1i, u_input.a.x)), vec3<i32>(~u_input.a.x, 11413i ^ u_input.a.x, u_input.a.x)))));
    var var_1 = u_input.a.x;
    let var_2 = false;
    var var_3 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, vec4<u32>(~(~(~41663u)), ~func_4(Struct_2(vec2<bool>(var_2, var_2)), Struct_1(vec2<f32>(908f, 2033f)), Struct_1(vec2<f32>(-725f, -223f))).a.x, _wgslsmith_mod_u32(_wgslsmith_div_u32(1u, ~57197u), 4294967295u), 1u));
}

