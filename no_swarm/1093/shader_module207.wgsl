struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(Struct_1(vec4<f32>(815f, 463f, -879f, 1000f), true, false, vec3<u32>(16563u, 12739u, 4294967295u)), Struct_1(vec4<f32>(925f, 574f, 616f, 229f), false, false, vec3<u32>(25748u, 54293u, 4294967295u)), Struct_1(vec4<f32>(548f, -1000f, -589f, 969f), true, true, vec3<u32>(8492u, 1u, 23229u)), -41461i, vec2<u32>(1u, 1u)), Struct_2(Struct_1(vec4<f32>(-491f, -1000f, -1298f, -1277f), false, false, vec3<u32>(4294967295u, 76349u, 14917u)), Struct_1(vec4<f32>(239f, 1491f, 834f, 131f), false, false, vec3<u32>(1u, 9351u, 18773u)), Struct_1(vec4<f32>(-1213f, -144f, -590f, -663f), true, false, vec3<u32>(45344u, 82186u, 5150u)), -49613i, vec2<u32>(1u, 0u)), Struct_2(Struct_1(vec4<f32>(372f, 1182f, -786f, -864f), false, true, vec3<u32>(1484u, 4294967295u, 46870u)), Struct_1(vec4<f32>(-103f, 515f, 1386f, 516f), true, false, vec3<u32>(1561u, 0u, 1u)), Struct_1(vec4<f32>(-1000f, 1448f, 1090f, -220f), false, false, vec3<u32>(9596u, 86257u, 35307u)), i32(-2147483648), vec2<u32>(12228u, 95678u)), Struct_2(Struct_1(vec4<f32>(-1188f, 1038f, 106f, 839f), false, true, vec3<u32>(1u, 39235u, 70682u)), Struct_1(vec4<f32>(-1000f, 1240f, -665f, 973f), true, true, vec3<u32>(31673u, 22089u, 0u)), Struct_1(vec4<f32>(199f, -1345f, 862f, 770f), true, true, vec3<u32>(0u, 70362u, 1u)), -16874i, vec2<u32>(4294967295u, 73391u)), Struct_2(Struct_1(vec4<f32>(-834f, 1000f, -1271f, 273f), true, false, vec3<u32>(4294967295u, 1u, 18689u)), Struct_1(vec4<f32>(705f, 515f, -1119f, -204f), true, true, vec3<u32>(0u, 23228u, 1u)), Struct_1(vec4<f32>(2188f, -265f, -1407f, -1588f), true, false, vec3<u32>(0u, 0u, 1u)), -75414i, vec2<u32>(11055u, 4294967295u)), Struct_2(Struct_1(vec4<f32>(-377f, -785f, 884f, 1147f), true, true, vec3<u32>(29676u, 47584u, 43999u)), Struct_1(vec4<f32>(2183f, 552f, -128f, -124f), false, false, vec3<u32>(41748u, 4294967295u, 222u)), Struct_1(vec4<f32>(1088f, 442f, 387f, -400f), false, false, vec3<u32>(41290u, 1u, 1u)), 1i, vec2<u32>(4294967295u, 31908u)), Struct_2(Struct_1(vec4<f32>(-1275f, -438f, -1856f, -1224f), true, false, vec3<u32>(26474u, 56173u, 3055u)), Struct_1(vec4<f32>(306f, 207f, -994f, 176f), true, false, vec3<u32>(4294967295u, 58233u, 0u)), Struct_1(vec4<f32>(2254f, 408f, -1000f, -351f), false, false, vec3<u32>(67040u, 1u, 0u)), -45640i, vec2<u32>(25514u, 53931u)), Struct_2(Struct_1(vec4<f32>(360f, 1000f, -365f, -1664f), true, false, vec3<u32>(39962u, 42354u, 4294967295u)), Struct_1(vec4<f32>(-1822f, 230f, 1090f, 999f), true, true, vec3<u32>(0u, 1u, 0u)), Struct_1(vec4<f32>(-999f, -847f, 929f, 1887f), false, false, vec3<u32>(1u, 1u, 0u)), 2147483647i, vec2<u32>(0u, 69915u)), Struct_2(Struct_1(vec4<f32>(-234f, 1356f, 187f, -727f), true, false, vec3<u32>(43971u, 1u, 4294967295u)), Struct_1(vec4<f32>(1125f, 805f, -2145f, 892f), false, true, vec3<u32>(4294967295u, 0u, 24835u)), Struct_1(vec4<f32>(-178f, -1555f, -862f, -999f), true, true, vec3<u32>(0u, 67438u, 0u)), -39776i, vec2<u32>(113351u, 1u)));

var<private> global2: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec4<f32>(-265f, 556f, 307f, -631f), true, false, vec3<u32>(1u, 1u, 4294967295u)), Struct_1(vec4<f32>(-952f, -1938f, 822f, 112f), false, false, vec3<u32>(4294967295u, 46624u, 47145u)), Struct_1(vec4<f32>(780f, -733f, 1119f, 926f), false, true, vec3<u32>(59775u, 11694u, 23073u)), Struct_1(vec4<f32>(-519f, 1123f, 136f, -2600f), false, false, vec3<u32>(4294967295u, 4294967295u, 1u)), Struct_1(vec4<f32>(1000f, -459f, 1589f, -1315f), true, false, vec3<u32>(4294967295u, 39130u, 31731u)), Struct_1(vec4<f32>(890f, -1154f, -135f, 479f), true, false, vec3<u32>(0u, 51280u, 40773u)), Struct_1(vec4<f32>(1074f, -978f, 1210f, 969f), true, false, vec3<u32>(12369u, 0u, 17143u)), Struct_1(vec4<f32>(-712f, -642f, 206f, -937f), false, true, vec3<u32>(1u, 1u, 37116u)), Struct_1(vec4<f32>(-367f, 883f, -721f, 1524f), false, true, vec3<u32>(60375u, 53143u, 21382u)), Struct_1(vec4<f32>(537f, 280f, -2867f, -1544f), false, true, vec3<u32>(0u, 0u, 58670u)), Struct_1(vec4<f32>(696f, 576f, 106f, 630f), true, true, vec3<u32>(1u, 1u, 26751u)), Struct_1(vec4<f32>(-1208f, -280f, 264f, -555f), false, false, vec3<u32>(27132u, 7503u, 42303u)), Struct_1(vec4<f32>(374f, 1137f, -733f, -2350f), true, true, vec3<u32>(63649u, 3891u, 1u)), Struct_1(vec4<f32>(479f, -1999f, -188f, -1462f), false, true, vec3<u32>(0u, 0u, 0u)), Struct_1(vec4<f32>(488f, -226f, 980f, -697f), true, false, vec3<u32>(55327u, 23048u, 11792u)), Struct_1(vec4<f32>(505f, -1350f, 1000f, 311f), false, true, vec3<u32>(0u, 15149u, 4294967295u)), Struct_1(vec4<f32>(1283f, -1593f, 435f, -1926f), true, false, vec3<u32>(91440u, 1u, 41097u)), Struct_1(vec4<f32>(-877f, -369f, 282f, 1000f), false, true, vec3<u32>(72836u, 1u, 28822u)), Struct_1(vec4<f32>(381f, -563f, 599f, -620f), true, true, vec3<u32>(73751u, 75781u, 37708u)), Struct_1(vec4<f32>(1528f, -138f, -1000f, 239f), true, true, vec3<u32>(23014u, 48012u, 1u)), Struct_1(vec4<f32>(561f, 432f, -827f, -1277f), true, false, vec3<u32>(4294967295u, 0u, 36819u)), Struct_1(vec4<f32>(-256f, -836f, -1377f, 115f), false, false, vec3<u32>(51938u, 4294967295u, 1059u)), Struct_1(vec4<f32>(838f, -1075f, 816f, -836f), true, true, vec3<u32>(0u, 23672u, 4294967295u)), Struct_1(vec4<f32>(879f, -127f, 1466f, 302f), false, false, vec3<u32>(17442u, 4294967295u, 1u)), Struct_1(vec4<f32>(-993f, 769f, -837f, -525f), false, false, vec3<u32>(1u, 482u, 1u)), Struct_1(vec4<f32>(1289f, -928f, -401f, 911f), true, true, vec3<u32>(40713u, 4294967295u, 4294967295u)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<f32>) -> i32 {
    global2 = array<Struct_1, 26>();
    global0 = u_input.a;
    global1 = array<Struct_2, 9>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 381f, 1112f)), _wgslsmith_f_op_vec4_f32(-arg_0))))), true, true, vec3<u32>(u_input.a, u_input.a, 4294967295u));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a.zzy + var_0.a.xxy) - arg_0.yww));
    return 0i;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> u32 {
    var var_0 = abs(arg_0);
    var_0 = -select(vec4<i32>(0i, -2147483647i, 1i, func_3(_wgslsmith_f_op_vec4_f32(step(arg_1.a, vec4<f32>(-1000f, arg_1.a.x, arg_1.a.x, 409f))))), max(_wgslsmith_div_vec4_i32(arg_0, arg_0) << (abs(vec4<u32>(u_input.a, u_input.a, 25057u, 2087u)) % vec4<u32>(32u)), vec4<i32>(var_0.x, ~var_0.x, ~(-2147483647i), -1i)), arg_1.b);
    var var_1 = 1028f;
    var var_2 = arg_0.x;
    var var_3 = vec2<i32>(-36190i, firstLeadingBit(abs(1i ^ max(arg_0.x, -13612i))));
    return ~20611u;
}

fn func_1() -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(0u >> ((u_input.a ^ (func_2(~vec4<i32>(2147483647i, -54924i, 1i, 28116i), Struct_1(vec4<f32>(771f, -1000f, -568f, -131f), false, false, vec3<u32>(u_input.a, 52946u, 8651u))) & _wgslsmith_add_u32(101115u, u_input.a & 15995u))) % 32u), 26u)];
    let var_1 = min(firstLeadingBit(_wgslsmith_clamp_i32(max(abs(-34869i), i32(-1i) * -2147483647i), -(~(-19504i)), ~(-49278i))), _wgslsmith_dot_vec2_i32(abs(-vec2<i32>(81421i, 34135i) & firstTrailingBit(vec2<i32>(-1i, -6008i))), _wgslsmith_clamp_vec2_i32(-vec2<i32>(22065i, -1i), _wgslsmith_div_vec2_i32(-vec2<i32>(30245i, -12761i), vec2<i32>(20567i, 1i)), min(firstTrailingBit(vec2<i32>(-2147483647i, 2147483647i)), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, -40345i), vec2<i32>(10059i, 22768i))))));
    var var_2 = global1[_wgslsmith_index_u32(min(~select(var_0.d.x, 1u, !var_0.c) | _wgslsmith_sub_u32(_wgslsmith_add_u32(countOneBits(u_input.a), u_input.a | var_0.d.x), u_input.a), u_input.a & u_input.a), 9u)];
    var_0 = Struct_1(var_2.a.a, any(!select(!vec4<bool>(false, var_2.a.c, true, true), vec4<bool>(var_2.a.c, false, var_0.b, var_0.b), vec4<bool>(false, var_2.b.c, var_2.b.c, false))), true, ~abs(var_2.c.d));
    let var_3 = ~(~1u);
    return _wgslsmith_f_op_f32(var_2.a.a.x - -2281f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~u_input.a;
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_div_f32(634f, 740f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(637f)), _wgslsmith_div_f32(926f, -1433f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-479f, 1256f) + vec2<f32>(1156f, _wgslsmith_f_op_f32(f32(-1f) * -1570f)))), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true & any(vec4<bool>(true, false, false, true))), vec2<bool>(true, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer((select(min(vec4<u32>(u_input.a, u_input.a, u_input.a, 41385u), vec4<u32>(26181u, 4294967295u, u_input.a, u_input.a)), ~vec4<u32>(u_input.a, u_input.a, 1895u, 1u), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)) << (select(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), countOneBits(vec4<u32>(u_input.a, 1u, 0u, u_input.a)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), true)) % vec4<u32>(32u))) >> (~(~(~vec4<u32>(u_input.a, 102303u, u_input.a, 32844u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -395f))), 852f))), vec3<i32>(1i, i32(-1i) * -(~(-2147483647i)), -(-1i << (u_input.a % 32u))));
}

