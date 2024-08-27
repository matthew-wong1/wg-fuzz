struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: Struct_1,
    d: vec4<f32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: Struct_3,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec2<bool>(false, false), vec4<f32>(-189f, -379f, 427f, -199f), Struct_1(false, -332f, 1i, 34438i, vec2<f32>(-957f, 877f)), vec4<f32>(983f, -1737f, -661f, -1000f), 1000f), Struct_2(vec2<bool>(true, false), vec4<f32>(-613f, 885f, -1313f, -1000f), Struct_1(false, 851f, -9491i, 1i, vec2<f32>(-285f, -1316f)), vec4<f32>(376f, -1526f, 1649f, 443f), -659f), Struct_2(vec2<bool>(false, true), vec4<f32>(-488f, -563f, -378f, -327f), Struct_1(false, -295f, 0i, 1i, vec2<f32>(-460f, 796f)), vec4<f32>(-1088f, 1088f, 149f, -1269f), -1203f), Struct_2(vec2<bool>(false, true), vec4<f32>(-498f, -224f, 725f, -759f), Struct_1(true, -1038f, 1i, 13341i, vec2<f32>(-709f, -707f)), vec4<f32>(656f, -198f, 529f, -2206f), 943f), Struct_2(vec2<bool>(true, false), vec4<f32>(-1846f, -848f, 1065f, -1549f), Struct_1(false, -1835f, 0i, -3501i, vec2<f32>(746f, 171f)), vec4<f32>(-414f, -1450f, -578f, 1239f), 487f), Struct_2(vec2<bool>(false, false), vec4<f32>(-1000f, -380f, -191f, 1137f), Struct_1(true, 219f, -1786i, 5013i, vec2<f32>(1297f, 235f)), vec4<f32>(-1296f, 1025f, 2093f, 498f), 484f), Struct_2(vec2<bool>(false, false), vec4<f32>(1000f, 1151f, -1000f, -982f), Struct_1(true, -557f, 30961i, 10306i, vec2<f32>(1139f, -1308f)), vec4<f32>(1374f, -1448f, -675f, 742f), -1282f), Struct_2(vec2<bool>(true, false), vec4<f32>(-1051f, 1115f, -1547f, -330f), Struct_1(true, 399f, 538i, -69128i, vec2<f32>(573f, -2166f)), vec4<f32>(-1223f, -117f, 917f, 170f), -1000f), Struct_2(vec2<bool>(false, false), vec4<f32>(-795f, -1639f, 196f, -1203f), Struct_1(true, 989f, -1i, -37451i, vec2<f32>(582f, 1028f)), vec4<f32>(-1272f, -979f, -720f, 1813f), 131f), Struct_2(vec2<bool>(false, true), vec4<f32>(1873f, -339f, 928f, -741f), Struct_1(false, 1743f, 17234i, 6806i, vec2<f32>(1000f, -200f)), vec4<f32>(704f, 1368f, -302f, -670f), 304f), Struct_2(vec2<bool>(true, true), vec4<f32>(270f, 1962f, 1074f, -498f), Struct_1(false, -2568f, 2147483647i, 1i, vec2<f32>(169f, -1000f)), vec4<f32>(-822f, -349f, 879f, -1436f), -1900f), Struct_2(vec2<bool>(true, true), vec4<f32>(546f, 1176f, -238f, -514f), Struct_1(false, 1000f, 1i, -23678i, vec2<f32>(-535f, -401f)), vec4<f32>(-710f, 444f, 1000f, 667f), -1049f), Struct_2(vec2<bool>(true, false), vec4<f32>(-1000f, -851f, 135f, 1423f), Struct_1(false, -2108f, i32(-2147483648), 2147483647i, vec2<f32>(1265f, 995f)), vec4<f32>(1162f, 1000f, -177f, -656f), -109f), Struct_2(vec2<bool>(false, false), vec4<f32>(1058f, -923f, 834f, 1308f), Struct_1(true, 1328f, -1i, -582i, vec2<f32>(-866f, -899f)), vec4<f32>(977f, 2069f, 1000f, -649f), -428f), Struct_2(vec2<bool>(false, true), vec4<f32>(481f, 530f, -275f, 389f), Struct_1(true, 1580f, 2147483647i, 7367i, vec2<f32>(1271f, 1809f)), vec4<f32>(-1850f, 1320f, 1823f, -510f), 618f), Struct_2(vec2<bool>(true, true), vec4<f32>(874f, -344f, 908f, -1674f), Struct_1(true, 1000f, 2147483647i, 0i, vec2<f32>(-375f, 593f)), vec4<f32>(2669f, 1598f, -1305f, -1319f), -985f), Struct_2(vec2<bool>(false, true), vec4<f32>(1011f, 426f, 2309f, -432f), Struct_1(false, 613f, 19419i, i32(-2147483648), vec2<f32>(-660f, -858f)), vec4<f32>(1479f, 991f, -1367f, 1000f), -293f), Struct_2(vec2<bool>(false, true), vec4<f32>(1052f, -1132f, -501f, 1160f), Struct_1(true, 264f, -20016i, 0i, vec2<f32>(-165f, -318f)), vec4<f32>(1236f, -474f, -1821f, -1683f), -1000f), Struct_2(vec2<bool>(false, true), vec4<f32>(364f, -1139f, 479f, -364f), Struct_1(false, -113f, 2147483647i, -1i, vec2<f32>(364f, -392f)), vec4<f32>(1000f, -3328f, 309f, 207f), -237f), Struct_2(vec2<bool>(false, true), vec4<f32>(-594f, 929f, -1121f, 1431f), Struct_1(true, -1000f, -16494i, 14178i, vec2<f32>(-997f, 356f)), vec4<f32>(-798f, -101f, 1105f, -1146f), 1000f), Struct_2(vec2<bool>(true, false), vec4<f32>(422f, -2430f, -808f, 392f), Struct_1(false, -686f, -38319i, -12246i, vec2<f32>(-404f, 1154f)), vec4<f32>(-704f, 935f, 460f, 2241f), 1555f), Struct_2(vec2<bool>(true, false), vec4<f32>(1000f, 1568f, -850f, 504f), Struct_1(false, 574f, -1i, 2147483647i, vec2<f32>(-861f, -1193f)), vec4<f32>(846f, -833f, 1571f, 108f), -1813f));

var<private> global2: vec3<u32>;

var<private> global3: array<Struct_1, 17>;

var<private> global4: Struct_2 = Struct_2(vec2<bool>(false, true), vec4<f32>(-498f, 1778f, -926f, -1025f), Struct_1(true, -206f, i32(-2147483648), 2147483647i, vec2<f32>(-441f, 1000f)), vec4<f32>(427f, -1065f, -364f, -747f), -732f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>) -> f32 {
    var var_0 = !all(vec4<bool>(any(vec3<bool>(true, true, arg_0.c.a)), global4.a.x, false, !global4.a.x));
    let var_1 = _wgslsmith_mod_i32(firstTrailingBit((arg_0.c.d << (42782u % 32u)) & (reverseBits(arg_0.c.d) & reverseBits(arg_0.c.d))), global4.c.c);
    let var_2 = vec3<bool>(any(!select(!global4.a, vec2<bool>(global4.c.a, false), select(vec2<bool>(arg_0.c.a, true), arg_0.a, global4.a))), (var_1 > firstTrailingBit(_wgslsmith_div_i32(var_1, var_1))) | (all(!vec3<bool>(arg_0.a.x, global4.a.x, global4.c.a)) || !(arg_0.c.c > arg_0.c.d)), (~(~global2.x) == ~4294967295u) | (arg_0.c.a == !global4.c.a));
    let var_3 = arg_0.c;
    var_0 = !(!(_wgslsmith_clamp_i32(arg_0.c.d, global4.c.c ^ global4.c.d, _wgslsmith_mod_i32(-38395i, var_1)) == 1i));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-699f, _wgslsmith_f_op_f32(-var_3.b)))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + 677f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global4.c.e.x - 212f)))) * arg_1.x));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32) -> vec3<u32> {
    var var_0 = Struct_4(u_input.a, vec3<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, max(47018u, u_input.a), ~0u), vec3<u32>(_wgslsmith_clamp_u32(global2.x, 36517u, global2.x), u_input.a, 4294967295u | global2.x)), max(14625u, ~u_input.a)), vec2<i32>(global4.c.d, -2147483647i) | ~firstTrailingBit(vec2<i32>(38091i, 55898i) ^ vec2<i32>(-26414i, global4.c.d)), Struct_3(Struct_2(!select(global4.a, global4.a, true), vec4<f32>(_wgslsmith_f_op_f32(-592f - -617f), _wgslsmith_div_f32(arg_1, 992f), _wgslsmith_f_op_f32(global4.b.x - arg_0.x), _wgslsmith_f_op_f32(min(arg_0.x, -1651f))), Struct_1(global4.a.x, _wgslsmith_f_op_f32(f32(-1f) * -559f), -1i, global4.c.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.b.x, arg_1))), global4.b, arg_0.x)), global4.a);
    var_0 = Struct_4(var_0.b.x, vec3<u32>(var_0.a, 4294967295u, ~(~(~38280u))), vec2<i32>(~global4.c.c, _wgslsmith_add_i32(abs(1i), _wgslsmith_clamp_i32(3396i, _wgslsmith_dot_vec3_i32(vec3<i32>(global4.c.c, global4.c.d, var_0.c.x), vec3<i32>(13328i, 2774i, 7740i)), i32(-1i) * -1i))), var_0.d, !var_0.e);
    let var_1 = var_0.b;
    let var_2 = Struct_1(global4.a.x, 534f, countOneBits((i32(-1i) * -16752i) | var_0.c.x) & -9995i, 4079i, var_0.d.a.c.e);
    let var_3 = !any(vec3<bool>(false, all(vec3<bool>(var_0.e.x, var_2.a, true)), all(vec3<bool>(global4.c.a, true, true))));
    return vec3<u32>(~4294967295u, (~(~14813u) & _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a, 0u), countOneBits(70367u))) & ~firstTrailingBit(countOneBits(global2.x)), 0u);
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_4(~(~(global2.x | 3474u)) << (4294967295u % 32u), func_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(33558u, 22u)], global4.b.xy))), -582f), _wgslsmith_f_op_f32(134f + _wgslsmith_f_op_f32(global4.b.x + _wgslsmith_f_op_f32(floor(340f))))), _wgslsmith_mod_vec2_i32((_wgslsmith_sub_vec2_i32(vec2<i32>(global4.c.d, 12208i), vec2<i32>(global4.c.d, global4.c.c)) | (vec2<i32>(23519i, 10004i) & vec2<i32>(2147483647i, global4.c.c))) ^ countOneBits(vec2<i32>(9289i, global4.c.d)), _wgslsmith_clamp_vec2_i32(select(vec2<i32>(global4.c.c, global4.c.c), vec2<i32>(32055i, -1i), vec2<bool>(global4.a.x, false)) ^ ~vec2<i32>(-34177i, global4.c.d), firstLeadingBit(vec2<i32>(-10948i, 50966i)), vec2<i32>(abs(-1i), 1i))), Struct_3(Struct_2(!(!vec2<bool>(global4.c.a, global4.c.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.e, global4.b.x, 1073f, 943f)), global4.c, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(global4.e, -1411f), _wgslsmith_f_op_f32(global4.e + -1034f), _wgslsmith_f_op_f32(global4.e * global4.d.x)), _wgslsmith_f_op_f32(min(global4.e, -179f)))), !(!(!(!vec2<bool>(global4.c.a, global4.c.a)))));
    global2 = var_0.b;
    let var_1 = Struct_4(global2.x >> (var_0.a % 32u), vec3<u32>(_wgslsmith_mod_u32(27992u, ~80476u | max(1u, global2.x)), abs(1u ^ _wgslsmith_add_u32(var_0.a, 3190u)), ~1u), firstLeadingBit(vec2<i32>(abs(31035i), -18836i)), Struct_3(Struct_2(global4.a, _wgslsmith_f_op_vec4_f32(-var_0.d.a.b), var_0.d.a.c, var_0.d.a.d, global4.c.e.x)), !select(select(global4.a, !global4.a, !global4.a), global4.a, false));
    let var_2 = var_0;
    var var_3 = global3[_wgslsmith_index_u32(4294967295u, 17u)];
    return var_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = false;
    global4 = Struct_2(vec2<bool>(!var_0.a.a.x, false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(func_1().a.d.x, func_1().a.d.x, !var_1)), global4.b.x, _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(exp2(var_0.a.b.x)), func_1().a.c.a)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(849f, global4.b.x), _wgslsmith_f_op_f32(-var_0.a.b.x))))), Struct_1(true & global4.c.a, -871f, -var_0.a.c.d, _wgslsmith_mult_i32(2147483647i, countOneBits(var_0.a.c.d | global4.c.d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.b.xz))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-278f, _wgslsmith_f_op_f32(var_0.a.e + _wgslsmith_f_op_f32(global4.b.x - 578f)), _wgslsmith_f_op_f32(-121f * _wgslsmith_f_op_f32(f32(-1f) * -1023f)), _wgslsmith_f_op_f32(exp2(var_0.a.b.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.d.x + var_0.a.c.e.x)))));
    let var_2 = countOneBits(~vec3<u32>(~abs(14340u), 45679u, 4294967295u));
    global0 = array<Struct_1, 8>();
    global4 = Struct_2(vec2<bool>(true, false), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-global4.d))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.c.b), _wgslsmith_f_op_f32(round(265f))), _wgslsmith_f_op_f32(func_2(Struct_2(vec2<bool>(true, true), global4.d, Struct_1(true, 1922f, -2147483647i, -16245i, vec2<f32>(486f, global4.c.b)), global4.b, global4.e), vec2<f32>(global4.c.e.x, -601f))), global4.e, var_0.a.d.x)), global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~(vec3<u32>(u_input.a, var_2.x, 18167u) | var_2), var_2), 17u)], func_1().a.d, 1788f);
    var var_3 = _wgslsmith_mod_i32(~global4.c.c, global4.c.c);
    var_3 = 35560i;
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(global2.x, _wgslsmith_mult_u32(var_2.x, u_input.a))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(global4.c.e, var_0.a.d.xw), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_0.a.b.yw))))), var_0.a.c.a)), (var_2 ^ _wgslsmith_div_vec3_u32(select(var_2, vec3<u32>(33054u, 9836u, 4779u), false), ~vec3<u32>(34320u, 4294967295u, u_input.a))) ^ select(~(var_2 & vec3<u32>(1u, var_2.x, u_input.a)), var_2, false));
}

