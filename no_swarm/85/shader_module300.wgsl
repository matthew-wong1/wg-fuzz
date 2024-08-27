struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(false, 26881u), Struct_2(true, 38108u), Struct_2(false, 49870u), Struct_2(false, 17824u), Struct_2(false, 0u), Struct_2(false, 36964u), Struct_2(true, 0u), Struct_2(false, 4294967295u));

var<private> global1: array<bool, 29>;

var<private> global2: vec3<i32> = vec3<i32>(-22971i, 45585i, -50413i);

var<private> global3: array<vec4<i32>, 12>;

var<private> global4: Struct_3;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>) -> vec3<u32> {
    let var_0 = ~(-(select(vec4<i32>(global2.x, -2147483647i, 2147483647i, 1i), vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, -2147483647i), global4.a) ^ vec4<i32>(2147483647i, -2147483647i, -2147483647i, u_input.a.x))) >> (_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(59425u, 4294967295u, u_input.b.x, arg_1.x) >> (vec4<u32>(global4.c.b, 27038u, 1u, 34937u) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(min(vec4<u32>(arg_1.x, 1u, 1u, 6163u), vec4<u32>(global4.c.b, 26554u, arg_1.x, global4.c.b)), _wgslsmith_sub_vec4_u32(vec4<u32>(65272u, global4.c.b, 0u, 1u), vec4<u32>(0u, arg_0, 61050u, arg_0)))), countOneBits(vec4<u32>(44474u, _wgslsmith_div_u32(0u, 19095u), _wgslsmith_dot_vec4_u32(vec4<u32>(8910u, 28315u, 0u, u_input.d), vec4<u32>(0u, 0u, 7063u, 0u)), arg_0))) % vec4<u32>(32u));
    global3 = array<vec4<i32>, 12>();
    let var_1 = u_input.b;
    var var_2 = var_1.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1342f, global4.b, global4.b, global4.b) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(171f, global4.b, global4.b, 1107f), vec4<f32>(-1576f, global4.b, global4.b, 1033f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.b, -1565f, -2907f, -450f) + vec4<f32>(785f, -844f, global4.b, global4.b))))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.b, global4.b, global4.b, 1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.b, global4.b, global4.b, global4.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.b, 302f, global4.b, -1217f) - vec4<f32>(global4.b, global4.b, 593f, global4.b)) - vec4<f32>(global4.b, global4.b, 1458f, -597f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.b) * _wgslsmith_f_op_f32(ceil(285f))), 2011f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(global4.b, global4.b, true)))), -1826f))));
    return ~_wgslsmith_mod_vec3_u32(vec3<u32>(firstTrailingBit(abs(arg_1.x)), ~4294967295u, firstTrailingBit(arg_1.x)), vec3<u32>(min(_wgslsmith_mod_u32(arg_1.x, 4294967295u), select(global4.c.b, 15806u, true)), 14936u ^ _wgslsmith_add_u32(arg_0, 4294967295u), _wgslsmith_div_u32(1u, u_input.b.x)));
}

fn func_2(arg_0: vec3<f32>) -> vec3<bool> {
    var var_0 = _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(~firstLeadingBit(vec3<u32>(45140u, u_input.b.x, 4294967295u)), vec3<u32>(0u, global4.c.b, u_input.b.x)) & firstTrailingBit(func_3(u_input.b.x, _wgslsmith_mult_vec3_u32(vec3<u32>(23900u, 1u, 37818u), vec3<u32>(2492u, u_input.d, global4.c.b)))), ~(~(_wgslsmith_mod_vec3_u32(vec3<u32>(30460u, 84032u, 47279u), vec3<u32>(4294967295u, u_input.d, 1u)) ^ vec3<u32>(13086u, global4.c.b, 1u))));
    var var_1 = Struct_3(global4.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.b - arg_0.x)), global4.c);
    var var_2 = global0[_wgslsmith_index_u32(28487u, 8u)];
    var_1 = Struct_3(select(select(vec4<bool>(global1[_wgslsmith_index_u32(2322u, 29u)], true | var_2.a, true, true), select(vec4<bool>(global1[_wgslsmith_index_u32(global4.c.b, 29u)], true, var_2.a, false), !global4.a, true), global4.a), global4.a, global4.a), 216f, var_1.c);
    var var_3 = 4294967295u;
    return global4.a.xxw;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: i32, arg_3: vec3<i32>) -> i32 {
    global1 = array<bool, 29>();
    let var_0 = -abs(vec2<i32>(u_input.a.x, global2.x) & _wgslsmith_add_vec2_i32(global2.xx, vec2<i32>(global2.x, arg_3.x)));
    var var_1 = Struct_1(select(select(global4.c.b, 48869u, any(vec3<bool>(true, true, true))), max(u_input.c, global4.c.b << (_wgslsmith_clamp_u32(0u, u_input.b.x, 50716u) % 32u)), (92798u >> (firstTrailingBit(u_input.c) % 32u)) > ~global4.c.b), 48576u);
    let var_2 = Struct_3(select(select(vec4<bool>(!arg_1.a.x, !global1[_wgslsmith_index_u32(1157u, 29u)], global4.a.x | global1[_wgslsmith_index_u32(arg_1.c.b, 29u)], true), select(global4.a, vec4<bool>(global4.a.x, false, true, true), any(vec3<bool>(arg_0.x, true, false))), arg_1.a.x), arg_1.a, true), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-503f + 456f))))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_1.c.b, _wgslsmith_mult_u32(u_input.c, arg_1.c.b)), 8u)]);
    let var_3 = select(_wgslsmith_div_f32(433f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1246f)), _wgslsmith_div_f32(arg_1.b, -1358f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1569f + _wgslsmith_f_op_f32(sign(var_2.b))) * 1243f), global4.c.a, any(vec2<bool>(true, global1[_wgslsmith_index_u32(select(~var_1.a, 0u, true), 29u)])));
    return 10819i | var_0.x;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_1 {
    global2 = countOneBits(-_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, global2.x, global2.x), vec3<i32>(-2147483647i, 29819i, u_input.a.x)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, 1i, global2.x), vec3<i32>(-20032i, 2147483647i, 13087i)))) | select(vec3<i32>(-1i, global2.x, func_4(func_2(arg_3.xwx), Struct_3(global4.a, arg_3.x, global0[_wgslsmith_index_u32(arg_2.a, 8u)]), -22467i, abs(vec3<i32>(global2.x, global2.x, u_input.a.x)))), _wgslsmith_add_vec3_i32(select(vec3<i32>(u_input.a.x, -2147483647i, 49029i), vec3<i32>(u_input.a.x, 45446i, -22175i), true) & _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, -1i, global2.x), vec3<i32>(u_input.a.x, -1i, -10391i)), vec3<i32>(-1i) * -vec3<i32>(-1i, 46830i, 0i)), !(!vec3<bool>(arg_0, false, true)));
    let var_0 = Struct_1(~firstLeadingBit(0u), 0u);
    var var_1 = vec4<u32>(func_3(_wgslsmith_sub_u32(~15012u, 46506u), ~vec3<u32>(var_0.a, var_0.b, u_input.b.x)).x, 1u >> (max(firstLeadingBit(arg_1.a) | global4.c.b, 0u) % 32u), 0u, _wgslsmith_dot_vec2_u32(reverseBits(~u_input.b), u_input.b));
    var var_2 = global0[_wgslsmith_index_u32(4294967295u, 8u)];
    var_1 = abs(vec4<u32>(23108u, var_0.b, var_1.x, 15703u));
    return Struct_1(firstLeadingBit(reverseBits(_wgslsmith_sub_u32(1u, _wgslsmith_mod_u32(global4.c.b, var_0.b)))), var_1.x);
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: Struct_1) -> vec3<u32> {
    global0 = array<Struct_2, 8>();
    global0 = array<Struct_2, 8>();
    let var_0 = Struct_3(vec4<bool>(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.b, global4.b, arg_1.b) - vec3<f32>(-807f, arg_1.b, 1127f))).x & true, !any(arg_1.a.zy), arg_1.a.x, false), _wgslsmith_f_op_f32(f32(-1f) * -1027f), Struct_2(!global4.a.x, arg_2.a));
    var var_1 = ~4294967295u;
    let var_2 = u_input.b;
    return vec3<u32>(4294967295u, arg_0, func_1(select(false, false, true), arg_2, arg_2, vec4<f32>(_wgslsmith_f_op_f32(1499f - 1529f), _wgslsmith_f_op_f32(-981f * global4.b), 1378f, _wgslsmith_f_op_f32(max(-720f, arg_1.b)))).b) & (vec3<u32>(~var_2.x, 0u, 4294967295u) ^ vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_1.c.b, 4294967295u, 1u), vec4<u32>(0u, 1u, 4294967295u, 38914u)), _wgslsmith_mult_u32(4294967295u, arg_2.a ^ 7279u), _wgslsmith_div_u32(var_0.c.b, _wgslsmith_sub_u32(469u, 1u))));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_3) -> Struct_3 {
    return Struct_3(!(!(!global4.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(638f + -806f)), global4.c);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<i32>, 12>();
    let var_0 = vec3<i32>(~2872i, _wgslsmith_clamp_i32(u_input.a.x, 0i, 26232i) >> (firstTrailingBit(global4.c.b) % 32u), _wgslsmith_add_i32(max(_wgslsmith_add_i32(~u_input.a.x, u_input.a.x), -(global2.x | global2.x)), u_input.a.x));
    global0 = array<Struct_2, 8>();
    var var_1 = Struct_2(false, ~(~countOneBits(u_input.b.x)));
    let var_2 = _wgslsmith_dot_vec3_i32(-vec3<i32>(17667i ^ ~global2.x, reverseBits(select(u_input.a.x, -23044i, var_1.a)), -37412i), ~var_0);
    var var_3 = 44887u;
    global4 = func_6(Struct_1(_wgslsmith_dot_vec3_u32(func_5(~0u, Struct_3(global4.a, global4.b, Struct_2(global4.c.a, var_1.b)), func_1(true, Struct_1(66421u, 0u), Struct_1(39428u, 0u), vec4<f32>(1000f, global4.b, global4.b, -123f))), reverseBits(~vec3<u32>(u_input.b.x, 69065u, global4.c.b))), ~_wgslsmith_add_u32(_wgslsmith_mult_u32(var_1.b, global4.c.b), abs(1u))), vec2<f32>(_wgslsmith_f_op_f32(sign(640f)), global4.b), Struct_3(!(!vec4<bool>(global1[_wgslsmith_index_u32(global4.c.b, 29u)], global1[_wgslsmith_index_u32(u_input.d, 29u)], global1[_wgslsmith_index_u32(20012u, 29u)], global4.c.a)), _wgslsmith_div_f32(global4.b, global4.b), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(36651u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, 0u, 4294967295u, 0u), vec4<u32>(67809u, 0u, u_input.d, var_1.b)), 0u | global4.c.b)), 8u)]));
    let var_4 = Struct_3(!(!(!(!vec4<bool>(false, false, global1[_wgslsmith_index_u32(global4.c.b, 29u)], global4.c.a)))), global4.b, func_6(func_1(false, Struct_1(5106u, 4294967295u), Struct_1(~4294967295u, ~0u), vec4<f32>(global4.b, 1000f, _wgslsmith_f_op_f32(global4.b * 571f), global4.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.b, global4.b) * vec2<f32>(-303f, 1355f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global4.b, -1000f) * vec2<f32>(global4.b, -1973f)))) + vec2<f32>(_wgslsmith_f_op_f32(global4.b * global4.b), _wgslsmith_f_op_f32(-856f - global4.b))), Struct_3(global4.a, _wgslsmith_f_op_f32(abs(global4.b)), func_6(func_1(false, Struct_1(global4.c.b, 2551u), Struct_1(global4.c.b, u_input.c), vec4<f32>(global4.b, global4.b, -1700f, global4.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.b, -855f)), func_6(Struct_1(62474u, 0u), vec2<f32>(global4.b, -2028f), Struct_3(global4.a, global4.b, Struct_2(true, 1u)))).c)).c);
    let x = u_input.a;
    s_output = StorageBuffer(global2.x);
}

