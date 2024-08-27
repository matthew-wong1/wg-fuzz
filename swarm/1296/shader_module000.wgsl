struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(-687f, -569f), vec2<i32>(1i, 0i), vec2<u32>(6179u, 38982u), vec4<u32>(15181u, 1u, 4355u, 41043u));

var<private> global1: array<vec2<bool>, 17>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: i32) -> u32 {
    let var_0 = 0i;
    let var_1 = select(!select(vec4<bool>(false, true, true, false), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true)), true && any(vec2<bool>(false, false))), select(!vec4<bool>(any(vec3<bool>(false, false, true)), true, -1000f > global0.a.x, false), select(vec4<bool>(true, 1i < global0.b.x, true, false), vec4<bool>(true, true, true, true), select(true, all(global1[_wgslsmith_index_u32(u_input.d.x, 17u)]), true)), false), select(select(vec4<bool>(false, false, true, all(global1[_wgslsmith_index_u32(u_input.a.x, 17u)])), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true))), select(vec4<bool>(all(vec4<bool>(false, false, false, true)), any(vec3<bool>(true, false, false)), global0.a.x >= global0.a.x, any(vec4<bool>(false, false, false, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true)), true), true), vec4<bool>(all(vec3<bool>(false, true, false)), false, true, !(global0.d.x < 18396u))));
    let var_2 = global0.d.x;
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(global0.a * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1311f, global0.a.x))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1086f, -718f), vec2<f32>(arg_0, global0.a.x), true)))))), vec2<i32>(_wgslsmith_div_i32(abs(global0.b.x), ~1i | u_input.b.x), max(-max(-3076i, 8206i), ~0i)), ~_wgslsmith_clamp_vec2_u32(~min(global0.c, u_input.a.yz), ~(~vec2<u32>(u_input.c.x, 1u)), _wgslsmith_add_vec2_u32(u_input.c.zy & u_input.d, u_input.c.yx & vec2<u32>(1u, 1972u))), ~global0.d);
    global1 = array<vec2<bool>, 17>();
    return 1u;
}

fn func_2() -> bool {
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-global0.a), vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-10687i, u_input.b.x) << (global0.c.x % 32u), 0i), u_input.b.x), ~vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.c.x, 30206u, 4294967295u), vec3<u32>(1u, 8682u, global0.c.x)), u_input.a.x), ~(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(global0.d, vec4<u32>(global0.c.x, 4294967295u, 1u, 0u)), u_input.a) ^ (select(u_input.a, u_input.a, true) & u_input.a)));
    let var_0 = _wgslsmith_add_u32(_wgslsmith_mod_u32((1u << (func_3(global0.a.x, -37373i) % 32u)) >> (select(u_input.c.x ^ global0.d.x, _wgslsmith_dot_vec2_u32(global0.d.wy, u_input.d), true) % 32u), ~0u | ~select(1u, 15324u, true)), 14011u);
    var var_1 = Struct_3(true, Struct_2(vec4<u32>(u_input.d.x, global0.c.x, 1u, 1u), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.a - global0.a)), vec2<i32>(max(global0.b.x, 0i), 0i), vec2<u32>(1u, _wgslsmith_mult_u32(1u, 4581u)), u_input.a), -global0.b.x, Struct_1(global0.a, global0.b, vec2<u32>(u_input.d.x ^ var_0, min(0u, u_input.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.d.x, 1625u, global0.c.x, 4294967295u), max(u_input.a, global0.d))), 7243u));
    let var_2 = var_1.b;
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.b.d.a.x, -544f), vec2<f32>(-1435f, 1715f)) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_2.d.a)))) + var_1.b.b.a), u_input.b.yx, var_1.b.d.d.yy, _wgslsmith_sub_vec4_u32(u_input.a, ~var_2.a));
    return true;
}

fn func_1() -> f32 {
    var var_0 = Struct_3(func_2(), Struct_2(global0.d >> (vec4<u32>(abs(35848u), ~4294967295u, 1u, global0.d.x | u_input.c.x) % vec4<u32>(32u)), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, -973f))), vec2<i32>(u_input.b.x, global0.b.x), _wgslsmith_clamp_vec2_u32(u_input.d, ~u_input.c.zy, global0.d.zw), _wgslsmith_div_vec4_u32(u_input.a, global0.d) & firstTrailingBit(vec4<u32>(4259u, 0u, u_input.d.x, u_input.c.x))), reverseBits(~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global0.b.x), vec2<i32>(2147483647i, -25054i))), Struct_1(vec2<f32>(-2041f, _wgslsmith_div_f32(global0.a.x, 461f)), u_input.b.wy, vec2<u32>(u_input.c.x, 0u), abs(vec4<u32>(u_input.d.x, u_input.d.x, 1u, 4294967295u) >> (global0.d % vec4<u32>(32u)))), ~firstTrailingBit(_wgslsmith_clamp_u32(global0.c.x, 8828u, 1u))));
    global1 = array<vec2<bool>, 17>();
    let var_1 = reverseBits(-u_input.b.wzz);
    global0 = var_0.b.d;
    let var_2 = global0.c;
    return global0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_1()), -1041f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, global0.a.x))))), ~u_input.b.ww, vec2<u32>(min(34527u, 75274u), global0.c.x), global0.d);
    let var_0 = Struct_1(global0.a, ~global0.b, select(~(~(u_input.a.zw << (vec2<u32>(24441u, 13837u) % vec2<u32>(32u)))), ~abs(vec2<u32>(1u, u_input.d.x) | vec2<u32>(28564u, 4294967295u)), true), ~global0.d);
    global1 = array<vec2<bool>, 17>();
    global0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x * var_0.a.x) * _wgslsmith_f_op_f32(global0.a.x - -245f)))), u_input.b.yz, ~u_input.d, _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(global0.d.x, 4294967295u, 3054u, 31069u)), var_0.d), select(abs(var_0.d), vec4<u32>(~global0.c.x, 0u >> (global0.d.x % 32u), 2770u, 1u), true)));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.a.x, 104f), vec2<f32>(var_0.a.x, 447f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_0.a.x)) * _wgslsmith_div_vec2_f32(vec2<f32>(global0.a.x, global0.a.x), vec2<f32>(var_0.a.x, global0.a.x))))), countOneBits(var_0.b), global0.c, global0.d);
    let var_1 = vec2<u32>(_wgslsmith_mod_u32(var_0.d.x, 4294967295u), global0.d.x);
    var var_2 = Struct_1(vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -218f))), select(u_input.b.zw, _wgslsmith_div_vec2_i32(min(var_0.b, u_input.b.yy), var_0.b), false) << (countOneBits(~var_0.c) % vec2<u32>(32u)), ~var_1, ~(~(~vec4<u32>(4294967295u, global0.d.x, 24538u, u_input.c.x))) | select(~vec4<u32>(4294967295u, 4294967295u, 85626u, u_input.d.x), _wgslsmith_mod_vec4_u32(~var_0.d, _wgslsmith_add_vec4_u32(vec4<u32>(global0.d.x, 42988u, 32118u, 23466u), vec4<u32>(u_input.a.x, var_0.c.x, 33286u, 556u))), true));
    var var_3 = vec4<bool>(!(_wgslsmith_f_op_f32(-1197f - 1511f) != _wgslsmith_f_op_f32(-var_0.a.x)) | (!all(vec4<bool>(true, false, false, true)) && all(!global1[_wgslsmith_index_u32(1u, 17u)])), true, true, false);
    let x = u_input.a;
    s_output = StorageBuffer(~(~0u), max(-var_2.b.x, -_wgslsmith_sub_i32(2147483647i, 1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, var_2.a.x, var_2.a.x, global0.a.x)))))), ~reverseBits(20271i), var_2.b.x ^ _wgslsmith_mod_i32(_wgslsmith_mod_i32(1i, 1i), _wgslsmith_dot_vec3_i32(u_input.b.zzw, -u_input.b.wxy)));
}

