struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<bool>(false, false), Struct_1(vec2<f32>(-107f, 413f), false, vec4<bool>(false, true, false, false)), 1i, -14951i, vec3<i32>(20744i, -42047i, -70683i));

var<private> global1: array<u32, 25> = array<u32, 25>(5083u, 43617u, 66480u, 81533u, 4294967295u, 4294967295u, 4294967295u, 4294967295u, 54870u, 4294967295u, 14396u, 31105u, 0u, 0u, 48493u, 0u, 0u, 1u, 64853u, 10986u, 20910u, 4294967295u, 12172u, 0u, 40582u);

var<private> global2: array<bool, 20> = array<bool, 20>(false, false, true, false, false, false, true, true, true, true, false, false, false, true, true, false, true, true, true, false);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec2<bool>, arg_3: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(119f * -859f), max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(countOneBits(0u), 25u)], 25u)], min(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(111343u, 25u)], 25u)], 1u)) <= global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(25044u, 25u)], global1[_wgslsmith_index_u32(12007u, 25u)], 4294967295u, global1[_wgslsmith_index_u32(1u, 25u)]), vec4<u32>(4294967295u, 107225u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 25u)], 25u)], 25u)], 25u)], global1[_wgslsmith_index_u32(55935u, 25u)])), 25u)]))));
    var var_1 = ~global1[_wgslsmith_index_u32(28006u, 25u)];
    let var_2 = all(vec4<bool>(!(_wgslsmith_add_u32(7179u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(19125u, 25u)], 25u)]) < 4294967295u), select(any(select(arg_3.b.c, vec4<bool>(false, global0.b.b, global0.a.x, false), false)), any(!vec3<bool>(arg_0.a.x, true, global2[_wgslsmith_index_u32(0u, 20u)])), reverseBits(arg_3.e.x) >= -35034i), true, true));
    var var_3 = arg_3;
    var var_4 = 1u;
    return global1[_wgslsmith_index_u32(1u, 25u)];
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec3<bool>) -> Struct_3 {
    var var_0 = select(vec4<bool>(!(~arg_1.x <= func_3(Struct_2(vec2<bool>(true, arg_2.x), Struct_1(global0.b.a, false, vec4<bool>(arg_2.x, false, false, false)), 1i, u_input.a.x, vec3<i32>(1i, 1445i, u_input.a.x)), global0.b.a.x, arg_2.zx, Struct_2(global0.a, Struct_1(arg_0.b.a, global0.a.x, global0.b.c), -21904i, 7766i, global0.e))), true, arg_0.b.b | (arg_1.x == firstLeadingBit(arg_1.x)), any(arg_2.zy)), vec4<bool>(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(arg_1.x, 1u), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1.x, 4294967295u), 25u)]), 20u)] && true, !any(vec3<bool>(true, global2[_wgslsmith_index_u32(17128u, 20u)], false)) | !arg_0.a.x, any(vec4<bool>(any(vec3<bool>(false, true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.x, 25u)], 25u)], 20u)])), any(vec2<bool>(arg_0.a.x, global0.b.c.x)), select(false, false, true), -2366f < global0.b.a.x)), global0.b.b), global0.b.b);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(arg_0.b.a)), all(global0.b.c.wzx), select(vec4<bool>(false, arg_2.x, true, global0.a.x), arg_0.b.c, vec4<bool>(arg_0.b.a.x <= _wgslsmith_f_op_f32(arg_0.b.a.x - arg_0.b.a.x), arg_0.b.b, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(15251u, 1u, 1u, 5618u)), _wgslsmith_add_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.x, 25u)], 25u)], 25u)], 0u, global1[_wgslsmith_index_u32(0u, 25u)], global1[_wgslsmith_index_u32(61420u, 25u)]), vec4<u32>(arg_1.x, 10715u, 1u, 1818u))), 20u)], false)));
    var var_2 = Struct_3(vec3<u32>(firstLeadingBit(global1[_wgslsmith_index_u32(~63438u, 25u)]), 43175u, max(global1[_wgslsmith_index_u32(arg_1.x, 25u)], 73199u)), Struct_2(vec2<bool>(all(vec3<bool>(global2[_wgslsmith_index_u32(1u, 20u)], global0.a.x, true)), !all(vec3<bool>(true, false, var_1.c.x))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b.a.x, 1187f), vec2<f32>(1593f, arg_0.b.a.x))), select(true, true, all(arg_0.a)), vec4<bool>(false, false, all(var_0.wz), any(var_0.xww))), max(_wgslsmith_mult_i32(-28934i, -global0.e.x), -2147483647i), ~firstTrailingBit(arg_0.e.x >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(100950u, 25u)], 25u)] % 32u)), vec3<i32>(min(select(global0.d, global0.d, var_0.x), u_input.a.x), u_input.a.x ^ 8334i, global0.d)), true, select(1455i ^ _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global0.e.x, global0.e.x, 0i), global0.e, global0.e), -vec3<i32>(arg_0.c, -2147483647i, arg_0.e.x)), 12398i, !(!(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.x, 25u)], 20u)] & var_0.x))));
    let var_3 = !var_0.xw;
    var var_4 = Struct_2(!arg_2.yx, global0.b, 27198i, u_input.a.x, global0.e);
    return Struct_3(arg_1, Struct_2(!select(var_4.b.c.xx, select(vec2<bool>(true, var_1.c.x), var_1.c.yw, vec2<bool>(true, var_3.x)), any(var_0.yy)), var_1, -29352i, _wgslsmith_mult_i32(max(35155i, -2147483647i), global0.d & (i32(-1i) * -35242i)), min(min(global0.e, arg_0.e) ^ select(arg_0.e, vec3<i32>(2147483647i, u_input.a.x, 1i), var_4.b.c.xxy), abs(_wgslsmith_div_vec3_i32(var_4.e, var_2.b.e)))), !(_wgslsmith_f_op_f32(ceil(var_1.a.x)) == _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1863f, arg_0.b.a.x))), -11588i);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: bool) -> Struct_2 {
    var var_0 = vec3<u32>(32813u, arg_0.a.x, (4294967295u | ~countOneBits(global1[_wgslsmith_index_u32(1u, 25u)])) << (((1u | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(func_3(arg_0.b, 932f, arg_1.c.ww, arg_0.b), 25u)], 25u)]) & global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 25u)] << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(55897u, 25u)], 25u)], 25u)] % 32u), ~29907u), 25u)]) % 32u));
    var var_1 = func_3(func_2(arg_0.b, vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 25u)], ~84346u, ~4294967295u), select(select(vec3<bool>(false, arg_1.c.x, arg_2), !vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 20u)], arg_0.c, true), select(vec3<bool>(false, arg_1.b, false), arg_0.b.b.c.yyz, arg_1.c.zzx)), vec3<bool>(arg_2, all(arg_1.c), true), arg_0.b.b.c.wzz)).b, 618f, !arg_0.b.b.c.wz, func_2(arg_0.b, abs(func_2(arg_0.b, func_2(Struct_2(arg_1.c.zy, Struct_1(global0.b.a, false, vec4<bool>(false, false, true, true)), arg_0.d, global0.d, global0.e), arg_0.a, arg_0.b.b.c.zyx).a, !vec3<bool>(arg_2, false, arg_1.c.x)).a), !(!vec3<bool>(false, arg_1.b, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 25u)], 20u)]))).b);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.a.x, 522f, -1077f, 100f))))) + vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(arg_1.a.x)))), arg_0.b.b.a.x, 1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1777f - arg_1.a.x))))) * vec4<f32>(global0.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x))), _wgslsmith_div_f32(arg_1.a.x, _wgslsmith_f_op_f32(-arg_0.b.b.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a.x, 582f) + _wgslsmith_f_op_f32(min(global0.b.a.x, arg_0.b.b.a.x))) - 1123f)));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_3.wyw)));
    return Struct_2(select(arg_0.b.b.c.yy, !arg_1.c.yz, arg_1.c.ww), func_2(func_2(func_2(arg_0.b, arg_0.a, vec3<bool>(global0.b.c.x, true, global0.b.b)).b, arg_0.a, arg_0.b.b.c.zyx).b, vec3<u32>(_wgslsmith_mod_u32(~arg_0.a.x, _wgslsmith_sub_u32(70074u, arg_0.a.x)), abs(~global1[_wgslsmith_index_u32(4416u, 25u)]), arg_0.a.x), vec3<bool>(arg_1.c.x, min(arg_0.a.x, arg_0.a.x) < 36680u, true)).b.b, ~u_input.a.x, firstTrailingBit(-12832i), arg_0.b.e);
}

fn func_1() -> bool {
    let var_0 = func_4(func_2(Struct_2(vec2<bool>(!global0.b.c.x, true), Struct_1(_wgslsmith_f_op_vec2_f32(-global0.b.a), false & global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2344u, 25u)], 25u)], 20u)], select(vec4<bool>(true, false, false, false), global0.b.c, global0.a.x)), -_wgslsmith_sub_i32(global0.e.x, global0.e.x), global0.e.x, -vec3<i32>(40428i, u_input.a.x, global0.c) ^ vec3<i32>(-1i, global0.d, global0.e.x)), abs(~select(vec3<u32>(74241u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20180u, 25u)], 25u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 25u)], 25u)], 25u)], 25u)]), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(35854u, 25u)], 25u)], 4294967295u, global1[_wgslsmith_index_u32(1u, 25u)]), vec3<bool>(false, global0.a.x, false))), global0.b.c.zwz), global0.b, !(!(!any(global0.b.c.wzy))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(var_0.b.a + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(global0.b.a))))), global0.a.x, func_2(var_0, select(vec3<u32>(1u, global1[_wgslsmith_index_u32(1u, 25u)], 4294967295u) & vec3<u32>(global1[_wgslsmith_index_u32(62764u, 25u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(37831u, 25u)], 25u)], 64128u), vec3<u32>(~1u, ~131063u, ~1u), global2[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(72827u, 25u)], 20u)] | true), vec3<bool>(global0.b.c.x, !(var_0.a.x | var_0.b.c.x), true)).b.b.c);
    global2 = array<bool, 20>();
    let var_2 = func_2(var_0, ~vec3<u32>(~(~1u), _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 25u)], 4294967295u, 17400u), vec3<u32>(global1[_wgslsmith_index_u32(25879u, 25u)], 4294967295u, 47954u) ^ vec3<u32>(77823u, 4294967295u, global1[_wgslsmith_index_u32(4294967295u, 25u)])), global1[_wgslsmith_index_u32(50216u, 25u)] | global1[_wgslsmith_index_u32(1u, 25u)]), vec3<bool>(true, !global2[_wgslsmith_index_u32(0u, 20u)], !(!select(global0.a.x, global0.b.c.x, false))));
    global0 = func_2(var_2.b, _wgslsmith_mult_vec3_u32(var_2.a | var_2.a, var_2.a), vec3<bool>(true, var_0.b.a.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-712f)) + 160f), false)).b;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(_wgslsmith_mod_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(105931u, 9652u, 16277u, global1[_wgslsmith_index_u32(25368u, 25u)]), ~vec4<u32>(global1[_wgslsmith_index_u32(18828u, 25u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 25u)], 25u)], 14610u, 12877u)), ~firstTrailingBit(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(127871u, 25u)], 25u)], 25u)], 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)], 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5960u, 25u)], 25u)], 25u)], 25u)])), select(vec4<bool>(false, global0.b.b, global0.a.x, global2[_wgslsmith_index_u32(11002u, 20u)]), global0.b.c, false)), ~(~vec4<u32>(global1[_wgslsmith_index_u32(70499u, 25u)], 4294967295u, global1[_wgslsmith_index_u32(32423u, 25u)], 4294967295u))), ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 25u)], 25u)], 25u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 31052u, 0u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(25775u, 25u)], 25u)], 4294967295u, 4294967295u, global1[_wgslsmith_index_u32(4294967295u, 25u)])), 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 62160u), _wgslsmith_mod_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(45641u, 25u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7784u, 25u)], 25u)]), vec2<u32>(17340u, 21256u))), ~1u), select(select(vec4<bool>(global0.b.c.x && true, false, true, func_1()), !vec4<bool>(true, false, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(36935u, 25u)], 25u)], 25u)], 20u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3267u, 25u)], 25u)], 25u)], 20u)]), global0.b.b), !vec4<bool>(true, global0.b.a.x != global0.b.a.x, true, false), vec4<bool>(true, global0.a.x, func_1(), any(vec3<bool>(true, false, global0.b.b)))));
    let var_1 = _wgslsmith_div_i32(-global0.e.x, ~26789i);
    var var_2 = global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x >> (global1[_wgslsmith_index_u32(~(~1u) >> (var_0.x % 32u), 25u)] % 32u), 25u)], 20u)];
    var var_3 = func_2(Struct_2(vec2<bool>(true, false), func_4(Struct_3(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x, 25u)], 25u)], 25u)], 4294967295u, var_0.x) ^ vec3<u32>(var_0.x, 23651u, 675u), Struct_2(vec2<bool>(false, global2[_wgslsmith_index_u32(var_0.x, 20u)]), Struct_1(global0.b.a, true, global0.b.c), u_input.a.x, -27427i, vec3<i32>(-2147483647i, u_input.a.x, 16242i)), true, u_input.a.x), func_4(Struct_3(var_0.xyy, Struct_2(global0.b.c.wy, Struct_1(global0.b.a, global2[_wgslsmith_index_u32(1u, 20u)], vec4<bool>(false, true, true, true)), 12446i, var_1, global0.e), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(14594u, 25u)], 25u)], 20u)], -26437i), Struct_1(global0.b.a, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 25u)], 25u)], 20u)], vec4<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 25u)], 20u)], true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x, 25u)], 20u)], true)), true).b, true).b, i32(-1i) * -17766i, var_1, vec3<i32>(2147483647i, 49627i, global0.d)), ~var_0.xyz, vec3<bool>(!all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1422u, 25u)], 20u)], global2[_wgslsmith_index_u32(144783u, 20u)]))), any(vec2<bool>(true, true)), all(vec3<bool>(global2[_wgslsmith_index_u32(0u, 20u)] | true, global0.a.x, func_1()))));
    global1 = array<u32, 25>();
    var_0 = vec4<u32>(abs(var_3.a.x), _wgslsmith_mult_u32(~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(9403u, global1[_wgslsmith_index_u32(4294967295u, 25u)], var_3.a.x, 26049u), vec4<u32>(9106u, var_3.a.x, global1[_wgslsmith_index_u32(4294967295u, 25u)], 0u)), var_3.a.x), ~31990u), var_3.a.x, ~80687u);
    global1 = array<u32, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(680f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.b.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, global0.b.a.x))), _wgslsmith_f_op_f32(ceil(-1761f))), func_4(Struct_3(~vec3<u32>(var_0.x, 18683u, 27129u), Struct_2(vec2<bool>(false, true), func_2(var_3.b, var_0.yyw, var_3.b.b.c.zyx).b.b, 0i >> (var_0.x % 32u), ~44570i, var_3.b.e), 0i >= firstLeadingBit(var_3.d), var_1), func_2(var_3.b, vec3<u32>(func_3(var_3.b, -390f, vec2<bool>(true, false), Struct_2(vec2<bool>(false, true), Struct_1(vec2<f32>(-217f, 415f), var_3.b.b.b, global0.b.c), 64926i, var_3.d, vec3<i32>(1i, 0i, var_3.b.d))), var_3.a.x, 0u), var_3.b.b.c.yxz).b.b, global0.b.c.x).b.a.x, _wgslsmith_div_u32(~26066u, var_0.x));
}

