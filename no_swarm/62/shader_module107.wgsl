struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec3<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 9>;

var<private> global3: array<vec3<f32>, 22>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: bool, arg_3: f32) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(global1.a + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(sign(2609f))), _wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(min(arg_3, -1000f)))) + global1.a));
    let var_1 = !vec3<bool>(select(_wgslsmith_dot_vec2_i32(vec2<i32>(35463i, 33608i), vec2<i32>(1i, 32633i)) == _wgslsmith_div_i32(0i, 66764i), arg_2, true), arg_1.x, true);
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.a) - _wgslsmith_f_op_vec4_f32(global1.a * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1649f, -1326f, 739f, global1.a.x) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_3, arg_3, -881f, arg_3)))) * vec4<f32>(570f, _wgslsmith_f_op_f32(round(-1000f)), -427f, global1.a.x))));
    var var_2 = _wgslsmith_div_f32(var_0.x, 1995f);
    global1 = global0[_wgslsmith_index_u32(69066u, 24u)];
    return abs(max(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(68735u, u_input.d.x, 0u)), vec3<u32>(4294967295u, max(5778u, 1u), 4294967295u)), vec3<u32>(4294967295u, u_input.c, u_input.d.x)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> bool {
    global3 = array<vec3<f32>, 22>();
    var var_0 = global2[_wgslsmith_index_u32(u_input.b, 9u)];
    global3 = array<vec3<f32>, 22>();
    let var_1 = ~(~(~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, 34529u, 0u), func_3(vec3<bool>(arg_2.c.x, false, arg_2.b), arg_1.c, arg_1.b, var_0.a.x))));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(min(global1.a, arg_1.a)), true, arg_2.c, _wgslsmith_f_op_f32(max(global1.a.x, arg_3)));
    return !arg_1.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = -61911i;
    let var_1 = ~reverseBits(-(~vec3<i32>(1i, 1i, 1i)));
    let var_2 = _wgslsmith_div_u32(u_input.c, u_input.d.x);
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(arg_0.a)), any(vec4<bool>(true, any(vec4<bool>(true, false, arg_3.b, arg_3.c.x)), true, arg_3.b)), select(select(!vec3<bool>(true, true, arg_2), vec3<bool>(true, global1.c.x & arg_1.c.x, global1.b || true), select(vec3<bool>(true, arg_2, global1.c.x), vec3<bool>(true, true, true), arg_3.c)), !select(select(arg_1.c, global1.c, vec3<bool>(arg_0.c.x, true, false)), !global1.c, select(vec3<bool>(arg_2, false, true), arg_0.c, global1.b)), arg_3.c), arg_0.d);
    global0 = array<Struct_1, 24>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(833f)), _wgslsmith_f_op_f32(-var_3.a.x), true)), arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d * 751f) * _wgslsmith_f_op_f32(f32(-1f) * -695f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.d, 149f, arg_1.d, arg_3.a.x))))))), select(func_2(~abs(var_1.yy), Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-730f, var_3.d, arg_0.a.x, 3137f))), var_3.b, vec3<bool>(arg_2, arg_1.b, false), _wgslsmith_f_op_f32(-1302f - -259f)), arg_3, 506f), true, any(var_3.c)), !var_3.c, 419f);
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<f32> {
    global2 = array<Struct_1, 9>();
    let var_0 = func_4(func_4(arg_1, arg_2, true, arg_1), func_4(func_4(func_4(Struct_1(arg_2.a, global1.c.x, vec3<bool>(true, false, false), -1273f), Struct_1(vec4<f32>(arg_1.d, arg_2.d, arg_1.a.x, 605f), false, vec3<bool>(true, true, false), arg_1.a.x), true, arg_2), Struct_1(arg_1.a, true, !global1.c, _wgslsmith_div_f32(global1.a.x, global1.a.x)), global1.c.x, func_4(Struct_1(vec4<f32>(973f, global1.a.x, arg_1.d, arg_1.d), arg_1.c.x, vec3<bool>(arg_1.b, true, true), -998f), global0[_wgslsmith_index_u32(u_input.d.x >> (u_input.b % 32u), 24u)], select(false, true, true), Struct_1(vec4<f32>(805f, global1.a.x, arg_2.a.x, -665f), arg_1.c.x, vec3<bool>(arg_2.c.x, arg_2.b, false), arg_1.d))), arg_2, _wgslsmith_add_i32(1i, select(arg_0, -2147483647i, arg_2.c.x)) > -2147483647i, func_4(func_4(arg_1, func_4(Struct_1(arg_1.a, arg_1.b, arg_1.c, global1.d), global0[_wgslsmith_index_u32(4294967295u, 24u)], arg_1.c.x, arg_1), all(vec4<bool>(true, false, true, true)), arg_1), func_4(Struct_1(arg_1.a, arg_2.b, global1.c, arg_1.a.x), func_4(arg_2, global0[_wgslsmith_index_u32(42501u, 24u)], arg_2.b, global0[_wgslsmith_index_u32(4294967295u, 24u)]), func_4(Struct_1(arg_2.a, true, arg_1.c, 634f), Struct_1(vec4<f32>(-2164f, 1349f, -331f, global1.d), arg_2.b, global1.c, -682f), arg_2.c.x, Struct_1(vec4<f32>(-429f, -233f, -592f, -1674f), false, vec3<bool>(false, arg_2.c.x, true), arg_2.d)).b, Struct_1(arg_1.a, false, vec3<bool>(arg_2.b, arg_2.b, false), 533f)), arg_2.c.x, func_4(func_4(Struct_1(vec4<f32>(arg_1.d, arg_1.d, arg_1.a.x, 586f), true, vec3<bool>(arg_2.c.x, global1.c.x, true), arg_2.a.x), Struct_1(arg_2.a, true, vec3<bool>(false, global1.c.x, arg_2.c.x), arg_2.a.x), false, Struct_1(arg_1.a, true, vec3<bool>(arg_2.c.x, false, false), -1150f)), arg_1, false, func_4(global2[_wgslsmith_index_u32(u_input.b, 9u)], arg_1, true, Struct_1(global1.a, global1.b, arg_1.c, 1000f))))), global1.b, func_4(func_4(func_4(Struct_1(arg_2.a, false, arg_1.c, -1373f), Struct_1(vec4<f32>(global1.d, 1145f, -641f, arg_2.d), true, global1.c, arg_1.d), false, func_4(arg_2, Struct_1(vec4<f32>(-1043f, global1.a.x, global1.d, -1000f), false, arg_1.c, arg_1.d), global1.b, Struct_1(global1.a, true, vec3<bool>(global1.c.x, arg_1.b, false), arg_1.d))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(354f, -1050f, -483f, arg_1.d)), u_input.a.x >= 0u, vec3<bool>(true, true, true), _wgslsmith_f_op_f32(arg_1.d + 522f)), true, Struct_1(vec4<f32>(arg_1.a.x, 563f, 661f, -1359f), global1.b, select(global1.c, arg_1.c, true), _wgslsmith_f_op_f32(max(arg_2.a.x, 654f)))), func_4(Struct_1(vec4<f32>(arg_1.d, global1.d, global1.a.x, 172f), true, !arg_1.c, _wgslsmith_f_op_f32(f32(-1f) * -168f)), global0[_wgslsmith_index_u32(max(_wgslsmith_dot_vec2_u32(vec2<u32>(53334u, u_input.d.x), u_input.a), _wgslsmith_mult_u32(u_input.a.x, u_input.c)), 24u)], arg_1.c.x, global0[_wgslsmith_index_u32(65131u, 24u)]), arg_2.b, global2[_wgslsmith_index_u32(4294967295u, 9u)]));
    var var_1 = -115f;
    let var_2 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(round(-1964f)), -743f, global1.a.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1445f, var_0.a.x, 264f, global1.d) - vec4<f32>(399f, -2556f, arg_2.d, var_0.d)), var_0.a, vec4<bool>(true, arg_1.b, global1.b, arg_2.b))))), arg_1.b, select(vec3<bool>(true, true, true), !(!vec3<bool>(global1.c.x, arg_1.b, var_0.c.x)), all(vec2<bool>(var_0.b, arg_1.c.x)) == func_4(arg_1, Struct_1(vec4<f32>(arg_2.a.x, 190f, -630f, -361f), arg_1.b, vec3<bool>(false, var_0.c.x, var_0.c.x), 711f), false, var_0).b), 830f), func_4(var_0, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 115f, arg_1.a.x, 1120f)) + arg_1.a), true, !vec3<bool>(true, arg_2.b, true), -742f), true, arg_1), var_0.b, Struct_1(global1.a, true & !any(vec4<bool>(arg_1.c.x, arg_1.b, true, false)), !(!vec3<bool>(true, true, arg_2.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -307f)));
    var var_3 = func_4(func_4(arg_2, global2[_wgslsmith_index_u32(~0u, 9u)], !var_0.b, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.d), _wgslsmith_f_op_f32(-global1.d), -1805f, _wgslsmith_f_op_f32(-var_2.d)), !all(vec4<bool>(global1.b, var_2.c.x, false, var_2.b)), var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1200f - arg_2.a.x)))), Struct_1(func_4(var_2, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(784f, -268f, 145f, arg_2.a.x)), global1.b || global1.c.x, arg_1.c, _wgslsmith_f_op_f32(-237f + arg_1.a.x)), true, func_4(global0[_wgslsmith_index_u32(38198u, 24u)], arg_1, u_input.d.x > 1u, func_4(Struct_1(vec4<f32>(-973f, var_0.a.x, -525f, 1000f), var_2.b, vec3<bool>(arg_1.c.x, false, true), arg_2.a.x), Struct_1(var_2.a, false, var_0.c, 825f), global1.c.x, arg_2))).a, func_4(Struct_1(var_2.a, true, vec3<bool>(true, arg_1.c.x, var_0.c.x), _wgslsmith_f_op_f32(328f - arg_2.a.x)), func_4(Struct_1(vec4<f32>(var_0.d, -696f, 1736f, 167f), false, global1.c, arg_1.d), global0[_wgslsmith_index_u32(19849u, 24u)], var_0.c.x, Struct_1(var_0.a, false, vec3<bool>(false, true, true), arg_1.a.x)), global1.c.x, global0[_wgslsmith_index_u32(0u, 24u)]).c.x, !(!(!vec3<bool>(arg_2.b, true, true))), 182f), true, arg_2);
    return vec4<f32>(global1.d, arg_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-378f * 1598f)), -1587f)) - 1045f), var_0.a.x);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<i32>) -> vec4<f32> {
    global3 = array<vec3<f32>, 22>();
    global3 = array<vec3<f32>, 22>();
    global2 = array<Struct_1, 9>();
    global3 = array<vec3<f32>, 22>();
    let var_0 = global2[_wgslsmith_index_u32(60887u, 9u)];
    return _wgslsmith_f_op_vec4_f32(func_5(max(arg_1.x >> (arg_0.x % 32u), arg_1.x), func_4(global0[_wgslsmith_index_u32(max(~4294967295u, ~42699u) | u_input.b, 24u)], global2[_wgslsmith_index_u32(reverseBits(~1u), 9u)], var_0.c.x && (global1.c.x || func_2(arg_1.yz, Struct_1(vec4<f32>(-1250f, var_0.a.x, var_0.d, global1.d), global1.c.x, var_0.c, var_0.d), Struct_1(global1.a, true, var_0.c, -1275f), var_0.a.x)), global2[_wgslsmith_index_u32(~9346u, 9u)]), func_4(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.a.x, 595f, 275f, global1.a.x), var_0.a), vec4<f32>(1000f, var_0.d, global1.d, var_0.a.x)), all(vec2<bool>(true, false)), !select(vec3<bool>(global1.b, global1.b, global1.b), vec3<bool>(false, global1.b, false), vec3<bool>(global1.c.x, var_0.b, var_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d))), global2[_wgslsmith_index_u32(~reverseBits(_wgslsmith_sub_u32(u_input.b, 38109u)), 9u)], !(_wgslsmith_mult_i32(arg_1.x, arg_1.x) <= _wgslsmith_sub_i32(arg_1.x, arg_1.x)), global0[_wgslsmith_index_u32(~(~4294967295u) & _wgslsmith_div_u32(_wgslsmith_sub_u32(7693u, arg_0.x), ~100984u), 24u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(func_1(~((u_input.a | u_input.d) | u_input.d), vec3<i32>(countOneBits(1i), ~abs(-2147483647i), _wgslsmith_mult_i32(0i, firstTrailingBit(-9518i))))), all(!vec4<bool>(global1.c.x, global1.b, global1.c.x, !global1.c.x)), global1.c, global1.d);
    let var_1 = vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, 10969u), 1u, ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.b, u_input.b, u_input.c, u_input.c), vec4<u32>(18095u, 71409u, u_input.a.x, u_input.a.x), vec4<bool>(var_0.c.x, global1.c.x, false, global1.b)), countOneBits(~vec4<u32>(0u, u_input.c, u_input.a.x, 0u))));
    var var_2 = var_0.b;
    var var_3 = var_0.d;
    let var_4 = func_4(func_4(global0[_wgslsmith_index_u32(~(firstTrailingBit(7586u) << (_wgslsmith_div_u32(0u, u_input.d.x) % 32u)), 24u)], func_4(var_0, Struct_1(vec4<f32>(104f, global1.a.x, global1.d, var_0.a.x), true, select(var_0.c, global1.c, false), -598f), var_0.c.x & true, func_4(global2[_wgslsmith_index_u32(~var_1.x, 9u)], func_4(Struct_1(global1.a, false, vec3<bool>(var_0.b, var_0.c.x, var_0.c.x), 279f), global2[_wgslsmith_index_u32(12033u, 9u)], false, Struct_1(global1.a, true, vec3<bool>(true, var_0.b, false), global1.d)), all(var_0.c.xx), Struct_1(vec4<f32>(global1.d, global1.d, var_0.a.x, 1426f), global1.c.x, global1.c, global1.d))), true, global0[_wgslsmith_index_u32(119858u, 24u)]), global2[_wgslsmith_index_u32(var_1.x, 9u)], true, func_4(var_0, Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_1(var_1.yx, vec3<i32>(-6634i, -32425i, 3375i))))), !func_4(var_0, global2[_wgslsmith_index_u32(u_input.c, 9u)], global1.b, Struct_1(vec4<f32>(var_0.a.x, 1814f, var_0.d, -434f), global1.b, var_0.c, var_0.a.x)).b, var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d - var_0.d) * _wgslsmith_f_op_f32(2024f + -1596f))), true, func_4(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d, 1000f, 271f, var_0.a.x)), false || var_0.c.x, global1.c, _wgslsmith_f_op_f32(select(global1.d, var_0.d, true))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d, 744f, 699f, -1000f) * global1.a), any(vec3<bool>(false, false, false)), var_0.c, 1f), func_2(vec2<i32>(-31893i, 1i) << (vec2<u32>(4294967295u, var_1.x) % vec2<u32>(32u)), Struct_1(vec4<f32>(global1.a.x, global1.d, 2096f, var_0.a.x), true, global1.c, 1374f), Struct_1(vec4<f32>(var_0.d, var_0.a.x, -1298f, 634f), global1.b, var_0.c, var_0.d), _wgslsmith_f_op_f32(-var_0.a.x)), Struct_1(var_0.a, true, global1.c, var_0.a.x))));
    global0 = array<Struct_1, 24>();
    global0 = array<Struct_1, 24>();
    var var_5 = Struct_1(_wgslsmith_f_op_vec4_f32(func_1(~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.x, u_input.c), vec2<u32>(504u, var_1.x) ^ var_1.xy, ~vec2<u32>(u_input.c, 4294967295u)), _wgslsmith_mod_vec3_i32(abs(select(vec3<i32>(36061i, -2147483647i, -61835i), vec3<i32>(-1i, 2147483647i, 1i), true)), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 2147483647i, 34738i), vec3<i32>(0i, 6036i, -59689i))))), any(vec3<bool>(true, !global1.c.x, true)), select(vec3<bool>(!(!global1.b), func_2(~vec2<i32>(1i, 39261i), Struct_1(var_0.a, var_4.c.x, var_0.c, -548f), func_4(Struct_1(global1.a, false, vec3<bool>(var_4.c.x, var_0.b, global1.b), 1175f), Struct_1(global1.a, var_0.b, vec3<bool>(true, false, global1.c.x), 1484f), false, global0[_wgslsmith_index_u32(4294967295u, 24u)]), global1.d), true), vec3<bool>(any(vec2<bool>(var_0.b, false)), any(!vec4<bool>(false, var_0.b, false, global1.b)), func_2(-vec2<i32>(2147483647i, -83478i), func_4(var_0, Struct_1(vec4<f32>(var_4.d, global1.a.x, global1.a.x, -1191f), var_0.b, var_0.c, 517f), false, var_0), func_4(global0[_wgslsmith_index_u32(1u, 24u)], Struct_1(vec4<f32>(-772f, var_4.d, -1000f, 676f), false, vec3<bool>(true, global1.c.x, var_0.c.x), global1.d), var_4.b, Struct_1(var_4.a, true, vec3<bool>(var_4.b, true, false), var_0.d)), _wgslsmith_f_op_vec4_f32(func_5(26964i, Struct_1(var_4.a, global1.c.x, global1.c, -405f), Struct_1(vec4<f32>(-105f, var_0.d, 139f, var_0.d), false, var_4.c, var_0.d))).x)), var_4.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.d)) * _wgslsmith_f_op_f32(f32(-1f) * -2297f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(-41640i, -97299i, 2147483647i), min(vec3<i32>(-14110i, 97767i, 43128i), vec3<i32>(1i, 24160i, -1i))), -27059i, 2568i, _wgslsmith_dot_vec3_i32(max(vec3<i32>(2147483647i, 1i, -11706i), vec3<i32>(88675i, 0i, 65686i)), -vec3<i32>(2147483647i, 0i, 17506i))), vec4<i32>(34798i, 2147483647i, ~(~45163i), 39405i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1123f, -648f))) * -1144f), -29440i, vec3<i32>(1i, 0i, _wgslsmith_mod_i32(~(~43504i), select(40416i, 0i, var_5.c.x) >> (_wgslsmith_dot_vec3_u32(var_1, var_1) % 32u))), var_1.x);
}

