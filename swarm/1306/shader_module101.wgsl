struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: i32,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: Struct_1,
    d: vec4<i32>,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2>;

var<private> global1: i32;

var<private> global2: Struct_5;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = -5668i;
    let var_1 = arg_0;
    global2 = Struct_5(global2.a);
    var var_2 = -global2.a.e;
    var var_3 = global2.a;
    return !vec2<bool>(!all(global2.a.c.e), all(vec2<bool>(true, true)));
}

fn func_2(arg_0: u32) -> Struct_4 {
    let var_0 = firstTrailingBit(_wgslsmith_sub_i32(28406i, _wgslsmith_dot_vec4_i32(global2.a.d, global2.a.d | (vec4<i32>(881i, -26730i, global0[_wgslsmith_index_u32(global2.a.a, 2u)], -2147483647i) >> (vec4<u32>(42528u, 19041u, 76701u, global2.a.a) % vec4<u32>(32u))))));
    global2 = Struct_5(global2.a);
    global0 = array<i32, 2>();
    var var_1 = all(!func_3(1u, global2.a.c.a, Struct_1(vec2<f32>(-193f, global2.a.c.a.x), true, 1i, all(global2.a.c.e.wy), global2.a.c.e)));
    var var_2 = global2.a.b;
    return Struct_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-377f, var_2.x))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -379f) * global2.a.b.x), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(-1462f)), -1762f), global2.a.c.b, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-39164i, global0[_wgslsmith_index_u32(global2.a.a, 2u)]), global2.a.d.wy)), true, select(select(global2.a.c.e, vec4<bool>(global2.a.c.d, false, global2.a.c.d, false), vec4<bool>(global2.a.c.d, false, global2.a.c.e.x, false)), global2.a.c.e, !vec4<bool>(global2.a.c.e.x, false, global2.a.c.b, false))), global2.a.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-433f, global2.a.b.x, var_2.x))), _wgslsmith_f_op_vec3_f32(var_2.zwy * var_2.xwx)) - global2.a.b.xzz), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(global2.a.c.a)), global2.a.c.d, select(~(-1i), global2.a.c.c, true), !global2.a.c.d, vec4<bool>(global2.a.c.c > 14892i, !global2.a.c.b, true, global2.a.c.e.x))), firstLeadingBit(4294967295u), Struct_2(global2.a.c.b, Struct_1(_wgslsmith_f_op_vec2_f32(var_2.ww - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, -153f))), !all(global2.a.c.e.xzz), _wgslsmith_dot_vec3_i32(~u_input.b, abs(vec3<i32>(2147483647i, u_input.a.x, var_0))), !any(vec2<bool>(global2.a.c.b, global2.a.c.d)), global2.a.c.e), global2.a.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.a.b.x, global2.a.b.x, global2.a.c.a.x), var_2.xwz, global2.a.c.b)))), global2.a.c), Struct_2(!(!(var_0 > global0[_wgslsmith_index_u32(global2.a.a, 2u)])), global2.a.c, Struct_1(_wgslsmith_f_op_vec2_f32(-var_2.zx), false, global2.a.c.c, !(u_input.d.x != 4294967295u), select(!global2.a.c.e, global2.a.c.e, all(global2.a.c.e.zx))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -108f), -676f), 1f, 934f), global2.a.c));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: bool) -> Struct_3 {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.d.e.c, -u_input.a.x, ~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.b.x), vec2<i32>(u_input.a.x, 12517i))), ~(~global2.a.d.xxw)) | global0[_wgslsmith_index_u32(reverseBits(~countOneBits(global2.a.a)), 2u)];
    let var_1 = func_2(global2.a.a).d.e.a;
    var var_2 = reverseBits(-49763i);
    var_2 = _wgslsmith_add_i32(u_input.a.x, 0i);
    var var_3 = ~(~countOneBits(vec4<u32>(func_2(arg_1.b).b, arg_1.b ^ 0u, _wgslsmith_add_u32(global2.a.a, 4294967295u), _wgslsmith_sub_u32(u_input.d.x, 15686u))));
    return Struct_3(~_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 24292u), var_3.yw), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global2.a.b.x, _wgslsmith_div_f32(global2.a.b.x, 403f)), _wgslsmith_f_op_f32(arg_0.x + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -2179f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.b.x * var_1.x))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.a.c.a.x, global2.a.c.a.x, _wgslsmith_f_op_f32(-1000f - arg_0.x), _wgslsmith_f_op_f32(exp2(global2.a.c.a.x)))))), func_2(abs(global2.a.a) << (61332u % 32u)).d.b, global2.a.d, global0[_wgslsmith_index_u32(func_2(~54799u).b, 2u)]);
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_5(func_4(vec4<f32>(global2.a.b.x, global2.a.b.x, global2.a.b.x, 404f), func_2(countOneBits(global2.a.a | global2.a.a)), false == global2.a.c.e.x));
    global1 = _wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i >> (global2.a.a % 32u), _wgslsmith_dot_vec3_i32(var_0.a.d.xyx, vec3<i32>(global2.a.e, 27114i, 23569i)), 1i, -6241i), ~var_0.a.d) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(2147483647i, global2.a.e), reverseBits(global0[_wgslsmith_index_u32(19936u, 2u)]), -u_input.b.x, ~global0[_wgslsmith_index_u32(4294967295u, 2u)]), min(var_0.a.d, var_0.a.d)), -1i);
    var var_1 = abs(~_wgslsmith_add_u32(1u | (var_0.a.a << (1u % 32u)), _wgslsmith_mult_u32(~4294967295u, global2.a.a)));
    var var_2 = global2.a;
    var var_3 = u_input.c.zz ^ firstLeadingBit(_wgslsmith_add_vec2_u32(u_input.d, ~vec2<u32>(global2.a.a, 0u)));
    return Struct_3(~func_2(~var_2.a << (~var_3.x % 32u)).b, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-func_4(var_2.b, Struct_4(Struct_2(var_2.c.e.x, Struct_1(vec2<f32>(var_2.c.a.x, 515f), var_2.c.e.x, -3964i, var_2.c.d, vec4<bool>(var_2.c.e.x, var_0.a.c.e.x, false, var_2.c.d)), Struct_1(var_2.c.a, false, -21951i, global2.a.c.e.x, vec4<bool>(false, false, true, var_2.c.d)), vec3<f32>(global2.a.c.a.x, global2.a.b.x, -1000f), Struct_1(vec2<f32>(-177f, 1063f), global2.a.c.b, 2147483647i, false, var_0.a.c.e)), 0u, Struct_2(global2.a.c.e.x, Struct_1(vec2<f32>(-125f, -490f), global2.a.c.b, 9108i, var_0.a.c.e.x, var_2.c.e), Struct_1(global2.a.b.ww, global2.a.c.e.x, u_input.b.x, false, var_2.c.e), global2.a.b.yyw, Struct_1(vec2<f32>(var_0.a.b.x, -269f), var_2.c.e.x, -62970i, var_0.a.c.e.x, vec4<bool>(false, var_0.a.c.b, var_2.c.b, false))), Struct_2(global2.a.c.b, var_2.c, global2.a.c, vec3<f32>(var_0.a.c.a.x, -373f, var_0.a.b.x), Struct_1(var_0.a.c.a, true, var_0.a.d.x, var_2.c.b, vec4<bool>(global2.a.c.b, var_0.a.c.b, false, var_0.a.c.b)))), var_0.a.c.e.x).b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.a.x, global2.a.c.a.x, -1000f, global2.a.b.x)) + var_2.b), !vec4<bool>(var_0.a.c.d, var_2.c.e.x, var_2.c.b, false))), var_2.b)), func_4(_wgslsmith_f_op_vec4_f32(-var_2.b), func_2(4294967295u), !func_2(4294967295u).c.e.e.x).c, ~min(vec4<i32>(_wgslsmith_div_i32(43075i, 1i), u_input.a.x, _wgslsmith_mod_i32(0i, 1i), -2147483647i), vec4<i32>(-var_0.a.d.x, ~13888i, global0[_wgslsmith_index_u32(global2.a.a >> (var_2.a % 32u), 2u)], -1i)), var_2.c.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global2.a.c.e;
    var var_1 = func_1();
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-922f + global2.a.c.a.x)))) - _wgslsmith_f_op_f32(floor(var_1.b.x)))));
    let var_3 = Struct_3(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(abs(1u), var_1.a, firstLeadingBit(~var_1.a)), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.d.x, 0u, global2.a.a), vec3<u32>(42252u, var_1.a, 7931u)), select(u_input.c, ~u_input.c, false))), global2.a.b, func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.b.x, global2.a.b.x, var_1.c.a.x, var_1.b.x)))))), func_2(u_input.c.x >> (abs(global2.a.a) % 32u)), _wgslsmith_f_op_f32(trunc(-730f)) == 969f).c, vec4<i32>(~reverseBits(global0[_wgslsmith_index_u32(10329u, 2u)]), 0i, -1i, _wgslsmith_dot_vec3_i32(u_input.b, var_1.d.zyz)), abs(select(global0[_wgslsmith_index_u32(19880u, 2u)], 21545i, global2.a.c.d)));
    var var_4 = func_2(firstTrailingBit(49478u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_3.a, u_input.c.x), ~(-7208i), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a, global2.a.a, 58312u), u_input.c), global2.a.a, ~var_1.a), min(~vec4<u32>(var_3.a, 26641u, 16411u, 4294967295u), vec4<u32>(1u, global2.a.a, var_4.b, 4294967295u)), vec4<u32>(0u, 2687u, 0u, 1u) | vec4<u32>(u_input.c.x, var_1.a, 13974u, u_input.d.x)) ^ max(_wgslsmith_div_vec4_u32(select(vec4<u32>(var_1.a, 34530u, global2.a.a, 71706u), vec4<u32>(20396u, 21650u, 126549u, global2.a.a), var_3.c.b), ~vec4<u32>(311u, 14624u, 4294967295u, 56362u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, var_1.a, 0u, var_4.b), vec4<u32>(12254u, 87821u, 0u, 94522u)) | reverseBits(vec4<u32>(6124u, global2.a.a, 29084u, 4294967295u))), var_1.c.c, 2147483647i);
}

