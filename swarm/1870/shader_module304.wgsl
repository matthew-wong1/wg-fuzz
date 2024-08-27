struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: vec4<f32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(2161f, vec3<f32>(-100f, 728f, 1528f), 58641u, vec4<f32>(-1348f, 1098f, -724f, 312f), vec3<u32>(0u, 4294967295u, 926u)), Struct_2(-524f, vec3<f32>(123f, 1572f, 2092f), 26213u, vec4<f32>(-438f, -1000f, 857f, 561f), vec3<u32>(4294967295u, 4294967295u, 9923u)), Struct_2(301f, vec3<f32>(109f, -866f, -1215f), 42971u, vec4<f32>(-771f, 467f, -729f, -186f), vec3<u32>(10787u, 89888u, 7935u)), Struct_2(-392f, vec3<f32>(-1000f, 270f, 122f), 4294967295u, vec4<f32>(770f, 338f, 1467f, 1182f), vec3<u32>(28239u, 4294967295u, 0u)), Struct_2(2297f, vec3<f32>(-1239f, -466f, 298f), 4682u, vec4<f32>(-206f, 1045f, 1104f, -2095f), vec3<u32>(82061u, 4294967295u, 12275u)), Struct_2(800f, vec3<f32>(-396f, 407f, 260f), 1u, vec4<f32>(485f, 1000f, 1180f, 1465f), vec3<u32>(4294967295u, 0u, 1u)), Struct_2(-1152f, vec3<f32>(-751f, -1000f, -926f), 38657u, vec4<f32>(-471f, 1073f, 1257f, -1000f), vec3<u32>(1u, 35591u, 1u)), Struct_2(715f, vec3<f32>(280f, -701f, -116f), 49784u, vec4<f32>(1403f, -1883f, -2629f, -589f), vec3<u32>(0u, 4294967295u, 40887u)), Struct_2(290f, vec3<f32>(1066f, -746f, -292f), 0u, vec4<f32>(-478f, 1886f, -848f, 454f), vec3<u32>(57588u, 0u, 32513u)), Struct_2(249f, vec3<f32>(-948f, -1923f, -265f), 27271u, vec4<f32>(-270f, -494f, 630f, -692f), vec3<u32>(3988u, 4294967295u, 37044u)), Struct_2(1221f, vec3<f32>(783f, -2555f, 1000f), 0u, vec4<f32>(1000f, -780f, -534f, -1769f), vec3<u32>(0u, 1u, 123973u)), Struct_2(502f, vec3<f32>(114f, 956f, -177f), 22300u, vec4<f32>(-668f, -700f, -696f, 1360f), vec3<u32>(1u, 42408u, 85374u)), Struct_2(1734f, vec3<f32>(1350f, -108f, 780f), 20245u, vec4<f32>(116f, 325f, 1022f, -2507f), vec3<u32>(1u, 1u, 4646u)), Struct_2(-913f, vec3<f32>(-1319f, -631f, 739f), 1u, vec4<f32>(281f, 489f, -832f, 162f), vec3<u32>(25405u, 1u, 29710u)), Struct_2(486f, vec3<f32>(-1677f, 386f, -224f), 35204u, vec4<f32>(1349f, 1000f, -464f, -1679f), vec3<u32>(0u, 1u, 1u)), Struct_2(446f, vec3<f32>(368f, -1594f, 207f), 3588u, vec4<f32>(-2110f, -100f, -1000f, 805f), vec3<u32>(4294967295u, 80493u, 39248u)), Struct_2(-191f, vec3<f32>(-942f, -1202f, -2976f), 39616u, vec4<f32>(-359f, 289f, -586f, -255f), vec3<u32>(0u, 16334u, 83757u)), Struct_2(203f, vec3<f32>(-1505f, -324f, -824f), 15790u, vec4<f32>(143f, 565f, 382f, -592f), vec3<u32>(42765u, 1u, 84780u)), Struct_2(-311f, vec3<f32>(-493f, -1255f, 288f), 4294967295u, vec4<f32>(-1119f, 165f, 659f, -654f), vec3<u32>(0u, 1u, 8203u)), Struct_2(-256f, vec3<f32>(715f, 415f, -1771f), 0u, vec4<f32>(1078f, -1000f, 1054f, 1852f), vec3<u32>(4294967295u, 4294967295u, 0u)), Struct_2(-2071f, vec3<f32>(-1086f, -514f, -1000f), 75636u, vec4<f32>(-856f, 381f, -391f, -1200f), vec3<u32>(4294967295u, 1u, 1u)), Struct_2(270f, vec3<f32>(-137f, 202f, 2711f), 0u, vec4<f32>(3609f, -1000f, -1000f, 1687f), vec3<u32>(32269u, 0u, 15199u)), Struct_2(-653f, vec3<f32>(1145f, -319f, -629f), 0u, vec4<f32>(-620f, -1840f, -1000f, 353f), vec3<u32>(0u, 32597u, 18530u)), Struct_2(993f, vec3<f32>(-1091f, 1579f, -800f), 67339u, vec4<f32>(-1101f, -813f, 925f, -1230f), vec3<u32>(35384u, 78349u, 36386u)), Struct_2(317f, vec3<f32>(-535f, -236f, -619f), 24541u, vec4<f32>(-1303f, -1000f, 1041f, 1596f), vec3<u32>(4294967295u, 0u, 0u)), Struct_2(1834f, vec3<f32>(1269f, -387f, 602f), 1u, vec4<f32>(227f, -726f, 840f, 2075f), vec3<u32>(1638u, 0u, 4294967295u)), Struct_2(-1189f, vec3<f32>(116f, 624f, 466f), 1u, vec4<f32>(1061f, 320f, 501f, 1553f), vec3<u32>(1u, 36738u, 1u)), Struct_2(1000f, vec3<f32>(949f, 477f, 1000f), 4294967295u, vec4<f32>(523f, -446f, -732f, -705f), vec3<u32>(4294967295u, 4294967295u, 28613u)), Struct_2(-1000f, vec3<f32>(775f, -1000f, -126f), 4294967295u, vec4<f32>(430f, 367f, 2122f, 1068f), vec3<u32>(46468u, 35359u, 5888u)), Struct_2(-964f, vec3<f32>(1072f, -821f, 949f), 34036u, vec4<f32>(-436f, 192f, -107f, 1295f), vec3<u32>(4294967295u, 1u, 73901u)), Struct_2(430f, vec3<f32>(1937f, -1129f, 177f), 94374u, vec4<f32>(2334f, 948f, -1707f, 2213f), vec3<u32>(0u, 36911u, 16811u)));

var<private> global1: Struct_1 = Struct_1(vec4<f32>(-833f, -915f, 860f, 1678f), vec2<f32>(1000f, -217f), vec2<i32>(1i, 63011i), true);

var<private> global2: u32;

var<private> global3: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> u32 {
    return _wgslsmith_dot_vec2_u32(vec2<u32>(global3.e.x, 1u) >> ((max(vec2<u32>(4294967295u, u_input.b), reverseBits(vec2<u32>(15631u, 93831u))) << (reverseBits(global3.e.yx) % vec2<u32>(32u))) % vec2<u32>(32u)), global3.e.yx);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: vec2<u32>) -> vec3<u32> {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-564f, -445f)) + -375f))), -1000f, _wgslsmith_f_op_f32(max(global1.a.x, arg_0.b.x)), -1740f), vec2<f32>(-1224f, _wgslsmith_div_f32(global3.d.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1185f)))))), _wgslsmith_clamp_vec2_i32(select(global1.c, global1.c & ~global1.c, false), ~(-vec2<i32>(global1.c.x, global1.c.x)), firstTrailingBit(global1.c)), !(!global1.d));
    var var_1 = ~u_input.a;
    global0 = array<Struct_2, 31>();
    let var_2 = _wgslsmith_dot_vec3_u32(~global3.e, max(vec3<u32>(10626u, abs(func_1(var_0, Struct_1(arg_0.d, global1.b, vec2<i32>(-22310i, var_0.c.x), global1.d), global3.b.x)), ~(~arg_2.c)), select(vec3<u32>(8535u, func_1(Struct_1(global1.a, vec2<f32>(1469f, -1371f), vec2<i32>(0i, 1i), false), var_0, arg_0.b.x), arg_0.c & 0u), countOneBits(vec3<u32>(4294967295u, u_input.b, 57092u)) << ((vec3<u32>(u_input.b, arg_3.x, global3.e.x) >> (global3.e % vec3<u32>(32u))) % vec3<u32>(32u)), !(!vec3<bool>(var_0.d, false, false)))));
    let var_3 = abs(5256u);
    return abs(select(firstLeadingBit(max(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 4294967295u, var_2), vec3<u32>(arg_0.e.x, arg_3.x, 671u)), firstTrailingBit(vec3<u32>(var_2, var_3, 7589u)))), global3.e, any(select(vec3<bool>(true, true, true), !vec3<bool>(var_0.d, false, var_0.d), false))));
}

fn func_4(arg_0: vec3<bool>, arg_1: u32) -> u32 {
    let var_0 = global3.e;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(global3.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.b.x, 1000f, global3.d.x, -493f), vec4<f32>(global3.a, global3.b.x, global1.a.x, global1.a.x), true)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.d.x, 504f, 1000f, global3.a) + vec4<f32>(global3.a, global3.d.x, global1.b.x, -248f))), !(!vec4<bool>(arg_0.x, arg_0.x, global1.d, true)))))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(step(global1.b.x, global1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1141f * global3.d.x))), vec2<f32>(-468f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(573f, -949f)), global3.b.x))))), global1.c, false);
    let var_2 = 11959u;
    let var_3 = !(arg_1 >= firstTrailingBit(1991u));
    global3 = global0[_wgslsmith_index_u32(1u | _wgslsmith_sub_u32(0u, arg_1), 31u)];
    return ~select(u_input.b, min(abs(u_input.b), var_2), all(select(!vec2<bool>(var_3, true), vec2<bool>(true, var_1.d), !arg_0.x)));
}

fn func_2() -> vec4<f32> {
    global2 = ~countOneBits(u_input.b) & func_4(select(select(select(vec3<bool>(false, false, false), vec3<bool>(global1.d, false, global1.d), true), !vec3<bool>(true, false, global1.d), global1.d), select(vec3<bool>(true, true, global1.d), vec3<bool>(global1.d, true, false), select(vec3<bool>(global1.d, false, true), vec3<bool>(true, false, false), global1.d)), global1.d), ~_wgslsmith_dot_vec3_u32(~global3.e, func_3(global0[_wgslsmith_index_u32(4294967295u, 31u)], vec2<f32>(-788f, -538f), Struct_2(global3.b.x, vec3<f32>(359f, -1076f, global3.d.x), global3.e.x, vec4<f32>(global1.b.x, 921f, global3.a, 131f), vec3<u32>(u_input.b, global3.e.x, 0u)), vec2<u32>(global3.e.x, global3.c))));
    var var_0 = max(vec4<i32>(global1.c.x, _wgslsmith_add_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -2076i, global1.c.x, u_input.a), vec4<i32>(global1.c.x, -24037i, 2147483647i, 2147483647i)), _wgslsmith_clamp_i32(global1.c.x, select(-1i, u_input.a, false), global1.c.x << (u_input.b % 32u))), global1.c.x, u_input.a), vec4<i32>(global1.c.x, 0i, _wgslsmith_mod_i32(select(u_input.a, -u_input.a, true), 1i), global1.c.x & -global1.c.x));
    var var_1 = select(vec4<bool>((all(vec2<bool>(true, global1.d)) && any(vec4<bool>(global1.d, global1.d, global1.d, global1.d))) & global1.d, all(vec2<bool>(all(vec2<bool>(global1.d, global1.d)), all(vec2<bool>(global1.d, global1.d)))), 1031f > global3.a, all(vec3<bool>(any(vec2<bool>(global1.d, global1.d)), false, false))), select(!vec4<bool>(false | global1.d, global1.d, true, all(vec4<bool>(global1.d, false, false, true))), vec4<bool>(false, !global1.d, true, false), !vec4<bool>(false, true | global1.d, false, global1.d && global1.d)), false);
    var var_2 = ~4294967295u;
    let var_3 = Struct_2(659f, global1.a.xzx, global3.e.x, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(global3.d, vec4<f32>(528f, -525f, -342f, global1.a.x))), global3.d)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -438f), -228f, -1111f, 1455f)), global3.d)), global3.e);
    return global3.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 31>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f - global3.b.x), _wgslsmith_f_op_f32(max(-406f, global3.d.x)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.a.x, 1240f, global1.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(global3.d.x, global1.b.x)), _wgslsmith_f_op_f32(min(-958f, global1.a.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(723f)), -637f, global1.d)))), max(47618u, min(~0u, func_1(Struct_1(vec4<f32>(-290f, global3.d.x, 171f, 707f), global3.b.zz, vec2<i32>(u_input.a, global1.c.x), global1.d), Struct_1(global1.a, global1.b, vec2<i32>(u_input.a, u_input.a), true), global1.b.x)) >> (33901u % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.a + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(513f, global3.d.x, -1188f, global3.b.x)) + _wgslsmith_f_op_vec4_f32(exp2(global3.d))))), global3.e);
    global3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(473f * var_0.b.x) - _wgslsmith_f_op_f32(-var_0.b.x)))) * -475f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.x - 197f) + _wgslsmith_f_op_f32(-632f + global1.b.x)), global1.b.x))), _wgslsmith_mod_u32(~u_input.b, 40191u), _wgslsmith_f_op_vec4_f32(func_2()), global3.e);
    let var_1 = max(_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(global3.c, var_0.e.x, var_0.c, u_input.b) | ~vec4<u32>(1u, u_input.b, var_0.e.x, 0u)), countOneBits(vec4<u32>(~12391u, 1u, max(8880u, var_0.e.x), var_0.e.x))), ~(~(~(~vec4<u32>(45571u, var_0.e.x, 67894u, 45161u)))));
    var var_2 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1770f - global3.d.x), _wgslsmith_f_op_f32(select(505f, _wgslsmith_f_op_f32(step(-176f, -2420f)), !global1.d)), any(select(vec2<bool>(true, global1.d), vec2<bool>(global1.d, global1.d), true)))) + -247f));
    let var_3 = all(!select(select(vec3<bool>(true, true, true), !vec3<bool>(global1.d, global1.d, global1.d), !global1.d), vec3<bool>(true, true, true), global1.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(global3.a)), var_1.yy, -(vec3<i32>(~2147483647i, u_input.a, 1i) << ((global3.e >> ((vec3<u32>(1u, 25u, u_input.b) << (var_0.e % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u))));
}

