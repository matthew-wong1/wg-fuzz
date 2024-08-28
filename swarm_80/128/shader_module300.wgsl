struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec3<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(Struct_3(Struct_2(vec4<f32>(106f, -548f, 1327f, -254f), Struct_1(false, vec4<u32>(4294967295u, 0u, 57947u, 41024u), 1u), Struct_1(false, vec4<u32>(23772u, 71649u, 0u, 18145u), 0u)), vec3<f32>(1247f, -1290f, -1155f), vec4<bool>(false, false, false, false), true), Struct_2(vec4<f32>(923f, 234f, -706f, 394f), Struct_1(false, vec4<u32>(29509u, 0u, 12483u, 1u), 34149u), Struct_1(false, vec4<u32>(4294967295u, 35963u, 1u, 0u), 0u)), vec3<bool>(false, true, true), Struct_2(vec4<f32>(550f, 1348f, -652f, 194f), Struct_1(true, vec4<u32>(4294967295u, 19155u, 1u, 1u), 23579u), Struct_1(true, vec4<u32>(4294967295u, 31236u, 59779u, 1u), 0u))), Struct_4(Struct_3(Struct_2(vec4<f32>(-605f, 154f, 1230f, -274f), Struct_1(true, vec4<u32>(4294967295u, 64955u, 66369u, 3649u), 1u), Struct_1(true, vec4<u32>(33651u, 0u, 23229u, 4294967295u), 4294967295u)), vec3<f32>(458f, -1104f, -888f), vec4<bool>(false, true, false, false), false), Struct_2(vec4<f32>(1503f, 1388f, -294f, 620f), Struct_1(false, vec4<u32>(7969u, 4294967295u, 9041u, 81641u), 0u), Struct_1(true, vec4<u32>(44005u, 4294967295u, 4294967295u, 101781u), 4294967295u)), vec3<bool>(true, false, false), Struct_2(vec4<f32>(1000f, -183f, 852f, 944f), Struct_1(true, vec4<u32>(0u, 22967u, 0u, 36995u), 0u), Struct_1(true, vec4<u32>(94u, 0u, 53252u, 0u), 51367u))), Struct_4(Struct_3(Struct_2(vec4<f32>(-286f, 1051f, -2159f, 1000f), Struct_1(false, vec4<u32>(1u, 0u, 92363u, 8388u), 4294967295u), Struct_1(true, vec4<u32>(24190u, 56523u, 4294967295u, 0u), 1u)), vec3<f32>(1000f, 191f, -154f), vec4<bool>(false, false, false, true), true), Struct_2(vec4<f32>(1010f, 984f, 718f, -1480f), Struct_1(false, vec4<u32>(9284u, 4294967295u, 44410u, 1u), 4294967295u), Struct_1(true, vec4<u32>(0u, 21020u, 1u, 1u), 1u)), vec3<bool>(true, true, true), Struct_2(vec4<f32>(1000f, 754f, -204f, 701f), Struct_1(true, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u), 4294967295u), Struct_1(true, vec4<u32>(0u, 48573u, 0u, 1u), 0u))), Struct_4(Struct_3(Struct_2(vec4<f32>(-634f, 729f, -178f, 786f), Struct_1(true, vec4<u32>(54774u, 84379u, 0u, 0u), 0u), Struct_1(true, vec4<u32>(1u, 13086u, 1u, 5858u), 97328u)), vec3<f32>(1272f, -2359f, 1472f), vec4<bool>(true, false, true, true), false), Struct_2(vec4<f32>(232f, -866f, 347f, -210f), Struct_1(true, vec4<u32>(86471u, 1u, 37695u, 1u), 4294967295u), Struct_1(false, vec4<u32>(15297u, 75953u, 0u, 4294967295u), 4294967295u)), vec3<bool>(true, false, true), Struct_2(vec4<f32>(688f, -1000f, 979f, 1100f), Struct_1(false, vec4<u32>(1u, 1u, 1u, 34516u), 360u), Struct_1(true, vec4<u32>(4294967295u, 61788u, 4359u, 4294967295u), 49262u))), Struct_4(Struct_3(Struct_2(vec4<f32>(1741f, 349f, 1542f, -366f), Struct_1(false, vec4<u32>(32335u, 4709u, 63u, 1u), 18149u), Struct_1(false, vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u), 0u)), vec3<f32>(1478f, 1000f, 332f), vec4<bool>(true, false, true, true), false), Struct_2(vec4<f32>(361f, -697f, 1000f, 2259f), Struct_1(true, vec4<u32>(55887u, 20262u, 1u, 21676u), 60080u), Struct_1(true, vec4<u32>(4294967295u, 1u, 41235u, 35695u), 63486u)), vec3<bool>(true, false, false), Struct_2(vec4<f32>(480f, -698f, 234f, 302f), Struct_1(true, vec4<u32>(23657u, 36322u, 51930u, 17549u), 17512u), Struct_1(true, vec4<u32>(1u, 2465u, 72596u, 4294967295u), 22213u))), Struct_4(Struct_3(Struct_2(vec4<f32>(-916f, -435f, -1221f, 1287f), Struct_1(false, vec4<u32>(0u, 56845u, 38846u, 1u), 1u), Struct_1(true, vec4<u32>(4294967295u, 58441u, 50843u, 10728u), 1u)), vec3<f32>(1486f, -296f, 422f), vec4<bool>(true, true, true, true), true), Struct_2(vec4<f32>(1637f, -340f, 255f, 228f), Struct_1(false, vec4<u32>(36959u, 1u, 55556u, 6131u), 1u), Struct_1(true, vec4<u32>(1u, 4294967295u, 12222u, 4294967295u), 6823u)), vec3<bool>(true, false, false), Struct_2(vec4<f32>(1000f, 269f, -988f, 161f), Struct_1(false, vec4<u32>(1u, 4294967295u, 29434u, 41811u), 4294967295u), Struct_1(false, vec4<u32>(1u, 95340u, 23599u, 10112u), 8217u))), Struct_4(Struct_3(Struct_2(vec4<f32>(-791f, -890f, 486f, -1154f), Struct_1(true, vec4<u32>(51095u, 4294967295u, 0u, 0u), 4294967295u), Struct_1(true, vec4<u32>(87129u, 2039u, 95482u, 0u), 0u)), vec3<f32>(-400f, -1375f, -326f), vec4<bool>(false, true, false, false), false), Struct_2(vec4<f32>(2559f, 1404f, -1825f, 577f), Struct_1(false, vec4<u32>(4294967295u, 1254u, 4294967295u, 4294967295u), 1u), Struct_1(false, vec4<u32>(0u, 54982u, 3270u, 1u), 21987u)), vec3<bool>(true, false, true), Struct_2(vec4<f32>(1236f, -274f, 1341f, -1637f), Struct_1(true, vec4<u32>(0u, 0u, 0u, 0u), 0u), Struct_1(true, vec4<u32>(1u, 43440u, 4294967295u, 0u), 1u))), Struct_4(Struct_3(Struct_2(vec4<f32>(2043f, -1016f, -1536f, 409f), Struct_1(true, vec4<u32>(4294967295u, 4294967295u, 0u, 14805u), 0u), Struct_1(true, vec4<u32>(36541u, 4294967295u, 4378u, 0u), 52836u)), vec3<f32>(-1552f, 1187f, -2203f), vec4<bool>(true, true, true, false), false), Struct_2(vec4<f32>(1342f, -451f, 972f, -410f), Struct_1(true, vec4<u32>(30433u, 0u, 52846u, 3396u), 29059u), Struct_1(false, vec4<u32>(89393u, 13503u, 0u, 4294967295u), 6589u)), vec3<bool>(true, false, false), Struct_2(vec4<f32>(-2205f, -1863f, -1393f, 1265f), Struct_1(true, vec4<u32>(41715u, 0u, 14227u, 0u), 1u), Struct_1(true, vec4<u32>(61816u, 1u, 1u, 16538u), 4294967295u))), Struct_4(Struct_3(Struct_2(vec4<f32>(-640f, -1000f, -1000f, -820f), Struct_1(false, vec4<u32>(37971u, 1u, 0u, 26667u), 0u), Struct_1(true, vec4<u32>(86459u, 37337u, 13684u, 0u), 4861u)), vec3<f32>(-352f, -1591f, -709f), vec4<bool>(false, false, false, false), false), Struct_2(vec4<f32>(1023f, 2134f, -2022f, 1020f), Struct_1(false, vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), 1u), Struct_1(true, vec4<u32>(4294967295u, 4294967295u, 43324u, 0u), 36720u)), vec3<bool>(false, false, false), Struct_2(vec4<f32>(-926f, -2347f, -611f, -685f), Struct_1(false, vec4<u32>(38013u, 4294967295u, 72181u, 96943u), 1u), Struct_1(true, vec4<u32>(23861u, 1u, 44246u, 2218u), 14979u))));

var<private> global2: array<bool, 5> = array<bool, 5>(true, false, true, true, false);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> vec2<f32> {
    let var_0 = u_input.a.yw;
    let var_1 = !select(select(vec4<bool>(true, true, true, !arg_0), vec4<bool>(arg_0, false, true, any(vec4<bool>(true, true, false, true))), vec4<bool>(arg_0, false, arg_0 & true, arg_0 | false)), select(vec4<bool>(arg_0, !arg_0, !global2[_wgslsmith_index_u32(0u, 5u)], arg_0), vec4<bool>(true, !global2[_wgslsmith_index_u32(1u, 5u)], u_input.a.x != var_0.x, true), !select(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(true, global2[_wgslsmith_index_u32(53942u, 5u)], arg_0, true), arg_0)), !(!global2[_wgslsmith_index_u32(0u, 5u)]));
    var var_2 = Struct_1(false, vec4<u32>(_wgslsmith_div_u32(firstTrailingBit(1u) & ~1u, ~6798u | _wgslsmith_clamp_u32(12100u, 4294967295u, 4294967295u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), _wgslsmith_mod_vec3_u32(~vec3<u32>(11741u, 1u, 0u), max(vec3<u32>(0u, 4294967295u, 41089u), vec3<u32>(5298u, 38342u, 0u)))), 1u, _wgslsmith_clamp_u32(1u, ~1u, ~1u)), _wgslsmith_mod_u32(1u, ~abs(51059u)));
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1245f))));
    var_2 = Struct_1(true, var_2.b, var_2.b.x);
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-111f, 342f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1136f, -121f) + vec2<f32>(635f, 812f))))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1295f, -359f))))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -476f))), 536f)));
}

fn func_2(arg_0: f32, arg_1: vec3<bool>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1000f - arg_0), _wgslsmith_f_op_f32(887f - _wgslsmith_div_f32(-2440f, arg_0))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) + _wgslsmith_f_op_vec2_f32(func_3(1370f <= arg_0))))));
    let var_1 = _wgslsmith_add_u32(~(~0u), _wgslsmith_div_u32(firstTrailingBit(~abs(0u)), 1u));
    let var_2 = 0u;
    let var_3 = vec2<bool>(any(!arg_1), var_1 <= ~var_1);
    global2 = array<bool, 5>();
    return _wgslsmith_clamp_vec4_u32(~select(~vec4<u32>(9103u, var_2, 20079u, 4294967295u), ~vec4<u32>(var_1, var_1, 74369u, 24169u) >> (vec4<u32>(1u, 1u, 741u, 12214u) % vec4<u32>(32u)), all(vec4<bool>(global2[_wgslsmith_index_u32(var_2, 5u)], false, false, var_3.x))), vec4<u32>(min(var_1, var_1), var_2, ~select(var_1, 31966u, false), ~7092u), _wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 18565u, var_2, var_2), vec4<u32>(var_1, (var_1 ^ 46378u) & ~4294967295u, 1u, ~var_2)));
}

fn func_1() -> bool {
    let var_0 = global1[_wgslsmith_index_u32(0u, 9u)];
    var var_1 = -786f;
    var_1 = 232f;
    let var_2 = ~func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.a.x * var_0.d.a.x), 566f)), vec3<bool>(true, true, global2[_wgslsmith_index_u32(var_0.d.b.c, 5u)]));
    var var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(var_0.a.a.a.yxw, vec3<f32>(var_0.a.a.a.x, _wgslsmith_f_op_f32(select(var_0.a.a.a.x, _wgslsmith_f_op_f32(f32(-1f) * -534f), var_0.a.d)), var_0.b.a.x)), var_0.a.b));
    return true & var_0.c.x;
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> Struct_3 {
    var var_0 = false;
    global0 = _wgslsmith_sub_vec3_i32(vec3<i32>(global0.x, u_input.a.x, reverseBits(1i)), min(abs(vec3<i32>(_wgslsmith_add_i32(global0.x, u_input.a.x), max(-47014i, global0.x), 38524i)), countOneBits(u_input.a.xyx)));
    let var_1 = false;
    var_0 = 1796u == (~1u ^ _wgslsmith_sub_u32(0u, ~func_2(arg_1.a.x, vec3<bool>(false, global2[_wgslsmith_index_u32(arg_1.b.c, 5u)], false)).x));
    var var_2 = _wgslsmith_dot_vec3_u32(arg_1.b.b.xwz, vec3<u32>(~arg_1.b.c, 76698u, _wgslsmith_div_u32(min(14277u, 81553u ^ arg_1.c.c), abs(~60999u))));
    return Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(arg_1.a.x, arg_1.a.x)), _wgslsmith_f_op_f32(arg_1.a.x + arg_1.a.x), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(2473f, arg_1.a.x, -1199f, -1022f), arg_1.a))), all(vec4<bool>(arg_0, true, true, arg_0)) | true)), arg_1.b, arg_1.c), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-901f * arg_1.a.x)), -167f, arg_1.a.x))), !vec4<bool>(arg_1.c.a, (arg_1.c.b.x ^ arg_1.b.b.x) < _wgslsmith_mod_u32(1u, arg_1.b.c), false, var_1), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.xz;
    let var_1 = func_4(func_1(), Struct_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1698f, 128f, 1016f, -252f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-851f, 762f, -1055f, -166f))), vec4<f32>(-579f, _wgslsmith_div_f32(378f, -529f), _wgslsmith_f_op_f32(-494f + 445f), _wgslsmith_f_op_f32(-996f * -1652f)))), Struct_1(false, func_2(-1105f, !vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 5u)], global2[_wgslsmith_index_u32(8135u, 5u)], true)), 0u), Struct_1(true, vec4<u32>(1u, 1u, 1u, 1u), ~(~45979u))));
    global2 = array<bool, 5>();
    var var_2 = func_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -575f)))) != var_1.a.a.x, func_4(all(var_1.c), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.a.a - vec4<f32>(-343f, 168f, 107f, var_1.a.a.x)) * vec4<f32>(var_1.b.x, var_1.b.x, -981f, var_1.b.x)), var_1.a.c, var_1.a.c)).a).a;
    var_0 = u_input.a.xz;
    let var_3 = Struct_3(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)), var_1.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1879f, var_2.a.x)), func_4(var_1.c.x, var_1.a).b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.a.x))), Struct_1(false, vec4<u32>(abs(var_1.a.c.b.x), _wgslsmith_mod_u32(var_2.c.c, var_1.a.c.c), _wgslsmith_mod_u32(0u, 39721u), 4294967295u), _wgslsmith_clamp_u32(0u >> (var_1.a.b.c % 32u), _wgslsmith_dot_vec4_u32(var_2.b.b, var_2.c.b), 1u)), Struct_1(true, vec4<u32>(func_4(global2[_wgslsmith_index_u32(34424u, 5u)], var_1.a).a.b.c, var_2.c.c, var_2.c.b.x, 1u), var_1.a.b.b.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_1.a.a.wyy, var_2.a.ywz, var_1.d))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, var_2.a.x, var_2.a.x) + vec3<f32>(-1181f, var_2.a.x, var_2.a.x))), vec3<f32>(-618f, var_1.b.x, var_2.a.x)), vec4<bool>(!((var_1.d == global2[_wgslsmith_index_u32(0u, 5u)]) & true), false, false, any(vec3<bool>(true, any(vec4<bool>(var_2.b.a, global2[_wgslsmith_index_u32(1u, 5u)], var_2.b.a, false)), false))), var_2.c.a);
    var_2 = Struct_2(var_2.a, Struct_1(all(select(vec2<bool>(true, true), vec2<bool>(true, var_1.d), any(vec3<bool>(var_3.d, true, global2[_wgslsmith_index_u32(var_2.c.c, 5u)])))), select(countOneBits(countOneBits(vec4<u32>(var_3.a.c.c, 0u, 1u, 0u))), (vec4<u32>(35921u, var_1.a.c.c, 0u, var_1.a.b.b.x) & var_2.b.b) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.b.b.x, var_2.b.b.x, var_1.a.b.b.x, var_2.b.c), vec4<u32>(1u, 0u, var_3.a.b.b.x, var_2.b.c)) % vec4<u32>(32u)), vec4<bool>(true, func_1(), false, var_2.b.a | false)), _wgslsmith_dot_vec3_u32(var_3.a.c.b.zyy & var_2.b.b.xxz, _wgslsmith_mod_vec3_u32(var_2.c.b.xzy, vec3<u32>(var_3.a.c.b.x, 24284u, var_2.c.b.x))) & _wgslsmith_div_u32(var_1.a.b.c, var_3.a.c.c)), var_3.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.a);
}

