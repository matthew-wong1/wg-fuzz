struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    let var_0 = vec4<u32>(firstLeadingBit(u_input.c.x), ~4294967295u, u_input.c.x, abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(82288u, 21408u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, 63802u, u_input.c.x)) >> (select(~u_input.c.x, 9033u, true) % 32u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 191f) + -1463f)), 612f, !any(vec4<bool>(true, true, true, true)))));
    var var_2 = select(any(vec2<bool>(true, false)), select(true, false, true), true) && true;
    var var_3 = select(true, true, false);
    let var_4 = ~(-17223i);
    return -1i;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_2) -> vec4<u32> {
    var var_0 = arg_2;
    var var_1 = ~firstLeadingBit(vec4<i32>(select(-u_input.b.x, ~u_input.b.x, false), -2147483647i & u_input.a.x, u_input.a.x, 2147483647i));
    var var_2 = _wgslsmith_mod_i32(~(~_wgslsmith_div_i32(u_input.b.x, u_input.b.x)) ^ _wgslsmith_div_i32(var_1.x, func_3() ^ _wgslsmith_clamp_i32(-1i, -2147483647i, var_1.x)), firstLeadingBit(_wgslsmith_mult_i32(var_1.x, var_1.x)));
    var_0 = Struct_2(all(vec3<bool>(true, var_0.a, (arg_1 && var_0.d.c) && true)), Struct_1(_wgslsmith_f_op_f32(sign(arg_2.d.a)), arg_1, any(vec2<bool>(all(vec4<bool>(var_0.b.b, true, arg_2.c.x, false)), var_0.b.b))), arg_2.c, Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.a) - _wgslsmith_f_op_f32(trunc(arg_2.d.a))), _wgslsmith_f_op_f32(var_0.b.a + arg_2.d.a))), arg_2.a, !all(select(arg_2.c.xz, vec2<bool>(arg_1, false), vec2<bool>(true, arg_2.a)))));
    var_0 = Struct_2(arg_1, Struct_1(var_0.b.a, !((u_input.c.x ^ arg_0) < arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2665f + var_0.b.a)) < -836f), select(!vec4<bool>(arg_2.b.a <= arg_2.d.a, false, var_0.d.c, arg_1), select(!select(vec4<bool>(false, arg_2.a, false, true), vec4<bool>(false, true, false, arg_2.b.b), true), !arg_2.c, false), true), var_0.d);
    return abs(vec4<u32>(~(~arg_0), 4294967295u, arg_0, ~abs(~arg_0)));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<f32>) -> Struct_2 {
    var var_0 = ~_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.a.x, i32(-1i) * -18734i, 0i), countOneBits(u_input.a.zwz));
    var var_1 = ~_wgslsmith_clamp_vec4_u32(~((vec4<u32>(12357u, u_input.c.x, u_input.c.x, 4294967295u) >> (vec4<u32>(4294967295u, 4294967295u, u_input.c.x, u_input.c.x) % vec4<u32>(32u))) ^ func_2(20985u, true, Struct_2(false, Struct_1(1821f, true, true), vec4<bool>(true, true, false, false), Struct_1(arg_0.x, true, true)))), vec4<u32>(~(~u_input.c.x), _wgslsmith_mod_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 76283u, 20385u, u_input.c.x), vec4<u32>(u_input.c.x, 1u, 34139u, u_input.c.x))), 0u, firstLeadingBit(u_input.c.x | u_input.c.x)), vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x & u_input.c.x));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(652f + _wgslsmith_f_op_f32(-1615f * arg_1.x)) - _wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(arg_1.x + 1619f)))) - -180f), false, all(select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), true)), vec4<bool>(true, true, true, true), false)));
    var_1 = vec4<u32>(~var_1.x, u_input.c.x, 11155u, 0u);
    let var_3 = Struct_1(arg_1.x, var_2.b, _wgslsmith_dot_vec2_i32(-countOneBits(var_0.zy), ~(vec2<i32>(-64676i, var_0.x) & vec2<i32>(0i, 0i))) > abs(-312i));
    return Struct_2(all(!vec3<bool>(!var_2.c, all(vec2<bool>(true, true)), var_2.b)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(247f, arg_0.x, var_3.b))))), true, !all(vec3<bool>(true, false, true))), vec4<bool>(var_2.c, !all(vec2<bool>(true, false)), var_3.a == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a) - _wgslsmith_f_op_f32(floor(arg_0.x))), true), var_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1360f, -249f, 784f), vec3<f32>(-123f, -2436f, -1000f), true)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -2390f, -734f) - vec3<f32>(-1647f, 819f, 793f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1255f, 312f, -425f))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -225f), 424f, _wgslsmith_f_op_f32(-378f * -213f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-329f, -2352f, 220f, 1139f))))));
    let x = u_input.a;
    s_output = StorageBuffer(-735f);
}

