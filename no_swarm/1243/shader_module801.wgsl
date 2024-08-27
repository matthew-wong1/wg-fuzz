struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(-36911i, vec3<f32>(150f, 275f, -1154f), 1u), Struct_1(1i, vec3<f32>(618f, -174f, -237f), 1u), Struct_1(-16928i, vec3<f32>(702f, -679f, -1000f), 4294967295u), Struct_1(-40035i, vec3<f32>(-1222f, -529f, -188f), 1u), Struct_1(38655i, vec3<f32>(1825f, -1604f, -750f), 11556u), Struct_1(-22179i, vec3<f32>(-1000f, 1039f, -1731f), 13321u), Struct_1(-56406i, vec3<f32>(-1152f, 461f, 550f), 59780u), Struct_1(0i, vec3<f32>(780f, 1331f, -1000f), 14581u), Struct_1(-76976i, vec3<f32>(-1799f, -282f, 648f), 99985u), Struct_1(1i, vec3<f32>(-1480f, -202f, -1000f), 1u), Struct_1(-48247i, vec3<f32>(-108f, 1963f, -254f), 0u), Struct_1(-58659i, vec3<f32>(-955f, 1086f, -1843f), 50859u), Struct_1(i32(-2147483648), vec3<f32>(882f, -767f, 1000f), 1u), Struct_1(-12053i, vec3<f32>(348f, 715f, -1812f), 1435u), Struct_1(1i, vec3<f32>(1000f, -495f, 2098f), 1u), Struct_1(32227i, vec3<f32>(-244f, 1998f, -436f), 6033u), Struct_1(i32(-2147483648), vec3<f32>(208f, 1437f, -400f), 68845u), Struct_1(-5181i, vec3<f32>(-322f, -612f, 663f), 1u), Struct_1(-33106i, vec3<f32>(1079f, 1000f, -403f), 82618u), Struct_1(i32(-2147483648), vec3<f32>(-508f, -1428f, 1026f), 0u), Struct_1(i32(-2147483648), vec3<f32>(1000f, -1000f, -1185f), 64550u), Struct_1(8399i, vec3<f32>(1995f, 612f, -1305f), 0u), Struct_1(-7533i, vec3<f32>(-1463f, 475f, -1045f), 11820u));

var<private> global1: vec4<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_2, arg_3: vec2<f32>) -> vec4<bool> {
    global1 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_3.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(692f, arg_0), _wgslsmith_f_op_f32(round(arg_3.x)))))))), _wgslsmith_f_op_f32(global1.x * arg_1), arg_0, _wgslsmith_f_op_f32(-arg_0));
    global1 = vec4<f32>(arg_1, global1.x, -588f, -1819f);
    global1 = vec4<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-248f + -1000f), !arg_2.a.x & true)) + arg_0), -101f, 1295f);
    let var_0 = ~(~(~(-17072i)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1252f, 1045f)), arg_1), arg_0))));
    return !vec4<bool>(true, arg_2.a.x, any(vec2<bool>(true, all(arg_2.a))), all(!vec3<bool>(arg_2.a.x, false, true)) & true);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: f32) -> vec4<f32> {
    let var_0 = arg_0;
    var var_1 = arg_0;
    let var_2 = func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.x - -866f))), _wgslsmith_f_op_f32(f32(-1f) * -863f), arg_0, vec2<f32>(-1582f, _wgslsmith_f_op_f32(round(arg_2)))).wzw;
    var var_3 = vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(2147483647i, 2147483647i, -(i32(-1i) * -1i)), ~18325i, reverseBits(~_wgslsmith_mult_i32(-12103i, 0i))), 1i, _wgslsmith_dot_vec2_i32(abs(~(~vec2<i32>(26023i, 0i))), _wgslsmith_clamp_vec2_i32(select(vec2<i32>(1i, 17107i), vec2<i32>(-2147483647i, -46835i), false), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(-1i, 35019i)), vec2<i32>(2147483647i, -1i)) & -firstLeadingBit(vec2<i32>(2147483647i, 2147483647i))));
    var_1 = Struct_2(!(!select(func_2(global1.x, global1.x, Struct_2(vec4<bool>(true, var_2.x, true, arg_0.a.x)), vec2<f32>(arg_1, global1.x)), select(vec4<bool>(true, false, var_2.x, var_2.x), vec4<bool>(arg_0.a.x, var_1.a.x, var_2.x, false), vec4<bool>(false, arg_0.a.x, arg_0.a.x, var_1.a.x)), false)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(403f, 1000f, -130f, arg_2), vec4<f32>(arg_1, arg_1, -623f, -219f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, arg_1, arg_1, -1024f), vec4<f32>(arg_1, arg_2, arg_1, 1317f))))));
}

fn func_1() -> f32 {
    global1 = _wgslsmith_f_op_vec4_f32(func_3(Struct_2(select(vec4<bool>(true, true, true, true), func_2(global1.x, 176f, Struct_2(vec4<bool>(false, false, true, false)), _wgslsmith_f_op_vec2_f32(-global1.xy)), true)), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1501f - -475f)))));
    let var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(~(~max(u_input.a, 21430u)), 63682u, _wgslsmith_clamp_u32(4294967295u, u_input.a, max(max(0u, u_input.a), u_input.a))), vec3<u32>(~u_input.a, ~(~_wgslsmith_mult_u32(29664u, 450u)), ~(~abs(8886u))));
    let var_1 = 82429i;
    return _wgslsmith_f_op_f32(148f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1050f))), global1.x) - _wgslsmith_f_op_f32(global1.x * global1.x)));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_1) -> f32 {
    global0 = array<Struct_1, 23>();
    global1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 1747f, arg_3.b.x, 192f))) * vec4<f32>(874f, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b.x) + arg_0.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_3.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1596f), -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + global1.x), 1053f), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(552f, 364f, 964f, global1.x))))), select(func_2(arg_3.b.x, -804f, Struct_2(vec4<bool>(arg_1.a.x, false, false, false)), _wgslsmith_f_op_vec2_f32(-arg_0)), arg_1.a, arg_1.a.x)))));
    let var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(arg_3.c, max(arg_2, arg_3.c), _wgslsmith_div_u32(max(1u, u_input.a), u_input.a >> (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_2), vec2<u32>(arg_3.c, u_input.a)) % 32u)), arg_3.c), ~vec4<u32>(4294967295u, u_input.a, 24774u ^ ~arg_3.c, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, arg_2, arg_3.c), vec3<u32>(1u, arg_3.c, 4294967295u)), 39121u >> (u_input.a % 32u))));
    var var_1 = vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(~(~arg_3.c), ~(u_input.a & 1u), 0u), _wgslsmith_mult_u32(~arg_2, 81498u) >> (arg_2 % 32u)), select(~5412u, _wgslsmith_div_u32(abs(58649u), select(arg_2, ~0u, any(arg_1.a.yzy))), true || arg_1.a.x), var_0.x & select(var_0.x, select(u_input.a, 2868u, true) >> (~arg_2 % 32u), arg_1.a.x));
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 939f, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(f32(-1f) * -1082f))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(vec4<bool>(arg_1.a.x, arg_1.a.x, false, false)), global1.x, -387f)).x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * 1000f) * _wgslsmith_f_op_f32(exp2(arg_3.b.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-268f, arg_3.b.x)) + -529f), _wgslsmith_f_op_f32(abs(-460f))), arg_3.b.x, arg_3.b.x));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3.b.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, global1.x) + _wgslsmith_div_f32(arg_0.x, arg_0.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(-1198f - global1.x), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(global1.x * -102f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, 292f, 345f) * vec4<f32>(global1.x, global1.x, -1565f, 2550f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(564f, 1000f, global1.x, -1394f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-197f, -1238f, 348f, 1499f), vec4<f32>(1000f, -1159f, 1583f, global1.x)))))));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(func_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), global1.x), Struct_2(vec4<bool>(any(vec3<bool>(false, false, false)), any(vec4<bool>(false, true, true, true)), true, true)), 1061u, Struct_1(-5117i, _wgslsmith_f_op_vec3_f32(select(global1.xxz, _wgslsmith_f_op_vec3_f32(-global1.wzx), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)))), ~1u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.x + -1454f), global1.x))), global1.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1120f) - _wgslsmith_f_op_f32(-global1.x)))), 427f);
    let var_0 = 3047u;
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, _wgslsmith_f_op_f32(max(global1.x, 1050f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(244f - global1.x), 1000f)), global1.x) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -617f), global1.x, _wgslsmith_f_op_f32(global1.x - 634f)), vec4<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(floor(649f)), global1.x)))));
    global0 = array<Struct_1, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(min(vec3<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(17290i, -1i, -2147483647i), vec3<i32>(24358i, 0i, 12168i)), reverseBits(-10913i), -1i), vec3<i32>(-10053i, 0i, 2147483647i) >> (_wgslsmith_mult_vec3_u32(min(vec3<u32>(0u, 16226u, 19309u), vec3<u32>(u_input.a, u_input.a, 0u)), max(vec3<u32>(1u, var_0, u_input.a), vec3<u32>(1u, 0u, u_input.a))) % vec3<u32>(32u))), abs(vec2<i32>(_wgslsmith_div_i32(-2147483647i, _wgslsmith_sub_i32(-1i, 0i)), _wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, 26042i, 30255i, -37670i), -vec4<i32>(-2147483647i, -2147483647i, -1i, 1i)))), min(vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(27922i, 2147483647i), 2147483647i), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-5687i, 24336i)), ~vec2<i32>(-2147483647i, 60634i)), _wgslsmith_mod_i32(2147483647i, firstTrailingBit(56432i))), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 0i, 0i), select(vec3<i32>(-12475i, -1i, 2147483647i), vec3<i32>(15937i, 0i, 26752i), false)) ^ _wgslsmith_mult_vec3_i32(select(vec3<i32>(2147483647i, -1i, 1i), vec3<i32>(0i, 0i, 25959i), false), vec3<i32>(87569i, 34784i, 2147483647i))), _wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(53949i, -12872i), -vec2<i32>(-2147483647i, -1i)), _wgslsmith_sub_i32(21205i << (u_input.a % 32u), 1i)), 1i));
}

