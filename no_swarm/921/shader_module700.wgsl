struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

var<private> global1: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(775i, -1485f, vec4<f32>(236f, -1074f, -1000f, -161f), Struct_1(-1i, true, 99597u, 9695i, false), Struct_1(8168i, true, 48273u, 2147483647i, true)), Struct_2(8393i, -366f, vec4<f32>(100f, 965f, -576f, -550f), Struct_1(0i, true, 35799u, -40771i, false), Struct_1(49634i, true, 1u, -72400i, false)), Struct_2(23603i, 790f, vec4<f32>(211f, -1182f, 278f, 204f), Struct_1(i32(-2147483648), false, 1u, -1i, true), Struct_1(12747i, true, 4294967295u, -9096i, true)), Struct_2(5529i, -730f, vec4<f32>(198f, 324f, 141f, 2122f), Struct_1(45906i, false, 22079u, -1i, true), Struct_1(-54659i, true, 10328u, 1i, true)), Struct_2(1i, 515f, vec4<f32>(867f, 977f, -824f, 1350f), Struct_1(i32(-2147483648), true, 19344u, 0i, false), Struct_1(6808i, true, 0u, -13023i, false)), Struct_2(14453i, -649f, vec4<f32>(-1898f, -460f, -1087f, 782f), Struct_1(2147483647i, false, 4294967295u, -16204i, false), Struct_1(0i, true, 4294967295u, 15167i, true)), Struct_2(1i, -392f, vec4<f32>(1635f, 694f, -1127f, 135f), Struct_1(0i, true, 47573u, -41249i, false), Struct_1(-1i, false, 0u, i32(-2147483648), false)), Struct_2(26258i, 1682f, vec4<f32>(341f, 1000f, 851f, -1474f), Struct_1(-1i, false, 9134u, 1i, false), Struct_1(-25391i, true, 0u, i32(-2147483648), false)), Struct_2(89152i, -413f, vec4<f32>(-1760f, -1108f, 1000f, 275f), Struct_1(0i, true, 0u, 5507i, false), Struct_1(17158i, false, 5492u, -5868i, false)), Struct_2(-11304i, -591f, vec4<f32>(464f, -1146f, -1077f, -1188f), Struct_1(1i, false, 22094u, -25546i, true), Struct_1(2147483647i, false, 29876u, 1i, false)), Struct_2(-1i, 436f, vec4<f32>(-668f, 346f, -104f, -1008f), Struct_1(0i, false, 0u, -1i, false), Struct_1(23263i, false, 12673u, 1i, true)), Struct_2(0i, -941f, vec4<f32>(-1237f, -133f, 577f, 874f), Struct_1(23671i, true, 0u, 17079i, true), Struct_1(-51697i, true, 0u, 47272i, true)), Struct_2(-1i, 950f, vec4<f32>(-193f, 938f, -834f, 1000f), Struct_1(i32(-2147483648), true, 48355u, -48686i, false), Struct_1(-33904i, true, 4294967295u, 0i, true)), Struct_2(2147483647i, 114f, vec4<f32>(1262f, 175f, 835f, 1544f), Struct_1(i32(-2147483648), true, 53551u, 2147483647i, false), Struct_1(2147483647i, true, 1u, -3943i, false)), Struct_2(13198i, 1378f, vec4<f32>(831f, 449f, 1573f, 1068f), Struct_1(44262i, true, 1u, -10112i, true), Struct_1(-21808i, true, 4294967295u, 26699i, false)), Struct_2(1i, -157f, vec4<f32>(-1067f, 813f, 797f, 475f), Struct_1(1i, false, 11134u, 0i, false), Struct_1(2147483647i, true, 16767u, 7219i, false)), Struct_2(1i, 1311f, vec4<f32>(-1032f, -404f, -573f, -1391f), Struct_1(10333i, true, 55025u, 0i, false), Struct_1(-1i, true, 19962u, 32621i, false)), Struct_2(-30435i, -1571f, vec4<f32>(-144f, -1056f, 638f, -1079f), Struct_1(-1i, false, 32602u, 0i, true), Struct_1(-1i, true, 4294967295u, -75531i, false)), Struct_2(-1i, -294f, vec4<f32>(1000f, 157f, -580f, -1239f), Struct_1(-1i, false, 4294967295u, 1i, true), Struct_1(-52779i, true, 0u, 2147483647i, true)), Struct_2(2147483647i, 383f, vec4<f32>(1000f, -359f, -1000f, -211f), Struct_1(2147483647i, false, 0u, -16747i, false), Struct_1(i32(-2147483648), true, 67933u, i32(-2147483648), true)), Struct_2(i32(-2147483648), -163f, vec4<f32>(1000f, -687f, -277f, -1124f), Struct_1(-285i, false, 35504u, -27011i, true), Struct_1(74630i, true, 1u, 2147483647i, false)), Struct_2(i32(-2147483648), 569f, vec4<f32>(1750f, -2529f, 386f, -793f), Struct_1(i32(-2147483648), true, 72193u, 0i, false), Struct_1(0i, true, 4294967295u, -1i, true)), Struct_2(51298i, -843f, vec4<f32>(284f, 929f, -322f, -222f), Struct_1(-1i, false, 4294967295u, 2147483647i, false), Struct_1(15563i, false, 4294967295u, 1i, false)), Struct_2(-29554i, 1000f, vec4<f32>(1000f, -731f, -769f, -276f), Struct_1(-1i, true, 4294967295u, 0i, false), Struct_1(-38399i, false, 15948u, 0i, false)), Struct_2(-6968i, 1033f, vec4<f32>(-1405f, -168f, -899f, 549f), Struct_1(55577i, true, 22479u, 10638i, true), Struct_1(52961i, true, 1u, 2147483647i, false)), Struct_2(-23357i, -1708f, vec4<f32>(907f, -185f, -771f, 160f), Struct_1(28748i, false, 120576u, -1i, true), Struct_1(-1i, false, 31357u, 42652i, true)), Struct_2(-10260i, -205f, vec4<f32>(-1059f, -1679f, -615f, -795f), Struct_1(2538i, false, 22372u, 0i, false), Struct_1(i32(-2147483648), true, 0u, 12368i, true)), Struct_2(1i, 401f, vec4<f32>(1105f, -337f, -505f, 715f), Struct_1(-1i, false, 0u, -13398i, false), Struct_1(2147483647i, false, 4294967295u, 1i, false)), Struct_2(-41995i, 2295f, vec4<f32>(-1349f, 548f, 1331f, -606f), Struct_1(1i, false, 27643u, i32(-2147483648), true), Struct_1(-21228i, true, 0u, -33219i, true)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<i32>) -> vec2<bool> {
    global1 = array<Struct_2, 29>();
    global1 = array<Struct_2, 29>();
    var var_0 = -13100i;
    global1 = array<Struct_2, 29>();
    global0 = array<Struct_2, 18>();
    return !(!select(vec2<bool>(true, all(vec2<bool>(true, false))), vec2<bool>(true, true), vec2<bool>(true, true)));
}

fn func_2(arg_0: f32, arg_1: f32) -> vec2<bool> {
    var var_0 = arg_0;
    var_0 = -810f;
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -508f, arg_1)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1693f, arg_1, 1181f)))))));
    global1 = array<Struct_2, 29>();
    var var_2 = reverseBits(vec4<i32>(u_input.b, 1i, _wgslsmith_dot_vec3_i32(countOneBits(~vec3<i32>(u_input.b, -41657i, u_input.d)), vec3<i32>(-u_input.b, ~36266i, 2147483647i)), abs(-_wgslsmith_div_i32(1i, -1i))));
    return select(select(select(!select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, false), true)), vec2<bool>(true, true), all(vec2<bool>(true, true))), func_3(firstTrailingBit(vec3<i32>(80568i, var_2.x, 0i))), !select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(all(vec4<bool>(false, false, true, true)), true), select(true, 2147483647i <= var_2.x, true)));
}

fn func_1(arg_0: bool, arg_1: u32) -> vec2<f32> {
    var var_0 = !all(vec4<bool>(any(func_2(-674f, -2177f)), all(vec2<bool>(false, false)), true, func_2(_wgslsmith_f_op_f32(-813f * -1105f), _wgslsmith_div_f32(-1920f, -1205f)).x));
    global0 = array<Struct_2, 18>();
    let var_1 = true;
    let var_2 = u_input.a;
    let var_3 = Struct_1(u_input.d, var_1, ~23901u, 2147483647i, arg_0);
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-663f, 386f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1783f, 856f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 29>();
    let var_0 = 416f;
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(519f, 188f) - _wgslsmith_f_op_vec2_f32(func_1(false, 40352u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-var_1);
    global1 = array<Struct_2, 29>();
    let var_3 = ~(~(select(~vec2<i32>(u_input.b, 0i), abs(vec2<i32>(-1i, u_input.b)), true) & -(~vec2<i32>(u_input.d, u_input.b))));
    let var_4 = Struct_1(1i, all(select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true))), select(reverseBits(~1u) | u_input.a, firstLeadingBit(u_input.a), true), ~2147483647i, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(19611u, countOneBits(u_input.a), u_input.c.x << (1u % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.c.x, 1u), vec3<u32>(0u, 0u, u_input.c.x)) & abs(3658u)) > u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, var_3.x, 0i), vec3<i32>(u_input.b, -1i, 1i), vec3<i32>(-5676i, 11017i, var_3.x)), vec3<i32>(10479i, u_input.b, u_input.b), _wgslsmith_add_vec3_i32(vec3<i32>(28096i, var_3.x, var_4.d), vec3<i32>(u_input.d, var_3.x, 40252i))) >> (max(_wgslsmith_div_vec3_u32(~vec3<u32>(48618u, var_4.c, 0u), u_input.c.wxw), u_input.c.xxw) % vec3<u32>(32u)), -(~(~(u_input.d | var_4.d))));
}

