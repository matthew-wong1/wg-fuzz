struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: bool,
    d: vec3<i32>,
    e: bool,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(27742u, 57026u, 4248u);

var<private> global1: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false));

var<private> global2: array<Struct_2, 22>;

var<private> global3: array<vec3<u32>, 18>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<bool>) -> f32 {
    var var_0 = 0i;
    var_0 = _wgslsmith_clamp_i32(4401i, -1i, 55387i);
    var var_1 = vec4<bool>(arg_0.x, arg_1.x, false, !arg_1.x);
    var var_2 = global1[_wgslsmith_index_u32(~69481u, 20u)];
    var_1 = !select(vec4<bool>(!all(vec4<bool>(false, arg_0.x, var_2.a, var_2.a)), all(vec4<bool>(true, true, var_2.a, var_1.x)) != true, !select(false, var_1.x, false), false), select(vec4<bool>(var_2.a, any(arg_1), false, var_1.x), select(vec4<bool>(true, true, var_2.a, var_2.a), select(vec4<bool>(true, arg_0.x, false, false), vec4<bool>(arg_0.x, arg_0.x, var_1.x, var_1.x), vec4<bool>(true, false, var_2.a, true)), vec4<bool>(true, true, true, true)), select(vec4<bool>(var_2.a, false, false, false), !vec4<bool>(true, var_1.x, var_1.x, true), arg_1.x)), select(select(!vec4<bool>(true, true, true, arg_1.x), select(vec4<bool>(false, false, var_2.a, false), vec4<bool>(var_1.x, var_1.x, var_2.a, arg_0.x), vec4<bool>(var_2.a, false, false, false)), !vec4<bool>(arg_1.x, false, var_2.a, false)), vec4<bool>(any(vec4<bool>(true, arg_0.x, arg_0.x, false)), any(var_1.xyx), true, !arg_1.x), !vec4<bool>(var_2.a, var_1.x, var_1.x, true)));
    return _wgslsmith_f_op_f32(abs(-2138f));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1790f)))), _wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, true), vec3<bool>(global0.x < 66130u, true, true))), _wgslsmith_f_op_f32(548f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(218f + -343f) + -1000f))));
    global1 = array<Struct_1, 20>();
    var var_1 = _wgslsmith_dot_vec2_u32(reverseBits(global0.xy), global0.xz);
    global0 = vec3<u32>(_wgslsmith_mod_u32(~reverseBits(_wgslsmith_div_u32(1u, 1u)), countOneBits(~global0.x)), abs(_wgslsmith_clamp_u32(~_wgslsmith_add_u32(1u, 73470u), ~(~1u), 4294967295u)), ~global0.x);
    return u_input.b.x;
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: vec3<bool>, arg_3: Struct_2) -> Struct_1 {
    global3 = array<vec3<u32>, 18>();
    global2 = array<Struct_2, 22>();
    global1 = array<Struct_1, 20>();
    global1 = array<Struct_1, 20>();
    global0 = vec3<u32>(u_input.b.x, ~(~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(55435u, u_input.b.x, 4294967295u, arg_1), vec4<u32>(global0.x, 9985u, 4294967295u, arg_1)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 17380u, 0u, global0.x), vec4<u32>(u_input.b.x, u_input.b.x, 1u, 18403u), vec4<u32>(global0.x, arg_1, 21664u, arg_1)))), u_input.b.x);
    return arg_3.c;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: Struct_4) -> Struct_1 {
    global3 = array<vec3<u32>, 18>();
    global0 = global3[_wgslsmith_index_u32(1u, 18u)];
    global2 = array<Struct_2, 22>();
    global1 = array<Struct_1, 20>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.c.b, arg_3.c.b, _wgslsmith_f_op_f32(f32(-1f) * -479f)))));
    return func_4(vec2<bool>(!arg_0.c.a, func_4(select(arg_3.c.a.yy, arg_3.c.a.yz, any(vec3<bool>(false, false, arg_0.c.a))), reverseBits(42775u), vec3<bool>(!arg_2.c.a, true, all(arg_3.c.a)), arg_2).a), func_2(), arg_3.c.a, Struct_2(_wgslsmith_f_op_f32(968f - arg_2.a), 2147483647i | _wgslsmith_mult_i32(arg_3.c.d.x, min(-29616i, 47923i)), Struct_1(arg_0.c.a)));
}

fn func_1() -> Struct_4 {
    global3 = array<vec3<u32>, 18>();
    global0 = ~vec3<u32>(global0.x, _wgslsmith_div_u32(abs(_wgslsmith_div_u32(global0.x, 35707u)), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(119700u, u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, u_input.b.x, 1u, 1u), vec4<u32>(4294967295u, u_input.b.x, 4294967295u, global0.x), vec4<u32>(global0.x, global0.x, u_input.b.x, 25573u)))), global0.x);
    let var_0 = func_5(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-233f)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f + 305f)))), u_input.a, func_4(vec2<bool>(any(vec4<bool>(false, false, true, false)), u_input.b.x != global0.x), global0.x, vec3<bool>(true, select(false, false, true), true), global2[_wgslsmith_index_u32(func_2(), 22u)])), vec4<i32>(u_input.a << (u_input.b.x % 32u), ~(-1i), ~13746i, -9389i), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -363f)), ~u_input.a, Struct_1(select(u_input.b.x <= 1u, false, true))), Struct_4(vec2<i32>(u_input.a, _wgslsmith_add_i32(-23775i, 0i)) ^ (firstLeadingBit(vec2<i32>(u_input.a, u_input.a)) << (u_input.b % vec2<u32>(32u))), u_input.a, Struct_3(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(584f + -1207f), _wgslsmith_f_op_f32(688f + -641f))), true, vec3<i32>(-31399i, u_input.a, u_input.a) | _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 52887i, 40853i), vec3<i32>(u_input.a, -1i, -71284i)), false)));
    let var_1 = _wgslsmith_dot_vec3_u32(~vec3<u32>(global0.x, func_2(), ~(~global0.x)), global3[_wgslsmith_index_u32(38763u, 18u)]);
    global1 = array<Struct_1, 20>();
    return Struct_4(_wgslsmith_div_vec2_i32(vec2<i32>(reverseBits(1i), _wgslsmith_sub_i32(-23490i, u_input.a)), _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(u_input.a, 1i)), vec2<i32>(u_input.a, u_input.a)), -firstLeadingBit(vec2<i32>(u_input.a, 2147483647i)))), reverseBits(33102i), Struct_3(vec3<bool>(var_0.a, !var_0.a, false), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(952f, _wgslsmith_f_op_f32(f32(-1f) * -115f))), var_0.a, vec3<i32>(u_input.a, u_input.a, -2147483647i ^ u_input.a) & select(select(vec3<i32>(1i, u_input.a, u_input.a), vec3<i32>(22367i, u_input.a, u_input.a), var_0.a), ~vec3<i32>(u_input.a, 2147483647i, 1i), all(vec2<bool>(false, true))), false));
}

fn func_6(arg_0: u32, arg_1: Struct_4, arg_2: Struct_2) -> Struct_3 {
    global3 = array<vec3<u32>, 18>();
    let var_0 = max((global3[_wgslsmith_index_u32(~(~arg_0), 18u)] & vec3<u32>(30800u, _wgslsmith_div_u32(arg_0, u_input.b.x), 32598u)) & ~global3[_wgslsmith_index_u32(arg_0, 18u)], vec3<u32>(global0.x, global0.x, max(abs(arg_0), 0u)));
    var var_1 = -2147483647i;
    global2 = array<Struct_2, 22>();
    let var_2 = any(select(select(!select(vec4<bool>(arg_1.c.e, arg_2.c.a, true, arg_2.c.a), vec4<bool>(true, false, false, arg_2.c.a), vec4<bool>(arg_2.c.a, true, arg_2.c.a, arg_2.c.a)), vec4<bool>(arg_1.c.a.x, all(arg_1.c.a), var_0.x >= var_0.x, any(vec4<bool>(true, false, true, false))), arg_1.c.e), vec4<bool>(arg_1.c.d.x >= 1626i, arg_2.c.a, 0u != ~arg_0, !all(arg_1.c.a.xy)), !(!(!vec4<bool>(arg_2.c.a, true, false, true)))));
    return Struct_3(arg_1.c.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-244f, -600f, false)), arg_2.a))))), arg_1.c.e & func_1().c.a.x, _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(-arg_1.c.d, vec3<i32>(-2542i, u_input.a, 0i) ^ vec3<i32>(9987i, 2147483647i, -14493i)), -_wgslsmith_add_vec3_i32(vec3<i32>(-1i, -19693i, 13527i), arg_1.c.d)) ^ vec3<i32>(~1i, _wgslsmith_clamp_i32(u_input.a, arg_2.b, 0i), u_input.a), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(min(~(~(-31701i) >> (global0.x % 32u)), u_input.a), -u_input.a, -u_input.a);
    global3 = array<vec3<u32>, 18>();
    let var_1 = ~firstTrailingBit(_wgslsmith_mod_u32(global0.x, ~(global0.x ^ u_input.b.x)));
    let var_2 = func_6(var_1, func_1(), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(min(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 0u), global3[_wgslsmith_index_u32(var_1, 18u)]) >> (~var_1 % 32u), 84973u), var_1), 22u)]);
    let var_3 = -1686f;
    let var_4 = func_5(global2[_wgslsmith_index_u32(global0.x, 22u)], _wgslsmith_sub_vec4_i32((~vec4<i32>(1i, -2147483647i, u_input.a, -2147483647i) ^ reverseBits(vec4<i32>(0i, 0i, -14101i, 1i))) ^ _wgslsmith_add_vec4_i32(select(vec4<i32>(var_0.x, u_input.a, var_2.d.x, var_2.d.x), vec4<i32>(-1102i, 1i, 2147483647i, -1i), var_2.a.x), ~vec4<i32>(4439i, var_2.d.x, 1i, 5395i)), ~_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, var_0.x, -3409i, var_0.x), reverseBits(vec4<i32>(var_2.d.x, 1i, var_2.d.x, -1i)))), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -526f), 3070i, Struct_1(true)), Struct_4(firstTrailingBit(abs(select(var_2.d.xy, vec2<i32>(-23560i, -20245i), var_2.a.yy))), -(~(var_2.d.x | 0i)), Struct_3(select(vec3<bool>(var_2.c, var_2.c, false), var_2.a, true), -948f, all(vec2<bool>(var_2.e, var_2.c)), -vec3<i32>(var_2.d.x, var_2.d.x, var_2.d.x), !(var_2.a.x & true))));
    global1 = array<Struct_1, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(func_2(), 1u, global0.x | u_input.b.x), select((~u_input.a & 0i) ^ u_input.a, ~_wgslsmith_dot_vec3_i32(var_2.d, var_2.d), 14502u != ~u_input.b.x), func_6(16096u, Struct_4(vec2<i32>(func_1().c.d.x, 21050i), var_2.d.x, var_2), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(var_1, 4294967295u, 0u) >> (_wgslsmith_mod_u32(u_input.b.x, var_1) % 32u), 53955u), 22u)]).d);
}

