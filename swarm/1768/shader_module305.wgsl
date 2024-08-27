struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: i32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4>;

var<private> global1: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec4<u32>(32603u, 11299u, 0u, 4294967295u), vec4<bool>(true, true, true, false), 2147483647i, vec4<u32>(4294967295u, 28169u, 1u, 1u)), Struct_2(vec4<u32>(9697u, 42344u, 19992u, 1u), vec4<bool>(false, true, false, false), 0i, vec4<u32>(1u, 19086u, 1u, 4294967295u)), Struct_2(vec4<u32>(30043u, 89608u, 1u, 1u), vec4<bool>(true, false, true, false), 2147483647i, vec4<u32>(4294967295u, 91854u, 6953u, 4294967295u)), Struct_2(vec4<u32>(23299u, 21859u, 0u, 4294967295u), vec4<bool>(true, true, false, true), 1i, vec4<u32>(17417u, 0u, 44603u, 36906u)), Struct_2(vec4<u32>(61922u, 1u, 9448u, 4294967295u), vec4<bool>(true, true, true, true), 24480i, vec4<u32>(4294967295u, 1u, 4294967295u, 53475u)), Struct_2(vec4<u32>(4748u, 0u, 4294967295u, 10296u), vec4<bool>(true, true, true, false), -1i, vec4<u32>(1u, 4814u, 1287u, 0u)), Struct_2(vec4<u32>(20567u, 4294967295u, 1u, 43064u), vec4<bool>(true, true, true, true), -1i, vec4<u32>(4294967295u, 45206u, 37696u, 39429u)), Struct_2(vec4<u32>(1814u, 4294967295u, 37151u, 4294967295u), vec4<bool>(false, false, false, false), -14125i, vec4<u32>(26756u, 4294967295u, 44288u, 5867u)), Struct_2(vec4<u32>(1u, 3202u, 4294967295u, 0u), vec4<bool>(false, true, false, false), i32(-2147483648), vec4<u32>(4294967295u, 3023u, 0u, 1u)), Struct_2(vec4<u32>(57653u, 68169u, 8670u, 105628u), vec4<bool>(true, true, true, true), 1i, vec4<u32>(4294967295u, 73638u, 1u, 6518u)), Struct_2(vec4<u32>(0u, 1u, 4294967295u, 4294967295u), vec4<bool>(false, true, false, false), -28212i, vec4<u32>(6518u, 9349u, 4294967295u, 152084u)), Struct_2(vec4<u32>(35894u, 0u, 1u, 50680u), vec4<bool>(true, false, true, false), -13552i, vec4<u32>(5248u, 1u, 9226u, 7523u)), Struct_2(vec4<u32>(4294967295u, 30187u, 19188u, 23348u), vec4<bool>(true, true, true, false), i32(-2147483648), vec4<u32>(41558u, 38410u, 1u, 15513u)), Struct_2(vec4<u32>(1u, 22412u, 4294967295u, 1u), vec4<bool>(false, true, false, false), 24202i, vec4<u32>(10059u, 33323u, 13264u, 49559u)), Struct_2(vec4<u32>(1u, 0u, 41446u, 59556u), vec4<bool>(true, true, true, true), 1i, vec4<u32>(53112u, 4294967295u, 19934u, 4294967295u)), Struct_2(vec4<u32>(1u, 0u, 1u, 6045u), vec4<bool>(false, true, false, false), -1i, vec4<u32>(45131u, 31595u, 24117u, 36674u)), Struct_2(vec4<u32>(54881u, 25547u, 0u, 1u), vec4<bool>(true, false, true, true), 1i, vec4<u32>(8929u, 39053u, 17751u, 4294967295u)), Struct_2(vec4<u32>(0u, 29029u, 1u, 4294967295u), vec4<bool>(true, false, true, true), 2147483647i, vec4<u32>(0u, 0u, 4294967295u, 0u)), Struct_2(vec4<u32>(18333u, 1u, 0u, 1u), vec4<bool>(false, true, true, false), -55135i, vec4<u32>(39475u, 4294967295u, 79046u, 1u)), Struct_2(vec4<u32>(21073u, 8591u, 38800u, 0u), vec4<bool>(false, true, true, false), 7573i, vec4<u32>(0u, 44467u, 1u, 55914u)), Struct_2(vec4<u32>(51102u, 0u, 0u, 39200u), vec4<bool>(true, true, true, true), i32(-2147483648), vec4<u32>(0u, 0u, 73u, 85116u)), Struct_2(vec4<u32>(1u, 5794u, 50962u, 5321u), vec4<bool>(false, false, false, true), i32(-2147483648), vec4<u32>(4294967295u, 98341u, 4294967295u, 1u)));

var<private> global2: bool = false;

var<private> global3: Struct_3;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_1, arg_3: f32) -> i32 {
    global3 = Struct_3(global3.c.c, global3.b, Struct_2(global3.d.d, select(vec4<bool>(true, !arg_2.a, all(global3.b), all(global3.c.b)), select(vec4<bool>(global3.d.b.x, true, false, true), select(global3.c.b, vec4<bool>(false, arg_2.a, global3.d.b.x, global3.d.b.x), vec4<bool>(true, false, global3.b.x, true)), global3.c.b), arg_1 <= arg_3), 24081i, _wgslsmith_add_vec4_u32(global3.c.d, _wgslsmith_add_vec4_u32(~vec4<u32>(1u, 4294967295u, global3.d.d.x, u_input.a), max(vec4<u32>(1u, u_input.a, 0u, 1u), global3.c.d)))), global1[_wgslsmith_index_u32(~abs(_wgslsmith_mult_u32(~global3.d.d.x, abs(1u))), 22u)], false);
    global3 = Struct_3(global3.c.c, global3.c.b.zz, Struct_2(vec4<u32>(44210u, 26894u & _wgslsmith_sub_u32(u_input.a, 3458u), global3.c.d.x, 25408u), select(global3.c.b, vec4<bool>(true, all(vec2<bool>(arg_2.a, global3.c.b.x)), true, false), true), _wgslsmith_dot_vec3_i32(arg_0.wyw >> ((vec3<u32>(1u, u_input.a, global3.c.a.x) & global3.c.d.xwx) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(arg_0.zzw, vec3<i32>(-1i, 2147483647i, 1i)) << (_wgslsmith_add_vec3_u32(global3.d.a.zyx, vec3<u32>(53427u, global3.d.d.x, global3.c.a.x)) % vec3<u32>(32u))), countOneBits(global3.c.d ^ vec4<u32>(u_input.a, global3.d.d.x, global3.c.d.x, u_input.a))), Struct_2(~global3.d.a, select(global3.d.b, global3.c.b, !global3.c.b), _wgslsmith_sub_i32(u_input.e, u_input.b) | global0[_wgslsmith_index_u32(1u, 4u)], vec4<u32>(_wgslsmith_clamp_u32(u_input.a, u_input.a, _wgslsmith_mod_u32(1241u, 4294967295u)), 1u, u_input.a ^ u_input.a, 0u >> (global3.d.a.x % 32u))), false);
    let var_0 = ~select(global3.d.d.x, ~u_input.a, all(vec4<bool>(any(vec2<bool>(global3.c.b.x, true)), !arg_2.c, arg_2.b, !global3.d.b.x)));
    global2 = false;
    global3 = Struct_3(2147483647i, select(vec2<bool>(true, false), !global3.c.b.wz, !(any(global3.d.b) && (global3.d.c > global0[_wgslsmith_index_u32(var_0, 4u)]))), global1[_wgslsmith_index_u32(var_0, 22u)], Struct_2(~(_wgslsmith_sub_vec4_u32(global3.d.a, global3.d.a) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 85615u, 12899u, 40383u), global3.c.a)), global3.c.b, arg_0.x, abs(global3.c.d)), !(_wgslsmith_div_i32(~2658i, _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(51639u, 4u)], u_input.e)) > -2147483647i));
    return global3.a;
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> u32 {
    global2 = global3.c.b.x | all(!vec2<bool>(any(vec2<bool>(global3.b.x, global3.b.x)), global3.e));
    let var_0 = global3.d.b.zy;
    var var_1 = Struct_1(true, u_input.a <= 1u, true && !(~global3.c.c == 0i), u_input.d);
    global0 = array<i32, 4>();
    var_1 = Struct_1(var_0.x, false && (false && all(global3.d.b.zx)), any(global3.d.b.wx), abs(select(vec2<i32>(func_3(vec4<i32>(17519i, var_1.d.x, global0[_wgslsmith_index_u32(4294967295u, 4u)], 0i), arg_1.x, Struct_1(true, var_1.b, true, var_1.d), arg_1.x), -global0[_wgslsmith_index_u32(56037u, 4u)]), countOneBits(vec2<i32>(global0[_wgslsmith_index_u32(arg_0, 4u)], -1i) ^ var_1.d), select(vec2<bool>(true, var_1.a), vec2<bool>(true, false), global3.b.x))));
    return countOneBits(1u);
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = -1i;
    let var_1 = u_input.d;
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    let var_3 = vec4<u32>(~u_input.a, (_wgslsmith_add_u32(1u, u_input.a | global3.d.a.x) >> (_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(global3.d.d.yz, vec2<u32>(1u, 0u)), 1u) % 32u)) | arg_0, u_input.a, ~(~(~17479u)));
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1u, global3.d.a.x), ~var_3.ywx)), vec3<u32>(u_input.a, func_2(~arg_0, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.x, 762f, 1113f), vec3<f32>(-281f, var_2.x, var_2.x), global3.e))), ~59126u)), select(vec3<u32>(global3.c.d.x, u_input.a, ~(var_3.x << (u_input.a % 32u))), max(vec3<u32>(var_3.x, reverseBits(arg_0), 0u), ~global3.d.d.zyx), any(global3.d.b))), 4u)];
    return Struct_1(_wgslsmith_mod_u32(var_3.x, ~countOneBits(global3.c.d.x)) > var_3.x, global3.e, true, _wgslsmith_div_vec2_i32(select(firstTrailingBit(u_input.d), -(~vec2<i32>(1024i, 1i)), select(global3.b, select(vec2<bool>(global3.b.x, global3.d.b.x), vec2<bool>(false, global3.e), vec2<bool>(true, global3.c.b.x)), any(global3.d.b.zx))), var_1 | (u_input.d << (global3.c.d.zw % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.c.d.wx;
    var var_1 = func_1(var_0.x);
    let var_2 = Struct_2(~vec4<u32>(global3.c.d.x, reverseBits(global3.d.d.x | 46744u), ~var_0.x, firstLeadingBit(~59634u)), global3.d.b, select(firstTrailingBit(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 4u)], -1i, 35754i)), i32(-1i) * -25779i, 12784i != global0[_wgslsmith_index_u32(reverseBits(47034u), 4u)]), firstTrailingBit(vec4<u32>(abs(u_input.a), 28963u, ~4294967295u, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(24282u, u_input.a, 4294967295u)), global3.d.d.wzy))));
    var_1 = func_1(var_0.x);
    global0 = array<i32, 4>();
    global0 = array<i32, 4>();
    var var_3 = 4294967295u;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1980f), 937f), _wgslsmith_f_op_f32(-160f + _wgslsmith_f_op_f32(f32(-1f) * -1124f)), true)), _wgslsmith_f_op_f32(f32(-1f) * -742f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d.x, ~(vec4<u32>(~37245u, 4294967295u, 1u, 1u >> (var_2.d.x % 32u)) ^ global3.c.d), var_2.c, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, var_4, var_4), vec3<f32>(604f, -152f, -1548f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1052f, -1753f, -1169f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_4, -159f, 1336f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 561f, 605f) - vec3<f32>(var_4, -2225f, var_4)))), vec3<f32>(var_4, 884f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4))))), _wgslsmith_div_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(func_2(u_input.a, vec3<f32>(690f, var_4, var_4)) & global3.c.a.x, 4u)], 20735i), vec2<i32>(1i, 0i)));
}

