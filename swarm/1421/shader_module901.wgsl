struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
    c: i32,
    d: Struct_1,
    e: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -59966i;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> i32 {
    global0 = ~min(_wgslsmith_mod_i32(-1i, _wgslsmith_mult_i32(u_input.b.x, -1i)) & _wgslsmith_div_i32(arg_1.b.x, arg_1.b.x), _wgslsmith_mod_i32(arg_1.b.x, ~(-1i) | _wgslsmith_mod_i32(arg_1.b.x, u_input.b.x)));
    var var_0 = -_wgslsmith_clamp_vec3_i32(-(~min(arg_1.b.zxx, vec3<i32>(arg_1.b.x, u_input.b.x, arg_1.b.x))), ~vec3<i32>(arg_1.b.x & -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-5918i, -2147483647i), arg_1.b.xw), 33533i), vec3<i32>(firstLeadingBit(_wgslsmith_div_i32(arg_1.b.x, arg_1.b.x)), u_input.b.x, 22704i));
    let var_1 = vec4<bool>(true, true, !any(vec4<bool>(true, true, true, any(vec3<bool>(true, true, false)))), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.c.x + 386f)) >= 393f));
    let var_2 = vec4<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(693f, _wgslsmith_f_op_f32(-arg_1.a.a.x))))), arg_0, -442f);
    let var_3 = select(select(var_1.xz, select(!vec2<bool>(var_1.x, var_1.x), !var_1.xy, !(false & var_1.x)), true), vec2<bool>(all(var_1), true), !var_1.x);
    return _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(~var_0.zy, firstLeadingBit(_wgslsmith_div_vec2_i32(arg_1.b.yz, vec2<i32>(1i, -1i))) << (~_wgslsmith_div_vec2_u32(vec2<u32>(44513u, 1u), arg_1.a.b) % vec2<u32>(32u))), -arg_1.b.x & ~49160i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(firstLeadingBit(arg_1.b.yw), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.x, u_input.b.x), vec2<i32>(var_0.x, -10747i), var_0.yz) << (~vec2<u32>(u_input.c, 52190u) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(-vec2<i32>(-47763i, var_0.x), vec2<i32>(-58468i, 2147483647i))), -var_0.zz));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_4) -> u32 {
    return arg_1.e.b.x;
}

fn func_2(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: bool, arg_3: f32) -> Struct_1 {
    let var_0 = 3615i;
    var var_1 = arg_0.b.zy;
    var var_2 = Struct_2(arg_0.b, ~firstTrailingBit(~32727i), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.a.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -415f), 122f), arg_0.d.b, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1418f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -364f)), arg_0.a.a.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) - _wgslsmith_f_op_f32(step(-385f, arg_1.x)))), _wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(443f + _wgslsmith_f_op_f32(arg_3 - arg_1.x)))), arg_0.a.a, arg_0.d);
    let var_3 = vec2<u32>(43199u, func_4(-reverseBits(arg_0.e.b.yzx), Struct_2(vec4<u32>(1u, arg_0.d.b.x, var_2.e.b.x, 4294967295u), func_3(-2185f, arg_0.a), var_2.c, var_2.c, var_2.c), arg_0)) | _wgslsmith_clamp_vec2_u32(var_2.d.b | _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(arg_0.a.a.b, vec2<u32>(var_2.e.b.x, 99240u)), select(vec2<u32>(var_1.x, var_1.x), var_2.c.b, true)), ~(~vec2<u32>(1u, 83475u)), min(_wgslsmith_div_vec2_u32(vec2<u32>(var_2.e.b.x, 4294967295u), firstTrailingBit(var_2.e.b)), ~vec2<u32>(var_2.c.b.x, 4294967295u)));
    let var_4 = var_2.b;
    return Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(var_2.c.c.xzz + vec3<f32>(_wgslsmith_f_op_f32(select(796f, arg_3, arg_2)), -1406f, 1353f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-494f, 427f, arg_3))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1060f, arg_0.e.a.d, -1000f)))))), ~var_2.d.b, _wgslsmith_f_op_vec4_f32(-var_2.c.c), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-arg_1.x)))))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = arg_0.b;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(344f, arg_1.d)));
    let var_2 = _wgslsmith_clamp_vec4_u32(arg_0.a, select(vec4<u32>(u_input.c | func_2(Struct_4(Struct_3(Struct_1(arg_1.c.yyy, arg_1.b, arg_1.c, -2139f), vec4<i32>(u_input.b.x, 3601i, arg_0.b, arg_0.b)), arg_0.a, arg_0.b, Struct_1(vec3<f32>(arg_0.d.c.x, arg_1.c.x, 351f), vec2<u32>(arg_0.e.b.x, 26834u), arg_1.c, 1520f), Struct_3(arg_1, vec4<i32>(31871i, -28302i, 0i, -30563i))), vec4<f32>(arg_1.a.x, var_1.x, arg_1.c.x, 2031f), false, -178f).b.x, 1u, arg_0.e.b.x, arg_0.c.b.x), arg_0.a, any(vec2<bool>(true, true))), ~arg_0.a);
    let var_3 = any(select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), true)), vec4<bool>(var_2.x > 0u, true, true, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), true)), !vec4<bool>(true, true, any(vec3<bool>(false, false, true)), select(false, false, false)), vec4<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, false), true)), arg_1.b.x <= _wgslsmith_dot_vec3_u32(arg_0.a.wxw, vec3<u32>(u_input.a, 1u, var_2.x)), any(vec3<bool>(true, true, false)), !(4294967295u == arg_1.b.x))));
    let var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(270f * 1874f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, -852f)))), arg_0.d.d, firstLeadingBit(_wgslsmith_div_u32(1u, 26272u)) < _wgslsmith_sub_u32(0u, arg_1.b.x)))));
    return countOneBits(_wgslsmith_mod_vec4_u32(arg_0.a, vec4<u32>(arg_0.a.x | 1u, ~arg_1.b.x, ~arg_0.a.x, 92752u) >> (reverseBits(vec4<u32>(arg_1.b.x, 0u, 4294967295u, 18963u) << (var_2 % vec4<u32>(32u))) % vec4<u32>(32u))));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec2<u32>) -> Struct_3 {
    global0 = _wgslsmith_sub_i32(1i, countOneBits(_wgslsmith_clamp_i32(u_input.b.x ^ ~0i, -532i, u_input.b.x)));
    global0 = u_input.b.x;
    let var_0 = Struct_5(u_input.b.x, any(select(!(!vec2<bool>(arg_0, false)), vec2<bool>(true, any(vec2<bool>(false, arg_1))), false)), ~(func_5(Struct_2(vec4<u32>(arg_2.x, 32146u, arg_2.x, 68604u), -7789i, Struct_1(vec3<f32>(550f, -617f, -170f), arg_2, vec4<f32>(-416f, -630f, 748f, -1000f), -1210f), Struct_1(vec3<f32>(2935f, -416f, 1526f), vec2<u32>(u_input.c, 11659u), vec4<f32>(1781f, 301f, 704f, -335f), -802f), Struct_1(vec3<f32>(1556f, -355f, -322f), vec2<u32>(36231u, 31118u), vec4<f32>(-576f, -106f, -470f, -678f), 336f)), func_2(Struct_4(Struct_3(Struct_1(vec3<f32>(789f, -598f, 268f), arg_2, vec4<f32>(844f, 1100f, 1500f, -984f), -128f), vec4<i32>(0i, u_input.b.x, -1i, u_input.b.x)), vec4<u32>(0u, arg_2.x, 22890u, 512u), u_input.b.x, Struct_1(vec3<f32>(681f, 1191f, -647f), vec2<u32>(arg_2.x, u_input.a), vec4<f32>(-258f, -1000f, -206f, 2086f), -501f), Struct_3(Struct_1(vec3<f32>(1040f, 241f, -3102f), arg_2, vec4<f32>(786f, 171f, -1000f, 895f), -1170f), vec4<i32>(u_input.b.x, -19618i, u_input.b.x, 43428i))), vec4<f32>(2258f, -1000f, 1439f, 665f), false, -633f)) & vec4<u32>(1u, 0u, func_5(Struct_2(vec4<u32>(0u, arg_2.x, arg_2.x, arg_2.x), u_input.b.x, Struct_1(vec3<f32>(-149f, 376f, 1812f), arg_2, vec4<f32>(-1000f, -1225f, -2195f, -1172f), -479f), Struct_1(vec3<f32>(-2824f, -2169f, -706f), arg_2, vec4<f32>(-1000f, 212f, 319f, -697f), -1000f), Struct_1(vec3<f32>(-492f, -270f, -624f), vec2<u32>(arg_2.x, 4294967295u), vec4<f32>(642f, -209f, 970f, -1000f), 268f)), Struct_1(vec3<f32>(2405f, -519f, -719f), vec2<u32>(0u, 1u), vec4<f32>(1291f, 417f, 408f, 2357f), -206f)).x, select(7269u, arg_2.x, false))));
    let var_1 = -vec2<i32>(u_input.b.x, _wgslsmith_mod_i32(u_input.b.x, func_3(1000f, Struct_3(Struct_1(vec3<f32>(-895f, 1095f, 1000f), vec2<u32>(arg_2.x, 0u), vec4<f32>(-118f, 683f, 1410f, 830f), -582f), vec4<i32>(var_0.a, var_0.a, -7528i, u_input.b.x))) ^ var_0.a));
    global0 = var_0.a;
    return Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -427f), _wgslsmith_f_op_f32(min(-325f, -689f)), _wgslsmith_f_op_f32(-374f * -199f)))), arg_2, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(max(1019f, -599f)), _wgslsmith_f_op_f32(398f + -779f), _wgslsmith_div_f32(255f, -465f), -179f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(283f, -1281f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-184f + -158f))))), -vec4<i32>(-1i, 2147483647i, 1i, ~func_3(-1413f, Struct_3(Struct_1(vec3<f32>(544f, 145f, 995f), vec2<u32>(u_input.c, arg_2.x), vec4<f32>(-1168f, 276f, 572f, -1189f), 1054f), vec4<i32>(-50033i, 64735i, 0i, -53987i)))));
}

fn func_6(arg_0: Struct_3) -> vec2<u32> {
    let var_0 = arg_0.b.x;
    let var_1 = _wgslsmith_f_op_f32(floor(arg_0.a.d));
    let var_2 = -_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.b.x, u_input.b.x ^ arg_0.b.x) >> (~vec2<u32>(21081u, u_input.c) % vec2<u32>(32u)), -u_input.b.zy);
    global0 = i32(-1i) * -2147483647i;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.c.x)));
    return _wgslsmith_div_vec2_u32(vec2<u32>(1u, ~(reverseBits(0u) ^ arg_0.a.b.x)), firstLeadingBit(vec2<u32>(u_input.a, 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_1(true, abs(u_input.b.x) >= u_input.b.x, _wgslsmith_sub_vec2_u32(~firstLeadingBit(vec2<u32>(40182u, u_input.c)), vec2<u32>(u_input.c, _wgslsmith_mod_u32(4294967295u, u_input.c)))));
    let var_1 = !(!(_wgslsmith_f_op_f32(ceil(1382f)) == _wgslsmith_f_op_f32(f32(-1f) * -510f)) || true);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~(~vec3<u32>(102299u, u_input.a, u_input.c))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1431f, 1000f, 241f, -1479f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-885f, 825f, 168f, -784f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-372f, -944f, 756f, 176f) - vec4<f32>(-1119f, 867f, -517f, 707f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1078f, -1240f, -1792f, 383f) + vec4<f32>(791f, -517f, 1000f, 536f)))), vec4<f32>(_wgslsmith_f_op_f32(181f + 1102f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(1531f, 1000f), -1166f))), ~(~(vec4<u32>(0u, u_input.c, var_0.x, 9506u) ^ vec4<u32>(4294967295u, var_0.x, 1u, 59520u))) << (~(vec4<u32>(40704u, 44476u, var_0.x, 4410u) | abs(vec4<u32>(var_0.x, 1u, 47254u, 0u))) % vec4<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(270f * _wgslsmith_f_op_f32(f32(-1f) * -827f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(475f, 1694f) - -370f)))));
}

