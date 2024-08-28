struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec3<f32>,
    d: vec2<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: i32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec4<bool>(false, false, true, false), 2171i, vec3<f32>(423f, -1070f, 1259f), vec2<u32>(0u, 0u), vec4<f32>(-234f, -552f, 267f, 299f)), Struct_1(vec4<bool>(true, true, true, false), 2147483647i, vec3<f32>(-720f, 1816f, -756f), vec2<u32>(33150u, 4294967295u), vec4<f32>(-486f, -1341f, 1000f, -929f)), Struct_1(vec4<bool>(false, false, true, false), -1i, vec3<f32>(-1657f, -391f, -109f), vec2<u32>(0u, 18527u), vec4<f32>(-881f, 121f, 807f, 782f)), Struct_1(vec4<bool>(true, true, false, true), -66268i, vec3<f32>(1013f, -554f, -1078f), vec2<u32>(20310u, 4294967295u), vec4<f32>(215f, 634f, 636f, -1731f)), Struct_1(vec4<bool>(true, false, false, false), -25371i, vec3<f32>(-1004f, -2103f, -249f), vec2<u32>(19687u, 35613u), vec4<f32>(-488f, 1796f, -2485f, -908f)), Struct_1(vec4<bool>(false, true, true, true), 0i, vec3<f32>(-1000f, 772f, 657f), vec2<u32>(4294967295u, 0u), vec4<f32>(1521f, -1994f, -188f, 237f)), Struct_1(vec4<bool>(true, false, true, true), -1i, vec3<f32>(-992f, 1520f, -861f), vec2<u32>(4294967295u, 1u), vec4<f32>(265f, -1446f, -312f, 1795f)), Struct_1(vec4<bool>(false, false, true, true), 2147483647i, vec3<f32>(-762f, -1577f, -1000f), vec2<u32>(54138u, 4294967295u), vec4<f32>(204f, 1562f, 1000f, 465f)), Struct_1(vec4<bool>(true, false, true, true), 21165i, vec3<f32>(-654f, 461f, 1161f), vec2<u32>(101382u, 0u), vec4<f32>(-798f, -1000f, -184f, -1333f)), Struct_1(vec4<bool>(false, true, true, true), 4561i, vec3<f32>(745f, 1148f, 492f), vec2<u32>(7121u, 22752u), vec4<f32>(-1000f, -986f, -318f, 186f)), Struct_1(vec4<bool>(false, true, true, false), i32(-2147483648), vec3<f32>(-131f, 377f, -434f), vec2<u32>(75252u, 19245u), vec4<f32>(-510f, 223f, 534f, -518f)), Struct_1(vec4<bool>(false, false, true, false), -21867i, vec3<f32>(-1000f, -2531f, 1000f), vec2<u32>(4294967295u, 35624u), vec4<f32>(-1000f, 806f, -1035f, -222f)), Struct_1(vec4<bool>(false, true, true, false), -16207i, vec3<f32>(-481f, -1000f, 875f), vec2<u32>(60294u, 60871u), vec4<f32>(-610f, 1080f, 842f, -804f)), Struct_1(vec4<bool>(false, false, false, false), i32(-2147483648), vec3<f32>(-241f, 786f, -1284f), vec2<u32>(0u, 0u), vec4<f32>(1653f, 819f, -1732f, -665f)), Struct_1(vec4<bool>(true, false, false, true), -5120i, vec3<f32>(-1086f, 268f, 485f), vec2<u32>(7501u, 51108u), vec4<f32>(-1000f, -1737f, -164f, 986f)), Struct_1(vec4<bool>(false, true, true, true), 0i, vec3<f32>(767f, 521f, -1395f), vec2<u32>(0u, 0u), vec4<f32>(882f, 931f, 1000f, 707f)), Struct_1(vec4<bool>(false, true, false, false), -33451i, vec3<f32>(699f, 974f, -135f), vec2<u32>(1u, 1u), vec4<f32>(1180f, -805f, 600f, -1087f)), Struct_1(vec4<bool>(true, true, true, true), i32(-2147483648), vec3<f32>(-631f, -1029f, -1183f), vec2<u32>(58646u, 1u), vec4<f32>(-2483f, 2131f, -2227f, -1018f)), Struct_1(vec4<bool>(true, true, false, true), 2147483647i, vec3<f32>(762f, 966f, 293f), vec2<u32>(39788u, 1u), vec4<f32>(-146f, 265f, -366f, -330f)), Struct_1(vec4<bool>(true, true, false, false), -43324i, vec3<f32>(-1321f, 231f, -951f), vec2<u32>(40599u, 10942u), vec4<f32>(199f, 1000f, 203f, -168f)), Struct_1(vec4<bool>(false, false, false, true), -29616i, vec3<f32>(-240f, -1000f, 1042f), vec2<u32>(4294967295u, 38828u), vec4<f32>(241f, -241f, 126f, -1139f)), Struct_1(vec4<bool>(false, false, true, false), -58223i, vec3<f32>(-285f, 1055f, -1240f), vec2<u32>(20502u, 4294967295u), vec4<f32>(1080f, 1090f, 603f, 1091f)), Struct_1(vec4<bool>(true, false, true, true), 2147483647i, vec3<f32>(909f, -1000f, 1393f), vec2<u32>(4294967295u, 1u), vec4<f32>(-594f, -470f, -391f, -672f)), Struct_1(vec4<bool>(true, true, true, true), 0i, vec3<f32>(1711f, -1000f, -741f), vec2<u32>(10987u, 1u), vec4<f32>(-1275f, -598f, 907f, -614f)), Struct_1(vec4<bool>(true, true, true, false), i32(-2147483648), vec3<f32>(-121f, -1321f, 1000f), vec2<u32>(1u, 4294967295u), vec4<f32>(1000f, -484f, -2454f, -1667f)), Struct_1(vec4<bool>(true, true, true, true), -1i, vec3<f32>(-2079f, 373f, -555f), vec2<u32>(28273u, 46538u), vec4<f32>(-845f, -1441f, -1037f, -2716f)), Struct_1(vec4<bool>(false, true, true, false), 6025i, vec3<f32>(935f, 1287f, -232f), vec2<u32>(4294967295u, 1u), vec4<f32>(534f, 380f, -1837f, -1000f)), Struct_1(vec4<bool>(false, true, false, false), 49289i, vec3<f32>(-1343f, -321f, 1387f), vec2<u32>(1u, 33653u), vec4<f32>(-770f, -2093f, 1654f, 473f)), Struct_1(vec4<bool>(false, true, false, true), 21841i, vec3<f32>(837f, -1000f, 996f), vec2<u32>(17629u, 4294967295u), vec4<f32>(-719f, -642f, 1454f, -348f)), Struct_1(vec4<bool>(true, false, true, false), -1i, vec3<f32>(519f, 163f, 673f), vec2<u32>(0u, 0u), vec4<f32>(-192f, 445f, 168f, -3855f)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> f32 {
    global0 = array<Struct_1, 30>();
    var var_0 = global0[_wgslsmith_index_u32(u_input.c, 30u)];
    let var_1 = _wgslsmith_f_op_f32(abs(645f));
    global0 = array<Struct_1, 30>();
    let var_2 = any(!select(select(arg_0.b, arg_0.b, vec2<bool>(arg_0.a, var_0.a.x)), arg_0.b, !var_0.a.x | all(vec2<bool>(var_0.a.x, false))));
    return -1986f;
}

fn func_2() -> Struct_1 {
    var var_0 = 13443i;
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-671f, 768f))), 1892f, _wgslsmith_f_op_f32(func_3(Struct_2(true, vec2<bool>(true, true), u_input.a, vec3<u32>(u_input.e, 10909u, 44233u)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-224f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-460f, -1687f, 177f, 1392f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-917f, -1307f, -1098f, -589f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-338f, 595f, 2149f, -338f))))), true));
    var var_2 = Struct_2(all(vec3<bool>(true, true, true)), !(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), true))), -(~u_input.d.x), firstLeadingBit(reverseBits(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.e, u_input.e, u_input.c), vec3<u32>(u_input.e, u_input.e, 22607u)), vec3<u32>(0u, 0u, u_input.c) & vec3<u32>(u_input.e, u_input.c, 1u)))));
    var var_3 = Struct_2(var_2.b.x & any(var_2.b), select(vec2<bool>(!select(false, var_2.b.x, var_2.a), all(select(vec3<bool>(true, false, false), vec3<bool>(true, var_2.a, true), false))), var_2.b, var_2.b), -3544i, vec3<u32>(1u, var_2.d.x | u_input.e, ~1u));
    var var_4 = var_2.d.yy;
    return global0[_wgslsmith_index_u32(max(~(~_wgslsmith_mult_u32(firstLeadingBit(var_2.d.x), _wgslsmith_dot_vec2_u32(var_3.d.xy, var_2.d.zz))), var_4.x), 30u)];
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> bool {
    var var_0 = arg_2;
    var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.e, arg_0.d.x) << (~(var_0.d.x & max(~arg_2.d.x, abs(u_input.e))) % 32u), 30u)];
    let var_1 = (countOneBits(arg_2.d.x) & ~1u) >> (~1u % 32u);
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(var_0.e.zw)), _wgslsmith_f_op_vec2_f32(-arg_2.c.xz)));
    global0 = array<Struct_1, 30>();
    return ~_wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.d.x, arg_2.d.x, 4294967295u, arg_1.d.x), vec4<u32>(arg_0.d.x, var_1, arg_0.d.x, 160715u)), max(4294967295u, arg_1.d.x), var_1) == _wgslsmith_mod_u32(max(var_0.d.x & select(1u, 4294967295u, arg_0.b.x), 17769u), ~firstTrailingBit(var_0.d.x));
}

fn func_1() -> bool {
    let var_0 = !select(vec4<bool>(false, true, !all(vec4<bool>(true, false, true, true)), func_4(Struct_2(true, vec2<bool>(false, true), u_input.b, vec3<u32>(44812u, u_input.e, 0u)), Struct_2(true, vec2<bool>(false, false), u_input.b, vec3<u32>(0u, u_input.c, 48537u)), func_2())), func_2().a, true);
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(reverseBits(u_input.c), firstLeadingBit(4294967295u)), u_input.e >> (108397u % 32u)), ~vec2<u32>(~reverseBits(21738u), ~min(u_input.c, 14701u))), 30u)];
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    return u_input.c > 4565u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(_wgslsmith_mod_u32(min(0u, ~reverseBits(u_input.e)), abs(~(29625u << (u_input.c % 32u)))), abs(reverseBits(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 49903u, 1831u, u_input.c), vec4<u32>(u_input.c, 1u, u_input.e, u_input.e)), ~vec4<u32>(51162u, u_input.e, u_input.c, 1u)))), u_input.e, _wgslsmith_dot_vec2_u32(vec2<u32>(53432u, _wgslsmith_mod_u32(~u_input.c, ~123367u)), ~abs(vec2<u32>(u_input.c, u_input.e)) >> (vec2<u32>(min(u_input.c, u_input.c), _wgslsmith_sub_u32(41669u, u_input.e)) % vec2<u32>(32u))));
    let var_1 = select(!select(vec4<bool>(func_1(), true, true, all(vec3<bool>(true, false, true))), vec4<bool>(true, func_1(), func_2().a.x, false), any(vec2<bool>(false, true))), vec4<bool>(!select(true, true, true), true || any(vec3<bool>(true, true, true)), all(vec3<bool>(true, 2147483647i <= u_input.d.x, all(vec2<bool>(false, false)))), all(vec4<bool>(false, all(vec3<bool>(true, true, false)), true, func_1()))), true);
    let var_2 = ~u_input.e;
    let var_3 = Struct_2(!var_1.x, vec2<bool>(any(vec2<bool>(var_1.x & true, true | var_1.x)), reverseBits(select(0u, 1u, var_1.x)) < _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(4294967295u, 5894u, 3095u)), vec3<u32>(42018u, var_2, var_0.x))), _wgslsmith_clamp_i32(-8310i, u_input.d.x, ~u_input.b), ~var_0.xzy);
    var var_4 = u_input.d;
    var_0 = vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(~u_input.e, u_input.c & u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(114132u, 0u, var_2, 5665u), vec4<u32>(u_input.e, 130127u, var_3.d.x, var_0.x))), ~reverseBits(vec3<u32>(var_3.d.x, u_input.c, 4294967295u))), max(vec3<u32>(u_input.c, var_0.x, u_input.c), select(vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(10692u, 109609u, 4294967295u), true)) << (countOneBits(vec3<u32>(45047u, 0u, var_2)) % vec3<u32>(32u))), 4294967295u, var_2, ~min(u_input.c, _wgslsmith_sub_u32(var_3.d.x, u_input.e)));
    let var_5 = u_input.e;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(abs(_wgslsmith_mod_i32(var_3.c, -2337i | var_3.c)), -2147483647i), select(var_4.yw, _wgslsmith_clamp_vec2_i32(-vec2<i32>(u_input.b, u_input.d.x), firstLeadingBit(vec2<i32>(2147483647i, -2147483647i)), _wgslsmith_mod_vec2_i32(var_4.yw, var_4.yx)) >> (vec2<u32>(54990u, var_2 >> (var_2 % 32u)) % vec2<u32>(32u)), vec2<bool>(var_1.x, (var_3.b.x | false) || (33760i <= u_input.a))), u_input.d, u_input.b, -var_4.x);
}

