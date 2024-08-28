struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec3<i32>,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: f32 = -828f;

var<private> global2: Struct_1;

var<private> global3: array<vec3<bool>, 5>;

var<private> global4: array<f32, 23>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> u32 {
    var var_0 = global2.e;
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(min(_wgslsmith_sub_u32(~23295u, 1u), 1u), reverseBits(firstLeadingBit(30508u)), 1u) | 4294967295u, 8u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global4[_wgslsmith_index_u32(0u, 23u)], -1000f, _wgslsmith_f_op_f32(-var_1.d), global2.d))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(30066u, 29673u), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 16406u), vec2<u32>(0u, 0u))), 23u)], -1000f, 567f) - vec4<f32>(_wgslsmith_f_op_f32(global2.d * global4[_wgslsmith_index_u32(1u, 23u)]), _wgslsmith_f_op_f32(1644f * _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(1u, 23u)] * global4[_wgslsmith_index_u32(56665u, 23u)])), -1490f, global4[_wgslsmith_index_u32(4294967295u, 23u)])));
    var_2 = vec4<f32>(var_1.d, _wgslsmith_div_f32(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_div_u32(0u, 1u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(124638u, 61124u), vec2<u32>(4294967295u, 29547u))), 23u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1179f, var_2.x, !var_1.a)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global4[_wgslsmith_index_u32(1u, 23u)], _wgslsmith_f_op_f32(floor(var_1.d))) * _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(4294967295u, 23u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-301f)) - _wgslsmith_f_op_f32(min(1596f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d))))));
    var_0 = any(vec3<bool>(var_2.x != _wgslsmith_f_op_f32(var_1.d - _wgslsmith_f_op_f32(var_2.x - 894f)), global2.a, false));
    return 1u;
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_mod_vec2_i32(global2.c.zy ^ (vec2<i32>(1i, global2.b.x) & global2.b.wy), ~abs(firstTrailingBit(arg_0.c.yx)));
    return ~(~(~85692u));
}

fn func_4(arg_0: u32, arg_1: bool) -> i32 {
    let var_0 = vec3<bool>(1u >= _wgslsmith_div_u32(~28826u, arg_0), !all(select(select(vec4<bool>(arg_1, false, true, arg_1), vec4<bool>(false, true, arg_1, arg_1), false), !vec4<bool>(true, true, arg_1, true), vec4<bool>(arg_1, arg_1, true, arg_1))), select(global2.e, true, !(arg_1 & true)));
    global3 = array<vec3<bool>, 5>();
    global2 = global0[_wgslsmith_index_u32(select(~0u, arg_0, arg_1), 8u)];
    let var_1 = _wgslsmith_mult_u32(arg_0, 0u);
    let var_2 = vec2<f32>(-980f, global2.d);
    return ~(-1i);
}

fn func_1() -> vec3<u32> {
    let var_0 = _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, _wgslsmith_add_u32(func_2(), ~12333u), ~1u), _wgslsmith_mod_vec3_u32(vec3<u32>(1u << (min(1u, 1u) % 32u), ~abs(19435u), 1u), ~(~vec3<u32>(1u, 1u, 1u))));
    var var_1 = !select(vec3<bool>(true, true, true), !(!vec3<bool>(global2.e, false, false)), !(!select(global3[_wgslsmith_index_u32(var_0, 5u)], global3[_wgslsmith_index_u32(0u, 5u)], global2.a)));
    var var_2 = all(!vec2<bool>(var_1.x && true, _wgslsmith_f_op_f32(-1623f - global2.d) >= global4[_wgslsmith_index_u32(~10195u, 23u)]));
    let var_3 = Struct_1(true, u_input.b, u_input.b.wyw, 108f, true);
    var var_4 = func_4(_wgslsmith_mod_u32(var_0, ~7440u ^ func_3(Struct_1(var_3.a, var_3.b, vec3<i32>(-1i, u_input.a, 0i), var_3.d, var_3.a))), true);
    return select(abs(~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 15556u), vec2<u32>(8862u, var_0)), var_0 & var_0, _wgslsmith_mult_u32(0u, 24968u))), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, _wgslsmith_sub_u32(var_0, 64294u), var_0), vec3<u32>(~4294967295u, ~4294967295u, var_0 ^ var_0), ~abs(vec3<u32>(6199u, 1u, 38400u))), vec3<u32>(~100640u, ~var_0 | _wgslsmith_div_u32(var_0, var_0), var_0 >> ((var_0 | var_0) % 32u))), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(50983u, 1u), reverseBits(_wgslsmith_sub_vec2_u32(~vec2<u32>(90657u, 74589u), vec2<u32>(var_0, 17979u)))), 5u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 12228u;
    let var_1 = select(_wgslsmith_add_vec3_u32(func_1(), _wgslsmith_mod_vec3_u32(~abs(vec3<u32>(1u, var_0, var_0)), _wgslsmith_mult_vec3_u32(vec3<u32>(30146u, 2472u, 11209u), _wgslsmith_sub_vec3_u32(vec3<u32>(30248u, 3825u, 0u), vec3<u32>(var_0, 75944u, var_0))))), vec3<u32>(firstTrailingBit(abs(func_2())), func_3(Struct_1(global2.a, select(vec4<i32>(u_input.b.x, 13604i, 0i, 0i), vec4<i32>(1598i, -2147483647i, -30764i, 52293i), global2.a), _wgslsmith_sub_vec3_i32(global2.b.wyw, global2.c), 977f, all(vec3<bool>(global2.e, global2.a, false)))), var_0), global2.a);
    let var_2 = global2.d;
    var var_3 = _wgslsmith_sub_vec3_i32(reverseBits(u_input.b.wwz) >> (vec3<u32>(var_1.x, 24949u, ~(var_0 | var_0)) % vec3<u32>(32u)), ~_wgslsmith_mod_vec3_i32(select(~global2.c, max(vec3<i32>(global2.c.x, global2.b.x, 2147483647i), global2.c), !vec3<bool>(global2.a, global2.e, global2.a)), countOneBits(max(u_input.b.yyx, u_input.b.ywz))));
    var var_4 = select(12672i, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.a, _wgslsmith_div_i32(_wgslsmith_add_i32(2147483647i, -1i), _wgslsmith_dot_vec2_i32(u_input.b.wy, global2.c.zz))), _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.x, 52069i << (var_1.x % 32u)), vec2<i32>(var_3.x, var_3.x)), global2.c.x), u_input.b.x < var_3.x);
    let var_5 = global2.e;
    var_3 = vec3<i32>(-22057i, abs(_wgslsmith_dot_vec3_i32(max(u_input.b.xyz, vec3<i32>(global2.b.x, 9929i, 0i)), ~vec3<i32>(u_input.a, 9861i, -14770i))) >> (max(~(~var_0), _wgslsmith_clamp_u32(30806u, 0u, 4294967295u) & 1u) % 32u), min(1i, -59961i));
    let x = u_input.a;
    s_output = StorageBuffer(var_0, -1i);
}

