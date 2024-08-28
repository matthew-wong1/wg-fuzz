struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
    c: i32,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10> = array<i32, 10>(i32(-2147483648), i32(-2147483648), 9443i, 10211i, -633i, 2147483647i, -36028i, 11588i, i32(-2147483648), i32(-2147483648));

var<private> global1: array<bool, 21> = array<bool, 21>(true, false, true, true, false, false, true, true, false, false, true, true, false, false, false, false, false, true, true, false, true);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    let var_0 = vec4<u32>(0u, 19012u, u_input.a, abs(u_input.a));
    let var_1 = all(vec3<bool>(true, true, all(select(vec3<bool>(false, false, global1[_wgslsmith_index_u32(var_0.x, 21u)]), select(vec3<bool>(false, global1[_wgslsmith_index_u32(41162u, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 21u)], true, true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(1u, 21u)], true)), 0u <= u_input.a))));
    var var_2 = 0u;
    let var_3 = true;
    let var_4 = 9524u;
    return (~var_0.x | (_wgslsmith_add_u32(_wgslsmith_add_u32(8057u, 0u), 1u) << (~(69598u | u_input.a) % 32u))) & 3061u;
}

fn func_4(arg_0: u32, arg_1: vec4<f32>) -> vec3<u32> {
    let var_0 = Struct_1(1u, select(!select(!vec4<bool>(global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(1454u, 21u)]), select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a, 21u)], true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 21u)], false, true, global1[_wgslsmith_index_u32(u_input.a, 21u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 21u)], true, false)), false), select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, global1[_wgslsmith_index_u32(arg_0, 21u)], global1[_wgslsmith_index_u32(u_input.a, 21u)], false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(1774u, 21u)], true, global1[_wgslsmith_index_u32(u_input.a, 21u)])), !vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(arg_0, 21u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(27688u, 21u)], true, true)), vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 21u)], true, all(vec3<bool>(false, false, false))), select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 21u)], true, true), vec4<bool>(global1[_wgslsmith_index_u32(arg_0, 21u)], global1[_wgslsmith_index_u32(u_input.a, 21u)], true, false), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(1u, 21u)], true)), select(vec4<bool>(true, false, global1[_wgslsmith_index_u32(0u, 21u)], false), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 21u)], true, global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(u_input.a, 21u)]), true), select(vec4<bool>(global1[_wgslsmith_index_u32(31076u, 21u)], false, global1[_wgslsmith_index_u32(54673u, 21u)], false), vec4<bool>(global1[_wgslsmith_index_u32(1u, 21u)], false, global1[_wgslsmith_index_u32(1u, 21u)], true), vec4<bool>(global1[_wgslsmith_index_u32(66801u, 21u)], false, true, false)))), any(select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 21u)], false, false), select(vec3<bool>(false, global1[_wgslsmith_index_u32(85452u, 21u)], global1[_wgslsmith_index_u32(1u, 21u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(90621u, 21u)], global1[_wgslsmith_index_u32(1u, 21u)]), global1[_wgslsmith_index_u32(4294967295u, 21u)]), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(5328u, u_input.a, 4294967295u), 21u)]))));
    var var_1 = Struct_4(select(select(select(select(vec3<bool>(var_0.b.x, global1[_wgslsmith_index_u32(4294967295u, 21u)], var_0.b.x), vec3<bool>(var_0.b.x, false, false), global1[_wgslsmith_index_u32(0u, 21u)]), select(var_0.b.ywy, vec3<bool>(false, true, var_0.b.x), var_0.b.x), !var_0.b.x), var_0.b.yww, false), !(!vec3<bool>(global1[_wgslsmith_index_u32(arg_0, 21u)], global1[_wgslsmith_index_u32(arg_0, 21u)], var_0.b.x)), ~_wgslsmith_clamp_u32(1u, arg_0, var_0.a) <= _wgslsmith_mod_u32(~u_input.a, var_0.a)), _wgslsmith_f_op_f32(min(1289f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.x)) + arg_1.x))))), ~global0[_wgslsmith_index_u32(110980u, 10u)], arg_0, Struct_2(var_0, var_0, _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(175f * arg_1.x), _wgslsmith_div_f32(1428f, arg_1.x), 1000f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-arg_1)))), Struct_1(var_0.a, select(var_0.b, vec4<bool>(global1[_wgslsmith_index_u32(31128u, 21u)], false, false, false), true))));
    let var_2 = Struct_2(var_1.e.b, var_1.e.a, var_1.e.c, Struct_1(134268u, !select(var_1.e.b.b, vec4<bool>(var_0.b.x, global1[_wgslsmith_index_u32(var_0.a, 21u)], true, global1[_wgslsmith_index_u32(var_0.a, 21u)]), true)));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_1.e.c.yyw - vec3<f32>(arg_1.x, var_1.e.c.x, 1059f)), _wgslsmith_div_vec3_f32(vec3<f32>(-875f, var_2.c.x, var_2.c.x), var_1.e.c.yzy), true)))) + arg_1.wyy);
    let var_4 = -(u_input.b << (~func_3() % 32u));
    return ~(~abs(vec3<u32>(8119u, 0u, u_input.a))) & vec3<u32>(51273u, ~_wgslsmith_dot_vec4_u32(max(vec4<u32>(25491u, 0u, 25679u, var_1.d), vec4<u32>(75691u, var_1.e.a.a, 1u, var_2.a.a)), max(vec4<u32>(var_0.a, 20484u, 13578u, var_2.b.a), vec4<u32>(arg_0, var_0.a, 65921u, 809u))), countOneBits(u_input.a));
}

fn func_2() -> i32 {
    global1 = array<bool, 21>();
    var var_0 = func_4(_wgslsmith_sub_u32(func_3(), ~(21412u & u_input.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -307f), 1428f, _wgslsmith_f_op_f32(1547f * -744f), _wgslsmith_f_op_f32(-179f + -1707f)))));
    let var_1 = vec4<bool>(any(!vec4<bool>(any(vec2<bool>(global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(0u, 21u)])), global1[_wgslsmith_index_u32(abs(28234u), 21u)], any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(89078u, 21u)], false, false)), !global1[_wgslsmith_index_u32(78359u, 21u)])), false, global1[_wgslsmith_index_u32(0u, 21u)], false);
    global0 = array<i32, 10>();
    global0 = array<i32, 10>();
    return _wgslsmith_mult_i32(min(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.b, u_input.b, -2147483647i, -1i)), vec4<i32>(~u_input.c, abs(21687i), min(global0[_wgslsmith_index_u32(var_0.x, 10u)], u_input.c), min(u_input.b, u_input.c))), u_input.c & _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-9067i, 4047i, global0[_wgslsmith_index_u32(u_input.a, 10u)], 0i)), _wgslsmith_mult_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(1u, 10u)], u_input.c, -3807i, -2147483647i), vec4<i32>(-25047i, global0[_wgslsmith_index_u32(78458u, 10u)], u_input.b, global0[_wgslsmith_index_u32(u_input.a, 10u)])))), _wgslsmith_dot_vec3_i32(-vec3<i32>(abs(70897i), 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(var_0.x, 10u)], u_input.c), vec2<i32>(1i, -2147483647i))), -reverseBits(vec3<i32>(-43360i, 2147483647i, 22584i)) | vec3<i32>(0i, u_input.c, -2147483647i)));
}

fn func_1() -> Struct_1 {
    var var_0 = func_2();
    let var_1 = -(vec4<i32>(u_input.b, ~u_input.b, ~global0[_wgslsmith_index_u32(~u_input.a, 10u)], _wgslsmith_dot_vec2_i32(-vec2<i32>(21501i, 2147483647i), vec2<i32>(-1i, 1i))) >> (_wgslsmith_add_vec4_u32(vec4<u32>(1u | u_input.a, u_input.a, ~1u, _wgslsmith_sub_u32(u_input.a, u_input.a)), vec4<u32>(~1u, u_input.a >> (1u % 32u), 4294967295u, 4294967295u)) % vec4<u32>(32u)));
    var_0 = -5212i;
    global1 = array<bool, 21>();
    var var_2 = Struct_4(vec3<bool>(any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(u_input.a, 21u)], false)) | any(select(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 21u)], false), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 21u)], true, global1[_wgslsmith_index_u32(u_input.a, 21u)]), global1[_wgslsmith_index_u32(42517u, 21u)])), true, !global1[_wgslsmith_index_u32(42169u, 21u)] || false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1256f))))), select(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(u_input.a, 10u)] ^ -global0[_wgslsmith_index_u32(15261u, 10u)], global0[_wgslsmith_index_u32(~select(13669u, u_input.a, global1[_wgslsmith_index_u32(u_input.a, 21u)]), 10u)], ~abs(0i)), (-7513i >> (_wgslsmith_div_u32(17220u, u_input.a) % 32u)) << (~44311u % 32u), global1[_wgslsmith_index_u32(func_3() & (u_input.a ^ u_input.a), 21u)]), ~(~53193u), Struct_2(Struct_1(~abs(u_input.a), select(select(vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.a, 21u)], false), vec4<bool>(global1[_wgslsmith_index_u32(87953u, 21u)], global1[_wgslsmith_index_u32(u_input.a, 21u)], false, false), vec4<bool>(global1[_wgslsmith_index_u32(8631u, 21u)], true, true, true)), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 21u)], false, false), !vec4<bool>(true, global1[_wgslsmith_index_u32(17778u, 21u)], global1[_wgslsmith_index_u32(u_input.a, 21u)], true))), Struct_1(~u_input.a, !(!vec4<bool>(global1[_wgslsmith_index_u32(55106u, 21u)], true, global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(u_input.a, 21u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-418f, 1021f, -1593f, -441f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(223f, -1810f, -689f, 1000f))))), Struct_1(1u, select(vec4<bool>(global1[_wgslsmith_index_u32(4628u, 21u)], global1[_wgslsmith_index_u32(103570u, 21u)], true, global1[_wgslsmith_index_u32(u_input.a, 21u)]), vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(u_input.a, 21u)]), true))));
    return var_2.e.b;
}

fn func_5(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_3) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3.b.c) + _wgslsmith_f_op_vec4_f32(arg_3.b.c - _wgslsmith_f_op_vec4_f32(abs(arg_0.e.c))));
    var var_1 = countOneBits(vec2<u32>(~1u, firstLeadingBit(~arg_3.b.b.a)));
    let var_2 = ~vec3<i32>(_wgslsmith_clamp_i32(1i & ~arg_0.c, -34702i, _wgslsmith_mod_i32(1i, -arg_2)), global0[_wgslsmith_index_u32(~39198u, 10u)], u_input.c);
    var var_3 = arg_0;
    global1 = array<bool, 21>();
    return Struct_4(arg_0.a, _wgslsmith_f_op_f32(min(-1652f, -609f)), -1i, 1u, arg_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_4(select(vec3<bool>(true, true, global1[_wgslsmith_index_u32(0u, 21u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 21u)], true), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1916f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-668f)))), min(reverseBits(-40899i), u_input.c), 1u, Struct_2(func_1(), func_1(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(951f, -698f, 1437f, 587f), vec4<f32>(1000f, -488f, 711f, -2845f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1968f, -1000f, 241f, -1751f))), func_1())), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1033f, -1000f, 385f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(965f, -817f, -608f), vec3<f32>(1245f, 1106f, 1572f), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 21u)], false))))))), -_wgslsmith_dot_vec2_i32(select(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], 13725i), vec2<i32>(18836i, u_input.b), true), select(vec2<i32>(2147483647i, 40518i), vec2<i32>(31250i, 17073i), false)) >> ((44437u & u_input.a) % 32u), Struct_3(all(select(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(56047u, 21u)], false), vec3<bool>(true, true, false), vec3<bool>(global1[_wgslsmith_index_u32(55242u, 21u)], true, global1[_wgslsmith_index_u32(u_input.a, 21u)]))), Struct_2(func_1(), Struct_1(select(u_input.a, 77227u, false), vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a, 21u)], true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(440f, 697f, -1147f, 1166f)), func_1())));
    let var_1 = vec2<bool>(false, !(!global1[_wgslsmith_index_u32(var_0.e.b.a, 21u)]) | (var_0.b == -1130f));
    global1 = array<bool, 21>();
    var_0 = Struct_4(!func_1().b.xww, var_0.b, var_0.c, 0u, Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, var_0.d, 6667u), vec3<u32>(0u, u_input.a, var_0.e.a.a)), vec3<u32>(1u, u_input.a, 11223u)), select(var_0.e.d.b, var_0.e.a.b, vec4<bool>(var_0.e.b.b.x, global1[_wgslsmith_index_u32(44413u, 21u)], false, global1[_wgslsmith_index_u32(var_0.e.d.a, 21u)]))), var_0.e.a, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(var_0.e.c.x * -518f), _wgslsmith_f_op_f32(max(var_0.b, -306f)), var_0.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b, var_0.b, var_0.e.c.x, var_0.b), var_0.e.c, vec4<bool>(false, var_1.x, var_0.a.x, false))))), Struct_1(50786u | ~u_input.a, var_0.e.a.b)));
    global1 = array<bool, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(func_3(), vec2<i32>(-1i, -_wgslsmith_add_i32(-2147483647i, u_input.b)) ^ abs(-firstTrailingBit(vec2<i32>(var_0.c, -1i))), 694f);
}

