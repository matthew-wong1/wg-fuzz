struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 2003u;

var<private> global1: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(-1i, 39856i, -13592i), vec3<i32>(-1i, 0i, 1i), vec3<i32>(-141i, i32(-2147483648), -1i), vec3<i32>(-25506i, -17188i, 38022i), vec3<i32>(-4946i, -1i, 40031i));

var<private> global2: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: Struct_3) -> bool {
    let var_0 = Struct_1(1u, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.x + global2.b.x)), _wgslsmith_f_op_f32(ceil(-440f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(arg_1.b.b)), _wgslsmith_f_op_f32(-global2.b.x), all(vec3<bool>(true, arg_0, arg_1.b.c.c.x))))) + global2.b), select(!vec3<bool>(!arg_1.b.c.c.x, global2.c.x, true), select(!arg_1.b.c.c, !global2.c, select(global2.c, arg_1.b.c.c, select(vec3<bool>(true, global2.c.x, false), vec3<bool>(arg_0, false, false), global2.c))), !vec3<bool>(true, arg_1.b.c.c.x, !arg_0)));
    global1 = array<vec3<i32>, 5>();
    let var_1 = Struct_1(abs(16507u), vec3<f32>(global2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -404f), var_0.b.x), arg_1.b.c.c);
    var var_2 = !(_wgslsmith_f_op_f32(515f * _wgslsmith_f_op_f32(-var_0.b.x)) <= -133f);
    return !any(global2.c.xy);
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: i32) -> Struct_3 {
    global1 = array<vec3<i32>, 5>();
    global2 = arg_1.b.c;
    var var_0 = Struct_1(12449u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -511f), _wgslsmith_f_op_f32(global2.b.x * global2.b.x), _wgslsmith_f_op_f32(round(278f))))), !select(vec3<bool>(global2.c.x, func_3(false, arg_1), !global2.c.x), select(vec3<bool>(global2.c.x, arg_1.b.c.c.x, false), vec3<bool>(false, false, arg_1.b.c.c.x), arg_1.b.c.c.x), global2.c));
    var var_1 = arg_1;
    global2 = arg_1.b.c;
    return arg_1;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3) -> Struct_2 {
    global2 = func_2(930f, arg_1, arg_1.b.a).b.c;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.c.x))))));
    var var_1 = ~0u;
    var var_2 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 46545u, 4294967295u), ~vec3<u32>(arg_0.x, global2.a, global2.a)), ~vec3<u32>(1u, arg_1.b.c.a, 4294967295u)) ^ reverseBits(arg_0.x);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-2185f * global2.b.x))) * 1000f);
    return arg_1.b;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: Struct_3) -> vec4<bool> {
    let var_0 = !global2.c.x && true;
    var var_1 = -1i;
    let var_2 = (arg_1.a >> ((_wgslsmith_mod_u32(43827u, 4294967295u) & arg_3.b.c.a) % 32u)) >> (~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.b.c.a, 21449u, 25851u), vec3<u32>(arg_1.c.a, 4294967295u, 4294967295u)) & _wgslsmith_mod_u32(arg_3.b.c.a, 58930u), arg_1.c.a) % 32u);
    global1 = array<vec3<i32>, 5>();
    var_1 = -2147483647i;
    return !(!select(!select(vec4<bool>(arg_1.c.c.x, false, arg_2.x, false), vec4<bool>(true, true, arg_2.x, arg_1.c.c.x), arg_2), vec4<bool>(false, true, arg_3.b.c.c.x, true), select(select(arg_2, vec4<bool>(true, true, true, false), arg_2.x), vec4<bool>(arg_2.x, var_0, false, false), arg_3.b.c.c.x)));
}

fn func_1(arg_0: vec4<bool>, arg_1: i32) -> vec3<f32> {
    global1 = array<vec3<i32>, 5>();
    global1 = array<vec3<i32>, 5>();
    global0 = ~min(~_wgslsmith_clamp_u32(4294967295u, _wgslsmith_sub_u32(global2.a, global2.a), 0u), global2.a);
    var var_0 = !select(func_5(global2.b, func_4(vec2<u32>(0u, 16319u), func_2(global2.b.x, Struct_3(global2.b, Struct_2(-1i, -1000f, Struct_1(global2.a, vec3<f32>(1810f, global2.b.x, global2.b.x), vec3<bool>(false, false, global2.c.x))), vec4<f32>(2497f, global2.b.x, global2.b.x, global2.b.x)), 38950i)), arg_0, Struct_3(global2.b, Struct_2(50508i, 189f, Struct_1(4294967295u, vec3<f32>(-246f, 1078f, global2.b.x), global2.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.x, global2.b.x, global2.b.x, global2.b.x)))), !arg_0, !arg_0);
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, global2.b.x, 598f), global2.b, !arg_0.yyy)), global2.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1260f, 733f, -376f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b.x, -187f, global2.b.x) + global2.b)) + vec3<f32>(_wgslsmith_f_op_f32(global2.b.x * global2.b.x), global2.b.x, _wgslsmith_f_op_f32(global2.b.x * -318f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~select(~1u, ~_wgslsmith_mod_u32(1u, global2.a), true), _wgslsmith_f_op_vec3_f32(select(global2.b, _wgslsmith_f_op_vec3_f32(step(global2.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(vec4<bool>(global2.c.x, true, false, true), u_input.a.x))))), func_4(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(global2.a, 0u)), func_2(-989f, Struct_3(global2.b, Struct_2(u_input.a.x, global2.b.x, Struct_1(4294967295u, vec3<f32>(global2.b.x, 159f, global2.b.x), global2.c)), vec4<f32>(579f, global2.b.x, global2.b.x, -903f)), _wgslsmith_dot_vec4_i32(u_input.a, u_input.a))).c.c.x)), !vec3<bool>((global2.c.x & global2.c.x) && global2.c.x, func_5(_wgslsmith_div_vec3_f32(global2.b, global2.b), Struct_2(34395i, global2.b.x, Struct_1(4294967295u, vec3<f32>(global2.b.x, global2.b.x, global2.b.x), global2.c)), !vec4<bool>(global2.c.x, true, false, global2.c.x), func_2(105f, Struct_3(global2.b, Struct_2(-2870i, -690f, Struct_1(42385u, global2.b, global2.c)), vec4<f32>(global2.b.x, -696f, global2.b.x, global2.b.x)), u_input.a.x)).x, select(func_5(vec3<f32>(-302f, 1409f, global2.b.x), Struct_2(u_input.a.x, 185f, Struct_1(global2.a, global2.b, vec3<bool>(true, false, true))), vec4<bool>(true, global2.c.x, global2.c.x, true), Struct_3(vec3<f32>(global2.b.x, -911f, 848f), Struct_2(u_input.a.x, global2.b.x, Struct_1(1u, vec3<f32>(-142f, 478f, global2.b.x), global2.c)), vec4<f32>(global2.b.x, global2.b.x, global2.b.x, 377f))).x, !global2.c.x, func_2(global2.b.x, Struct_3(global2.b, Struct_2(11438i, -169f, Struct_1(global2.a, vec3<f32>(global2.b.x, -722f, 1746f), vec3<bool>(global2.c.x, global2.c.x, false))), vec4<f32>(global2.b.x, global2.b.x, 1502f, global2.b.x)), u_input.a.x).b.c.c.x)));
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global2.b.x - -166f), global2.b.x, var_0.b.x, _wgslsmith_div_f32(-1960f, -2426f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.x, 1000f, var_0.b.x, global2.b.x), vec4<f32>(-1154f, global2.b.x, global2.b.x, global2.b.x), var_0.c.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1118f, global2.b.x, -276f, 2285f))))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_0.c.x, var_0.c.x, global2.c.x, var_0.c.x), vec4<bool>(global2.c.x, false, global2.c.x, global2.c.x), global2.c.x), 57490u == global2.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-func_2(var_0.b.x, Struct_3(global2.b, Struct_2(u_input.a.x, var_0.b.x, Struct_1(4294967295u, vec3<f32>(var_0.b.x, 610f, global2.b.x), global2.c)), vec4<f32>(281f, var_0.b.x, -1041f, 690f)), -2147483647i).c) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_0.b.x, -1151f, -1230f) - vec4<f32>(var_0.b.x, 345f, var_0.b.x, var_0.b.x)), vec4<f32>(489f, -662f, global2.b.x, 351f))))));
    global0 = 1u;
    var var_2 = func_4(vec2<u32>(func_4(~min(vec2<u32>(var_0.a, 63819u), vec2<u32>(var_0.a, global2.a)), func_2(_wgslsmith_div_f32(var_1.x, -167f), Struct_3(var_0.b, Struct_2(u_input.a.x, var_0.b.x, Struct_1(global2.a, var_0.b, vec3<bool>(global2.c.x, global2.c.x, var_0.c.x))), var_1), 35474i)).c.a, _wgslsmith_add_u32(~(~global2.a), global2.a)), func_2(_wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(522f - 363f)))), Struct_3(var_0.b, func_2(409f, func_2(407f, Struct_3(global2.b, Struct_2(2147483647i, var_0.b.x, Struct_1(global2.a, var_0.b, vec3<bool>(global2.c.x, false, false))), var_1), 2147483647i), u_input.a.x).b, vec4<f32>(_wgslsmith_f_op_f32(min(global2.b.x, global2.b.x)), _wgslsmith_f_op_f32(floor(-1581f)), -427f, _wgslsmith_f_op_f32(-var_1.x))), max(1i, _wgslsmith_dot_vec4_i32(countOneBits(u_input.a), reverseBits(u_input.a)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(!vec4<bool>(var_0.c.x, var_0.c.x, var_2.c.c.x, false), _wgslsmith_dot_vec4_i32(abs(u_input.a), u_input.a))) * var_1.xwy) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b + global2.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1814f + -285f) - _wgslsmith_f_op_f32(trunc(var_1.x))), -1327f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(1000f, Struct_3(global2.b, Struct_2(-28193i, global2.b.x, Struct_1(98002u, var_0.b, vec3<bool>(false, var_2.c.c.x, false))), var_1), u_input.a.x).a.x * var_2.c.b.x) * -960f)));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<u32>(var_2.c.a, ~var_0.a, var_2.c.a), vec3<u32>(1u, 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, 1u) ^ vec2<u32>(57050u, 20397u), _wgslsmith_div_vec2_u32(vec2<u32>(33422u, 22141u), vec2<u32>(global2.a, 0u)))), u_input.a.x < _wgslsmith_add_i32(_wgslsmith_mult_i32(var_2.a, var_2.a), reverseBits(9751i))), max(4294967295u << (reverseBits(var_2.c.a) % 32u), ~111805u));
}

