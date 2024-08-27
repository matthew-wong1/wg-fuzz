struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: i32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: f32,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 35784u, 24749u);

var<private> global1: i32;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: vec4<bool>, arg_3: f32) -> f32 {
    let var_0 = -(_wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(1i, 1i)), _wgslsmith_add_vec2_i32(vec2<i32>(1i, 9069i), firstTrailingBit(vec2<i32>(-1i, 1i)))) << (vec2<u32>(min(0u, ~global0.x), u_input.a.x) % vec2<u32>(32u)));
    var var_1 = var_0.x;
    let var_2 = Struct_1(max(~(~vec2<i32>(var_0.x, var_0.x)), -max(countOneBits(vec2<i32>(var_0.x, 2147483647i)), abs(var_0))), select(!(!arg_2.yw), vec2<bool>(arg_2.x, false), arg_2.x), -31370i, _wgslsmith_mult_u32(1u, u_input.a.x) >> (~_wgslsmith_mod_u32(max(global0.x, 34076u), _wgslsmith_mod_u32(20903u, global0.x)) % 32u), !arg_2.x);
    global1 = ~_wgslsmith_mult_i32(50548i, ~abs(~22062i));
    let var_3 = arg_1.yyw;
    return arg_0.x;
}

fn func_4(arg_0: f32) -> i32 {
    global1 = _wgslsmith_add_i32(-_wgslsmith_dot_vec2_i32(-(~vec2<i32>(2147483647i, -29890i)), ~vec2<i32>(1i, 1i)), abs(_wgslsmith_sub_i32(0i, 2147483647i) << (firstTrailingBit(1u) % 32u)));
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1165f)));
    let var_1 = Struct_4(-1i >> (0u % 32u), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true))), false));
    let var_2 = Struct_3(Struct_2(~_wgslsmith_clamp_vec4_i32(-vec4<i32>(-38627i, var_1.a, -6702i, -1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-59251i, var_1.a, 2147483647i, -2147483647i), vec4<i32>(2147483647i, var_1.a, 2147483647i, var_1.a), vec4<i32>(12196i, 2147483647i, 0i, var_1.a)), vec4<i32>(var_1.a, 0i, var_1.a, var_1.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-682f, arg_0, -224f, 746f) - vec4<f32>(810f, var_0.x, _wgslsmith_f_op_f32(-243f * -1000f), var_0.x)), Struct_1(vec2<i32>(2521i ^ var_1.a, var_1.a | -15732i), vec2<bool>(!var_1.b.x, false), -_wgslsmith_mod_i32(var_1.a, 5616i), 1u, false), Struct_1(vec2<i32>(1i, -1i), var_1.b.yy, ~(-9180i), _wgslsmith_dot_vec3_u32(min(vec3<u32>(32261u, u_input.a.x, u_input.a.x), vec3<u32>(47134u, 81084u, global0.x)), abs(vec3<u32>(global0.x, 0u, 912u))), true), vec3<i32>(var_1.a, ~(26520i << (0u % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a, 2147483647i) >> (vec2<u32>(1823u, 32602u) % vec2<u32>(32u)), vec2<i32>(-1i, 2147483647i)))), var_1.a, arg_0);
    var var_3 = vec4<bool>(arg_0 >= -981f, !(true & (_wgslsmith_f_op_f32(exp2(arg_0)) == _wgslsmith_f_op_f32(exp2(var_2.a.b.x)))), !select(true, false, var_2.a.d.e), !(!var_1.b.x));
    return _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.a, -15815i, 0i, -22253i), abs(vec4<i32>(-2147483647i, var_1.a, var_2.b, 1i)))), min(var_2.a.a, reverseBits(~var_2.a.a))), _wgslsmith_add_i32(~(max(var_2.a.d.a.x, 1i) & var_1.a), min(7775i, _wgslsmith_div_i32(countOneBits(var_1.a), -var_1.a))));
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), abs(vec2<i32>(1i, 1i))), select(vec2<i32>(~32982i, -20279i), ~(vec2<i32>(-30545i, 44529i) >> (vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u))), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)))), firstTrailingBit(abs(vec2<i32>(2147483647i, 4909i)) << (min(global0.zz, u_input.a) % vec2<u32>(32u))));
    var var_1 = func_4(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(383f, 666f, 551f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2016f, -267f, 1123f))))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-298f, -190f, 1f, -1000f))), vec4<bool>(true, true, true, true), -1158f)));
    let var_2 = Struct_3(Struct_2(vec4<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2491i, 86655i), vec3<i32>(-2147483647i, 0i, -48504i)), i32(-1i) * -11463i, ~select(13114i, 2147483647i, false), 2147483647i), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-471f, -941f, -525f, 494f), vec4<f32>(-920f, 1497f, 462f, 379f)) * vec4<f32>(1000f, -394f, -1133f, 244f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2030f, 1629f, -1242f, -1002f))))), Struct_1(max(vec2<i32>(1i, 1i), -vec2<i32>(1i, 27216i)), vec2<bool>(true, true), -3945i, 56754u, any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)))), Struct_1(abs(abs(vec2<i32>(37909i, -2147483647i))), vec2<bool>(true, true), ~(i32(-1i) * -7428i), u_input.a.x, all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true))), firstLeadingBit(vec3<i32>(-4062i, 27838i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1819i, -1i, -43475i, 2147483647i), vec4<i32>(1i, 26267i, 1i, -18411i))))), -2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-987f, -1554f, 370f)), _wgslsmith_div_vec4_f32(vec4<f32>(1022f, 1000f, 333f, -872f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1472f, -193f, 1174f, -1694f)))), vec4<bool>(false, all(vec4<bool>(true, false, false, true)), true, true), -1677f)) + _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-320f, -1160f, -270f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-245f, -978f, 1000f, 1000f), vec4<f32>(128f, -451f, -1260f, -587f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-595f, -825f, -650f, -254f) + vec4<f32>(1828f, -581f, 2055f, -352f)))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), select(false, false, false)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1711f * 787f)))))));
    var var_3 = var_2.a.d;
    let var_4 = Struct_4(var_3.a.x, vec3<bool>(true, any(vec4<bool>(!var_3.e, var_3.b.x, var_2.a.d.b.x, false)), _wgslsmith_mod_u32(reverseBits(var_3.d), 1u) < countOneBits(4294967295u)));
    return true;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: vec2<u32>) -> vec2<i32> {
    var var_0 = arg_0;
    let var_1 = !select(!vec3<bool>(true, any(vec3<bool>(true, true, false)), true), vec3<bool>(func_2(), true, !(1u != arg_2.x)), vec3<bool>(false, true, any(vec4<bool>(true, true, true, true))));
    let var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(func_4(_wgslsmith_f_op_f32(select(1000f, 1076f, false))), _wgslsmith_clamp_i32(-arg_1.x, arg_1.x, 1i), 25046i, _wgslsmith_mod_i32(arg_1.x, 1i)) & _wgslsmith_mod_vec4_i32(vec4<i32>(-35214i << (0u % 32u), arg_1.x | arg_1.x, arg_1.x, -10894i), ~vec4<i32>(-1i, -22710i, -2147483647i, -1762i)), -firstLeadingBit(abs(~vec4<i32>(arg_1.x, 1i, -1i, -2147483647i))));
    var_0 = max(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, ~max(8027u, 1u)), u_input.a), select(reverseBits(vec2<u32>(arg_2.x, global0.x)) ^ ~vec2<u32>(var_0.x, var_0.x), arg_2, !(!select(var_1.yy, vec2<bool>(true, false), vec2<bool>(var_1.x, var_1.x)))));
    var_0 = ~arg_0;
    return vec2<i32>(_wgslsmith_add_i32(var_2.x | 1i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(4311i, 2147483647i, 56342i), var_2.yzz ^ vec3<i32>(2147483647i, 2147483647i, arg_1.x))), -min(6177i, arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~func_1(u_input.a, vec3<i32>(-2147483647i, 1i, firstTrailingBit(4226i)), abs(_wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(global0.x, 0u)))), select(vec2<bool>(true, true), vec2<bool>(true, true), true), ~1i, ~_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(global0.x, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, global0.x, 25886u, u_input.a.x), vec4<u32>(66660u, global0.x, u_input.a.x, 63999u) ^ vec4<u32>(global0.x, global0.x, 18174u, global0.x))), true);
    let var_1 = ~var_0.c;
    var_0 = Struct_1(var_0.a, !select(var_0.b, select(select(var_0.b, var_0.b, vec2<bool>(var_0.e, var_0.e)), var_0.b, true), all(vec4<bool>(false, true, var_0.b.x, var_0.e))), i32(-1i) * -(24552i << (~u_input.a.x % 32u)), u_input.a.x & 4743u, true);
    global1 = _wgslsmith_add_i32(var_1 & var_0.a.x, _wgslsmith_mult_i32(var_0.a.x, 0i));
    global1 = _wgslsmith_dot_vec2_i32(vec2<i32>(-(1i >> (u_input.a.x % 32u)), func_1(~(~u_input.a), vec3<i32>(_wgslsmith_clamp_i32(var_0.a.x, -2147483647i, var_0.c), _wgslsmith_dot_vec2_i32(var_0.a, var_0.a), -var_1), u_input.a).x), vec2<i32>(-1i) * -vec2<i32>(-30285i, i32(-1i) * -1i));
    let var_2 = _wgslsmith_dot_vec2_u32(u_input.a, global0.yz);
    var var_3 = var_1;
    var_0 = Struct_1(vec2<i32>(-1i | reverseBits(_wgslsmith_add_i32(var_1, -36821i)), 7334i), vec2<bool>(true, true), var_0.a.x, 11457u, !(!var_0.e) & any(select(select(vec3<bool>(false, true, var_0.e), vec3<bool>(true, false, true), true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x)), var_0.b.x && var_0.e)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(-1237f + -1865f)))));
}

