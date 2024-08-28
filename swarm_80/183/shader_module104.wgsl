struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = arg_0;
    let var_1 = vec4<i32>(-1i) * -firstLeadingBit(~min(vec4<i32>(2147483647i, 27681i, u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, 1526i, u_input.a.x, -1i)));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-206f, 906f) * vec2<f32>(1264f, 1000f)))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1226f, _wgslsmith_f_op_f32(-2730f * -462f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(272f, 697f), vec2<f32>(952f, 1166f)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-246f, -757f)))), !var_0.a.xw))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-988f, 458f))), vec2<f32>(-1889f, 511f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-847f, -1000f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1958f)))) - vec2<f32>(_wgslsmith_f_op_f32(661f - _wgslsmith_f_op_f32(f32(-1f) * -348f)), -1153f)), var_0.a.yz));
    var var_3 = var_0;
    var var_4 = Struct_1(select(vec4<bool>(true, true, arg_0.a.x || true, var_3.a.x), !vec4<bool>(false, true, !arg_0.b, true), vec4<bool>(select(true, all(vec2<bool>(false, true)), any(vec3<bool>(var_0.a.x, var_0.b, var_3.a.x))), ~(-1i) < u_input.a.x, -910f != _wgslsmith_div_f32(var_2.x, var_2.x), !var_3.b || all(var_0.a.yzy))), false);
    return select(u_input.b.x, ~(~_wgslsmith_sub_u32(u_input.b.x, u_input.b.x)), !(~_wgslsmith_div_u32(1u, 1u) >= u_input.c.x));
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: i32, arg_3: bool) -> vec4<bool> {
    let var_0 = Struct_1(!(!select(!vec4<bool>(true, true, arg_3, true), !vec4<bool>(false, true, arg_3, true), true)), true);
    let var_1 = _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(u_input.d.zzy, u_input.d.zxz), ~vec3<i32>(1i, _wgslsmith_mod_i32(u_input.a.x, -47026i), _wgslsmith_add_i32(min(arg_2, arg_0.x), firstTrailingBit(-34255i))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-283f * -1572f))) * _wgslsmith_f_op_f32(232f * _wgslsmith_f_op_f32(step(-841f, -154f)))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2001f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(916f * -717f)))));
    let var_3 = Struct_1(var_0.a, true);
    var var_4 = ~firstTrailingBit(abs(min(vec2<u32>(11718u, u_input.c.x), u_input.c.zy) ^ vec2<u32>(21375u, 101497u)));
    return var_0.a;
}

fn func_2(arg_0: u32) -> bool {
    let var_0 = Struct_1(func_4(~_wgslsmith_add_vec2_i32(vec2<i32>(-848i, u_input.a.x), vec2<i32>(0i, 27649i)) ^ vec2<i32>(u_input.a.x, 1i), _wgslsmith_add_u32(min(reverseBits(u_input.b.x), reverseBits(29547u)), func_3(Struct_1(vec4<bool>(true, false, true, true), true))), 1i ^ _wgslsmith_sub_i32(-2147483647i, _wgslsmith_mod_i32(u_input.a.x, 2147483647i)), true), all(vec4<bool>(!(4575u < arg_0), true, false, all(vec3<bool>(true, true, true)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(1189f)), _wgslsmith_div_f32(-1422f, -479f), _wgslsmith_f_op_f32(abs(-904f)), _wgslsmith_f_op_f32(round(1233f))) * vec4<f32>(_wgslsmith_f_op_f32(-824f * -900f), -580f, -885f, _wgslsmith_f_op_f32(-1142f - -242f))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -742f)))), 1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-496f - 1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) * _wgslsmith_f_op_f32(-782f + _wgslsmith_f_op_f32(step(-1148f, -1703f))))));
    var var_2 = arg_0;
    var var_3 = var_0;
    var var_4 = var_0;
    return _wgslsmith_sub_i32(u_input.a.x | ~min(-50231i, 1i), _wgslsmith_sub_i32(-u_input.a.x, firstTrailingBit(_wgslsmith_mult_i32(u_input.d.x, 0i)))) > -(i32(-1i) * -_wgslsmith_clamp_i32(9358i, 2147483647i, u_input.a.x));
}

fn func_1() -> Struct_1 {
    return Struct_1(vec4<bool>(false, !(func_2(u_input.b.x) & true), true, true), false);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = min(-u_input.d.xx, vec2<i32>(min(_wgslsmith_add_i32(u_input.a.x, _wgslsmith_mult_i32(u_input.d.x, u_input.d.x)), u_input.d.x), 0i));
    var_0 = u_input.d.zy;
    var_0 = -u_input.d.xy;
    var_0 = -abs(~(abs(u_input.d.yx) << (~u_input.b.wx % vec2<u32>(32u))));
    let var_1 = vec3<i32>(var_0.x, -2147483647i, reverseBits(u_input.d.x));
    return func_1();
}

fn func_6(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = func_4(vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 1i, 2147483647i, -2147483647i), vec4<i32>(-2147483647i, u_input.a.x, -2147483647i, -1i)), 41759i), u_input.b.x, select(abs(-18083i) & abs(-u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-15434i >> (u_input.c.x % 32u), 44799i, firstTrailingBit(u_input.d.x)), u_input.d.yzx | _wgslsmith_sub_vec3_i32(u_input.d.zwz, vec3<i32>(u_input.a.x, -40599i, 8850i))), arg_1.b), arg_1.a.x).yxz;
    var var_1 = Struct_1(vec4<bool>(!(max(u_input.a.x, -2147483647i) <= -2147483647i), false, var_0.x, var_0.x), arg_1.b);
    var_1 = Struct_1(select(vec4<bool>(arg_1.a.x, all(!vec3<bool>(var_0.x, false, var_1.a.x)), var_1.a.x, var_0.x), vec4<bool>(!(-2247f >= arg_0), !all(var_1.a.zyx), any(vec2<bool>(var_1.b, arg_1.a.x)), all(var_1.a) | (true || var_1.a.x)), !(-u_input.d.x <= -45812i)), true);
    var_0 = select(var_1.a.xxz, arg_1.a.xyz, func_4(u_input.d.xw, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, u_input.b.x) >> (select(vec2<u32>(4294967295u, u_input.c.x), vec2<u32>(4294967295u, u_input.c.x), arg_1.a.x) % vec2<u32>(32u)), (vec2<u32>(u_input.b.x, 1u) & vec2<u32>(30728u, 15191u)) ^ vec2<u32>(4294967295u, u_input.c.x)), _wgslsmith_clamp_i32(2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(u_input.d.x, -2147483647i)), u_input.d.yy >> (vec2<u32>(u_input.b.x, 23309u) % vec2<u32>(32u))), _wgslsmith_mod_i32(~(-35535i), u_input.d.x)), true).xxw);
    var_0 = !(!vec3<bool>(func_2(~73935u), var_1.b, any(arg_1.a)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(-2528f, func_5(Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), false)), !all(vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1693f), _wgslsmith_f_op_f32(f32(-1f) * -880f))), func_1(), _wgslsmith_mult_i32(min(-78909i, 2147483647i), -1i) > (~(-20207i) ^ u_input.d.x)));
    var_0 = Struct_1(func_6(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(767f, -714f) + -745f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-821f, 1716f)))), func_6(_wgslsmith_f_op_f32(f32(-1f) * -1678f), func_1())).a, all(select(vec2<bool>(true, var_0.b), vec2<bool>(u_input.c.x < 0u, !var_0.b), vec2<bool>(false, !var_0.b))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-805f + 474f) + _wgslsmith_f_op_f32(-625f - -405f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1197f - -411f)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-306f - -1629f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(343f, 522f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-840f + -1270f)) + 983f)));
    var_0 = Struct_1(var_0.a, var_0.b);
    var_0 = func_5(func_1(), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(var_1, 331f), vec2<f32>(-647f, 1309f)), _wgslsmith_div_vec2_f32(vec2<f32>(-572f, var_1), vec2<f32>(var_1, var_1))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1, -2412f))))) * vec2<f32>(242f, _wgslsmith_f_op_f32(270f * var_1)))), Struct_1(!vec4<bool>(false, select(true, false, var_0.a.x), var_0.b, true), true), var_0.b);
    var_0 = Struct_1(vec4<bool>(-1325f <= _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(200f * 153f)), any(vec3<bool>(true, true, var_0.a.x & true)), false, true), select((true || (var_0.b & true)) | var_0.a.x, var_0.a.x || select(true, false, var_0.b != true), true));
    let x = u_input.a;
    s_output = StorageBuffer(0u, ~(~abs(u_input.b.x ^ u_input.c.x)), 2147483647i);
}

