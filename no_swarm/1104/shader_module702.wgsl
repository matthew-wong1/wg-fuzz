struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<bool>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> bool {
    var var_0 = Struct_1(2136i, select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true))), vec3<bool>(any(vec4<bool>(false, false, true, false)), any(vec4<bool>(false, false, true, true)), false)), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1879f - _wgslsmith_f_op_f32(1619f * -555f)), _wgslsmith_f_op_f32(250f - -841f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(999f * 1643f), -563f))));
    global0 = _wgslsmith_f_op_f32(var_0.c - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-934f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.c)))));
    var var_1 = Struct_1(_wgslsmith_mod_i32(u_input.a | ~(~u_input.a), -17975i), select(var_0.b, select(vec3<bool>(select(false, var_0.b.x, false), true, var_0.c > 963f), var_0.b, any(vec2<bool>(var_0.b.x, var_0.b.x))), select(select(select(vec3<bool>(true, var_0.b.x, false), var_0.b, false), !vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), true), !vec3<bool>(var_0.b.x, var_0.b.x, false), !(!vec3<bool>(false, false, var_0.b.x)))), _wgslsmith_f_op_f32(369f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.c)), var_0.c) * _wgslsmith_f_op_f32(-var_0.c))));
    let var_2 = u_input.e >> (vec2<u32>(17065u << (1u % 32u), u_input.e.x) % vec2<u32>(32u));
    var var_3 = u_input.e.x;
    return any(vec2<bool>(any(select(vec4<bool>(true, var_0.b.x, true, var_1.b.x), !vec4<bool>(var_0.b.x, true, var_0.b.x, var_1.b.x), vec4<bool>(true, var_0.b.x, true, var_1.b.x))), true));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<bool>) -> f32 {
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), 877f, _wgslsmith_f_op_f32(718f - 1226f) > _wgslsmith_f_op_f32(ceil(643f)))))));
    global0 = -305f;
    let var_0 = select(vec3<bool>(select(all(select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, true, arg_1.x, false), arg_1.x)), true, func_3()), true, false), select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(arg_1.x, true, true), false), true), select(vec3<bool>(true, arg_1.x, all(vec2<bool>(false, arg_1.x))), select(vec3<bool>(true, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, true), select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, true, false), false)), !arg_1.x), select(true, u_input.b.x == _wgslsmith_mult_i32(u_input.c, 1i), true)), !select(select(select(vec3<bool>(arg_1.x, arg_1.x, true), vec3<bool>(true, true, false), false), vec3<bool>(arg_1.x, false, true), true), select(select(vec3<bool>(false, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, false, arg_1.x), vec3<bool>(true, arg_1.x, false)), vec3<bool>(true, true, true), vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), all(!vec3<bool>(arg_1.x, true, true))));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1747f)), 313f) * -1246f) * -1087f)));
    let var_2 = firstTrailingBit(~(~4294967295u)) | arg_0.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -650f))) - var_1);
}

fn func_1() -> StorageBuffer {
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-892f + 1156f))) + _wgslsmith_f_op_f32(f32(-1f) * -284f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, 564f)) + 652f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -290f)))))));
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_2(~vec3<u32>(7337u & u_input.e.x, ~1043u, 6899u >> (0u % 32u)), vec2<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))), true))), 544f, _wgslsmith_f_op_f32(277f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1183f, 417f)))));
    let var_1 = -2077f;
    let var_2 = max(~(~_wgslsmith_add_u32(u_input.e.x & u_input.e.x, ~0u)), _wgslsmith_mult_u32(u_input.e.x, ~(~u_input.e.x << (0u % 32u))));
    let var_3 = Struct_4(vec2<u32>(u_input.e.x, 0u) << (vec2<u32>(34652u, var_2) % vec2<u32>(32u)), -17777i, Struct_1(-reverseBits(9857i), select(vec3<bool>(true, true, func_3()), select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true), vec3<bool>(false, true, false)), vec3<bool>(true, var_0.x < 1398f, true)), 436f));
    return StorageBuffer(select(_wgslsmith_sub_vec3_u32(select(~vec3<u32>(u_input.e.x, 42408u, u_input.e.x), vec3<u32>(var_2, u_input.e.x, u_input.e.x), select(false, var_3.c.b.x, var_3.c.b.x)), vec3<u32>(1u, select(var_2, 4294967295u, false), min(15799u, 4294967295u))), vec3<u32>(4294967295u, var_2, ~countOneBits(u_input.e.x)), vec3<bool>(var_3.c.b.x, var_3.c.b.x, true || !var_3.c.b.x)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-832f, 260f, 993f, var_3.c.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.c.c, var_0.x, -355f, -630f) - vec4<f32>(var_3.c.c, -820f, var_1, var_1)), !vec4<bool>(true, var_3.c.b.x, false, false)))))), u_input.e.x, vec4<i32>(-27014i, _wgslsmith_dot_vec2_i32(select(u_input.b, vec2<i32>(48975i, var_3.b) | u_input.b, !vec2<bool>(var_3.c.b.x, false)), min(u_input.b, reverseBits(u_input.b))), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.c.a, var_3.c.a, 17296i, 1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, var_3.c.a, -7265i, var_3.c.a), vec4<i32>(u_input.b.x, 21839i, 0i, 0i), vec4<i32>(var_3.c.a, 2147483647i, 2147483647i, var_3.c.a)))), u_input.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(443f - -1316f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(759f, 466f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(393f * 2234f))))));
    var var_1 = _wgslsmith_mult_u32(4294967295u, u_input.e.x);
    global0 = 867f;
    let x = u_input.a;
    s_output = func_1();
}

