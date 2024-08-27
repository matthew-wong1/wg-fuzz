struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec3<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(Struct_1(60509u, vec2<f32>(558f, -1000f), vec3<f32>(-140f, 1407f, -654f), vec2<f32>(-1290f, -1070f), 0u), 1000f), Struct_2(Struct_1(51295u, vec2<f32>(1027f, -623f), vec3<f32>(-848f, -824f, 319f), vec2<f32>(845f, 632f), 44283u), -299f), Struct_2(Struct_1(56162u, vec2<f32>(1529f, -581f), vec3<f32>(1489f, 140f, 690f), vec2<f32>(-1377f, -837f), 8389u), -1175f), Struct_2(Struct_1(61069u, vec2<f32>(-196f, -901f), vec3<f32>(-461f, 281f, -1375f), vec2<f32>(-294f, -1098f), 1u), -1068f), Struct_2(Struct_1(10161u, vec2<f32>(222f, 539f), vec3<f32>(-542f, 1000f, 1754f), vec2<f32>(-663f, -1019f), 50899u), 238f), Struct_2(Struct_1(103466u, vec2<f32>(197f, -353f), vec3<f32>(-1157f, -1036f, 1657f), vec2<f32>(1035f, 1000f), 79334u), 312f), Struct_2(Struct_1(53980u, vec2<f32>(-601f, -1797f), vec3<f32>(-1783f, -1028f, -1355f), vec2<f32>(-715f, -262f), 17010u), -1000f), Struct_2(Struct_1(5312u, vec2<f32>(-684f, 1049f), vec3<f32>(401f, 263f, -1000f), vec2<f32>(778f, -346f), 28083u), -260f), Struct_2(Struct_1(15273u, vec2<f32>(866f, -159f), vec3<f32>(-1977f, -271f, -881f), vec2<f32>(725f, 255f), 1u), 612f), Struct_2(Struct_1(1u, vec2<f32>(-1375f, -1000f), vec3<f32>(506f, -1000f, 1176f), vec2<f32>(-965f, 838f), 1u), 136f), Struct_2(Struct_1(4294967295u, vec2<f32>(-1027f, 1000f), vec3<f32>(1765f, -336f, -1938f), vec2<f32>(129f, -1000f), 25356u), -1986f), Struct_2(Struct_1(0u, vec2<f32>(2257f, 539f), vec3<f32>(185f, -1412f, -1465f), vec2<f32>(-537f, 920f), 4294967295u), 1623f), Struct_2(Struct_1(4294967295u, vec2<f32>(-400f, 730f), vec3<f32>(-1000f, -496f, -1579f), vec2<f32>(802f, 499f), 7186u), 1330f), Struct_2(Struct_1(1u, vec2<f32>(713f, 348f), vec3<f32>(701f, -1000f, 1907f), vec2<f32>(-957f, -1542f), 4294967295u), 1000f), Struct_2(Struct_1(15104u, vec2<f32>(-1158f, 251f), vec3<f32>(900f, -2068f, 1000f), vec2<f32>(164f, 690f), 6775u), 902f), Struct_2(Struct_1(0u, vec2<f32>(1000f, 448f), vec3<f32>(826f, 586f, -522f), vec2<f32>(-1432f, 740f), 85663u), 1791f), Struct_2(Struct_1(0u, vec2<f32>(-789f, 107f), vec3<f32>(744f, 138f, 1133f), vec2<f32>(174f, 1398f), 60703u), -472f), Struct_2(Struct_1(38012u, vec2<f32>(304f, 558f), vec3<f32>(-1000f, -479f, -234f), vec2<f32>(-1000f, 1000f), 38583u), 863f), Struct_2(Struct_1(10246u, vec2<f32>(212f, 1124f), vec3<f32>(659f, 534f, 474f), vec2<f32>(-903f, -560f), 77060u), -270f), Struct_2(Struct_1(4294967295u, vec2<f32>(1000f, 1170f), vec3<f32>(416f, -2810f, -1449f), vec2<f32>(120f, 2164f), 33217u), -1000f), Struct_2(Struct_1(61444u, vec2<f32>(-197f, -911f), vec3<f32>(-609f, 1027f, 833f), vec2<f32>(-682f, -544f), 23518u), 373f), Struct_2(Struct_1(4294967295u, vec2<f32>(-478f, 954f), vec3<f32>(-362f, -1000f, 876f), vec2<f32>(-422f, 885f), 1u), 623f), Struct_2(Struct_1(0u, vec2<f32>(-339f, -521f), vec3<f32>(-863f, -1043f, -809f), vec2<f32>(1310f, -154f), 34602u), 877f), Struct_2(Struct_1(120887u, vec2<f32>(-489f, -546f), vec3<f32>(1344f, -1708f, -580f), vec2<f32>(1873f, -214f), 92235u), 315f), Struct_2(Struct_1(28313u, vec2<f32>(-621f, 2432f), vec3<f32>(544f, -211f, 1000f), vec2<f32>(-578f, -694f), 0u), -379f), Struct_2(Struct_1(1u, vec2<f32>(686f, 510f), vec3<f32>(1460f, 1067f, -1765f), vec2<f32>(-104f, -360f), 10481u), 898f), Struct_2(Struct_1(0u, vec2<f32>(1124f, 647f), vec3<f32>(360f, -1582f, -456f), vec2<f32>(470f, -415f), 4294967295u), -637f));

var<private> global1: vec2<bool>;

var<private> global2: Struct_1 = Struct_1(1u, vec2<f32>(-1572f, 142f), vec3<f32>(-893f, 760f, 767f), vec2<f32>(1000f, -1083f), 36u);

var<private> global3: array<i32, 22>;

var<private> global4: Struct_3 = Struct_3(4294967295u);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32) -> i32 {
    var var_0 = 613f;
    global0 = array<Struct_2, 27>();
    return -firstLeadingBit(reverseBits(_wgslsmith_mult_i32(global3[_wgslsmith_index_u32(global4.a, 22u)], -1i)));
}

fn func_2(arg_0: vec4<bool>, arg_1: f32, arg_2: vec3<u32>) -> vec4<i32> {
    let var_0 = reverseBits(arg_2.x) << (global2.a % 32u);
    var var_1 = firstLeadingBit(u_input.c);
    var var_2 = ~(~_wgslsmith_clamp_vec3_u32(max(arg_2 & vec3<u32>(1u, 53474u, arg_2.x), vec3<u32>(var_1.x, arg_2.x, arg_2.x) | arg_2), arg_2, arg_2));
    let var_3 = var_2.yz;
    let var_4 = -_wgslsmith_sub_i32(u_input.a.x, global3[_wgslsmith_index_u32(~(~1u), 22u)]);
    return vec4<i32>(-u_input.b, _wgslsmith_dot_vec2_i32(~max(~vec2<i32>(var_4, var_4), _wgslsmith_add_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(arg_2.x, 22u)], -13328i), u_input.a)), vec2<i32>(func_3(_wgslsmith_f_op_f32(723f - 2010f)), 3954i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, var_1.x, global2.a, var_1.x), vec4<u32>(4294967295u, 3111u, global4.a, u_input.c.x)) % 32u))), global3[_wgslsmith_index_u32(arg_2.x ^ arg_2.x, 22u)], var_4);
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: Struct_3) -> vec2<bool> {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(abs(4294967295u), 22u)], u_input.d, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(global2.e, 22u)], u_input.d, 1i, global3[_wgslsmith_index_u32(4294967295u, 22u)]), func_2(vec4<bool>(true, true, global1.x, false), -275f, vec3<u32>(0u, 4294967295u, arg_2.a))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, u_input.d), vec3<i32>(u_input.a.x, -2147483647i, 5788i)), countOneBits(-2404i), _wgslsmith_sub_i32(0i, -2147483647i), -1i))), _wgslsmith_mod_vec3_i32(reverseBits(-(~vec3<i32>(u_input.b, global3[_wgslsmith_index_u32(global4.a, 22u)], u_input.b))), _wgslsmith_clamp_vec3_i32(select(vec3<i32>(0i, u_input.b, global3[_wgslsmith_index_u32(1u, 22u)]), vec3<i32>(global3[_wgslsmith_index_u32(0u, 22u)], global3[_wgslsmith_index_u32(u_input.c.x, 22u)], 2147483647i), false) & _wgslsmith_clamp_vec3_i32(vec3<i32>(42816i, 1i, global3[_wgslsmith_index_u32(global2.e, 22u)]), vec3<i32>(44836i, -1i, u_input.a.x), vec3<i32>(22796i, u_input.b, u_input.b)), _wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(u_input.b, u_input.b, 1i)), ~vec3<i32>(u_input.d, 0i, u_input.d)), vec3<i32>(-2147483647i, -2147483647i, max(2147483647i, 14868i)))));
    global1 = vec2<bool>(true, true);
    var var_2 = vec4<bool>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(1000f, -1000f)))) >= _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.x - 493f))), !all(select(vec2<bool>(global1.x, true), vec2<bool>(arg_1, arg_1), global1.x)), (max(arg_2.a, u_input.c.x << (181030u % 32u)) >= 17302u) || !select(true, true | var_0, true), all(select(!(!vec3<bool>(arg_1, true, arg_1)), select(vec3<bool>(true, global1.x, true), vec3<bool>(true, true, true), vec3<bool>(arg_1, var_0, true)), select(vec3<bool>(true, false, global1.x), select(vec3<bool>(var_0, true, arg_1), vec3<bool>(var_0, var_0, arg_1), vec3<bool>(true, false, var_0)), any(vec2<bool>(arg_1, global1.x))))));
    var var_3 = ~u_input.c.x;
    return vec2<bool>(any(select(!vec4<bool>(arg_1, arg_1, arg_1, false), !(!vec4<bool>(arg_1, false, false, true)), !var_0)), !select(arg_1, global1.x, countOneBits(global2.e) > (arg_2.a | global4.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -48455i;
    let var_1 = ~_wgslsmith_sub_u32(~_wgslsmith_mult_u32(~global4.a, u_input.c.x >> (global2.e % 32u)), 2445u);
    global1 = !(!func_1(-933f, _wgslsmith_f_op_f32(select(-1173f, 152f, true)) < _wgslsmith_f_op_f32(floor(global2.b.x)), Struct_3(1u)));
    let var_2 = min(_wgslsmith_mult_vec3_u32(reverseBits(select(vec3<u32>(var_1, 4294967295u, 61952u), vec3<u32>(var_1, global4.a, var_1), false)) & vec3<u32>(1u, abs(54157u), 4294967295u), vec3<u32>(var_1, u_input.c.x | 15244u, ~_wgslsmith_mod_u32(var_1, var_1))), abs(_wgslsmith_add_vec3_u32(max(vec3<u32>(4294967295u, var_1, u_input.c.x), vec3<u32>(global4.a, global4.a, 0u)) & ~vec3<u32>(u_input.c.x, u_input.c.x, 7969u), ~_wgslsmith_mult_vec3_u32(vec3<u32>(global4.a, 8065u, 4294967295u), vec3<u32>(58531u, global4.a, 27023u)))));
    global4 = Struct_3(35086u);
    let x = u_input.a;
    s_output = StorageBuffer(-676f, _wgslsmith_f_op_f32(f32(-1f) * -208f), -1625f, select(vec3<i32>(-2147483647i, _wgslsmith_clamp_i32(u_input.a.x >> (var_1 % 32u), ~u_input.d, countOneBits(u_input.d)), global3[_wgslsmith_index_u32(11937u, 22u)]), vec3<i32>(min(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global3[_wgslsmith_index_u32(u_input.c.x, 22u)], global3[_wgslsmith_index_u32(29446u, 22u)]), vec3<i32>(u_input.d, 51340i, global3[_wgslsmith_index_u32(u_input.c.x, 22u)])), reverseBits(global3[_wgslsmith_index_u32(var_2.x, 22u)])), -countOneBits(-31505i), global3[_wgslsmith_index_u32(global4.a, 22u)]), true), -select(-abs(vec2<i32>(74891i, u_input.b)), u_input.a << (u_input.c % vec2<u32>(32u)), any(vec2<bool>(global1.x, global1.x))));
}

