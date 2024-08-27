struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec3<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1186f));
    var var_1 = Struct_2(vec4<i32>(~1i, ~(~_wgslsmith_clamp_i32(1i, 15055i, 2147483647i)), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(5815i, 25922i, -18418i), 1i, min(17386i, -1i)), select(countOneBits(vec3<i32>(2147483647i, -34589i, -14899i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 2147483647i, -8403i), vec3<i32>(-70817i, -1i, 32145i), vec3<i32>(1i, 2147483647i, -60132i)), vec3<bool>(false, false, true))), -(~2147483647i)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(min(118f, var_0))), var_0, var_0), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1362f, -401f) - _wgslsmith_f_op_f32(abs(var_0))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(771f, var_0))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(341f)), var_0)))));
    let var_2 = _wgslsmith_mult_vec4_i32(var_1.a, _wgslsmith_clamp_vec4_i32(var_1.a, vec4<i32>(abs(2147483647i), var_1.a.x, 36542i, ~var_1.a.x), min(vec4<i32>(-1255i, 9965i, -67450i, 30097i), _wgslsmith_mod_vec4_i32(vec4<i32>(var_1.a.x, 0i, 0i, -2147483647i), vec4<i32>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x))))) & var_1.a;
    let var_3 = firstLeadingBit(~0u);
    var_1 = Struct_2(var_2, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(238f, 2347f, var_1.b.x) * var_1.b), _wgslsmith_f_op_vec3_f32(var_1.b - var_1.b)))))));
    return select(vec3<bool>(!select(var_1.a.x >= -24013i, true, true), true && !any(vec4<bool>(false, true, true, false)), var_2.x > -var_1.a.x), !(!vec3<bool>(all(vec4<bool>(true, true, false, true)), select(true, true, true), any(vec4<bool>(true, true, true, false)))), select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * -787f) <= var_1.b.x, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(true, true, true, false)))), false));
}

fn func_2(arg_0: vec4<f32>, arg_1: i32, arg_2: bool, arg_3: bool) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(step(arg_0.zwz, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(arg_0.zww, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.x, arg_0.x, arg_0.x), arg_0.zzz))), arg_0.zzx)))), arg_0.xx, _wgslsmith_f_op_vec2_f32(-arg_0.xy), func_3(), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x))) - _wgslsmith_f_op_f32(-527f * arg_0.x)), 1259f, _wgslsmith_f_op_f32(-1931f * arg_0.x)));
    var var_1 = any(select(!(!(!vec2<bool>(false, arg_2))), var_0.d.yz, func_3().x));
    var var_2 = reverseBits(~36345u);
    var var_3 = var_0;
    let var_4 = true;
    return Struct_2(max(max(firstTrailingBit(vec4<i32>(2147483647i, 0i, arg_1, 1i)), vec4<i32>(1i, ~arg_1, select(2147483647i, 11302i, true), 1535i)), ~vec4<i32>(i32(-1i) * -1i, 67456i, firstTrailingBit(arg_1), -arg_1)), arg_0.xzz);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    let var_0 = arg_0;
    var var_1 = 659f;
    var var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.x, arg_0.e.x, arg_0.e.x, 295f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-162f, 417f, arg_0.e.x, arg_2.b.x))))))));
    let var_4 = var_0.d.xx;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1389f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x))) - arg_1.b.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)));
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: vec2<f32>, arg_3: Struct_1) -> u32 {
    let var_0 = max(-24792i, arg_1) >> (~u_input.a.x % 32u);
    let var_1 = 61637u;
    let var_2 = vec3<f32>(_wgslsmith_div_f32(177f, _wgslsmith_f_op_f32(abs(-424f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_4(arg_3, func_2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_3.a.x, arg_2.x, -501f, arg_3.b.x), vec4<f32>(arg_2.x, -2131f, arg_2.x, -1271f))), arg_1, true, true), func_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(431f, arg_3.e.x, arg_3.c.x, arg_3.c.x))), -13071i, arg_0.x, !arg_3.d.x))))), arg_2.x);
    var var_3 = !(!(!(!(!arg_3.d))));
    let var_4 = func_3().x;
    return firstLeadingBit(u_input.a.x);
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = -55482i;
    var var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-162f * 151f), arg_3.a.x, arg_3.b.x, arg_3.a.x))))), vec4<f32>(-540f, -1532f, arg_3.e.x, _wgslsmith_f_op_f32(-2113f + arg_3.c.x))));
    var var_2 = reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1, 29424u, 19130u, ~arg_1), select(vec4<u32>(u_input.a.x, ~569u, 0u, 17989u), select(abs(vec4<u32>(13748u, u_input.a.x, u_input.a.x, arg_1)), vec4<u32>(u_input.a.x, u_input.a.x, arg_1, 4294967295u), vec4<bool>(true, arg_2, false, arg_3.d.x)), arg_2)));
    var var_3 = func_3();
    return arg_3.d.xx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(func_5(true, ~43296u ^ func_1(vec3<bool>(true, true, true), 1i, vec2<f32>(-577f, -1219f), Struct_1(vec3<f32>(252f, -519f, 1000f), vec2<f32>(357f, 352f), vec2<f32>(343f, -575f), vec3<bool>(true, false, true), vec3<f32>(-1637f, 1000f, -1045f))), true, Struct_1(vec3<f32>(1580f, 316f, 2464f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-492f, 689f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(312f, 794f), vec2<f32>(-203f, -539f))), vec3<bool>(true, true, true), vec3<f32>(1180f, -147f, 822f))), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), func_5(all(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), 1u, false, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1316f), _wgslsmith_f_op_f32(-1786f - 472f), -661f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1186f, -2191f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1794f, 117f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-527f, 471f) - vec2<f32>(-1595f, -185f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1612f, -1130f))), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-334f, 854f, 963f))))));
    var var_1 = func_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-140f, -486f, -452f, 137f))))))), -func_2(vec4<f32>(-1435f, _wgslsmith_f_op_f32(step(360f, -1461f)), _wgslsmith_div_f32(-226f, -1227f), -608f), 1i, var_0.x, true).a.x, (_wgslsmith_clamp_i32(select(0i, -9252i, false), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 21352i), vec2<i32>(-2425i, 0i)), firstTrailingBit(-30715i)) > 5070i) && any(select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x)), !vec2<bool>(var_0.x, true), true)), min(~(~0i), firstLeadingBit(-1i)) >= (1i ^ firstTrailingBit(0i))).a.x;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1236f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1090f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(452f + -247f) * _wgslsmith_f_op_f32(abs(1000f)))))), vec2<f32>(_wgslsmith_f_op_f32(func_4(Struct_1(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1508f, 531f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 282f)), select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(false, true, var_0.x), vec3<bool>(true, false, false)), _wgslsmith_div_vec3_f32(vec3<f32>(-237f, 1631f, -180f), vec3<f32>(1099f, -1728f, 619f))), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(212f, 123f, 1751f, -1088f)), 1i, true, var_0.x), Struct_2(max(vec4<i32>(1i, -2147483647i, 0i, -13980i), vec4<i32>(0i, -16197i, 0i, 0i)), vec3<f32>(912f, -721f, -1066f)))), -1078f), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-587f, _wgslsmith_f_op_f32(func_2(vec4<f32>(-1029f, 782f, -939f, -1000f), 2147483647i, true, var_0.x).b.x + _wgslsmith_f_op_f32(round(488f)))))), !(!select(vec3<bool>(true, true, true), !vec3<bool>(var_0.x, true, var_0.x), func_3())), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1493f, -1128f, 482f)) + _wgslsmith_div_vec3_f32(vec3<f32>(405f, -421f, 786f), vec3<f32>(-815f, -1000f, -732f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -976f, 707f), vec3<f32>(-2120f, -1096f, 1248f)) - vec3<f32>(-1068f, 1000f, -301f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(475f, -426f, -401f))), vec3<f32>(310f, -533f, 984f))))));
    var var_3 = -_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 11817i), vec2<i32>(1i, -71587i)) | _wgslsmith_dot_vec2_i32(vec2<i32>(-53389i, 1i), vec2<i32>(1i, 2951i)), _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(0i, -1i)), vec2<i32>(1i, 37688i))), _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(474i, 14760i)), max(vec2<i32>(-29980i, 1i), vec2<i32>(-13339i, -2147483647i))), vec2<i32>(19285i, 1i), _wgslsmith_mult_vec2_i32(abs(vec2<i32>(0i, 1i)), vec2<i32>(1i, 2147483647i) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)))));
    var_3 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, var_2.e.x, var_2.c.x, 1017f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(777f, var_2.b.x, var_2.c.x, -1520f) + vec4<f32>(-1478f, 151f, 928f, var_2.e.x)))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(trunc(-350f)), _wgslsmith_f_op_f32(-255f + -1198f), var_2.a.x, var_2.b.x)))), 77369i | -var_3.x, var_2.d.x, var_0.x).a.zw;
    let x = u_input.a;
    s_output = StorageBuffer((var_3.x | -24609i) << (u_input.a.x % 32u), _wgslsmith_mod_u32(_wgslsmith_mult_u32(~_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), ~(~u_input.a.x)), u_input.a.x), vec3<f32>(_wgslsmith_div_f32(-203f, _wgslsmith_f_op_f32(func_4(Struct_1(var_2.e, vec2<f32>(-498f, 443f), var_2.e.xz, var_2.d, vec3<f32>(var_2.a.x, -1017f, 330f)), Struct_2(vec4<i32>(-23132i, -41379i, var_3.x, 40036i), var_2.e), func_2(vec4<f32>(var_2.b.x, 113f, -1205f, var_2.e.x), var_3.x, var_0.x, var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.e.x + var_2.b.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1109f))), func_2(vec4<f32>(_wgslsmith_f_op_f32(func_4(Struct_1(vec3<f32>(var_2.c.x, -454f, var_2.c.x), var_2.c, vec2<f32>(257f, var_2.e.x), var_2.d, var_2.a), Struct_2(vec4<i32>(2147483647i, -19165i, 26455i, 57368i), vec3<f32>(-437f, 108f, var_2.b.x)), Struct_2(vec4<i32>(73189i, -34243i, var_3.x, -2147483647i), var_2.a))), -833f, var_2.a.x, -1852f), -(var_3.x << (55906u % 32u)), var_0.x, select(1066f >= var_2.c.x, false, true)).b.x), ~vec2<u32>(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(2567u, 4294967295u, u_input.a.x, u_input.a.x))), _wgslsmith_sub_u32(_wgslsmith_add_u32(62236u, u_input.a.x), reverseBits(37585u))));
}

