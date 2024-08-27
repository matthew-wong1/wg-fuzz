struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> u32 {
    var var_0 = !(!(!vec4<bool>(arg_1, false, true, false)));
    let var_1 = arg_0;
    var var_2 = 2147483647i;
    let var_3 = abs(-abs(u_input.b.x));
    let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1958f))), arg_0.a.x, -447f, 1f))));
    return abs(_wgslsmith_mod_u32(u_input.d.x, u_input.a) << (_wgslsmith_mult_u32(~u_input.e.x, ~(1u | u_input.d.x)) % 32u));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<i32>) -> Struct_3 {
    var var_0 = min(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, u_input.a), 5650u, 4294967295u), _wgslsmith_mult_u32(52521u, u_input.a)), 3299u, func_3(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-347f, 912f, -271f, -1282f)))), all(vec2<bool>(arg_0.x, false))), _wgslsmith_mod_u32(_wgslsmith_mult_u32(12704u, u_input.e.x) << (u_input.e.x % 32u), 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(u_input.c, u_input.e.x, u_input.d.x)), 1u, 0u), u_input.a << (~0u % 32u), _wgslsmith_dot_vec4_u32(firstLeadingBit(u_input.d), select(vec4<u32>(u_input.d.x, u_input.a, u_input.a, 0u), u_input.d, vec4<bool>(arg_0.x, true, arg_0.x, true))), 58661u), abs(min(u_input.d ^ u_input.d, min(vec4<u32>(0u, 25027u, 48988u, 1u), u_input.d)))));
    let var_1 = -890f;
    var var_2 = u_input.b.zx;
    var_2 = u_input.b.zz;
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(var_1 * -697f), _wgslsmith_f_op_f32(-var_1), -1169f, -923f)))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(595f, -722f, var_1, var_1)) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -484f, -2650f, 1332f) + vec4<f32>(var_1, var_1, 1089f, -772f)), vec4<f32>(var_1, var_1, -1000f, var_1))))), vec2<bool>(any(vec4<bool>(arg_0.x, arg_0.x, true || arg_0.x, true)), all(vec3<bool>(!arg_0.x, true, arg_0.x & false))), -abs(-(u_input.b.x >> (u_input.a % 32u))));
    return Struct_3(var_3.a, var_0.x, var_3, var_3.b, Struct_1(var_3.b.a));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    var var_0 = u_input.e.x;
    var_0 = arg_0.b;
    let var_1 = arg_0.a;
    var var_2 = i32(-1i) * -4301i;
    var var_3 = u_input.e.x;
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)) - arg_0.d.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.a.x, -728f, arg_0.c.c.x)) * _wgslsmith_f_op_f32(-304f * arg_0.e.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a.x)))), 669f, func_2(!select(vec3<bool>(true, arg_0.c.c.x, false), vec3<bool>(arg_0.c.c.x, arg_0.c.c.x, false), vec3<bool>(arg_0.c.c.x, arg_0.c.c.x, true)), vec4<i32>(arg_0.c.d, u_input.b.x, firstTrailingBit(-1i), -2147483647i)).c.a.a.x));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = arg_0;
    var_0 = _wgslsmith_f_op_f32(sign(-748f));
    var var_1 = false;
    var_1 = true;
    var_1 = true;
    return func_4(func_2(vec3<bool>(!(arg_0 < arg_0), true, true), min(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -25796i, u_input.b.x), vec4<i32>(2147483647i, u_input.b.x, -21809i, u_input.b.x)), -vec4<i32>(20953i, 1i, -41187i, 2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(870f), Struct_1(_wgslsmith_f_op_vec4_f32(sign(func_2(vec3<bool>(true, true, true), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)).d.a))), vec2<bool>(false, true), -12663i);
    var var_1 = func_2(vec3<bool>(any(select(!var_0.c, !vec2<bool>(true, var_0.c.x), !var_0.c)), all(!select(var_0.c, vec2<bool>(var_0.c.x, var_0.c.x), true)), var_0.c.x), vec4<i32>(-22858i, ~(-22191i), ~_wgslsmith_div_i32(_wgslsmith_clamp_i32(var_0.d, var_0.d, var_0.d), var_0.d), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.b.x, 14253i, var_0.d, -5984i), vec4<i32>(9428i, u_input.b.x, 38744i, u_input.b.x), vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, true)), firstTrailingBit(vec4<i32>(4238i, 55085i, -17759i, -26667i))), u_input.b.x)));
    var_1 = Struct_3(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a.x) + _wgslsmith_f_op_f32(abs(678f)))), 1u, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(var_1.a.a)))), func_2(!(!vec3<bool>(var_0.c.x, var_1.c.c.x, var_1.c.c.x)), vec4<i32>(var_1.c.d, min(2147483647i, var_0.d), _wgslsmith_mod_i32(var_1.c.d, -49177i), 4417i)).e, vec2<bool>((var_1.c.d != u_input.b.x) | false, all(select(vec2<bool>(var_0.c.x, true), var_1.c.c, var_0.c))), 0i), var_1.c.a, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e.a.x, var_0.a.a.x, var_0.a.a.x, -520f) * vec4<f32>(823f, var_1.c.a.a.x, -1542f, var_0.a.a.x)))));
    var var_2 = 2147483647i;
    var_1 = Struct_3(Struct_1(var_0.a.a), 0u, func_2(!vec3<bool>(var_0.c.x | var_0.c.x, select(var_1.c.c.x, false, var_0.c.x), var_0.c.x), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, -22980i, u_input.b.x, var_1.c.d), vec4<i32>(var_1.c.d, u_input.b.x, var_1.c.d, var_1.c.d)), -vec4<i32>(-2147483647i, u_input.b.x, var_0.d, u_input.b.x), vec4<i32>(-2147483647i, var_1.c.d, -31458i, 1i)), min(vec4<i32>(2147483647i, var_1.c.d, 2147483647i, var_0.d), vec4<i32>(u_input.b.x, var_1.c.d, 0i, var_1.c.d)) ^ -vec4<i32>(-53878i, var_0.d, -1i, u_input.b.x))).c, Struct_1(vec4<f32>(var_0.b.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-277f - var_0.a.a.x), _wgslsmith_f_op_f32(sign(var_0.b.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e.a.x) - _wgslsmith_div_f32(var_0.a.a.x, -1609f)), _wgslsmith_f_op_f32(select(var_0.a.a.x, _wgslsmith_div_f32(-351f, var_0.b.a.x), !var_0.c.x)))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.b.a.x)) + _wgslsmith_f_op_f32(ceil(var_1.a.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.c.a.a.x, 2304f, var_0.c.x))), -800f, _wgslsmith_f_op_f32(round(var_0.a.a.x)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1937f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1655f, 1087f))) + _wgslsmith_f_op_f32(-func_1(var_0.b.a.x).a.x)), var_0.b.a.x));
    var var_4 = vec3<bool>(all(!select(vec4<bool>(true, true, false, true), select(vec4<bool>(var_1.c.c.x, false, false, var_0.c.x), vec4<bool>(var_1.c.c.x, true, true, var_1.c.c.x), vec4<bool>(var_1.c.c.x, var_0.c.x, true, var_0.c.x)), select(vec4<bool>(true, false, false, var_1.c.c.x), vec4<bool>(var_1.c.c.x, false, var_0.c.x, var_0.c.x), vec4<bool>(false, var_1.c.c.x, var_0.c.x, false)))), true, !(!(var_0.c.x | !var_0.c.x)));
    var_2 = _wgslsmith_mod_i32(-2214i, var_0.d);
    var_2 = -75258i;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.e.a, vec3<u32>(1u << (reverseBits(_wgslsmith_sub_u32(u_input.d.x, 8350u)) % 32u), _wgslsmith_sub_u32(min(0u, var_1.b), 12655u) & u_input.e.x, _wgslsmith_mod_u32(var_1.b, func_2(!vec3<bool>(true, var_0.c.x, true), vec4<i32>(var_0.d, -1i, 20415i, u_input.b.x) << (u_input.d % vec4<u32>(32u))).b)));
}

