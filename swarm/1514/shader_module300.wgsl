struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: u32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-734f, 371f);

var<private> global1: array<vec3<f32>, 17> = array<vec3<f32>, 17>(vec3<f32>(789f, 455f, -327f), vec3<f32>(193f, 1540f, 308f), vec3<f32>(448f, 1010f, 411f), vec3<f32>(120f, 599f, -1610f), vec3<f32>(-1475f, 288f, -1928f), vec3<f32>(1267f, -762f, 239f), vec3<f32>(307f, 482f, 894f), vec3<f32>(-579f, -667f, 617f), vec3<f32>(477f, 843f, 799f), vec3<f32>(1129f, -115f, -217f), vec3<f32>(-315f, -265f, -1820f), vec3<f32>(-688f, 652f, 550f), vec3<f32>(-255f, -162f, 376f), vec3<f32>(-1250f, 1238f, 385f), vec3<f32>(-673f, 1000f, -1482f), vec3<f32>(720f, -1279f, -308f), vec3<f32>(-939f, -218f, -2330f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: i32) -> Struct_2 {
    var var_0 = 0i;
    var var_1 = _wgslsmith_div_vec2_u32(~_wgslsmith_div_vec2_u32(select(firstLeadingBit(vec2<u32>(u_input.b, 4294967295u)), ~vec2<u32>(20978u, u_input.b), true), vec2<u32>(~u_input.b, u_input.b)), vec2<u32>(_wgslsmith_mod_u32(1u, arg_0), u_input.b));
    let var_2 = ~(-_wgslsmith_add_vec2_i32(u_input.c, vec2<i32>(~(-55704i), -47733i)));
    global1 = array<vec3<f32>, 17>();
    global0 = arg_1;
    return Struct_2(arg_1.x);
}

fn func_3(arg_0: vec3<u32>) -> vec4<u32> {
    var var_0 = Struct_3(Struct_2(1313f), max(firstLeadingBit(vec3<i32>(-32173i, 22162i, -2147483647i)) >> (countOneBits(vec3<u32>(87082u, 1u, u_input.b)) % vec3<u32>(32u)), select(vec3<i32>(u_input.c.x, u_input.c.x, _wgslsmith_div_i32(u_input.c.x, 0i)), vec3<i32>(firstLeadingBit(1i), u_input.c.x, ~u_input.c.x), vec3<bool>(true, true, all(vec4<bool>(true, true, true, true))))), arg_0.x);
    let var_1 = vec2<u32>(~u_input.b, 74653u);
    var var_2 = func_1(var_1.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.x, -499f)))))) - vec2<f32>(267f, 806f)), firstLeadingBit(0i) << (arg_0.x % 32u));
    let var_3 = Struct_1(!select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, -611f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, 1243f), vec2<f32>(-1085f, var_2.a), vec2<bool>(true, false)))), vec2<f32>(-507f, _wgslsmith_f_op_f32(-var_0.a.a))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(150f, 814f)))))), ~vec3<i32>(~2147483647i, _wgslsmith_sub_i32(u_input.c.x, -49393i), u_input.a), -var_0.b.zx);
    let var_4 = Struct_4(var_0.a);
    return abs(vec4<u32>(_wgslsmith_dot_vec3_u32(abs(firstLeadingBit(arg_0)), arg_0), 51757u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(66224u, 0u), var_1 ^ vec2<u32>(1u, 4608u), max(vec2<u32>(arg_0.x, 0u), vec2<u32>(arg_0.x, 70833u))), vec2<u32>(_wgslsmith_mod_u32(var_0.c, u_input.b), ~arg_0.x)), var_1.x | ~(~1u)));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_4) -> i32 {
    var var_0 = Struct_2(-1259f);
    global1 = array<vec3<f32>, 17>();
    var_0 = Struct_2(arg_1.a.a);
    let var_1 = _wgslsmith_div_u32(~(~arg_0.x), arg_0.x) == ~_wgslsmith_mod_u32(~u_input.b, _wgslsmith_sub_u32(arg_0.x ^ 0u, _wgslsmith_div_u32(0u, u_input.b)));
    let var_2 = firstLeadingBit(~func_3(arg_0));
    return _wgslsmith_add_i32(u_input.c.x, u_input.a);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: f32, arg_3: f32) -> vec2<f32> {
    global1 = array<vec3<f32>, 17>();
    global1 = array<vec3<f32>, 17>();
    let var_0 = Struct_3(func_1(~u_input.b, vec2<f32>(arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.a)) + _wgslsmith_div_f32(-363f, arg_3))), u_input.c.x), -((firstLeadingBit(vec3<i32>(2147483647i, u_input.a, -1i)) >> (~vec3<u32>(60228u, 0u, u_input.b) % vec3<u32>(32u))) << (vec3<u32>(~38371u, abs(1u), 1u) % vec3<u32>(32u))), 14946u);
    var var_1 = Struct_3(func_1(u_input.b | ~_wgslsmith_mod_u32(20198u, u_input.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, arg_2))) * vec2<f32>(2048f, global0.x)) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a, var_0.a.a))))), 24230i | _wgslsmith_mod_i32(11903i, min(u_input.c.x, 4098i))), var_0.b, ~(~_wgslsmith_add_u32(0u, var_0.c)) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, u_input.b, u_input.b, 0u) | vec4<u32>(1821u, var_0.c, 30016u, 34682u), vec4<u32>(35694u, func_3(vec3<u32>(23648u, u_input.b, 59353u)).x, _wgslsmith_clamp_u32(var_0.c, u_input.b, 68587u), u_input.b)) % 32u));
    var var_2 = _wgslsmith_mult_i32(var_0.b.x, abs(u_input.c.x));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1225f, arg_3) * vec2<f32>(global0.x, arg_2)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, var_1.a.a)), vec2<bool>(false, true))))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) - vec2<f32>(1087f, arg_3))))))));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_3) -> bool {
    let var_0 = arg_2;
    var var_1 = func_1(arg_2.c, arg_0.b, var_0.b.x);
    let var_2 = vec4<u32>(arg_2.c, _wgslsmith_dot_vec2_u32(vec2<u32>(60957u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, arg_1, arg_2.c, 16296u), vec4<u32>(4294967295u, 4294967295u, arg_2.c, 0u)), _wgslsmith_add_u32(arg_2.c, 29488u))), ~(~vec2<u32>(arg_1, 4294967295u))), arg_2.c, arg_2.c);
    let var_3 = var_0.a;
    var_1 = func_1(max(_wgslsmith_dot_vec3_u32(var_2.yyy, vec3<u32>(var_2.x, arg_2.c, 1u)), _wgslsmith_div_u32(48382u, abs(arg_1))) << (max(~arg_2.c >> (_wgslsmith_div_u32(arg_1, arg_2.c) % 32u), _wgslsmith_add_u32(u_input.b, 2012u)) % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3.a, -687f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(arg_0.b)))), !select(arg_0.a, arg_0.a, arg_0.a.x)))), ~u_input.a);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(1u, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1000f)))))), _wgslsmith_sub_i32(1i, ~(-2147483647i)) << (u_input.b % 32u)), ~reverseBits(~vec3<i32>(u_input.a, -36309i, u_input.c.x) | -vec3<i32>(0i, u_input.a, u_input.a)), ~u_input.b);
    let var_1 = !all(vec4<bool>(true, true, true, true));
    var var_2 = (-1000f != _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(174f))), _wgslsmith_f_op_f32(-var_0.a.a))) && func_5(Struct_1(!select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1), false), _wgslsmith_f_op_vec2_f32(func_4(func_1(4294967295u, vec2<f32>(global0.x, var_0.a.a), 55168i), func_2(vec3<u32>(0u, 4294967295u, u_input.b), Struct_4(var_0.a)), _wgslsmith_f_op_f32(var_0.a.a - global0.x), _wgslsmith_f_op_f32(-var_0.a.a))), _wgslsmith_mult_vec3_i32(var_0.b, -vec3<i32>(19416i, var_0.b.x, u_input.a)), var_0.b.xy), abs(~1u), Struct_3(var_0.a, var_0.b, u_input.b));
    global1 = array<vec3<f32>, 17>();
    var var_3 = Struct_2(720f);
    var var_4 = select(select(!select(vec3<bool>(true, var_1, true), vec3<bool>(false, true, false), u_input.b > var_0.c), !vec3<bool>(var_1, true, true), !func_5(Struct_1(vec2<bool>(var_1, false), vec2<f32>(669f, -1088f), var_0.b, var_0.b.yx), 0u, var_0)), !vec3<bool>(false, func_5(Struct_1(vec2<bool>(var_1, var_1), vec2<f32>(-1938f, var_0.a.a), var_0.b, u_input.c), _wgslsmith_clamp_u32(5225u, var_0.c, 1u), Struct_3(Struct_2(var_0.a.a), vec3<i32>(var_0.b.x, 1i, 22719i), 13654u)), select(any(vec4<bool>(false, var_1, true, var_1)), true, true)), vec3<bool>(var_1, var_1, !any(vec3<bool>(var_1, false, var_1))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-abs(15682i), u_input.c.x, 0i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec2_f32(func_4(var_0.a, _wgslsmith_sub_i32(-1i, -1i), _wgslsmith_f_op_f32(round(962f)), _wgslsmith_f_op_f32(-var_0.a.a))).x)), 1f), -(~u_input.c ^ ~vec2<i32>(var_0.b.x, var_0.b.x)) << (vec2<u32>(reverseBits(~u_input.b), u_input.b) % vec2<u32>(32u)), vec4<u32>(_wgslsmith_div_u32(23234u, 74501u), 1u, ~36888u, _wgslsmith_mod_u32(10059u, 32511u) << (_wgslsmith_sub_u32(u_input.b, 15666u) % 32u)));
}

