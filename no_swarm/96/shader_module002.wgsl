struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<bool>,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    var var_0 = select(vec3<bool>(any(vec3<bool>(true, all(vec3<bool>(true, false, true)), arg_0.x <= 657f)), true, true), vec3<bool>(false, all(vec3<bool>(true, true, true)), all(vec4<bool>(all(vec3<bool>(true, true, false)), true, true, all(vec4<bool>(false, true, true, false))))), !all(select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true))));
    var_0 = vec3<bool>(true, any(!select(vec3<bool>(true, true, true), !vec3<bool>(var_0.x, var_0.x, true), arg_0.x < arg_0.x)), !any(vec3<bool>(true, true, any(vec3<bool>(false, false, var_0.x)))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(~1i, _wgslsmith_clamp_i32(0i, 0i, -30574i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, 15105i, 1i), vec4<i32>(1i, 1352i, -5258i, -35777i)), 1i), ~vec4<i32>(73416i, -2147483647i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(abs(1i), ~6455i, 54128i), vec3<i32>(reverseBits(2147483647i), 57990i, i32(-1i) * -1i))), vec4<i32>(1i, -min(select(29112i, 1i, var_0.x), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 71092i), vec2<i32>(-16377i, 29512i))), 76280i, _wgslsmith_dot_vec3_i32(~(~vec3<i32>(-2147483647i, -37547i, 0i)), ~vec3<i32>(-1i, -2147483647i, 2147483647i))), !(!(!vec3<bool>(var_0.x, var_0.x, var_0.x))), Struct_1(vec4<i32>(_wgslsmith_mult_i32(0i, 28273i), 1i, reverseBits(-28064i), abs(-1i)) | ~_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -1i, -62439i, 11112i), vec4<i32>(-1i, -17691i, 23286i, -1i), vec4<i32>(-1i, -2147483647i, 1i, 27188i)), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(1i, 1i, 1i)), -countOneBits(vec3<i32>(36022i, 1i, -55167i)))), select(!vec4<bool>(!var_0.x, false, var_0.x, !var_0.x), vec4<bool>(any(select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, true, var_0.x))), true, all(!vec2<bool>(var_0.x, false)), var_0.x), any(select(!var_0.yx, !vec2<bool>(var_0.x, false), var_0.x == true))));
    let var_2 = _wgslsmith_div_vec3_i32(vec3<i32>(var_1.b.x, var_1.d.b.x, -firstLeadingBit(var_1.d.b.x | var_1.d.a.x)), _wgslsmith_add_vec3_i32(var_1.b.wwz & ~firstTrailingBit(vec3<i32>(var_1.b.x, 19258i, 2147483647i)), _wgslsmith_sub_vec3_i32((var_1.b.xyw | var_1.b.zyw) & var_1.a.a.zyy, -(var_1.d.a.zzy >> (u_input.b % vec3<u32>(32u))))));
    var var_3 = i32(-1i) * -25537i;
    return arg_0.x;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> Struct_2 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-895f, _wgslsmith_f_op_f32(f32(-1f) * -1920f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2388f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(866f)))), -1355f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1049f, 1678f, -1481f, -361f), vec4<f32>(-217f, -677f, -1000f, -979f), arg_2.e.x)))) >= 224f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(412f, 683f))), -114f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_1 = arg_2;
    var var_2 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), -630f, _wgslsmith_f_op_f32(abs(var_0.x)), var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(657f + _wgslsmith_f_op_f32(max(var_0.x, 1446f))) * var_0.x))), -491f);
    let var_3 = _wgslsmith_mult_i32(~max(min(-2147483647i, 1660i), var_1.d.b.x >> (u_input.b.x % 32u)) >> (4294967295u % 32u), 0i);
    var_1 = Struct_2(Struct_1(var_1.b, arg_0.b >> (u_input.b % vec3<u32>(32u))), ~select(_wgslsmith_sub_vec4_i32(arg_0.a, vec4<i32>(arg_0.b.x, arg_0.a.x, -1i, 1i) << (vec4<u32>(u_input.c, 27526u, 46208u, u_input.a) % vec4<u32>(32u))), vec4<i32>(select(var_3, var_1.b.x, true), -3760i | arg_0.b.x, arg_2.d.a.x, 1i), select(var_2.x <= 518f, arg_1, true)), !var_1.c, var_1.a, arg_2.e);
    return arg_2;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_2) -> u32 {
    let var_0 = func_2(arg_2.a, true, Struct_2(arg_2.d, (vec4<i32>(-1i) * -arg_2.d.a) << (max(~vec4<u32>(u_input.c, u_input.a, 15253u, 91914u), vec4<u32>(0u, u_input.c, u_input.b.x, u_input.c) ^ vec4<u32>(u_input.b.x, u_input.c, u_input.b.x, 1u)) % vec4<u32>(32u)), vec3<bool>(false, arg_1, ~arg_2.d.a.x > ~arg_2.a.b.x), func_2(arg_2.d, (u_input.c > u_input.a) && true, func_2(Struct_1(vec4<i32>(arg_2.a.b.x, 2877i, 13271i, arg_2.b.x), arg_2.b.ywz), arg_1 | true, func_2(arg_2.a, true, Struct_2(Struct_1(arg_2.a.a, vec3<i32>(arg_2.d.b.x, arg_2.b.x, arg_2.d.b.x)), arg_2.b, arg_2.c, arg_2.a, arg_2.e)))).a, func_2(Struct_1(~arg_2.d.a, -vec3<i32>(13505i, -9741i, arg_2.a.a.x)), false, Struct_2(func_2(Struct_1(vec4<i32>(21499i, arg_2.d.b.x, arg_2.d.b.x, arg_2.b.x), arg_2.b.www), true, arg_2).d, min(vec4<i32>(arg_2.d.a.x, -17173i, -1i, arg_2.a.b.x), vec4<i32>(0i, arg_2.a.b.x, arg_2.b.x, 1i)), !arg_2.c, arg_2.a, select(arg_2.e, arg_2.e, arg_0))).e));
    var var_1 = u_input.b.x;
    var var_2 = ~u_input.b.zy;
    let var_3 = Struct_1(var_0.a.a, firstLeadingBit(-vec3<i32>(-2147483647i, 2147483647i, arg_2.d.a.x)));
    let var_4 = Struct_2(Struct_1(arg_2.a.a, vec3<i32>(-var_3.a.x, countOneBits(-2147483647i), countOneBits(1i)) & ~_wgslsmith_mod_vec3_i32(vec3<i32>(-9432i, arg_2.b.x, -20598i), var_0.a.b)), ~vec4<i32>(2650i, -5087i, -1i, firstTrailingBit(-49172i)) >> (countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(7111u, u_input.c, u_input.b.x, 35100u) | vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<u32>(var_2.x, 81247u, 1u, 1u) ^ vec4<u32>(1u, var_2.x, u_input.b.x, 4294967295u))) % vec4<u32>(32u)), !var_0.c, var_3, arg_2.e);
    return ~4294967295u;
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b.x, 30780u), ~(~func_4(all(vec2<bool>(false, false)), all(vec2<bool>(false, false)), func_2(Struct_1(arg_1, arg_3.a.xyw), false, Struct_2(arg_3, vec4<i32>(arg_0, arg_1.x, 32052i, arg_3.b.x), vec3<bool>(true, true, false), Struct_1(arg_3.a, vec3<i32>(arg_1.x, -1i, arg_3.b.x)), vec4<bool>(true, false, true, false))))));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(select(arg_2.x, arg_2.x, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * _wgslsmith_f_op_f32(-arg_2.x)) * 957f)));
    var_0 = u_input.b.x;
    return func_2(Struct_1(-vec4<i32>(_wgslsmith_clamp_i32(-19518i, 36958i, arg_1.x), -arg_3.a.x, arg_1.x, ~(-15564i)), abs(arg_3.b)), arg_1.x != -select(func_2(Struct_1(vec4<i32>(arg_1.x, arg_3.a.x, 58753i, -14810i), vec3<i32>(arg_3.b.x, arg_1.x, -2147483647i)), false, Struct_2(arg_3, arg_3.a, vec3<bool>(false, false, true), arg_3, vec4<bool>(false, false, false, false))).a.a.x, select(arg_0, arg_0, false), 0u == u_input.c), Struct_2(arg_3, -select(arg_3.a, vec4<i32>(1603i, 1i, arg_0, 1i), vec4<bool>(false, true, false, true)), !(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false)), Struct_1(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_3.b.x, 47645i, -17759i, -15311i), arg_1, vec4<i32>(arg_3.b.x, -17593i, 53259i, arg_1.x)), arg_3.a), -reverseBits(vec3<i32>(arg_3.b.x, arg_1.x, arg_3.b.x))), vec4<bool>(true, false, true, select(true, any(vec2<bool>(true, false)), any(vec2<bool>(false, true)))))).d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(-2147483647i, -_wgslsmith_mod_vec4_i32(~vec4<i32>(1i, -59416i, -2147483647i, -1i), vec4<i32>(-19875i, 25224i, -2147483647i, -2147483647i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1610f, _wgslsmith_f_op_f32(936f - -828f), -155f) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-638f, -545f, 2122f), vec3<f32>(213f, 562f, -2056f))))), Struct_1(vec4<i32>(i32(-1i) * -79375i, -10525i << (u_input.b.x % 32u), 26237i >> (u_input.b.x % 32u), firstTrailingBit(-37204i)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(-7470i, -2147483647i, 2147483647i), vec3<i32>(-27407i, -12259i, -2147483647i)))), vec4<i32>(func_1(1i << (~u_input.a % 32u), vec4<i32>(~(-1i), _wgslsmith_sub_i32(0i, -2147483647i), -9511i, i32(-1i) * -40061i), vec3<f32>(_wgslsmith_f_op_f32(595f + 561f), 394f, _wgslsmith_f_op_f32(sign(561f))), Struct_1(~vec4<i32>(-1i, 1i, -9369i, -61862i), vec3<i32>(-9416i, -2147483647i, -27062i))).a.x, _wgslsmith_mod_i32(-18016i, _wgslsmith_dot_vec4_i32(vec4<i32>(-63444i, 29483i, 2147483647i, 0i), vec4<i32>(24918i, -1434i, 845i, -2147483647i))) >> (~u_input.c % 32u), -1i, 1i), !vec3<bool>(!any(vec2<bool>(true, true)), true, true), func_2(Struct_1(vec4<i32>(-1i) * -vec4<i32>(2501i, -2147483647i, 2147483647i, 0i), -vec3<i32>(1i, 1i, 1i)), !all(vec3<bool>(true, true, true)), Struct_2(func_2(Struct_1(vec4<i32>(1i, 26010i, -21831i, 1i), vec3<i32>(71323i, 3684i, -11434i)), true, func_2(Struct_1(vec4<i32>(1i, -6747i, -34889i, -1i), vec3<i32>(-2147483647i, 2147483647i, 2781i)), false, Struct_2(Struct_1(vec4<i32>(-2147483647i, -20160i, -1i, 0i), vec3<i32>(-2581i, -50243i, 2459i)), vec4<i32>(-1i, 5451i, 88479i, 2147483647i), vec3<bool>(false, false, true), Struct_1(vec4<i32>(11024i, -1i, -52154i, 18014i), vec3<i32>(9201i, -1i, -15505i)), vec4<bool>(true, true, false, true)))).a, ~vec4<i32>(1i, 1i, 1i, 1i), vec3<bool>(true, true, true), func_1(_wgslsmith_mult_i32(-1i, -2147483647i), vec4<i32>(25990i, 1i, -2147483647i, 48531i), vec3<f32>(1501f, 180f, -815f), func_1(0i, vec4<i32>(1i, -36685i, 0i, -19032i), vec3<f32>(187f, -1030f, 147f), Struct_1(vec4<i32>(17547i, -30589i, 1i, -2147483647i), vec3<i32>(0i, 9851i, 0i)))), vec4<bool>(true, all(vec2<bool>(true, true)), true, true))).a, select(!(!func_2(Struct_1(vec4<i32>(-28747i, -10720i, -11270i, 29244i), vec3<i32>(11254i, 55201i, -59956i)), false, Struct_2(Struct_1(vec4<i32>(82434i, 0i, -2147483647i, 898i), vec3<i32>(2147483647i, -28046i, 1i)), vec4<i32>(1i, 15135i, 40577i, 2147483647i), vec3<bool>(true, true, true), Struct_1(vec4<i32>(2147483647i, 2147483647i, 1i, -2147483647i), vec3<i32>(-18560i, -1052i, -40538i)), vec4<bool>(true, true, false, true))).e), vec4<bool>(any(vec2<bool>(false, false)), true, true, false), !vec4<bool>(true, all(vec3<bool>(false, true, true)), true, false)));
    var var_1 = var_0.c.x == (_wgslsmith_mod_i32(51930i, ~select(var_0.a.b.x, var_0.d.b.x, true)) > var_0.d.b.x);
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1233f, _wgslsmith_f_op_f32(func_3(vec4<f32>(-2392f, 401f, 809f, 530f))), -1000f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-299f, 924f, -350f)) * _wgslsmith_div_vec3_f32(vec3<f32>(962f, -180f, -3137f), vec3<f32>(-357f, -1289f, 1800f)))))));
    var var_4 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-(var_0.b.x | _wgslsmith_add_i32(var_0.a.a.x, -40222i)), var_0.d.a.x, -(i32(-1i) * -33697i), reverseBits(-13329i)), var_0.b, func_1(_wgslsmith_dot_vec4_i32(var_0.a.a, var_0.b), var_0.a.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3) * var_3), Struct_1(-(vec4<i32>(12587i, var_0.a.a.x, -29283i, 1i) << (vec4<u32>(53399u, u_input.c, u_input.b.x, 52215u) % vec4<u32>(32u))), _wgslsmith_sub_vec3_i32(firstTrailingBit(var_0.b.xyy), vec3<i32>(var_0.a.b.x, var_0.a.a.x, var_0.a.a.x) ^ var_0.d.b))).a);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_div_u32(~u_input.b.x, u_input.b.x << (u_input.a % 32u)) & u_input.c), firstTrailingBit(var_0.a.a.wy));
}

