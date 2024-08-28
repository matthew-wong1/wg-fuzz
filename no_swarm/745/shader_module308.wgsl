struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: Struct_2,
    d: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: f32,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<f32>,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4>;

var<private> global1: array<vec4<bool>, 22>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec2<f32> {
    global1 = array<vec4<bool>, 22>();
    global0 = array<bool, 4>();
    global1 = array<vec4<bool>, 22>();
    var var_0 = 34613u;
    let var_1 = u_input.a.x;
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(899f)) * _wgslsmith_f_op_f32(f32(-1f) * -420f)), 2014f) - vec2<f32>(_wgslsmith_f_op_f32(round(-1000f)), 356f))));
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(463f - -1000f), 1093f) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-695f, -1583f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-543f, 1755f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-513f, 311f) * vec2<f32>(1000f, -317f)), vec2<bool>(false, true)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(282f, -313f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-460f, 2082f) * vec2<f32>(295f, -1502f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(754f, 1995f)))))), vec2<bool>(-15239i < (_wgslsmith_mod_i32(-2147483647i, u_input.c.x) & -u_input.c.x), true)));
    var var_1 = Struct_5(Struct_4(_wgslsmith_clamp_u32(_wgslsmith_div_u32(reverseBits(u_input.b.x), reverseBits(u_input.b.x)), abs(u_input.b.x), _wgslsmith_mult_u32(firstTrailingBit(u_input.b.x), ~4294967295u)), abs(~u_input.b), 1u, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_0.x))))), Struct_1(-255f, any(global1[_wgslsmith_index_u32(~u_input.b.x, 22u)]), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], true, true, global0[_wgslsmith_index_u32(4294967295u, 4u)]), true)), _wgslsmith_f_op_vec2_f32(-var_0), Struct_3(!(!(!vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 4u)], false))), _wgslsmith_mod_vec3_u32(select(~u_input.b, vec3<u32>(49284u, u_input.b.x, u_input.b.x), -666f < var_0.x), vec3<u32>(u_input.b.x, u_input.b.x, ~1u)), Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -440f), true, !vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], global0[_wgslsmith_index_u32(u_input.b.x, 4u)], false, false), true), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, u_input.a.x, -1i), firstTrailingBit(vec4<i32>(u_input.a.x, u_input.c.x, u_input.a.x, -46152i))), u_input.a.x, select(u_input.a.x, 0i, !global0[_wgslsmith_index_u32(u_input.b.x, 4u)])), vec3<bool>(all(select(global1[_wgslsmith_index_u32(64536u, 22u)], vec4<bool>(false, global0[_wgslsmith_index_u32(20734u, 4u)], true, true), global0[_wgslsmith_index_u32(4294967295u, 4u)])), !global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, 61483u), 4u)], false)), Struct_3(select(!select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], global0[_wgslsmith_index_u32(31866u, 4u)], global0[_wgslsmith_index_u32(u_input.b.x, 4u)]), vec3<bool>(global0[_wgslsmith_index_u32(12433u, 4u)], global0[_wgslsmith_index_u32(u_input.b.x, 4u)], global0[_wgslsmith_index_u32(48953u, 4u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], true, global0[_wgslsmith_index_u32(43751u, 4u)])), select(!vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.b.x, 4u)]), select(vec3<bool>(true, true, true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], true, false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], false, global0[_wgslsmith_index_u32(u_input.b.x, 4u)])), true), vec3<bool>(!global0[_wgslsmith_index_u32(u_input.b.x, 4u)], 0u >= u_input.b.x, true)), u_input.b, Struct_2(Struct_1(_wgslsmith_f_op_f32(var_0.x * var_0.x), false, !global1[_wgslsmith_index_u32(48900u, 22u)], true), vec4<i32>(firstTrailingBit(-2325i), u_input.c.x, -u_input.c.x, ~u_input.a.x), -54075i, u_input.c.x), vec3<bool>(u_input.b.x >= abs(u_input.b.x), !(true | global0[_wgslsmith_index_u32(u_input.b.x, 4u)]), true)));
    let var_2 = Struct_5(var_1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0 - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.x, var_0.x))))), Struct_3(vec3<bool>(any(var_1.a.e.c.wz), var_1.a.e.b, all(select(vec4<bool>(false, true, var_1.a.e.b, true), vec4<bool>(global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(44019u, 4u)], global0[_wgslsmith_index_u32(1u, 4u)], false), vec4<bool>(var_1.d.a.x, true, true, false)))), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(u_input.b ^ vec3<u32>(var_1.a.a, u_input.b.x, u_input.b.x), vec3<u32>(15361u, 35344u, 1u)), vec3<u32>(~var_1.c.b.x, var_1.d.b.x, 1u)), Struct_2(Struct_1(var_0.x, true, !vec4<bool>(var_1.a.e.c.x, true, true, true), true), _wgslsmith_add_vec4_i32(abs(vec4<i32>(1i, 1i, u_input.c.x, u_input.a.x)), firstTrailingBit(vec4<i32>(var_1.d.c.c, -64672i, 32668i, 1i))), _wgslsmith_dot_vec4_i32(var_1.c.c.b, vec4<i32>(1i, var_1.d.c.b.x, -17708i, u_input.a.x)), 2147483647i << ((u_input.b.x >> (u_input.b.x % 32u)) % 32u)), !select(vec3<bool>(true, false, true), select(var_1.d.c.a.c.xxx, var_1.c.d, global0[_wgslsmith_index_u32(21032u, 4u)]), vec3<bool>(false, var_1.a.e.c.x, false))), var_1.d);
    global0 = array<bool, 4>();
    let var_3 = _wgslsmith_f_op_f32(var_1.b.x * var_0.x);
    return var_1.d;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec2<u32>) -> Struct_3 {
    global0 = array<bool, 4>();
    var var_0 = all(!vec2<bool>(global0[_wgslsmith_index_u32(93015u, 4u)], !global0[_wgslsmith_index_u32(~4916u, 4u)]));
    var var_1 = ~11719u;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(trunc(-554f)), global0[_wgslsmith_index_u32(62557u, 4u)], vec4<bool>(all(!(!vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 4u)], false, false))), true, false, !any(select(vec3<bool>(true, global0[_wgslsmith_index_u32(arg_2.x, 4u)], global0[_wgslsmith_index_u32(39368u, 4u)]), vec3<bool>(global0[_wgslsmith_index_u32(arg_2.x, 4u)], global0[_wgslsmith_index_u32(arg_1, 4u)], true), false))), 579f != _wgslsmith_f_op_f32(round(-1734f)));
    var var_3 = var_2.c.x;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 22>();
    global0 = array<bool, 4>();
    let var_0 = global1[_wgslsmith_index_u32(13666u, 22u)];
    var var_1 = func_1(u_input.b.x, abs(~6666u), _wgslsmith_sub_vec2_u32(vec2<u32>(44589u, 36825u), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b.xy | u_input.b.yx, ~u_input.b.yx), vec2<u32>(u_input.b.x, u_input.b.x))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.c.a.a)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.c.a.a - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c.a.a, var_1.c.a.a) + func_2().c.a.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(674f, _wgslsmith_div_f32(-462f, var_1.c.a.a))) + 409f));
    var var_3 = vec3<bool>(!any(var_1.a), false, var_1.a.x);
    global1 = array<vec4<bool>, 22>();
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.xx, _wgslsmith_dot_vec2_u32(vec2<u32>(~1u, _wgslsmith_sub_u32(35121u, _wgslsmith_add_u32(var_1.b.x, var_1.b.x))), _wgslsmith_sub_vec2_u32(select(var_1.b.yz, u_input.b.xz, true), select(_wgslsmith_sub_vec2_u32(var_1.b.yy, vec2<u32>(var_1.b.x, 0u)), firstLeadingBit(vec2<u32>(var_1.b.x, u_input.b.x)), var_0.x))));
}

