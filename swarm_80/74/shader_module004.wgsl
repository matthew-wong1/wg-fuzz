struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec3<u32>(4294967295u, 27822u, 4294967295u), true), Struct_1(vec3<u32>(656u, 30105u, 9614u), false), Struct_1(vec3<u32>(99649u, 4294967295u, 94395u), false), Struct_1(vec3<u32>(1u, 0u, 5794u), true));

var<private> global1: bool = false;

var<private> global2: array<vec3<i32>, 19> = array<vec3<i32>, 19>(vec3<i32>(-959i, -1i, -47028i), vec3<i32>(-1i, 14758i, 41394i), vec3<i32>(1i, 0i, 0i), vec3<i32>(18339i, 0i, -54679i), vec3<i32>(1i, 1i, -1i), vec3<i32>(2147483647i, 0i, 1i), vec3<i32>(2147483647i, i32(-2147483648), -1i), vec3<i32>(-3793i, 22025i, i32(-2147483648)), vec3<i32>(-35941i, 6607i, -41044i), vec3<i32>(0i, i32(-2147483648), 33727i), vec3<i32>(i32(-2147483648), 0i, -1418i), vec3<i32>(12775i, 2147483647i, -29882i), vec3<i32>(42442i, 5540i, i32(-2147483648)), vec3<i32>(-5084i, 2147483647i, 0i), vec3<i32>(17930i, 24628i, i32(-2147483648)), vec3<i32>(-1i, 2147483647i, 2147483647i), vec3<i32>(-46117i, -1i, 18744i), vec3<i32>(-49386i, -13120i, -1821i), vec3<i32>(21266i, 1i, 31757i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: u32) -> vec2<bool> {
    var var_0 = min(arg_1.a.a, vec3<u32>(firstLeadingBit(u_input.b), 22162u, _wgslsmith_mult_u32(arg_0.a.a.a.x, min(arg_1.a.a.x, u_input.a.x))));
    return !(!select(select(vec2<bool>(true, true), select(vec2<bool>(arg_1.a.b, false), vec2<bool>(true, arg_0.a.a.b), arg_1.a.b), true), vec2<bool>(all(vec2<bool>(false, arg_1.a.b)), select(arg_0.d.b, true, arg_0.c.a.b)), !arg_1.a.b));
}

fn func_2(arg_0: vec4<bool>) -> f32 {
    var var_0 = Struct_3(Struct_2(global0[_wgslsmith_index_u32(~u_input.d, 4u)]), 1u, Struct_2(Struct_1(u_input.a.wwz, false)), Struct_1(u_input.a.zyz, arg_0.x));
    var var_1 = select(vec3<bool>(all(arg_0.xyz), any(select(arg_0.yx, arg_0.xy, 1u > var_0.a.a.a.x)), true), !arg_0.xxw, vec3<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) <= _wgslsmith_f_op_f32(-1192f * _wgslsmith_f_op_f32(trunc(834f))), any(func_3(Struct_3(var_0.a, u_input.d, Struct_2(Struct_1(vec3<u32>(0u, u_input.b, u_input.a.x), arg_0.x)), global0[_wgslsmith_index_u32(1u, 4u)]), var_0.c, 0u)) & func_3(Struct_3(Struct_2(var_0.c.a), 11193u, Struct_2(Struct_1(vec3<u32>(1u, u_input.a.x, var_0.d.a.x), false)), global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), var_0.c, _wgslsmith_dot_vec3_u32(u_input.a.yww, u_input.a.xxy)).x, true));
    var_0 = Struct_3(var_0.c, 1u, Struct_2(global0[_wgslsmith_index_u32(min(max(var_0.b, u_input.a.x) << (0u % 32u), ~u_input.d), 4u)]), var_0.c.a);
    return 231f;
}

fn func_4(arg_0: f32, arg_1: bool) -> f32 {
    var var_0 = 486f;
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 4u)]);
    var var_2 = 0i;
    var var_3 = _wgslsmith_mult_vec3_u32(~u_input.a.zwy, var_1.a.a);
    global1 = (((u_input.e >> (1u % 32u)) & _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.c, u_input.e), 1i)) ^ 1i) < ~(~2147483647i);
    return arg_0;
}

fn func_1(arg_0: u32) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1650f) - 139f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1233f, -196f))), _wgslsmith_f_op_f32(func_2(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), false))), any(vec3<bool>(false, true, true))))), true));
    global2 = array<vec3<i32>, 19>();
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(abs(_wgslsmith_add_u32(u_input.d, u_input.a.x)), countOneBits(29256u)), 28770u, arg_0), ~(~arg_0));
    let var_2 = true;
    global0 = array<Struct_1, 4>();
    return _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_0)), _wgslsmith_f_op_f32(-var_0), false && var_2)), 246f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_0, -1133f)), -496f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1419f, 1034f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0, var_0)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.b < 38492u;
    var var_0 = _wgslsmith_f_op_vec2_f32(func_1(~5343u));
    var var_1 = ~countOneBits(select(vec4<i32>(u_input.c, 0i, reverseBits(u_input.e), u_input.c | u_input.e), max(vec4<i32>(u_input.c, u_input.e, -1i, u_input.c), vec4<i32>(u_input.e, u_input.c, u_input.e, u_input.c)), vec4<bool>(true, true, any(vec2<bool>(true, true)), select(false, true, true))));
    global2 = array<vec3<i32>, 19>();
    global0 = array<Struct_1, 4>();
    var var_2 = -var_1.zwy;
    var_0 = _wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_mod_u32(~0u, 29615u ^ min(u_input.a.x, abs(u_input.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec4_u32(vec4<u32>(~29004u, ~0u, ~u_input.d, firstLeadingBit(u_input.d)), reverseBits(vec4<u32>(22079u, 0u, u_input.b, 14472u)) << (vec4<u32>(u_input.b, 4294967295u, 1u, 5216u) % vec4<u32>(32u)), max(~vec4<u32>(u_input.b, 92023u, u_input.d, u_input.a.x), u_input.a)), abs(_wgslsmith_sub_i32(var_2.x, var_2.x)), u_input.a, firstTrailingBit(_wgslsmith_mult_i32(firstTrailingBit(var_1.x), -1i)));
}

