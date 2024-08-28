struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: bool,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: u32,
    d: bool,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(0i, 490f, 72301u, true, vec2<u32>(0u, 59111u));

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_4, 10>;

var<private> global3: array<vec2<u32>, 3> = array<vec2<u32>, 3>(vec2<u32>(15716u, 0u), vec2<u32>(4294967295u, 9082u), vec2<u32>(12992u, 95072u));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> u32 {
    var var_0 = !(!vec4<bool>(global0.d, all(vec4<bool>(global0.d, false, true, global0.d)), all(vec2<bool>(false, global0.d)), any(vec3<bool>(global0.d, global0.d, true))));
    var var_1 = select(select(select(var_0.wyw, !select(vec3<bool>(false, var_0.x, true), vec3<bool>(global0.d, var_0.x, global0.d), true), !all(vec3<bool>(global0.d, true, global0.d))), vec3<bool>(any(select(vec4<bool>(false, var_0.x, var_0.x, global0.d), vec4<bool>(var_0.x, var_0.x, global0.d, true), vec4<bool>(false, global0.d, true, global0.d))), any(vec3<bool>(global0.d, global0.d, global0.d)), var_0.x), global0.d), select(var_0.zzx, !var_0.yzy, true), select(!vec3<bool>(true, all(var_0.wxx), true), vec3<bool>(!any(vec3<bool>(false, global0.d, var_0.x)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(global0.d, false, false, global0.d))), false), var_0.x));
    let var_2 = Struct_4(Struct_2(vec4<bool>(-1i >= (u_input.b << (48851u % 32u)), var_0.x, true, any(var_0.yxz) | (global0.b >= 844f)), _wgslsmith_add_vec2_u32(vec2<u32>(~8216u, u_input.d & 4528u), ~vec2<u32>(1u, u_input.d)), -332f, Struct_1(_wgslsmith_clamp_vec4_i32(u_input.c, vec4<i32>(-2147483647i, global0.a, -1i, global0.a), -u_input.c), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(342f, global0.b) - vec2<f32>(-629f, global0.b)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.b, global0.b)))), global0.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1669f, 622f))), u_input.c.wy)), var_0.x);
    global1 = min(reverseBits(_wgslsmith_mult_vec3_u32(select(vec3<u32>(var_2.a.b.x, global0.c, 29889u) | vec3<u32>(3121u, 1u, var_2.a.b.x), max(vec3<u32>(32336u, global1.x, 50539u), vec3<u32>(38784u, var_2.a.b.x, 1066u)), 0u <= global1.x), _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(52294u, 4294967295u, 1u)), vec3<u32>(global1.x, global0.c, u_input.d), firstTrailingBit(vec3<u32>(global0.c, 1u, var_2.a.b.x))))), _wgslsmith_mod_vec3_u32(max(vec3<u32>(global1.x, 1u, 0u), vec3<u32>(global1.x, global1.x, 0u)), _wgslsmith_div_vec3_u32(vec3<u32>(31153u, global1.x, global1.x), ~vec3<u32>(var_2.a.b.x, global1.x, 20236u))) >> (vec3<u32>(4294967295u, ~(global1.x & 85438u), ~(4294967295u ^ u_input.d)) % vec3<u32>(32u)));
    global0 = Struct_3(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(var_2.a.d.a.x, -1i), countOneBits(_wgslsmith_clamp_vec2_i32(u_input.c.xz, select(var_2.a.d.a.wy, var_2.a.d.e, var_2.b), u_input.c.wx | var_2.a.d.e))), global0.b, _wgslsmith_div_u32(1u, ~1u), all(vec3<bool>(all(vec4<bool>(false, var_0.x, var_1.x, true)), all(vec3<bool>(var_2.a.d.c, global0.d, var_2.a.d.c)), var_0.x)), vec2<u32>(countOneBits(~(~35654u)), 111350u & ~(1u & global1.x)));
    return ~(~(~_wgslsmith_sub_u32(1u, max(global1.x, 4294967295u))));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> Struct_3 {
    global2 = array<Struct_4, 10>();
    global3 = array<vec2<u32>, 3>();
    global3 = array<vec2<u32>, 3>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1104f, 848f, -1287f) * vec3<f32>(-425f, global0.b, global0.b)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, arg_0.d.x, global0.b) - vec3<f32>(1567f, arg_0.d.x, -1320f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, global0.b, -445f)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-332f, global0.b, _wgslsmith_f_op_f32(floor(arg_0.d.x))))))));
    return Struct_3(global0.a, 1f, func_3(), true, global0.e);
}

fn func_1() -> bool {
    let var_0 = func_2(Struct_1(u_input.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.b, global0.b))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1282f, global0.b)), !global0.d)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b, global0.b) + vec2<f32>(global0.b, -522f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, global0.b)))), true, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.b, 1616f), vec2<f32>(global0.b, global0.b), vec2<bool>(global0.d, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(740f, 1831f) - vec2<f32>(global0.b, global0.b)))))), -abs(u_input.c.yz)), -14083i);
    let var_1 = vec4<bool>(all(select(!vec2<bool>(global0.d, var_0.d), select(!vec2<bool>(var_0.d, true), vec2<bool>(true, true), select(vec2<bool>(true, global0.d), vec2<bool>(var_0.d, global0.d), false)), global0.d)), true, u_input.d < u_input.d, any(!(!(!vec4<bool>(false, global0.d, var_0.d, false)))));
    let var_2 = ~4294967295u;
    var var_3 = Struct_1(vec4<i32>(_wgslsmith_div_i32(u_input.a, func_2(Struct_1(u_input.c, vec2<f32>(-463f, -682f), var_0.d, vec2<f32>(global0.b, -272f), vec2<i32>(u_input.b, 1i)), -1i).a << (var_2 % 32u)), abs(1i), ~(-2147483647i), u_input.c.x), vec2<f32>(var_0.b, -1594f), true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.b, 410f)) - _wgslsmith_f_op_f32(select(1293f, global0.b, false))))), reverseBits((vec2<i32>(var_0.a, 2147483647i) ^ vec2<i32>(39273i, var_0.a)) << (var_0.e % vec2<u32>(32u))) << (vec2<u32>(_wgslsmith_div_u32(var_2, 4294967295u), ~(0u | global1.x)) % vec2<u32>(32u)));
    var var_4 = vec3<f32>(global0.b, _wgslsmith_div_f32(global0.b, 872f), global0.b);
    return _wgslsmith_add_u32(_wgslsmith_div_u32(max(countOneBits(u_input.d), _wgslsmith_sub_u32(37601u, var_0.e.x)), reverseBits(var_2)), ~1u) <= ~var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-global0.b), global0.b, 854f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(select(global0.b, _wgslsmith_f_op_f32(trunc(1519f)), -529f > global0.b)), _wgslsmith_f_op_f32(sign(global0.b))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, -760f, global0.b) - vec3<f32>(1379f, 1499f, -356f)))))));
    var var_1 = Struct_2(select(!vec4<bool>(true, !global0.d, func_1(), false), select(!select(vec4<bool>(false, global0.d, global0.d, false), vec4<bool>(true, false, global0.d, false), true), !select(vec4<bool>(true, false, global0.d, true), vec4<bool>(global0.d, false, global0.d, true), true), vec4<bool>(all(vec4<bool>(global0.d, global0.d, global0.d, false)), true, global0.d, true)), true), global0.e, global0.b, Struct_1(vec4<i32>(abs(abs(u_input.c.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.a, 10202i) >> (vec2<u32>(0u, u_input.d) % vec2<u32>(32u)), ~vec2<i32>(0i, 1i)), firstLeadingBit(global0.a), global0.a), vec2<f32>(var_0.x, global0.b), false == !(!global0.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_0.xx + vec2<f32>(var_0.x, 1623f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.xx) * vec2<f32>(-590f, global0.b))), -max(vec2<i32>(global0.a, u_input.b) | vec2<i32>(u_input.c.x, u_input.a), u_input.c.zy)));
    global3 = array<vec2<u32>, 3>();
    global0 = Struct_3(1i, var_0.x, 44268u, 1427f >= _wgslsmith_f_op_f32(-1000f - global0.b), vec2<u32>(var_1.b.x, abs(_wgslsmith_clamp_u32(u_input.d, var_1.b.x, _wgslsmith_div_u32(u_input.d, 35795u)))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x + var_0.x), global0.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1497f, 1129f)), _wgslsmith_f_op_f32(step(-515f, 537f)))))), var_1.c)), _wgslsmith_f_op_f32(ceil(global0.b)));
    var var_3 = var_1.a;
    var var_4 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1134f, var_0.x, 1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a, var_4.x, 0i, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0, var_0)), vec3<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(704f * var_1.d.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(686f, global0.b))), 1351f), true)), _wgslsmith_clamp_i32(-33910i, abs(-18194i), global0.a));
}

