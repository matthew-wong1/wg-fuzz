struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 12>;

var<private> global1: Struct_1;

var<private> global2: i32;

var<private> global3: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> vec4<f32> {
    let var_0 = _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(1u, 4294967295u, _wgslsmith_mod_u32(global3.d, global3.d), 1u)), abs(_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(u_input.a, 4294967295u, global3.d, 0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(global1.c, 1u, global1.d, global3.d), vec4<u32>(1u, 0u, 4294967295u, global3.c))) | ~firstLeadingBit(vec4<u32>(global1.c, u_input.a, 4294967295u, u_input.a))), ~vec4<u32>(4294967295u, ~(~11937u), firstTrailingBit(55853u), _wgslsmith_div_u32(firstTrailingBit(global1.d), ~1u)));
    var var_1 = _wgslsmith_add_vec3_u32(var_0.wwx, select(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, global1.c), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 19945u, 62269u), vec3<u32>(global1.d, var_0.x, u_input.a)))), _wgslsmith_mod_vec3_u32(var_0.ywx, _wgslsmith_sub_vec3_u32(vec3<u32>(5925u, var_0.x, 4294967295u) & var_0.ywz, vec3<u32>(67292u, 0u, global1.c))), vec3<bool>(true, true, true)));
    var var_2 = select(var_0, vec4<u32>(global1.d, 33460u, 4294967295u, ~(~(~4294967295u))), false);
    global2 = _wgslsmith_mod_i32(-1i, ~1i);
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, 197f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-999f)), global1.e.x)) + 1198f), global3.b, var_1.x & _wgslsmith_clamp_u32(1u, abs(1u), var_1.x), _wgslsmith_clamp_u32(global3.d, _wgslsmith_div_u32(~11258u, ~0u), ~var_2.x), _wgslsmith_f_op_vec2_f32(sign(global3.e)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-141f, global3.e.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1340f, 869f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1664f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0 + 272f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a, 737f, global1.e.x, -206f) * vec4<f32>(-347f, global1.a, 197f, 750f)) * vec4<f32>(global1.e.x, -191f, 351f, global1.a)) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(548f, 165f, global1.e.x, global1.e.x))))))));
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: bool) -> f32 {
    let var_0 = select(select(!vec4<bool>(any(vec3<bool>(arg_1, true, arg_2)), true, true, arg_1), !vec4<bool>(false, false, true, arg_1), select(!vec4<bool>(arg_2, false, arg_2, true), !select(vec4<bool>(arg_2, arg_2, arg_1, false), vec4<bool>(arg_2, arg_2, false, false), false), !select(vec4<bool>(true, arg_2, arg_1, arg_1), vec4<bool>(arg_1, false, arg_2, arg_1), vec4<bool>(arg_2, arg_2, arg_1, true)))), vec4<bool>(true, false & (_wgslsmith_dot_vec4_u32(vec4<u32>(73644u, global1.c, 36927u, 19617u), vec4<u32>(global1.c, 1u, 4294967295u, 1u)) == ~125283u), arg_1, _wgslsmith_f_op_f32(max(global3.a, global3.e.x)) == _wgslsmith_div_f32(-157f, _wgslsmith_f_op_f32(global1.a * global1.e.x))), vec4<bool>(arg_2, true, arg_2 || arg_1, _wgslsmith_f_op_f32(_wgslsmith_div_f32(320f, global3.a) * 814f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(751f - -787f))));
    global2 = -2147483647i;
    let var_1 = _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.e.x))))));
    var var_2 = select(firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global1.d, global3.c, global3.d), vec3<u32>(global1.d, global3.c, 34940u)), ~vec3<u32>(global1.c, u_input.a, global1.d)), 0u, 126899u >> (global1.d % 32u), ~(~u_input.a))), ~countOneBits(~select(vec4<u32>(6313u, 4294967295u, u_input.a, 9418u), vec4<u32>(global1.d, global1.c, 1u, global3.d), var_0)), select(~global1.c << (u_input.a % 32u), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, u_input.a)), ~vec2<u32>(global3.c, global1.c)), arg_1) <= _wgslsmith_div_u32(0u, ~abs(global1.d)));
    var var_3 = -vec2<i32>(reverseBits(1i ^ global3.b.x) | global3.b.x, global1.b.x);
    return _wgslsmith_div_f32(global3.e.x, var_1.x);
}

fn func_1(arg_0: f32) -> Struct_1 {
    global3 = Struct_1(_wgslsmith_f_op_f32(func_2(vec3<f32>(-835f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1459f + arg_0), _wgslsmith_f_op_f32(-1141f - 196f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -941f) + _wgslsmith_f_op_f32(f32(-1f) * -1378f))), true, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), false), vec4<bool>(true, false, true, false))))), _wgslsmith_mod_vec2_i32(vec2<i32>(global3.b.x, global1.b.x), global1.b), 1u, ~0u, global3.e);
    let var_0 = Struct_2(max(vec2<u32>(u_input.a, global1.c), ~(~(~vec2<u32>(u_input.a, 12466u)))));
    let var_1 = global0[_wgslsmith_index_u32(global3.c, 12u)];
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -727f)), global3.b, var_1.e.c, ~_wgslsmith_add_u32(reverseBits(18159u), 46666u), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(-704f)).x + _wgslsmith_f_op_f32(-arg_0)), global1.e.x));
    let var_2 = var_1.e;
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) * global1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(697f * global1.e.x)) * _wgslsmith_f_op_f32(1137f - 182f))), _wgslsmith_sub_vec2_i32(((vec2<i32>(-2147483647i, global1.b.x) ^ global1.b) | -vec2<i32>(var_1.e.b.x, global1.b.x)) ^ vec2<i32>(-32265i, global1.b.x), reverseBits(vec2<i32>(countOneBits(global3.b.x), global1.b.x))), global3.d, max(~(~20637u), 58392u), vec2<f32>(_wgslsmith_f_op_f32(-global3.a), 1009f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(_wgslsmith_f_op_f32(1f + 428f));
    let var_0 = ~(~_wgslsmith_sub_vec2_i32(global3.b, vec2<i32>(-8118i, -7967i)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(global1.e.x - global3.a), var_0, u_input.a, 1u >> (_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, global3.c), vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(4286u, global3.c)), _wgslsmith_mod_u32(_wgslsmith_add_u32(1u, 39185u), max(global3.d, 100473u))) % 32u), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.a), _wgslsmith_f_op_f32(floor(global1.a))) * _wgslsmith_f_op_f32(-global3.e.x)), 1469f));
    let var_2 = global1.e.x;
    var var_3 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1442f) + _wgslsmith_f_op_f32(var_1.e.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1011f) + var_1.a))));
    let var_4 = Struct_2(~(countOneBits(select(vec2<u32>(global3.d, var_1.c), vec2<u32>(0u, global3.c), false)) << (_wgslsmith_add_vec2_u32(vec2<u32>(10694u, u_input.a) | vec2<u32>(global3.c, var_3.d), _wgslsmith_mult_vec2_u32(vec2<u32>(57415u, var_3.c), vec2<u32>(39537u, 0u))) % vec2<u32>(32u))));
    global3 = Struct_1(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-127f + _wgslsmith_f_op_f32(-649f - -1000f)) - global3.a))).x, reverseBits(var_3.b) >> (min(var_4.a, abs(_wgslsmith_mult_vec2_u32(vec2<u32>(32973u, var_4.a.x), var_4.a))) % vec2<u32>(32u)), ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 15820u, 50845u, 4294967295u), vec4<u32>(var_4.a.x, var_3.d, 15537u, 0u)) & (vec4<u32>(88653u, 59128u, 14093u, global1.d) ^ vec4<u32>(var_4.a.x, global1.d, 1u, u_input.a)), select(vec4<u32>(94115u, var_1.c, var_1.c, 1u) | vec4<u32>(0u, global3.d, 42640u, 4294967295u), firstLeadingBit(vec4<u32>(0u, var_3.c, u_input.a, global3.c)), vec4<bool>(true, true, true, true))), _wgslsmith_clamp_u32(1u, var_3.d, _wgslsmith_div_u32(_wgslsmith_mult_u32(abs(global1.d), countOneBits(90568u)), _wgslsmith_add_u32(select(var_1.d, var_3.c, true), firstLeadingBit(0u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec4_f32(func_3(global3.a)).yx + var_3.e));
    var var_5 = 22841u;
    var var_6 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a + var_3.e.x))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a - 948f) - -1000f), 131f) - vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-624f * _wgslsmith_f_op_f32(263f * global3.e.x)))), firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(global3.d, 6128u, global1.d, var_6.c), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 1u, var_6.d, 60670u), vec4<u32>(17296u, 4294967295u, 4294967295u, var_3.c))) | (max(vec4<u32>(var_6.d, 0u, global3.d, 0u), vec4<u32>(global1.c, var_4.a.x, var_4.a.x, var_4.a.x)) | ~vec4<u32>(var_1.d, var_1.c, var_3.d, var_1.d))), ~(firstLeadingBit(firstTrailingBit(vec2<u32>(var_3.d, 4294967295u))) ^ vec2<u32>(abs(8423u), _wgslsmith_sub_u32(4294967295u, global1.d))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, global1.e.x, 1088f)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1795f, global1.e.x, global3.a) + vec3<f32>(global3.e.x, global1.a, var_3.e.x))))), vec3<f32>(_wgslsmith_f_op_f32(trunc(-613f)), 197f, var_3.a))));
}

