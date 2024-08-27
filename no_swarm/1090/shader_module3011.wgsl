struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: bool,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<bool>,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<i32, 29> = array<i32, 29>(2147483647i, 21267i, -1i, 1i, -31352i, 4918i, i32(-2147483648), i32(-2147483648), -78244i, 1i, 8036i, 4117i, 1i, 0i, -1i, -2283i, i32(-2147483648), -11561i, 22177i, i32(-2147483648), -1i, 1i, -14524i, -67836i, 6888i, i32(-2147483648), 2147483647i, 4027i, 2147483647i);

var<private> global2: vec4<bool>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> i32 {
    let var_0 = -1000f;
    global0 = vec3<bool>(all(select(select(!vec4<bool>(global2.x, global2.x, global2.x, false), !vec4<bool>(global0.x, true, global2.x, global0.x), !vec4<bool>(global2.x, true, global0.x, true)), !vec4<bool>(true, false, global0.x, global2.x), max(u_input.c, 4294967295u) != u_input.d)), global0.x, true);
    var var_1 = firstLeadingBit(1u);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0, var_0, -120f, var_0))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, 866f, -585f, 369f), vec4<f32>(var_0, var_0, -1000f, 799f), vec4<bool>(global0.x, global0.x, global2.x, false))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0, -661f, -139f, var_0)))))) * _wgslsmith_div_vec4_f32(vec4<f32>(var_0, var_0, var_0, var_0), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -785f), _wgslsmith_f_op_f32(1691f * -1000f), _wgslsmith_f_op_f32(ceil(274f)), _wgslsmith_f_op_f32(trunc(1000f))))));
    let var_3 = !(!(!select(select(vec4<bool>(true, global2.x, global2.x, false), vec4<bool>(false, global0.x, false, false), global0.x), select(vec4<bool>(false, global2.x, global0.x, true), vec4<bool>(global0.x, true, global2.x, global2.x), vec4<bool>(false, global2.x, global2.x, false)), !vec4<bool>(global2.x, false, false, false))));
    return _wgslsmith_mult_i32(firstLeadingBit(_wgslsmith_dot_vec4_i32(select(~vec4<i32>(1i, -25221i, 2147483647i, global1[_wgslsmith_index_u32(u_input.d, 29u)]), ~vec4<i32>(-15311i, 63958i, u_input.b, -10966i), !var_3), vec4<i32>(~(-39877i), i32(-1i) * -10502i, _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(8123u, 29u)], u_input.b, 6771i), -2174i))), u_input.b);
}

fn func_4(arg_0: f32, arg_1: Struct_4) -> bool {
    var var_0 = (i32(-1i) * -(-2147483647i | ~global1[_wgslsmith_index_u32(4294967295u, 29u)])) >> (_wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(49369u, 1u, 1u, 9858u), vec4<u32>(32929u, 0u, 1u, u_input.a)), 4294967295u) % 32u);
    return global2.x;
}

fn func_2() -> Struct_5 {
    global0 = global2.zwx;
    global2 = !select(!vec4<bool>(false, true, global2.x && false, !global0.x), !select(select(vec4<bool>(true, false, global0.x, global2.x), vec4<bool>(global2.x, true, global2.x, global0.x), vec4<bool>(false, global0.x, global2.x, global2.x)), vec4<bool>(global0.x, true, true, true), select(vec4<bool>(true, false, false, global2.x), vec4<bool>(global2.x, true, false, true), vec4<bool>(true, false, true, false))), vec4<bool>(true, global2.x, any(global2.xww), true));
    global2 = vec4<bool>(global2.x & (u_input.c <= _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.c, u_input.c), select(u_input.a, u_input.a, false))), 3730u != (u_input.a >> (u_input.a % 32u)), any(vec2<bool>(select(global2.x, select(false, true, false), true), false)), func_4(1247f, Struct_4(Struct_2(func_3()), 60782i, !any(global0.yz), Struct_2(u_input.b))));
    global1 = array<i32, 29>();
    global0 = !select(vec3<bool>(false, global0.x, func_4(_wgslsmith_f_op_f32(trunc(-394f)), Struct_4(Struct_2(global1[_wgslsmith_index_u32(4294967295u, 29u)]), u_input.b, true, Struct_2(594i)))), !vec3<bool>(all(global2.wyx), global0.x, global2.x), !(u_input.d > ~4294967295u));
    return Struct_5(vec4<bool>(global0.x, global2.x, all(!select(vec4<bool>(global0.x, true, true, global2.x), vec4<bool>(global0.x, global2.x, global2.x, global0.x), vec4<bool>(global0.x, true, true, false))), global2.x), u_input.c, Struct_2(firstLeadingBit(_wgslsmith_mod_i32(50314i, -32418i))));
}

fn func_1() -> vec4<bool> {
    var var_0 = func_2();
    var var_1 = var_0.c;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -990f) * _wgslsmith_f_op_f32(f32(-1f) * -593f)), -1589f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1000f, 1164f), -540f))));
    let var_3 = global0.x;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -110f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + var_2.x) - var_2.x))));
    return select(!select(var_0.a, vec4<bool>(var_0.a.x, u_input.d <= var_0.b, !global2.x, global1[_wgslsmith_index_u32(4294967295u, 29u)] != 0i), var_2.x >= _wgslsmith_f_op_f32(var_2.x + var_2.x)), var_0.a, !vec4<bool>(var_0.a.x, global0.x, global2.x, !global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = select(select(!(!select(vec4<bool>(true, false, global0.x, global2.x), vec4<bool>(global2.x, true, global2.x, true), false)), select(!vec4<bool>(false, true, false, global0.x), select(!vec4<bool>(global0.x, global2.x, true, global0.x), func_1(), vec4<bool>(false, global2.x, true, global0.x)), false), vec4<bool>(global0.x, global2.x, true, false)), !func_2().a, ~(~(35211u ^ u_input.a)) <= ~(38191u << (_wgslsmith_sub_u32(u_input.d, 1u) % 32u)));
    let var_0 = Struct_1(~select(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, u_input.c), ~vec2<u32>(u_input.c, u_input.a)), vec2<u32>(countOneBits(1u), _wgslsmith_mult_u32(34251u, u_input.d)), true));
    global0 = global2.yzz;
    let var_1 = Struct_4(func_2().c, _wgslsmith_div_i32(min(max(2626i ^ global1[_wgslsmith_index_u32(24452u, 29u)], 2767i), u_input.b), _wgslsmith_div_i32(u_input.b, -u_input.b)), true, func_2().c);
    var var_2 = Struct_3(var_1.a, global2.zzy);
    let var_3 = Struct_5(vec4<bool>(!any(func_1().xx), all(!(!vec4<bool>(true, false, var_2.b.x, global2.x))), func_4(_wgslsmith_f_op_f32(sign(441f)), var_1), !select(!var_1.c, true, true)), u_input.a, func_2().c);
    let var_4 = 30280u;
    global1 = array<i32, 29>();
    let var_5 = vec3<i32>(~(-var_2.a.a) & _wgslsmith_sub_i32(28819i, _wgslsmith_mod_i32(-35468i | var_2.a.a, 2147483647i)), 1i, _wgslsmith_add_i32(var_1.b, -(u_input.b >> (var_0.a.x % 32u))) >> (_wgslsmith_mod_u32(~(~8616u), 20505u) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_0.a.x, max(~countOneBits(1u), 1u), var_0.a.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_0.a.x, var_4, var_3.b, 29352u)), vec4<u32>(var_0.a.x, 1u, 20716u, u_input.a)), 0u)), -996f, var_5.zz);
}

