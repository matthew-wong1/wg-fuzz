struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<bool>,
    e: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21>;

var<private> global1: vec2<f32>;

var<private> global2: vec3<f32> = vec3<f32>(-754f, -433f, -358f);

var<private> global3: vec2<bool>;

var<private> global4: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(858f, vec4<f32>(137f, -1500f, -764f, -529f)), Struct_2(482f, vec4<f32>(363f, -474f, -1704f, 408f)), Struct_2(932f, vec4<f32>(780f, -631f, -1241f, 504f)), Struct_2(537f, vec4<f32>(695f, 126f, -205f, 1327f)), Struct_2(771f, vec4<f32>(557f, -161f, -425f, 1379f)), Struct_2(134f, vec4<f32>(-761f, -1883f, -638f, -210f)), Struct_2(610f, vec4<f32>(332f, -102f, -1000f, -345f)), Struct_2(-677f, vec4<f32>(305f, -1951f, 1118f, 800f)), Struct_2(-126f, vec4<f32>(1186f, -1225f, 832f, -814f)), Struct_2(-174f, vec4<f32>(522f, -535f, -458f, -451f)), Struct_2(1129f, vec4<f32>(-657f, -1000f, -1000f, 1259f)), Struct_2(387f, vec4<f32>(-1000f, -580f, -442f, -1043f)), Struct_2(-484f, vec4<f32>(514f, 2801f, -986f, -492f)), Struct_2(1018f, vec4<f32>(1055f, -1103f, -462f, -584f)), Struct_2(1004f, vec4<f32>(921f, 473f, -250f, 379f)), Struct_2(1123f, vec4<f32>(1000f, -1911f, -548f, 928f)), Struct_2(942f, vec4<f32>(-256f, 1194f, 1000f, -1095f)), Struct_2(-1409f, vec4<f32>(-1866f, -588f, 526f, -1083f)), Struct_2(703f, vec4<f32>(182f, 201f, 738f, 1817f)), Struct_2(512f, vec4<f32>(-1579f, -929f, 609f, 1000f)), Struct_2(-702f, vec4<f32>(-784f, -1071f, 985f, 134f)), Struct_2(-1236f, vec4<f32>(-1302f, -791f, -1000f, -1367f)), Struct_2(266f, vec4<f32>(-1610f, -255f, -362f, -298f)), Struct_2(344f, vec4<f32>(277f, -568f, 1070f, 1045f)), Struct_2(-727f, vec4<f32>(527f, -346f, 191f, -296f)), Struct_2(2960f, vec4<f32>(-547f, 1353f, 274f, -434f)), Struct_2(1215f, vec4<f32>(-1049f, -290f, 713f, 439f)), Struct_2(-733f, vec4<f32>(-802f, -1741f, -169f, 373f)), Struct_2(-494f, vec4<f32>(2240f, -1000f, -1162f, 718f)), Struct_2(1171f, vec4<f32>(-694f, -696f, 672f, 1174f)), Struct_2(646f, vec4<f32>(-1326f, 348f, 728f, -1291f)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: i32) -> Struct_3 {
    let var_0 = -841f;
    let var_1 = Struct_4(global2.zy, _wgslsmith_f_op_vec2_f32(-global2.yy), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1773f, 1111f, -201f) - vec3<f32>(global2.x, -1004f, 609f)) - vec3<f32>(694f, 692f, 1240f)))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(509f, -343f, global2.x)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1276f, var_0, 923f)))))));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a) - _wgslsmith_f_op_vec2_f32(-global2.zx)));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global2.yz))));
    return Struct_3(~(~u_input.a.x), -firstLeadingBit(firstTrailingBit(-2147483647i)), vec3<i32>(-47604i, reverseBits(_wgslsmith_sub_i32(firstLeadingBit(48850i), reverseBits(arg_0))), _wgslsmith_clamp_i32(arg_0, -10933i, -arg_0)), vec4<bool>(true && (!global0[_wgslsmith_index_u32(42855u, 21u)] && true), true, !(~1u > u_input.a.x), (-35328i >> (u_input.a.x % 32u)) != (i32(-1i) * -1i)), 1307f);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_1) -> Struct_3 {
    return Struct_3(_wgslsmith_dot_vec3_u32(max(u_input.a, ~_wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, arg_1.a))), _wgslsmith_clamp_vec3_u32(u_input.a, abs(~u_input.a), u_input.a)), -(1i >> (u_input.a.x % 32u)), arg_1.c, func_2(arg_0.x).d, arg_1.e);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: f32) -> Struct_5 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-381f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(183f * 162f)))) * global2.x), vec4<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(min(803f, _wgslsmith_f_op_f32(854f + _wgslsmith_f_op_f32(1534f - 1949f)))), 863f, _wgslsmith_f_op_f32(select(-581f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-891f * global1.x)), false))));
    let var_1 = 509f;
    let var_2 = func_3(reverseBits(abs(_wgslsmith_mod_vec2_i32(-vec2<i32>(2147483647i, -2147483647i), -vec2<i32>(-2147483647i, 16856i)))), func_2(23226i), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global2.x), global2.x, _wgslsmith_f_op_f32(abs(1316f))))));
    var var_3 = countOneBits(~0u);
    global4 = array<Struct_2, 31>();
    return Struct_5(all(vec2<bool>(global3.x, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec4<bool>(select(_wgslsmith_f_op_f32(global2.x * global2.x) < 828f, !all(vec3<bool>(global3.x, global0[_wgslsmith_index_u32(98392u, 21u)], global0[_wgslsmith_index_u32(15130u, 21u)])), global3.x), any(select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], true, false, global3.x), vec4<bool>(global3.x, global3.x, true, global3.x), true), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], true, true, false), vec4<bool>(global0[_wgslsmith_index_u32(0u, 21u)], global3.x, global0[_wgslsmith_index_u32(0u, 21u)], false), vec4<bool>(false, global3.x, global3.x, false)), false)), all(!select(vec2<bool>(false, global3.x), vec2<bool>(false, false), false)), global0[_wgslsmith_index_u32(93075u, 21u)]), select(!vec2<bool>(all(vec2<bool>(global3.x, false)), any(vec2<bool>(true, true))), !(!(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], global0[_wgslsmith_index_u32(9822u, 21u)]))), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 36279u, u_input.a.x), vec4<u32>(4388u, u_input.a.x, u_input.a.x, u_input.a.x)) < ~1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + -1623f) + global1.x)))));
    let var_1 = 28924u;
    var var_2 = vec4<i32>(-2147483647i ^ min(i32(-1i) * -1i, select(0i, 0i, var_0.a)), 1i << (u_input.a.x % 32u), 0i, _wgslsmith_clamp_i32(~(~(-19353i)), _wgslsmith_clamp_i32(-42610i, 0i, 1i >> (u_input.a.x % 32u)), 16761i)) ^ firstTrailingBit(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(18768i, -1i, -26582i, 1i), min(vec4<i32>(1i, 42150i, 10776i, 412i), vec4<i32>(-2147483647i, 2147483647i, 1i, 2147483647i)), true), _wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(34979i, -2147483647i, -1i, -8383i)), abs(vec4<i32>(6576i, 32795i, 43378i, 48852i)), vec4<i32>(23956i, 1i, -78316i, 12268i)), firstTrailingBit(-vec4<i32>(0i, -16937i, -14784i, 57318i))));
    global4 = array<Struct_2, 31>();
    let var_3 = firstLeadingBit(vec2<u32>(_wgslsmith_div_u32(var_1, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)) ^ ~4294967295u, _wgslsmith_add_u32(~4294967295u, reverseBits(u_input.a.x)) ^ ~(~4294967295u)));
    var var_4 = Struct_3(firstTrailingBit(~func_2(2147483647i).a), ~(-var_2.x), countOneBits(firstTrailingBit(countOneBits(var_2.yyz))), vec4<bool>(global0[_wgslsmith_index_u32(~var_1, 21u)], global0[_wgslsmith_index_u32(var_1, 21u)], any(!func_2(var_2.x).d.wyw), global3.x), global1.x);
    let var_5 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global1.x)) + vec2<f32>(var_4.e, global2.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global2.x, -1348f)))))), global2.yz);
    var var_6 = _wgslsmith_mult_vec3_i32(vec3<i32>(0i, ~_wgslsmith_mod_i32(-14942i, var_4.b), 5335i) & firstLeadingBit(firstLeadingBit(var_4.c)), vec3<i32>(max(-7923i, var_2.x), -58304i, -12261i & (abs(var_2.x) << (1u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mult_i32(-26618i | var_6.x, _wgslsmith_mult_i32(var_4.c.x, var_6.x))), func_3(-vec2<i32>(var_6.x, 1i | var_2.x), func_2(-2147483647i), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, var_5.x, 1759f))))).c.xz, _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_4.e, global2.x), vec2<f32>(global2.x, 1686f))), vec2<f32>(func_3(var_6.zz, Struct_3(var_1, var_6.x, vec3<i32>(var_4.c.x, 2147483647i, var_2.x), vec4<bool>(var_0.a, true, false, true), 2062f), Struct_1(vec3<f32>(var_5.x, var_4.e, 179f))).e, _wgslsmith_div_f32(global2.x, global1.x))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_5.x)) * func_3(var_2.zz, Struct_3(16483u, -2147483647i, vec3<i32>(-1i, -53141i, -36314i), var_4.d, var_5.x), Struct_1(vec3<f32>(835f, 856f, 1482f))).e), 514f)));
}

