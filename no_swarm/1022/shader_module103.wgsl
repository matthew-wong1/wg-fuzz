struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
    c: bool,
    d: vec3<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 25>;

var<private> global1: array<vec3<u32>, 23> = array<vec3<u32>, 23>(vec3<u32>(32336u, 62567u, 9333u), vec3<u32>(73873u, 50627u, 0u), vec3<u32>(21466u, 0u, 86691u), vec3<u32>(74220u, 0u, 1u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(0u, 19889u, 0u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(44377u, 1u, 8826u), vec3<u32>(4294967295u, 59212u, 70141u), vec3<u32>(0u, 12869u, 1u), vec3<u32>(28585u, 67730u, 1u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(17496u, 0u, 1u), vec3<u32>(24017u, 0u, 58230u), vec3<u32>(5560u, 29403u, 0u), vec3<u32>(15075u, 14364u, 4294967295u), vec3<u32>(3283u, 54065u, 0u), vec3<u32>(4294967295u, 0u, 63558u), vec3<u32>(1u, 4294967295u, 74152u), vec3<u32>(1u, 1u, 0u), vec3<u32>(4294967295u, 31107u, 46339u), vec3<u32>(0u, 8303u, 1u), vec3<u32>(0u, 20648u, 1u));

var<private> global2: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(1687f, vec4<u32>(0u, 50037u, 0u, 52660u), false, vec3<f32>(-1367f, -1212f, -672f), Struct_2(vec2<f32>(351f, 441f), 1900f, 0i)), Struct_3(1264f, vec4<u32>(19279u, 149641u, 44640u, 16790u), true, vec3<f32>(1000f, 1041f, -772f), Struct_2(vec2<f32>(-744f, -1547f), 746f, 1886i)), Struct_3(-2171f, vec4<u32>(16675u, 44252u, 6789u, 67689u), false, vec3<f32>(-1000f, -875f, -1079f), Struct_2(vec2<f32>(330f, 782f), -320f, -34172i)), Struct_3(-736f, vec4<u32>(0u, 0u, 3224u, 1u), true, vec3<f32>(242f, 130f, 138f), Struct_2(vec2<f32>(-2347f, 428f), 1151f, -36016i)), Struct_3(-488f, vec4<u32>(1u, 36346u, 24899u, 4294967295u), false, vec3<f32>(405f, -1292f, 1189f), Struct_2(vec2<f32>(-424f, -1753f), -1171f, -1i)), Struct_3(497f, vec4<u32>(0u, 1u, 4294967295u, 1u), false, vec3<f32>(413f, -729f, 1476f), Struct_2(vec2<f32>(-986f, 546f), -1120f, -26398i)), Struct_3(1000f, vec4<u32>(67606u, 0u, 1381u, 33715u), false, vec3<f32>(173f, -695f, -1068f), Struct_2(vec2<f32>(1178f, -105f), 1870f, 1i)), Struct_3(1031f, vec4<u32>(37838u, 1u, 4810u, 52198u), true, vec3<f32>(-932f, 1043f, -1163f), Struct_2(vec2<f32>(520f, 1300f), 1614f, 1i)), Struct_3(-1157f, vec4<u32>(1u, 9212u, 12335u, 0u), true, vec3<f32>(-516f, -468f, 2616f), Struct_2(vec2<f32>(-1159f, 1276f), 1370f, -5961i)), Struct_3(1000f, vec4<u32>(76637u, 44196u, 2044u, 4294967295u), false, vec3<f32>(887f, -1304f, 497f), Struct_2(vec2<f32>(1073f, -813f), 1538f, 2147483647i)), Struct_3(1698f, vec4<u32>(1u, 4294967295u, 1u, 31615u), true, vec3<f32>(824f, 1080f, -136f), Struct_2(vec2<f32>(1389f, 529f), -155f, -13806i)), Struct_3(-980f, vec4<u32>(68557u, 14831u, 4294967295u, 4294967295u), true, vec3<f32>(-126f, 1944f, 1393f), Struct_2(vec2<f32>(-2095f, -996f), 1544f, -37049i)), Struct_3(599f, vec4<u32>(57559u, 1u, 53105u, 4294967295u), false, vec3<f32>(824f, 914f, -153f), Struct_2(vec2<f32>(3149f, -1250f), -306f, 6863i)), Struct_3(1777f, vec4<u32>(12721u, 4156u, 70120u, 120u), false, vec3<f32>(1666f, -1940f, -1135f), Struct_2(vec2<f32>(241f, 387f), -1430f, 43627i)), Struct_3(1518f, vec4<u32>(37722u, 1u, 4294967295u, 73907u), true, vec3<f32>(374f, 1685f, -2267f), Struct_2(vec2<f32>(-1695f, -378f), -616f, 67436i)), Struct_3(333f, vec4<u32>(1u, 47581u, 1u, 41782u), false, vec3<f32>(-1281f, -641f, -762f), Struct_2(vec2<f32>(1932f, -1205f), 833f, 20426i)), Struct_3(-132f, vec4<u32>(4294967295u, 52840u, 0u, 41235u), false, vec3<f32>(-301f, 566f, 775f), Struct_2(vec2<f32>(1062f, -362f), -247f, i32(-2147483648))), Struct_3(-1000f, vec4<u32>(44234u, 76156u, 1u, 1u), true, vec3<f32>(-1011f, -360f, 698f), Struct_2(vec2<f32>(-424f, 455f), -1274f, 1i)));

var<private> global3: i32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec2<u32>) -> f32 {
    return _wgslsmith_f_op_f32(sign(253f));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b, arg_2.b, arg_2.b, arg_2.b)), _wgslsmith_div_vec4_f32(vec4<f32>(-2556f, arg_2.b, arg_2.b, arg_2.b), vec4<f32>(-1829f, arg_2.b, arg_2.b, -384f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.b, arg_2.b, -622f, 1620f), vec4<f32>(-260f, arg_2.b, -343f, 591f), arg_2.d)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b, 1407f, arg_2.b, arg_2.b) - vec4<f32>(-1000f, -1253f, arg_2.b, -620f))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b, arg_2.b, arg_2.b, 970f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(675f, arg_2.b, arg_2.b, -2002f) - vec4<f32>(-1141f, 279f, arg_2.b, -305f))))), select(true, arg_1, any(select(arg_2.d, arg_2.d, vec4<bool>(false, false, false, true)))))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(~0u, 25u)], Struct_2(vec2<f32>(arg_2.b, -2106f), 565f, u_input.d.x), reverseBits(u_input.d.xz), max(u_input.c, arg_2.c.xx))), _wgslsmith_f_op_f32(floor(-315f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b + 413f)), arg_2.b))));
    global2 = array<Struct_3, 18>();
    global2 = array<Struct_3, 18>();
    let var_1 = -868f;
    var var_2 = vec3<f32>(768f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-887f, -303f) + var_0.x))), _wgslsmith_f_op_f32(min(1f, -598f)));
    return Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b * -2301f)))), ~(~(~vec4<u32>(0u, arg_2.c.x, arg_2.c.x, 1u))), true, _wgslsmith_f_op_vec3_f32(-var_0.zzz), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_2.yx))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -594f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(0u, 18u)], Struct_2(var_0.yx, -356f, 31947i), vec2<i32>(u_input.a.x, 44649i), arg_2.c.yz)))), _wgslsmith_sub_i32(countOneBits(arg_2.a), u_input.a.x)));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec3<i32>) -> vec2<u32> {
    global1 = array<vec3<u32>, 23>();
    let var_0 = arg_1.e;
    global2 = array<Struct_3, 18>();
    let var_1 = _wgslsmith_mod_vec4_i32(vec4<i32>(max(-1i, ~_wgslsmith_sub_i32(13848i, arg_1.e.c)), _wgslsmith_dot_vec3_i32(arg_2, firstTrailingBit(u_input.d)), firstLeadingBit(arg_2.x), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-5307i, arg_2.x)), ~vec2<i32>(2147483647i, -27178i)) >> (~_wgslsmith_sub_u32(22362u, arg_1.b.x) % 32u)), ~vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, _wgslsmith_add_i32(1i, _wgslsmith_mod_i32(var_0.c, 1i))));
    global0 = array<Struct_3, 25>();
    return _wgslsmith_sub_vec2_u32(~min(vec2<u32>(~40993u, ~4294967295u), ~vec2<u32>(4294967295u, u_input.b.x)), firstTrailingBit(~_wgslsmith_clamp_vec2_u32(vec2<u32>(48975u, u_input.c.x) << (vec2<u32>(arg_1.b.x, 30649u) % vec2<u32>(32u)), vec2<u32>(0u, u_input.b.x), firstTrailingBit(u_input.b))));
}

fn func_1(arg_0: u32, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = u_input.c;
    var var_1 = Struct_1(0i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-233f, -304f)), ~select(select(select(vec3<u32>(arg_0, var_0.x, 17964u), global1[_wgslsmith_index_u32(var_0.x, 23u)], true), ~global1[_wgslsmith_index_u32(30931u, 23u)], vec3<bool>(true, true, true)), _wgslsmith_mod_vec3_u32(vec3<u32>(43032u, var_0.x, 1u), global1[_wgslsmith_index_u32(~u_input.c.x, 23u)]), true), vec4<bool>(false, any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true)), true, !(abs(89377u) > ~arg_0)));
    global1 = array<vec3<u32>, 23>();
    var var_2 = var_1.c.xz & func_4(935f, func_3(true, 1u != var_1.c.x, Struct_1(_wgslsmith_add_i32(6776i, arg_1.x), _wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(var_1.c.x, 18u)], Struct_2(vec2<f32>(var_1.b, var_1.b), 345f, -2147483647i), vec2<i32>(-1i, arg_1.x), vec2<u32>(u_input.b.x, u_input.c.x))), countOneBits(vec3<u32>(4294967295u, var_0.x, 125572u)), vec4<bool>(var_1.d.x, false, false, var_1.d.x))), vec3<i32>(-1i, u_input.d.x, arg_1.x));
    var var_3 = func_3(_wgslsmith_add_u32(_wgslsmith_sub_u32(18988u, countOneBits(1565u)), min(10503u, var_1.c.x)) > u_input.b.x, any(select(var_1.d.yxz, !vec3<bool>(false, var_1.d.x, var_1.d.x), var_1.d.x)), Struct_1(-52543i, var_1.b, var_1.c ^ vec3<u32>(u_input.c.x, var_1.c.x ^ u_input.b.x, 1u), vec4<bool>(true, all(var_1.d.ywx), !(!var_1.d.x), all(var_1.d.zx)))).e;
    return Struct_1(var_3.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1261f - var_1.b) - var_3.a.x), _wgslsmith_add_vec3_u32(vec3<u32>(~(0u | arg_0), _wgslsmith_div_u32(func_3(true, false, Struct_1(var_1.a, var_3.b, vec3<u32>(0u, 1u, arg_0), vec4<bool>(var_1.d.x, false, true, var_1.d.x))).b.x, min(39370u, u_input.c.x)), ~(~990u)), _wgslsmith_sub_vec3_u32(select(_wgslsmith_add_vec3_u32(vec3<u32>(43382u, 33142u, arg_0), global1[_wgslsmith_index_u32(24192u, 23u)]), vec3<u32>(4294967295u, 72229u, 4294967295u), vec3<bool>(var_1.d.x, false, true)), ~firstTrailingBit(global1[_wgslsmith_index_u32(u_input.b.x, 23u)]))), !(!var_1.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(min(u_input.c.x, ~0u), u_input.d.xz);
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a & u_input.a.x, u_input.d.x, -27500i, ~u_input.d.x) ^ firstTrailingBit(vec4<i32>(-10056i, var_0.a, u_input.d.x, u_input.d.x)), vec4<i32>(min(~(-11894i), firstTrailingBit(u_input.d.x)), -2147483647i << (select(15047u, var_0.c.x, true) % 32u), -10978i & max(u_input.d.x, -1i), -13414i)), var_0.a);
    var_1 = var_0.a;
    global3 = _wgslsmith_div_i32(9713i, abs(u_input.a.x & (_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(u_input.a.x, 0i)) | var_0.a)));
    var var_2 = abs(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.x, 27491u, var_0.c.x, var_0.c.x), vec4<u32>(4294967295u, 30081u, 1u, 4294967295u)), var_0.c.x), _wgslsmith_clamp_u32(u_input.c.x << (var_0.c.x % 32u), 4294967295u, func_1(4294967295u, vec2<i32>(-24234i, var_0.a)).c.x), 48928u, 100834u), (~vec4<u32>(var_0.c.x, 1u, u_input.b.x, 32872u) >> (~vec4<u32>(0u, 4294967295u, 4294967295u, var_0.c.x) % vec4<u32>(32u))) | ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.c.x, 45763u), vec4<u32>(1u, 25153u, 4294967295u, var_0.c.x))));
    var var_3 = vec2<u32>(var_0.c.x, ~(~1u));
    let var_4 = any(!func_1(abs(reverseBits(56714u)), -vec2<i32>(u_input.d.x, var_0.a)).d);
    let var_5 = Struct_1(firstTrailingBit(~(-37703i)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-159f * 758f)))), 382f)), countOneBits(var_0.c), func_1(var_0.c.x, vec2<i32>(max(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -17318i, var_0.a, u_input.a.x), vec4<i32>(0i, -57310i, var_0.a, u_input.d.x)), 0i >> (var_0.c.x % 32u)), var_0.a)).d);
    let var_6 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.b, var_0.b, var_5.b)), vec3<f32>(var_5.b, var_5.b, var_5.b)))), vec3<f32>(_wgslsmith_f_op_f32(-var_5.b), func_3(true, true, func_1(~var_0.c.x, u_input.d.yy)).e.a.x, _wgslsmith_f_op_f32(-var_5.b))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(14051u, 1u, 0u, u_input.b.x)), firstLeadingBit(func_3(true, var_0.d.x, var_5).b)), ~min(var_2.x, var_2.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_6)) - vec3<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(func_2(func_3(false, var_5.d.x, Struct_1(u_input.a.x, var_0.b, global1[_wgslsmith_index_u32(var_3.x, 23u)], vec4<bool>(false, var_0.d.x, false, var_4))), func_3(true, true, Struct_1(2147483647i, 356f, global1[_wgslsmith_index_u32(var_0.c.x, 23u)], vec4<bool>(var_0.d.x, false, true, var_0.d.x))).e, ~u_input.a, _wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(35073u, 1552u)))), var_5.b)));
}

