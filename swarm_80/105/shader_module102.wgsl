struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: i32,
    d: bool,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: vec4<i32>) -> f32 {
    var var_0 = Struct_3(!select(!(!arg_1), !vec2<bool>(arg_1.x, false), arg_1));
    let var_1 = firstTrailingBit(firstTrailingBit(arg_2 & vec4<i32>(firstTrailingBit(arg_2.x), _wgslsmith_div_i32(35696i, 28525i), -35034i, countOneBits(arg_2.x))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1224f, 212f)) + 673f))) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-917f - _wgslsmith_f_op_f32(step(1000f, 1405f))))), 2500f);
    let var_3 = Struct_3(arg_1);
    let var_4 = Struct_2(-1488f, Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, u_input.b.x, u_input.b.x), ~vec3<u32>(35502u, u_input.b.x, u_input.b.x)) >> (min(vec3<u32>(u_input.b.x, 24068u, 31395u) | vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), firstLeadingBit(vec3<u32>(7159u, 37995u, 20671u))) % vec3<u32>(32u)), u_input.d), _wgslsmith_dot_vec2_u32(select(~vec2<u32>(1u, 0u), ~u_input.b, any(select(vec3<bool>(var_0.a.x, var_0.a.x, var_3.a.x), vec3<bool>(false, false, arg_1.x), var_2))), vec2<u32>(u_input.b.x, abs(_wgslsmith_mult_u32(0u, 0u)))), var_2, Struct_1(((vec3<u32>(1u, u_input.b.x, 49176u) << (vec3<u32>(68138u, u_input.d, u_input.b.x) % vec3<u32>(32u))) & vec3<u32>(0u, 53579u, 1u)) | ~vec3<u32>(u_input.d, 0u, u_input.d), u_input.b.x));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1181f * 878f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_4.a, 1915f)))));
}

fn func_2(arg_0: u32, arg_1: Struct_5) -> f32 {
    let var_0 = false;
    var var_1 = vec4<bool>(false, true, true, var_0);
    var_1 = vec4<bool>((var_0 && (1f == _wgslsmith_f_op_f32(func_3(arg_1.a, vec2<bool>(true, false), vec4<i32>(u_input.a.x, 0i, arg_1.a, 5065i))))) & var_1.x, any(vec4<bool>(!var_0, !arg_1.b.a.x, true, 37508u == arg_0)) == !(!(!arg_1.b.a.x)), true, !(!(false || arg_1.b.a.x)));
    var_1 = !(!(!select(select(vec4<bool>(true, var_1.x, false, true), vec4<bool>(arg_1.b.a.x, true, true, var_1.x), vec4<bool>(var_1.x, false, arg_1.b.a.x, var_0)), select(vec4<bool>(true, var_0, var_1.x, true), vec4<bool>(var_0, var_1.x, false, var_1.x), vec4<bool>(false, true, true, false)), any(var_1.xy))));
    var var_2 = arg_1.b;
    return -1254f;
}

fn func_1(arg_0: i32, arg_1: Struct_5) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(387f, -572f, 421f, -1033f))))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-962f, -1521f, 1142f, _wgslsmith_f_op_f32(func_2(u_input.d, arg_1)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(327f, 1132f, 174f, 791f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1560f, -494f, 895f, -130f)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1290f, 280f, -861f, -642f) - vec4<f32>(1468f, 1200f, -947f, -362f)) * vec4<f32>(1f, 1f, 1f, 1f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-334f, -506f, 373f, -762f), vec4<f32>(507f, -703f, -1881f, 1373f)))))), select(select(!select(vec4<bool>(true, false, arg_1.b.a.x, false), vec4<bool>(arg_1.b.a.x, true, false, true), arg_1.b.a.x), !select(vec4<bool>(true, false, arg_1.b.a.x, true), vec4<bool>(true, arg_1.b.a.x, true, true), vec4<bool>(arg_1.b.a.x, arg_1.b.a.x, true, true)), select(!vec4<bool>(true, arg_1.b.a.x, true, arg_1.b.a.x), vec4<bool>(true, false, true, false), true)), select(select(vec4<bool>(arg_1.b.a.x, arg_1.b.a.x, arg_1.b.a.x, arg_1.b.a.x), !vec4<bool>(true, arg_1.b.a.x, true, true), select(false, arg_1.b.a.x, arg_1.b.a.x)), select(select(vec4<bool>(false, arg_1.b.a.x, false, false), vec4<bool>(arg_1.b.a.x, true, arg_1.b.a.x, arg_1.b.a.x), vec4<bool>(false, arg_1.b.a.x, false, false)), !vec4<bool>(arg_1.b.a.x, false, arg_1.b.a.x, arg_1.b.a.x), !vec4<bool>(true, arg_1.b.a.x, false, arg_1.b.a.x)), !select(vec4<bool>(arg_1.b.a.x, false, false, arg_1.b.a.x), vec4<bool>(true, arg_1.b.a.x, false, true), false)), vec4<bool>(true, arg_1.b.a.x, false, true))));
    let var_1 = Struct_2(var_0.x, Struct_1(~(~vec3<u32>(4294967295u, 3514u, u_input.b.x)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(47822u, 95333u, 4294967295u, u_input.b.x) >> (vec4<u32>(u_input.d, u_input.d, 0u, u_input.d) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(1u, 96711u, u_input.d, u_input.d)))), 0u, !any(arg_1.b.a), Struct_1(select(reverseBits(~vec3<u32>(0u, 33976u, u_input.d)), _wgslsmith_mult_vec3_u32(abs(vec3<u32>(u_input.d, u_input.b.x, u_input.d)), select(vec3<u32>(u_input.d, 40061u, 4294967295u), vec3<u32>(u_input.d, u_input.d, u_input.d), vec3<bool>(arg_1.b.a.x, false, arg_1.b.a.x))), true), ~(u_input.b.x >> ((1u << (u_input.b.x % 32u)) % 32u))));
    let var_2 = _wgslsmith_sub_vec4_i32(abs(vec4<i32>(-33510i, abs(-1i), _wgslsmith_clamp_i32(arg_1.a, ~u_input.c, -2147483647i | arg_1.a), countOneBits(firstTrailingBit(-1i)))), ~firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 0i, 1225i, -3347i), -vec4<i32>(-1i, 0i, 2147483647i, -48317i))));
    var var_3 = vec4<i32>(~abs(_wgslsmith_mod_i32(firstTrailingBit(arg_1.a), _wgslsmith_add_i32(20283i, arg_0))), arg_1.a, arg_1.a, abs(arg_1.a));
    let var_4 = Struct_4(select(var_3.ywx, ~_wgslsmith_mod_vec3_i32(~vec3<i32>(32321i, 1i, var_2.x), var_2.yzy), !any(!vec3<bool>(var_1.d, var_1.d, arg_1.b.a.x))), Struct_3(!arg_1.b.a), min(-_wgslsmith_add_i32(u_input.c, -1i), arg_1.a) << (var_1.e.a.x % 32u), !(!(countOneBits(u_input.b.x) != ~1u)));
    return var_1.e.a.x & ~var_1.e.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ((u_input.c << (func_1(u_input.a.x, Struct_5(u_input.c, Struct_3(vec2<bool>(false, true)))) % 32u)) <= u_input.c) & any(vec3<bool>(any(vec2<bool>(false, false)), true, all(select(vec2<bool>(false, false), vec2<bool>(false, true), false))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(round(-510f)), Struct_1(~_wgslsmith_mod_vec3_u32(vec3<u32>(27842u, u_input.b.x, u_input.b.x), vec3<u32>(52989u, u_input.d, u_input.d)) ^ abs(~vec3<u32>(4294967295u, u_input.d, 29449u)), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(82745u, u_input.d, 0u), vec3<u32>(u_input.d, u_input.d, 18668u)) << (~vec3<u32>(12956u, u_input.b.x, 9217u) % vec3<u32>(32u)), reverseBits(~vec3<u32>(51808u, 52804u, 36190u)))), max(u_input.b.x | 1u, ~u_input.b.x), !any(vec3<bool>(var_0, var_0, true)) != true, Struct_1(vec3<u32>(0u, 0u, 0u), 1u));
    var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-417f + _wgslsmith_f_op_f32(var_1.a + var_1.a)), var_1.a) - _wgslsmith_f_op_f32(564f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.a))))), var_1.b, abs(var_1.e.b >> (select(var_1.b.b, _wgslsmith_add_u32(var_1.c, 27714u), true) % 32u)), 0u > countOneBits(_wgslsmith_add_u32(var_1.b.a.x, 1u)), Struct_1(max(_wgslsmith_mult_vec3_u32(var_1.b.a, var_1.b.a), firstTrailingBit(var_1.e.a)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c, u_input.b.x), vec2<u32>(var_1.e.b, var_1.c) | var_1.b.a.zx)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, 800f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2014f, 219f)) * _wgslsmith_div_f32(818f, -1065f)), 161f)));
    let var_3 = !all(vec2<bool>(!var_0 || !var_0, !(u_input.b.x >= u_input.b.x)));
    var var_4 = Struct_5(-5996i, Struct_3(vec2<bool>(all(!vec4<bool>(var_0, var_1.d, var_3, var_0)), !any(vec2<bool>(true, var_3)))));
    var_1 = Struct_2(142f, var_1.e, 4294967295u, false, Struct_1(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(60481u, u_input.b.x, u_input.b.x), ~vec3<u32>(var_1.c, 1u, var_1.e.b)), var_1.b.a), ~max(~u_input.d, ~var_1.c)));
    let var_5 = _wgslsmith_f_op_f32(func_2(_wgslsmith_mult_u32(u_input.d | u_input.b.x, ~u_input.b.x ^ (_wgslsmith_add_u32(u_input.b.x, var_1.b.b) >> (min(0u, u_input.b.x) % 32u))), Struct_5(_wgslsmith_sub_i32(i32(-1i) * -17962i, ~(~0i)), Struct_3(select(var_4.b.a, var_4.b.a, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(-(max(min(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(var_4.a, var_4.a)), countOneBits(vec2<i32>(-18753i, 11364i))) ^ max(vec2<i32>(37397i, u_input.c), abs(vec2<i32>(u_input.a.x, var_4.a)))), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, 1941u, var_1.b.b)) & (~var_1.e.a & vec3<u32>(u_input.d, var_1.e.b, 0u)), firstLeadingBit(vec3<u32>(4294967295u, 14125u, 1u) << (var_1.b.a % vec3<u32>(32u)))), vec4<u32>(~var_1.b.a.x, 4294967295u, ~11321u, _wgslsmith_mult_u32(firstTrailingBit(u_input.b.x), 4294967295u)));
}

