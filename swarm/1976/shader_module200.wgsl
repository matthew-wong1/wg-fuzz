struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(vec4<i32>(3616i, i32(-2147483648), -1i, -1i), Struct_1(true, true, vec2<i32>(2679i, 14253i), -1i), 1385f, 1u), Struct_2(vec4<i32>(3095i, 2147483647i, 0i, 2147483647i), Struct_1(false, false, vec2<i32>(i32(-2147483648), 15171i), 1i), 248f, 22365u), Struct_2(vec4<i32>(58163i, 33322i, 0i, 0i), Struct_1(false, true, vec2<i32>(0i, -11246i), i32(-2147483648)), -437f, 45828u), Struct_2(vec4<i32>(9252i, 0i, i32(-2147483648), i32(-2147483648)), Struct_1(true, false, vec2<i32>(48945i, -211i), -1i), 2036f, 25566u), Struct_2(vec4<i32>(-40626i, i32(-2147483648), 2147483647i, 21086i), Struct_1(true, false, vec2<i32>(-1i, 2147483647i), 1i), -1084f, 87691u), Struct_2(vec4<i32>(0i, 0i, 0i, -32029i), Struct_1(true, false, vec2<i32>(42285i, 5771i), -1i), -135f, 14020u), Struct_2(vec4<i32>(1i, -8895i, 7699i, 20695i), Struct_1(false, false, vec2<i32>(-9583i, 1i), 0i), -1591f, 14050u), Struct_2(vec4<i32>(-1i, 0i, -40793i, 66359i), Struct_1(false, true, vec2<i32>(-1i, -53396i), 16027i), -1448f, 15107u), Struct_2(vec4<i32>(-1i, 2147483647i, i32(-2147483648), 1i), Struct_1(false, false, vec2<i32>(16893i, 3031i), -7487i), 545f, 4294967295u), Struct_2(vec4<i32>(2147483647i, -1i, -7061i, -18276i), Struct_1(false, false, vec2<i32>(i32(-2147483648), -28374i), 16699i), -465f, 0u), Struct_2(vec4<i32>(-16667i, -46509i, -1i, 21053i), Struct_1(false, false, vec2<i32>(2147483647i, 40088i), 20627i), -1759f, 9217u), Struct_2(vec4<i32>(-462i, i32(-2147483648), 11548i, -1i), Struct_1(false, true, vec2<i32>(0i, 1i), 1i), -989f, 61174u), Struct_2(vec4<i32>(-13478i, 0i, 1i, -31077i), Struct_1(true, false, vec2<i32>(1i, i32(-2147483648)), 1i), -129f, 0u), Struct_2(vec4<i32>(-18902i, 1i, -2632i, -1i), Struct_1(false, true, vec2<i32>(i32(-2147483648), -23902i), -1i), -864f, 1u), Struct_2(vec4<i32>(2147483647i, -7878i, i32(-2147483648), -1i), Struct_1(true, false, vec2<i32>(2147483647i, -38637i), 2147483647i), -1020f, 1u), Struct_2(vec4<i32>(0i, 1i, 1i, -15085i), Struct_1(true, false, vec2<i32>(2934i, 2147483647i), 1i), 120f, 31760u), Struct_2(vec4<i32>(-14009i, 24561i, 28692i, 11499i), Struct_1(false, true, vec2<i32>(2147483647i, -15492i), 20717i), -767f, 1u), Struct_2(vec4<i32>(2147483647i, -42140i, 12419i, 2147483647i), Struct_1(false, false, vec2<i32>(i32(-2147483648), 1i), 2147483647i), 1317f, 69626u), Struct_2(vec4<i32>(38282i, 0i, -1i, 1i), Struct_1(true, true, vec2<i32>(-18126i, 1i), i32(-2147483648)), 187f, 28938u), Struct_2(vec4<i32>(27783i, -16809i, 20348i, -15816i), Struct_1(true, true, vec2<i32>(-25614i, 2045i), 1i), -798f, 4294967295u), Struct_2(vec4<i32>(13298i, 51876i, -13413i, -42404i), Struct_1(true, false, vec2<i32>(-46858i, 17231i), 62810i), -420f, 32489u), Struct_2(vec4<i32>(-25484i, -1i, 1i, -34156i), Struct_1(true, true, vec2<i32>(1i, -37967i), 1i), 548f, 4294967295u), Struct_2(vec4<i32>(17364i, -29668i, i32(-2147483648), 17955i), Struct_1(true, true, vec2<i32>(-34369i, 0i), -34195i), -392f, 7760u), Struct_2(vec4<i32>(35665i, -6036i, 0i, 1263i), Struct_1(false, true, vec2<i32>(-37725i, -1i), 0i), 1980f, 1u), Struct_2(vec4<i32>(1i, 2147483647i, 149i, -22178i), Struct_1(false, true, vec2<i32>(0i, -1i), 2147483647i), -1285f, 0u), Struct_2(vec4<i32>(0i, 38735i, i32(-2147483648), -12989i), Struct_1(true, false, vec2<i32>(-5712i, -1i), 0i), 224f, 0u), Struct_2(vec4<i32>(1i, 0i, 25049i, -6370i), Struct_1(false, false, vec2<i32>(i32(-2147483648), -1i), i32(-2147483648)), 227f, 12792u));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec3<u32>) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(441f, 485f, 158f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(797f, 1546f, -462f), vec3<f32>(695f, 559f, 534f))))))));
    var var_1 = 0i;
    global0 = array<Struct_2, 27>();
    var var_2 = select(vec4<bool>(false, true, true, select(all(select(vec2<bool>(true, false), vec2<bool>(true, false), true)), any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), true)), !(!vec4<bool>(true, true, true, 55326u < arg_0.x)), vec4<bool>(!all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), true)), true != any(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true)), select(min(arg_0.x, u_input.b.x) != ~u_input.b.x, false, true)));
    var_2 = vec4<bool>(true, !any(var_2.zww), all(!vec2<bool>(false, var_2.x)) != true, var_2.x);
    return _wgslsmith_div_vec2_f32(vec2<f32>(238f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 620f))), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(405f * _wgslsmith_f_op_f32(abs(var_0.x)))));
}

fn func_2(arg_0: vec3<bool>) -> Struct_4 {
    let var_0 = !arg_0;
    let var_1 = u_input.b.x;
    global0 = array<Struct_2, 27>();
    let var_2 = u_input.b.x;
    var var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(max(vec3<u32>(1u, var_2, 80401u) >> (vec3<u32>(var_2, var_1, var_1) % vec3<u32>(32u)), countOneBits(vec3<u32>(63781u, var_2, u_input.b.x)))))), vec2<i32>(~abs(u_input.a.x) >> (firstLeadingBit(_wgslsmith_mult_u32(4294967295u, var_1)) % 32u), -(~29343i) << (select(select(65046u, 5448u, true), _wgslsmith_mod_u32(42568u, 71578u), arg_0.x) % 32u)), _wgslsmith_add_vec4_i32(-u_input.a, _wgslsmith_div_vec4_i32(firstTrailingBit(u_input.a), _wgslsmith_add_vec4_i32(~vec4<i32>(-2147483647i, u_input.a.x, -67193i, u_input.a.x), ~vec4<i32>(-4289i, u_input.a.x, u_input.a.x, 17600i)))));
    return Struct_4(false, Struct_2(vec4<i32>(~(~u_input.a.x), 18380i, 33234i, _wgslsmith_mult_i32(u_input.a.x, -1i)), Struct_1(true, true, ~abs(u_input.a.zw), var_3.b.x), _wgslsmith_f_op_f32(-179f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_3.a.x))))), 1u));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_4, arg_3: vec4<bool>) -> i32 {
    var var_0 = Struct_1(true, arg_2.a, vec2<i32>(min(arg_2.b.a.x, -54i), countOneBits(firstTrailingBit(arg_0.b.b.d)) & _wgslsmith_div_i32(_wgslsmith_add_i32(-19591i, arg_2.b.b.d), 1i)), arg_2.b.a.x);
    let var_1 = _wgslsmith_sub_u32(firstTrailingBit(~_wgslsmith_add_u32(arg_0.b.d, arg_2.b.d)), arg_0.b.d) | ~firstLeadingBit(u_input.b.x);
    global0 = array<Struct_2, 27>();
    var_0 = func_2(!vec3<bool>(!any(vec2<bool>(true, true)), (var_0.a == true) && true, true)).b.b;
    let var_2 = _wgslsmith_f_op_vec2_f32(func_3(vec3<u32>(16211u, _wgslsmith_clamp_u32(19619u, max(1u, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(0u, 0u))), arg_2.b.d), firstTrailingBit(abs(0u << (var_1 % 32u)))))).x;
    return -firstTrailingBit(~firstTrailingBit(_wgslsmith_add_i32(var_0.d, u_input.a.x)));
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> vec4<i32> {
    global0 = array<Struct_2, 27>();
    return _wgslsmith_mod_vec4_i32(vec4<i32>(~u_input.a.x << (0u % 32u), ~(-2147483647i), func_4(Struct_4(arg_1.b.b, Struct_2(arg_1.a, Struct_1(true, true, arg_1.b.c, 1i), 253f, 74462u)), arg_1.b, func_2(vec3<bool>(arg_1.b.a, arg_1.b.b, true)), select(vec4<bool>(false, arg_0, true, true), vec4<bool>(false, true, true, arg_0), true)) ^ u_input.a.x, firstLeadingBit(-24948i)), func_2(!vec3<bool>(any(vec4<bool>(arg_1.b.b, arg_0, arg_1.b.b, true)), arg_1.b.a, any(vec3<bool>(arg_1.b.a, false, true)))).b.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-796f, 630f)) * _wgslsmith_f_op_f32(895f + -1319f)) + -853f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-678f * _wgslsmith_div_f32(1000f, 607f)))), -264f);
    let var_1 = u_input.b.x;
    let var_2 = vec4<u32>(max(var_1, _wgslsmith_dot_vec2_u32(vec2<u32>(17529u, var_1 ^ var_1), ~(~vec2<u32>(u_input.b.x, var_1)))), max(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.b.x, 1u)), (u_input.b >> (u_input.b % vec2<u32>(32u))) << (_wgslsmith_mod_vec2_u32(u_input.b, vec2<u32>(1u, 0u)) % vec2<u32>(32u))), 35567u), u_input.b.x, 19045u);
    let var_3 = Struct_1(true && any(vec3<bool>(true, all(vec3<bool>(true, true, false)), true)), true, vec2<i32>(~1i, u_input.a.x), u_input.a.x);
    let var_4 = vec2<i32>(~var_3.c.x, (_wgslsmith_sub_i32(max(-50189i, u_input.a.x), 90897i) & reverseBits(0i)) | u_input.a.x);
    global0 = array<Struct_2, 27>();
    global0 = array<Struct_2, 27>();
    var var_5 = Struct_3(vec2<f32>(var_0, var_0), vec2<i32>(1i, ~1i), _wgslsmith_sub_vec4_i32(~(~vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, var_3.d)), u_input.a));
    var var_6 = Struct_3(var_5.a, var_3.c, func_1(var_3.b, Struct_2(-var_5.c, var_3, 1271f, ~var_2.x & var_1)));
    let x = u_input.a;
    s_output = StorageBuffer(8902i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_6.a.x, var_6.a.x, var_0, -271f) * vec4<f32>(var_6.a.x, 341f, -2513f, -1248f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_6.a.x, -261f, var_5.a.x, var_0) - vec4<f32>(-711f, var_6.a.x, var_0, var_6.a.x))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_6.a.x + 1452f)), _wgslsmith_f_op_f32(f32(-1f) * -400f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))), _wgslsmith_f_op_f32(f32(-1f) * -702f), _wgslsmith_f_op_f32(trunc(-288f))), var_2.xxz, var_5.c);
}

