struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: i32,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

var<private> global1: array<u32, 10>;

var<private> global2: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(-212f, Struct_1(vec3<bool>(false, false, false), vec4<f32>(1000f, -1146f, -1001f, -1118f), 6269i, i32(-2147483648), vec3<f32>(323f, -1453f, -2729f))), Struct_3(-941f, Struct_1(vec3<bool>(true, false, false), vec4<f32>(-242f, 824f, -1100f, 1004f), 47572i, 1i, vec3<f32>(-1000f, 1000f, 906f))), Struct_3(1072f, Struct_1(vec3<bool>(true, true, true), vec4<f32>(2805f, 792f, -407f, 542f), -31399i, 2147483647i, vec3<f32>(-1050f, -1077f, 301f))), Struct_3(-200f, Struct_1(vec3<bool>(true, false, false), vec4<f32>(364f, 322f, -155f, -388f), -1i, 1i, vec3<f32>(1193f, -217f, -762f))), Struct_3(-335f, Struct_1(vec3<bool>(true, true, false), vec4<f32>(-451f, -1327f, -1000f, -925f), 47979i, 17524i, vec3<f32>(450f, -1140f, -524f))), Struct_3(280f, Struct_1(vec3<bool>(false, true, false), vec4<f32>(1000f, 163f, -589f, 566f), -2292i, i32(-2147483648), vec3<f32>(-277f, 199f, -958f))), Struct_3(909f, Struct_1(vec3<bool>(true, false, false), vec4<f32>(538f, -1000f, -162f, -666f), 4050i, 20766i, vec3<f32>(3071f, -401f, -1418f))), Struct_3(-1098f, Struct_1(vec3<bool>(false, true, false), vec4<f32>(720f, 1248f, 267f, 221f), 2147483647i, 0i, vec3<f32>(-930f, -836f, -1214f))), Struct_3(2312f, Struct_1(vec3<bool>(false, false, true), vec4<f32>(-1000f, 117f, -1200f, 1271f), 0i, 51609i, vec3<f32>(-914f, -198f, -662f))), Struct_3(333f, Struct_1(vec3<bool>(false, false, true), vec4<f32>(3062f, -1113f, 1000f, 735f), i32(-2147483648), 37575i, vec3<f32>(-478f, -551f, 1000f))), Struct_3(-260f, Struct_1(vec3<bool>(true, false, false), vec4<f32>(2033f, 836f, -1616f, 690f), 6537i, 26838i, vec3<f32>(-1075f, -1000f, 512f))), Struct_3(586f, Struct_1(vec3<bool>(false, false, true), vec4<f32>(-118f, -124f, -1000f, -263f), 0i, i32(-2147483648), vec3<f32>(1276f, -946f, -277f))), Struct_3(1213f, Struct_1(vec3<bool>(false, true, true), vec4<f32>(912f, -212f, -778f, -1214f), 8940i, -21092i, vec3<f32>(-2048f, -739f, 167f))), Struct_3(201f, Struct_1(vec3<bool>(false, false, true), vec4<f32>(704f, -837f, 827f, -873f), 2147483647i, 23138i, vec3<f32>(-560f, 1536f, -960f))), Struct_3(-511f, Struct_1(vec3<bool>(true, false, true), vec4<f32>(-1109f, -1000f, 1657f, 721f), -13068i, i32(-2147483648), vec3<f32>(-460f, -1000f, -1051f))), Struct_3(810f, Struct_1(vec3<bool>(true, false, false), vec4<f32>(-787f, 605f, -1901f, -1812f), 6400i, 22072i, vec3<f32>(-1518f, -172f, -144f))), Struct_3(827f, Struct_1(vec3<bool>(false, false, true), vec4<f32>(1043f, -495f, 211f, -610f), 41144i, i32(-2147483648), vec3<f32>(785f, 443f, 698f))), Struct_3(817f, Struct_1(vec3<bool>(true, true, true), vec4<f32>(104f, -1154f, 1565f, 2568f), 1i, 2147483647i, vec3<f32>(-1513f, -1319f, -979f))), Struct_3(-1471f, Struct_1(vec3<bool>(true, false, true), vec4<f32>(529f, -268f, 1724f, -1307f), 52074i, 2147483647i, vec3<f32>(193f, -572f, 469f))), Struct_3(1759f, Struct_1(vec3<bool>(false, false, true), vec4<f32>(1278f, -1030f, 949f, -957f), 44060i, 17742i, vec3<f32>(-241f, -1242f, -358f))), Struct_3(-1356f, Struct_1(vec3<bool>(true, false, true), vec4<f32>(2049f, 558f, -183f, -1000f), i32(-2147483648), -72174i, vec3<f32>(257f, -805f, 110f))), Struct_3(-1337f, Struct_1(vec3<bool>(false, true, false), vec4<f32>(-206f, 2070f, -413f, -328f), 38933i, 2147483647i, vec3<f32>(-637f, 1965f, 730f))), Struct_3(-1000f, Struct_1(vec3<bool>(false, false, false), vec4<f32>(-491f, 141f, 1529f, 448f), 16555i, 39583i, vec3<f32>(323f, 529f, 1095f))), Struct_3(-1026f, Struct_1(vec3<bool>(true, true, true), vec4<f32>(-542f, 592f, 1334f, 200f), 2147483647i, 2147483647i, vec3<f32>(-386f, -895f, -1366f))), Struct_3(-391f, Struct_1(vec3<bool>(false, false, true), vec4<f32>(-927f, 1000f, -331f, 109f), -1i, 2147483647i, vec3<f32>(-723f, -260f, 278f))), Struct_3(1000f, Struct_1(vec3<bool>(false, false, true), vec4<f32>(-390f, -969f, 1533f, -1144f), -1i, 1i, vec3<f32>(-537f, 1243f, -306f))), Struct_3(2324f, Struct_1(vec3<bool>(true, true, false), vec4<f32>(193f, -1222f, 1836f, -1742f), 2147483647i, -857i, vec3<f32>(-536f, 670f, -2776f))), Struct_3(-587f, Struct_1(vec3<bool>(true, false, false), vec4<f32>(2008f, 1747f, 346f, 854f), -46399i, -22292i, vec3<f32>(-718f, -932f, 423f))), Struct_3(-655f, Struct_1(vec3<bool>(false, true, false), vec4<f32>(1883f, -1081f, 1155f, 620f), 2147483647i, 12043i, vec3<f32>(1052f, 1970f, 1000f))));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec2<f32>) -> vec3<i32> {
    let var_0 = !(!arg_1.c.a.zz);
    var var_1 = global2[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(firstTrailingBit(~arg_0.x), 10u)]), 29u)];
    global1 = array<u32, 10>();
    var var_2 = -var_1.b.d << (~global1[_wgslsmith_index_u32(1u ^ (firstTrailingBit(0u) << (reverseBits(0u) % 32u)), 10u)] % 32u);
    let var_3 = _wgslsmith_f_op_f32(floor(arg_1.e.e.x));
    return -vec3<i32>(arg_1.a, ~0i, -(_wgslsmith_sub_i32(arg_1.c.c, u_input.b.x) ^ countOneBits(-1i)));
}

fn func_3(arg_0: vec3<u32>) -> i32 {
    global2 = array<Struct_3, 29>();
    global0 = array<Struct_1, 22>();
    global0 = array<Struct_1, 22>();
    global1 = array<u32, 10>();
    var var_0 = Struct_2(_wgslsmith_add_i32(~u_input.a.x, u_input.b.x ^ -1i), 1u, Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1255f, 1012f, 900f, 426f) * vec4<f32>(498f, 129f, 2307f, 424f))))), u_input.a.x << (_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(u_input.c ^ global1[_wgslsmith_index_u32(0u, 10u)], 10u)], _wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], 114837u, 10651u, 0u), u_input.d)) % 32u), -3619i & (_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i), u_input.a.zy) | u_input.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(494f, -1671f, _wgslsmith_f_op_f32(f32(-1f) * -206f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1579f, 649f)) * _wgslsmith_div_vec3_f32(vec3<f32>(1000f, -1178f, 108f), vec3<f32>(-506f, -1000f, -854f))))), _wgslsmith_sub_vec4_i32(-vec4<i32>(-40279i, -17111i, _wgslsmith_clamp_i32(u_input.a.x, 14963i, u_input.b.x), 1i), vec4<i32>(countOneBits(i32(-1i) * -2147483647i), u_input.b.x, -46312i, -(u_input.b.x & 31714i))), Struct_1(select(select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), (41002i << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(76375u, 10u)], 10u)] % 32u)) < 1i), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1711f, 600f, -701f, 749f) + vec4<f32>(-1775f, -1185f, 342f, 151f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-352f, 241f, -929f, 1078f)))))), -func_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.x, arg_0.x), arg_0.xz, arg_0.xx), Struct_2(0i, arg_0.x, global0[_wgslsmith_index_u32(u_input.c, 22u)], vec4<i32>(u_input.a.x, u_input.b.x, -68895i, u_input.a.x), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 10u)], 22u)]), _wgslsmith_div_vec2_f32(vec2<f32>(-778f, -2560f), vec2<f32>(-1000f, -321f))).x, u_input.a.x, vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(154f - 2743f) * -1016f), -1454f)));
    return -39771i;
}

fn func_2(arg_0: vec3<i32>, arg_1: i32) -> u32 {
    global1 = array<u32, 10>();
    var var_0 = Struct_2(u_input.b.x, ~(~global1[_wgslsmith_index_u32(countOneBits(u_input.d.x) << (~global1[_wgslsmith_index_u32(62320u, 10u)] % 32u), 10u)]), Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-563f, 616f, -172f, 622f)))), func_3(~firstTrailingBit(vec3<u32>(1u, 4294967295u, 4294967295u))), ~countOneBits(_wgslsmith_mod_i32(arg_0.x, 12159i)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-219f, 1140f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-189f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-448f, 1603f) * _wgslsmith_f_op_f32(abs(-619f))))), -(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(19079i, 1i, arg_0.x, 1i), vec4<i32>(-1i, -2147483647i, arg_1, arg_1), vec4<i32>(2147483647i, -2147483647i, arg_1, arg_1)), ~vec4<i32>(arg_1, u_input.b.x, arg_0.x, u_input.a.x), -vec4<i32>(arg_1, -16700i, -2147483647i, 0i)) >> (u_input.d % vec4<u32>(32u))), global0[_wgslsmith_index_u32(u_input.c, 22u)]);
    global0 = array<Struct_1, 22>();
    let var_1 = var_0.c;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.b.x) - _wgslsmith_div_f32(170f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.e.x, _wgslsmith_f_op_f32(-var_0.e.b.x)))));
    return ~_wgslsmith_sub_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(15032u, 10u)], 10u)], 10u)], ~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(var_0.b, var_0.b)), ~u_input.d.xy));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(~func_2(func_1(vec2<u32>(0u, 1u), Struct_2(-33805i, u_input.d.x, Struct_1(vec3<bool>(false, false, false), vec4<f32>(-1205f, 2629f, -818f, -1141f), 4740i, 31437i, vec3<f32>(394f, -1103f, 378f)), vec4<i32>(-1i, u_input.b.x, 46956i, -11276i), Struct_1(vec3<bool>(false, false, true), vec4<f32>(-1000f, 233f, 1065f, -786f), u_input.b.x, u_input.b.x, vec3<f32>(-1336f, 657f, 1235f))), vec2<f32>(-580f, 374f)) >> (reverseBits(u_input.d.wwz) % vec3<u32>(32u)), -1i));
    var var_1 = 1923f;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-515f - 1127f))))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-494f * -498f)), _wgslsmith_f_op_f32(sign(-335f)))))));
    var var_3 = Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, any(vec2<bool>(true, true))), vec3<bool>(true, true, var_0 >= var_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(168f, -572f))), _wgslsmith_f_op_f32(step(-919f, 703f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2070f))), _wgslsmith_f_op_f32(f32(-1f) * -1149f))), -(~1i), select(-2147483647i, _wgslsmith_mult_i32(func_1(~vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2171u, 10u)], 10u)], 10u)]), Struct_2(0i, var_0, Struct_1(vec3<bool>(true, true, true), vec4<f32>(697f, 1893f, -273f, -236f), 62952i, u_input.b.x, vec3<f32>(1000f, -1532f, 1578f)), vec4<i32>(2147483647i, -2147483647i, -1i, 0i), global0[_wgslsmith_index_u32(60341u, 22u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(-350f, -1037f) + vec2<f32>(637f, -735f))).x, abs(0i) << ((4294967295u & global1[_wgslsmith_index_u32(u_input.c, 10u)]) % 32u)), true), vec3<f32>(_wgslsmith_f_op_f32(-1209f * 1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1358f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -317f))), 651f));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1783f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-301f)) + _wgslsmith_div_f32(1624f, var_3.e.x))), _wgslsmith_f_op_f32(trunc(-152f)))));
    var_3 = Struct_1(vec3<bool>(true, !all(!var_3.a), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(var_3.b)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_3.b, var_3.b) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.x, var_3.e.x, var_3.e.x, 754f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.e.x, var_3.b.x, var_3.e.x, var_3.b.x)))), ~(~var_3.c), _wgslsmith_mult_i32(_wgslsmith_mult_i32(~u_input.a.x, abs(var_3.d)), var_3.d), var_3.e);
    let var_5 = -vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(~u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.c, u_input.b.x, u_input.b.x, u_input.a.x), vec4<i32>(var_3.d, 2147483647i, 21565i, u_input.a.x))), u_input.b.x), (_wgslsmith_dot_vec3_i32(vec3<i32>(-29660i, -1784i, u_input.b.x), u_input.a) | firstTrailingBit(12068i)) & (i32(-1i) * -30390i));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3.b.zzy - var_3.e)));
}

