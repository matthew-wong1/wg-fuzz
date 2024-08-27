struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<bool>, 20> = array<vec2<bool>, 20>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true));

var<private> global2: array<vec3<bool>, 12>;

var<private> global3: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(-154f, Struct_1(34132u, vec2<i32>(-1154i, -1i), vec4<u32>(1u, 1u, 2281u, 41683u), vec3<f32>(-311f, -2240f, 1147f), vec2<u32>(1u, 4294967295u)), 1i, vec2<f32>(956f, -385f), Struct_1(11046u, vec2<i32>(-23348i, -8501i), vec4<u32>(80929u, 1u, 18961u, 29759u), vec3<f32>(1277f, 141f, -443f), vec2<u32>(15427u, 0u))), Struct_2(-1693f, Struct_1(8947u, vec2<i32>(-1i, -1i), vec4<u32>(29464u, 400u, 79861u, 30887u), vec3<f32>(367f, 683f, 453f), vec2<u32>(4294967295u, 1u)), 3049i, vec2<f32>(137f, -627f), Struct_1(1u, vec2<i32>(0i, 28527i), vec4<u32>(53089u, 82111u, 77424u, 1u), vec3<f32>(-124f, -1631f, 1119f), vec2<u32>(0u, 0u))), Struct_2(-1886f, Struct_1(11231u, vec2<i32>(2060i, -6747i), vec4<u32>(1u, 1u, 4294967295u, 20476u), vec3<f32>(-742f, -284f, 589f), vec2<u32>(67506u, 1u)), 1i, vec2<f32>(-886f, 412f), Struct_1(4294967295u, vec2<i32>(7266i, 2147483647i), vec4<u32>(0u, 0u, 0u, 48261u), vec3<f32>(333f, 1000f, -1632f), vec2<u32>(1u, 1u))), Struct_2(-1000f, Struct_1(1u, vec2<i32>(-59129i, 10321i), vec4<u32>(1u, 43437u, 28698u, 11000u), vec3<f32>(-619f, -823f, -784f), vec2<u32>(124927u, 1u)), 1i, vec2<f32>(518f, -2191f), Struct_1(0u, vec2<i32>(33695i, 2147483647i), vec4<u32>(0u, 53487u, 1u, 0u), vec3<f32>(1075f, 912f, 262f), vec2<u32>(1u, 4294967295u))), Struct_2(-1304f, Struct_1(4294967295u, vec2<i32>(0i, -1i), vec4<u32>(21873u, 23534u, 1u, 10448u), vec3<f32>(1000f, -1000f, -675f), vec2<u32>(4294967295u, 0u)), -4895i, vec2<f32>(108f, -603f), Struct_1(49349u, vec2<i32>(15788i, i32(-2147483648)), vec4<u32>(0u, 1u, 1u, 53649u), vec3<f32>(-1000f, 296f, -1377f), vec2<u32>(4294967295u, 4294967295u))), Struct_2(1235f, Struct_1(1u, vec2<i32>(-6591i, 2392i), vec4<u32>(7172u, 1u, 4294967295u, 1u), vec3<f32>(-727f, 1566f, 844f), vec2<u32>(1u, 0u)), -1358i, vec2<f32>(-1801f, -260f), Struct_1(59549u, vec2<i32>(0i, -12530i), vec4<u32>(1u, 21136u, 44017u, 0u), vec3<f32>(-263f, -181f, -217f), vec2<u32>(2754u, 1u))), Struct_2(1842f, Struct_1(4294967295u, vec2<i32>(0i, 27656i), vec4<u32>(4294967295u, 1u, 13943u, 0u), vec3<f32>(-952f, 1114f, -1467f), vec2<u32>(4294967295u, 38412u)), 17959i, vec2<f32>(-1195f, -1780f), Struct_1(5619u, vec2<i32>(2147483647i, -18849i), vec4<u32>(14952u, 0u, 1u, 4294967295u), vec3<f32>(-2029f, -2087f, -690f), vec2<u32>(4294967295u, 4294967295u))), Struct_2(-1000f, Struct_1(4294967295u, vec2<i32>(3802i, 17808i), vec4<u32>(4294967295u, 4294967295u, 0u, 0u), vec3<f32>(748f, -237f, -1007f), vec2<u32>(47360u, 4294967295u)), 2345i, vec2<f32>(-171f, 547f), Struct_1(6437u, vec2<i32>(12642i, 19320i), vec4<u32>(0u, 4294967295u, 46622u, 0u), vec3<f32>(1000f, 615f, -895f), vec2<u32>(66284u, 1u))));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_0.e;
    global1 = array<vec2<bool>, 20>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, var_0.d.x, arg_1, var_0.d.x) + vec4<f32>(1874f, 1901f, -984f, -732f)))) + vec4<f32>(836f, -164f, arg_1, -853f)));
    let var_2 = _wgslsmith_clamp_u32(~(~(var_0.e.x & 28274u) | 0u), arg_3.e.x, ~_wgslsmith_mult_u32(var_0.c.x, _wgslsmith_mod_u32(0u, 4294967295u)) | (~firstTrailingBit(4294967295u) << (~10007u % 32u)));
    let var_3 = 9881u;
    return Struct_1(arg_0.e.c.x, -arg_0.b.b >> ((arg_0.e.e ^ ~arg_0.b.c.xz) % vec2<u32>(32u)), countOneBits(arg_0.e.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(arg_3.d, vec3<f32>(-305f, -1000f, arg_0.a)))), var_0.d))), _wgslsmith_mod_vec2_u32(u_input.a.wx, countOneBits(u_input.b)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec3<u32>, arg_3: u32) -> bool {
    var var_0 = 170f > _wgslsmith_div_f32(-2386f, arg_0.e.d.x);
    var var_1 = -60793i;
    let var_2 = arg_0.e;
    var var_3 = select(!select(vec4<bool>(true, true, true, true), vec4<bool>(all(global2[_wgslsmith_index_u32(arg_0.e.c.x, 12u)]), true, true, -1258f >= arg_0.e.d.x), any(vec3<bool>(true, true, true))), vec4<bool>(~14414u < _wgslsmith_clamp_u32(func_2(Struct_2(-702f, Struct_1(0u, vec2<i32>(-1i, arg_1), arg_0.e.c, vec3<f32>(arg_0.e.d.x, var_2.d.x, 164f), vec2<u32>(arg_3, arg_0.b.c.x)), arg_1, vec2<f32>(-1326f, -1113f), Struct_1(arg_2.x, vec2<i32>(-1i, -1i), vec4<u32>(arg_2.x, var_2.a, arg_2.x, 0u), var_2.d, u_input.a.zw)), arg_0.a, vec4<bool>(false, true, true, true), var_2).e.x, 26307u, max(arg_2.x, u_input.b.x)), false, all(select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(false, true), true)), abs(_wgslsmith_sub_u32(7237u, arg_0.b.c.x)) >= ~arg_3), all(vec3<bool>(any(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(19177u, arg_3), 12u)]), true, select(true, false, false) && true)));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.x)) * 236f);
    return true;
}

fn func_1() -> u32 {
    global2 = array<vec3<bool>, 12>();
    var var_0 = !vec2<bool>(select(false, true, false), func_3(Struct_2(_wgslsmith_f_op_f32(-796f * 1000f), Struct_1(u_input.b.x, vec2<i32>(-9364i, 2147483647i), u_input.a, vec3<f32>(428f, 714f, -712f), vec2<u32>(4294967295u, 3486u)), ~0i, vec2<f32>(1000f, 170f), func_2(Struct_2(-700f, Struct_1(u_input.b.x, vec2<i32>(-24218i, 9976i), u_input.a, vec3<f32>(1041f, 233f, -246f), vec2<u32>(69865u, u_input.a.x)), -37516i, vec2<f32>(-153f, 262f), Struct_1(u_input.b.x, vec2<i32>(-39279i, -2147483647i), vec4<u32>(u_input.b.x, 1u, 1u, u_input.b.x), vec3<f32>(-195f, -757f, 1066f), vec2<u32>(u_input.a.x, 4294967295u))), 989f, vec4<bool>(false, true, false, false), Struct_1(4294967295u, vec2<i32>(0i, 1i), u_input.a, vec3<f32>(-1148f, 360f, 1555f), u_input.b))), countOneBits(-62641i), u_input.a.wxz, ~52328u));
    var var_1 = ~(vec3<i32>(1i, 54681i, 1i) & select(select(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, 0i), vec3<i32>(-35029i, 51769i, -1i)), firstTrailingBit(vec3<i32>(-7351i, 20095i, 0i)), !vec3<bool>(var_0.x, var_0.x, true)), ~vec3<i32>(0i, 1i, 2723i), all(select(global1[_wgslsmith_index_u32(4294967295u, 20u)], vec2<bool>(var_0.x, var_0.x), global1[_wgslsmith_index_u32(1128u, 20u)]))));
    let var_2 = func_2(global3[_wgslsmith_index_u32(abs(1u), 8u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1308f)), vec4<bool>(!var_0.x, func_2(Struct_2(1113f, Struct_1(4294967295u, vec2<i32>(var_1.x, 2943i), u_input.a, vec3<f32>(981f, -121f, -1419f), vec2<u32>(u_input.a.x, 4294967295u)), 40902i, vec2<f32>(-233f, 168f), Struct_1(u_input.a.x, vec2<i32>(27525i, var_1.x), u_input.a, vec3<f32>(-1811f, 272f, 1000f), vec2<u32>(118578u, 1u))), 152f, vec4<bool>(var_0.x, var_0.x, var_0.x, false), Struct_1(u_input.a.x, var_1.xy, vec4<u32>(u_input.a.x, u_input.a.x, 25672u, 56193u), vec3<f32>(-689f, -1777f, 1000f), u_input.b)).b.x > (-35820i >> (abs(u_input.b.x) % 32u)), all(!vec2<bool>(var_0.x, var_0.x)), true), func_2(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(596f)) + -1098f), func_2(global3[_wgslsmith_index_u32(0u, 8u)], 169f, select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(false, true, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, false)), func_2(Struct_2(1000f, Struct_1(u_input.a.x, vec2<i32>(var_1.x, var_1.x), vec4<u32>(25726u, 42232u, 0u, 0u), vec3<f32>(-1000f, 483f, 1000f), vec2<u32>(u_input.a.x, u_input.b.x)), 30850i, vec2<f32>(-687f, -531f), Struct_1(u_input.b.x, vec2<i32>(var_1.x, 104621i), vec4<u32>(u_input.a.x, 1u, 61889u, u_input.a.x), vec3<f32>(917f, -1640f, -338f), vec2<u32>(1u, 1u))), 241f, vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), Struct_1(78817u, var_1.xx, u_input.a, vec3<f32>(1167f, -1106f, -474f), u_input.b))), i32(-1i) * -2147483647i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1383f, 854f))), Struct_1(u_input.b.x, select(vec2<i32>(57644i, -18054i), var_1.xx, global1[_wgslsmith_index_u32(4294967295u, 20u)]), vec4<u32>(18443u, 40181u, u_input.a.x, 1u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(542f, -690f, 309f)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, u_input.b.x), u_input.a.ww))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -438f))), select(vec4<bool>(var_0.x, true, true, var_0.x == var_0.x), vec4<bool>(!var_0.x, false, any(global2[_wgslsmith_index_u32(4294967295u, 12u)]), var_0.x | true), var_0.x), Struct_1(min(~u_input.a.x, ~u_input.a.x), ~vec2<i32>(var_1.x, var_1.x), u_input.a, vec3<f32>(_wgslsmith_f_op_f32(min(1123f, 1550f)), _wgslsmith_f_op_f32(-1040f * -1450f), _wgslsmith_f_op_f32(1356f - 1392f)), firstTrailingBit(~u_input.b))));
    let var_3 = var_2.d;
    return ~var_2.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.wwx;
    global0 = var_0.x;
    var var_1 = !(!select(global1[_wgslsmith_index_u32((u_input.a.x >> (var_0.x % 32u)) & func_1(), 20u)], vec2<bool>(all(vec4<bool>(false, false, false, true)), all(global1[_wgslsmith_index_u32(12725u, 20u)])), vec2<bool>(true, true)));
    let var_2 = vec3<u32>(14517u, 44520u, _wgslsmith_sub_u32(37774u, min(4294967295u, 1u)));
    var var_3 = func_2(Struct_2(func_2(global3[_wgslsmith_index_u32(68671u, 8u)], _wgslsmith_f_op_f32(-333f * -655f), !select(vec4<bool>(var_1.x, false, false, true), vec4<bool>(true, var_1.x, false, true), vec4<bool>(false, false, true, var_1.x)), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, 1u, 20652u), vec3<u32>(1u, 1u, var_0.x)), vec2<i32>(1i, 1i), u_input.a | u_input.a, vec3<f32>(-1009f, 621f, 2166f), ~vec2<u32>(u_input.a.x, 4294967295u))).d.x, func_2(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(20523u, u_input.b.x), 8u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1111f, -210f)) - _wgslsmith_f_op_f32(1323f - 1038f)), select(vec4<bool>(var_1.x, var_1.x, false, false), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), false), Struct_1(~var_0.x, _wgslsmith_mod_vec2_i32(vec2<i32>(-53977i, 21853i), vec2<i32>(-16357i, 6551i)), _wgslsmith_sub_vec4_u32(u_input.a, u_input.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(240f, -1531f, -521f)), var_2.yz >> (var_2.xz % vec2<u32>(32u)))), countOneBits(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(-47110i, -1i)), abs(vec2<i32>(0i, -39973i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-143f, 1662f)), vec2<f32>(-210f, 247f)))), func_2(Struct_2(_wgslsmith_f_op_f32(1000f + 199f), Struct_1(var_0.x, vec2<i32>(-2147483647i, 1i), vec4<u32>(1u, 1u, u_input.b.x, 4294967295u), vec3<f32>(-1000f, -212f, 742f), u_input.b), firstTrailingBit(2147483647i), _wgslsmith_f_op_vec2_f32(vec2<f32>(239f, -880f) + vec2<f32>(1186f, 100f)), Struct_1(4294967295u, vec2<i32>(2147483647i, -2147483647i), u_input.a, vec3<f32>(-644f, 489f, -1110f), var_2.yx)), func_2(global3[_wgslsmith_index_u32(u_input.a.x, 8u)], _wgslsmith_f_op_f32(select(-275f, -869f, var_1.x)), select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(false, var_1.x, var_1.x, var_1.x)), Struct_1(var_0.x, vec2<i32>(-1i, 0i), u_input.a, vec3<f32>(401f, -134f, 2940f), vec2<u32>(81753u, u_input.b.x))).d.x, select(!vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(false, true, false, var_1.x), true), Struct_1(var_0.x, _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 31870i), vec2<i32>(13776i, 20121i), vec2<i32>(25059i, 31005i)), u_input.a, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 465f, -1000f), vec3<f32>(-820f, -346f, 1783f), var_1.x)), u_input.b))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(2147f, -881f)), -1017f)), -740f)))), select(vec4<bool>(var_2.x >= func_1(), true, var_1.x, select(any(vec4<bool>(true, true, var_1.x, var_1.x)), var_1.x, var_1.x & var_1.x)), vec4<bool>(var_1.x, var_1.x, var_1.x, any(select(vec3<bool>(var_1.x, var_1.x, var_1.x), global2[_wgslsmith_index_u32(var_2.x, 12u)], vec3<bool>(false, var_1.x, true)))), var_1.x & var_1.x), func_2(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -278f), Struct_1(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(var_2.x, var_2.x)), max(vec2<i32>(0i, 26753i), vec2<i32>(-2147483647i, 0i)), u_input.a, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-512f, 946f, 1000f), vec3<f32>(-1000f, -391f, -922f))), u_input.b), ~35753i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-575f, 473f), vec2<f32>(-615f, -233f), true)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-333f, -1450f) + vec2<f32>(-1003f, -581f))), func_2(Struct_2(1683f, Struct_1(u_input.b.x, vec2<i32>(2147483647i, 2147483647i), u_input.a, vec3<f32>(-1000f, 1148f, -1295f), u_input.a.xw), 38350i, vec2<f32>(-356f, -1862f), Struct_1(var_0.x, vec2<i32>(2147483647i, -2147483647i), u_input.a, vec3<f32>(869f, 1783f, -403f), vec2<u32>(u_input.b.x, 99461u))), _wgslsmith_f_op_f32(step(-1594f, 113f)), vec4<bool>(false, false, var_1.x, var_1.x), func_2(global3[_wgslsmith_index_u32(var_2.x, 8u)], 1193f, vec4<bool>(var_1.x, var_1.x, var_1.x, false), Struct_1(0u, vec2<i32>(2147483647i, 1i), u_input.a, vec3<f32>(-932f, -458f, 1374f), vec2<u32>(var_0.x, var_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1535f)) * _wgslsmith_f_op_f32(abs(-970f))), select(select(select(vec4<bool>(true, false, var_1.x, false), vec4<bool>(var_1.x, true, true, true), false), !vec4<bool>(true, true, var_1.x, false), vec4<bool>(var_1.x, false, true, true)), select(vec4<bool>(var_1.x, true, var_1.x, true), !vec4<bool>(false, var_1.x, var_1.x, var_1.x), true), !var_1.x), func_2(Struct_2(-1000f, func_2(Struct_2(-1000f, Struct_1(10302u, vec2<i32>(-2147483647i, 1i), vec4<u32>(62752u, 11445u, var_0.x, 24703u), vec3<f32>(-497f, 520f, -514f), var_0.yx), 0i, vec2<f32>(-1492f, 1680f), Struct_1(var_2.x, vec2<i32>(1i, 0i), vec4<u32>(var_0.x, 4294967295u, var_2.x, 0u), vec3<f32>(688f, 1749f, -335f), vec2<u32>(4294967295u, 1u))), 557f, vec4<bool>(var_1.x, false, false, false), Struct_1(38468u, vec2<i32>(1i, 31124i), u_input.a, vec3<f32>(154f, -1629f, 238f), var_2.yy)), _wgslsmith_div_i32(-1i, 1i), vec2<f32>(-1154f, 101f), Struct_1(var_2.x, vec2<i32>(-770i, -1i), vec4<u32>(64910u, var_2.x, 84522u, var_2.x), vec3<f32>(-603f, 1232f, -589f), u_input.a.zz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1717f, 548f))), !select(vec4<bool>(true, var_1.x, false, true), vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(var_1.x, false, true, var_1.x)), func_2(Struct_2(-737f, Struct_1(4042u, vec2<i32>(-23091i, -1i), vec4<u32>(var_2.x, u_input.a.x, 59285u, u_input.b.x), vec3<f32>(-1000f, 978f, -1239f), var_0.yz), -2147483647i, vec2<f32>(1572f, -723f), Struct_1(u_input.b.x, vec2<i32>(1i, -42409i), u_input.a, vec3<f32>(240f, 1000f, -500f), u_input.a.xz)), -1408f, select(vec4<bool>(false, true, var_1.x, var_1.x), vec4<bool>(false, var_1.x, true, var_1.x), var_1.x), Struct_1(4294967295u, vec2<i32>(-33720i, 34489i), vec4<u32>(var_0.x, 7994u, 103910u, 55330u), vec3<f32>(1219f, 804f, 1000f), var_2.xz)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1541f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(992f, var_3.d.x))))), 46100i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1298f, _wgslsmith_f_op_f32(ceil(-1110f)), var_3.d.x, func_2(global3[_wgslsmith_index_u32(~74206u, 8u)], 673f, select(vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(var_1.x, false, var_1.x, true), true), func_2(global3[_wgslsmith_index_u32(var_0.x, 8u)], var_3.d.x, vec4<bool>(var_1.x, true, var_1.x, false), Struct_1(var_2.x, var_3.b, u_input.a, var_3.d, vec2<u32>(var_3.c.x, 20033u)))).d.x)), ~vec3<i32>(var_3.b.x, _wgslsmith_div_i32(_wgslsmith_add_i32(var_3.b.x, -44216i), _wgslsmith_mult_i32(var_3.b.x, var_3.b.x)), -firstLeadingBit(var_3.b.x)), 41872u);
}

