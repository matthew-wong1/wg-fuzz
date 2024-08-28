struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: vec4<f32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec2<bool>,
    d: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: u32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -30887i;

var<private> global1: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(vec4<u32>(61565u, 4294967295u, 28086u, 0u), false, vec4<f32>(-167f, -378f, -687f, -594f), vec4<u32>(1u, 17038u, 20435u, 21694u)), Struct_2(vec4<u32>(58500u, 0u, 8904u, 49789u), true, vec4<f32>(635f, -995f, 410f, 223f), vec4<u32>(12869u, 56619u, 4294967295u, 4294967295u)), Struct_2(vec4<u32>(19541u, 123733u, 18985u, 5775u), true, vec4<f32>(-1048f, -751f, -703f, -423f), vec4<u32>(63167u, 53763u, 38920u, 4187u)), Struct_2(vec4<u32>(67706u, 4294967295u, 96939u, 8348u), false, vec4<f32>(536f, -1433f, -1412f, -465f), vec4<u32>(0u, 24516u, 34532u, 52066u)), Struct_2(vec4<u32>(67486u, 0u, 23021u, 84586u), true, vec4<f32>(-1198f, 629f, 1481f, -225f), vec4<u32>(4294967295u, 1u, 47134u, 89493u)), Struct_2(vec4<u32>(76106u, 59425u, 0u, 54784u), false, vec4<f32>(-2009f, -1192f, -2033f, -1366f), vec4<u32>(62849u, 1u, 9361u, 27781u)), Struct_2(vec4<u32>(0u, 9067u, 22127u, 4294967295u), false, vec4<f32>(498f, 947f, -186f, 283f), vec4<u32>(1u, 1u, 0u, 1u)), Struct_2(vec4<u32>(31185u, 34903u, 1u, 35038u), true, vec4<f32>(403f, 243f, -654f, 148f), vec4<u32>(723u, 0u, 13433u, 4294967295u)), Struct_2(vec4<u32>(0u, 0u, 0u, 98394u), false, vec4<f32>(1928f, -1892f, 886f, 577f), vec4<u32>(4294967295u, 4294967295u, 1u, 1u)), Struct_2(vec4<u32>(62736u, 1u, 48639u, 4294967295u), false, vec4<f32>(-849f, -841f, 165f, -1000f), vec4<u32>(0u, 482u, 86395u, 104610u)), Struct_2(vec4<u32>(0u, 4294967295u, 0u, 57264u), false, vec4<f32>(1844f, -1000f, 1294f, -173f), vec4<u32>(66705u, 29204u, 4294967295u, 67199u)), Struct_2(vec4<u32>(11546u, 0u, 27542u, 0u), true, vec4<f32>(-269f, -1208f, -364f, 1019f), vec4<u32>(1u, 4294967295u, 1u, 25552u)), Struct_2(vec4<u32>(82415u, 96829u, 4294967295u, 53938u), true, vec4<f32>(254f, 1741f, -1976f, 1239f), vec4<u32>(0u, 0u, 1u, 4294967295u)), Struct_2(vec4<u32>(4294967295u, 4381u, 71767u, 4294967295u), true, vec4<f32>(894f, 1000f, -677f, -1511f), vec4<u32>(0u, 39135u, 84261u, 4294967295u)), Struct_2(vec4<u32>(29702u, 4294967295u, 21845u, 1u), true, vec4<f32>(-424f, 1317f, 236f, -674f), vec4<u32>(4294967295u, 21227u, 57731u, 4294967295u)), Struct_2(vec4<u32>(6216u, 0u, 4294967295u, 4294967295u), false, vec4<f32>(-445f, -1000f, -555f, 820f), vec4<u32>(16001u, 18459u, 1u, 0u)), Struct_2(vec4<u32>(98350u, 1u, 49514u, 4294967295u), true, vec4<f32>(2266f, 1244f, 428f, -1861f), vec4<u32>(51907u, 24170u, 0u, 0u)), Struct_2(vec4<u32>(7125u, 4294967295u, 1u, 1967u), false, vec4<f32>(-754f, -1148f, 677f, -709f), vec4<u32>(1u, 4294967295u, 30861u, 4294967295u)), Struct_2(vec4<u32>(0u, 21147u, 1u, 13317u), true, vec4<f32>(247f, -320f, -1000f, -687f), vec4<u32>(0u, 1u, 0u, 4294967295u)), Struct_2(vec4<u32>(27688u, 7905u, 4294967295u, 47056u), false, vec4<f32>(-806f, -686f, 467f, 168f), vec4<u32>(4294967295u, 143907u, 4294967295u, 21186u)), Struct_2(vec4<u32>(1u, 0u, 0u, 4294967295u), false, vec4<f32>(547f, 1114f, -167f, 1332f), vec4<u32>(0u, 1u, 38042u, 4294967295u)), Struct_2(vec4<u32>(1u, 4294967295u, 57904u, 4294967295u), true, vec4<f32>(-375f, -2805f, 140f, 129f), vec4<u32>(0u, 4294967295u, 1u, 4294967295u)), Struct_2(vec4<u32>(4294967295u, 7515u, 0u, 1u), false, vec4<f32>(1383f, 706f, -342f, -352f), vec4<u32>(67911u, 68463u, 74721u, 56422u)), Struct_2(vec4<u32>(39693u, 0u, 4294967295u, 4714u), false, vec4<f32>(-241f, -2154f, 1199f, -1132f), vec4<u32>(4848u, 49192u, 4294967295u, 21805u)), Struct_2(vec4<u32>(12714u, 50572u, 4294967295u, 61584u), false, vec4<f32>(-1064f, 1000f, -1193f, -199f), vec4<u32>(4294967295u, 0u, 35685u, 1u)), Struct_2(vec4<u32>(23015u, 1u, 38833u, 1u), true, vec4<f32>(-109f, -808f, 642f, -373f), vec4<u32>(0u, 4294967295u, 4294967295u, 25472u)), Struct_2(vec4<u32>(9734u, 5617u, 45099u, 1u), false, vec4<f32>(-640f, -507f, 1750f, -1349f), vec4<u32>(101541u, 1u, 52043u, 0u)));

var<private> global2: u32 = 1u;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec2<f32>, arg_1: bool) -> i32 {
    let var_0 = ~1u;
    global2 = min(~(u_input.a.x | (u_input.c | 21852u)), abs(reverseBits(u_input.a.x)));
    var var_1 = Struct_3(arg_0, min(vec4<i32>(_wgslsmith_clamp_i32(u_input.b.x, -2147483647i, 27227i), -18248i, ~u_input.b.x, 0i) ^ ~vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 1i), vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(38179i, -1i, 12971i, u_input.b.x), -vec4<i32>(-29011i, u_input.b.x, 1i, -35310i)), -20014i, 1i, max(u_input.b.x | u_input.b.x, -2147483647i))));
    var var_2 = var_0;
    var var_3 = arg_0.x;
    return max(0i, _wgslsmith_dot_vec4_i32(-select(reverseBits(var_1.b), ~var_1.b, select(vec4<bool>(arg_1, arg_1, true, true), vec4<bool>(false, false, arg_1, true), vec4<bool>(true, false, arg_1, arg_1))), var_1.b));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_4) -> u32 {
    global1 = array<Struct_2, 27>();
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(~73027u, ~firstLeadingBit(4294967295u), arg_1.a.x) << (vec3<u32>(arg_0.d.x, ~select(1u, arg_0.a.x, false), u_input.a.x) % vec3<u32>(32u)), arg_1.d.wzx);
    var var_1 = min(44688u, ~var_0);
    var var_2 = arg_2.b.www;
    let var_3 = Struct_5(~_wgslsmith_dot_vec2_u32(arg_0.a.yy, _wgslsmith_add_vec2_u32(vec2<u32>(38502u, arg_1.a.x), arg_0.d.zz) | countOneBits(vec2<u32>(7092u, arg_3.d.d.x))), arg_3.b, 5771u, -vec2<i32>(23806i, abs(u_input.b.x)) ^ -_wgslsmith_add_vec2_i32(vec2<i32>(arg_3.a.d, var_2.x) & var_2.xx, select(u_input.b.zx, arg_2.b.zy, vec2<bool>(true, arg_0.b))), arg_2.b.yzw);
    return max(_wgslsmith_mult_u32(arg_3.d.d.x, select(var_0, 0u, true)), var_3.c);
}

fn func_1(arg_0: vec4<i32>) -> Struct_5 {
    global0 = 28310i;
    global0 = ~_wgslsmith_div_i32(u_input.b.x, -(1i & _wgslsmith_sub_i32(arg_0.x, u_input.b.x)));
    var var_0 = _wgslsmith_f_op_f32(sign(-1474f));
    var var_1 = u_input.c;
    global0 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_add_i32(-1i, func_2(vec2<f32>(-1030f, -749f), true)), -(~arg_0.x), -47339i), select(vec3<i32>(31665i, 0i, u_input.b.x >> (u_input.a.x % 32u)), max(~vec3<i32>(arg_0.x, -2147483647i, u_input.b.x), max(u_input.b, u_input.b)), 6202u > func_3(Struct_2(vec4<u32>(42238u, 0u, u_input.c, 1u), false, vec4<f32>(913f, 306f, 367f, -1644f), vec4<u32>(48955u, 0u, u_input.a.x, u_input.a.x)), global1[_wgslsmith_index_u32(u_input.a.x, 27u)], Struct_3(vec2<f32>(-470f, 392f), arg_0), Struct_4(Struct_1(-1058f, vec4<f32>(-211f, -1753f, -1054f, 133f), 2147483647i, u_input.b.x), true, vec2<bool>(true, true), Struct_2(vec4<u32>(1u, 59579u, u_input.c, 5677u), true, vec4<f32>(907f, -1532f, 180f, -121f), vec4<u32>(1u, u_input.a.x, u_input.c, 15210u)))))), -countOneBits(u_input.b));
    return Struct_5(func_3(Struct_2(abs(vec4<u32>(u_input.a.x, u_input.c, u_input.c, 1u)), true, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(134f, -228f, -457f, -318f), vec4<f32>(-1089f, -1000f, 1466f, 1000f))), min(vec4<u32>(u_input.a.x, u_input.c, 53725u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 17975u, u_input.a.x))), global1[_wgslsmith_index_u32(~(~4294967295u), 27u)], Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1777f, 172f)), reverseBits(vec4<i32>(-8575i, -2147483647i, 0i, u_input.b.x))), Struct_4(Struct_1(-215f, vec4<f32>(1224f, 1676f, 367f, -1000f), -32267i, -45283i), true, select(vec2<bool>(false, true), vec2<bool>(false, true), true), Struct_2(vec4<u32>(23700u, u_input.c, 47836u, u_input.c), true, vec4<f32>(-465f, -596f, 114f, 421f), vec4<u32>(1u, u_input.a.x, u_input.c, u_input.a.x)))) ^ min(~(1u & u_input.a.x), func_3(global1[_wgslsmith_index_u32(1u | u_input.c, 27u)], global1[_wgslsmith_index_u32(~4294967295u, 27u)], Struct_3(vec2<f32>(257f, -1052f), vec4<i32>(arg_0.x, 15080i, u_input.b.x, 0i)), Struct_4(Struct_1(-144f, vec4<f32>(432f, -246f, -415f, -1281f), 1i, u_input.b.x), true, vec2<bool>(true, true), Struct_2(vec4<u32>(42893u, 0u, 43098u, u_input.c), true, vec4<f32>(-1295f, -507f, 1016f, -231f), vec4<u32>(u_input.a.x, 38739u, 4294967295u, 0u))))), (~(arg_0.x << (12972u % 32u)) >= func_2(vec2<f32>(1216f, 291f), true)) || select(true, firstTrailingBit(47510u) > u_input.a.x, true), 4294967295u, u_input.b.zz, -(~abs(~u_input.b)));
}

fn func_4(arg_0: Struct_5, arg_1: u32) -> Struct_1 {
    return Struct_1(-534f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-1219f, -1259f)), _wgslsmith_f_op_f32(1000f + 179f), _wgslsmith_f_op_f32(max(-367f, -249f)), _wgslsmith_f_op_f32(floor(-488f))))), -(~(~_wgslsmith_add_i32(arg_0.d.x, -1118i))), 21136i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_4(func_1(firstTrailingBit(vec4<i32>(9800i, 1i, u_input.b.x, u_input.b.x) | vec4<i32>(-1i, u_input.b.x, -14198i, u_input.b.x))), ~31026u), any(select(vec4<bool>(true, any(vec2<bool>(true, true)), false, true), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true)), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, false, true, false), 7379u < u_input.a.x))), vec2<bool>(true, true), Struct_2(~vec4<u32>(~4294967295u, u_input.a.x, max(u_input.a.x, 50430u), 49209u), true, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-1191f, -1000f, -547f, -540f), vec4<f32>(628f, -1694f, -787f, -537f)))), func_4(Struct_5(33689u, false, 28418u, vec2<i32>(u_input.b.x, -39371i), vec3<i32>(-2147483647i, 34074i, u_input.b.x)), u_input.c).b, vec4<bool>(true, true, true, true))), select(min(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 9215u) ^ vec4<u32>(4294967295u, u_input.c, u_input.c, 52620u), firstTrailingBit(vec4<u32>(30399u, u_input.c, u_input.a.x, 35253u))), ~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 16833u, u_input.c, 39913u), vec4<u32>(u_input.c, 0u, 55221u, u_input.a.x)), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), all(vec3<bool>(true, false, true))))));
    let var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), var_0.d.c, ~u_input.b.x, _wgslsmith_mod_i32(u_input.b.x, ~var_0.a.c)), true, vec2<bool>(any(select(select(vec3<bool>(var_0.b, var_0.d.b, false), vec3<bool>(false, var_0.b, false), true), !vec3<bool>(true, var_0.c.x, true), false)), all(vec3<bool>(true, 1i >= var_0.a.c, true))), Struct_2(vec4<u32>(u_input.c, ~(~var_0.d.d.x), countOneBits(31494u), 8998u), all(vec3<bool>(!var_0.b, var_0.b, var_0.a.c == u_input.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_0.d.c, _wgslsmith_f_op_vec4_f32(var_0.a.b - var_0.d.c))) - var_0.a.b), var_0.d.d));
    var var_2 = select(var_1.c, select(vec2<bool>(true, any(!vec4<bool>(var_1.d.b, true, false, false))), select(vec2<bool>(true, true), var_1.c, false), true), false);
    let var_3 = ~_wgslsmith_mult_vec4_i32(vec4<i32>(select(countOneBits(-22421i), _wgslsmith_mult_i32(10487i, 24056i), true), ~var_0.a.d, select(-16815i, -2147483647i, false), -(19911i & var_1.a.c)), vec4<i32>(func_2(vec2<f32>(var_1.a.b.x, var_1.a.b.x), true), 4300i >> (var_0.d.a.x % 32u), ~_wgslsmith_mult_i32(u_input.b.x, u_input.b.x), func_2(vec2<f32>(-179f, var_1.d.c.x), var_1.d.b)));
    global2 = _wgslsmith_dot_vec3_u32(select(select(var_1.d.a.xyz, vec3<u32>(u_input.c & 0u, u_input.a.x, ~29407u), !vec3<bool>(var_1.b, var_2.x, var_1.d.b)), countOneBits(countOneBits(u_input.a) & u_input.a), vec3<bool>(false, !func_1(vec4<i32>(-1i, 14455i, -6886i, var_3.x)).b, 44132u < _wgslsmith_clamp_u32(4294967295u, 90590u, var_0.d.a.x))), ~(~u_input.a));
    var var_4 = min(var_3, abs(_wgslsmith_add_vec4_i32(var_3, vec4<i32>(1i & var_3.x, 50418i << (u_input.c % 32u), 1i, _wgslsmith_div_i32(u_input.b.x, 0i)))));
    let var_5 = var_0.c;
    let var_6 = var_4.yxw;
    global0 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zz, vec2<u32>(4294967295u, min(0u, 51884u)), ~vec2<i32>(reverseBits(-var_0.a.d), var_4.x >> (65588u % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.d.c.x, var_0.a.a, 646f, -2013f), var_1.d.c))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(var_1.a.b)))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(var_0.a.b, vec4<f32>(131f, 528f, -1149f, 1000f))), var_1.d.c))), _wgslsmith_add_u32(u_input.c, select(1u, 1u, var_2.x)));
}

