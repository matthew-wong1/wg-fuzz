struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: u32,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: f32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<bool>(false, false, false), 1i, Struct_1(31243u, 33833u, vec2<bool>(false, true)), 4294967295u);

var<private> global1: array<bool, 22>;

var<private> global2: array<f32, 30>;

var<private> global3: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(3252u, 1u, vec2<bool>(true, false)), Struct_1(4294967295u, 53678u, vec2<bool>(false, true)), Struct_1(4294967295u, 1u, vec2<bool>(false, false)), Struct_1(1u, 43855u, vec2<bool>(false, false)), Struct_1(4294967295u, 1u, vec2<bool>(false, true)), Struct_1(4294967295u, 3159u, vec2<bool>(true, true)), Struct_1(53518u, 33484u, vec2<bool>(true, true)), Struct_1(0u, 0u, vec2<bool>(true, false)), Struct_1(1u, 4294967295u, vec2<bool>(true, true)), Struct_1(57222u, 4294967295u, vec2<bool>(false, true)), Struct_1(28757u, 4294967295u, vec2<bool>(true, true)), Struct_1(0u, 4294967295u, vec2<bool>(false, true)), Struct_1(31977u, 4294967295u, vec2<bool>(false, false)), Struct_1(96110u, 4294967295u, vec2<bool>(true, true)), Struct_1(1u, 1u, vec2<bool>(false, false)), Struct_1(73543u, 51045u, vec2<bool>(true, false)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> u32 {
    let var_0 = !(!select(vec4<bool>(arg_0.c.x | arg_0.c.x, all(vec4<bool>(global1[_wgslsmith_index_u32(global0.d, 22u)], false, true, false)), global1[_wgslsmith_index_u32(~global0.d, 22u)], any(vec3<bool>(arg_0.c.x, true, true))), select(!vec4<bool>(global1[_wgslsmith_index_u32(37644u, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)], arg_0.c.x, true), !vec4<bool>(arg_0.c.x, arg_0.c.x, true, global0.c.c.x), arg_0.c.x), global1[_wgslsmith_index_u32(1u, 22u)] && true));
    global0 = Struct_2(vec3<bool>((arg_1 & ~u_input.d) <= max(30077u, ~arg_0.a), all(select(select(var_0, var_0, var_0), select(var_0, var_0, true), !vec4<bool>(false, false, arg_0.c.x, global0.c.c.x))), any(global0.a)), global0.b, arg_0, arg_0.b);
    global1 = array<bool, 22>();
    global3 = array<Struct_1, 16>();
    var var_1 = global0.c.c;
    return u_input.e.x;
}

fn func_2() -> vec3<f32> {
    global1 = array<bool, 22>();
    var var_0 = -reverseBits(~_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(-19322i, -8961i)), vec2<i32>(u_input.b, u_input.b)));
    global0 = Struct_2(vec3<bool>(select(true, global1[_wgslsmith_index_u32(global0.c.a, 22u)], global0.c.c.x), global0.a.x, global2[_wgslsmith_index_u32(global0.d, 30u)] > 1000f), _wgslsmith_mod_i32(var_0.x, u_input.b), global3[_wgslsmith_index_u32(~(~func_3(Struct_1(u_input.a, 10975u, global0.a.yz), u_input.c.x) ^ 1u), 16u)], func_3(Struct_1(max(~u_input.d, u_input.c.x), 0u, !select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 22u)], false), vec2<bool>(global0.c.c.x, global0.a.x), global0.c.c.x)), global0.d));
    let var_1 = global0.c.b;
    let var_2 = abs(u_input.b);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(282f - -252f), _wgslsmith_f_op_f32(882f * 726f), _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(32310u, 30u)]))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(130f, 1789f, global2[_wgslsmith_index_u32(218u, 30u)])), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(149f, -404f, -1294f)))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -828f), -979f, -161f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 30u)], global2[_wgslsmith_index_u32(u_input.c.x, 30u)], -913f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2[_wgslsmith_index_u32(46812u, 30u)], -170f, global2[_wgslsmith_index_u32(0u, 30u)]), vec3<f32>(813f, global2[_wgslsmith_index_u32(u_input.e.x, 30u)], -1089f))), !vec3<bool>(global1[_wgslsmith_index_u32(global0.c.b, 22u)], global0.a.x, false)))) + vec3<f32>(-207f, _wgslsmith_f_op_f32(-505f + 617f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 30u)]), global2[_wgslsmith_index_u32(countOneBits(4294967295u), 30u)], global0.c.c.x)))));
}

fn func_4(arg_0: vec3<f32>) -> i32 {
    global3 = array<Struct_1, 16>();
    global1 = array<bool, 22>();
    global2 = array<f32, 30>();
    global3 = array<Struct_1, 16>();
    var var_0 = ~_wgslsmith_mult_vec2_u32(~u_input.e.zx, ~u_input.e.yx);
    return -max(_wgslsmith_sub_i32(global0.b, 2147483647i), countOneBits(global0.b));
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 659f, global2[_wgslsmith_index_u32(4294967295u, 30u)]) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, global2[_wgslsmith_index_u32(41809u, 30u)], -1019f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(14692u, 30u)], -596f, arg_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(313f, -1042f, -292f)), select(vec3<bool>(global0.c.c.x, global0.a.x, false), global0.a, global0.a))) + vec3<f32>(-1653f, global2[_wgslsmith_index_u32(~42231u, 30u)], _wgslsmith_f_op_f32(-440f - -245f))), vec3<bool>(true & global0.c.c.x, true, global0.a.x))));
    let var_1 = Struct_2(!select(!select(vec3<bool>(global1[_wgslsmith_index_u32(global0.c.b, 22u)], global0.c.c.x, global0.c.c.x), global0.a, false), vec3<bool>(true, global0.c.c.x, global0.c.c.x), global0.a), _wgslsmith_sub_i32(~var_0, u_input.b), Struct_1(~63375u, _wgslsmith_sub_u32(func_3(global3[_wgslsmith_index_u32(30594u, 16u)], _wgslsmith_dot_vec2_u32(vec2<u32>(30153u, 4294967295u), u_input.e.ww)), countOneBits(global0.d >> (17194u % 32u))), global0.c.c), ~(~(~global0.d ^ (0u & global0.d))));
    var var_2 = all(vec2<bool>(false, global0.a.x));
    var var_3 = true;
    var var_4 = _wgslsmith_clamp_u32(var_1.d, _wgslsmith_sub_u32(_wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(u_input.c, u_input.c), _wgslsmith_div_u32(var_1.d, ~25673u)), 4294967295u | ~global0.c.a), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~_wgslsmith_div_u32(85919u, 41349u), var_1.d, _wgslsmith_dot_vec4_u32(select(u_input.e, vec4<u32>(6494u, 21083u, 38531u, u_input.c.x), true), u_input.e & vec4<u32>(u_input.d, var_1.c.a, 4294967295u, var_1.d))), _wgslsmith_clamp_vec4_u32(~_wgslsmith_add_vec4_u32(u_input.e, u_input.e), ~u_input.e >> ((u_input.e & vec4<u32>(1u, 61299u, 0u, var_1.c.b)) % vec4<u32>(32u)), vec4<u32>(1u >> (var_1.c.b % 32u), _wgslsmith_div_u32(4294967295u, 4294967295u), var_1.c.a, abs(4294967295u)))));
    return _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~abs(var_1.d) << (_wgslsmith_sub_u32(54149u, 1u) % 32u), 30u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_1 = global0.d;
    var var_2 = reverseBits(abs(~vec4<i32>(-9180i, -28804i, u_input.b, ~(-9362i))));
    var var_3 = global0.b;
    global1 = array<bool, 22>();
    global1 = array<bool, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2[_wgslsmith_index_u32(u_input.a, 30u)], 1044f, global2[_wgslsmith_index_u32(global0.c.a, 30u)], 242f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, 830f, 344f)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(245f * global2[_wgslsmith_index_u32(global0.c.a, 30u)])), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_0)), _wgslsmith_f_op_f32(abs(var_0)), any(vec4<bool>(true, true, false, false)))), 1122f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(23108u, 30u)])) + 1023f)), !vec4<bool>(!global1[_wgslsmith_index_u32(u_input.a, 22u)], any(global0.a.yy), true, false || global0.c.c.x))), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(~firstLeadingBit(u_input.d), 30u)], _wgslsmith_f_op_f32(sign(-1000f))));
}

