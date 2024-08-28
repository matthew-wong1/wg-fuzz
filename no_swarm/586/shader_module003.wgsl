struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
    d: bool,
    e: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec2<f32>,
    d: vec2<f32>,
    e: vec3<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: Struct_4,
    d: i32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    return u_input.a;
}

fn func_3(arg_0: vec3<i32>) -> vec4<bool> {
    var var_0 = 1i;
    var var_1 = vec3<bool>(!any(vec4<bool>(true, true, true, true)), any(vec2<bool>(false, select(any(vec4<bool>(true, true, false, true)), true, true))), !(_wgslsmith_f_op_f32(floor(127f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2400f))));
    return !select(select(select(vec4<bool>(true, false, var_1.x, var_1.x), !vec4<bool>(var_1.x, var_1.x, true, true), vec4<bool>(true, var_1.x, false, var_1.x)), vec4<bool>(true, true, -11063i != arg_0.x, true), var_1.x), vec4<bool>(false, ~u_input.a >= reverseBits(u_input.a), var_1.x, all(vec4<bool>(var_1.x, var_1.x, true, var_1.x)) & false), var_1.x);
}

fn func_2(arg_0: u32, arg_1: vec4<u32>) -> Struct_3 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(3065f * -237f), -1494f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(460f, -593f)))) * vec2<f32>(1f, 1f)), u_input.c));
    let var_1 = !vec2<bool>(any(select(vec4<bool>(true, true, true, true), func_3(vec3<i32>(0i, -2147483647i, 43273i)), vec4<bool>(false, true, true, true))), (_wgslsmith_add_i32(u_input.b.x, 0i) > abs(-1i)) & true);
    var_0 = Struct_2(var_0.a);
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_0.a.b.x, 1000f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(281f + var_0.a.a))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(step(-663f, var_0.a.a)), _wgslsmith_f_op_f32(select(var_0.a.b.x, 1145f, var_1.x))))), _wgslsmith_clamp_u32(34553u, _wgslsmith_mult_u32(arg_0, 0u) ^ 51675u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(arg_1.yx, arg_1.zw), ~arg_1.zy))), !(var_1.x | all(vec2<bool>(var_1.x, var_1.x))), Struct_2(Struct_1(-306f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.b.x, var_0.a.b.x)), ~arg_1.x)), var_1.x, vec2<i32>(u_input.b.x, ~1i));
}

fn func_4(arg_0: u32, arg_1: Struct_3) -> Struct_5 {
    var var_0 = -1348f;
    var_0 = -135f;
    var var_1 = Struct_2(arg_1.c.a);
    var var_2 = Struct_4(-13023i, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_1.a.a, 737f)), arg_1.a.a), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-317f, 1f))), var_1.a.c), _wgslsmith_f_op_vec2_f32(var_1.a.b - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-580f, arg_1.a.a) + _wgslsmith_f_op_f32(-822f - -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.b.x)))), vec2<f32>(_wgslsmith_f_op_f32(select(791f, var_1.a.a, arg_1.b)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.a.a), _wgslsmith_f_op_f32(-var_1.a.b.x)))), select(countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, arg_0, var_1.a.c), vec3<u32>(u_input.a, arg_1.c.a.c, 22209u), vec3<u32>(u_input.a, 57252u, arg_0)) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.c.a.c, 16190u, arg_0), vec3<u32>(u_input.a, 0u, 1u)) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(vec3<u32>(min(23049u, var_1.a.c), _wgslsmith_add_u32(37183u, u_input.a), 1u), vec3<u32>(59045u >> (arg_0 % 32u), arg_1.a.c, ~85450u)), !(!select(vec3<bool>(false, false, arg_1.b), vec3<bool>(arg_1.b, arg_1.d, false), arg_1.d))));
    var_0 = _wgslsmith_f_op_f32(var_1.a.b.x + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(238f, -320f)))))));
    return Struct_5(func_2(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c.a.a, 914f, 1156f, var_2.b.b.x) - vec4<f32>(477f, var_1.a.a, -946f, 422f))) | 20196u, _wgslsmith_add_vec4_u32(vec4<u32>(~var_2.b.c, 4294967295u, arg_1.c.a.c, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 7698u, arg_1.a.c), var_2.e)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 0u, u_input.c, 4294967295u), vec4<u32>(1u, 1u, 32957u, 4294967295u), vec4<u32>(arg_0, 1u, 49992u, 39016u)))).c.a, var_2.c.x, Struct_4(u_input.b.x, func_2(44442u, _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.a.c, 4294967295u, arg_1.a.c, 20247u), vec4<u32>(7208u, arg_0, 48204u, var_2.b.c)) & countOneBits(vec4<u32>(4294967295u, var_2.b.c, var_1.a.c, arg_1.a.c))).a, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_2.b.b.x, -795f)), var_1.a.b.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f - var_2.c.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(var_1.a.b))))), firstLeadingBit(~vec3<u32>(1u, u_input.c, 5456u))), ~699i, !vec4<bool>(true, func_2(arg_1.c.a.c, vec4<u32>(arg_0, u_input.a, 6798u, var_1.a.c)).c.a.c < 15010u, var_1.a.c < arg_0, any(vec2<bool>(arg_1.d, arg_1.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(0i, -_wgslsmith_mult_i32(u_input.b.x, -45017i));
    let var_1 = func_4(~1u, func_2(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 33699u, 14348u) & vec3<u32>(0u, 0u, 0u), ~vec3<u32>(19075u, 1u, 4294967295u))), vec4<u32>(~_wgslsmith_mult_u32(16795u, u_input.c), ~func_1(vec4<f32>(1208f, 1000f, 350f, -1006f)), 1u, ~u_input.a >> (_wgslsmith_sub_u32(u_input.a, 30305u) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(1000f, var_1.c.a, var_0.x, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1473f), 1050f));
}

