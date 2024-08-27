struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 20> = array<vec4<u32>, 20>(vec4<u32>(24154u, 0u, 3507u, 1u), vec4<u32>(1u, 0u, 4415u, 4294967295u), vec4<u32>(1u, 4294967295u, 56547u, 4294967295u), vec4<u32>(0u, 4294967295u, 10890u, 30793u), vec4<u32>(16322u, 4294967295u, 51756u, 4294967295u), vec4<u32>(1u, 38306u, 0u, 4294967295u), vec4<u32>(1u, 1u, 95216u, 4294967295u), vec4<u32>(13525u, 39634u, 4294967295u, 9032u), vec4<u32>(85798u, 34512u, 9895u, 46663u), vec4<u32>(8931u, 0u, 28338u, 0u), vec4<u32>(1u, 52021u, 25063u, 1021u), vec4<u32>(40063u, 43916u, 1u, 5282u), vec4<u32>(4294967295u, 20439u, 0u, 32158u), vec4<u32>(1u, 0u, 0u, 45252u), vec4<u32>(4294967295u, 24617u, 4373u, 0u), vec4<u32>(0u, 51260u, 149u, 47839u), vec4<u32>(4294967295u, 1u, 1u, 1u), vec4<u32>(4294967295u, 0u, 7312u, 1u), vec4<u32>(35513u, 11803u, 4294967295u, 24464u), vec4<u32>(6891u, 11255u, 0u, 4294967295u));

var<private> global1: vec2<f32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(global1.x, Struct_1(vec4<i32>(665i, _wgslsmith_clamp_i32(-u_input.c.x, i32(-1i) * -2147483647i, u_input.e.x), 2606i, -2147483647i)), Struct_1(select(abs(vec4<i32>(1i, -2147483647i, u_input.e.x, u_input.e.x)), abs(vec4<i32>(-16355i, -1i, -22738i, u_input.a) | vec4<i32>(u_input.c.x, -1i, -40948i, u_input.e.x)), true)), Struct_1(-vec4<i32>(u_input.c.x, ~1i, max(u_input.c.x, 15647i), _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(-28234i, u_input.e.x, u_input.a, u_input.c.x)))));
    let var_1 = Struct_2(global1.x, var_0.b, var_0.b, Struct_1(_wgslsmith_div_vec4_i32(var_0.b.a, -(var_0.d.a & vec4<i32>(var_0.b.a.x, 54562i, 2147483647i, u_input.e.x)))));
    let var_2 = Struct_1(u_input.c);
    let var_3 = var_0.c;
    let var_4 = vec3<u32>(0u, 0u, ~(~u_input.b.x));
    return _wgslsmith_mod_u32(1u, ~firstTrailingBit(~(~76391u)));
}

fn func_4(arg_0: vec2<u32>, arg_1: bool) -> f32 {
    let var_0 = Struct_1(u_input.c);
    let var_1 = var_0;
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.x, -345f), vec2<f32>(248f, global1.x), false)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.x, -978f), vec2<f32>(global1.x, global1.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, global1.x), vec2<f32>(global1.x, 1408f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)))), select(!select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1)), !vec2<bool>(false, arg_1), ~45077u <= u_input.d.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-global1.x)), 1000f))));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec2<u32>(_wgslsmith_mult_u32(19607u, 51588u), func_3()), true))) - -738f);
    var var_1 = Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(i32(-1i) * -51136i, ~abs(5233i), abs(u_input.e.x), -3381i), select(vec4<i32>(u_input.c.x << (81063u % 32u), _wgslsmith_clamp_i32(0i, u_input.e.x, -43348i), u_input.e.x, -1i ^ u_input.a), u_input.c, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true))))));
    let var_2 = _wgslsmith_f_op_f32(max(global1.x, global1.x));
    let var_3 = Struct_2(global1.x, Struct_1(_wgslsmith_mult_vec4_i32(~u_input.c, u_input.c) ^ vec4<i32>(~34756i, u_input.e.x, select(var_1.a.x, var_1.a.x, true), ~u_input.e.x)), Struct_1(var_1.a), Struct_1(vec4<i32>(u_input.a, _wgslsmith_add_i32(countOneBits(-24610i), ~(-17569i)), u_input.e.x, 4633i)));
    var var_4 = Struct_1(~(-firstLeadingBit(abs(vec4<i32>(u_input.a, var_3.d.a.x, -1i, 24578i)))));
    return true;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> f32 {
    var var_0 = !func_2() | true;
    var_0 = true;
    global0 = array<vec4<u32>, 20>();
    global0 = array<vec4<u32>, 20>();
    var_0 = select(false, !all(vec4<bool>(all(vec4<bool>(true, true, false, true)), false, true, true)), true);
    return -339f;
}

fn func_5(arg_0: u32, arg_1: vec3<bool>, arg_2: f32, arg_3: Struct_3) -> i32 {
    let var_0 = Struct_2(arg_2, Struct_1(~vec4<i32>(-10034i, _wgslsmith_mod_i32(2147483647i, u_input.e.x), abs(10681i), abs(u_input.e.x))), Struct_1(-(vec4<i32>(-40640i, u_input.c.x, 1i, u_input.c.x) & abs(u_input.c))), Struct_1(min(vec4<i32>(u_input.e.x, countOneBits(u_input.c.x), -2147483647i, 1i), u_input.c)));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(210f, arg_2)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.a)))), vec2<f32>(-1549f, -1283f))));
    global0 = array<vec4<u32>, 20>();
    var var_1 = (~_wgslsmith_mod_i32(min(u_input.e.x, 1i), var_0.c.a.x >> (4294967295u % 32u)) >> (~(arg_0 >> (~arg_0 % 32u)) % 32u)) << (~54513u % 32u);
    var var_2 = -1243f;
    return ~11995i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    let var_1 = Struct_1(vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -22351i), vec2<i32>(u_input.e.x, 38468i)) >> (u_input.d.x % 32u), max(50151i, u_input.a), abs(-10805i), func_5(abs(select(46447u, u_input.b.x, false)), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(global1.x + -1870f), Struct_1(vec4<i32>(-2680i, u_input.a, u_input.e.x, u_input.a)), global1.x)), Struct_3(true))));
    global1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(global1.x, -596f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1998f, 1000f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 2228f)))))));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-632f, global1.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 863f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2061f, global1.x)))) - vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(vec2<u32>(42524u, u_input.b.x), true)), _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.x))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -272f))))));
    global1 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.x, global1.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(1020f, 1168f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) - vec2<f32>(-1000f, global1.x)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(357f, global1.x)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 1848f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1537f, -1869f)))))));
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(156f, _wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(246f * -570f))), _wgslsmith_f_op_f32(sign(1485f))))) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))))));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global1.x, var_1, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.x))))) * global1.x), _wgslsmith_f_op_f32(-global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(u_input.d.xx, ~vec2<u32>(33236u | u_input.b.x, ~0u)), u_input.d.x);
}

