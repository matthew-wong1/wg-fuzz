struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32> = array<i32, 32>(22774i, 0i, 1i, 6662i, 16147i, 2786i, 1i, -47531i, -44711i, i32(-2147483648), 521i, 2147483647i, 1i, 0i, -1i, i32(-2147483648), -62164i, 37670i, 2147483647i, 0i, -69626i, 5407i, 1i, -1i, -43862i, 2147483647i, -1i, -1i, -47287i, 2147483647i, i32(-2147483648), -1i);

var<private> global1: Struct_2 = Struct_2(Struct_1(4294967295u, vec2<bool>(true, false), true), vec3<u32>(0u, 48115u, 9318u), Struct_1(66056u, vec2<bool>(false, true), false));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: bool, arg_3: f32) -> vec2<f32> {
    let var_0 = global1.a.c;
    global1 = Struct_2(global1.c, vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(global1.c.a, global1.c.a), ~u_input.d.xz), vec2<u32>(arg_1, 4294967295u) & _wgslsmith_mod_vec2_u32(vec2<u32>(42730u, 57841u), global1.b.xz)), ~global1.c.a, arg_1), Struct_1(~(~max(33174u, u_input.d.x)), global1.c.b, false));
    let var_1 = arg_1;
    var var_2 = global0[_wgslsmith_index_u32(20112u, 32u)] | 52635i;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(277f, arg_3, -1147f) + vec3<f32>(-262f, arg_3, -258f)) + _wgslsmith_div_vec3_f32(vec3<f32>(arg_3, -372f, arg_3), vec3<f32>(arg_3, arg_3, -698f))))));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_3.x), -427f));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: vec4<i32>) -> bool {
    global1 = Struct_2(global1.c, global1.b, global1.c);
    let var_0 = -321f;
    let var_1 = select(vec4<bool>(!(!(!global1.c.b.x)), false, true, -global0[_wgslsmith_index_u32(max(u_input.d.x, global1.c.a), 32u)] < _wgslsmith_add_i32(_wgslsmith_mult_i32(0i, global0[_wgslsmith_index_u32(global1.c.a, 32u)]), ~u_input.c)), vec4<bool>(any(select(global1.c.b, global1.a.b, any(vec4<bool>(global1.a.b.x, global1.c.b.x, false, true)))), !all(!vec3<bool>(global1.c.c, false, true)), ~(~u_input.d.x) < ~arg_1.x, false), any(global1.a.b));
    global1 = Struct_2(Struct_1(arg_1.x, var_1.yy, !any(!var_1.xy)), global1.b, global1.c);
    var var_2 = Struct_1(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.d.x, arg_1.x), abs(u_input.d.x) | global1.b.x), vec2<bool>(true, false), var_1.x);
    return false;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(global1.a, vec3<u32>(global1.a.a, 1u, ~u_input.d.x), Struct_1(u_input.d.x, !select(!vec2<bool>(global1.a.b.x, true), global1.c.b, vec2<bool>(true, false)), func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(vec2<i32>(1i, 0i), u_input.d.x, global1.c.c, -953f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1292f, 608f))), ~abs(vec4<u32>(u_input.d.x, global1.b.x, global1.b.x, 0u)), -vec4<i32>(global0[_wgslsmith_index_u32(1668u, 32u)], 15628i, -2729i, u_input.b))));
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(150f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1375f, -143f)) * -2711f), _wgslsmith_f_op_vec2_f32(func_3(vec2<i32>(u_input.a, global0[_wgslsmith_index_u32(var_0.b.x, 32u)]), ~0u, var_0.a.c, _wgslsmith_f_op_f32(step(-599f, -809f)))).x)))));
    var var_2 = Struct_1(abs(~_wgslsmith_clamp_u32(~0u, ~var_0.b.x, _wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, 31274u))), select(select(vec2<bool>(1030f < var_1.x, all(vec3<bool>(true, true, false))), vec2<bool>(true, var_0.c.c), true), var_0.a.b, all(vec2<bool>(var_0.a.c, false))), !(!(1u < countOneBits(global1.a.a))));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(f32(-1f) * -377f))))), _wgslsmith_div_f32(954f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-181f + -2517f) + -237f))));
    var var_4 = vec4<u32>(_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, global1.a.a, 56997u, var_2.a), vec4<u32>(0u, 16931u, var_2.a, 11733u)), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, global1.b.x, u_input.d.x, var_2.a), vec4<u32>(9829u, u_input.d.x, global1.c.a, global1.c.a) | vec4<u32>(var_0.c.a, 0u, var_0.b.x, u_input.d.x)), (vec4<u32>(9253u, 89821u, 4294967295u, global1.c.a) >> (vec4<u32>(var_0.c.a, 0u, var_0.c.a, 22974u) % vec4<u32>(32u))) >> (~vec4<u32>(31932u, u_input.d.x, var_0.c.a, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_sub_u32(firstTrailingBit(countOneBits(~1u)), 1u), var_2.a, countOneBits(global1.c.a ^ ~0u));
    return var_0;
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: i32, arg_3: vec2<u32>) -> f32 {
    global1 = func_2();
    var var_0 = arg_3.x;
    var var_1 = Struct_2(Struct_1(func_2().a.a, vec2<bool>(true, all(!vec4<bool>(global1.a.b.x, false, true, false))), false), func_2().b, Struct_1(reverseBits(u_input.d.x), vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x >> (1u % 32u), 32u)] <= global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.d.x, 37490u, 6152u), 32u)], true), global1.c.c));
    let var_2 = !select(select(!(!vec4<bool>(false, global1.c.b.x, true, true)), vec4<bool>(true, arg_2 < arg_2, select(global1.a.c, global1.a.b.x, true), false && var_1.c.b.x), all(!vec3<bool>(var_1.c.c, false, false))), !vec4<bool>(!global1.a.b.x, all(vec4<bool>(global1.a.c, false, global1.c.b.x, true)), 0u >= arg_1, !global1.c.b.x), var_1.c.b.x);
    var_1 = Struct_2(func_2().a, vec3<u32>(arg_1, abs(reverseBits(abs(var_1.a.a))), ~37677u), func_2().a);
    return _wgslsmith_f_op_f32(floor(arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 32>();
    var var_0 = !vec2<bool>(global1.c.c, true);
    var var_1 = global1.a;
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(200f, var_1.a, u_input.a, vec2<u32>(u_input.d.x, global1.b.x))), -1890f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(727f, -999f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1222f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -949f) + _wgslsmith_f_op_f32(sign(-244f))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), vec3<f32>(1f, 1f, 1f)));
    let var_3 = _wgslsmith_clamp_u32(global1.c.a, 0u, _wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, global1.b.x), vec2<u32>(29901u, 0u))), abs(7724u)), ~(~1u) >> (_wgslsmith_add_u32(_wgslsmith_div_u32(28010u, global1.b.x), 30031u) % 32u)));
    var var_4 = _wgslsmith_f_op_vec2_f32(-var_2.zy);
    var_4 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.x, var_4.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(572f, var_1.a, ~global1.b.x, vec3<i32>(-(global0[_wgslsmith_index_u32(~4294967295u, 32u)] ^ 27817i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -1i, -1i), -(vec3<i32>(-68906i, 0i, 2147483647i) ^ vec3<i32>(-19324i, -1i, global0[_wgslsmith_index_u32(var_1.a, 32u)]))), u_input.a), (-u_input.c | abs(-global0[_wgslsmith_index_u32(global1.c.a, 32u)])) ^ _wgslsmith_div_i32(max(-29042i, 2147483647i >> (var_1.a % 32u)), _wgslsmith_mult_i32(-u_input.a, 0i)));
}

