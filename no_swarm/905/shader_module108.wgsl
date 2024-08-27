struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 15>;

var<private> global1: array<Struct_1, 16>;

var<private> global2: array<f32, 25> = array<f32, 25>(1044f, 1461f, -1995f, -370f, 1123f, 2085f, 1160f, -1052f, 2735f, 533f, -1013f, 738f, -840f, 884f, -1000f, 980f, 336f, -212f, 1000f, 903f, -350f, 2274f, 1597f, -498f, -1640f);

var<private> global3: u32;

var<private> global4: array<i32, 29> = array<i32, 29>(521i, 2147483647i, 1i, -1i, -13568i, 1i, 1i, -11348i, 1i, -25624i, -43320i, 0i, 0i, 0i, -585i, 1i, -21401i, -34045i, 36056i, i32(-2147483648), 2147483647i, -25070i, -1i, 2147483647i, i32(-2147483648), 15422i, i32(-2147483648), 84489i, -23638i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_1(arg_1.a, arg_1.b);
    var var_1 = Struct_2(u_input.a, arg_1, Struct_1(var_0.a, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_1.b, u_input.a.x, var_0.b)), firstTrailingBit(vec3<u32>(u_input.a.x, 28370u, arg_1.b) & u_input.a))));
    global4 = array<i32, 29>();
    var var_2 = select(var_0.b, 1u, false);
    let var_3 = Struct_2(u_input.a, global1[_wgslsmith_index_u32(7493u, 16u)], Struct_1(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_1.c.b & 80729u, 25u)] + _wgslsmith_f_op_f32(-var_1.c.a)), _wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, 54206u), u_input.a.yz, select(vec2<bool>(true, false), vec2<bool>(true, false), true)), ~countOneBits(vec2<u32>(27758u, arg_1.b)))));
    return 4294967295u;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 25u)]))), global2[_wgslsmith_index_u32(~(u_input.a.x & func_3(global4[_wgslsmith_index_u32(u_input.a.x, 29u)], global1[_wgslsmith_index_u32(111102u, 16u)])), 25u)]), global1[_wgslsmith_index_u32(u_input.a.x, 16u)], global1[_wgslsmith_index_u32(0u & u_input.a.x, 16u)], global1[_wgslsmith_index_u32(~(~((u_input.a.x & 0u) & 28811u)), 16u)]);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(26870u, 25u)] - -817f)) * var_0.d.a);
    global0 = array<vec4<u32>, 15>();
    global0 = array<vec4<u32>, 15>();
    var var_2 = reverseBits(vec4<i32>(firstTrailingBit(-2147483647i), global4[_wgslsmith_index_u32(32650u, 29u)], ~(-5058i), _wgslsmith_mult_i32(~firstTrailingBit(-41627i), global4[_wgslsmith_index_u32(0u, 29u)])));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b.a))), ~4294967295u);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_2 {
    var var_0 = global4[_wgslsmith_index_u32(~firstLeadingBit(u_input.a.x), 29u)];
    let var_1 = Struct_2(u_input.a, func_2(), global1[_wgslsmith_index_u32(0u, 16u)]);
    global4 = array<i32, 29>();
    var var_2 = (arg_0.x || true) && !(arg_0.x || true);
    let var_3 = arg_0;
    return var_1;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>) -> f32 {
    global1 = array<Struct_1, 16>();
    let var_0 = select(select(!select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), false), vec4<bool>(false, true, true, false)), vec4<bool>(all(vec3<bool>(true, false, true)), false & (arg_0.b.a >= 1607f), true, !all(vec2<bool>(false, true))), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), false), vec4<bool>(false, false, false, true))), !vec4<bool>(true, arg_0.b.a < arg_0.b.a, global4[_wgslsmith_index_u32(arg_0.c.b, 29u)] >= global4[_wgslsmith_index_u32(u_input.a.x, 29u)], true), select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true))), vec4<bool>(true, false, any(vec2<bool>(true, true)), true), true)), -(firstLeadingBit(-893i) << (_wgslsmith_mod_u32(arg_0.a.x, 10086u) % 32u)) < global4[_wgslsmith_index_u32(11899u, 29u)]);
    let var_1 = !(!select(select(vec2<bool>(true, false), !var_0.wy, true), select(select(var_0.xz, var_0.yw, var_0.yz), select(var_0.zx, var_0.wx, vec2<bool>(true, var_0.x)), var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -979f) > _wgslsmith_f_op_f32(-arg_0.c.a)));
    global0 = array<vec4<u32>, 15>();
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2320f)) - global2[_wgslsmith_index_u32(46231u, 25u)]), -1000f) + vec2<f32>(-180f, _wgslsmith_f_op_f32(min(-1044f, _wgslsmith_f_op_f32(select(580f, -998f, false)))))), Struct_1(462f, ~(~4294967295u)), Struct_1(global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(func_1(var_1, Struct_1(global2[_wgslsmith_index_u32(36106u, 25u)], arg_0.b.b), 1925f, arg_0.c).c.b, _wgslsmith_dot_vec2_u32(u_input.a.xx, vec2<u32>(u_input.a.x, arg_0.c.b))), 25u)], arg_0.a.x), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(350f + global2[_wgslsmith_index_u32(arg_0.a.x, 25u)]))), global2[_wgslsmith_index_u32(43164u, 25u)]), _wgslsmith_add_u32(~(~26956u), 15878u)));
    return global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a, select(max(abs(arg_0.a), arg_0.a >> (vec3<u32>(87152u, 1u, 0u) % vec3<u32>(32u))) << (_wgslsmith_add_vec3_u32(select(vec3<u32>(4294967295u, arg_0.a.x, 0u), vec3<u32>(1u, 1u, 9525u), var_1.x), ~vec3<u32>(1u, arg_0.c.b, 4294967295u)) % vec3<u32>(32u)), countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 0u, var_2.d.b), u_input.a)) & firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(var_2.b.b, var_2.b.b, u_input.a.x), u_input.a)), vec3<bool>(any(vec3<bool>(false, false, false)), var_0.x, var_0.x))), 25u)];
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    global2 = array<f32, 25>();
    global1 = array<Struct_1, 16>();
    global1 = array<Struct_1, 16>();
    global1 = array<Struct_1, 16>();
    return func_1(vec2<bool>(true, true), func_2(), _wgslsmith_f_op_f32(f32(-1f) * -1293f), Struct_1(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(4294967295u, 25u)])), u_input.a.x));
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: Struct_3, arg_3: vec3<f32>) -> Struct_3 {
    let var_0 = arg_0.b;
    let var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.b.a, arg_2.d.a, arg_0.c.a, arg_3.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, arg_2.c.a, arg_2.c.a, 708f) * vec4<f32>(var_1, arg_3.x, 2016f, arg_3.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1, arg_0.b.a, var_1, arg_0.b.a)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(586f, var_1, arg_0.c.a, global2[_wgslsmith_index_u32(var_0.b, 25u)]), vec4<f32>(-1000f, global2[_wgslsmith_index_u32(arg_2.c.b, 25u)], -437f, arg_0.c.a), vec4<bool>(true, false, true, false)))))), vec4<f32>(_wgslsmith_f_op_f32(max(var_1, global2[_wgslsmith_index_u32(var_0.b, 25u)])), -287f, _wgslsmith_f_op_f32(f32(-1f) * -1465f), _wgslsmith_f_op_f32(-func_5(Struct_1(arg_1, 1u)).c.a)), all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(true, true))), vec2<bool>(any(vec2<bool>(true, true)), true), vec2<bool>(all(vec4<bool>(true, true, false, false)), true)))));
    global0 = array<vec4<u32>, 15>();
    global1 = array<Struct_1, 16>();
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 25>();
    global2 = array<f32, 25>();
    var var_0 = min(vec4<i32>(-3144i, global4[_wgslsmith_index_u32(56482u, 29u)], global4[_wgslsmith_index_u32(1u, 29u)], abs(~(~global4[_wgslsmith_index_u32(31492u, 29u)]))), abs(vec4<i32>(-1i) * -(~vec4<i32>(global4[_wgslsmith_index_u32(u_input.a.x, 29u)], global4[_wgslsmith_index_u32(7341u, 29u)], global4[_wgslsmith_index_u32(u_input.a.x, 29u)], 2147483647i))));
    var var_1 = !all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)))) || ((~u_input.a.x >= _wgslsmith_mod_u32(u_input.a.x, ~u_input.a.x)) || !all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false))));
    let var_2 = func_6(func_5(Struct_1(_wgslsmith_f_op_f32(func_4(func_1(vec2<bool>(false, true), global1[_wgslsmith_index_u32(u_input.a.x, 16u)], global2[_wgslsmith_index_u32(0u, 25u)], global1[_wgslsmith_index_u32(4294967295u, 16u)]), var_0.zx)), u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(func_5(global1[_wgslsmith_index_u32(29269u, 16u)]), ~vec2<i32>(24066i, 2147483647i))), _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(4294967295u, 25u)], -1942f))))), Struct_3(vec2<f32>(global2[_wgslsmith_index_u32(func_3(-67031i, func_2()), 25u)], 264f), Struct_1(-1000f, ~u_input.a.x), func_2(), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))), ~_wgslsmith_dot_vec3_u32(u_input.a, u_input.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-128f, 1060f, -2080f)))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2317f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~1845u, 25u)] - _wgslsmith_f_op_f32(f32(-1f) * -652f)), -146f)));
    global2 = array<f32, 25>();
    let var_3 = vec4<u32>(1u, countOneBits(1u), ~u_input.a.x, ~u_input.a.x ^ ~_wgslsmith_mult_u32(29885u, u_input.a.x)) >> (~(~vec4<u32>(u_input.a.x, 73681u, var_2.b.b, 0u) & _wgslsmith_div_vec4_u32(vec4<u32>(53497u, var_2.c.b, 81583u, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(var_2.c.b, 1u, 0u, var_2.d.b), global0[_wgslsmith_index_u32(u_input.a.x, 15u)]))) % vec4<u32>(32u));
    var var_4 = vec2<u32>(~var_2.d.b, var_2.c.b);
    var var_5 = !all(select(!select(vec2<bool>(true, false), vec2<bool>(false, true), false), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), func_1(vec2<bool>(true, true), Struct_1(391f, var_3.x), var_2.d.a, Struct_1(-194f, u_input.a.x)).a.x < _wgslsmith_sub_u32(var_4.x, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, 1083f, var_0.x << (var_3.x % 32u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(247f, -1000f, var_2.c.a, -122f))))), vec4<f32>(func_2().a, -1391f, 517f, global2[_wgslsmith_index_u32(31466u, 25u)]), true)) + vec4<f32>(1750f, -868f, _wgslsmith_f_op_f32(var_2.c.a - 295f), 2380f)));
}

