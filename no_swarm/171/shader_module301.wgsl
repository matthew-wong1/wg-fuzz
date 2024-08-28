struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: u32) -> i32 {
    let var_0 = min(~(~(~_wgslsmith_mult_u32(arg_2.a, arg_2.a))), arg_3);
    let var_1 = Struct_3(arg_2.b, any(vec4<bool>(all(arg_1.zx), !(!arg_1.x), all(arg_1), false)), _wgslsmith_mult_vec3_i32(max(vec3<i32>(arg_2.b.d, -2147483647i, arg_2.b.d), countOneBits(vec3<i32>(arg_2.b.d, -47918i, -20747i))), -reverseBits(vec3<i32>(2359i, arg_2.b.d, arg_2.b.d))) << (_wgslsmith_div_vec3_u32((vec3<u32>(arg_2.a, 4294967295u, 11464u) ^ u_input.a) | firstTrailingBit(vec3<u32>(0u, arg_2.a, 4294967295u)), firstLeadingBit(max(u_input.a, vec3<u32>(0u, 4294967295u, arg_3)))) % vec3<u32>(32u)));
    var var_2 = ~_wgslsmith_div_vec3_u32(min(vec3<u32>(arg_2.a, 0u, var_0) << (vec3<u32>(4294967295u, 38945u, 11256u) % vec3<u32>(32u)), ~vec3<u32>(var_0, 26579u, 12368u)) >> (~select(u_input.a, u_input.a, arg_1.x) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a.x, 0u, 77033u) ^ reverseBits(u_input.a), vec3<u32>(4294967295u, u_input.a.x & var_0, 28896u), _wgslsmith_div_vec3_u32(vec3<u32>(arg_2.a, 78553u, 1u), ~vec3<u32>(u_input.a.x, 5984u, 6096u))));
    let var_3 = reverseBits(reverseBits(_wgslsmith_mod_vec3_u32(abs(u_input.a), abs(u_input.a)) ^ vec3<u32>(~arg_2.a, _wgslsmith_sub_u32(0u, arg_3), 55718u)));
    let var_4 = ~(~vec4<i32>(countOneBits(_wgslsmith_dot_vec3_i32(var_1.c, vec3<i32>(0i, var_1.c.x, var_1.a.d))), ~(~var_1.a.d), -(i32(-1i) * -11802i), var_1.a.d));
    return 1i;
}

fn func_2() -> Struct_2 {
    let var_0 = vec4<u32>(1u, countOneBits(u_input.a.x), u_input.a.x, 0u);
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-421f, 573f, 173f, 309f) - vec4<f32>(130f, 210f, 747f, -117f))) + vec4<f32>(_wgslsmith_f_op_f32(-194f - 833f), _wgslsmith_f_op_f32(floor(1791f)), _wgslsmith_f_op_f32(f32(-1f) * -1877f), 296f)), -1084f, -1000f, _wgslsmith_add_i32(select(2147483647i, 0i, false) << ((var_0.x & 0u) % 32u), func_3(true, vec3<bool>(false, true, true), Struct_2(var_0.x, Struct_1(vec4<f32>(-978f, 227f, -713f, 963f), -155f, 229f, -12836i)), firstTrailingBit(29221u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-129f)), 962f) > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1028f, -676f) * _wgslsmith_f_op_f32(step(113f, 1219f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(683f - 171f)))), max(-(~reverseBits(vec3<i32>(19118i, 28128i, -2147483647i))), _wgslsmith_sub_vec3_i32(min(vec3<i32>(-9246i, 2147483647i, -2147483647i), vec3<i32>(21511i, 1i, 1i)) >> (select(vec3<u32>(u_input.a.x, 1u, 1u), vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, true, false)) % vec3<u32>(32u)), vec3<i32>(1i, 1i, 1i))));
    var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.a.a - var_1.a.a)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.a.c, var_1.a.c, var_1.a.c, var_1.a.c)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.a.b))), _wgslsmith_f_op_f32(-398f + _wgslsmith_f_op_f32(f32(-1f) * -336f)), var_1.c.x), true, var_1.c);
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(round(var_1.a.a)), -401f, var_1.a.c, -2147483647i);
    let var_3 = select(select(select(select(!vec3<bool>(var_1.b, true, false), select(vec3<bool>(false, false, var_1.b), vec3<bool>(false, var_1.b, true), vec3<bool>(true, true, false)), var_2.a.x != var_2.c), vec3<bool>(var_1.b, all(vec4<bool>(var_1.b, var_1.b, var_1.b, false)), !var_1.b), !(!vec3<bool>(var_1.b, var_1.b, true))), select(vec3<bool>(var_1.a.a.x <= var_1.a.b, !var_1.b, var_1.b), !vec3<bool>(var_1.b, false, false), vec3<bool>(var_1.a.c != var_1.a.a.x, any(vec2<bool>(false, false)), true)), true), select(!select(vec3<bool>(var_1.b, false, var_1.b), !vec3<bool>(false, true, var_1.b), vec3<bool>(true, true, var_1.b)), select(vec3<bool>(var_1.b == var_1.b, var_1.b, var_1.a.b > var_1.a.a.x), vec3<bool>(true, false, false), vec3<bool>(true, any(vec2<bool>(var_1.b, false)), true)), vec3<bool>(true, _wgslsmith_mult_i32(var_1.c.x, var_2.d) <= var_1.c.x, var_1.b)), all(vec2<bool>(!var_1.b, var_1.b)) && false);
    return Struct_2(1u, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-581f, _wgslsmith_div_f32(943f, var_2.b), _wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(-var_1.a.b)) - var_2.a), -410f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.a.a.x, _wgslsmith_f_op_f32(max(-1183f, var_2.a.x))))), -_wgslsmith_dot_vec2_i32(abs(vec2<i32>(var_1.c.x, var_1.a.d)), _wgslsmith_div_vec2_i32(var_1.c.xz, vec2<i32>(var_2.d, var_1.a.d)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_3 {
    var var_0 = -1595f;
    let var_1 = arg_3.b;
    let var_2 = !vec3<bool>(true, arg_2.x, !any(vec3<bool>(arg_2.x, true, true)));
    var var_3 = Struct_3(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.b.a.x, 980f) + _wgslsmith_f_op_f32(trunc(arg_3.b.b))), var_1.a.x, arg_0.b.a.x, _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.b, 695f), -1000f)), arg_0.b.a.x, 2164f, var_1.d), arg_3.b.d >= -arg_3.b.d, firstLeadingBit(firstLeadingBit(vec3<i32>(26621i, 0i, arg_0.b.d) & vec3<i32>(arg_0.b.d, var_1.d, var_1.d))));
    let var_4 = Struct_3(func_2().b, any(!var_2), vec3<i32>(var_1.d, 44246i, var_1.d | abs(-32870i)));
    return Struct_3(func_2().b, any(!(!var_2)), vec3<i32>(42967i, reverseBits(~1i), -1i));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32, arg_3: vec4<bool>) -> vec3<f32> {
    var var_0 = arg_0;
    var_0 = func_4(func_2(), reverseBits(vec4<u32>(min(1u, _wgslsmith_div_u32(arg_2, arg_2)), 4294967295u, ~firstLeadingBit(1u), _wgslsmith_mult_u32(u_input.a.x, ~u_input.a.x))), !select(vec2<bool>(true, any(vec3<bool>(arg_0.b, arg_0.b, false))), select(vec2<bool>(true, arg_0.b), !arg_3.yz, arg_0.b), true), Struct_2(u_input.a.x, func_2().b));
    var_0 = func_4(func_2(), _wgslsmith_mult_vec4_u32(vec4<u32>(~53737u, u_input.a.x, 4294967295u, ~arg_2), ~(~vec4<u32>(arg_2, 1u, u_input.a.x, 1u))) << (abs(reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, arg_2, u_input.a.x, arg_2), vec4<u32>(4193u, 4294967295u, u_input.a.x, u_input.a.x)))) % vec4<u32>(32u)), vec2<bool>(false, any(!vec4<bool>(false, arg_1.b, arg_1.b, arg_0.b))), func_2());
    var var_1 = vec2<bool>(arg_1.b, 1u == u_input.a.x);
    var var_2 = var_0.c.yy;
    return _wgslsmith_f_op_vec3_f32(-func_2().b.a.xwz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-529f, 575f, -1349f), vec3<f32>(115f, -2286f, -644f))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(306f, 1257f, 1979f))))));
    var var_1 = vec2<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), true);
    let var_2 = -36536i;
    var_0 = vec3<f32>(var_0.x, -659f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, 647f) + 534f)))));
    let var_3 = _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yz);
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_1(Struct_3(Struct_1(vec4<f32>(var_0.x, 1000f, var_0.x, -455f), 149f, var_0.x, var_2), var_1.x, vec3<i32>(var_2, 23071i, -20007i)), Struct_3(Struct_1(vec4<f32>(var_0.x, -2349f, -1000f, var_0.x), var_0.x, 272f, 19265i), var_1.x, vec3<i32>(1i, 2650i, 5589i)), var_3.x, vec4<bool>(var_1.x, false, var_1.x, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(126f, var_0.x, -1033f) - vec3<f32>(1477f, var_0.x, var_0.x))))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-529f * 570f) * 1f), -534f, var_0.x)));
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-592f - -241f))))), -125f, _wgslsmith_f_op_f32(floor(-216f)));
    var var_5 = u_input.a.x;
    var var_6 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(-select(_wgslsmith_sub_vec3_i32(vec3<i32>(var_2, 19796i, var_2), vec3<i32>(var_2, var_2, var_2)), select(vec3<i32>(var_2, -2147483647i, 27336i), vec3<i32>(var_2, var_2, var_2), vec3<bool>(false, false, var_1.x)), !vec3<bool>(var_1.x, var_1.x, false)) | (firstLeadingBit(-vec3<i32>(0i, var_2, var_2)) | max(vec3<i32>(1i, var_2, 14943i), vec3<i32>(0i, -82951i, var_2))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(963f, var_0.x, -569f, 221f) * vec4<f32>(var_4.x, var_0.x, -1125f, var_0.x)))), vec4<f32>(903f, _wgslsmith_f_op_f32(f32(-1f) * -820f), _wgslsmith_f_op_f32(var_0.x - var_4.x), var_0.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, 880f, var_0.x, -1903f)) - vec4<f32>(var_0.x, var_4.x, -1000f, var_4.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, 1000f, 2954f, -945f) * vec4<f32>(var_0.x, var_4.x, var_4.x, 1000f))))));
}

