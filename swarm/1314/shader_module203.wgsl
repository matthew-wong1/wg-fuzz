struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 8>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>) -> vec4<f32> {
    let var_0 = Struct_2(~(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 26096u)) << (~(~vec4<u32>(11018u, u_input.c.x, u_input.c.x, u_input.c.x)) % vec4<u32>(32u)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(991f, -1000f, 269f, -1264f)))), !vec2<bool>(any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 8u)], false)), true)), ~4294967295u & _wgslsmith_div_u32(min(~54320u, u_input.c.x), 0u));
    let var_1 = all(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 8u)], false, true, true));
    global0 = _wgslsmith_f_op_f32(ceil(var_0.b.a.x));
    let var_2 = abs(-u_input.a.x) & ~44708i;
    global1 = array<bool, 8>();
    return _wgslsmith_f_op_vec4_f32(-var_0.b.a);
}

fn func_2() -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_3(max(vec2<i32>(24378i, -2147483647i), vec2<i32>(u_input.b, -3067i))))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(596f, 723f, -996f, 711f), vec4<f32>(-936f, -616f, 573f, -1329f))))))));
    var var_1 = Struct_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, 85731u, 63020u, 244u), select(reverseBits(vec4<u32>(u_input.c.x, 48487u, 7955u, u_input.c.x)), vec4<u32>(u_input.c.x, u_input.c.x, 1u, u_input.c.x), global1[_wgslsmith_index_u32(~u_input.c.x, 8u)]), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 94690u) ^ vec4<u32>(0u, 1u, 1u, u_input.c.x), ~vec4<u32>(63395u, 2871u, u_input.c.x, 70570u))) >> (~(vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x) << (~vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, 41318u) % vec4<u32>(32u))) % vec4<u32>(32u)), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, -588f, -1273f, -850f), var_0, vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 8u)], global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(u_input.c.x, 8u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 590f, var_0.x))), vec4<bool>(!global1[_wgslsmith_index_u32(u_input.c.x, 8u)], any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 8u)], global1[_wgslsmith_index_u32(0u, 8u)], global1[_wgslsmith_index_u32(u_input.c.x, 8u)])), !global1[_wgslsmith_index_u32(u_input.c.x, 8u)], true))), !(!select(vec2<bool>(false, true), vec2<bool>(global1[_wgslsmith_index_u32(0u, 8u)], true), global1[_wgslsmith_index_u32(14221u, 8u)]))), select(u_input.c.x, u_input.c.x, all(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 8u)], true))));
    global0 = _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.b), ~vec2<i32>(countOneBits(0i), 1i)))).x;
    var var_2 = Struct_3(u_input.b, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_1.b.a)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_1.b.a)))), !(!(!vec2<bool>(var_1.b.b.x, var_1.b.b.x)))), var_1.b, -1650f);
    var var_3 = !(!(any(vec3<bool>(var_2.c.b.x, false, true)) && true));
    return _wgslsmith_f_op_vec4_f32(func_3(vec2<i32>(2147483647i, u_input.b)));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> Struct_4 {
    global1 = array<bool, 8>();
    global1 = array<bool, 8>();
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-232f - arg_0.a.x), _wgslsmith_f_op_f32(select(1177f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, -16654i), u_input.a.zy))).x), any(arg_0.b))));
    var var_0 = arg_1;
    let var_1 = -abs(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a.x, u_input.b), u_input.a), _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.b, u_input.a.x, u_input.b)))) ^ abs(-firstLeadingBit(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.b, u_input.a.x, -2147483647i))));
    return Struct_4(arg_0.a.x, Struct_2(abs(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.c.x, arg_1), vec4<u32>(1u, u_input.c.x, 0u, u_input.c.x))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(select(arg_0.a.x, -1469f, global1[_wgslsmith_index_u32(1u, 8u)])), _wgslsmith_div_f32(-985f, 1063f), _wgslsmith_f_op_vec4_f32(func_2()).x), vec2<bool>(!arg_0.b.x, arg_0.b.x)), 89402u), arg_0);
}

fn func_1() -> Struct_4 {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -125f);
    global1 = array<bool, 8>();
    let var_0 = all(vec3<bool>(select(true, global1[_wgslsmith_index_u32(abs(99952u), 8u)] && (u_input.c.x <= u_input.c.x), true), global1[_wgslsmith_index_u32(u_input.c.x, 8u)], false));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2086f))));
    let var_1 = ~1i;
    return func_4(Struct_1(_wgslsmith_f_op_vec4_f32(func_2()), !select(!vec2<bool>(var_0, var_0), vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 8u)], true), true || global1[_wgslsmith_index_u32(u_input.c.x, 8u)])), _wgslsmith_div_u32(u_input.c.x, 0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_3(abs(_wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_mod_i32(43500i, 29682i), -u_input.a.x), _wgslsmith_mod_i32(~u_input.a.x, 0i))), Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.b.b.a), var_0.b.b.b), func_4(func_4(var_0.b.b, select(firstLeadingBit(u_input.c.x), 4294967295u, true)).c, 0u).b.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.a.x, _wgslsmith_f_op_f32(var_0.c.a.x - var_0.c.a.x))))));
    let var_2 = var_1;
    var var_3 = u_input.c.x;
    var var_4 = var_0.c.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_2.c.a.wyw), var_0.b.a, ~vec3<u32>(~_wgslsmith_add_u32(28401u, 22838u), ~(var_0.b.c ^ 1u), ~abs(var_0.b.a.x)));
}

