struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec4<i32>, 3>;

var<private> global2: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = arg_1;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(arg_3.a * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1640f, arg_3.a.x, arg_3.a.x))))), !(!(!arg_1)), arg_3.c);
    var var_2 = arg_3;
    global1 = array<vec4<i32>, 3>();
    var var_3 = var_1.a.x;
    return -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, _wgslsmith_dot_vec3_i32(countOneBits(u_input.e), vec3<i32>(-10126i, -2147483647i, 1i)), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -69318i) | vec2<i32>(u_input.c, u_input.e.x), -vec2<i32>(-1i, -1i)), min(firstLeadingBit(-15415i), -13406i)), vec4<i32>(0i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -1i), u_input.e.yx), 0i), ~_wgslsmith_div_i32(-38228i, u_input.e.x), _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.e.x, u_input.e.x), u_input.c)));
}

fn func_2() -> Struct_2 {
    let var_0 = func_3(!any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), true)), false, false, Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(130f, _wgslsmith_f_op_f32(-837f * 1423f), _wgslsmith_f_op_f32(-161f + -308f)))), !select(true, all(vec4<bool>(true, true, true, false)), true), ~(~1u)));
    let var_1 = vec2<f32>(1f, -930f);
    global0 = !any(vec3<bool>(true, true, true));
    global1 = array<vec4<i32>, 3>();
    global2 = ~u_input.a;
    return Struct_2(vec4<u32>(u_input.b, 460u | min(1u, u_input.b), _wgslsmith_div_u32(firstTrailingBit(abs(u_input.b)), u_input.d), abs(u_input.d)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1725f, var_1.x, var_1.x)), all(vec2<bool>(true, true)), ~reverseBits(~u_input.b)), var_1.x);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = countOneBits(global1[_wgslsmith_index_u32(abs(u_input.a) & (92020u >> (~(~u_input.a) % 32u)), 3u)]);
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(2723f, arg_0.a.x)), 297f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -307f) + 380f)))));
    var var_2 = func_2();
    let var_3 = Struct_2(select(~min(max(vec4<u32>(4294967295u, u_input.d, u_input.a, var_2.b.c), var_2.a), ~vec4<u32>(1u, 31877u, u_input.b, arg_0.c)), ~var_2.a, select(select(select(vec4<bool>(var_2.b.b, false, var_2.b.b, var_2.b.b), vec4<bool>(false, false, false, var_2.b.b), var_2.b.b), !vec4<bool>(arg_0.b, true, false, arg_0.b), select(vec4<bool>(false, arg_0.b, arg_0.b, false), vec4<bool>(true, arg_0.b, var_2.b.b, var_2.b.b), false)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, var_2.b.b, false, true)), !(!vec4<bool>(true, true, var_2.b.b, false)))), var_2.b, 756f);
    global0 = !var_2.b.b | true;
    return Struct_1(var_2.b.a, func_3(var_2.b.a.x >= -111f, select(var_3.b.b, -1i < u_input.c, false), var_2.b.b, Struct_1(_wgslsmith_f_op_vec3_f32(var_3.b.a - var_2.b.a), var_2.b.a.x >= -1373f, _wgslsmith_div_u32(arg_0.c, u_input.a))).x <= 1i, 4294967295u);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = select(!vec3<bool>(all(vec2<bool>(true, arg_1.b)), ~arg_1.c != u_input.d, any(!vec4<bool>(arg_1.b, false, arg_1.b, false))), vec3<bool>(false, func_1(Struct_1(_wgslsmith_f_op_vec3_f32(arg_1.a + vec3<f32>(arg_1.a.x, arg_0.x, -683f)), all(vec2<bool>(false, arg_1.b)), abs(u_input.a))).b, true), any(select(select(select(vec4<bool>(arg_1.b, false, true, arg_1.b), vec4<bool>(arg_1.b, false, arg_1.b, false), vec4<bool>(false, arg_1.b, arg_1.b, false)), !vec4<bool>(false, true, arg_1.b, arg_1.b), vec4<bool>(false, arg_1.b, true, false)), !select(vec4<bool>(arg_1.b, true, arg_1.b, true), vec4<bool>(false, false, false, arg_1.b), arg_1.b), arg_1.b)));
    var var_1 = false;
    var var_2 = vec3<bool>(var_0.x, true, arg_1.b);
    global0 = arg_1.b;
    var var_3 = select(var_0.yx, !var_2.zy, select(var_0.xz, select(select(!vec2<bool>(true, arg_1.b), !vec2<bool>(var_0.x, true), var_0.zz), var_0.yx, true), !(!select(var_2.x, true, var_2.x))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -414f, func_2().c, -331f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-101f, _wgslsmith_f_op_f32(min(-1119f, arg_1.a.x)), _wgslsmith_f_op_f32(922f * -311f), 200f))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_1.a.x, func_1(arg_1).a.x, -1000f)))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> f32 {
    let var_0 = abs(~(~(vec4<u32>(2494u, 4294967295u, 57756u, 0u) | reverseBits(vec4<u32>(31794u, 1u, 38414u, u_input.b)))));
    global1 = array<vec4<i32>, 3>();
    var var_1 = func_2().b;
    let var_2 = var_1.a.x;
    return -791f;
}

fn func_6(arg_0: f32, arg_1: vec2<f32>, arg_2: vec4<f32>, arg_3: f32) -> vec3<bool> {
    global2 = ~31755u;
    global1 = array<vec4<i32>, 3>();
    global1 = array<vec4<i32>, 3>();
    let var_0 = select(~vec3<u32>(_wgslsmith_mod_u32(u_input.a ^ u_input.a, u_input.a ^ 21330u), u_input.a, _wgslsmith_mod_u32(4294967295u, u_input.b) | ~69140u), vec3<u32>(select(0u, select(reverseBits(1u), u_input.a ^ 28008u, -38285i >= u_input.c), all(vec3<bool>(true, true, true))), ~4294967295u, ~(~_wgslsmith_add_u32(u_input.d, u_input.d))), !(!any(vec3<bool>(true, true, true))));
    var var_1 = true;
    return !(!(!select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), vec3<bool>(false, false, false), vec3<bool>(true, false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(Struct_1(vec3<f32>(-1008f, -816f, 540f), any(vec3<bool>(false, false, true)), 4294967295u), _wgslsmith_f_op_vec4_f32(func_4(vec3<f32>(774f, -1580f, -2582f), func_1(Struct_1(vec3<f32>(-727f, 1000f, 2803f), false, 28347u)))), func_1(func_2().b))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-395f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1172f))))), vec2<f32>(-768f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(957f - _wgslsmith_f_op_f32(f32(-1f) * -679f)))), vec4<f32>(275f, -1448f, _wgslsmith_f_op_f32(952f - _wgslsmith_f_op_f32(trunc(1288f))), 1f), _wgslsmith_f_op_f32(-func_1(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1064f, -683f, 605f) + vec3<f32>(736f, 1144f, -835f)), any(vec3<bool>(true, true, true)), 4294967295u)).a.x));
    let var_1 = u_input.c;
    var var_2 = !select(select(var_0.yz, !var_0.yz, select(var_0.xy, select(var_0.zz, vec2<bool>(false, var_0.x), var_0.x), !var_0.zy)), !(!(!vec2<bool>(var_0.x, true))), false);
    global1 = array<vec4<i32>, 3>();
    var_2 = !select(var_0.xx, vec2<bool>(false, 34643i > func_3(var_0.x, var_0.x, var_2.x, Struct_1(vec3<f32>(-148f, 195f, 190f), false, u_input.d)).x), true);
    var var_3 = !var_2.x;
    let var_4 = 1u;
    let var_5 = var_1;
    var var_6 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, var_4, _wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, 20592u), func_2().b.c), ~(u_input.d | u_input.d)) & (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, u_input.b, var_4, 54948u), vec4<u32>(u_input.a, u_input.d, u_input.d, var_4)) >> (vec4<u32>(~u_input.d, 42524u, ~var_4, ~var_4) % vec4<u32>(32u))), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, var_4), vec2<u32>(27801u, 19260u)) ^ reverseBits(vec2<u32>(var_4, u_input.d)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(35911u, 26441u))), ~(vec2<u32>(u_input.d, u_input.d) & (vec2<u32>(var_4, u_input.a) << (vec2<u32>(u_input.d, u_input.a) % vec2<u32>(32u)))), vec2<u32>(countOneBits(~7549u), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(67083u, 24710u)), ~vec2<u32>(var_4, 4294967295u)))), var_4, _wgslsmith_f_op_f32(func_5(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1080f, 860f, 1028f), vec3<f32>(580f, 440f, 1308f), vec3<bool>(false, var_2.x, false))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1872f, -573f, 1000f)))), true, u_input.d), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_4(vec3<f32>(740f, 2078f, -314f), func_1(Struct_1(vec3<f32>(2422f, 453f, -1084f), false, var_4)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(448f * 739f), -979f, _wgslsmith_f_op_f32(-284f * 361f)))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(604f, -440f, 897f))), !var_2.x, _wgslsmith_mod_u32(countOneBits(var_4), _wgslsmith_mult_u32(u_input.a, 78450u))))), _wgslsmith_dot_vec4_u32(vec4<u32>(var_4, _wgslsmith_sub_u32(var_4 << (21211u % 32u), ~var_4), var_4, reverseBits(abs(u_input.b))), ~vec4<u32>(var_4, 7323u, u_input.d, ~var_4)));
}

