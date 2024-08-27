struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec3<i32>,
    d: bool,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 29>;

var<private> global1: array<vec2<bool>, 22> = array<vec2<bool>, 22>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false));

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(1i, false, 0u, vec3<f32>(616f, 559f, 1522f), -488f), Struct_1(1i, false, 4294967295u, vec3<f32>(-611f, -701f, 1808f), -526f), Struct_1(-16118i, true, 41594u, vec3<f32>(1732f, 477f, 763f), 1180f), Struct_1(0i, true, 2187u, vec3<f32>(468f, -1000f, 1000f), -321f), Struct_1(-1826i, true, 1u, vec3<f32>(-2068f, 1000f, -1190f), -1787f), Struct_1(9324i, true, 40938u, vec3<f32>(980f, -1000f, -1512f), -531f), Struct_1(-1i, true, 7658u, vec3<f32>(-1000f, 823f, -727f), 1576f), Struct_1(2147483647i, true, 0u, vec3<f32>(736f, 1082f, 262f), 892f), Struct_1(-11833i, false, 97836u, vec3<f32>(2050f, -1700f, -958f), -1146f), Struct_1(2147483647i, true, 42184u, vec3<f32>(537f, -863f, -1274f), -1831f), Struct_1(-38205i, true, 135531u, vec3<f32>(-468f, 809f, -724f), 1177f), Struct_1(i32(-2147483648), true, 53816u, vec3<f32>(-2092f, 186f, -590f), 153f), Struct_1(15018i, true, 1u, vec3<f32>(134f, 572f, -786f), 1343f), Struct_1(11725i, false, 1u, vec3<f32>(1000f, 1904f, 655f), 695f), Struct_1(0i, true, 44194u, vec3<f32>(-1000f, 959f, -1414f), -107f), Struct_1(41980i, true, 73551u, vec3<f32>(-746f, -311f, 253f), 611f), Struct_1(-15259i, false, 12960u, vec3<f32>(-1000f, -1561f, 345f), -2160f), Struct_1(-3884i, true, 41568u, vec3<f32>(611f, 1391f, 1104f), -182f), Struct_1(-1i, true, 1u, vec3<f32>(1228f, -537f, 257f), 1345f), Struct_1(-76079i, true, 1624u, vec3<f32>(-851f, 799f, -1204f), -319f), Struct_1(2147483647i, false, 4294967295u, vec3<f32>(978f, 458f, -1396f), -712f), Struct_1(0i, false, 0u, vec3<f32>(-1000f, -729f, -675f), -1041f), Struct_1(-18640i, false, 4294967295u, vec3<f32>(-953f, -1267f, -584f), 745f), Struct_1(2147483647i, false, 23600u, vec3<f32>(390f, -186f, 1000f), -1845f), Struct_1(0i, false, 4294967295u, vec3<f32>(2745f, 1103f, 1139f), 395f), Struct_1(40920i, true, 53970u, vec3<f32>(2281f, -1518f, 1132f), 712f), Struct_1(14467i, true, 90262u, vec3<f32>(912f, -496f, -1105f), 188f), Struct_1(-46268i, true, 0u, vec3<f32>(990f, 1000f, 1480f), 1000f), Struct_1(-60998i, true, 1u, vec3<f32>(-304f, -332f, 1000f), -491f));

var<private> global3: array<vec2<u32>, 21>;

var<private> global4: array<vec4<u32>, 10>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<f32>) -> vec4<f32> {
    global4 = array<vec4<u32>, 10>();
    let var_0 = Struct_2(_wgslsmith_div_vec3_u32(abs(vec3<u32>(_wgslsmith_clamp_u32(31571u, 57593u, u_input.b), _wgslsmith_sub_u32(4294967295u, u_input.b), 1u)), ~vec3<u32>(_wgslsmith_sub_u32(u_input.b, u_input.b), _wgslsmith_mod_u32(4294967295u, u_input.b), u_input.b >> (98614u % 32u))), global2[_wgslsmith_index_u32(4294967295u, 29u)], firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x | arg_0.x, i32(-1i) * -14104i, -1i), select(-u_input.c.zyx, select(u_input.e, u_input.e, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false))))), all(vec3<bool>(any(vec3<bool>(false, false, true)), any(global1[_wgslsmith_index_u32(61889u, 22u)]), arg_1.x < -144f)) & (_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, arg_0.x, 2147483647i, arg_0.x), u_input.c, vec4<i32>(0i, 1i, u_input.c.x, u_input.c.x)), ~vec4<i32>(arg_0.x, 30925i, arg_0.x, u_input.e.x)) != (i32(-1i) * -u_input.a.x)));
    var var_1 = Struct_2(var_0.a, Struct_1(-arg_0.x << (~(~1u) % 32u), true, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.a.x, 0u, var_0.b.c), firstTrailingBit(vec3<u32>(u_input.b, 4294967295u, u_input.b))) << (~select(0u, 0u, var_0.d) % 32u), arg_1, 297f), select(reverseBits(_wgslsmith_div_vec3_i32(u_input.e, vec3<i32>(var_0.c.x, arg_0.x, var_0.c.x))), var_0.c, false), false);
    global1 = array<vec2<bool>, 22>();
    let var_2 = u_input.b;
    return vec4<f32>(709f, _wgslsmith_f_op_f32(sign(var_1.b.d.x)), var_0.b.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(2139f))))) * -457f));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: u32) -> bool {
    var var_0 = vec2<u32>(0u, arg_0);
    let var_1 = vec4<u32>(~(~u_input.b), 4294967295u, _wgslsmith_dot_vec4_u32(firstLeadingBit(global4[_wgslsmith_index_u32(var_0.x, 10u)] & vec4<u32>(4294967295u, arg_2, arg_2, 4294967295u)), ~vec4<u32>(108646u, 4294967295u, 0u, 19654u)), 37411u) ^ reverseBits(_wgslsmith_sub_vec4_u32(countOneBits(global4[_wgslsmith_index_u32(u_input.b, 10u)]) >> (min(global4[_wgslsmith_index_u32(1u, 10u)], vec4<u32>(10892u, 16542u, arg_1.b.c, arg_1.a.x)) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(abs(vec4<u32>(101032u, var_0.x, arg_2, 18322u)), global4[_wgslsmith_index_u32(~59994u, 10u)])));
    let var_2 = vec2<u32>(1u, 22682u);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_3(arg_1.c.xx, vec3<f32>(arg_1.b.e, 658f, 724f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.e, -1409f, arg_1.b.e, 1454f) * vec4<f32>(arg_1.b.d.x, arg_1.b.d.x, -480f, 457f))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.d.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.b.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.d.x)) - arg_1.b.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.d.x * arg_1.b.e)))));
    let var_4 = 33454u;
    return !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.b.d.x * _wgslsmith_f_op_f32(-arg_1.b.d.x)), _wgslsmith_f_op_f32(-var_3.x)) == arg_1.b.d.x);
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: i32, arg_3: u32) -> Struct_3 {
    var var_0 = vec3<bool>(arg_0.d, select(true, all(vec3<bool>(any(vec4<bool>(arg_0.d, false, true, false)), true, true)), !any(vec4<bool>(arg_0.b.b, arg_0.d, false, true))), select(arg_0.d, reverseBits(111975u) != u_input.b, false && ((30385u > arg_0.b.c) & (-1624f >= arg_0.b.d.x))));
    var var_1 = 1f;
    global4 = array<vec4<u32>, 10>();
    var var_2 = abs(firstLeadingBit(u_input.b << (~abs(u_input.b) % 32u)));
    let var_3 = _wgslsmith_f_op_vec4_f32(func_3(vec2<i32>(0i, ~abs(-10627i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - arg_0.b.e) * _wgslsmith_f_op_f32(-1367f * 615f)), _wgslsmith_f_op_f32(847f * 2927f))))).x;
    return Struct_3(max(_wgslsmith_dot_vec4_i32(max(vec4<i32>(-33206i, arg_0.c.x, 20971i, u_input.e.x), select(vec4<i32>(arg_2, 3424i, -1i, arg_0.b.a), vec4<i32>(0i, 20251i, arg_0.c.x, arg_0.b.a), vec4<bool>(false, true, false, var_0.x))), vec4<i32>(arg_2, abs(7350i), firstLeadingBit(-1357i), 1i)), ~1i));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: Struct_4, arg_3: vec4<f32>) -> f32 {
    var var_0 = func_4(Struct_2(arg_1, global2[_wgslsmith_index_u32(1u, 29u)], vec3<i32>(~1i, max(0i, arg_2.a) << (0u % 32u), max(0i, -54717i)), true), 1487f, u_input.c.x, select(arg_1.x, firstTrailingBit(abs(firstLeadingBit(u_input.b))), !(!func_2(4294967295u, Struct_2(arg_1, global2[_wgslsmith_index_u32(u_input.b, 29u)], vec3<i32>(44739i, arg_2.a, arg_2.a), false), 85152u))));
    var_0 = func_4(Struct_2(vec3<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, 56607u, 0u), select(arg_1, arg_1, vec3<bool>(arg_0.x, false, false))), 0u), Struct_1(-arg_2.a, true, ~4294967295u, vec3<f32>(534f, _wgslsmith_f_op_f32(-arg_3.x), -1100f), _wgslsmith_f_op_vec4_f32(func_3(global0[_wgslsmith_index_u32(~u_input.b, 29u)], _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3.x, arg_3.x, 1559f), vec3<f32>(arg_3.x, 508f, arg_3.x), arg_0.yyw)))).x), vec3<i32>(u_input.a.x | u_input.c.x, i32(-1i) * -u_input.e.x, _wgslsmith_dot_vec3_i32(u_input.c.xxx, vec3<i32>(-48352i, -15981i, u_input.e.x) & vec3<i32>(2964i, var_0.a, var_0.a))), !(!(!arg_0.x))), _wgslsmith_f_op_f32(-arg_3.x), abs(u_input.e.x), arg_1.x);
    var var_1 = Struct_4(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.a.x, arg_2.a, u_input.e.x, -1i)), u_input.c), u_input.c ^ abs(_wgslsmith_mod_vec4_i32(u_input.c, u_input.c))));
    global4 = array<vec4<u32>, 10>();
    var_0 = func_4(Struct_2(arg_1, Struct_1(-1i, arg_0.x, u_input.b, _wgslsmith_f_op_vec3_f32(-arg_3.ywx), 1076f), vec3<i32>(u_input.e.x, -var_1.a, abs(-2147483647i)), all(!(!arg_0.zy))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) - _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(43434i, -11884i)), abs(vec2<i32>(36569i, -2147483647i))), vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_3.x)), _wgslsmith_f_op_f32(arg_3.x - arg_3.x), _wgslsmith_f_op_f32(round(arg_3.x))))).x), -57976i, u_input.b);
    return 754f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-360f, -566f, false))))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(333f)) - _wgslsmith_f_op_f32(func_1(vec4<bool>(true, false, true, true), vec3<u32>(52708u, u_input.b, u_input.b), Struct_4(-2147483647i), vec4<f32>(1343f, -606f, -1692f, 506f)))))))));
    global2 = array<Struct_1, 29>();
    var var_1 = 1828f;
    var var_2 = Struct_2(_wgslsmith_add_vec3_u32(~(~vec3<u32>(0u, u_input.b, u_input.b)), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(global3[_wgslsmith_index_u32(u_input.b, 21u)], global3[_wgslsmith_index_u32(1u, 21u)]), ~u_input.b), 35249u, u_input.b ^ firstLeadingBit(u_input.b))), global2[_wgslsmith_index_u32(u_input.b, 29u)], vec3<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 80888i), vec2<i32>(u_input.d, u_input.e.x) ^ vec2<i32>(u_input.e.x, u_input.a.x)), u_input.e.x, firstLeadingBit(~0i | (u_input.d & 46i))), select(any(vec2<bool>(true, true)), !any(vec4<bool>(true, false, true, false)) || (30864u == _wgslsmith_div_u32(u_input.b, 0u)), !(101657u != (u_input.b >> (46569u % 32u)))));
    var var_3 = ~countOneBits(abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d, 1i), vec2<i32>(24090i, u_input.e.x), ~var_2.c.yz)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~1578u) >> (~var_2.b.c % 32u), ~global4[_wgslsmith_index_u32(var_2.b.c, 10u)], var_2.a.x);
}

