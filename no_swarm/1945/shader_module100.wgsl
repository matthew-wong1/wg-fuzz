struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<i32>,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(Struct_2(30859u), Struct_1(1456f, vec4<f32>(838f, 1083f, 1177f, -2066f), -244f), vec2<i32>(62488i, 25906i), 1u, Struct_2(1u)), Struct_3(Struct_2(4294967295u), Struct_1(-2005f, vec4<f32>(-987f, -1112f, -832f, 332f), -431f), vec2<i32>(2147483647i, 2147483647i), 59034u, Struct_2(0u)), Struct_3(Struct_2(1u), Struct_1(1000f, vec4<f32>(-238f, -347f, 279f, 556f), 189f), vec2<i32>(-1918i, 0i), 0u, Struct_2(1u)), Struct_3(Struct_2(1u), Struct_1(1505f, vec4<f32>(-1758f, 1000f, -2292f, 1000f), -2091f), vec2<i32>(12128i, 1i), 4294967295u, Struct_2(10057u)), Struct_3(Struct_2(1u), Struct_1(1534f, vec4<f32>(608f, -1660f, 357f, 1000f), 1138f), vec2<i32>(-1i, 1i), 0u, Struct_2(0u)), Struct_3(Struct_2(0u), Struct_1(-1773f, vec4<f32>(1284f, -210f, 712f, -1319f), -359f), vec2<i32>(1i, -50896i), 96018u, Struct_2(91548u)), Struct_3(Struct_2(0u), Struct_1(359f, vec4<f32>(1386f, 165f, -1152f, -468f), 619f), vec2<i32>(1i, -1i), 25801u, Struct_2(1u)), Struct_3(Struct_2(16243u), Struct_1(990f, vec4<f32>(-1494f, -244f, 394f, -1000f), -1660f), vec2<i32>(-45416i, i32(-2147483648)), 4294967295u, Struct_2(1231u)), Struct_3(Struct_2(0u), Struct_1(1944f, vec4<f32>(-292f, 1140f, 371f, 1362f), 479f), vec2<i32>(-51790i, 0i), 16790u, Struct_2(28653u)), Struct_3(Struct_2(1u), Struct_1(136f, vec4<f32>(1558f, 1172f, -326f, -507f), 1343f), vec2<i32>(0i, i32(-2147483648)), 15216u, Struct_2(0u)), Struct_3(Struct_2(4294967295u), Struct_1(-1050f, vec4<f32>(109f, -528f, 1000f, -899f), -395f), vec2<i32>(-1i, 2147483647i), 3196u, Struct_2(24737u)), Struct_3(Struct_2(4742u), Struct_1(-824f, vec4<f32>(1000f, -1000f, 286f, -1026f), 320f), vec2<i32>(0i, 15168i), 23657u, Struct_2(4294967295u)), Struct_3(Struct_2(0u), Struct_1(1047f, vec4<f32>(-845f, -1042f, -772f, -115f), -377f), vec2<i32>(1i, -32951i), 4294967295u, Struct_2(13779u)), Struct_3(Struct_2(17768u), Struct_1(825f, vec4<f32>(-488f, 178f, 889f, -852f), 730f), vec2<i32>(2147483647i, -1i), 20255u, Struct_2(0u)), Struct_3(Struct_2(1u), Struct_1(-139f, vec4<f32>(254f, 239f, 1684f, -877f), -150f), vec2<i32>(2061i, 1i), 30862u, Struct_2(1u)), Struct_3(Struct_2(67801u), Struct_1(484f, vec4<f32>(-437f, 282f, -672f, -543f), 779f), vec2<i32>(1i, 1i), 14960u, Struct_2(0u)), Struct_3(Struct_2(1u), Struct_1(145f, vec4<f32>(-601f, 950f, -287f, 1550f), 1562f), vec2<i32>(2147483647i, 0i), 41042u, Struct_2(4294967295u)), Struct_3(Struct_2(1u), Struct_1(2087f, vec4<f32>(-1339f, 871f, 1446f, -578f), 751f), vec2<i32>(-1i, 11278i), 1u, Struct_2(37223u)), Struct_3(Struct_2(0u), Struct_1(1971f, vec4<f32>(-1000f, -1000f, -712f, 1926f), 3059f), vec2<i32>(0i, i32(-2147483648)), 4294967295u, Struct_2(0u)), Struct_3(Struct_2(0u), Struct_1(852f, vec4<f32>(1953f, 314f, -786f, -1375f), -593f), vec2<i32>(44511i, -32463i), 1u, Struct_2(1u)), Struct_3(Struct_2(1462u), Struct_1(288f, vec4<f32>(586f, 421f, -370f, 464f), 1899f), vec2<i32>(-58860i, 0i), 4294967295u, Struct_2(22602u)), Struct_3(Struct_2(4294967295u), Struct_1(-1207f, vec4<f32>(1680f, 378f, -1567f, 800f), -996f), vec2<i32>(2147483647i, 40846i), 1u, Struct_2(15711u)), Struct_3(Struct_2(9925u), Struct_1(-1825f, vec4<f32>(-1543f, 403f, 951f, -1036f), -260f), vec2<i32>(2147483647i, -15113i), 92252u, Struct_2(1u)), Struct_3(Struct_2(4294967295u), Struct_1(-593f, vec4<f32>(1019f, 1683f, 356f, 1000f), -770f), vec2<i32>(27053i, i32(-2147483648)), 1u, Struct_2(4294967295u)), Struct_3(Struct_2(55395u), Struct_1(1000f, vec4<f32>(-774f, 504f, -365f, -518f), 1098f), vec2<i32>(-27276i, -28184i), 85546u, Struct_2(4294967295u)), Struct_3(Struct_2(16336u), Struct_1(377f, vec4<f32>(638f, 502f, -1000f, -452f), -1723f), vec2<i32>(44421i, -17662i), 23381u, Struct_2(29657u)), Struct_3(Struct_2(1u), Struct_1(-432f, vec4<f32>(1354f, -451f, -619f, 318f), -766f), vec2<i32>(0i, 2147483647i), 0u, Struct_2(1u)), Struct_3(Struct_2(29533u), Struct_1(1313f, vec4<f32>(-1851f, -1290f, 914f, 611f), 1000f), vec2<i32>(1i, 2408i), 1u, Struct_2(68951u)));

var<private> global1: vec2<f32> = vec2<f32>(1000f, -749f);

var<private> global2: vec2<u32>;

var<private> global3: array<f32, 11> = array<f32, 11>(1211f, 208f, 1000f, -960f, -2010f, 1139f, -191f, -418f, 827f, 884f, 1000f);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<bool> {
    var var_0 = global1.x;
    var_0 = -918f;
    var var_1 = global0[_wgslsmith_index_u32(select(~u_input.a.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 22159u, 4294967295u, global2.x) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, global2.x, 4294967295u, 62683u), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 1u)) % vec4<u32>(32u)), vec4<u32>(countOneBits(global2.x), u_input.a.x << (global2.x % 32u), 0u, ~u_input.a.x)) | 38059u, !select(any(vec3<bool>(false, true, true)), select(true, true, 615f != global3[_wgslsmith_index_u32(global2.x, 11u)]), true)), 28u)];
    let var_2 = ~u_input.b.wwy;
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -724f);
    return vec2<bool>(true, !any(vec4<bool>(true, true, true, true)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3, arg_3: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(1000f + 1809f)));
    global3 = array<f32, 11>();
    let var_1 = Struct_4(!vec3<bool>(any(func_3()), true, any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(arg_2.b.b)), arg_1.b.b, vec4<bool>((u_input.a.x > _wgslsmith_div_u32(25800u, 39834u)) & var_1.a.x, func_3().x, true, var_1.a.x)));
    global1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(829f, _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.b.c), arg_1.b.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.ww * arg_1.b.b.wz) - _wgslsmith_f_op_vec2_f32(exp2(arg_2.b.b.zy)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1775f) + _wgslsmith_f_op_f32(-478f - arg_2.b.a)), arg_2.b.c) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_2.x, var_2.x), arg_1.b.b.wx)))))));
    return arg_2.d;
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_4) -> Struct_3 {
    global2 = countOneBits(~vec2<u32>(~arg_2.x, 61892u));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1710f, global3[_wgslsmith_index_u32(global2.x, 11u)])) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1782f, arg_1), vec2<f32>(global3[_wgslsmith_index_u32(arg_2.x, 11u)], 2018f), arg_3.a.xy))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(arg_2.x, 11u)], 1000f) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1, -1000f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-818f, _wgslsmith_f_op_f32(trunc(arg_1)))))));
    let var_0 = countOneBits(58947u);
    var var_1 = _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~firstTrailingBit(u_input.a.x), 11u)]);
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-109f, -150f, 1046f, arg_1))) + vec4<f32>(arg_1, -807f, 911f, global3[_wgslsmith_index_u32(4294967295u, 11u)]))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(arg_2.x, 11u)], -1000f, 233f, global1.x)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -817f, global3[_wgslsmith_index_u32(66323u, 11u)], global1.x)), vec4<f32>(global1.x, -834f, 1401f, 692f), !vec4<bool>(true, false, arg_3.a.x, false))))), vec4<f32>(292f, _wgslsmith_f_op_f32(1f * -1050f), 368f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(4294967295u, 11u)], -1035f, arg_3.a.x)), _wgslsmith_f_op_f32(round(global1.x))))));
    return global0[_wgslsmith_index_u32(global2.x, 28u)];
}

fn func_1(arg_0: Struct_3, arg_1: u32) -> StorageBuffer {
    global2 = (u_input.a.xy << (~_wgslsmith_add_vec2_u32(u_input.a.zx, u_input.a.zy ^ vec2<u32>(12049u, 4294967295u)) % vec2<u32>(32u))) << (_wgslsmith_sub_vec2_u32(vec2<u32>(global2.x, arg_1), vec2<u32>(1u, max(arg_1, _wgslsmith_add_u32(global2.x, 38688u)))) % vec2<u32>(32u));
    var var_0 = ~(-1i) << (arg_0.e.a % 32u);
    global0 = array<Struct_3, 28>();
    var var_1 = func_4(_wgslsmith_mult_vec3_u32(countOneBits(_wgslsmith_div_vec3_u32(u_input.a, firstTrailingBit(vec3<u32>(global2.x, 0u, 0u)))), max(abs(vec3<u32>(arg_0.a.a, global2.x, 22498u)), vec3<u32>(arg_0.a.a, u_input.a.x, arg_0.e.a)) >> (vec3<u32>(firstLeadingBit(arg_1), func_2(arg_0.e, Struct_3(arg_0.e, Struct_1(-203f, vec4<f32>(-492f, -2346f, -791f, global1.x), 1000f), vec2<i32>(22108i, arg_0.c.x), arg_0.e.a, Struct_2(4294967295u)), global0[_wgslsmith_index_u32(12459u, 28u)], -13593i), u_input.a.x) % vec3<u32>(32u))), global3[_wgslsmith_index_u32(4479u, 11u)], vec2<u32>(4294967295u, reverseBits(arg_1)), Struct_4(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true))));
    global2 = _wgslsmith_div_vec2_u32(max(u_input.a.xy, (_wgslsmith_div_vec2_u32(u_input.a.xz, u_input.a.zx) ^ vec2<u32>(var_1.d, 0u)) >> (_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a.zy, u_input.a.yz), u_input.a.zx, _wgslsmith_clamp_vec2_u32(u_input.a.xy, u_input.a.zz, u_input.a.yy)) % vec2<u32>(32u))), _wgslsmith_div_vec2_u32(~select(u_input.a.xx, vec2<u32>(23927u, 74415u), true) | _wgslsmith_mod_vec2_u32(~u_input.a.zx, u_input.a.yy), vec2<u32>(27220u, _wgslsmith_div_u32(var_1.a.a, 0u))));
    return StorageBuffer(vec2<u32>(~global2.x ^ arg_0.a.a, global2.x) & u_input.a.zy, vec4<u32>(~_wgslsmith_dot_vec2_u32(countOneBits(u_input.a.xz), vec2<u32>(global2.x, u_input.a.x)), ~_wgslsmith_sub_u32(u_input.a.x ^ arg_0.a.a, 3788u), func_2(var_1.a, global0[_wgslsmith_index_u32(~(~4294967295u), 28u)], func_4(~vec3<u32>(20349u, 0u, 0u), _wgslsmith_f_op_f32(step(var_1.b.c, global3[_wgslsmith_index_u32(arg_1, 11u)])), ~u_input.a.zz, Struct_4(vec3<bool>(true, false, true))), var_1.c.x ^ arg_0.c.x), 1u), _wgslsmith_add_vec2_u32(vec2<u32>(~reverseBits(0u), _wgslsmith_dot_vec2_u32(~u_input.a.zz, ~u_input.a.zx)), ~_wgslsmith_mult_vec2_u32(u_input.a.zx | u_input.a.yz, ~vec2<u32>(26530u, 72638u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(!(!select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), vec3<bool>(true, true, false))));
    var var_1 = -13069i;
    var var_2 = -37982i;
    let var_3 = max(~u_input.b.yx & u_input.b.yy, _wgslsmith_add_vec2_i32(u_input.b.yz, u_input.b.xy));
    global0 = array<Struct_3, 28>();
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_div_f32(1698f, global3[_wgslsmith_index_u32(36833u ^ u_input.a.x, 11u)]), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1434f)))));
    let var_5 = ~23723u;
    let x = u_input.a;
    s_output = func_1(global0[_wgslsmith_index_u32(global2.x >> (_wgslsmith_clamp_u32(1u, 65876u, ~global2.x) % 32u), 28u)], ~(~0u));
}

