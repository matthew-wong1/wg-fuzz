struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: u32,
    d: vec2<f32>,
    e: i32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
    c: Struct_2,
    d: vec4<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 21> = array<vec4<f32>, 21>(vec4<f32>(422f, -401f, -459f, -1556f), vec4<f32>(-523f, -671f, -1436f, -1000f), vec4<f32>(-827f, -162f, 401f, -667f), vec4<f32>(-509f, -393f, 361f, 1000f), vec4<f32>(780f, 1087f, 843f, -339f), vec4<f32>(-1706f, -504f, 992f, 1180f), vec4<f32>(548f, -560f, -1000f, -1648f), vec4<f32>(1123f, -1000f, 1584f, -279f), vec4<f32>(956f, 201f, 482f, 1168f), vec4<f32>(2168f, -824f, -935f, -1000f), vec4<f32>(295f, -698f, 713f, 2520f), vec4<f32>(-1000f, 507f, -1406f, 186f), vec4<f32>(238f, -1044f, -504f, 793f), vec4<f32>(-120f, -200f, -2234f, 1856f), vec4<f32>(-1476f, -132f, -134f, 1516f), vec4<f32>(-1166f, 1033f, -2161f, -721f), vec4<f32>(-438f, -1911f, 1986f, 192f), vec4<f32>(-849f, -184f, -1000f, 148f), vec4<f32>(601f, -2244f, 1102f, -1016f), vec4<f32>(-583f, 857f, -1000f, 1009f), vec4<f32>(-494f, -151f, 2098f, -1296f));

var<private> global1: array<Struct_4, 13> = array<Struct_4, 13>(Struct_4(vec2<u32>(1u, 0u), -147f, Struct_2(vec2<i32>(2147483647i, -31944i), 197f, vec4<bool>(true, false, true, false)), vec4<f32>(-2778f, 1320f, 1350f, 1750f), vec4<f32>(1275f, -1229f, 2116f, -514f)), Struct_4(vec2<u32>(34980u, 36330u), 339f, Struct_2(vec2<i32>(3948i, i32(-2147483648)), 343f, vec4<bool>(false, false, false, false)), vec4<f32>(-179f, -793f, -1191f, -2056f), vec4<f32>(-217f, -657f, -1051f, -1486f)), Struct_4(vec2<u32>(0u, 4294967295u), -388f, Struct_2(vec2<i32>(-17678i, 554i), -349f, vec4<bool>(true, false, true, true)), vec4<f32>(1090f, 1500f, -684f, -1649f), vec4<f32>(-1555f, -296f, 706f, 1258f)), Struct_4(vec2<u32>(1u, 0u), -734f, Struct_2(vec2<i32>(-8445i, 20941i), -472f, vec4<bool>(false, true, false, false)), vec4<f32>(821f, -169f, 183f, 1177f), vec4<f32>(884f, -1174f, 830f, 662f)), Struct_4(vec2<u32>(4273u, 1u), 632f, Struct_2(vec2<i32>(4602i, -42373i), -235f, vec4<bool>(false, true, false, false)), vec4<f32>(1451f, 1088f, -1286f, 608f), vec4<f32>(-276f, -899f, -1000f, -1413f)), Struct_4(vec2<u32>(1u, 16452u), 513f, Struct_2(vec2<i32>(0i, 1i), -910f, vec4<bool>(true, true, false, false)), vec4<f32>(762f, 147f, -300f, -891f), vec4<f32>(2115f, -477f, 1197f, 1084f)), Struct_4(vec2<u32>(4294967295u, 50517u), 167f, Struct_2(vec2<i32>(2147483647i, -1i), -419f, vec4<bool>(true, true, true, false)), vec4<f32>(425f, 1624f, 1209f, 530f), vec4<f32>(882f, 546f, 285f, -517f)), Struct_4(vec2<u32>(50714u, 48273u), 275f, Struct_2(vec2<i32>(2839i, -72922i), 1724f, vec4<bool>(false, false, false, false)), vec4<f32>(-817f, -903f, -2079f, 1000f), vec4<f32>(643f, -1864f, -429f, -1000f)), Struct_4(vec2<u32>(12600u, 37895u), 854f, Struct_2(vec2<i32>(1i, 2147483647i), 1706f, vec4<bool>(true, true, false, true)), vec4<f32>(-1147f, -1877f, 977f, 1277f), vec4<f32>(1502f, 1000f, -1181f, 412f)), Struct_4(vec2<u32>(16569u, 75748u), 639f, Struct_2(vec2<i32>(1i, 2147483647i), -1049f, vec4<bool>(true, true, true, true)), vec4<f32>(-511f, -1607f, -636f, -947f), vec4<f32>(333f, 611f, 957f, -876f)), Struct_4(vec2<u32>(44472u, 0u), -1073f, Struct_2(vec2<i32>(48884i, -48139i), -837f, vec4<bool>(false, false, true, false)), vec4<f32>(1231f, 543f, -442f, -2244f), vec4<f32>(2351f, -566f, -523f, -645f)), Struct_4(vec2<u32>(1u, 85657u), 1136f, Struct_2(vec2<i32>(1i, 1i), -238f, vec4<bool>(false, true, true, false)), vec4<f32>(1077f, 622f, -993f, -1299f), vec4<f32>(-1798f, -1000f, -1146f, 337f)), Struct_4(vec2<u32>(18393u, 15825u), -474f, Struct_2(vec2<i32>(-1i, 0i), -1000f, vec4<bool>(true, true, true, false)), vec4<f32>(181f, -863f, -109f, -133f), vec4<f32>(-306f, 1710f, 495f, 1032f)));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1() -> bool {
    global0 = array<vec4<f32>, 21>();
    global1 = array<Struct_4, 13>();
    return true;
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: Struct_4) -> vec2<i32> {
    let var_0 = any(arg_2.c.wxy);
    global0 = array<vec4<f32>, 21>();
    global0 = array<vec4<f32>, 21>();
    let var_1 = Struct_1(false, vec3<f32>(359f, arg_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b)))), arg_3.a);
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~arg_3.a.x, 15848u), 13u)];
    return vec2<i32>(firstTrailingBit(~2147483647i >> (reverseBits(var_1.c.x) % 32u)) << (_wgslsmith_mult_u32(~(arg_3.a.x << (arg_3.a.x % 32u)), 4294967295u) % 32u), _wgslsmith_mult_i32(select(u_input.a.x, ~u_input.b, var_0), -arg_3.c.a.x) << (~_wgslsmith_mult_u32(_wgslsmith_sub_u32(41365u, u_input.c), var_1.c.x ^ var_1.c.x) % 32u));
}

fn func_2(arg_0: vec3<bool>) -> Struct_3 {
    let var_0 = Struct_2(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, _wgslsmith_clamp_i32(0i, u_input.b, -18417i)), u_input.a.yy), func_3(_wgslsmith_clamp_i32(-35903i, ~0i, abs(-2147483647i)), u_input.a, Struct_2(-vec2<i32>(50611i, u_input.a.x), _wgslsmith_f_op_f32(max(-166f, -124f)), vec4<bool>(arg_0.x, false, arg_0.x, false)), Struct_4(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(4294967295u, 1u)), _wgslsmith_f_op_f32(f32(-1f) * -162f), Struct_2(vec2<i32>(u_input.a.x, -43210i), 1227f, vec4<bool>(true, arg_0.x, arg_0.x, true)), vec4<f32>(-187f, 401f, 731f, -100f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-3037f, -271f, -362f, -167f)))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), !vec4<bool>(all(!vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x)), false, arg_0.x, false));
    let var_1 = Struct_3(vec4<u32>(select(min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(14682u, u_input.c, 4294967295u, u_input.c)), ~u_input.c), 1u, true), 1u, max(1u, u_input.c) << (countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.c, 0u), vec3<u32>(u_input.c, u_input.c, 1u))) % 32u), ~(~1u | u_input.c)), false, 1u << ((u_input.c & max(u_input.c, 0u)) % 32u), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.b)), _wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1220f, var_0.b) + vec2<f32>(var_0.b, -1370f))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, 1f), vec2<f32>(-682f, -408f))))))), -u_input.a.x);
    global0 = array<vec4<f32>, 21>();
    global0 = array<vec4<f32>, 21>();
    let var_2 = false;
    return var_1;
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: Struct_3, arg_3: u32) -> bool {
    let var_0 = ~firstTrailingBit(-27469i);
    global0 = array<vec4<f32>, 21>();
    global1 = array<Struct_4, 13>();
    let var_1 = global1[_wgslsmith_index_u32((u_input.c ^ 4294967295u) | arg_1.a.x, 13u)];
    global0 = array<vec4<f32>, 21>();
    return func_2(vec3<bool>(true, !arg_2.b, arg_1.c.c.x)).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(~34109u, ~firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, 54306u)))) & ~(~u_input.c);
    let var_1 = true;
    global1 = array<Struct_4, 13>();
    global1 = array<Struct_4, 13>();
    var var_2 = vec3<bool>(all(vec2<bool>(!var_1, u_input.c > u_input.c)), func_4(u_input.a.x, Struct_4(~vec2<u32>(u_input.c, u_input.c) >> (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-788f - 810f))), Struct_2(vec2<i32>(u_input.a.x, u_input.b), _wgslsmith_f_op_f32(f32(-1f) * -1390f), select(vec4<bool>(false, var_1, true, true), vec4<bool>(false, var_1, true, var_1), vec4<bool>(false, var_1, var_1, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(403f, -1356f, -1317f, 1195f))), vec4<f32>(_wgslsmith_div_f32(-810f, -1000f), _wgslsmith_f_op_f32(f32(-1f) * -2323f), 584f, _wgslsmith_f_op_f32(-968f + -1000f))), func_2(vec3<bool>(all(vec2<bool>(var_1, var_1)), u_input.a.x > 0i, func_1())), u_input.c), var_1);
    global0 = array<vec4<f32>, 21>();
    var var_3 = _wgslsmith_f_op_f32(-787f * _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -239f) + _wgslsmith_f_op_f32(-1000f - 745f)), true)));
    var var_4 = vec4<u32>(~abs(1u), reverseBits(reverseBits(~(~400u))), 4294967295u, ~u_input.c);
    let var_5 = 940f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(vec3<u32>(reverseBits(var_4.x) & firstLeadingBit(1u), 14881u >> (reverseBits(u_input.c) % 32u), var_4.x), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_div_u32(u_input.c, 1u), _wgslsmith_add_u32(1u, 66860u), _wgslsmith_sub_u32(4294967295u, 13548u)), ~abs(vec3<u32>(u_input.c, 30170u, u_input.c)))), var_4.yx ^ var_4.yw, var_4.x);
}

