struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: u32;

var<private> global2: array<bool, 2> = array<bool, 2>(false, true);

var<private> global3: array<i32, 9>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: i32) -> vec2<bool> {
    let var_0 = arg_1.a.x;
    let var_1 = Struct_4(_wgslsmith_add_u32(reverseBits(4294967295u), ~(~0u)), Struct_1(vec4<f32>(global0.x, _wgslsmith_f_op_f32(1f + 2190f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-1000f)), global0.x)), -192f), ~(~(~vec4<u32>(4294967295u, 16466u, 60371u, 1u)))));
    let var_2 = vec3<bool>(all(arg_1.a) | !var_0, !(!(global2[_wgslsmith_index_u32(var_1.a, 2u)] & true) || ((global2[_wgslsmith_index_u32(arg_1.b, 2u)] || false) | true)), all(!(!(!vec4<bool>(var_0, true, global2[_wgslsmith_index_u32(0u, 2u)], arg_1.a.x)))));
    var var_3 = vec3<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1027f, 1078f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), !(!arg_1.c), true);
    var var_4 = global3[_wgslsmith_index_u32(27115u, 9u)];
    return !vec2<bool>(global2[_wgslsmith_index_u32(~arg_1.b, 2u)], false);
}

fn func_2(arg_0: Struct_4, arg_1: vec4<i32>) -> vec3<i32> {
    var var_0 = all(select(!vec2<bool>(global2[_wgslsmith_index_u32(1u, 2u)], all(vec3<bool>(false, false, global2[_wgslsmith_index_u32(arg_0.a, 2u)]))), !(!select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 2u)], global2[_wgslsmith_index_u32(7423u, 2u)]), vec2<bool>(global2[_wgslsmith_index_u32(1u, 2u)], false), vec2<bool>(global2[_wgslsmith_index_u32(34088u, 2u)], false))), select(vec2<bool>(true, true), select(select(vec2<bool>(global2[_wgslsmith_index_u32(26868u, 2u)], global2[_wgslsmith_index_u32(1u, 2u)]), vec2<bool>(true, false), true), select(vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.c.x, 2u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(arg_0.a, 2u)]), global2[_wgslsmith_index_u32(51204u, 2u)]), any(vec4<bool>(true, true, global2[_wgslsmith_index_u32(34429u, 2u)], false))), !(!vec2<bool>(false, global2[_wgslsmith_index_u32(arg_0.a, 2u)])))));
    global3 = array<i32, 9>();
    var var_1 = all(select(select(!select(vec2<bool>(true, true), vec2<bool>(global2[_wgslsmith_index_u32(1u, 2u)], global2[_wgslsmith_index_u32(u_input.c.x, 2u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(arg_0.b.b.x, 2u)])), !func_3(global3[_wgslsmith_index_u32(arg_0.a, 9u)], Struct_2(vec3<bool>(true, global2[_wgslsmith_index_u32(48212u, 2u)], false), u_input.c.x, true), 1415i), true), select(func_3(2147483647i, Struct_2(vec3<bool>(false, global2[_wgslsmith_index_u32(arg_0.b.b.x, 2u)], false), arg_0.a, global2[_wgslsmith_index_u32(0u, 2u)]), u_input.a.x & arg_1.x), select(vec2<bool>(false, true), func_3(-2147483647i, Struct_2(vec3<bool>(true, false, global2[_wgslsmith_index_u32(u_input.c.x, 2u)]), 57747u, true), -556i), select(vec2<bool>(true, global2[_wgslsmith_index_u32(24013u, 2u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 2u)], global2[_wgslsmith_index_u32(25421u, 2u)]), global2[_wgslsmith_index_u32(1u, 2u)])), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(4294967295u, 35400u, 25421u)), vec3<u32>(0u, u_input.c.x, 4294967295u)), 2u)]), select(vec2<bool>(false, global2[_wgslsmith_index_u32(62521u, 2u)] != global2[_wgslsmith_index_u32(u_input.c.x, 2u)]), !func_3(15790i, Struct_2(vec3<bool>(false, true, false), 1u, global2[_wgslsmith_index_u32(30633u, 2u)]), u_input.b.x), !global2[_wgslsmith_index_u32(11545u, 2u)])));
    let var_2 = firstLeadingBit(arg_1);
    var var_3 = arg_0.b;
    return -_wgslsmith_mult_vec3_i32(var_2.zyx, countOneBits(_wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.a.x, 32826i, -7893i), vec3<i32>(2147483647i, -2147483647i, global3[_wgslsmith_index_u32(1u, 9u)]) >> (var_3.b.wxy % vec3<u32>(32u)))));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_4, arg_3: i32) -> bool {
    var var_0 = select(func_2(arg_2, vec4<i32>(-arg_3, 1i, _wgslsmith_div_i32(global3[_wgslsmith_index_u32(8352u, 9u)], 0i), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 26010u), 9u)]) << (vec4<u32>(arg_1.b.x, arg_1.b.x, ~1u, ~0u) % vec4<u32>(32u))), vec3<i32>(-2860i, ~_wgslsmith_sub_i32(-1i, -1i) | ~global3[_wgslsmith_index_u32(u_input.c.x, 9u)], arg_3), select(vec3<bool>(true, true, true), vec3<bool>(any(select(vec4<bool>(global2[_wgslsmith_index_u32(1u, 2u)], global2[_wgslsmith_index_u32(u_input.c.x, 2u)], false, false), vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 2u)], global2[_wgslsmith_index_u32(arg_1.b.x, 2u)], false), vec4<bool>(global2[_wgslsmith_index_u32(55629u, 2u)], global2[_wgslsmith_index_u32(arg_1.b.x, 2u)], global2[_wgslsmith_index_u32(arg_1.b.x, 2u)], true))), all(select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(arg_2.b.b.x, 2u)], global2[_wgslsmith_index_u32(arg_1.b.x, 2u)], false), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 2u)], false, false, global2[_wgslsmith_index_u32(u_input.c.x, 2u)]), global2[_wgslsmith_index_u32(u_input.c.x, 2u)])), true), _wgslsmith_div_f32(-1591f, -1000f) > _wgslsmith_f_op_f32(1535f * _wgslsmith_div_f32(1237f, arg_1.a.x))));
    let var_1 = Struct_2(vec3<bool>(global2[_wgslsmith_index_u32(~(1u & arg_2.a), 2u)], _wgslsmith_div_i32(select(1i, -27149i, false), _wgslsmith_div_i32(global3[_wgslsmith_index_u32(79830u, 9u)], arg_0)) < func_2(arg_2, reverseBits(vec4<i32>(-1i, -1i, -2147483647i, var_0.x))).x, global2[_wgslsmith_index_u32(4294967295u, 2u)] && global2[_wgslsmith_index_u32(77697u, 2u)]), arg_2.a, true);
    let var_2 = _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(abs(_wgslsmith_div_vec4_u32(vec4<u32>(29684u, arg_2.b.b.x, arg_2.b.b.x, 4294967295u), vec4<u32>(arg_1.b.x, arg_2.b.b.x, 50947u, 40739u))), vec4<u32>(arg_1.b.x, _wgslsmith_dot_vec4_u32(arg_1.b ^ arg_2.b.b, firstLeadingBit(vec4<u32>(arg_1.b.x, 86990u, arg_2.a, arg_1.b.x))), _wgslsmith_sub_u32(_wgslsmith_div_u32(228u, u_input.c.x), _wgslsmith_mod_u32(arg_1.b.x, u_input.c.x)), ~(~4294967295u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.b.b.x, u_input.c.x, arg_2.b.b.x, u_input.c.x), arg_1.b), vec4<u32>(var_1.b, ~var_1.b, 507u, arg_1.b.x), _wgslsmith_sub_vec4_u32(arg_2.b.b >> (vec4<u32>(arg_2.b.b.x, 4294967295u, var_1.b, 0u) % vec4<u32>(32u)), ~arg_2.b.b))), select(vec4<u32>(arg_2.a, _wgslsmith_div_u32(arg_2.b.b.x << (1u % 32u), ~var_1.b), arg_1.b.x, ~arg_2.b.b.x ^ (1u << (u_input.c.x % 32u))), ~arg_1.b, select(global2[_wgslsmith_index_u32(~arg_2.b.b.x, 2u)], true | any(vec3<bool>(global2[_wgslsmith_index_u32(15527u, 2u)], var_1.a.x, false)), !select(false, true, false))));
    var var_3 = var_2.x;
    let var_4 = var_1;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) - vec2<f32>(581f, -1603f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1537f, global0.x) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-175f, global0.x)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(455f, -1000f), vec2<f32>(821f, 446f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-609f, global0.x)))));
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * global0.x) * _wgslsmith_f_op_f32(-global0.x)), global0.x)), vec4<f32>(132f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + -1484f), -442f)), select(select(vec4<bool>(true, true, -24562i > global3[_wgslsmith_index_u32(15707u, 9u)], !global2[_wgslsmith_index_u32(u_input.c.x, 2u)]), select(vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.c.x, 2u)], false, false), !vec4<bool>(false, false, true, global2[_wgslsmith_index_u32(0u, 2u)]), func_1(-2605i, Struct_1(vec4<f32>(global0.x, -494f, global0.x, global0.x), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)), Struct_4(u_input.c.x, Struct_1(vec4<f32>(global0.x, 366f, global0.x, global0.x), vec4<u32>(21574u, 4294967295u, 21234u, 0u))), -4499i)), select(select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 2u)], false, global2[_wgslsmith_index_u32(u_input.c.x, 2u)], global2[_wgslsmith_index_u32(u_input.c.x, 2u)]), vec4<bool>(global2[_wgslsmith_index_u32(51439u, 2u)], false, false, global2[_wgslsmith_index_u32(0u, 2u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 2u)], true, false, global2[_wgslsmith_index_u32(u_input.c.x, 2u)])), select(vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 2u)], false, true), vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 2u)], false, global2[_wgslsmith_index_u32(1u, 2u)], true), global2[_wgslsmith_index_u32(u_input.c.x, 2u)]), !vec4<bool>(global2[_wgslsmith_index_u32(116445u, 2u)], global2[_wgslsmith_index_u32(u_input.c.x, 2u)], false, false))), select(vec4<bool>(global0.x > global0.x, select(false, true, false), true, select(true, true, global2[_wgslsmith_index_u32(u_input.c.x, 2u)])), !vec4<bool>(true, global2[_wgslsmith_index_u32(43414u, 2u)], global2[_wgslsmith_index_u32(u_input.c.x, 2u)], global2[_wgslsmith_index_u32(4294967295u, 2u)]), select(!vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(u_input.c.x, 2u)]), vec4<bool>(false, false, global2[_wgslsmith_index_u32(u_input.c.x, 2u)], global2[_wgslsmith_index_u32(u_input.c.x, 2u)]), all(vec3<bool>(true, true, true)))), select(vec4<bool>(all(vec2<bool>(false, true)), global0.x <= -191f, !global2[_wgslsmith_index_u32(u_input.c.x, 2u)], true), select(!vec4<bool>(false, global2[_wgslsmith_index_u32(17607u, 2u)], global2[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(18582u, 2u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(59877u, 2u)], true, global2[_wgslsmith_index_u32(44948u, 2u)], false), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.c.x, 2u)], global2[_wgslsmith_index_u32(4294967295u, 2u)], true), vec4<bool>(global2[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(57061u, 2u)], global2[_wgslsmith_index_u32(u_input.c.x, 2u)], false)), true), global2[_wgslsmith_index_u32(4294967295u, 2u)] != (global2[_wgslsmith_index_u32(u_input.c.x, 2u)] & true)))));
    var var_1 = Struct_2(select(!select(select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 2u)], global2[_wgslsmith_index_u32(1848u, 2u)], false), vec3<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 2u)], false, true), vec3<bool>(false, true, global2[_wgslsmith_index_u32(u_input.c.x, 2u)])), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.c.x, 2u)], false), global2[_wgslsmith_index_u32(~u_input.c.x, 2u)]), vec3<bool>(!global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c.x, 80482u), 2u)], func_1(1i, Struct_1(var_0, vec4<u32>(4714u, u_input.c.x, 0u, 43331u)), Struct_4(46103u, Struct_1(var_0, vec4<u32>(u_input.c.x, 1u, u_input.c.x, 31406u))), -1i), true), vec3<bool>(any(vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 2u)], global2[_wgslsmith_index_u32(u_input.c.x, 2u)])), global2[_wgslsmith_index_u32(62739u >> (u_input.c.x % 32u), 2u)], func_1(global3[_wgslsmith_index_u32(u_input.c.x, 9u)] >> (92702u % 32u), Struct_1(var_0, vec4<u32>(u_input.c.x, 18543u, 0u, 59375u)), Struct_4(18958u, Struct_1(vec4<f32>(global0.x, -1464f, var_0.x, 139f), vec4<u32>(u_input.c.x, 4294967295u, 1u, 64287u))), _wgslsmith_mod_i32(0i, u_input.a.x)))), 39536u, true);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~select(24313i | u_input.a.x, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, var_1.b, 4294967295u, var_1.b), vec4<u32>(0u, u_input.c.x, 4772u, 75497u)), 9u)], var_1.a.x), 12991i, -13126i, 8593i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * 464f) - -452f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-957f, global0.x) + _wgslsmith_f_op_f32(ceil(var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * global0.x) * 430f))), _wgslsmith_f_op_f32(f32(-1f) * -958f));
}

