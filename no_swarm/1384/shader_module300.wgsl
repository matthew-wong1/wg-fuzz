struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec2<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_5, arg_3: vec2<i32>) -> vec3<bool> {
    var var_0 = vec2<bool>(select(true, all(!(!vec3<bool>(arg_2.a.a.d.x, arg_2.a.a.d.x, arg_2.a.a.d.x))), false), true);
    var_0 = select(!(!arg_2.a.a.d), vec2<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), !vec4<bool>(false, false, true, var_0.x))), 1000f > _wgslsmith_f_op_f32(-1463f * _wgslsmith_f_op_f32(arg_2.a.a.a.x - -672f))), true);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(arg_0, arg_2.a.a.a.x))))) * _wgslsmith_f_op_f32(trunc(arg_0)));
    let var_2 = !arg_2.a.a.d;
    var var_3 = true;
    return select(select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec3<bool>(false, false, false)) != !arg_2.a.a.d.x, true), vec3<bool>(false, true, arg_2.a.a.d.x)), select(vec3<bool>(select(true, arg_2.a.a.d.x, true), true, !var_0.x | (arg_1 > 1u)), !select(vec3<bool>(var_2.x, true, arg_2.a.a.d.x), select(vec3<bool>(true, true, var_2.x), vec3<bool>(false, arg_2.a.a.d.x, var_0.x), vec3<bool>(var_0.x, arg_2.a.a.d.x, var_0.x)), !vec3<bool>(var_0.x, true, var_2.x)), select(arg_2.a.a.d.x, !(var_0.x & true), arg_3.x != arg_2.b.a.x)), var_2.x);
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: u32) -> f32 {
    var var_0 = ~vec4<u32>(reverseBits(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.b.x, arg_3, 1u, 32136u), vec4<u32>(0u, u_input.a, 23098u, arg_3)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_3, 0u, arg_1.a.a.b.x, u_input.a), vec4<u32>(arg_3, 69758u, arg_2.b.x, arg_2.b.x)))), ~arg_2.b.x, _wgslsmith_div_u32(1u, abs(11285u)), 2297u);
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1663f)))), _wgslsmith_f_op_f32(-2259f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1159f, arg_1.a.a.a.x)))))), arg_2.d.x));
    var var_2 = _wgslsmith_clamp_vec3_i32(arg_0, select(max(min(arg_1.b, arg_1.b), arg_1.c), abs(arg_1.b & -vec3<i32>(-20456i, arg_1.c.x, arg_0.x)), select(select(!vec3<bool>(arg_1.a.a.d.x, false, arg_1.a.a.d.x), !vec3<bool>(true, arg_1.a.a.d.x, false), arg_1.a.a.d.x), func_3(_wgslsmith_f_op_f32(-arg_1.d.a.x), max(1u, arg_2.b.x), Struct_5(arg_1.a, Struct_4(vec2<i32>(arg_1.c.x, -27942i))), _wgslsmith_div_vec2_i32(arg_1.b.yx, arg_1.b.zz)), _wgslsmith_f_op_f32(-625f * arg_1.d.a.x) > _wgslsmith_f_op_f32(-arg_1.a.a.a.x))), arg_1.b);
    var var_3 = select(vec4<bool>(arg_1.a.a.d.x, false | arg_2.d.x, true, arg_2.d.x), select(select(!(!vec4<bool>(arg_1.d.d.x, false, arg_2.d.x, true)), vec4<bool>(667f <= arg_2.a.x, arg_2.d.x, any(arg_1.d.d), true), true), !select(select(vec4<bool>(arg_2.d.x, arg_1.d.d.x, arg_1.a.a.d.x, true), vec4<bool>(arg_1.a.a.d.x, false, arg_2.d.x, false), true), !vec4<bool>(true, true, arg_2.d.x, false), true), select(!select(vec4<bool>(true, arg_2.d.x, arg_2.d.x, arg_1.d.d.x), vec4<bool>(arg_1.d.d.x, arg_1.a.a.d.x, true, arg_2.d.x), vec4<bool>(arg_2.d.x, false, arg_1.a.a.d.x, arg_2.d.x)), select(select(vec4<bool>(true, false, false, true), vec4<bool>(arg_1.a.a.d.x, false, arg_1.d.d.x, arg_2.d.x), vec4<bool>(false, true, false, arg_1.d.d.x)), vec4<bool>(false, true, arg_2.d.x, true), false), arg_2.d.x)), vec4<bool>(false, all(!arg_2.d), arg_2.d.x, all(vec4<bool>(all(vec2<bool>(false, true)), true, arg_1.d.d.x, arg_1.a.a.d.x))));
    var_3 = select(!select(!(!vec4<bool>(var_3.x, true, var_3.x, var_3.x)), vec4<bool>(true, arg_2.d.x, true, var_3.x & false), select(!vec4<bool>(var_3.x, var_3.x, false, arg_2.d.x), select(vec4<bool>(false, var_3.x, true, true), vec4<bool>(false, arg_2.d.x, arg_2.d.x, var_3.x), arg_1.a.a.d.x), true | arg_2.d.x)), !(!select(vec4<bool>(arg_1.d.d.x, arg_1.d.d.x, true, false), select(vec4<bool>(arg_1.a.a.d.x, arg_1.a.a.d.x, true, arg_2.d.x), vec4<bool>(false, var_3.x, var_3.x, arg_2.d.x), true), select(vec4<bool>(false, arg_2.d.x, true, true), vec4<bool>(arg_1.a.a.d.x, true, false, arg_2.d.x), vec4<bool>(true, arg_1.d.d.x, true, arg_2.d.x)))), vec4<bool>(arg_2.d.x, var_3.x, arg_1.a.a.d.x, true));
    return arg_1.a.a.a.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(func_2(vec3<i32>(arg_0.c, 1881i, arg_1.c.x), arg_1, arg_1.d, 4294967295u))), 383f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1323f * -1000f)))) != 445f;
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.a.x)) * _wgslsmith_f_op_f32(ceil(arg_0.a.x)))))));
    let var_3 = _wgslsmith_div_vec3_f32(arg_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.a.a.a + vec3<f32>(-234f, 2141f, -253f))) - _wgslsmith_f_op_vec3_f32(-arg_0.a)) * arg_1.d.a));
    var_0 = true;
    return -(-firstLeadingBit(-29429i) & -arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_add_vec2_i32(vec2<i32>(~abs(1i), _wgslsmith_add_i32(func_1(Struct_1(vec3<f32>(-442f, -137f, 1477f), vec3<u32>(u_input.a, u_input.a, 111514u), 2147483647i, vec2<bool>(false, true)), Struct_3(Struct_2(Struct_1(vec3<f32>(475f, 348f, 795f), vec3<u32>(518u, 4294967295u, 42059u), -2147483647i, vec2<bool>(false, false))), vec3<i32>(-2147483647i, 9044i, 54452i), vec3<i32>(52560i, 0i, -2147483647i), Struct_1(vec3<f32>(200f, -830f, 1166f), vec3<u32>(1u, u_input.a, 0u), 0i, vec2<bool>(true, false)))), 19525i)), ~_wgslsmith_div_vec2_i32(vec2<i32>(0i, 2147483647i) >> (vec2<u32>(17788u, u_input.a) % vec2<u32>(32u)), vec2<i32>(55279i, -6239i))));
    var var_1 = var_0.a.x;
    let var_2 = vec2<u32>(u_input.a, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(101175u, 34365u)), ~vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(55495u, 4294967295u))) ^ _wgslsmith_mult_vec2_u32(abs(vec2<u32>(_wgslsmith_clamp_u32(u_input.a, u_input.a, 33583u), reverseBits(u_input.a))), vec2<u32>(~u_input.a, select(u_input.a, ~u_input.a, u_input.a <= 148008u)));
    var_1 = -4052i;
    var_1 = -44964i;
    var_1 = var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -795f), _wgslsmith_f_op_f32(-1765f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-248f)), _wgslsmith_f_op_f32(1435f - -188f)))))), countOneBits(var_0.a.x), vec2<i32>(countOneBits(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<i32>(-25586i, var_0.a.x, var_0.a.x)), var_0.a.x >> (u_input.a % 32u))), _wgslsmith_dot_vec4_i32(vec4<i32>(-36518i, var_0.a.x >> (25469u % 32u), -45153i, 1i), ~(~vec4<i32>(9117i, -1i, var_0.a.x, 30074i)))), vec3<u32>(~countOneBits(_wgslsmith_mod_u32(var_2.x, 1u)), _wgslsmith_sub_u32(abs(~1u), _wgslsmith_div_u32(firstTrailingBit(4294967295u), _wgslsmith_mult_u32(u_input.a, 4294967295u))), _wgslsmith_mult_u32(var_2.x, ~102800u | var_2.x)));
}

