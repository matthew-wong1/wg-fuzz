struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
    c: vec2<f32>,
    d: vec4<f32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: vec2<bool>, arg_3: Struct_2) -> u32 {
    let var_0 = arg_0.b.a.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.a.x), _wgslsmith_div_f32(-148f, _wgslsmith_f_op_f32(arg_3.a.x - -705f))), _wgslsmith_f_op_f32(-242f - arg_0.b.a.x), -765f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1000f, var_0))))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(1413f, 391f)), _wgslsmith_f_op_f32(var_1.x * -1000f), _wgslsmith_f_op_f32(min(405f, arg_3.a.x)), arg_3.a.x))));
    var var_3 = arg_0.c;
    var var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(217f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.a.a.x))))));
    return 0u;
}

fn func_2(arg_0: i32, arg_1: f32) -> u32 {
    let var_0 = select(func_3(Struct_3(Struct_2(vec2<f32>(-1000f, arg_1)), Struct_2(vec2<f32>(-798f, arg_1)), u_input.c), 21297u, !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), false), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(sign(-412f)), _wgslsmith_f_op_f32(floor(arg_1))))), 65076u, true);
    let var_1 = Struct_4(min(max((vec4<i32>(-30064i, 53380i, u_input.a.x, 0i) << (vec4<u32>(30805u, 4294967295u, u_input.c, var_0) % vec4<u32>(32u))) & -vec4<i32>(1i, arg_0, -2147483647i, arg_0), _wgslsmith_mult_vec4_i32(-vec4<i32>(0i, -1i, -1i, u_input.a.x), vec4<i32>(arg_0, u_input.b, 874i, 0i) & vec4<i32>(-1i, u_input.b, -8827i, 1i))), firstLeadingBit(~vec4<i32>(1i, u_input.a.x, arg_0, arg_0)) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(45475i, 6744i, arg_0, 61857i) & vec4<i32>(arg_0, arg_0, -53627i, arg_0), ~vec4<i32>(1i, arg_0, u_input.a.x, 31825i))), u_input.a.x, vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-857f * -726f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_1, arg_1), 1336f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 144f, arg_1, arg_1) * vec4<f32>(869f, arg_1, -985f, arg_1)))))));
    var var_2 = ~(~(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 0u, u_input.c), vec3<u32>(5144u, var_0, 30787u)), var_0, ~u_input.c, ~var_0)));
    var var_3 = var_1.a.x;
    let var_4 = max(func_3(Struct_3(Struct_2(vec2<f32>(arg_1, -1788f)), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-106f, 1445f))), ~(~1u)), 4294967295u, vec2<bool>(true, true), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.d.yy)))), u_input.c);
    return ~(~(~(~var_4) & ~_wgslsmith_div_u32(var_4, 1u)));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_1) -> Struct_5 {
    let var_0 = Struct_4(vec4<i32>(-arg_0.c.x, -1i, 44329i, select(~(-2147483647i), ~1i, true)), _wgslsmith_clamp_i32(40348i ^ _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(arg_0.c.x, -46941i, arg_0.c.x, u_input.b)), ~vec4<i32>(0i, u_input.b, -41096i, -18900i)), -2147483647i, _wgslsmith_mult_i32(u_input.b, u_input.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1594f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.d)))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(469f, arg_0.d)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d, -181f, -623f, -385f)))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-152f, arg_0.d, -800f, arg_0.d))))));
    let var_1 = arg_0;
    var var_2 = !(!(!(!(!var_1.b.a))));
    var_2 = false;
    let var_3 = Struct_4(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(~var_0.a, firstTrailingBit(var_0.a)) >> (~_wgslsmith_div_vec4_u32(vec4<u32>(32491u, arg_0.a, u_input.c, 19439u), vec4<u32>(u_input.c, 31033u, 1u, 0u)) % vec4<u32>(32u)), vec4<i32>(abs(_wgslsmith_div_i32(62578i, 1i)), 1i, -max(1i, 0i), 24904i)), -1i, var_0.c, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(var_0.d + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_0.d, vec4<f32>(-421f, var_1.d, var_1.d, 384f), false)))))));
    return var_1;
}

fn func_5(arg_0: Struct_5) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d, _wgslsmith_f_op_f32(trunc(arg_0.d)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1062f))))));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: Struct_3, arg_3: i32) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(-arg_1.c.x);
    let var_1 = 39467u;
    return _wgslsmith_f_op_vec3_f32(func_5(func_4(Struct_5(func_2(16410i, _wgslsmith_f_op_f32(step(var_0, 670f))), Struct_1(var_1 == u_input.c), abs(~arg_1.a.yzy), _wgslsmith_f_op_f32(abs(arg_2.a.a.x))), Struct_1(!any(vec2<bool>(true, true))))));
}

fn func_6(arg_0: vec4<f32>, arg_1: vec3<f32>) -> Struct_2 {
    let var_0 = 1i;
    var var_1 = Struct_4(~(~vec4<i32>(func_4(Struct_5(u_input.c, Struct_1(true), vec3<i32>(u_input.b, u_input.a.x, -1i), arg_0.x), Struct_1(true)).c.x, u_input.b, var_0, 1i)), firstTrailingBit(28033i) >> ((~abs(u_input.c) & u_input.c) % 32u), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_1.zz))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.x * arg_0.x))))), 765f, 218f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_5(u_input.c, Struct_1(false), vec3<i32>(-6046i, var_0, -5527i), arg_1.x), Struct_1(true)).d + _wgslsmith_f_op_f32(round(-1429f))))));
    var var_2 = _wgslsmith_dot_vec3_u32(~(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 1u, u_input.c, 22526u), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)), ~u_input.c, u_input.c) << (vec3<u32>(0u | u_input.c, 56947u, u_input.c) % vec3<u32>(32u))), vec3<u32>(1u, u_input.c, _wgslsmith_mod_u32(_wgslsmith_sub_u32(14682u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 8740u, 0u), vec3<u32>(4294967295u, u_input.c, 28219u))), ~u_input.c)));
    var var_3 = vec4<bool>(any(select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, all(vec4<bool>(false, false, true, true))), ~u_input.c <= 1u)), true, !all(vec4<bool>(any(vec2<bool>(false, false)), true, 0i <= u_input.a.x, true)), !(!(_wgslsmith_f_op_f32(1038f * -767f) < arg_0.x)));
    var_3 = select(select(!(!select(vec4<bool>(true, var_3.x, var_3.x, var_3.x), vec4<bool>(false, true, var_3.x, true), var_3.x)), vec4<bool>(true, var_3.x, !select(true, var_3.x, false), false & (var_3.x | false)), var_3.x), vec4<bool>(true != (true & all(var_3.zx)), any(select(!var_3.wy, var_3.zz, var_3.xw)), !all(vec2<bool>(false, true)), var_3.x), vec4<bool>(true, var_0 >= var_1.a.x, true, var_3.x));
    return Struct_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(sign(arg_1.x)), -1455f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1.x, -1423f))) - _wgslsmith_f_op_vec2_f32(arg_0.yy - var_1.c)), !vec2<bool>(false, !var_3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(select(true, true, false), true, all(vec3<bool>(true, true, true)), select(true & (2147483647i >= u_input.b), true, true));
    let var_1 = Struct_1(false || var_0.x);
    let var_2 = func_6(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(339f, -1350f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1408f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1973f + 151f))), _wgslsmith_f_op_f32(-333f - _wgslsmith_f_op_f32(-1207f + _wgslsmith_f_op_f32(f32(-1f) * -422f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(vec3<i32>(u_input.a.x, -1i, u_input.b) >> (vec3<u32>(11503u, 69782u, u_input.c) % vec3<u32>(32u)), Struct_4(vec4<i32>(u_input.b, u_input.a.x, 2147483647i, u_input.b), u_input.b, vec2<f32>(-154f, 1530f), vec4<f32>(2384f, 1416f, 879f, -139f)), Struct_3(Struct_2(vec2<f32>(575f, -271f)), Struct_2(vec2<f32>(1117f, 862f)), u_input.c), -7341i))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(731f, 541f, 1404f), vec3<f32>(-221f, -126f, 828f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(261f, -1478f, 1364f)))))), var_0.xzz)));
    let var_3 = ~vec3<u32>(23944u, 77680u, u_input.c);
    let var_4 = Struct_2(vec2<f32>(var_2.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x - -144f)), 298f)));
    var var_5 = func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a.x, var_2.a.x, -974f, 900f)), vec4<f32>(var_2.a.x, -683f, 227f, var_2.a.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a.x, 1941f, -705f, -760f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(vec3<i32>(u_input.b, u_input.b, 0i), Struct_4(vec4<i32>(u_input.b, u_input.b, u_input.a.x, 2147483647i), 2147483647i, vec2<f32>(var_4.a.x, var_2.a.x), vec4<f32>(var_2.a.x, 740f, -479f, 1000f)), Struct_3(var_4, var_4, 47638u), u_input.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(502f, var_4.a.x, 1000f, 1002f))))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_5.a.x, -2766f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_5.a.x, -103f, false))))))), countOneBits(-u_input.a), var_5.a.x, ~abs(vec2<i32>(-1i, func_4(Struct_5(1u, var_1, vec3<i32>(50484i, u_input.b, 1i), var_2.a.x), var_1).c.x)));
}

