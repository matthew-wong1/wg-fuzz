struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-201f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(161f)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-981f, 2613f) + vec2<f32>(689f, -1529f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-470f, 379f), vec2<f32>(-619f, 955f)))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-436f, 310f) * vec2<f32>(1245f, -1075f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(108f, 1463f) + vec2<f32>(-296f, 1717f)), arg_1)), arg_0.a.x)), vec2<bool>(all(!vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, true)), true))));
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(267f, var_0.x, var_0.x))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1000f, -1078f) - vec3<f32>(225f, var_0.x, var_0.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(271f, var_0.x, var_0.x) - vec3<f32>(var_0.x, 685f, -1217f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 835f, -647f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 842f, var_0.x)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, -1027f, var_0.x), vec3<f32>(var_0.x, var_0.x, 280f)))))))));
    var var_2 = u_input.a.x;
    let var_3 = var_1.xx;
    var_2 = arg_0.b.x << (_wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(0u, 0u, u_input.c, u_input.c)), vec4<u32>(u_input.c, 1u, u_input.c, u_input.c)), max(vec4<u32>(1u, u_input.c | u_input.c, abs(0u), u_input.c), abs(~vec4<u32>(u_input.c, 59509u, u_input.c, u_input.c)))) % 32u);
    return arg_0.b.x;
}

fn func_2() -> vec3<i32> {
    var var_0 = Struct_1(vec2<bool>(true, any(vec3<bool>(true, any(vec4<bool>(false, false, false, false)), true))), ~vec3<i32>(func_3(Struct_1(vec2<bool>(false, false), u_input.a.yxw), true), max(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), countOneBits(u_input.b)), ~(-34933i << (u_input.c % 32u))));
    var var_1 = _wgslsmith_mult_u32(18682u, u_input.c);
    var_0 = Struct_1(vec2<bool>(all(vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x)) & (abs(var_0.b.x) == -9907i), true), countOneBits(vec3<i32>(~1i, -u_input.b, 0i)));
    var_0 = Struct_1(select(!var_0.a, select(vec2<bool>(true, !var_0.a.x), var_0.a, !select(var_0.a, vec2<bool>(var_0.a.x, var_0.a.x), var_0.a)), vec2<bool>(var_0.a.x, select(all(vec4<bool>(var_0.a.x, false, true, true)), var_0.a.x, 17864i > var_0.b.x))), reverseBits(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-10319i, 2147483647i, 2147483647i), vec3<i32>(-2147483647i | var_0.b.x, _wgslsmith_clamp_i32(-1i, 55868i, u_input.a.x), _wgslsmith_sub_i32(46867i, var_0.b.x)), _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(0i, 16944i, 20409i)), vec3<i32>(2147483647i, -1i, u_input.a.x)))));
    let var_2 = !select(select(select(vec4<bool>(false, var_0.a.x, true, var_0.a.x), select(vec4<bool>(true, false, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, false, var_0.a.x, false), vec4<bool>(false, false, true, true)), !vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false)), !vec4<bool>(false, var_0.a.x, false, var_0.a.x), !select(vec4<bool>(false, var_0.a.x, true, var_0.a.x), vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, false, true, var_0.a.x))), !vec4<bool>(all(vec3<bool>(true, false, true)), var_0.a.x, select(var_0.a.x, var_0.a.x, true), true), vec4<bool>(true, !(!var_0.a.x), !(!var_0.a.x), true));
    return ~_wgslsmith_add_vec3_i32(~(-(~vec3<i32>(31479i, var_0.b.x, -13051i))), u_input.a.wxy);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    var var_0 = arg_2.b.x;
    let var_1 = ~firstTrailingBit(min(abs(u_input.c) & ~58334u, u_input.c));
    var var_2 = select(_wgslsmith_dot_vec3_u32(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 1u, 14537u), vec3<u32>(4956u, 1u, u_input.c))), reverseBits(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 411u, var_1), vec3<u32>(var_1, 39885u, var_1)))), ~25111u, all(vec4<bool>(arg_0.a.x, arg_0.a.x, false, any(!vec3<bool>(arg_0.a.x, false, arg_2.a.x)))));
    var_2 = ~(~_wgslsmith_sub_u32(11361u, _wgslsmith_sub_u32(u_input.c, u_input.c)));
    var var_3 = select(vec4<bool>(15i < ~(arg_0.b.x ^ arg_0.b.x), false, arg_0.a.x, select(any(!arg_2.a), arg_2.a.x, all(!vec4<bool>(arg_2.a.x, arg_2.a.x, arg_0.a.x, true)))), !select(!select(vec4<bool>(arg_0.a.x, false, false, true), vec4<bool>(arg_2.a.x, false, true, arg_0.a.x), vec4<bool>(false, arg_2.a.x, false, arg_0.a.x)), select(!vec4<bool>(arg_0.a.x, false, arg_0.a.x, true), select(vec4<bool>(true, false, arg_0.a.x, arg_2.a.x), vec4<bool>(arg_2.a.x, false, arg_2.a.x, true), arg_0.a.x), select(vec4<bool>(true, arg_0.a.x, false, false), vec4<bool>(arg_0.a.x, true, arg_2.a.x, false), true)), true), !(!vec4<bool>(any(vec4<bool>(arg_2.a.x, false, true, arg_0.a.x)), arg_0.a.x, arg_0.a.x, any(vec3<bool>(arg_0.a.x, arg_2.a.x, true)))));
    return arg_0;
}

fn func_1(arg_0: bool) -> vec3<u32> {
    var var_0 = func_4(Struct_1(select(vec2<bool>(false, arg_0), vec2<bool>(true, true), vec2<bool>(true, true)), -func_2()), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(963f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1126f)) + -267f), -1829f), Struct_1(!(!(!vec2<bool>(arg_0, true))), u_input.a.yzz), _wgslsmith_f_op_f32(-1757f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -912f), _wgslsmith_f_op_f32(f32(-1f) * -1409f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(200f, -280f)))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -672f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1953f), 516f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 2259f) * _wgslsmith_div_f32(1000f, -1074f))), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(807f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-422f)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -549f)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(170f, 770f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-805f + 1859f)), any(!select(vec4<bool>(false, var_0.a.x, arg_0, arg_0), vec4<bool>(var_0.a.x, false, false, true), vec4<bool>(false, var_0.a.x, false, var_0.a.x))))));
    let var_2 = vec2<u32>(countOneBits(~(~4294967295u) ^ _wgslsmith_mult_u32(26817u, u_input.c | 1765u)), u_input.c);
    var var_3 = func_4(Struct_1(vec2<bool>(var_0.a.x, true), select(var_0.b, u_input.a.xxy, var_0.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) + vec3<f32>(156f, var_1.x, var_1.x)))))), func_4(Struct_1(select(func_4(Struct_1(vec2<bool>(var_0.a.x, false), var_0.b), vec3<f32>(-1000f, -889f, -368f), Struct_1(var_0.a, var_0.b), var_1.x).a, var_0.a, u_input.c > var_2.x), vec3<i32>(u_input.a.x, var_0.b.x, u_input.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.x, var_1.x, var_1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(1602f, var_1.x, 1000f) - vec3<f32>(-442f, var_1.x, 890f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(707f, var_1.x, 1000f))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.x, 177f, var_1.x), vec3<f32>(918f, -852f, 1000f))))), Struct_1(var_0.a, vec3<i32>(-2147483647i >> (var_2.x % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, var_0.b.x, 0i), var_0.b), u_input.b)), _wgslsmith_f_op_f32(step(-694f, var_1.x))), 572f);
    var var_4 = var_0.a;
    return ~_wgslsmith_clamp_vec3_u32(~_wgslsmith_mod_vec3_u32(~vec3<u32>(37478u, var_2.x, var_2.x), vec3<u32>(u_input.c, u_input.c, u_input.c)), vec3<u32>(_wgslsmith_mult_u32(5492u, 49687u), var_2.x, u_input.c), vec3<u32>(1217u, reverseBits(~u_input.c), _wgslsmith_div_u32(firstTrailingBit(1u), _wgslsmith_sub_u32(1u, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec3_u32(min(_wgslsmith_sub_vec3_u32(select(vec3<u32>(10730u, 46012u, 33396u), vec3<u32>(1u, u_input.c, 12127u), vec3<bool>(true, true, false)), vec3<u32>(5470u, u_input.c, u_input.c)) | ((vec3<u32>(u_input.c, 1u, 0u) | vec3<u32>(20703u, 53328u, 4294967295u)) << (vec3<u32>(u_input.c, u_input.c, 4294967295u) % vec3<u32>(32u))), firstLeadingBit(~func_1(false))), ~select(min(vec3<u32>(u_input.c, u_input.c, 4294967295u) << (vec3<u32>(4294967295u, 4241u, 35888u) % vec3<u32>(32u)), func_1(true)), select(countOneBits(vec3<u32>(u_input.c, u_input.c, u_input.c)), firstTrailingBit(vec3<u32>(4294967295u, 28430u, u_input.c)), vec3<bool>(false, false, true)), vec3<bool>(true, true, true)));
    var var_1 = abs(firstLeadingBit(_wgslsmith_clamp_vec2_i32(u_input.a.zz, -vec2<i32>(u_input.b, u_input.a.x), reverseBits(~u_input.a.wz))));
    var var_2 = select(~u_input.a.xx, vec2<i32>(-30224i, _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(9575i, var_1.x, 0i, -2147483647i), ~vec4<i32>(u_input.b, 1i, var_1.x, -2147483647i)), 1i)), func_4(Struct_1(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), abs(u_input.a.wzw)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -491f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(460f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(752f + 245f), _wgslsmith_f_op_f32(trunc(-638f)))), func_4(func_4(func_4(Struct_1(vec2<bool>(false, false), vec3<i32>(1i, var_1.x, -14848i)), vec3<f32>(-720f, 882f, -312f), Struct_1(vec2<bool>(true, false), vec3<i32>(var_1.x, -2147483647i, -52043i)), 129f), _wgslsmith_div_vec3_f32(vec3<f32>(663f, 1069f, -1192f), vec3<f32>(-284f, 658f, -1000f)), func_4(Struct_1(vec2<bool>(false, false), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<f32>(1192f, 1545f, 318f), Struct_1(vec2<bool>(true, true), u_input.a.xwx), -1000f), -321f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(467f, 1495f, 730f)))), Struct_1(vec2<bool>(true, true), vec3<i32>(-15940i, -2147483647i, var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1119f)))), 861f).a);
    var var_3 = any(select(!vec3<bool>(var_0.x > u_input.c, select(false, true, true), true), select(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)));
    let var_4 = vec4<u32>(~1u, _wgslsmith_mult_u32(1u, abs(33497u)), u_input.c, _wgslsmith_div_u32(max(var_0.x, firstTrailingBit(~var_0.x)), 4294967295u));
    var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(18141u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(121f, 636f, -945f, -644f)), vec4<f32>(2135f, 993f, 1366f, 409f), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false))))) - vec4<f32>(-108f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-361f * -405f) * _wgslsmith_f_op_f32(select(-1126f, 960f, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -430f) * _wgslsmith_f_op_f32(f32(-1f) * -558f)), _wgslsmith_f_op_f32(f32(-1f) * -1554f))), 356f, _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(938f - -296f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1075f, 1113f)) + 1681f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-574f, -803f, 948f), vec3<f32>(-1731f, 210f, 2154f))))) + vec3<f32>(1f, -984f, _wgslsmith_div_f32(-710f, 397f)))));
}

