struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
    d: u32,
    e: vec3<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: bool,
    c: f32,
    d: f32,
}

struct Struct_5 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = Struct_2(true, (1u >> (reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 21706u))) % 32u)) & ~33385u, _wgslsmith_f_op_f32(f32(-1f) * -617f), reverseBits(reverseBits(select(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(5677i, u_input.a.x)), 29921i, all(vec2<bool>(false, true))))));
    var_0 = Struct_2(true, ~(~var_0.b), 253f, var_0.d);
    var_0 = Struct_2(false, var_0.b, 1000f, 0i);
    var var_1 = Struct_2(!(!(!var_0.a)), ~(~4294967295u), -2063f, reverseBits(abs(u_input.a.x)));
    var_0 = Struct_2(all(select(vec4<bool>(true, true, !var_0.a, false), vec4<bool>(false, false, var_1.a, !var_0.a), vec4<bool>(var_1.a, false, false, 5039u > var_1.b))), ~1u, -1717f, i32(-1i) * -7690i);
    return -959f;
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_4) -> u32 {
    let var_0 = Struct_4(~countOneBits(-arg_2.a | ~arg_2.a), true == any(select(vec3<bool>(arg_0, arg_2.b, false), select(vec3<bool>(true, true, arg_2.b), vec3<bool>(true, arg_0, true), vec3<bool>(arg_0, arg_2.b, arg_2.b)), arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -263f)));
    let var_1 = arg_2;
    var var_2 = Struct_1(select(vec2<bool>(var_0.b, select(var_1.b, true, arg_1.x != 19189u)), select(select(vec2<bool>(false, var_1.b), vec2<bool>(true, arg_2.b), vec2<bool>(var_0.b, var_1.b)), vec2<bool>(true, u_input.a.x > 40544i), !(!vec2<bool>(true, arg_2.b))), !var_0.b), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(319f, -151f)) - var_1.d)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-765f, -1189f, 163f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.c, var_1.d, var_1.d)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-898f, _wgslsmith_f_op_f32(ceil(-928f)), _wgslsmith_f_op_f32(floor(-1361f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1040f, -298f, arg_2.d) * vec3<f32>(1249f, var_1.c, -572f)) - _wgslsmith_div_vec3_f32(vec3<f32>(var_1.c, var_0.c, 1000f), vec3<f32>(var_0.c, -568f, -1084f)))), false)));
    let var_3 = -460f;
    var_2 = Struct_1(vec2<bool>(any(!vec4<bool>(false, var_1.b, var_1.b, false)) && any(select(vec4<bool>(arg_2.b, arg_2.b, false, true), vec4<bool>(false, arg_0, false, true), vec4<bool>(false, var_0.b, var_0.b, false))), false || (~var_2.b != arg_1.x)), firstTrailingBit(var_2.b), var_2.d.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-721f, var_1.c, 1000f) + vec3<f32>(var_2.c, arg_2.d, 159f)))), vec3<f32>(arg_2.c, arg_2.d, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.c * var_1.c), 756f)))));
    return var_2.b;
}

fn func_1(arg_0: u32) -> vec4<bool> {
    var var_0 = -vec4<i32>(0i, u_input.a.x, _wgslsmith_div_i32(reverseBits(-u_input.a.x), 1i), -41586i);
    var var_1 = !(!select(vec4<bool>(false, 1u <= arg_0, u_input.a.x != 1i, false), vec4<bool>(true, true, true, true), u_input.a.x < 2147483647i));
    var var_2 = _wgslsmith_clamp_u32(arg_0, _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(58875u, 1u, arg_0), vec3<u32>(arg_0, arg_0, arg_0)), vec3<u32>(1u, func_2(true, vec4<u32>(49415u, 57581u, arg_0, 1u), Struct_4(var_0.xzw, false, 250f, -1480f)), ~1u)) ^ arg_0, min(0u, ~arg_0));
    let var_3 = Struct_4(countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(countOneBits(2147483647i), -1i, var_0.x & u_input.a.x), countOneBits(~vec3<i32>(1i, 29629i, 2147483647i)))), any(!var_1.zyw), 1f, 159f);
    var_0 = _wgslsmith_sub_vec4_i32(-_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-23890i, -4968i, var_3.a.x, 0i), vec4<i32>(var_3.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-17951i, 3112i, var_0.x, 12224i)), abs(vec4<i32>(var_0.x, 0i, var_3.a.x, -24171i))), (vec4<i32>(-2443i, u_input.a.x, -2807i, var_3.a.x) << (vec4<u32>(4294967295u, arg_0, arg_0, arg_0) % vec4<u32>(32u))) | vec4<i32>(-52977i, var_3.a.x, var_3.a.x, -2568i)), select(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a.x, var_0.x, var_0.x, 2147483647i), min(vec4<i32>(var_3.a.x, -1i, -16288i, var_3.a.x), vec4<i32>(52310i, 2147483647i, u_input.a.x, var_0.x)) >> (~vec4<u32>(4294967295u, arg_0, arg_0, 1u) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32((vec4<i32>(var_3.a.x, var_0.x, u_input.a.x, 19987i) | vec4<i32>(0i, -9351i, -1i, -2147483647i)) ^ vec4<i32>(var_3.a.x, 0i, 0i, 44476i), select(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -6524i, u_input.a.x, 2147483647i), vec4<i32>(var_3.a.x, -22652i, var_3.a.x, -1i)), vec4<i32>(72573i, u_input.a.x, 54336i, -1i), select(vec4<bool>(false, var_1.x, true, var_1.x), vec4<bool>(false, true, false, var_1.x), vec4<bool>(true, var_3.b, var_3.b, var_3.b)))), !(!select(vec4<bool>(var_3.b, false, var_3.b, true), vec4<bool>(var_1.x, var_1.x, true, true), var_3.b))));
    return select(select(!vec4<bool>(false, 1833f > var_3.d, true, var_1.x), vec4<bool>(var_1.x, var_1.x, all(!vec3<bool>(var_3.b, true, false)), var_0.x <= ~var_0.x), true), select(!select(select(vec4<bool>(true, true, var_3.b, var_3.b), vec4<bool>(false, false, var_1.x, var_1.x), vec4<bool>(true, var_1.x, true, true)), !vec4<bool>(var_3.b, var_3.b, var_1.x, false), !vec4<bool>(true, true, var_3.b, var_3.b)), select(vec4<bool>(var_3.b, var_3.b, true, arg_0 >= 74744u), vec4<bool>(false, 1u <= arg_0, select(var_1.x, var_1.x, var_3.b), true == var_3.b), select(!vec4<bool>(true, var_3.b, var_3.b, var_1.x), vec4<bool>(false, false, false, var_1.x), true)), var_1.x), !var_1.x);
}

fn func_4(arg_0: bool) -> f32 {
    var var_0 = -abs(max(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 7371i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), ~vec4<i32>(u_input.a.x, u_input.a.x, 20865i, 0i)));
    let var_1 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1010f * -1594f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 309f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1133f)), -568f)), _wgslsmith_div_f32(-2672f, -1425f)))), -15597i);
    let var_2 = Struct_2(true, _wgslsmith_div_u32(1u, ~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(77845u, 56653u, 1u), vec3<u32>(53005u, 70749u, 34522u)), ~10558u)), _wgslsmith_f_op_f32(trunc(-1370f)), 8850i);
    var_0 = vec4<i32>(~33815i, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(-var_0.wwx, vec3<i32>(0i, 81190i, var_2.d)), vec3<i32>(1i, u_input.a.x, ~u_input.a.x)), vec3<i32>(select(2147483647i, _wgslsmith_sub_i32(var_1.b, u_input.a.x), var_2.a), var_0.x, -select(var_2.d, u_input.a.x, false))), var_1.b, _wgslsmith_sub_i32(u_input.a.x, -abs(-48757i)));
    let var_3 = Struct_4(-(select(~vec3<i32>(var_1.b, 0i, var_1.b), vec3<i32>(62912i, 40760i, var_2.d) & var_0.wyy, 576f >= var_1.a) << (~vec3<u32>(34623u, 0u, 1u) % vec3<u32>(32u))), var_2.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1087f)), _wgslsmith_f_op_f32(func_3())), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1239f), _wgslsmith_f_op_f32(-var_1.a))))));
    return -252f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_f32(func_4(any(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true)), func_1(14117u)))));
    var var_2 = vec2<u32>(41262u, ~(0u ^ func_2(true, firstLeadingBit(vec4<u32>(0u, 15029u, 0u, 0u)), Struct_4(vec3<i32>(u_input.a.x, u_input.a.x, -1i), true, var_1, 485f))));
    var_0 = 1i | _wgslsmith_add_i32(u_input.a.x, 5742i);
    var var_3 = Struct_2(false, 4294967295u, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - var_1)) + -1833f))), _wgslsmith_mult_i32(2147483647i, u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1176f, _wgslsmith_f_op_f32(-var_3.c), _wgslsmith_f_op_f32(abs(-455f)), _wgslsmith_f_op_f32(max(var_1, var_1))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c, var_3.c, var_3.c, -548f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-866f, var_3.c, 1484f, 496f))))), ~func_2(false, vec4<u32>(var_2.x, var_3.b, select(var_2.x, var_3.b, var_3.a), reverseBits(15822u)), Struct_4(vec3<i32>(-1i, u_input.a.x, var_3.d), var_3.a, _wgslsmith_f_op_f32(var_1 * 1000f), _wgslsmith_f_op_f32(min(var_3.c, var_3.c)))), min(firstTrailingBit(vec3<i32>(-21679i, var_3.d, u_input.a.x) ^ vec3<i32>(u_input.a.x, 2147483647i, 1i)) >> (reverseBits(reverseBits(vec3<u32>(1u, 21126u, 21726u))) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(firstTrailingBit(var_3.d), 40948i, -u_input.a.x), vec3<i32>(~u_input.a.x, reverseBits(var_3.d), -1i))), var_1, _wgslsmith_f_op_f32(-var_3.c));
}

