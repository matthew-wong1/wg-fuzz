struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: Struct_3,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: Struct_4,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_2 = Struct_2(i32(-2147483648), Struct_1(vec4<f32>(1332f, -1035f, -467f, 593f)), true);

var<private> global2: bool;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: i32) -> vec3<i32> {
    global0 = _wgslsmith_mod_vec2_u32(vec2<u32>(~(~select(0u, global0.x, global1.c)), u_input.c.x), vec2<u32>(abs(min(u_input.c.x, u_input.c.x)) ^ ~firstLeadingBit(global0.x), 0u));
    var var_0 = global1.b.a.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(573f, _wgslsmith_f_op_f32(global1.b.a.x * _wgslsmith_f_op_f32(select(-1172f, _wgslsmith_f_op_f32(f32(-1f) * -816f), global1.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-374f * -890f))));
    global2 = false;
    global1 = Struct_2(arg_0, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x, -168f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2725f)) * _wgslsmith_f_op_f32(f32(-1f) * -420f)))), -2303f > _wgslsmith_f_op_f32(global1.b.a.x - var_1.x));
    return _wgslsmith_sub_vec3_i32(select(-(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0, -43651i, arg_0), vec3<i32>(global1.a, -4739i, global1.a)) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(global1.a, 2857i, 2147483647i), vec3<i32>(global1.a, u_input.b.x, u_input.a))), countOneBits(_wgslsmith_mult_vec3_i32(-vec3<i32>(arg_0, 1i, -33319i), vec3<i32>(13454i, global1.a, global1.a))), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(2455u, 84910u, 36535u)), vec3<u32>(4294967295u, global0.x, u_input.c.x)) == ~global0.x), firstTrailingBit(-vec3<i32>(abs(u_input.a), -27023i ^ arg_1, i32(-1i) * -33380i)));
}

fn func_2(arg_0: f32, arg_1: vec2<i32>, arg_2: u32) -> f32 {
    var var_0 = Struct_4(arg_0, _wgslsmith_mult_i32(-_wgslsmith_clamp_i32(-49846i, u_input.a, 21687i >> (arg_2 % 32u)), countOneBits(_wgslsmith_sub_i32(-2147483647i, arg_1.x))), vec2<i32>(arg_1.x, -2147483647i), Struct_3(vec3<bool>(true, global1.c, !(global1.c || false)), Struct_2(global1.a, Struct_1(_wgslsmith_f_op_vec4_f32(global1.b.a - global1.b.a)), select(false, false, 1u == global0.x)), arg_2));
    global1 = var_0.d.b;
    var var_1 = Struct_2(_wgslsmith_mult_i32(-2147483647i, countOneBits(arg_1.x)), global1.b, (firstTrailingBit(_wgslsmith_clamp_i32(5797i, arg_1.x, arg_1.x)) <= abs(countOneBits(u_input.a))) | var_0.d.a.x);
    let var_2 = vec4<bool>(true, true, true, true);
    var var_3 = func_3(var_1.a, -arg_1.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(711f, _wgslsmith_f_op_f32(global1.b.a.x - var_0.a)))));
}

fn func_1(arg_0: Struct_5) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(arg_0.e.a.zz + global1.b.a.xx);
    var var_1 = ~(-(i32(-1i) * -39855i));
    var var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(arg_0.e.a.yz)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -182f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d.d.b.b.a.x, 113f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1681f, arg_0.d.a) * vec2<f32>(-1000f, arg_0.d.a))), vec2<f32>(_wgslsmith_f_op_f32(func_2(global1.b.a.x, vec2<i32>(2147483647i, -18889i), global0.x)), _wgslsmith_f_op_f32(trunc(-1000f)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, arg_0.e.a.x) - vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-590f * global1.b.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -317f) + _wgslsmith_f_op_f32(-global1.b.a.x)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global1.b.a.xy, vec2<f32>(442f, -713f))) * vec2<f32>(arg_0.d.d.b.b.a.x, -238f)), arg_0.d.d.b.b.a.zy)))));
    let var_3 = global1.b;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1467f, -1301f) * _wgslsmith_f_op_f32(floor(var_0.x)));
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: Struct_4) -> Struct_2 {
    global1 = arg_0.d.b;
    global0 = vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(arg_0.d.c, 61026u), ~(~reverseBits(4294967295u))), 0u);
    var var_0 = !(!(!(!arg_2.d.b.c) == all(!arg_0.d.a.yz)));
    global0 = _wgslsmith_mult_vec2_u32(~vec2<u32>(global0.x, _wgslsmith_clamp_u32(51348u, 0u, arg_0.d.c)), ~(~abs(~u_input.c)));
    var var_1 = reverseBits(~(~(vec4<u32>(72118u, 73034u, 14461u, arg_2.d.c) ^ vec4<u32>(1798u, 0u, arg_0.d.c, 86372u)) | select(~vec4<u32>(0u, u_input.c.x, arg_0.d.c, 9473u), vec4<u32>(3212u, arg_2.d.c, arg_0.d.c, arg_0.d.c), !vec4<bool>(arg_2.d.b.c, true, false, false))));
    return arg_2.d.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~max(-(~u_input.a), 2147483647i));
    var var_1 = u_input.b;
    global2 = true;
    global1 = Struct_2(_wgslsmith_mult_i32(1524i, var_1.x), Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(370f, -327f, -1136f, -1000f) + global1.b.a), _wgslsmith_f_op_vec4_f32(global1.b.a + global1.b.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.a.x, global1.b.a.x, global1.b.a.x, global1.b.a.x)))))), global1.c);
    global1 = func_4(Struct_4(_wgslsmith_div_f32(510f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_5(vec3<i32>(u_input.b.x, var_0, u_input.a), vec2<u32>(u_input.c.x, global0.x), global0.x, Struct_4(529f, 48062i, vec2<i32>(u_input.a, var_0), Struct_3(vec3<bool>(global1.c, false, true), Struct_2(-43178i, Struct_1(vec4<f32>(1377f, global1.b.a.x, global1.b.a.x, global1.b.a.x)), true), u_input.c.x)), Struct_1(vec4<f32>(454f, -2157f, -415f, 1839f))))))), -1i, u_input.b, Struct_3(!vec3<bool>(global1.c, true, false), Struct_2(9084i, Struct_1(vec4<f32>(687f, 1587f, global1.b.a.x, 1566f)), true), abs(4294967295u))), _wgslsmith_f_op_f32(global1.b.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.a.x) * _wgslsmith_f_op_f32(-global1.b.a.x)))), Struct_4(672f, -u_input.b.x, vec2<i32>(_wgslsmith_div_i32(7925i, ~global1.a), -2147483647i), Struct_3(!(!vec3<bool>(global1.c, global1.c, global1.c)), Struct_2(-1i & global1.a, Struct_1(global1.b.a), global1.c), min(global0.x ^ global0.x, ~30760u))));
    global2 = select(func_4(Struct_4(_wgslsmith_div_f32(global1.b.a.x, _wgslsmith_f_op_f32(-global1.b.a.x)), abs(u_input.a), -(~u_input.b), Struct_3(vec3<bool>(global1.c, true, false), Struct_2(u_input.a, Struct_1(global1.b.a), false), _wgslsmith_sub_u32(global0.x, 0u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.b.a.x), 1119f)), Struct_4(_wgslsmith_f_op_f32(abs(-859f)), 2147483647i, select(~vec2<i32>(4709i, -2147483647i), vec2<i32>(-8876i, var_1.x), global1.c), Struct_3(select(vec3<bool>(global1.c, global1.c, false), vec3<bool>(global1.c, global1.c, global1.c), vec3<bool>(true, global1.c, true)), Struct_2(var_1.x, global1.b, global1.c), 596u & global0.x))).c, (true == !(global1.c != global1.c)) || (global1.c & !global1.c), select(any(vec3<bool>(global1.c, -651f < global1.b.a.x, global1.c)), true && !(!global1.c), true));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-143f))), u_input.b.x, u_input.b, Struct_3(!vec3<bool>(global1.c, false, global1.c), Struct_2(_wgslsmith_mod_i32(_wgslsmith_sub_i32(global1.a, 196i), reverseBits(var_1.x)), func_4(Struct_4(global1.b.a.x, global1.a, u_input.b, Struct_3(vec3<bool>(global1.c, false, false), Struct_2(-1i, Struct_1(vec4<f32>(1000f, global1.b.a.x, global1.b.a.x, -165f)), global1.c), 4294967295u)), -680f, Struct_4(-389f, 1i, vec2<i32>(-12300i, 48772i), Struct_3(vec3<bool>(global1.c, global1.c, global1.c), Struct_2(var_1.x, global1.b, global1.c), global0.x))).b, global1.c), ~(~_wgslsmith_sub_u32(20374u, u_input.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(u_input.c.x, 0u, 46221u, 0u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.c.x, 4294967295u, global0.x, 4294967295u), ~vec4<u32>(u_input.c.x, 4294967295u, 1u, 0u), vec4<u32>(63802u, 1u, 4294967295u, global0.x) << (vec4<u32>(1u, var_2.d.c, 134408u, 33192u) % vec4<u32>(32u)))), countOneBits(vec4<u32>(firstLeadingBit(22875u), 162169u, 1u, global0.x))), _wgslsmith_add_u32(global0.x, abs(~_wgslsmith_add_u32(var_2.d.c, var_2.d.c))));
}

