struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_2,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<f32>,
    d: vec3<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 27> = array<Struct_4, 27>(Struct_4(9962u, Struct_3(vec2<bool>(true, false), Struct_1(false, vec2<u32>(16358u, 54575u), vec3<i32>(2147483647i, -1i, 4699i)), Struct_2(1u, 69996u, false), Struct_2(1u, 0u, false)), Struct_2(1u, 0u, false), 1u, false), Struct_4(1u, Struct_3(vec2<bool>(true, true), Struct_1(false, vec2<u32>(14254u, 138u), vec3<i32>(7256i, -36019i, i32(-2147483648))), Struct_2(12227u, 1u, false), Struct_2(4294967295u, 31491u, true)), Struct_2(1u, 0u, false), 47547u, false), Struct_4(4294967295u, Struct_3(vec2<bool>(true, false), Struct_1(false, vec2<u32>(13807u, 16809u), vec3<i32>(-1i, -14745i, -32350i)), Struct_2(4294967295u, 1u, true), Struct_2(10654u, 103392u, false)), Struct_2(4294967295u, 1u, true), 45461u, true), Struct_4(1u, Struct_3(vec2<bool>(false, false), Struct_1(false, vec2<u32>(42062u, 109542u), vec3<i32>(32022i, -1i, 0i)), Struct_2(1u, 59066u, false), Struct_2(1u, 0u, true)), Struct_2(66848u, 4294967295u, true), 0u, true), Struct_4(52769u, Struct_3(vec2<bool>(false, true), Struct_1(true, vec2<u32>(60187u, 22827u), vec3<i32>(21528i, -4917i, 2147483647i)), Struct_2(100927u, 76u, true), Struct_2(4294967295u, 4294967295u, true)), Struct_2(93342u, 0u, false), 4294967295u, false), Struct_4(2015u, Struct_3(vec2<bool>(false, false), Struct_1(true, vec2<u32>(10917u, 4294967295u), vec3<i32>(i32(-2147483648), 1i, 1i)), Struct_2(32136u, 0u, false), Struct_2(1u, 62325u, true)), Struct_2(0u, 1u, true), 4294967295u, true), Struct_4(0u, Struct_3(vec2<bool>(false, false), Struct_1(true, vec2<u32>(40196u, 44788u), vec3<i32>(1i, i32(-2147483648), 4439i)), Struct_2(4294967295u, 0u, true), Struct_2(1u, 95589u, true)), Struct_2(1u, 60642u, true), 17264u, false), Struct_4(8463u, Struct_3(vec2<bool>(false, true), Struct_1(true, vec2<u32>(99460u, 4294967295u), vec3<i32>(-28767i, i32(-2147483648), -21337i)), Struct_2(16665u, 1u, false), Struct_2(0u, 4294967295u, true)), Struct_2(27722u, 35325u, false), 33321u, true), Struct_4(76030u, Struct_3(vec2<bool>(false, false), Struct_1(false, vec2<u32>(26296u, 10471u), vec3<i32>(1i, 54683i, -1i)), Struct_2(1u, 4294967295u, true), Struct_2(4294967295u, 42443u, false)), Struct_2(79497u, 28442u, true), 19676u, false), Struct_4(4294967295u, Struct_3(vec2<bool>(false, false), Struct_1(true, vec2<u32>(23339u, 1u), vec3<i32>(-6532i, -1i, -19922i)), Struct_2(37121u, 79622u, false), Struct_2(1u, 4883u, false)), Struct_2(1u, 35642u, true), 2520u, false), Struct_4(5752u, Struct_3(vec2<bool>(true, true), Struct_1(true, vec2<u32>(1u, 64131u), vec3<i32>(14393i, 2147483647i, -5640i)), Struct_2(1u, 12829u, true), Struct_2(4294967295u, 1544u, true)), Struct_2(1u, 4294967295u, false), 15481u, true), Struct_4(35997u, Struct_3(vec2<bool>(true, false), Struct_1(false, vec2<u32>(25198u, 0u), vec3<i32>(1i, 2040i, 2147483647i)), Struct_2(55891u, 0u, false), Struct_2(3988u, 24357u, false)), Struct_2(4294967295u, 47159u, false), 11221u, true), Struct_4(0u, Struct_3(vec2<bool>(true, true), Struct_1(true, vec2<u32>(0u, 36314u), vec3<i32>(-1i, 17518i, 50868i)), Struct_2(77631u, 1952u, true), Struct_2(5030u, 148863u, true)), Struct_2(2379u, 11572u, true), 52971u, false), Struct_4(1u, Struct_3(vec2<bool>(false, false), Struct_1(true, vec2<u32>(63925u, 4294967295u), vec3<i32>(2147483647i, 2147483647i, 0i)), Struct_2(0u, 1u, true), Struct_2(60806u, 49451u, true)), Struct_2(50389u, 60947u, false), 1u, true), Struct_4(4294967295u, Struct_3(vec2<bool>(false, true), Struct_1(true, vec2<u32>(38454u, 0u), vec3<i32>(0i, 0i, 1i)), Struct_2(1u, 0u, true), Struct_2(19968u, 1u, true)), Struct_2(30242u, 31620u, false), 1u, false), Struct_4(29343u, Struct_3(vec2<bool>(false, true), Struct_1(false, vec2<u32>(48478u, 649u), vec3<i32>(-59803i, 2147483647i, i32(-2147483648))), Struct_2(4474u, 4294967295u, false), Struct_2(1u, 0u, false)), Struct_2(40706u, 4294967295u, true), 4102u, true), Struct_4(1u, Struct_3(vec2<bool>(false, false), Struct_1(true, vec2<u32>(4294967295u, 50570u), vec3<i32>(-35816i, 21708i, 1i)), Struct_2(0u, 71886u, false), Struct_2(1u, 119445u, false)), Struct_2(4294967295u, 4294967295u, false), 0u, true), Struct_4(48123u, Struct_3(vec2<bool>(true, true), Struct_1(true, vec2<u32>(4294967295u, 11017u), vec3<i32>(2147483647i, 62969i, 31952i)), Struct_2(51195u, 4294967295u, true), Struct_2(52580u, 45005u, false)), Struct_2(14673u, 1u, false), 0u, true), Struct_4(0u, Struct_3(vec2<bool>(true, false), Struct_1(true, vec2<u32>(0u, 0u), vec3<i32>(-45801i, 37730i, -1i)), Struct_2(46800u, 93883u, false), Struct_2(19115u, 30232u, false)), Struct_2(0u, 77594u, true), 72094u, true), Struct_4(4294967295u, Struct_3(vec2<bool>(false, true), Struct_1(true, vec2<u32>(0u, 1u), vec3<i32>(0i, 1i, 0i)), Struct_2(38997u, 1u, false), Struct_2(43176u, 33932u, true)), Struct_2(24428u, 4784u, false), 1u, false), Struct_4(14093u, Struct_3(vec2<bool>(false, false), Struct_1(true, vec2<u32>(4294967295u, 1u), vec3<i32>(-10660i, i32(-2147483648), 1i)), Struct_2(0u, 24748u, false), Struct_2(1u, 1u, true)), Struct_2(0u, 34392u, false), 80030u, false), Struct_4(4294967295u, Struct_3(vec2<bool>(true, true), Struct_1(false, vec2<u32>(25658u, 23356u), vec3<i32>(2147483647i, 0i, 29011i)), Struct_2(56176u, 0u, true), Struct_2(57847u, 44956u, false)), Struct_2(16476u, 1u, true), 1u, false), Struct_4(0u, Struct_3(vec2<bool>(true, true), Struct_1(true, vec2<u32>(0u, 1u), vec3<i32>(2147483647i, -840i, i32(-2147483648))), Struct_2(32642u, 18280u, false), Struct_2(32487u, 4294967295u, false)), Struct_2(1206u, 4294967295u, true), 23451u, true), Struct_4(3556u, Struct_3(vec2<bool>(false, true), Struct_1(false, vec2<u32>(0u, 0u), vec3<i32>(-1i, 10443i, -13761i)), Struct_2(37656u, 4461u, true), Struct_2(44546u, 4294967295u, true)), Struct_2(26035u, 80152u, true), 33111u, true), Struct_4(44447u, Struct_3(vec2<bool>(false, true), Struct_1(false, vec2<u32>(1u, 4294967295u), vec3<i32>(-1i, 37548i, -47561i)), Struct_2(30861u, 0u, false), Struct_2(4294967295u, 4294967295u, true)), Struct_2(1u, 4294967295u, false), 17527u, true), Struct_4(4294967295u, Struct_3(vec2<bool>(false, false), Struct_1(true, vec2<u32>(8806u, 4294967295u), vec3<i32>(27433i, 0i, -24000i)), Struct_2(1397u, 3491u, false), Struct_2(0u, 0u, true)), Struct_2(28368u, 0u, true), 68330u, true), Struct_4(61350u, Struct_3(vec2<bool>(true, false), Struct_1(true, vec2<u32>(0u, 1u), vec3<i32>(-1i, -1i, -20312i)), Struct_2(62694u, 1u, true), Struct_2(65839u, 41010u, true)), Struct_2(14479u, 25531u, true), 600u, true));

var<private> global1: array<u32, 29> = array<u32, 29>(4294967295u, 85273u, 38413u, 1u, 4294967295u, 0u, 0u, 4294967295u, 34912u, 4294967295u, 1u, 0u, 4294967295u, 0u, 0u, 9606u, 67294u, 63453u, 1u, 4294967295u, 17394u, 78239u, 4294967295u, 17413u, 7300u, 40243u, 8364u, 1u, 47495u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = -2147483647i;
    var var_1 = vec3<i32>(22103i, var_0 | -26901i, var_0);
    var var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(51767u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.a, 29u)], 29u)]), 27u)];
    var var_3 = u_input.a << (vec2<u32>(arg_1.b, 1u) % vec2<u32>(32u));
    var var_4 = vec2<bool>(arg_1.c, arg_1.c);
    return arg_0;
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = select(func_3(!(!(!vec4<bool>(arg_0.a, false, true, true))), Struct_2(44089u, _wgslsmith_mod_u32(firstLeadingBit(u_input.a.x), u_input.a.x), true)), vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, select(13757u, 77955u, false)), 29u)] <= _wgslsmith_mult_u32(~arg_0.b.x, 0u), func_3(!select(vec4<bool>(arg_0.a, true, true, true), vec4<bool>(arg_0.a, arg_0.a, false, arg_0.a), arg_0.a), Struct_2(4294967295u, 4294967295u, 33456i < arg_0.c.x)).x, any(func_3(select(vec4<bool>(true, false, arg_0.a, arg_0.a), vec4<bool>(false, arg_0.a, arg_0.a, true), vec4<bool>(true, arg_0.a, arg_0.a, arg_0.a)), Struct_2(u_input.a.x, u_input.a.x, arg_0.a)).zw), true), arg_0.a);
    global1 = array<u32, 29>();
    let var_1 = u_input.a;
    let var_2 = arg_0.a;
    let var_3 = _wgslsmith_mod_i32(~19959i, arg_0.c.x);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -177f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1312f), _wgslsmith_f_op_f32(522f * 1755f))) * 445f))));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2337f * -1925f), -318f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(true, vec2<u32>(global1[_wgslsmith_index_u32(22458u, 29u)], u_input.a.x), vec3<i32>(-34583i, 2147483647i, -2147483647i))))) * 1f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-801f - 737f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1098f, 1000f) - 749f)));
    var var_1 = 1i;
    global1 = array<u32, 29>();
    let var_2 = global0[_wgslsmith_index_u32(abs(u_input.a.x), 27u)];
    global0 = array<Struct_4, 27>();
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -926f) - _wgslsmith_f_op_f32(637f - 922f)), _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -114f), true)))), -673f) + _wgslsmith_f_op_f32(f32(-1f) * -187f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 752f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(func_1())));
    let var_1 = _wgslsmith_mult_i32(-(_wgslsmith_sub_i32(reverseBits(47431i), _wgslsmith_clamp_i32(4824i, 1i, 0i)) ^ ~2147483647i), -2147483647i);
    global0 = array<Struct_4, 27>();
    global1 = array<u32, 29>();
    global1 = array<u32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(869f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1047f)))), 1105f, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-368f, 1487f) - vec2<f32>(-1106f, -189f))))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(796f, -290f)), -340f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -928f)))))), vec3<u32>(~u_input.a.x, _wgslsmith_sub_u32(51458u, ~_wgslsmith_div_u32(global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)])), global1[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x << (1u % 32u)), 29u)]));
}

