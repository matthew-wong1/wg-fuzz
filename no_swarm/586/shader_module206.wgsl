struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: vec3<i32>,
    d: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: vec4<f32>,
    b: bool,
    c: vec2<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: vec4<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(vec4<f32>(-511f, 1259f, 537f, 520f), i32(-2147483648), vec3<i32>(i32(-2147483648), i32(-2147483648), 1i), -1048f), Struct_2(vec4<f32>(-1020f, 1000f, -264f, -1484f), 2147483647i, vec3<i32>(i32(-2147483648), 1i, -1i), 184f), Struct_2(vec4<f32>(-399f, 1421f, 1181f, 280f), 34079i, vec3<i32>(2147483647i, 0i, -2547i), -987f), Struct_2(vec4<f32>(1646f, -1287f, -580f, 1727f), -699i, vec3<i32>(0i, 26562i, -16199i), 296f), Struct_2(vec4<f32>(-1544f, 671f, 1458f, -1378f), 1i, vec3<i32>(416i, -1i, 36826i), -128f), Struct_2(vec4<f32>(-2053f, 1000f, -157f, -855f), 0i, vec3<i32>(2147483647i, i32(-2147483648), 17001i), -1065f), Struct_2(vec4<f32>(1155f, -298f, -1060f, 1408f), -1i, vec3<i32>(1i, -1i, 28721i), -1656f), Struct_2(vec4<f32>(-393f, 605f, -841f, 1770f), i32(-2147483648), vec3<i32>(-1357i, 34904i, -35974i), 790f), Struct_2(vec4<f32>(1987f, 1000f, -1128f, -922f), -91083i, vec3<i32>(-3877i, 2147483647i, 30910i), 1000f), Struct_2(vec4<f32>(421f, 459f, -1284f, 873f), -19216i, vec3<i32>(i32(-2147483648), -7888i, 44490i), -834f), Struct_2(vec4<f32>(-776f, -1662f, -1075f, -395f), 0i, vec3<i32>(i32(-2147483648), 41430i, -45754i), -834f), Struct_2(vec4<f32>(-384f, -1858f, -874f, -441f), 0i, vec3<i32>(2147483647i, 7715i, 0i), -1448f), Struct_2(vec4<f32>(1878f, -1099f, -1055f, -1374f), -1i, vec3<i32>(28453i, 1i, 0i), -833f), Struct_2(vec4<f32>(2592f, -454f, -1409f, -523f), -44668i, vec3<i32>(1i, 0i, -8334i), 679f), Struct_2(vec4<f32>(1000f, 1147f, -988f, 1382f), 2147483647i, vec3<i32>(0i, 2147483647i, -35329i), 709f), Struct_2(vec4<f32>(227f, -617f, -549f, -137f), i32(-2147483648), vec3<i32>(-1i, 1i, -1i), -519f), Struct_2(vec4<f32>(-166f, -366f, -1000f, 1003f), -19905i, vec3<i32>(11497i, -10676i, -20958i), 1686f), Struct_2(vec4<f32>(-541f, 325f, 1833f, -259f), i32(-2147483648), vec3<i32>(0i, -1i, 0i), -613f), Struct_2(vec4<f32>(-561f, 756f, -159f, 1834f), 15603i, vec3<i32>(-11520i, -1i, -9570i), -316f), Struct_2(vec4<f32>(1392f, 104f, -423f, -973f), -1i, vec3<i32>(-35479i, 0i, 41996i), -1000f), Struct_2(vec4<f32>(215f, -1926f, 169f, -869f), 2147483647i, vec3<i32>(i32(-2147483648), -66574i, -1i), 584f), Struct_2(vec4<f32>(-175f, -1000f, 1820f, -454f), 21020i, vec3<i32>(-34016i, 2147483647i, -10841i), 841f), Struct_2(vec4<f32>(1044f, 867f, 1149f, 1000f), -1059i, vec3<i32>(2147483647i, i32(-2147483648), 0i), -1626f), Struct_2(vec4<f32>(-533f, -128f, -1465f, 144f), 2147483647i, vec3<i32>(-1i, -1i, -23816i), -747f), Struct_2(vec4<f32>(-2112f, 1957f, -723f, 601f), 2147483647i, vec3<i32>(69071i, 37813i, 77497i), 1020f), Struct_2(vec4<f32>(-1355f, 374f, -302f, -512f), -1i, vec3<i32>(0i, 11663i, 31973i), -291f), Struct_2(vec4<f32>(153f, 1068f, -408f, -589f), -1i, vec3<i32>(9728i, 2147483647i, 1i), -995f), Struct_2(vec4<f32>(-305f, -2960f, 2454f, -1127f), -15425i, vec3<i32>(614i, -12479i, 13568i), -1527f), Struct_2(vec4<f32>(1231f, -485f, -1187f, 118f), 1i, vec3<i32>(-19733i, 1i, 2147483647i), 464f), Struct_2(vec4<f32>(637f, 358f, -1102f, 215f), -44820i, vec3<i32>(-62626i, i32(-2147483648), 2147483647i), -1000f), Struct_2(vec4<f32>(-1252f, -1499f, -1341f, -1435f), 13064i, vec3<i32>(i32(-2147483648), 24934i, 1i), 1000f), Struct_2(vec4<f32>(307f, -1000f, -1115f, -1545f), 2586i, vec3<i32>(33748i, -9233i, 2147483647i), 875f));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec2<i32>, arg_1: f32) -> i32 {
    return -(~(arg_0.x & _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(arg_0, arg_0), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(49398i, u_input.a)))));
}

fn func_3(arg_0: Struct_5, arg_1: bool, arg_2: bool) -> vec4<f32> {
    var var_0 = true;
    global0 = array<Struct_2, 32>();
    return arg_0.d.a;
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: bool) -> f32 {
    global0 = array<Struct_2, 32>();
    global0 = array<Struct_2, 32>();
    var var_0 = u_input.b.x;
    var var_1 = ~1u;
    let var_2 = Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_5(true, -1211f, u_input.b, global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), false, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-236f, -1102f, _wgslsmith_f_op_f32(f32(-1f) * -991f), _wgslsmith_f_op_f32(189f - 475f)))), arg_2, -(vec2<i32>(-1i) * -vec2<i32>(arg_1.x, u_input.c)) & ~arg_1.ww, Struct_1(~(-_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, arg_0, u_input.a), vec4<i32>(arg_1.x, u_input.c, arg_1.x, -33552i))), ~select(_wgslsmith_add_vec4_i32(arg_1, vec4<i32>(8653i, arg_0, u_input.c, arg_1.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, 11122i, 36702i, u_input.a), vec4<i32>(u_input.a, arg_0, 4939i, arg_0), arg_1), any(vec4<bool>(arg_2, false, arg_2, arg_2))), firstLeadingBit(-arg_1), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-341f, -848f))))), vec4<i32>(countOneBits(~86389i), -1i, arg_1.x, ~u_input.c)), Struct_1(func_1(vec2<i32>(22471i, arg_0), -163f), _wgslsmith_clamp_vec4_i32(vec4<i32>(firstLeadingBit(u_input.a), -1i, _wgslsmith_mod_i32(arg_1.x, arg_0), arg_0 << (8365u % 32u)), arg_1 << ((vec4<u32>(u_input.b.x, 66385u, 1u, 54426u) | u_input.b) % vec4<u32>(32u)), arg_1), select(arg_1, arg_1, vec4<bool>(any(vec3<bool>(true, arg_2, true)), arg_2, true, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(788f, 625f))), firstTrailingBit(arg_1) >> (~(~vec4<u32>(0u, u_input.b.x, 0u, u_input.d)) % vec4<u32>(32u))));
    return var_2.e.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-139f, _wgslsmith_f_op_f32(f32(-1f) * -323f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(255f, -345f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(200f, -1007f), vec2<f32>(-595f, 1207f))), select(true, true, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-402f, -860f)))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1000f) + vec2<f32>(-674f, 1029f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-968f, 199f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-184f, -1942f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(509f, 1572f), vec2<f32>(730f, 2516f), vec2<bool>(false, false))))))), select(select(vec2<bool>(select(true, true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true), vec2<bool>(true && any(vec4<bool>(false, true, true, true)), select(true, false, false) | any(vec3<bool>(true, true, false))), (_wgslsmith_mult_i32(-4769i, u_input.a) << (1u % 32u)) > u_input.e)));
    var var_1 = !(!(_wgslsmith_mult_u32(u_input.d & 4294967295u, ~4294967295u) != ~(~u_input.d)));
    global0 = array<Struct_2, 32>();
    var_1 = true;
    var var_2 = ~firstTrailingBit((vec4<i32>(u_input.e, -8767i, u_input.c, u_input.c) | vec4<i32>(u_input.e, -1i, u_input.a, u_input.c)) >> (firstTrailingBit(vec4<u32>(100497u, u_input.b.x, 83421u, u_input.b.x)) % vec4<u32>(32u)));
    let var_3 = select(!vec2<bool>(true, 1u == ~u_input.d), select(vec2<bool>(true, (4294967295u == u_input.d) && true), vec2<bool>(true, true), !(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)))), true);
    var_1 = true;
    global0 = array<Struct_2, 32>();
    let var_4 = -func_1(var_2.wy, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2137f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.e, vec4<i32>(u_input.a, 2147483647i, 24946i, 0i), var_3.x))), var_0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) + _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(step(773f, var_0.x))))));
}

