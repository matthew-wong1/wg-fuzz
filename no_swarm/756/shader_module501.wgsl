struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2> = array<bool, 2>(false, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<i32>) -> vec2<f32> {
    global0 = array<bool, 2>();
    global0 = array<bool, 2>();
    var var_0 = _wgslsmith_mult_i32(i32(-1i) * -974i, u_input.b.x);
    let var_1 = -1341f;
    let var_2 = arg_1;
    return _wgslsmith_f_op_vec2_f32(select(arg_1.a, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_2.a))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_2.a, vec2<f32>(1345f, 1053f)) - var_2.a)))), all(vec3<bool>(global0[_wgslsmith_index_u32(~21055u, 2u)], true, all(vec3<bool>(false, false, arg_0.x))))));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(select(-103f, -1000f, true)), 1413f), ~u_input.e, ~(~(~12526u)) != _wgslsmith_clamp_u32(1u, _wgslsmith_div_u32(63372u >> (0u % 32u), u_input.d.x), 0u), -374f);
    var var_1 = ~(~(~vec4<u32>(var_0.b.x ^ 87434u, var_0.b.x, u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, var_0.b.x, u_input.c.x, u_input.c.x), vec4<u32>(81114u, u_input.e.x, var_0.b.x, u_input.d.x)))));
    var var_2 = Struct_1(var_0.a, _wgslsmith_add_vec3_u32(select(~(~vec3<u32>(u_input.d.x, 22477u, 70688u)), u_input.d, false), ~var_0.b), var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -1702f));
    var_1 = firstLeadingBit(~vec4<u32>(~var_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.x, var_0.b.x, 0u, var_0.b.x), vec4<u32>(4294967295u, 0u, u_input.c.x, 4294967295u)), var_1.x, var_0.b.x));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2.d, -1307f))) - _wgslsmith_f_op_vec2_f32(-var_2.a))), u_input.d, _wgslsmith_f_op_f32(-var_2.a.x) < _wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.d))));
    return 927f;
}

fn func_4(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = u_input.b.x << (~abs(_wgslsmith_clamp_u32(~u_input.d.x, arg_2.b.x, 1u)) % 32u);
    var var_1 = arg_2;
    var var_2 = false;
    var_1 = arg_2;
    var_1 = arg_2;
    return !(!select(select(vec3<bool>(true, global0[_wgslsmith_index_u32(arg_2.b.x, 2u)], true), select(vec3<bool>(true, var_1.c, var_1.c), vec3<bool>(global0[_wgslsmith_index_u32(var_1.b.x, 2u)], var_1.c, false), arg_2.c), any(vec4<bool>(true, true, true, false))), select(!vec3<bool>(var_1.c, false, true), !vec3<bool>(arg_2.c, true, true), var_1.c), true));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1) -> vec3<u32> {
    global0 = array<bool, 2>();
    global0 = array<bool, 2>();
    global0 = array<bool, 2>();
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1154f, 426f, -2505f) - vec3<f32>(arg_1.a.x, 348f, arg_1.a.x))))))));
    let var_1 = var_0;
    return u_input.e;
}

fn func_1(arg_0: bool, arg_1: f32) -> vec4<u32> {
    global0 = array<bool, 2>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1, arg_1, -748f, -266f))), vec4<f32>(-439f, -1043f, -383f, arg_1), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-593f, -1000f, arg_1, arg_1), vec4<f32>(arg_1, 176f, -957f, 1271f))) + vec4<f32>(arg_1, arg_1, arg_1, 1000f)))));
    let var_1 = ~u_input.b.x;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.yy) * _wgslsmith_f_op_vec2_f32(max(var_0.zx, var_0.yw))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(var_0.zz, var_0.wx, vec2<bool>(arg_0, false))))))), _wgslsmith_f_op_vec2_f32(func_2(vec4<bool>(false, false, any(vec2<bool>(false, arg_0)), true), Struct_1(var_0.xy, u_input.d | vec3<u32>(u_input.e.x, 4294967295u, 85422u), any(vec3<bool>(arg_0, arg_0, global0[_wgslsmith_index_u32(0u, 2u)])), _wgslsmith_f_op_f32(min(1000f, arg_1))), u_input.b)))), func_5(func_4(min(vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, -1i), vec4<i32>(var_1, 1i, 1i, u_input.b.x)), _wgslsmith_f_op_f32(func_3()), Struct_1(vec2<f32>(var_0.x, var_0.x), vec3<u32>(u_input.a, u_input.e.x, u_input.d.x), false, -277f)), Struct_1(_wgslsmith_f_op_vec2_f32(max(var_0.wz, var_0.yz)), ~u_input.d, global0[_wgslsmith_index_u32(~u_input.e.x, 2u)], _wgslsmith_f_op_f32(-1000f * var_0.x))) >> (vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(70652u, u_input.c.x, u_input.d.x, 4294967295u) & vec4<u32>(1u, 4294967295u, 10706u, 22396u), vec4<u32>(u_input.d.x, u_input.d.x, 4294967295u, u_input.e.x) >> (vec4<u32>(0u, u_input.e.x, u_input.e.x, u_input.a) % vec4<u32>(32u))), u_input.d.x << (countOneBits(65624u) % 32u), 28846u) % vec3<u32>(32u)), !any(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.e.x, 2u)])), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1784f), -909f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) - arg_1))))));
    var var_3 = max(_wgslsmith_dot_vec3_u32(min(vec3<u32>(4294967295u, 106021u, var_2.b.x), var_2.b) >> (~vec3<u32>(u_input.c.x, var_2.b.x, 4294967295u) % vec3<u32>(32u)), select(vec3<u32>(0u, 4294967295u, 40644u) >> (vec3<u32>(var_2.b.x, var_2.b.x, u_input.c.x) % vec3<u32>(32u)), vec3<u32>(var_2.b.x, 18384u, u_input.a), var_2.c)) ^ countOneBits(~(~0u)), func_5(vec3<bool>(arg_0, true, any(vec4<bool>(arg_0, false, var_2.c, true))), var_2).x >> (var_2.b.x % 32u));
    return vec4<u32>(4294967295u << (var_2.b.x % 32u), ~(~_wgslsmith_add_u32(abs(0u), firstLeadingBit(var_2.b.x))), 0u, ~2585u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(func_1(global0[_wgslsmith_index_u32(4294967295u, 2u)], -1000f), vec4<u32>(53322u, 0u, u_input.a, u_input.e.x)), ~(vec4<u32>(u_input.e.x, 27074u, 59636u, u_input.a) & vec4<u32>(u_input.e.x, u_input.d.x, u_input.e.x, 69987u))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.e.x, u_input.e.x, 0u, u_input.a), vec4<u32>(u_input.e.x, u_input.e.x, 26815u, 4294967295u), vec4<u32>(46348u, 23976u, 4294967295u, u_input.c.x)) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(18773u, 1474u, 24983u, 4294967295u), ~vec4<u32>(19906u, u_input.e.x, u_input.d.x, u_input.a)));
    var var_1 = _wgslsmith_f_op_vec2_f32(func_2(vec4<bool>(!((1i < u_input.b.x) && true), global0[_wgslsmith_index_u32(u_input.d.x, 2u)], true, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a, u_input.c.x) & firstTrailingBit(u_input.c.x), u_input.e.x), 2u)]), Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(363f, 801f) + vec2<f32>(360f, 387f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1711f, -1017f), vec2<f32>(1387f, 639f))), true)))), vec3<u32>(~u_input.d.x, 0u >> (min(u_input.c.x, u_input.c.x) % 32u), firstLeadingBit(_wgslsmith_mult_u32(4294967295u, u_input.c.x))), select(func_4(-vec4<i32>(-45546i, u_input.b.x, u_input.b.x, -1i), 1f, Struct_1(vec2<f32>(698f, -1000f), vec3<u32>(0u, u_input.e.x, 28119u), true, -1283f)).x, all(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 2u)], global0[_wgslsmith_index_u32(u_input.c.x, 2u)])), true), _wgslsmith_f_op_f32(round(318f))), vec2<i32>(-(~abs(u_input.b.x)), ~u_input.b.x))).x;
    var var_2 = 1f;
    let var_3 = 0i;
    var var_4 = var_3 >> (u_input.c.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(217f, 967f, 1000f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(263f, -571f, 1104f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-223f, 1000f, 1000f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-444f, -981f, 2192f)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1985f, -1848f))), -314f, _wgslsmith_f_op_f32(-1398f + -1064f)))), ~vec4<u32>(4294967295u, u_input.e.x | u_input.a, _wgslsmith_mult_u32(u_input.e.x, u_input.d.x), ~39567u) ^ (~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.c.x, 44046u, u_input.a), vec4<u32>(u_input.e.x, 44985u, u_input.d.x, 0u), vec4<u32>(u_input.e.x, 16561u, u_input.a, 1u)) << (~_wgslsmith_mod_vec4_u32(vec4<u32>(45853u, 1u, u_input.d.x, u_input.d.x), vec4<u32>(4294967295u, u_input.e.x, u_input.c.x, u_input.c.x)) % vec4<u32>(32u))));
}

