struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec3<bool>,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<f32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
    d: Struct_2,
    e: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: f32,
    d: vec3<bool>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -31604i;

var<private> global1: vec3<bool>;

var<private> global2: array<vec3<bool>, 6>;

var<private> global3: Struct_1 = Struct_1(vec2<u32>(92312u, 12618u), i32(-2147483648), vec3<bool>(false, false, true), 1u, vec3<f32>(1218f, 430f, -2952f));

var<private> global4: vec2<f32> = vec2<f32>(430f, -217f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>) -> i32 {
    global2 = array<vec3<bool>, 6>();
    var var_0 = arg_0;
    let var_1 = Struct_4(Struct_3(Struct_2(Struct_1(global3.a, global3.b, !vec3<bool>(global3.c.x, true, global3.c.x), 3977u, _wgslsmith_f_op_vec3_f32(ceil(global3.e))), _wgslsmith_add_vec4_u32(~vec4<u32>(global3.d, 65809u, 4294967295u, 4294967295u), vec4<u32>(global3.a.x, global3.d, global3.a.x, 30144u)), vec4<f32>(_wgslsmith_f_op_f32(-global3.e.x), _wgslsmith_f_op_f32(608f * 3199f), -435f, _wgslsmith_f_op_f32(-global3.e.x)), ~1i), ~(u_input.a ^ 11134i), Struct_1(global3.a, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, -1i, 1i), vec3<i32>(0i, u_input.a, 0i), vec3<i32>(global3.b, u_input.a, global3.b)), -vec3<i32>(0i, global3.b, global3.b)), select(arg_1, !global2[_wgslsmith_index_u32(global3.a.x, 6u)], !arg_1), global3.a.x, global3.e), Struct_2(Struct_1(global3.a, global3.b, select(global2[_wgslsmith_index_u32(0u, 6u)], vec3<bool>(true, global3.c.x, arg_0), arg_0), 4294967295u & global3.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.e.x, 450f, global3.e.x))), ~(~vec4<u32>(global3.a.x, global3.a.x, global3.d, global3.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global4.x, 1000f, -588f, global4.x)))), global3.b), vec4<i32>(u_input.a, _wgslsmith_div_i32(u_input.a, ~0i), select(-u_input.a, _wgslsmith_sub_i32(global3.b, 0i), arg_0), -2147483647i ^ (global3.b | global3.b))), vec3<i32>(~(-3626i), global3.b, global3.b), ~reverseBits(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global3.d, global3.a.x, global3.d, global3.d), vec4<u32>(28302u, global3.a.x, 0u, global3.d), vec4<u32>(4294967295u, 1u, global3.d, global3.d))), global3.c.yx, abs(reverseBits(vec4<i32>(_wgslsmith_mult_i32(global3.b, 32917i), ~global3.b, 19145i, 1i))));
    global0 = ~_wgslsmith_clamp_i32(firstLeadingBit(0i), -2147483647i, min(u_input.a, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-2147483647i, var_1.e.x, -2147483647i)), var_1.e.www)));
    var var_2 = var_1;
    return _wgslsmith_clamp_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(var_2.e.xwz, var_2.b), _wgslsmith_dot_vec2_i32(var_1.a.e.zy, vec2<i32>(global3.b, 0i)) >> (4294967295u % 32u)), _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(1i, var_2.b.x), var_1.a.c.b), u_input.a, abs(-26535i >> (var_2.c.x % 32u))), ~_wgslsmith_sub_i32(~global3.b, 1i)) & -40703i;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(-11070i, _wgslsmith_div_i32(0i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(global3.b, 17060i, global3.b), vec3<i32>(global3.b, 49806i, -1i))), ~_wgslsmith_mult_i32(-9719i, func_3(arg_1.c.x, arg_1.c))), ~vec3<i32>(~_wgslsmith_add_i32(arg_1.b, arg_0.a.b), i32(-1i) * -2147483647i, 0i));
    var var_1 = Struct_5(select(_wgslsmith_mod_i32(-u_input.a, 0i) > global3.b, all(vec3<bool>(true, all(vec4<bool>(true, true, global1.x, global1.x)), global1.x)), global3.d < arg_1.a.x), select(any(vec2<bool>(false, select(global1.x, false, true))), arg_0.b.x > ~_wgslsmith_add_u32(arg_0.b.x, 63782u), any(global3.c.yz)), -504f, select(select(select(vec3<bool>(arg_1.c.x, true, global1.x), arg_0.a.c, !global2[_wgslsmith_index_u32(4294967295u, 6u)]), !select(vec3<bool>(true, false, arg_1.c.x), vec3<bool>(arg_1.c.x, false, global3.c.x), arg_0.a.c), arg_1.c.x), arg_0.a.c, vec3<bool>(all(select(vec4<bool>(true, arg_1.c.x, arg_0.a.c.x, global1.x), vec4<bool>(global1.x, true, false, global1.x), vec4<bool>(global3.c.x, arg_1.c.x, global3.c.x, true))), false, !(arg_1.b <= -65499i))), arg_1.b);
    global1 = !select(!select(!global2[_wgslsmith_index_u32(39074u, 6u)], vec3<bool>(global1.x, true, false), 2147483647i == u_input.a), arg_0.a.c, _wgslsmith_f_op_f32(exp2(var_1.c)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(899f)) - _wgslsmith_f_op_f32(1250f + -1016f)));
    var var_2 = ~global3.a;
    var var_3 = Struct_5(~_wgslsmith_mod_u32(arg_0.b.x >> (1u % 32u), 85365u) > ~0u, var_1.d.x, -317f, select(select(arg_1.c, !global2[_wgslsmith_index_u32(arg_0.a.a.x, 6u)], true), !(!arg_0.a.c), false), ~_wgslsmith_clamp_i32(-20860i, -(var_0.x >> (21134u % 32u)), 0i));
    return vec3<bool>(!((-23680i | arg_1.b) < u_input.a), arg_1.c.x, !(false & (_wgslsmith_clamp_i32(global3.b, -23242i, 1i) < -1i)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: f32, arg_3: bool) -> vec3<bool> {
    let var_0 = abs(firstLeadingBit(~firstLeadingBit(_wgslsmith_mult_vec2_u32(arg_1.a.a, vec2<u32>(global3.d, arg_1.a.a.x)))));
    var var_1 = Struct_5(false, all(!(!vec4<bool>(arg_1.a.c.x, true, true, global3.c.x))), _wgslsmith_f_op_f32(1335f + -990f), select(vec3<bool>(any(select(vec4<bool>(true, global3.c.x, true, global3.c.x), vec4<bool>(false, false, false, true), false)), !global1.x, any(select(vec4<bool>(false, global1.x, global1.x, global3.c.x), vec4<bool>(false, global1.x, true, false), vec4<bool>(arg_3, arg_3, false, arg_1.a.c.x)))), global2[_wgslsmith_index_u32(global3.a.x << (~_wgslsmith_mod_u32(4294967295u, 27160u) % 32u), 6u)], select(vec3<bool>(false, false, false), select(func_2(Struct_2(Struct_1(vec2<u32>(var_0.x, 0u), arg_1.d, global2[_wgslsmith_index_u32(arg_1.b.x, 6u)], 0u, vec3<f32>(1181f, 2614f, -2064f)), vec4<u32>(0u, 4294967295u, 0u, 45522u), vec4<f32>(-1262f, 831f, arg_2, global3.e.x), 0i), Struct_1(var_0, global3.b, global3.c, 18973u, arg_1.c.xwz)), vec3<bool>(true, false, global1.x), select(global2[_wgslsmith_index_u32(1u, 6u)], vec3<bool>(true, true, global3.c.x), arg_1.a.c)), ~var_0.x > var_0.x)), -1i);
    let var_2 = !(!arg_0.x);
    let var_3 = Struct_4(Struct_3(arg_1, min(global3.b, func_3(true, select(arg_1.a.c, vec3<bool>(true, arg_1.a.c.x, true), true))), arg_1.a, Struct_2(Struct_1(_wgslsmith_div_vec2_u32(var_0, vec2<u32>(global3.a.x, 0u)), ~var_1.e, func_2(arg_1, arg_1.a), 1u, vec3<f32>(arg_1.c.x, global4.x, -1878f)), abs(~arg_1.b), arg_1.c, ~(-27860i)), vec4<i32>(reverseBits(var_1.e) >> (min(var_0.x, 0u) % 32u), _wgslsmith_mod_i32(u_input.a, var_1.e | u_input.a), -46295i, select(firstLeadingBit(-41973i), _wgslsmith_div_i32(arg_1.d, global3.b), true))), firstLeadingBit(firstLeadingBit(~firstTrailingBit(vec3<i32>(var_1.e, u_input.a, var_1.e)))), _wgslsmith_mult_vec4_u32(countOneBits(arg_1.b), _wgslsmith_sub_vec4_u32(countOneBits(~arg_1.b), max(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.b.x, 66542u, global3.a.x, 1u), vec4<u32>(80837u, arg_1.b.x, var_0.x, 4943u)), ~vec4<u32>(global3.d, 0u, global3.a.x, 11428u)))), vec2<bool>(!global3.c.x, global1.x), vec4<i32>(arg_1.d, i32(-1i) * -(i32(-1i) * -20988i), var_1.e, -arg_1.d));
    global3 = Struct_1(select(select(vec2<u32>(40250u, 0u), global3.a >> (vec2<u32>(44254u, 45449u) % vec2<u32>(32u)), arg_0) ^ _wgslsmith_mult_vec2_u32(select(vec2<u32>(4294967295u, 4294967295u), var_3.a.d.a.a, vec2<bool>(false, true)), select(vec2<u32>(global3.a.x, 1u), global3.a, vec2<bool>(false, false))), vec2<u32>(var_0.x, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(global3.a.x, var_3.c.x, var_0.x)), _wgslsmith_add_vec3_u32(var_3.a.a.b.yyx, var_3.a.a.b.zyy))), select(vec2<bool>(select(false, var_1.d.x, arg_0.x), all(vec4<bool>(arg_1.a.c.x, false, arg_0.x, true))), select(vec2<bool>(arg_0.x, true), vec2<bool>(arg_0.x, arg_3), !vec2<bool>(true, arg_0.x)), !(!var_3.a.a.a.c.zy))), 0i, arg_1.a.c, 11083u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global3.e.x, _wgslsmith_f_op_f32(sign(var_3.a.c.e.x)), _wgslsmith_f_op_f32(max(var_1.c, -1559f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-658f, 355f, var_1.c) + global3.e)))));
    return !(!vec3<bool>((var_3.a.c.a.x & global3.d) < ~var_0.x, _wgslsmith_f_op_f32(-var_3.a.c.e.x) != _wgslsmith_div_f32(arg_1.a.e.x, global4.x), !all(arg_0)));
}

fn func_1(arg_0: vec3<u32>, arg_1: f32) -> i32 {
    global1 = func_4(vec2<bool>(true, true), Struct_2(Struct_1(~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 34344u), vec2<u32>(35704u, 4294967295u), vec2<u32>(global3.d, 1u)), -1i, select(func_2(Struct_2(Struct_1(vec2<u32>(arg_0.x, arg_0.x), 14643i, vec3<bool>(global3.c.x, global1.x, global1.x), 1u, global3.e), vec4<u32>(global3.d, 9717u, arg_0.x, 4294967295u), vec4<f32>(global4.x, global4.x, -1591f, -1116f), global3.b), Struct_1(global3.a, 7581i, global3.c, arg_0.x, vec3<f32>(arg_1, 1201f, global3.e.x))), !vec3<bool>(global3.c.x, false, global3.c.x), global1.x), 4294967295u, global3.e), reverseBits(select(min(vec4<u32>(arg_0.x, global3.a.x, global3.d, 1u), vec4<u32>(global3.a.x, arg_0.x, arg_0.x, 21974u)), vec4<u32>(0u, 4294967295u, 101663u, global3.d), global1.x)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(global3.e.x, arg_1, 319f, 843f), vec4<f32>(global4.x, global4.x, arg_1, 516f)))))), ~(-42072i)), _wgslsmith_f_op_f32(trunc(1431f)), global3.c.x);
    var var_0 = vec3<u32>(~(_wgslsmith_clamp_u32(1u, min(1u, 35797u), countOneBits(global3.d)) & ~abs(1u)), ~arg_0.x, arg_0.x << (global3.d % 32u));
    let var_1 = Struct_4(Struct_3(Struct_2(Struct_1(_wgslsmith_add_vec2_u32(global3.a, var_0.yz), global3.b & -1i, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.x, 24929u), 6u)], _wgslsmith_mod_u32(arg_0.x, 79540u), vec3<f32>(1324f, global4.x, -669f)), reverseBits(vec4<u32>(19482u, 4294967295u, global3.d, arg_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-972f, global3.e.x, arg_1, arg_1) - vec4<f32>(arg_1, global3.e.x, arg_1, global4.x))), firstLeadingBit(1i)), u_input.a, Struct_1(abs(global3.a >> (vec2<u32>(global3.a.x, 21786u) % vec2<u32>(32u))), global3.b, !(!vec3<bool>(global3.c.x, false, global1.x)), ~1u, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(global3.e - global3.e)))), Struct_2(Struct_1(arg_0.zz, -2147483647i, vec3<bool>(true, true, true), arg_0.x | global3.d, global3.e), ~(~vec4<u32>(5460u, 37814u, 15583u, var_0.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1, arg_1, 1331f, -373f), vec4<f32>(global4.x, global4.x, arg_1, 1368f))), max(-50593i, _wgslsmith_sub_i32(u_input.a, global3.b))), select(vec4<i32>(2147483647i, min(global3.b, global3.b), -4140i, 0i >> (global3.a.x % 32u)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, global3.b, global3.b, 24308i), -vec4<i32>(u_input.a, global3.b, u_input.a, 1i)), any(vec4<bool>(true, global3.c.x, global3.c.x, true)))), firstTrailingBit(vec3<i32>(-11802i, -firstTrailingBit(global3.b), 2147483647i)), vec4<u32>(arg_0.x, ~select(4294967295u, arg_0.x, func_4(vec2<bool>(global1.x, global1.x), Struct_2(Struct_1(arg_0.xy, global3.b, vec3<bool>(global3.c.x, global3.c.x, global3.c.x), 1u, vec3<f32>(642f, arg_1, arg_1)), vec4<u32>(var_0.x, arg_0.x, 25857u, 7030u), vec4<f32>(arg_1, 895f, 1488f, global3.e.x), u_input.a), global3.e.x, global1.x).x), 4294967295u, arg_0.x), !func_4(global1.yz, Struct_2(Struct_1(global3.a, u_input.a, vec3<bool>(false, false, true), var_0.x, global3.e), _wgslsmith_sub_vec4_u32(vec4<u32>(40965u, arg_0.x, 0u, global3.d), vec4<u32>(4294967295u, 0u, 12362u, 1u)), vec4<f32>(927f, global3.e.x, global3.e.x, global4.x), global3.b), global4.x, false).zy, vec4<i32>(-1i, u_input.a, -(u_input.a & ~(-2147483647i)), ~reverseBits(firstLeadingBit(global3.b))));
    var var_2 = global1.x;
    let var_3 = _wgslsmith_mult_u32(4294967295u, _wgslsmith_mult_u32(61724u, (46838u | arg_0.x) ^ 1u)) | 36190u;
    return _wgslsmith_clamp_i32(8329i, max(var_1.e.x ^ 18501i, _wgslsmith_clamp_i32(global3.b, var_1.e.x, -(~u_input.a))), 0i);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(global3.a, 1i, global2[_wgslsmith_index_u32(global3.a.x & ~(11001u << (global3.a.x % 32u)), 6u)], (~4294967295u << (0u % 32u)) ^ ~abs(~global3.a.x), _wgslsmith_f_op_vec3_f32(-global3.e));
    let var_0 = max(_wgslsmith_add_vec2_i32(~abs(vec2<i32>(global3.b, u_input.a)) ^ (vec2<i32>(global3.b, -1i) & _wgslsmith_add_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(global3.b, global3.b))), max(vec2<i32>(func_1(vec3<u32>(1u, 23168u, 5558u), 543f), global3.b), vec2<i32>(2147483647i, countOneBits(2147483647i)))), vec2<i32>(global3.b & countOneBits(~u_input.a), -99993i));
    var var_1 = abs(~(~vec4<u32>(_wgslsmith_add_u32(global3.d, global3.a.x), ~4294967295u, 24298u, firstTrailingBit(global3.d))));
    let var_2 = Struct_1(global3.a, _wgslsmith_mult_i32(-global3.b << (~_wgslsmith_dot_vec2_u32(vec2<u32>(global3.a.x, 9303u), global3.a) % 32u), u_input.a), global3.c, var_1.x, global3.e);
    global1 = !(!func_2(Struct_2(Struct_1(var_2.a, var_2.b, vec3<bool>(global3.c.x, true, global1.x), global3.a.x, vec3<f32>(592f, 1263f, 1096f)), ~vec4<u32>(var_1.x, 0u, var_2.a.x, var_1.x), vec4<f32>(-1000f, 1268f, 907f, 1000f), 1i), var_2));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, var_2.e.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.e.x), -232f))))), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(global3.a.x, var_1.x), 4294967295u), ~(~var_1.zw)), 45520u), _wgslsmith_f_op_vec3_f32(var_2.e + var_2.e));
}

