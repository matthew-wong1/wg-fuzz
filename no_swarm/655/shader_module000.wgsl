struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec4<u32>,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_2(Struct_1(vec2<i32>(-1i, 45942i), vec2<bool>(false, false), vec4<u32>(1u, 4294967295u, 4294967295u, 72837u), 1i, vec4<i32>(-1i, 1i, 2147483647i, 0i)), true, Struct_1(vec2<i32>(i32(-2147483648), -29629i), vec2<bool>(false, true), vec4<u32>(3932u, 38867u, 17686u, 1u), 2147483647i, vec4<i32>(2147483647i, 0i, 28867i, -1i)), 4294967295u, -1018f), vec2<i32>(-50614i, 18213i));

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec2<i32>(-23481i, i32(-2147483648)), vec2<bool>(true, false), vec4<u32>(43165u, 32874u, 113008u, 11762u), -4890i, vec4<i32>(-27684i, -1i, 49994i, -1i)), Struct_1(vec2<i32>(-16199i, -31271i), vec2<bool>(false, false), vec4<u32>(3261u, 1u, 1u, 20402u), -35849i, vec4<i32>(-10623i, 2147483647i, 23045i, 746i)), Struct_1(vec2<i32>(-1i, i32(-2147483648)), vec2<bool>(false, false), vec4<u32>(4294967295u, 50804u, 0u, 0u), -14894i, vec4<i32>(-20141i, 2147483647i, 30789i, -1i)), Struct_1(vec2<i32>(38790i, 0i), vec2<bool>(false, false), vec4<u32>(50634u, 8527u, 127518u, 83750u), -39664i, vec4<i32>(i32(-2147483648), -17096i, -47123i, 691i)), Struct_1(vec2<i32>(-21904i, -12794i), vec2<bool>(true, false), vec4<u32>(9855u, 1u, 4294967295u, 0u), i32(-2147483648), vec4<i32>(-12351i, 0i, -17888i, -16091i)), Struct_1(vec2<i32>(43135i, -51087i), vec2<bool>(false, true), vec4<u32>(1u, 25444u, 4294967295u, 1u), 1i, vec4<i32>(2147483647i, 17642i, -56689i, 0i)), Struct_1(vec2<i32>(1i, i32(-2147483648)), vec2<bool>(true, true), vec4<u32>(84788u, 93048u, 0u, 30742u), 36645i, vec4<i32>(6991i, -7991i, 1i, 2147483647i)), Struct_1(vec2<i32>(32376i, 2147483647i), vec2<bool>(true, true), vec4<u32>(60769u, 86341u, 25277u, 45602u), 33833i, vec4<i32>(-1i, 0i, 1i, 20183i)), Struct_1(vec2<i32>(-3169i, 2147483647i), vec2<bool>(false, false), vec4<u32>(53114u, 16477u, 4294967295u, 30101u), 1i, vec4<i32>(-73195i, 0i, 40399i, -5961i)), Struct_1(vec2<i32>(-1i, -27455i), vec2<bool>(true, true), vec4<u32>(1u, 0u, 4294967295u, 45519u), -7268i, vec4<i32>(-37318i, 52500i, 2147483647i, 33431i)), Struct_1(vec2<i32>(-1i, 1i), vec2<bool>(false, true), vec4<u32>(32239u, 71291u, 4294967295u, 6978u), -12190i, vec4<i32>(0i, 28226i, i32(-2147483648), 0i)), Struct_1(vec2<i32>(i32(-2147483648), 41637i), vec2<bool>(true, true), vec4<u32>(0u, 69106u, 29409u, 1u), 0i, vec4<i32>(-16849i, -6232i, 21678i, 2147483647i)), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec2<bool>(false, true), vec4<u32>(34274u, 0u, 70755u, 1u), 75316i, vec4<i32>(9534i, 31478i, 12405i, 2147483647i)), Struct_1(vec2<i32>(i32(-2147483648), -1i), vec2<bool>(false, false), vec4<u32>(4636u, 2797u, 26132u, 29105u), -19364i, vec4<i32>(47789i, 0i, -1i, 21945i)), Struct_1(vec2<i32>(-34683i, 1i), vec2<bool>(false, true), vec4<u32>(4294967295u, 47780u, 22279u, 8933u), 2147483647i, vec4<i32>(0i, 6362i, 0i, 1i)), Struct_1(vec2<i32>(0i, i32(-2147483648)), vec2<bool>(true, false), vec4<u32>(0u, 509u, 1u, 4810u), -53678i, vec4<i32>(444i, i32(-2147483648), 28871i, 9782i)), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec2<bool>(false, false), vec4<u32>(4294967295u, 56080u, 0u, 4536u), -39328i, vec4<i32>(-12683i, -1i, 2147483647i, -1i)), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec2<bool>(false, false), vec4<u32>(63541u, 10891u, 4294967295u, 0u), -76136i, vec4<i32>(i32(-2147483648), -80567i, -8578i, -1i)), Struct_1(vec2<i32>(-17646i, 1i), vec2<bool>(false, true), vec4<u32>(1u, 4294967295u, 61799u, 0u), 33539i, vec4<i32>(1i, -28764i, 2147483647i, 50812i)), Struct_1(vec2<i32>(3032i, -17924i), vec2<bool>(true, true), vec4<u32>(4294967295u, 31967u, 50929u, 45525u), 42463i, vec4<i32>(-1i, 25715i, -27961i, -60695i)), Struct_1(vec2<i32>(i32(-2147483648), 0i), vec2<bool>(true, false), vec4<u32>(11686u, 1755u, 4294967295u, 0u), -33674i, vec4<i32>(-1i, 0i, 2147483647i, 1i)), Struct_1(vec2<i32>(41768i, 0i), vec2<bool>(false, true), vec4<u32>(0u, 4294967295u, 62637u, 9660u), i32(-2147483648), vec4<i32>(29460i, -68842i, -15788i, -65749i)), Struct_1(vec2<i32>(2147483647i, 0i), vec2<bool>(false, false), vec4<u32>(0u, 42555u, 1u, 1u), 2147483647i, vec4<i32>(-34781i, -31648i, -22620i, 0i)), Struct_1(vec2<i32>(1i, 0i), vec2<bool>(false, false), vec4<u32>(26781u, 4294967295u, 8985u, 0u), -60575i, vec4<i32>(-6021i, 20802i, 2147483647i, -40202i)), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec2<bool>(false, false), vec4<u32>(56287u, 1u, 4883u, 12918u), 0i, vec4<i32>(-17447i, 0i, 13866i, -23771i)), Struct_1(vec2<i32>(-1i, -1i), vec2<bool>(true, false), vec4<u32>(4294967295u, 1u, 0u, 13032u), 2147483647i, vec4<i32>(-31917i, 13894i, -1i, i32(-2147483648))), Struct_1(vec2<i32>(53046i, i32(-2147483648)), vec2<bool>(true, true), vec4<u32>(0u, 56221u, 0u, 30811u), -1i, vec4<i32>(17038i, 1i, -24166i, 2147483647i)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: vec2<f32>) -> vec4<bool> {
    var var_0 = vec2<i32>(52359i, _wgslsmith_sub_i32(~2147483647i, select(_wgslsmith_dot_vec2_i32(firstTrailingBit(global0.a.a.a), global0.a.c.e.xy), firstLeadingBit(-1i), true)));
    var var_1 = !global0.a.c.b;
    global1 = array<Struct_1, 27>();
    var var_2 = vec2<i32>(global0.b.x, -24639i);
    let var_3 = -24617i << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, firstLeadingBit(54698u), firstTrailingBit(1u)), vec3<u32>(u_input.a.x, 64431u, 1u)) % 32u);
    return vec4<bool>(any(!vec3<bool>(var_1.x, global0.a.c.b.x, global0.a.b | false)), !(global0.a.c.a.x > -arg_1.x), var_1.x, global0.a.b);
}

fn func_1(arg_0: i32, arg_1: bool) -> vec3<f32> {
    let var_0 = !(!select(select(select(vec4<bool>(arg_1, false, arg_1, false), vec4<bool>(false, arg_1, true, arg_1), vec4<bool>(false, false, false, false)), !vec4<bool>(false, true, global0.a.b, global0.a.c.b.x), global0.a.c.b.x && global0.a.c.b.x), vec4<bool>(global0.a.b, !global0.a.b, global0.a.b, false), !func_2(Struct_4(-1i, global0.a.d), vec3<i32>(global0.b.x, arg_0, 45761i), vec2<f32>(-1013f, 160f))));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0.a.e, global0.a.e), _wgslsmith_f_op_f32(select(746f, -2970f, global0.a.b)))), global0.a.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-117f + global0.a.e)))), vec3<f32>(-511f, _wgslsmith_f_op_f32(f32(-1f) * -1959f), _wgslsmith_f_op_f32(440f - global0.a.e)));
}

fn func_3(arg_0: u32) -> vec4<bool> {
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(~(~1u & ~u_input.a.x), 27u)], global0.a.b, Struct_1(global0.a.c.e.yy, global0.a.c.b, reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, global0.a.c.c.x, 70248u, 35380u) & vec4<u32>(87701u, arg_0, 0u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 29118u))), _wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(global0.b, vec2<i32>(-2147483647i, global0.a.c.a.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1i, 41121i), global0.a.c.e.zwz)), select(max(-16858i, -27515i), reverseBits(-1i), !global0.a.a.b.x)), -((vec4<i32>(global0.b.x, -28061i, global0.a.c.e.x, global0.a.a.a.x) ^ global0.a.a.e) | vec4<i32>(global0.b.x, global0.b.x, global0.a.c.e.x, -2147483647i))), global0.a.d, global0.a.e);
    global1 = array<Struct_1, 27>();
    global0 = Struct_5(var_0, vec2<i32>((i32(-1i) * -var_0.a.e.x) >> (abs(1u ^ global0.a.d) % 32u), -(var_0.c.d ^ var_0.c.d)));
    let var_1 = Struct_5(global0.a, reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(8441i, 2147483647i), vec2<i32>(33152i, var_0.a.e.x))) >> (_wgslsmith_mod_vec2_u32(u_input.a << (vec2<u32>(89873u, u_input.a.x) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(~global0.a.a.c.xy, global0.a.c.c.xw, var_0.c.c.zy)) % vec2<u32>(32u)));
    var var_2 = !var_1.a.a.b.x;
    return vec4<bool>(false, var_1.a.a.b.x, false, global0.a.a.b.x);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: vec4<bool>, arg_3: vec4<bool>) -> u32 {
    var var_0 = arg_0.zx;
    var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_1.zy, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1000f, arg_0.x)))) - vec2<f32>(_wgslsmith_f_op_f32(step(-994f, 1777f)), _wgslsmith_f_op_f32(-global0.a.e)))));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(741f, 353f, arg_1.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(472f, arg_0.x, global0.a.e), arg_1.xxw), vec3<f32>(arg_1.x, 114f, -1011f), arg_3.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(815f, arg_0.x, global0.a.e) - vec3<f32>(arg_1.x, arg_0.x, arg_0.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0 + vec3<f32>(106f, var_0.x, -249f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.x, -243f, 1347f), arg_0)))))));
    global0 = Struct_5(global0.a, firstLeadingBit(select(global0.a.a.e.xw, firstLeadingBit(vec2<i32>(global0.a.a.e.x, global0.b.x) & global0.b), true)));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.zxz * arg_1.yzy) + vec3<f32>(365f, -287f, arg_0.x)))) * vec3<f32>(_wgslsmith_f_op_f32(floor(global0.a.e)), 1f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(540f + var_0.x)))));
    return u_input.a.x ^ ~_wgslsmith_clamp_u32(~1u ^ ~global0.a.c.c.x, 4294967295u, ~(~4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 27>();
    global0 = Struct_5(global0.a, select(vec2<i32>(1i, abs(global0.b.x)), global0.a.a.a, 8491u != (global0.a.c.c.x | 3496u)));
    var var_0 = ~global0.a.c.c.zx;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1986f);
    let var_2 = vec4<bool>(all(!select(select(vec4<bool>(global0.a.b, false, global0.a.a.b.x, false), vec4<bool>(true, true, false, global0.a.b), vec4<bool>(false, true, false, global0.a.a.b.x)), vec4<bool>(false, global0.a.c.b.x, false, global0.a.b), global0.a.c.b.x)), any(vec3<bool>(global0.a.e <= -631f, false, !(global0.a.a.b.x || global0.a.a.b.x))), any(!global0.a.a.b), any(vec3<bool>(all(vec3<bool>(false, global0.a.c.b.x, true)), true, !global0.a.b)));
    var var_3 = vec4<i32>(1i, global0.b.x | 25644i, global0.b.x, _wgslsmith_mult_i32(global0.b.x, ~(select(global0.a.c.a.x, -43183i, false) >> (_wgslsmith_div_u32(var_0.x, u_input.a.x) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(7910u), ~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(global0.a.c.c.zwx, select(vec3<u32>(1u, 1u, global0.a.a.c.x), global0.a.a.c.wyz, vec3<bool>(var_2.x, true, var_2.x))), 0u), 1u & func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(808f, 1106f, -1235f))) + _wgslsmith_f_op_vec3_f32(func_1(var_3.x, var_2.x))), vec4<f32>(_wgslsmith_f_op_f32(floor(621f)), _wgslsmith_f_op_f32(f32(-1f) * -206f), _wgslsmith_f_op_f32(-143f * var_1), _wgslsmith_f_op_f32(f32(-1f) * -943f)), var_2, func_3(select(global0.a.c.c.x, global0.a.d, false))), ~(abs(min(vec2<u32>(4294967295u, var_0.x), global0.a.a.c.zw)) ^ global0.a.a.c.zy), vec2<i32>(var_3.x, max(select(1648i >> (u_input.a.x % 32u), global0.b.x, false & global0.a.c.b.x), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(global0.b.x, global0.a.c.a.x, 2147483647i, -22704i)), vec4<i32>(5291i, -1i, 1i, -1i)))));
}

