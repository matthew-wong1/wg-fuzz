struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<i32, 28> = array<i32, 28>(2147483647i, 53624i, -59349i, -18744i, 54887i, 1i, 18415i, 2147483647i, 1i, -1i, i32(-2147483648), -1i, 2147483647i, -1926i, 2147483647i, 0i, 0i, -53171i, -1934i, i32(-2147483648), i32(-2147483648), i32(-2147483648), 5252i, 0i, 2147483647i, 2147483647i, -45998i, -6691i);

var<private> global2: array<vec4<f32>, 30> = array<vec4<f32>, 30>(vec4<f32>(1043f, -1179f, -167f, 654f), vec4<f32>(-1014f, -403f, 4118f, 980f), vec4<f32>(554f, -259f, -566f, 217f), vec4<f32>(-257f, -1000f, 685f, -241f), vec4<f32>(-173f, 1000f, -215f, 934f), vec4<f32>(-1320f, 231f, -639f, 1137f), vec4<f32>(1000f, -112f, -1327f, -334f), vec4<f32>(-748f, 268f, 206f, 1148f), vec4<f32>(694f, -1000f, -197f, -588f), vec4<f32>(-239f, 1000f, 2038f, 107f), vec4<f32>(-874f, 1000f, -1765f, -606f), vec4<f32>(395f, 747f, 1000f, -1225f), vec4<f32>(652f, -1039f, -948f, -1265f), vec4<f32>(1000f, -1969f, 145f, 839f), vec4<f32>(1473f, 207f, 550f, 685f), vec4<f32>(-221f, 421f, 749f, -535f), vec4<f32>(-619f, -1775f, -1580f, -908f), vec4<f32>(-1030f, 1772f, 1222f, 1741f), vec4<f32>(935f, 1893f, 335f, -374f), vec4<f32>(1440f, -1689f, -725f, -922f), vec4<f32>(1055f, -1000f, -1000f, 267f), vec4<f32>(-768f, -1051f, -1339f, -1423f), vec4<f32>(219f, 1000f, -789f, 1861f), vec4<f32>(1000f, -450f, 1000f, 335f), vec4<f32>(-181f, 275f, 1960f, -124f), vec4<f32>(955f, -407f, 536f, -489f), vec4<f32>(101f, 1426f, 101f, -784f), vec4<f32>(-2028f, 1024f, -639f, -558f), vec4<f32>(413f, -249f, 334f, 2259f), vec4<f32>(-482f, 1000f, 336f, -650f));

var<private> global3: u32;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: Struct_3) -> u32 {
    var var_0 = Struct_3(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, 7984i, arg_0.a, global1[_wgslsmith_index_u32(u_input.d, 28u)]), vec4<i32>(arg_3.a, -36653i, 0i, u_input.b.x))), countOneBits(arg_3.a) | ~arg_2.x, _wgslsmith_add_i32(-32464i, ~1i)), 8034i));
    let var_1 = global0.x;
    global0 = reverseBits(u_input.c << (firstLeadingBit(reverseBits(u_input.c)) % vec2<u32>(32u))) ^ abs(vec2<u32>(1u, 4294967295u));
    global0 = ~firstLeadingBit(u_input.c);
    var var_2 = max(4294967295u, firstLeadingBit(1u));
    return 45002u;
}

fn func_4(arg_0: u32, arg_1: Struct_3) -> vec4<f32> {
    var var_0 = firstLeadingBit(reverseBits(vec3<i32>(arg_1.a, 0i, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.e.x, arg_1.a), select(u_input.b.x, 1i, false), 12778i))));
    var var_1 = min(8759i, -1i);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1205f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(808f * -1328f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(831f - -1657f), -259f, true))) * vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(183f, 627f)), _wgslsmith_f_op_f32(f32(-1f) * -1001f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(214f, -1358f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1173f))), -1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-377f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1138f * -402f)), 1f)));
    global2 = array<vec4<f32>, 30>();
    global3 = _wgslsmith_div_u32(~(arg_0 << (~global0.x % 32u)), ~(~4294967295u)) & min(max(u_input.c.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(global0.x, 50631u, global0.x, u_input.d), firstTrailingBit(vec4<u32>(u_input.d, u_input.d, u_input.c.x, 56631u)))), ~(u_input.d << (~31097u % 32u)));
    return _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(~(~firstLeadingBit(~64944u)), 30u)]);
}

fn func_2() -> vec4<bool> {
    global1 = array<i32, 28>();
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(global2[_wgslsmith_index_u32(min(global0.x, global0.x), 30u)])), _wgslsmith_f_op_vec4_f32(func_4(~func_3(Struct_3(u_input.a), Struct_2(Struct_1(vec3<f32>(-326f, -549f, -113f), u_input.a), Struct_1(vec3<f32>(-1863f, 1000f, 1351f), -21563i), 0u, -273f), -vec2<i32>(-1i, global1[_wgslsmith_index_u32(22560u, 28u)]), Struct_3(u_input.e.x)), Struct_3(~u_input.b.x)))));
    var var_1 = ~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(4294967295u, global0.x), global0.x, global0.x), min(vec3<u32>(global0.x, u_input.c.x, u_input.d) | vec3<u32>(4294967295u, 80440u, 9993u), select(vec3<u32>(global0.x, global0.x, 18630u), vec3<u32>(4294967295u, u_input.c.x, 22936u), vec3<bool>(true, true, false)))), firstLeadingBit(1u));
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d >> ((u_input.d | 10783u) % 32u), reverseBits(~u_input.c.x)) ^ ~u_input.c.x, 30u)];
    global1 = array<i32, 28>();
    return !(!vec4<bool>(false, true, true, 1u != (global0.x & 0u)));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: vec3<bool>, arg_3: i32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 952f, -511f) - vec3<f32>(-618f, 598f, 207f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-566f, 341f, -605f))))))) * vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1946f))), -771f, _wgslsmith_f_op_f32(f32(-1f) * -656f))));
    global0 = vec2<u32>(1u, ~arg_0.x);
    let var_1 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(var_0.x * var_0.x)), var_0.x, var_0.x), _wgslsmith_clamp_i32(firstLeadingBit(0i), ~global1[_wgslsmith_index_u32(~arg_0.x, 28u)], countOneBits(arg_3))), Struct_1(vec3<f32>(-1478f, _wgslsmith_f_op_vec4_f32(func_4(global0.x, Struct_3(u_input.a))).x, _wgslsmith_f_op_f32(f32(-1f) * -1947f)), firstTrailingBit(max(-94593i, i32(-1i) * -57119i))), ~abs(0u), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-491f + _wgslsmith_f_op_vec4_f32(func_4(arg_0.x, Struct_3(global1[_wgslsmith_index_u32(arg_0.x, 28u)]))).x), _wgslsmith_f_op_vec4_f32(func_4(~0u, Struct_3(global1[_wgslsmith_index_u32(arg_0.x, 28u)]))).x), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -382f), _wgslsmith_f_op_f32(max(var_0.x, var_0.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))))), true)));
    var var_2 = reverseBits(~abs(u_input.a));
    var_2 = -16905i;
    return var_1;
}

fn func_1(arg_0: vec3<bool>, arg_1: u32) -> i32 {
    var var_0 = func_5(_wgslsmith_div_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 11485u, arg_1), vec3<u32>(1u, 1u, global0.x)), vec3<u32>(global0.x, u_input.c.x, arg_1 | 0u)) << (~min(select(vec3<u32>(global0.x, u_input.c.x, 0u), vec3<u32>(u_input.c.x, 59330u, 33723u), arg_0.x), ~vec3<u32>(global0.x, 7290u, 59491u)) % vec3<u32>(32u)), func_2(), select(arg_0, select(select(arg_0, arg_0, func_2().zzz), select(func_2().yxz, select(vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(arg_0.x, false, true), false), true), true), arg_0.x), global1[_wgslsmith_index_u32(0u, 28u)]);
    global0 = ~u_input.c;
    let var_1 = Struct_3(_wgslsmith_mult_i32(0i, 10533i));
    let var_2 = Struct_3(select(firstTrailingBit(var_1.a), -_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(0i, -26536i, -1i)), firstTrailingBit(vec3<i32>(var_0.a.b, 17990i, -41159i))), !any(vec3<bool>(arg_0.x, arg_0.x, true))));
    global0 = ~(u_input.c & select(min(u_input.c, vec2<u32>(71911u, 0u)) & vec2<u32>(31244u, u_input.d), _wgslsmith_mult_vec2_u32(u_input.c, vec2<u32>(arg_1, var_0.c)), select(arg_0.x, true, false)));
    return abs(-_wgslsmith_div_i32(min(-1i, _wgslsmith_dot_vec2_i32(u_input.b, u_input.e)), func_5(vec3<u32>(30731u, 0u, 34464u), select(vec4<bool>(false, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)), arg_0, -var_1.a).a.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(func_1(vec3<bool>(any(vec4<bool>(true, true, true, false)), true, select(true, false, true)), firstLeadingBit(global0.x) & u_input.c.x), max((1i << (u_input.d % 32u)) | _wgslsmith_div_i32(0i, global1[_wgslsmith_index_u32(u_input.d, 28u)]), countOneBits(15317i)), global1[_wgslsmith_index_u32(u_input.c.x, 28u)]) << ((vec3<u32>(16062u, 60632u, _wgslsmith_clamp_u32(35326u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 11813u, 4294967295u, 4294967295u), vec4<u32>(46548u, 41694u, 1u, 58638u)), u_input.c.x)) ^ vec3<u32>(~firstLeadingBit(u_input.c.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(45826u, u_input.c.x, global0.x, u_input.c.x), _wgslsmith_mod_vec4_u32(vec4<u32>(81183u, global0.x, 13436u, 1u), vec4<u32>(23402u, global0.x, u_input.c.x, global0.x))), 1u)) % vec3<u32>(32u));
    var var_1 = abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -30733i, u_input.e.x, (u_input.b.x | -1i) | var_0.x), ~(~firstTrailingBit(vec4<i32>(-44748i, global1[_wgslsmith_index_u32(4420u, 28u)], global1[_wgslsmith_index_u32(u_input.d, 28u)], var_0.x)))));
    global1 = array<i32, 28>();
    let var_2 = func_2().wxz;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(904f, _wgslsmith_f_op_f32(f32(-1f) * -689f))), 1f);
    global3 = select(u_input.d, 4294967295u, var_2.x);
    let var_4 = 984f;
    var_0 = vec3<i32>(var_1.x, u_input.b.x, select((26951i & func_1(var_2, 17047u)) & _wgslsmith_mod_i32(var_1.x, ~var_0.x), u_input.e.x, var_2.x | func_2().x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, u_input.e.x >> (_wgslsmith_div_u32(~(~1u), u_input.c.x | _wgslsmith_sub_u32(u_input.d, 4294967295u)) % 32u), global0.x);
}

