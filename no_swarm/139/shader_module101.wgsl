struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(vec3<f32>(-675f, 1449f, 179f)), Struct_2(vec3<f32>(-1980f, 1062f, -1000f)), Struct_2(vec3<f32>(-331f, 120f, -260f)), Struct_2(vec3<f32>(-510f, 443f, -1108f)), Struct_2(vec3<f32>(1417f, 3042f, 586f)), Struct_2(vec3<f32>(-323f, 2272f, -1159f)), Struct_2(vec3<f32>(351f, -1101f, 126f)), Struct_2(vec3<f32>(549f, 369f, -441f)), Struct_2(vec3<f32>(1657f, 2244f, 1702f)), Struct_2(vec3<f32>(1057f, 1129f, -1536f)), Struct_2(vec3<f32>(-1191f, -1224f, 1018f)), Struct_2(vec3<f32>(-246f, -977f, 359f)), Struct_2(vec3<f32>(776f, -1807f, -520f)), Struct_2(vec3<f32>(-519f, 222f, -2626f)), Struct_2(vec3<f32>(-193f, 445f, 501f)), Struct_2(vec3<f32>(710f, -500f, -1000f)), Struct_2(vec3<f32>(-685f, -131f, -1453f)), Struct_2(vec3<f32>(368f, 787f, 232f)), Struct_2(vec3<f32>(-185f, -587f, -807f)), Struct_2(vec3<f32>(-1082f, -1884f, -393f)), Struct_2(vec3<f32>(-712f, -1864f, 681f)), Struct_2(vec3<f32>(-1547f, -1581f, 755f)), Struct_2(vec3<f32>(1151f, 373f, -275f)), Struct_2(vec3<f32>(1193f, 626f, 1201f)), Struct_2(vec3<f32>(-1000f, -384f, 300f)), Struct_2(vec3<f32>(-466f, 1000f, -432f)), Struct_2(vec3<f32>(-1033f, -549f, 647f)), Struct_2(vec3<f32>(200f, 448f, 114f)), Struct_2(vec3<f32>(324f, -441f, -371f)), Struct_2(vec3<f32>(-140f, 891f, 690f)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<f32> {
    global0 = array<Struct_2, 30>();
    global0 = array<Struct_2, 30>();
    let var_0 = Struct_4(!(!vec4<bool>(false, true, true, all(vec4<bool>(true, false, true, false)))), Struct_3(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-534f, 307f, -1408f), vec3<f32>(-840f, -1048f, 1403f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-639f, -374f, 1835f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(783f, -156f, 617f), vec3<f32>(-984f, -1284f, -583f), false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1903f, -1610f, 223f) - vec3<f32>(1000f, -825f, 478f)))))), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2097f, -1012f, 1827f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1396f, -1730f, 259f) + vec3<f32>(-518f, 638f, 1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-226f, -1000f))))));
    global0 = array<Struct_2, 30>();
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.c.x), 1148f)));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1388f)), -1703f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.b.c.x, _wgslsmith_f_op_f32(min(-1749f, var_0.b.c.x)))))) * var_0.b.a);
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> Struct_2 {
    global0 = array<Struct_2, 30>();
    var var_0 = ~firstLeadingBit(_wgslsmith_div_i32(u_input.a << ((4294967295u << (u_input.b % 32u)) % 32u), -1i));
    var var_1 = Struct_4(vec4<bool>(arg_1, true | arg_1, true, !arg_1), Struct_3(_wgslsmith_f_op_vec3_f32(trunc(arg_0.a)), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, -329f, -224f) + arg_0.a) * _wgslsmith_f_op_vec3_f32(-arg_0.a))), arg_0.a.xy));
    var var_2 = _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), ~firstTrailingBit(abs(vec2<i32>(u_input.a, u_input.a)) >> (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 69455u)) % vec2<u32>(32u))));
    var var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(-1455f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-342f))), var_1.b.b.a.x), _wgslsmith_f_op_vec3_f32(func_3()));
    return Struct_2(arg_0.a);
}

fn func_1() -> u32 {
    let var_0 = func_2(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(max(-795f, 1407f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1923f, 1402f) - -1360f), -1332f)), true);
    let var_1 = -vec2<i32>(30172i, u_input.a);
    let var_2 = Struct_1(abs(firstTrailingBit(max(vec4<i32>(1i, u_input.a, var_1.x, var_1.x) >> (vec4<u32>(u_input.b, 53149u, u_input.b, 1u) % vec4<u32>(32u)), -vec4<i32>(2147483647i, 2147483647i, -10537i, 0i)))), vec2<bool>(!(!(var_1.x < 41065i)), true), ~u_input.b, var_1.x, _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(1i, -39510i, u_input.a)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 0u), vec3<u32>(1u, 45201u, 0u), vec3<u32>(u_input.b, u_input.b, 4294967295u)) % vec3<u32>(32u)), vec3<i32>(select(6915i, -1i, false), var_1.x, u_input.a)), _wgslsmith_add_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(-19167i, var_1.x, var_1.x), vec3<i32>(var_1.x, u_input.a, 7111i)), ~(-vec3<i32>(var_1.x, -1i, 2147483647i)))));
    let var_3 = ~_wgslsmith_sub_u32(_wgslsmith_add_u32(~1u, u_input.b), 9776u);
    let var_4 = Struct_4(!vec4<bool>(false, var_2.b.x & true, var_2.b.x || var_2.b.x, var_2.b.x), Struct_3(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_3()))), func_2(func_2(var_0, !var_2.b.x), any(vec4<bool>(var_2.b.x, false, true, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(739f, var_0.a.x)) + _wgslsmith_f_op_vec2_f32(-var_0.a.yz))));
    return 10942u ^ _wgslsmith_sub_u32(reverseBits(var_3), (17964u << (var_3 % 32u)) << (var_2.c % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 30>();
    global0 = array<Struct_2, 30>();
    let var_0 = vec4<u32>(~68907u, 4294967295u, func_1(), u_input.b);
    var var_1 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(~(~reverseBits(-vec3<i32>(23625i, -1i, u_input.a))), vec3<u32>(4294967295u & (78352u << (var_0.x % 32u)), func_1(), 0u));
}

