struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
    c: vec3<f32>,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 17> = array<vec2<f32>, 17>(vec2<f32>(522f, 790f), vec2<f32>(151f, 712f), vec2<f32>(385f, -1114f), vec2<f32>(-1625f, -410f), vec2<f32>(-1178f, -2778f), vec2<f32>(-1273f, 605f), vec2<f32>(-560f, 211f), vec2<f32>(-786f, -640f), vec2<f32>(-1077f, 823f), vec2<f32>(-604f, -409f), vec2<f32>(-1209f, 1088f), vec2<f32>(-668f, 640f), vec2<f32>(-1078f, 864f), vec2<f32>(135f, -124f), vec2<f32>(901f, -316f), vec2<f32>(-316f, -614f), vec2<f32>(-1317f, -1284f));

var<private> global1: array<Struct_2, 15>;

var<private> global2: array<u32, 16> = array<u32, 16>(1u, 1u, 1u, 1u, 0u, 57573u, 43823u, 37496u, 21565u, 4294967295u, 1u, 0u, 17207u, 0u, 0u, 4294967295u);

var<private> global3: array<u32, 19> = array<u32, 19>(4294967295u, 33227u, 4521u, 1u, 4294967295u, 0u, 14346u, 14318u, 71135u, 4294967295u, 71504u, 17048u, 996u, 45794u, 4294967295u, 4294967295u, 4294967295u, 27237u, 0u);

var<private> global4: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(true, vec4<u32>(4294967295u, 4294967295u, 29476u, 4294967295u), vec3<f32>(-2191f, -105f, -2716f), 2147483647i), Struct_3(true, vec4<u32>(0u, 1u, 78841u, 0u), vec3<f32>(-644f, 501f, 1023f), -1i), Struct_3(true, vec4<u32>(150792u, 0u, 51457u, 14120u), vec3<f32>(856f, -259f, -802f), i32(-2147483648)), Struct_3(true, vec4<u32>(34827u, 4294967295u, 0u, 46928u), vec3<f32>(2377f, -1329f, -1326f), i32(-2147483648)), Struct_3(false, vec4<u32>(0u, 79115u, 0u, 31866u), vec3<f32>(554f, -269f, 1707f), -1i), Struct_3(false, vec4<u32>(55766u, 17895u, 4294967295u, 4068u), vec3<f32>(1000f, -360f, -409f), -38051i), Struct_3(false, vec4<u32>(76106u, 4294967295u, 95039u, 28657u), vec3<f32>(-113f, 360f, -240f), -1i), Struct_3(false, vec4<u32>(93973u, 13677u, 43747u, 0u), vec3<f32>(-834f, 1109f, 2182f), i32(-2147483648)), Struct_3(false, vec4<u32>(12878u, 1u, 4294967295u, 109u), vec3<f32>(1534f, 463f, 1000f), 0i), Struct_3(true, vec4<u32>(1u, 37102u, 4294967295u, 26312u), vec3<f32>(196f, 935f, -593f), 21829i), Struct_3(false, vec4<u32>(0u, 4294967295u, 63158u, 0u), vec3<f32>(-734f, -316f, 192f), -23022i), Struct_3(false, vec4<u32>(53673u, 1u, 518u, 4294967295u), vec3<f32>(-787f, -239f, 1139f), 61131i), Struct_3(true, vec4<u32>(31549u, 33711u, 59881u, 0u), vec3<f32>(-1147f, -634f, 1155f), 15690i), Struct_3(true, vec4<u32>(1u, 35671u, 63485u, 52192u), vec3<f32>(-632f, 1000f, 1000f), 2147483647i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<u32>) -> vec4<u32> {
    global4 = array<Struct_3, 14>();
    var var_0 = reverseBits(firstLeadingBit(-9181i));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1243f)) * _wgslsmith_f_op_f32(f32(-1f) * -1236f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(382f + 365f), -491f))))), _wgslsmith_div_f32(-1000f, 1f)));
    global3 = array<u32, 19>();
    var var_2 = Struct_1(arg_0.x, vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 34057i), vec2<i32>(u_input.a.x, -u_input.b.x)), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 10484i, -10487i), max(vec3<i32>(u_input.b.x, -17907i, -1i), vec3<i32>(u_input.a.x, 1i, 5673i))), min(min(-1i, u_input.a.x), u_input.a.x), firstTrailingBit(~abs(u_input.a.x))), _wgslsmith_f_op_vec2_f32(floor(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.c.x, u_input.c.x, 112994u) ^ vec4<u32>(0u, global3[_wgslsmith_index_u32(1u, 19u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(52799u, 16u)], 16u)], 19u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 19u)], 16u)]), ~vec4<u32>(102344u, 0u, 46127u, 57064u)), 17u)])), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 * var_1), 105f)), var_1, _wgslsmith_f_op_f32(floor(var_1))));
    return ~_wgslsmith_add_vec4_u32(abs(firstTrailingBit(~vec4<u32>(1u, u_input.c.x, 4294967295u, arg_0.x))), abs(~vec4<u32>(0u, global3[_wgslsmith_index_u32(u_input.d.x, 19u)], 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.x, 16u)], 16u)])));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: u32) -> Struct_4 {
    global1 = array<Struct_2, 15>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, _wgslsmith_f_op_f32(trunc(-573f)), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(min(-249f, 1159f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(341f, 1520f, arg_1, -287f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(181f, 565f, -1342f, arg_1)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1795f, 1184f, 1058f, arg_1)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -601f, 1238f, arg_1)))));
    let var_1 = arg_0;
    let var_2 = 15415i;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), 141f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) + var_0.x)))));
    return Struct_4(Struct_3(false, (func_3(u_input.c.zy) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(14548u, global3[_wgslsmith_index_u32(7035u, 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 19u)], 16u)], 16u)], 4294967295u), vec4<u32>(1u, 69970u, global2[_wgslsmith_index_u32(arg_2, 16u)], 12697u), vec4<u32>(u_input.c.x, global3[_wgslsmith_index_u32(arg_2, 19u)], 0u, 0u))) | ~vec4<u32>(global2[_wgslsmith_index_u32(26371u, 16u)], 43668u, 4294967295u, global3[_wgslsmith_index_u32(u_input.c.x, 19u)]), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, arg_1, var_3.x))))), u_input.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1566f, var_3.x, 196f, arg_1))) - var_0), vec4<f32>(1000f, _wgslsmith_f_op_f32(abs(var_3.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.x, -1480f))))), _wgslsmith_f_op_f32(f32(-1f) * -2174f)));
}

fn func_1(arg_0: Struct_3) -> f32 {
    let var_0 = func_2(!any(select(vec2<bool>(true, true), vec2<bool>(true, false), false)), arg_0.c.x, ~min(global3[_wgslsmith_index_u32(3323u, 19u)], _wgslsmith_div_u32(max(u_input.d.x, 39664u), 1u)));
    let var_1 = !(countOneBits(-u_input.b.x) <= countOneBits(_wgslsmith_sub_i32(_wgslsmith_sub_i32(0i, 21527i), -2147483647i)));
    var var_2 = Struct_4(func_2(!all(vec3<bool>(false, true, true)), 1696f, (~u_input.c.x ^ _wgslsmith_mult_u32(0u, 0u)) & 0u).a, _wgslsmith_f_op_vec4_f32(-var_0.b), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x + var_0.c.x)) - arg_0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(arg_0.a, arg_0.c.x, arg_0.b.x).c.x * arg_0.c.x) + -205f), -447f, _wgslsmith_f_op_f32(floor(var_0.a.c.x))));
    var var_3 = arg_0.c;
    let var_4 = func_2(!(!var_0.a.a), _wgslsmith_f_op_f32(f32(-1f) * -1282f), ~0u).a;
    return var_4.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_3(false, vec4<u32>(0u, 4294967295u, global3[_wgslsmith_index_u32(23483u, 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d.x, 19u)], 16u)], 16u)]), vec3<f32>(-650f, 119f, -1999f), -2147483647i)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2019f))), _wgslsmith_f_op_f32(f32(-1f) * -1056f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1000f)))), 1665f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-440f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-433f, -932f))), -1000f, -562f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(847f, 1419f, 529f, -1107f) - vec4<f32>(650f, -806f, -552f, 656f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(762f, 182f, 516f, -471f) + func_2(true, -648f, 24301u).c))));
    let var_1 = u_input.b.wy;
    var var_2 = -12759i;
    var var_3 = Struct_1(~(~1u), vec4<i32>(u_input.b.x | u_input.b.x, ~var_1.x, -25058i, 1i) & vec4<i32>(max(var_1.x, u_input.a.x), u_input.a.x, ~(~11005i), ~(~u_input.a.x)), var_0.xw, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - -1087f), 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, var_0.x)))))));
    var_3 = Struct_1(min(~(~var_3.a), ~1u), vec4<i32>(abs(-func_2(false, -472f, 106710u).a.d), _wgslsmith_div_i32(u_input.a.x, var_3.b.x), 1i, u_input.a.x), var_3.d.yz, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(481f * 2690f), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + -366f))))));
    var_3 = Struct_1(var_3.a, _wgslsmith_sub_vec4_i32(~reverseBits(var_3.b), abs(var_3.b)) << (~(~(vec4<u32>(u_input.c.x, u_input.c.x, var_3.a, 20223u) << (vec4<u32>(u_input.d.x, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c.x, 19u)], 16u)], u_input.d.x, u_input.d.x) % vec4<u32>(32u)))) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_3.d.x, _wgslsmith_f_op_f32(func_1(Struct_3(false, vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 16u)], 19u)], 35858u, var_3.a), vec3<f32>(1000f, -1002f, -1271f), 0i)))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(233f, var_3.d.x), var_3.d.yx)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.zxw, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, 496f), var_3.d, false))))));
    var var_4 = _wgslsmith_f_op_f32(var_3.c.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1753f) - -1050f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_3.d.x))), func_2(all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false)), _wgslsmith_f_op_f32(f32(-1f) * -332f), var_3.a).c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_dot_vec3_i32(-vec3<i32>(~var_3.b.x, u_input.b.x, 0i), (u_input.a.zxy << (_wgslsmith_clamp_vec3_u32(vec3<u32>(30490u, global2[_wgslsmith_index_u32(42155u, 16u)], var_3.a), vec3<u32>(u_input.c.x, var_3.a, 1u), u_input.c) % vec3<u32>(32u))) << (~(vec3<u32>(global3[_wgslsmith_index_u32(1u, 19u)], global2[_wgslsmith_index_u32(4294967295u, 16u)], global2[_wgslsmith_index_u32(53874u, 16u)]) ^ vec3<u32>(u_input.d.x, 101092u, u_input.c.x)) % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.x, -abs(-41410i), 19854i), vec3<i32>(28575i, _wgslsmith_div_i32(i32(-1i) * -2147483647i, -u_input.a.x), ~_wgslsmith_dot_vec4_i32(u_input.a, u_input.b))), -1i, var_3.d);
}

