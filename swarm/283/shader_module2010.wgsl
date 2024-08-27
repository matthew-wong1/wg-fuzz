struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
    e: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: u32) -> f32 {
    let var_0 = arg_0.a.e.x;
    let var_1 = !vec3<bool>(true, !((u_input.b.x > 68466u) && any(vec4<bool>(arg_1.x, true, true, true))), true);
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -706f) - _wgslsmith_f_op_f32(exp2(arg_0.a.e.x))) - 1000f))) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-121f + var_2.a.e.x)), _wgslsmith_f_op_f32(-684f - 959f)))));
    var var_4 = arg_2;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, -679f)) * _wgslsmith_f_op_f32(-var_0)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.e.x, 716f))))) * -470f);
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> bool {
    var var_0 = u_input.a.x;
    var var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-244f - arg_1.a.e.x), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(max(arg_0, var_1.a.e.x)))), arg_1.a.e.x, _wgslsmith_f_op_f32(f32(-1f) * -1049f)) + vec4<f32>(arg_1.a.e.x, _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(var_1.a.a, vec3<i32>(3278i, u_input.d, 28747i), 14852i, 1i, vec4<f32>(327f, -1000f, -1660f, -2430f))), vec2<bool>(true, false), 14975u)), _wgslsmith_f_op_f32(arg_1.a.e.x + arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(820f - _wgslsmith_div_f32(179f, 371f)))), 1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_1, vec2<bool>(true, true), 674u))), var_1.a.e.x)), arg_1.a.e.x)));
    var_1 = Struct_2(var_1.a);
    return !(!any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)))) != (any(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), all(vec4<bool>(true, false, true, false)))) && !(!all(vec3<bool>(true, true, true))));
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: f32) -> i32 {
    let var_0 = arg_1.d.xy;
    let var_1 = !(!vec2<bool>(_wgslsmith_f_op_f32(arg_1.b.e.x * arg_1.a.x) == _wgslsmith_f_op_f32(arg_1.c.e.x - 926f), false));
    var var_2 = arg_1.e;
    var_2 = func_2(_wgslsmith_f_op_f32(-2844f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-221f * -790f) + -850f) + _wgslsmith_f_op_f32(-arg_2))), Struct_2(Struct_1(vec3<i32>(arg_0 & 12895i, ~(-2147483647i), select(u_input.d, -2853i, true)), ~(vec3<i32>(arg_0, -2242i, u_input.d) | arg_1.b.a), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, var_0.x, -1i), max(arg_1.b.b, vec3<i32>(var_0.x, arg_1.b.d, -7506i))), ~var_0.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_1.c.e.x, arg_2, arg_1.c.e.x)))));
    var_2 = all(vec3<bool>(!(arg_1.e || true), arg_1.e, true)) && (54803u != u_input.e);
    return _wgslsmith_div_i32(var_0.x, -27492i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 29187u;
    let var_1 = Struct_4(vec2<bool>(true, true), _wgslsmith_add_u32(0u ^ u_input.a.x, _wgslsmith_mod_u32(u_input.c.x, 30246u)));
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(150f, -1544f, -1000f), vec3<f32>(640f, 1116f, -605f), vec3<bool>(var_1.a.x, true, var_1.a.x)))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(694f, -1383f, 1421f))))))), Struct_1(abs(vec3<i32>(u_input.d, 6850i, 1i)) & select(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.d, u_input.d, u_input.d), vec3<i32>(0i, u_input.d, -21769i)), max(vec3<i32>(977i, 0i, -29756i), vec3<i32>(u_input.d, 10292i, u_input.d)), !var_1.a.x), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -24838i, u_input.d, u_input.d), ~vec4<i32>(-1i, -25342i, u_input.d, 36703i)), _wgslsmith_mult_i32(-2147483647i << (0u % 32u), -u_input.d), u_input.d), _wgslsmith_mult_i32(40025i, -func_1(u_input.d, Struct_3(vec3<f32>(-1777f, 2364f, 705f), Struct_1(vec3<i32>(-33976i, u_input.d, 23429i), vec3<i32>(-46705i, u_input.d, -1i), 0i, u_input.d, vec4<f32>(-1000f, 735f, 1060f, 1004f)), Struct_1(vec3<i32>(u_input.d, u_input.d, 21543i), vec3<i32>(2147483647i, u_input.d, -20458i), -54312i, u_input.d, vec4<f32>(845f, 210f, 201f, 355f)), vec3<i32>(-1i, u_input.d, u_input.d), true), 1000f)), -5927i, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1411f * -1665f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-260f, -1000f) * _wgslsmith_f_op_f32(floor(689f))), _wgslsmith_f_op_f32(-371f - _wgslsmith_f_op_f32(f32(-1f) * -179f)), 235f)), Struct_1(-_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, 1i, 82166i), vec3<i32>(26281i, u_input.d, u_input.d)), vec3<i32>(1i, -1i, u_input.d)), vec3<i32>(reverseBits(u_input.d), reverseBits(u_input.d), -2147483647i), ~u_input.d, u_input.d, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-423f, -1869f, -696f, -545f))) * vec4<f32>(-1827f, -1444f, 1192f, -600f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-260f, 2140f, 1660f, -1716f), vec4<f32>(-507f, 184f, -653f, 1000f))) - _wgslsmith_div_vec4_f32(vec4<f32>(720f, -571f, 1000f, 1000f), vec4<f32>(219f, 133f, 2424f, 1000f))))), vec3<i32>(_wgslsmith_sub_i32(u_input.d & -u_input.d, u_input.d), -1i, _wgslsmith_mult_i32(_wgslsmith_add_i32(2147483647i, u_input.d), abs(0i)) & u_input.d), select(var_1.a.x, !(!var_1.a.x) & func_2(1425f, Struct_2(Struct_1(vec3<i32>(-1i, u_input.d, -27270i), vec3<i32>(-2147483647i, 30134i, u_input.d), 2147483647i, u_input.d, vec4<f32>(918f, 344f, 302f, 418f)))), any(vec2<bool>(true, false))));
    var_0 = _wgslsmith_dot_vec3_u32(u_input.b, ~firstTrailingBit(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.c.x, u_input.a.x, u_input.c.x), u_input.c)));
    let var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.a) - vec3<f32>(-589f, -639f, var_2.c.e.x)) - _wgslsmith_f_op_vec3_f32(-var_2.b.e.zwy)))), var_2.c, var_2.c, -(~(~(var_2.b.b << (vec3<u32>(0u, var_1.b, var_1.b) % vec3<u32>(32u))))), var_2.e && var_2.e);
    var_0 = 0u;
    let var_4 = vec4<bool>(true, true, select((1u >> (u_input.e % 32u)) == 10226u, func_2(_wgslsmith_div_f32(508f, -1915f), Struct_2(Struct_1(vec3<i32>(var_3.d.x, -2147483647i, -2147483647i), var_2.c.a, -1175i, var_3.d.x, vec4<f32>(2051f, -461f, var_2.a.x, var_3.b.e.x)))), true | !var_1.a.x) | var_1.a.x, -52959i < var_3.c.d);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, vec4<f32>(-370f, 1097f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1236f, _wgslsmith_f_op_f32(select(var_3.a.x, -584f, var_1.a.x)), any(var_4))))), 1033f), -443f, _wgslsmith_f_op_f32(-var_3.b.e.x), _wgslsmith_dot_vec3_i32(-vec3<i32>(~var_3.b.d, 43288i, min(-1i, u_input.d)), vec3<i32>(func_1(var_3.d.x, var_2, var_2.b.e.x) << (1u % 32u), -countOneBits(14231i), max(i32(-1i) * -7316i, max(var_2.d.x, -1i)))));
}

