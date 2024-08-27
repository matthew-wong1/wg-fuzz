struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool = false;

var<private> global2: bool = false;

var<private> global3: Struct_1 = Struct_1(309f, vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<i32>(29484i, -20963i, 1i, 27373i));

var<private> global4: array<vec3<i32>, 14> = array<vec3<i32>, 14>(vec3<i32>(-1i, 2147483647i, 52736i), vec3<i32>(-44255i, -45240i, 68626i), vec3<i32>(-1i, 24363i, 79447i), vec3<i32>(0i, -2638i, -1i), vec3<i32>(-5617i, 58192i, -31514i), vec3<i32>(1i, -670i, i32(-2147483648)), vec3<i32>(-246i, 20154i, -1i), vec3<i32>(0i, i32(-2147483648), 2147483647i), vec3<i32>(1i, i32(-2147483648), 33531i), vec3<i32>(-22074i, -30341i, 2147483647i), vec3<i32>(i32(-2147483648), 46136i, 51162i), vec3<i32>(0i, 0i, 29020i), vec3<i32>(-18467i, i32(-2147483648), -7101i), vec3<i32>(2147483647i, 21639i, 1i));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<bool>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(440f))), -472f, any(global0.b.yz) != false))));
    global2 = !any(select(select(vec3<bool>(global3.b.x, false, true), vec3<bool>(global3.b.x, false, global0.b.x), vec3<bool>(true, global0.b.x, global3.b.x)), select(vec3<bool>(global3.c.x, false, global3.c.x), global0.b.wzy, global0.b.xzx), global0.b.x)) || true;
    global4 = array<vec3<i32>, 14>();
    global2 = global0.b.x;
    var var_1 = vec4<u32>(u_input.b, 1u, ~_wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_add_u32(3113u, 54929u)), u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(16857u, u_input.a.x, u_input.d.x, u_input.b), (_wgslsmith_add_vec4_u32(vec4<u32>(0u, 37632u, u_input.b, u_input.b), vec4<u32>(33449u, u_input.a.x, u_input.a.x, 1u)) & _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.d.x, u_input.d.x, 69860u), vec4<u32>(u_input.a.x, 42508u, 1u, u_input.a.x))) << (_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, 1u, 38545u), vec4<u32>(u_input.d.x, u_input.b, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, 0u, u_input.d.x, 67387u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, 36894u, 10639u, u_input.b), vec4<u32>(u_input.d.x, 0u, u_input.d.x, 0u))) % vec4<u32>(32u))));
    return vec4<bool>(any(vec3<bool>(!global0.b.x, arg_0.x, any(!global0.c))), arg_0.x, !(_wgslsmith_div_f32(226f, _wgslsmith_f_op_f32(-global0.a)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1197f, 1711f, arg_0.x)) + _wgslsmith_f_op_f32(max(-1400f, global3.a)))), arg_0.x || arg_0.x);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(global0.a, func_3(vec2<bool>(!all(global3.b), select(true, global0.c.x, global0.c.x | global0.c.x))), select(vec4<bool>(global0.c.x, func_3(select(vec2<bool>(global3.c.x, true), global3.b.xx, vec2<bool>(global0.c.x, global0.c.x))).x, false, global0.b.x), !select(global3.b, !global3.b, !global0.b.x), false), -(~vec4<i32>(~(-35499i), u_input.c, _wgslsmith_dot_vec3_i32(global4[_wgslsmith_index_u32(u_input.d.x, 14u)], global0.d.yxz), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global0.d.x, global0.d.x, global0.d.x), global0.d))));
    global3 = var_0;
    let var_1 = var_0;
    global2 = var_1.c.x;
    return var_1;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: u32) -> Struct_1 {
    let var_0 = func_2();
    global2 = !(!global3.c.x & func_2().c.x);
    let var_1 = Struct_1(func_2().a, !var_0.b, !vec4<bool>(true, var_0.c.x, !var_0.b.x | (arg_0 <= 9246u), false), select(countOneBits(global3.d >> (vec4<u32>(4294967295u, arg_2, 47800u, arg_1) % vec4<u32>(32u))) << (_wgslsmith_div_vec4_u32(vec4<u32>(arg_1, arg_2, 58616u, arg_0), abs(vec4<u32>(39544u, arg_0, 39824u, 4294967295u))) % vec4<u32>(32u)), global0.d, !(!global3.b)));
    global0 = func_2();
    let var_2 = var_0.d.x;
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -525f), func_3(vec2<bool>(true, any(vec4<bool>(false, true, true, false)))), global0.c, _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(var_0.d, -global0.d) >> (vec4<u32>(countOneBits(arg_0), arg_2 << (14932u % 32u), arg_1, arg_0) % vec4<u32>(32u)), select(~vec4<i32>(global3.d.x, -2147483647i, 2147483647i, var_0.d.x), firstLeadingBit(-vec4<i32>(global0.d.x, 9800i, -2147483647i, 38795i)), false), vec4<i32>(1i, var_1.d.x, 1i, global3.d.x)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<i32>, arg_3: f32) -> bool {
    return true;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.a), global3.a), func_2().b, !vec4<bool>(!arg_0.b.x | global0.c.x, func_3(!vec2<bool>(arg_0.b.x, true)).x, true, arg_0.b.x | global3.c.x), abs(arg_0.d));
    global1 = !any(var_0.c.zyz);
    global0 = func_1(reverseBits(u_input.d.x), ~_wgslsmith_add_u32(~_wgslsmith_clamp_u32(67186u, 0u, 69426u), _wgslsmith_mult_u32(u_input.d.x, 20945u)), ~(u_input.b & (u_input.a.x >> (~0u % 32u))));
    var var_1 = u_input.d.x;
    global2 = true;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(1f * global3.a);
    var var_1 = ~(abs(-global0.d) ^ vec4<i32>(_wgslsmith_add_i32(global0.d.x, global0.d.x >> (u_input.a.x % 32u)), ~(-1i), -_wgslsmith_mult_i32(-72088i, 0i), -2147483647i));
    var_1 = vec4<i32>(-1i, -max(42974i, _wgslsmith_add_i32(u_input.c, -2147483647i)) ^ global0.d.x, var_1.x, _wgslsmith_mod_i32(abs(56055i), ~_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.d.x, -52600i, 1i), global4[_wgslsmith_index_u32(71967u, 14u)]), ~global0.d.x)));
    let var_2 = -1i;
    let var_3 = func_5(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(var_0, 679f, any(global3.c))), -1039f)), global3.b, !(!global0.b), vec4<i32>(var_1.x, -(global0.d.x >> (4294967295u % 32u)), _wgslsmith_div_i32(2147483647i, -1i), select(-global0.d.x, -global3.d.x, global3.b.x))), vec3<bool>(func_4(func_1(u_input.d.x << (0u % 32u), _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.d.x), u_input.d.x), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.d.x) | u_input.a, u_input.d << (vec3<u32>(22003u, 4294967295u, 85950u) % vec3<u32>(32u))), global4[_wgslsmith_index_u32(u_input.b, 14u)], _wgslsmith_f_op_f32(func_1(6742u, 79271u, 1u).a - _wgslsmith_f_op_f32(-var_0))), true, global3.c.x), vec4<f32>(_wgslsmith_f_op_f32(-1998f + _wgslsmith_f_op_f32(-1194f + _wgslsmith_f_op_f32(global0.a - var_0))), global3.a, _wgslsmith_f_op_f32(exp2(var_0)), _wgslsmith_f_op_f32(global3.a * _wgslsmith_f_op_f32(func_1(5620u, u_input.a.x, u_input.a.x).a + _wgslsmith_f_op_f32(1066f * -580f)))));
    let var_4 = func_2();
    let var_5 = var_3;
    global4 = array<vec3<i32>, 14>();
    let var_6 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-870f, -277f), _wgslsmith_f_op_f32(f32(-1f) * -300f), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-106f - 1188f))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3.a + var_3.a), global0.a, any(vec4<bool>(false, false, var_5.b.x, var_5.b.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1336f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.a) + var_3.a), global3.a)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.yz, func_5(Struct_1(-396f, !vec4<bool>(global0.b.x, false, var_5.c.x, var_4.c.x), vec4<bool>(all(vec4<bool>(true, var_4.b.x, var_3.c.x, false)), var_5.a > 766f, func_2().c.x, true), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, 34150i, var_5.d.x, 17996i), vec4<i32>(var_3.d.x, var_3.d.x, 61955i, 1i))), !select(vec3<bool>(global0.c.x, false, global3.c.x), func_1(4294967295u, 1u, u_input.d.x).b.xyx, !vec3<bool>(var_4.b.x, false, true)), var_6).d, -27174i, ~_wgslsmith_sub_i32(-41064i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(global0.d.x, var_2), var_4.d.yz)));
}

