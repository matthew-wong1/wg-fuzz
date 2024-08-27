struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec2<u32>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: i32,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec3<u32>,
    e: vec2<u32>,
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

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: f32) -> f32 {
    let var_0 = Struct_1(arg_0.x, !vec3<bool>(!any(vec4<bool>(false, false, true, false)), any(vec2<bool>(true, true)), true), ~(~vec2<u32>(min(1u, 63475u), arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(118f, _wgslsmith_f_op_f32(arg_2 * arg_2)))) + 1000f), select(~_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(1i, 2147483647i, 1i, u_input.a.x)), ~vec4<i32>(0i, -10648i, u_input.d, u_input.a.x)), -_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.a.x, 42937i, u_input.c.x, u_input.c.x), -vec4<i32>(-2147483647i, u_input.d, u_input.a.x, u_input.a.x)), true));
    let var_1 = var_0;
    let var_2 = -var_0.e.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f * 404f), 1086f)), arg_2, -2151f, 1553f)));
    var_3 = vec4<f32>(-937f, var_0.d, _wgslsmith_f_op_f32(-859f - _wgslsmith_f_op_f32(-var_0.d)), arg_2);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + var_3.x)))) - _wgslsmith_f_op_f32(-var_3.x));
}

fn func_2() -> i32 {
    let var_0 = Struct_3(~(-2147483647i), Struct_1(_wgslsmith_clamp_u32(0u, countOneBits(firstLeadingBit(u_input.b.x)), ~u_input.b.x), vec3<bool>(true, true, true), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 1u, 4294967295u) ^ vec4<u32>(u_input.b.x, 52879u, 30819u, u_input.b.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, u_input.b.x, u_input.b.x), vec4<u32>(4294967295u, 49506u, 61912u, 4294967295u), vec4<u32>(0u, u_input.b.x, 21965u, u_input.b.x))), ~(~4294967295u)), 177f, vec4<i32>(min(1i, -1i), -36234i, u_input.c.x, firstTrailingBit(u_input.d) | (u_input.d >> (u_input.b.x % 32u)))), Struct_2(Struct_1(countOneBits(u_input.b.x) ^ _wgslsmith_div_u32(43538u, u_input.b.x), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), u_input.b.yz << (vec2<u32>(15889u, 14453u) % vec2<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -206f), _wgslsmith_f_op_f32(ceil(727f))), vec4<i32>(2147483647i, _wgslsmith_div_i32(u_input.c.x, u_input.a.x), 46031i, u_input.d)), vec2<i32>(-1i, u_input.d & 1029i) << (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)), reverseBits(-(~(-2147483647i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1145f, -1553f, -395f, 680f) * vec4<f32>(934f, -168f, 278f, -1012f)))), firstTrailingBit(vec4<i32>(u_input.a.x, u_input.d, 36634i, u_input.d)) << (~(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)) % vec4<u32>(32u))), true);
    let var_1 = Struct_1(u_input.b.x, !vec3<bool>(true, any(vec3<bool>(var_0.d, var_0.d, var_0.b.b.x)), var_0.c.a.b.x), ~(vec2<u32>(~4294967295u, _wgslsmith_sub_u32(u_input.b.x, var_0.c.a.a)) | _wgslsmith_div_vec2_u32(u_input.b.yz, ~vec2<u32>(var_0.b.a, u_input.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.a.d + _wgslsmith_f_op_f32(-var_0.b.d)) + var_0.b.d), _wgslsmith_f_op_f32(func_3(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), firstLeadingBit(vec2<u32>(var_0.b.a, 0u))), _wgslsmith_dot_vec2_u32(~var_0.b.c, vec2<u32>(4294967295u, var_0.c.a.a)), var_0.b.d))), abs(~firstTrailingBit(firstTrailingBit(vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, -58766i)))));
    var var_2 = var_0.c;
    var_2 = Struct_2(Struct_1(firstTrailingBit(1u), select(var_2.a.b, select(vec3<bool>(true, var_1.b.x, true), var_2.a.b, all(var_2.a.b.yy)), select(var_2.a.b, select(var_1.b, vec3<bool>(false, false, false), var_1.b.x), select(var_1.b.x, true, false))), abs(~var_2.a.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.d.x)) * _wgslsmith_f_op_f32(floor(var_0.c.d.x)))), countOneBits(firstLeadingBit(vec4<i32>(u_input.c.x, 0i, var_1.e.x, 21361i))) ^ select(countOneBits(vec4<i32>(2147483647i, u_input.a.x, var_1.e.x, u_input.a.x)), var_2.e, vec4<bool>(var_1.b.x, false, var_0.d, var_0.c.a.b.x))), _wgslsmith_add_vec2_i32(vec2<i32>(~(-24525i) ^ var_1.e.x, ~var_0.a), ~(~(~var_1.e.wy))), var_1.e.x, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f * var_2.a.d), _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.b.d, -882f)))), -var_1.e ^ var_0.b.e);
    let var_3 = u_input.b;
    return -1i;
}

fn func_1() -> bool {
    let var_0 = vec4<i32>(~27509i, 25924i, -10025i, i32(-1i) * -11854i);
    var var_1 = firstTrailingBit(vec3<i32>(-var_0.x, u_input.a.x, func_2() & _wgslsmith_mult_i32(1i, var_0.x)));
    var_1 = ~(-(~(~vec3<i32>(var_1.x, var_1.x, -30107i))) ^ vec3<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(8315i, 2848i), vec2<i32>(-47687i, u_input.c.x)), var_0.x, firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, -97309i), u_input.a))));
    var var_2 = 404f > _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(375f)))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-325f, _wgslsmith_f_op_f32(-1136f * _wgslsmith_f_op_f32(select(628f, 1741f, true)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2704f, 661f)))))), select(vec2<bool>(any(vec4<bool>(true, false, true, false)), all(vec2<bool>(false, true))), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true)), false))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -2865f);
    let var_2 = Struct_2(Struct_1(0u, vec3<bool>(all(vec2<bool>(true, var_0)) || var_0, func_1(), !(!var_0)), _wgslsmith_mult_vec2_u32(select(~u_input.b.zx, ~vec2<u32>(4294967295u, 2463u), select(vec2<bool>(false, var_0), vec2<bool>(var_0, var_0), false)), ~(~vec2<u32>(u_input.b.x, 1u))), -1000f, select(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.c.x, u_input.d, 1i), vec4<i32>(-31015i, u_input.c.x, u_input.a.x, u_input.c.x)), -vec4<i32>(u_input.d, -2147483647i, u_input.d, u_input.d)), abs(vec4<i32>(u_input.d, -37037i, u_input.d, u_input.c.x)), var_0)), ~u_input.c.yy, -7004i, _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, -207f, 425f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -521f)) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1401f) * _wgslsmith_f_op_f32(-541f + -513f)), _wgslsmith_f_op_f32(-863f - 1199f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -263f) - _wgslsmith_f_op_f32(1562f - -1331f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-439f)) - _wgslsmith_f_op_f32(f32(-1f) * -902f)))), vec4<i32>(_wgslsmith_mod_i32(u_input.c.x, _wgslsmith_dot_vec2_i32(-u_input.c.yz, ~u_input.a)), _wgslsmith_mult_i32(-2147483647i, u_input.c.x ^ 37844i), countOneBits(1i), -1544i));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1000f)))), -1163f)));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -202f);
    let var_3 = var_2.d.zz;
    var var_4 = -2147483647i;
    var var_5 = _wgslsmith_f_op_f32(-var_3.x);
    let var_6 = _wgslsmith_mult_vec4_u32(~firstTrailingBit(vec4<u32>(~37575u, abs(88993u), _wgslsmith_sub_u32(var_2.a.a, u_input.b.x), abs(17505u))), firstLeadingBit(select(firstLeadingBit(vec4<u32>(u_input.b.x, var_2.a.c.x, 20573u, 13261u)), ~(~vec4<u32>(0u, u_input.b.x, var_2.a.c.x, 0u)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_div_f32(-216f, var_2.d.x), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1360f, -909f)), _wgslsmith_f_op_f32(exp2(var_3.x))))), vec3<u32>(var_2.a.a, ~reverseBits(var_2.a.c.x), 20794u), _wgslsmith_div_vec2_u32(var_6.ww, _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(var_2.a.c, vec2<u32>(4294967295u, 77242u)) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(var_2.a.a, u_input.b.x), u_input.b.zy) % vec2<u32>(32u)), u_input.b.yx)));
}

