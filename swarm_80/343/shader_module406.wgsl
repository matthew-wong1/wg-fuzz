struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
    c: i32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: bool) -> bool {
    var var_0 = global0.b.d.c;
    var var_1 = all(!select(vec4<bool>(true, true, arg_1.x && arg_2, false), !vec4<bool>(false, arg_2, false, arg_1.x), true || !arg_2));
    var var_2 = arg_2;
    let var_3 = _wgslsmith_f_op_f32(1f * global0.a.c);
    var_0 = _wgslsmith_f_op_f32(min(global0.b.a.b, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(791f, 612f), global0.b.e.b))));
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> Struct_3 {
    var var_0 = Struct_2(Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -750f)), arg_0.d.c, u_input.d), arg_0.b, arg_0.a.a, Struct_1(false | global0.a.a, _wgslsmith_f_op_f32(arg_1.e.c * -295f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.e.c, 1629f))), _wgslsmith_f_op_f32(-2255f * 435f)), _wgslsmith_mod_vec3_u32(u_input.d, max(u_input.d, ~u_input.d))), arg_0.d);
    global0 = Struct_3(arg_1.e, Struct_2(Struct_1(select(all(vec4<bool>(true, arg_0.e.a, true, true)), any(vec2<bool>(arg_2.a.a, false)), func_3(vec2<f32>(arg_1.a.b, arg_2.e.c), vec2<bool>(false, true), global0.a.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.b.e.c * arg_2.d.c), _wgslsmith_f_op_f32(f32(-1f) * -795f))), _wgslsmith_f_op_f32(-783f - _wgslsmith_f_op_f32(abs(1000f))), arg_0.d.d), _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(1i, -1i, global0.b.b.x, var_0.b.x)) ^ vec4<i32>(global0.b.b.x, -2147483647i, 23236i, -4303i), vec4<i32>(~(-14705i), var_0.b.x, max(-33515i, arg_1.b.x), arg_0.b.x)), false, Struct_1(!global0.a.a, _wgslsmith_f_op_f32(f32(-1f) * -3061f), global0.b.e.b, u_input.d), Struct_1(true, arg_2.d.b, var_0.a.c, u_input.d)));
    var var_1 = Struct_5(global0.b.b.xww & (arg_1.b.wzz >> (firstLeadingBit(~vec3<u32>(var_0.a.d.x, 4294967295u, 4294967295u)) % vec3<u32>(32u))), vec2<f32>(-1000f, _wgslsmith_f_op_f32(1887f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.e.c)) + _wgslsmith_f_op_f32(f32(-1f) * -451f)))));
    var var_2 = arg_0.d;
    var var_3 = !(arg_1.a.b == 1000f);
    return Struct_3(arg_0.d, global0.b);
}

fn func_1(arg_0: i32, arg_1: Struct_5, arg_2: vec4<i32>) -> Struct_3 {
    global0 = func_2(global0.b, global0.b, global0.b);
    global0 = func_2(Struct_2(global0.a, arg_2, !func_2(global0.b, func_2(global0.b, Struct_2(Struct_1(global0.a.a, arg_1.b.x, -672f, vec3<u32>(u_input.d.x, u_input.d.x, 53461u)), vec4<i32>(-1i, 35942i, -1i, arg_2.x), true, Struct_1(global0.a.a, arg_1.b.x, 304f, vec3<u32>(44368u, global0.b.d.d.x, global0.b.e.d.x)), Struct_1(global0.b.d.a, global0.b.e.b, arg_1.b.x, u_input.d)), Struct_2(Struct_1(global0.b.c, arg_1.b.x, global0.a.b, global0.b.d.d), vec4<i32>(-1397i, arg_2.x, arg_2.x, arg_1.a.x), true, global0.a, global0.a)).b, global0.b).b.d.a, global0.a, Struct_1(global0.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.b.a.b, arg_1.b.x)) - _wgslsmith_f_op_f32(step(global0.a.c, global0.b.a.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1435f, 299f, global0.a.a)) - global0.a.b), global0.a.d)), global0.b, func_2(func_2(global0.b, func_2(func_2(global0.b, global0.b, Struct_2(Struct_1(true, 735f, -331f, vec3<u32>(4182u, u_input.a, global0.a.d.x)), vec4<i32>(-2147483647i, 0i, 2147483647i, -1i), global0.b.e.a, global0.b.e, global0.b.a)).b, Struct_2(global0.b.d, arg_2, global0.a.a, Struct_1(false, -1790f, -1000f, global0.a.d), global0.b.e), Struct_2(global0.b.e, arg_2, global0.b.a.a, global0.a, global0.a)).b, func_2(global0.b, func_2(global0.b, Struct_2(Struct_1(true, arg_1.b.x, 492f, vec3<u32>(u_input.c.x, 41909u, 0u)), arg_2, true, global0.a, Struct_1(global0.b.a.a, 829f, 1000f, u_input.d)), global0.b).b, global0.b).b).b, func_2(func_2(func_2(global0.b, Struct_2(Struct_1(false, 921f, arg_1.b.x, vec3<u32>(u_input.d.x, global0.a.d.x, u_input.d.x)), vec4<i32>(-19814i, arg_2.x, arg_2.x, 1i), false, global0.a, Struct_1(false, global0.b.a.c, -501f, vec3<u32>(u_input.c.x, 10884u, 1u))), Struct_2(Struct_1(global0.a.a, 127f, -950f, vec3<u32>(1272u, 4294967295u, 3154u)), arg_2, true, global0.a, Struct_1(true, arg_1.b.x, -480f, global0.b.a.d))).b, func_2(global0.b, global0.b, global0.b).b, global0.b).b, global0.b, global0.b).b, global0.b).b);
    var var_0 = ~((~(-global0.b.b) & _wgslsmith_mult_vec4_i32(arg_2, _wgslsmith_sub_vec4_i32(global0.b.b, global0.b.b))) >> (_wgslsmith_add_vec4_u32(vec4<u32>(global0.b.a.d.x, _wgslsmith_mod_u32(u_input.c.x, 9102u), ~global0.b.d.d.x, _wgslsmith_sub_u32(30802u, global0.b.d.d.x)), ~vec4<u32>(20774u, global0.a.d.x, global0.b.e.d.x, u_input.c.x) << ((vec4<u32>(0u, global0.a.d.x, global0.b.a.d.x, u_input.c.x) ^ vec4<u32>(14985u, 4294967295u, u_input.c.x, global0.a.d.x)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(-863f - -1320f);
    let var_2 = ~73951u;
    return func_2(func_2(global0.b, global0.b, Struct_2(func_2(func_2(Struct_2(Struct_1(global0.b.a.a, arg_1.b.x, arg_1.b.x, u_input.d), global0.b.b, global0.b.a.a, global0.a, global0.a), Struct_2(global0.b.e, vec4<i32>(arg_2.x, u_input.e, u_input.b.x, var_0.x), global0.b.d.a, Struct_1(global0.b.c, global0.a.c, global0.b.d.c, vec3<u32>(17281u, var_2, u_input.c.x)), global0.b.d), global0.b).b, global0.b, global0.b).a, _wgslsmith_add_vec4_i32(arg_2, arg_2) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2, u_input.a, 4294967295u, global0.b.d.d.x), vec4<u32>(4294967295u, 0u, 0u, 31408u), vec4<u32>(0u, var_2, global0.b.d.d.x, u_input.c.x)) % vec4<u32>(32u)), all(vec2<bool>(global0.a.a, true)), func_2(func_2(global0.b, global0.b, global0.b).b, global0.b, global0.b).a, Struct_1(global0.a.a, _wgslsmith_f_op_f32(min(global0.b.e.b, -455f)), _wgslsmith_f_op_f32(-arg_1.b.x), u_input.d))).b, Struct_2(Struct_1(false, 625f, 2624f, u_input.d), _wgslsmith_clamp_vec4_i32(arg_2 ^ (global0.b.b | arg_2), -(arg_2 << (vec4<u32>(53501u, global0.b.a.d.x, var_2, u_input.d.x) % vec4<u32>(32u))), vec4<i32>(abs(51299i), u_input.b.x, 0i, ~0i)), global0.b.d.a, Struct_1(global0.b.d.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.b.x, -372f)) - _wgslsmith_f_op_f32(-295f - global0.a.c)), _wgslsmith_f_op_f32(round(937f)), abs(vec3<u32>(global0.a.d.x, 41899u, var_2))), global0.b.d), global0.b);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_3) -> Struct_3 {
    var var_0 = global0.b.e.d.x;
    let var_1 = Struct_4(!select(any(select(vec4<bool>(true, true, true, true), vec4<bool>(arg_2.a.a, true, arg_0.e.a, global0.a.a), false)), arg_0.d.a, func_1(arg_0.b.x, Struct_5(vec3<i32>(1i, arg_0.b.x, arg_0.b.x), arg_1.yy), arg_2.b.b | vec4<i32>(global0.b.b.x, u_input.b.x, u_input.b.x, global0.b.b.x)).b.a.a), u_input.d, arg_0.b.x);
    return Struct_3(Struct_1(false, -1156f, 423f, vec3<u32>(_wgslsmith_sub_u32(firstLeadingBit(u_input.c.x), _wgslsmith_sub_u32(var_1.b.x, 86906u)), 0u, arg_0.e.d.x)), func_1(-18001i, Struct_5(func_1(var_1.c >> (u_input.d.x % 32u), Struct_5(vec3<i32>(0i, var_1.c, arg_2.b.b.x), vec2<f32>(global0.b.d.b, arg_1.x)), select(arg_2.b.b, arg_2.b.b, false)).b.b.wxw, arg_1.yz), vec4<i32>(-1i, _wgslsmith_mod_i32(-1i, i32(-1i) * -2147483647i), _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_0.b.x, 85705i), select(vec2<i32>(var_1.c, 10102i), u_input.b.xx, vec2<bool>(global0.b.a.a, arg_0.a.a))), _wgslsmith_add_i32(var_1.c, ~u_input.b.x))).b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(global0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.a.b * 112f), _wgslsmith_f_op_f32(-global0.b.a.c), _wgslsmith_f_op_f32(global0.a.b * global0.a.c)))), func_1(global0.b.b.x, Struct_5(max(_wgslsmith_sub_vec3_i32(u_input.b, global0.b.b.yxw), global0.b.b.xxz), vec2<f32>(_wgslsmith_div_f32(global0.a.c, global0.b.a.c), _wgslsmith_f_op_f32(global0.b.a.c * 480f))), global0.b.b));
    global0 = Struct_3(func_1(~_wgslsmith_div_i32(u_input.b.x, 2147483647i), Struct_5(_wgslsmith_add_vec3_i32(-vec3<i32>(-1i, u_input.e, -10781i), ~vec3<i32>(u_input.e, u_input.e, global0.b.b.x)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.e.b, 619f))))), global0.b.b).a, func_2(Struct_2(global0.a, vec4<i32>(11562i, -2147483647i, min(u_input.b.x, 1i), reverseBits(1i)), true, global0.a, func_4(func_2(global0.b, Struct_2(Struct_1(global0.b.d.a, 1000f, 687f, vec3<u32>(u_input.a, u_input.d.x, global0.b.d.d.x)), vec4<i32>(67864i, -8663i, -10090i, 60133i), true, global0.b.e, global0.a), Struct_2(Struct_1(global0.b.d.a, global0.a.c, 1000f, vec3<u32>(global0.a.d.x, 0u, u_input.a)), vec4<i32>(global0.b.b.x, global0.b.b.x, -2147483647i, global0.b.b.x), true, global0.a, global0.b.e)).b, vec3<f32>(global0.a.c, global0.a.b, global0.b.e.c), Struct_3(Struct_1(false, 520f, global0.a.b, global0.a.d), global0.b)).a), Struct_2(Struct_1(true, func_1(52050i, Struct_5(global0.b.b.xww, vec2<f32>(-373f, global0.a.b)), vec4<i32>(1i, -5598i, -67741i, 0i)).b.d.c, -575f, vec3<u32>(11131u, u_input.d.x, global0.a.d.x)), global0.b.b, true | select(true, true, global0.a.a), func_1(_wgslsmith_clamp_i32(2147483647i, -34592i, 29960i), Struct_5(global0.b.b.xzw, vec2<f32>(global0.a.c, global0.b.a.b)), vec4<i32>(global0.b.b.x, 0i, 37994i, u_input.e) ^ vec4<i32>(u_input.b.x, -1i, global0.b.b.x, u_input.b.x)).b.a, func_2(global0.b, Struct_2(global0.b.e, vec4<i32>(-8012i, 2147483647i, 1i, global0.b.b.x), global0.b.a.a, Struct_1(global0.b.c, global0.a.c, global0.b.a.b, vec3<u32>(u_input.a, global0.b.e.d.x, u_input.a)), global0.a), Struct_2(global0.b.a, vec4<i32>(1i, -1i, u_input.b.x, -2147483647i), true, Struct_1(global0.b.e.a, global0.b.e.c, global0.b.d.b, global0.b.d.d), Struct_1(global0.b.c, 1608f, -118f, global0.b.e.d))).b.a), Struct_2(func_1(0i, Struct_5(vec3<i32>(-26634i, u_input.b.x, 6817i), vec2<f32>(global0.a.b, -1368f)), vec4<i32>(2147483647i, global0.b.b.x, -1i, global0.b.b.x)).a, global0.b.b, global0.a.a, global0.b.a, func_1(u_input.e, Struct_5(global0.b.b.xwx, vec2<f32>(-2363f, global0.b.a.b)), global0.b.b).b.a)).b);
    let var_0 = !(!(!select(vec4<bool>(false, global0.b.d.a, false, global0.b.e.a), !vec4<bool>(global0.b.e.a, true, false, true), !vec4<bool>(global0.b.e.a, false, global0.a.a, global0.a.a))));
    global0 = func_4(func_2(global0.b, func_1(_wgslsmith_mod_i32(2147483647i, func_1(12588i, Struct_5(global0.b.b.yzx, vec2<f32>(-1122f, global0.b.d.c)), vec4<i32>(0i, -20158i, -1i, u_input.e)).b.b.x), Struct_5(vec3<i32>(-3239i, -2147483647i, -11923i) ^ vec3<i32>(global0.b.b.x, 0i, global0.b.b.x), vec2<f32>(global0.b.e.c, global0.a.c)), -(~global0.b.b)).b, func_1(_wgslsmith_mult_i32(abs(-18154i), u_input.e), Struct_5(u_input.b, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.a.b, -1077f)))), vec4<i32>(global0.b.b.x, -u_input.b.x, 0i, -24653i)).b).b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.b, _wgslsmith_f_op_f32(-global0.b.d.b), func_1(global0.b.b.x, Struct_5(u_input.b, vec2<f32>(-2617f, -1040f)), vec4<i32>(33898i, global0.b.b.x, global0.b.b.x, u_input.b.x)).a.c)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.b.e.c + -549f))), 1165f)), Struct_3(global0.a, Struct_2(Struct_1(any(vec3<bool>(var_0.x, false, global0.a.a)), 1f, 1000f, min(vec3<u32>(u_input.c.x, 41194u, u_input.d.x), global0.a.d)), global0.b.b, ~1u != _wgslsmith_mult_u32(4294967295u, global0.a.d.x), global0.a, Struct_1(u_input.b.x >= 27615i, _wgslsmith_f_op_f32(2522f + global0.b.e.b), _wgslsmith_f_op_f32(841f - -874f), global0.a.d))));
    let var_1 = u_input.b.x;
    global0 = func_1(~global0.b.b.x, Struct_5(~(~vec3<i32>(1i, -2147483647i, var_1)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-336f, -1000f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1955f, 2125f))))), -_wgslsmith_clamp_vec4_i32(-select(global0.b.b, global0.b.b, var_0), global0.b.b, firstLeadingBit(-vec4<i32>(var_1, -1i, global0.b.b.x, global0.b.b.x))));
    global0 = Struct_3(func_1(_wgslsmith_mult_i32(global0.b.b.x, -4186i), Struct_5(min(vec3<i32>(54026i, -2147483647i, 2147483647i), -vec3<i32>(2147483647i, var_1, 2147483647i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.e.b, global0.b.a.b))), -reverseBits(~global0.b.b)).b.a, Struct_2(Struct_1(!(!var_0.x), global0.a.c, _wgslsmith_f_op_f32(-992f + _wgslsmith_f_op_f32(ceil(global0.a.b))), countOneBits(global0.b.a.d)), -_wgslsmith_div_vec4_i32(min(vec4<i32>(35069i, var_1, -41295i, global0.b.b.x), global0.b.b), vec4<i32>(u_input.b.x, 0i, var_1, -27314i)), !(!var_0.x), func_2(global0.b, func_2(Struct_2(global0.a, vec4<i32>(var_1, u_input.b.x, 2147483647i, -7330i), false, Struct_1(true, -625f, 210f, u_input.d), global0.b.a), global0.b, func_2(Struct_2(global0.b.d, global0.b.b, var_0.x, global0.b.a, global0.b.e), global0.b, global0.b).b).b, func_1(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, -12703i), global0.b.b.zz), Struct_5(u_input.b, vec2<f32>(global0.a.c, global0.b.e.b)), ~vec4<i32>(u_input.b.x, var_1, 2147483647i, 0i)).b).b.d, Struct_1(true, global0.b.e.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -404f)), _wgslsmith_mod_vec3_u32(u_input.d, u_input.d) << ((u_input.d ^ u_input.d) % vec3<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(func_2(global0.b, func_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-6858i, u_input.b.x, var_1), ~u_input.b), Struct_5(vec3<i32>(u_input.e, -2147483647i, global0.b.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.c, 809f))), vec4<i32>(min(var_1, -6489i), 0i, u_input.e, _wgslsmith_clamp_i32(48464i, 1i, u_input.b.x))).b, global0.b).b.b.wy, -29407i);
}

