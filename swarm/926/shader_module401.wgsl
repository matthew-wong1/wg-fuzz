struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29>;

var<private> global1: array<f32, 4> = array<f32, 4>(1900f, -1317f, 869f, 934f);

var<private> global2: u32;

var<private> global3: array<u32, 23>;

var<private> global4: array<vec2<i32>, 28>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = select(select(select(select(vec2<bool>(arg_1.c, false), vec2<bool>(arg_0.c, arg_1.c), vec2<bool>(true, false)), !vec2<bool>(arg_1.c, arg_0.c), false), select(vec2<bool>(arg_0.c, false), select(vec2<bool>(false, arg_0.c), select(vec2<bool>(false, arg_1.c), vec2<bool>(true, arg_0.c), vec2<bool>(arg_1.c, arg_1.c)), true), select(select(vec2<bool>(arg_0.c, true), vec2<bool>(arg_0.c, true), vec2<bool>(arg_0.c, arg_1.c)), !vec2<bool>(arg_1.c, arg_0.c), vec2<bool>(true, true))), arg_1.b > _wgslsmith_sub_u32(~u_input.c.x, ~arg_0.b)), vec2<bool>(false, true), select(select(vec2<bool>(arg_0.c, true), !vec2<bool>(arg_1.c, false), arg_1.c), !vec2<bool>(!arg_1.c, arg_0.c), vec2<bool>(!any(vec3<bool>(true, arg_0.c, arg_0.c)), true)));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1171f))));
    var var_2 = countOneBits(-57931i);
    let var_3 = true;
    let var_4 = -12805i;
    return global3[_wgslsmith_index_u32(0u, 23u)];
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~0u, ~global3[_wgslsmith_index_u32(0u, 23u)]), 29u)]), 4294967295u, any(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), true)));
    let var_1 = ~(~_wgslsmith_clamp_vec2_u32(~u_input.c.wy, ~u_input.d, _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.d, u_input.d), u_input.d)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~var_0.b, 23u)], 4u)] + global1[_wgslsmith_index_u32(1u, 4u)]) * _wgslsmith_f_op_f32(select(-711f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.b, 23u)], 29u)]), u_input.e.x >= -17955i))) - 332f), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -510f) - var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(0u, 23u)], u_input.d.x)), 4u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) - var_0.a))));
    var var_3 = 0u;
    global2 = _wgslsmith_add_u32(_wgslsmith_add_u32(2905u, _wgslsmith_dot_vec2_u32(var_1, ~u_input.c.xz)), ~func_3(var_0, Struct_1(573f, var_0.b, false))) >> (_wgslsmith_add_u32(_wgslsmith_sub_u32(~5424u, 21554u) | func_3(Struct_1(var_2.x, 3995u, true), Struct_1(var_0.a, 86805u, var_0.c)), 0u) % 32u);
    return Struct_1(-1788f, 31642u, var_0.c != true);
}

fn func_1() -> u32 {
    var var_0 = !select(!vec2<bool>(all(vec2<bool>(false, true)), true), vec2<bool>(false, all(vec4<bool>(true, false, false, true))), vec2<bool>(true, true));
    var var_1 = func_2();
    let var_2 = func_2();
    let var_3 = !select(select(select(vec3<bool>(false, var_1.c, false), vec3<bool>(false, var_0.x, false), all(vec4<bool>(var_2.c, var_1.c, true, true))), select(!vec3<bool>(var_1.c, var_1.c, var_0.x), vec3<bool>(true, true, var_0.x), u_input.e.x >= u_input.a.x), var_2.c), vec3<bool>(var_1.c, func_2().c, !(!var_2.c)), vec3<bool>(all(select(vec2<bool>(false, var_1.c), vec2<bool>(false, var_1.c), vec2<bool>(var_0.x, true))), true, true));
    var_0 = !(!select(var_3.yz, var_3.zx, !var_3.zx));
    return var_1.b >> (54911u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 29>();
    global2 = _wgslsmith_mult_u32(~global3[_wgslsmith_index_u32(77746u, 23u)], min(func_1(), u_input.d.x));
    let var_0 = -vec4<i32>(~(-u_input.e.x), _wgslsmith_clamp_i32(2147483647i, u_input.a.x, ~2147483647i), u_input.e.x, 61288i);
    let var_1 = vec4<i32>(_wgslsmith_sub_i32(30670i | ~_wgslsmith_div_i32(u_input.e.x, 79i), select(-1i, u_input.a.x, all(vec4<bool>(true, true, true, true)))), _wgslsmith_sub_i32(var_0.x, _wgslsmith_mod_i32(~1i, var_0.x)), -abs(u_input.e.x), -(i32(-1i) * -u_input.a.x));
    let var_2 = u_input.d.x;
    let var_3 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(50169u, 29u)]);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(239u, 23u)], 29u)], _wgslsmith_f_op_f32(-217f - _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(12672u, 29u)]))), func_2().c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(45152u, 29u)]))), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, 40206i, firstLeadingBit(reverseBits(var_0.x))), countOneBits(vec3<i32>(~var_1.x, -var_1.x, _wgslsmith_mult_i32(-1i, u_input.a.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(28360u, 4u)], global1[_wgslsmith_index_u32(4922u, 4u)], var_3, var_3) + vec4<f32>(var_3, 259f, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 23u)], 23u)], 29u)], global0[_wgslsmith_index_u32(0u, 29u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(11059u, 29u)], 749f, -329f, 428f)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(588f + var_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(534f)) + global0[_wgslsmith_index_u32(~43493u, 29u)]), _wgslsmith_f_op_f32(f32(-1f) * -576f), _wgslsmith_f_op_f32(step(1144f, global0[_wgslsmith_index_u32(u_input.c.x, 29u)])))));
}

