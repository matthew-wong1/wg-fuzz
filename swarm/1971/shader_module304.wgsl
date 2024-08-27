struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3> = array<f32, 3>(1051f, -1216f, 1000f);

var<private> global1: i32 = i32(-2147483648);

var<private> global2: f32;

var<private> global3: vec4<bool>;

var<private> global4: array<bool, 3> = array<bool, 3>(true, false, false);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: bool) -> bool {
    let var_0 = 2264f;
    var var_1 = Struct_4(_wgslsmith_div_i32(-arg_0.c.c, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2805i, arg_0.c.c), vec3<i32>(arg_1.a.x, arg_1.a.x, 18192i)), arg_0.c.c | 34626i)) & _wgslsmith_mult_i32(arg_1.a.x, _wgslsmith_clamp_i32(-arg_1.a.x, -2147483647i, -30906i)), Struct_1(any(select(!vec2<bool>(global4[_wgslsmith_index_u32(u_input.a, 3u)], false), global3.zw, arg_0.b.b)), true, arg_0.c.c), Struct_1(true, select(global4[_wgslsmith_index_u32(abs(reverseBits(arg_1.c)), 3u)], !all(vec3<bool>(global4[_wgslsmith_index_u32(arg_1.c, 3u)], false, arg_0.c.a)), arg_0.b.b), select(~countOneBits(-2811i), ~1i, any(!global3.xxz))));
    let var_2 = arg_1;
    global3 = select(vec4<bool>(global3.x, any(select(select(vec3<bool>(arg_2, var_1.c.b, false), global3.zyx, false), global3.xyy, select(global3.xxy, global3.zww, global4[_wgslsmith_index_u32(0u, 3u)]))), true, false), vec4<bool>(!all(vec2<bool>(arg_0.b.b, var_2.d)) && select(false, false, var_2.c > arg_1.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(arg_1.c, 3u)])), 206f) != _wgslsmith_div_f32(751f, _wgslsmith_f_op_f32(var_0 - var_0)), false, false), select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, arg_2, true, false), vec4<bool>(true, var_1.c.a, false, global3.x), vec4<bool>(true, arg_0.b.b, arg_2, true)), vec4<bool>(true, arg_2, true, var_1.c.b), !arg_2), select(vec4<bool>(true, false, true, false), vec4<bool>(arg_2, false, false, var_1.c.b), vec4<bool>(true, var_1.c.b, false, false))), !select(!vec4<bool>(false, global3.x, false, true), vec4<bool>(arg_2, false, false, var_2.b), any(vec2<bool>(false, false))), vec4<bool>(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(30836u, var_2.c, 24680u, 55881u), vec4<u32>(u_input.a, 7400u, arg_1.c, 71915u)) << ((var_2.c << (9277u % 32u)) % 32u), 3u)], select(true, true, arg_0.b.b), any(global3.yw) | any(global3.yyx), all(vec4<bool>(true, arg_1.d, arg_0.b.a, false)))));
    let var_3 = Struct_2(var_0, _wgslsmith_mod_u32(u_input.a, ~_wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.a, 0u, u_input.a, var_2.c), vec4<u32>(0u, 24009u, 4294967295u, 1u)), ~vec4<u32>(arg_1.c, 37304u, var_2.c, u_input.a))), Struct_1(!(32622i <= arg_1.a.x), true, 2147483647i));
    return !any(select(global3.xy, vec2<bool>(var_3.a < global0[_wgslsmith_index_u32(arg_1.c, 3u)], !arg_1.b), true || !arg_1.d));
}

fn func_2() -> Struct_2 {
    global0 = array<f32, 3>();
    var var_0 = global4[_wgslsmith_index_u32(~_wgslsmith_add_u32(~(~_wgslsmith_div_u32(2691u, u_input.a)), u_input.a), 3u)];
    global3 = !vec4<bool>(global3.x, !(4294967295u == ~u_input.a), func_3(Struct_4(~28501i, Struct_1(false, global3.x, -1i), Struct_1(false, global4[_wgslsmith_index_u32(54291u, 3u)], -1i)), Struct_3(_wgslsmith_div_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(64640i, 9965i)), false, ~u_input.a, global3.x), any(global3.xwz)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 3u)] + _wgslsmith_f_op_f32(min(650f, 347f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 3u)] - -1969f)));
    global0 = array<f32, 3>();
    let var_1 = Struct_3(-select(~(-vec2<i32>(1i, 0i)), abs(vec2<i32>(55992i, -33590i)), global3.x), (i32(-1i) * -_wgslsmith_div_i32(-1i, -66810i)) >= firstLeadingBit(max(_wgslsmith_dot_vec3_i32(vec3<i32>(5133i, -1i, 0i), vec3<i32>(20866i, -9050i, 14092i)), 12113i)), 4294967295u, global3.x);
    return Struct_2(_wgslsmith_f_op_f32(-1974f - global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), ~vec2<u32>(1u, u_input.a)), 3u)]), ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_1.c >> (17434u % 32u), 0u, u_input.a << (u_input.a % 32u)), ~(~0u)), Struct_1(global4[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(~5251u, u_input.a)), 3u)], countOneBits(~var_1.c) >= var_1.c, var_1.a.x));
}

fn func_4(arg_0: Struct_2) -> Struct_4 {
    let var_0 = vec2<bool>(!func_2().c.b, global3.x);
    global4 = array<bool, 3>();
    var var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, 4294967295u, arg_0.b)), min(abs(vec3<u32>(6015u, arg_0.b, 0u)), vec3<u32>(8043u, 4294967295u, u_input.a))), 3329u, firstLeadingBit(1u)), reverseBits(~select(~vec3<u32>(0u, u_input.a, 55643u), ~vec3<u32>(0u, arg_0.b, 0u), global3.zyw)));
    let var_2 = Struct_1(all(select(global3.xy, select(vec2<bool>(true, true), vec2<bool>(global3.x, arg_0.c.b), arg_0.c.c != arg_0.c.c), vec2<bool>(arg_0.c.c >= 2147483647i, !var_0.x))), var_0.x, 0i);
    var var_3 = func_2();
    return Struct_4(var_2.c, func_2().c, arg_0.c);
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> u32 {
    let var_0 = func_4(func_2());
    let var_1 = func_4(Struct_2(-434f, ~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b, u_input.a, arg_1.b), vec3<u32>(57597u, u_input.a, 1u)), 1u), Struct_1(global4[_wgslsmith_index_u32(27482u, 3u)], false, arg_0))).c;
    let var_2 = -12075i;
    let var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(-202f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-817f)))), -1017f, 198f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0[_wgslsmith_index_u32(arg_1.b, 3u)], arg_1.a, 743f, -1070f))))));
    var var_4 = Struct_3(vec2<i32>(_wgslsmith_add_i32(-9248i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(var_2, 192i, var_2), vec3<i32>(-2147483647i, var_1.c, var_2)), max(var_0.b.c, -4550i)), var_2), var_1.b, u_input.a, true);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 12480i ^ ((1i & firstTrailingBit(_wgslsmith_mult_i32(-5267i, -1i))) | (abs(countOneBits(4799i)) << ((func_1(1i, Struct_2(global0[_wgslsmith_index_u32(u_input.a, 3u)], 77677u, Struct_1(global3.x, global3.x, 0i))) ^ u_input.a) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.a, 94563u, ~u_input.a, _wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(12236u, u_input.a, u_input.a)), select(vec3<u32>(u_input.a, u_input.a, u_input.a), ~vec3<u32>(1u, 47450u, u_input.a), global3.zzz))));
}

