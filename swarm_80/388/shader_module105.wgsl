struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_2,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: f32 = -1300f;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    global1 = -1000f;
    let var_0 = _wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, 14809u, 21179u), vec3<u32>(38679u, 14337u, 1u), arg_0.yxz), ~vec3<u32>(19978u, 19507u, 38599u)), 1u), abs(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 22228u, 3839u, 0u), vec4<u32>(4294967295u, 79724u, 8701u, 15344u)), firstTrailingBit(45406u)) ^ vec2<u32>(max(4294967295u, 4294967295u), 1u)));
    var var_1 = Struct_3(firstTrailingBit(~(~(u_input.c >> (vec3<u32>(var_0, var_0, 0u) % vec3<u32>(32u))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1208f)))) * -382f))), _wgslsmith_mult_vec3_u32(~vec3<u32>(var_0 | var_0, _wgslsmith_add_u32(var_0, 13760u), _wgslsmith_div_u32(96049u, var_0)), countOneBits(firstTrailingBit(vec3<u32>(var_0, var_0, var_0))) >> (vec3<u32>(var_0, 60595u, 147897u) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2041f + -1580f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1252f))), _wgslsmith_f_op_f32(f32(-1f) * -372f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(798f, -403f, -2193f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2308f, 1440f, -862f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-524f, 365f, -511f))))));
    let var_2 = Struct_3(_wgslsmith_sub_vec3_i32(~(u_input.c << (var_1.c % vec3<u32>(32u))) >> ((~var_1.c | ~var_1.c) % vec3<u32>(32u)), ~max(_wgslsmith_clamp_vec3_i32(u_input.c, vec3<i32>(2147483647i, u_input.a.x, 4617i), vec3<i32>(-56083i, 1i, var_1.a.x)), vec3<i32>(1i, var_1.a.x, 1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.d.x)) + var_1.d.x) - _wgslsmith_f_op_f32(-404f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)))), _wgslsmith_mult_vec3_u32(firstLeadingBit(~abs(var_1.c)), vec3<u32>(var_0, abs(~var_1.c.x), var_1.c.x)), var_1.d);
    global1 = 1024f;
    return 0u;
}

fn func_2(arg_0: vec2<i32>, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_3(select(abs(vec3<i32>(1i, ~(-37381i), -18776i)), ~(-_wgslsmith_mult_vec3_i32(u_input.c, vec3<i32>(arg_1, arg_0.x, 1i))), any(select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), false)))), -257f, ~vec3<u32>(func_3(vec4<bool>(false, true, true, false)) & 1u, _wgslsmith_add_u32(min(1u, 27327u), 1u), ~(~6471u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, 924f, 825f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 618f, 272f))), vec3<f32>(_wgslsmith_div_f32(992f, -166f), -577f, 1290f)))));
    var_0 = Struct_3(max(firstLeadingBit(vec3<i32>(u_input.c.x, arg_0.x, -15708i) | ~vec3<i32>(2147483647i, u_input.a.x, 18488i)), _wgslsmith_mod_vec3_i32(countOneBits(~u_input.c), var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.b, _wgslsmith_f_op_f32(-var_0.d.x), true)) + var_0.b)), vec3<u32>(~_wgslsmith_clamp_u32(var_0.c.x, ~var_0.c.x, var_0.c.x), 4294967295u >> (~(~var_0.c.x) % 32u), var_0.c.x), var_0.d);
    var var_1 = Struct_1(u_input.c.x > ~_wgslsmith_mod_i32(countOneBits(-6724i), firstTrailingBit(-44784i)), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.d.x, 592f), vec2<f32>(_wgslsmith_f_op_f32(max(257f, -1030f)), var_0.b)), var_0.d.x);
    let var_2 = var_0.c.x;
    var_1 = Struct_1(true, vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.b.x))), -538f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(476f)) + var_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b))));
    return Struct_1(var_1.a, var_1.b, 137f);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2) -> i32 {
    var var_0 = arg_1.a.xx;
    let var_1 = _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(197f)) + arg_1.a.x));
    var var_2 = arg_1.b.x;
    var var_3 = func_2(vec2<i32>(arg_1.b.x, u_input.b), 1i);
    let var_4 = countOneBits(arg_1.b.x);
    return _wgslsmith_mult_i32(-1i, 0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(firstTrailingBit(-4558i) != (~u_input.b ^ func_1(vec4<u32>(0u, 10385u, 1u, 1u), Struct_2(vec3<f32>(691f, -1110f, 342f), vec2<i32>(17084i, u_input.b))))));
    let var_1 = Struct_1(true, vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-469f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(273f - 1000f) - 1176f))), -275f);
    global0 = true;
    var var_2 = Struct_1(func_2(vec2<i32>(-1i) * -u_input.c.yx, 64994i).a & true, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(var_1.b)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-341f, _wgslsmith_f_op_f32(var_1.b.x + var_1.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-118f, 1000f), var_1.b))), vec2<bool>(true, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)) - _wgslsmith_f_op_f32(-var_1.c)));
    var var_3 = ~firstTrailingBit(~1u);
    let var_4 = u_input.c.x;
    let var_5 = Struct_3(vec3<i32>(u_input.a.x, reverseBits(firstLeadingBit(12054i)), 0i), _wgslsmith_f_op_f32(floor(863f)), ~(~vec3<u32>(1u, 0u, 0u) ^ ~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 90471u, 19534u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(8887u, 1u, 1u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1418f, _wgslsmith_f_op_f32(f32(-1f) * -174f), _wgslsmith_f_op_f32(round(var_1.c))))));
    global0 = select(!var_0, _wgslsmith_add_u32(~4294967295u, abs(0u)) >= _wgslsmith_div_u32(var_5.c.x, _wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_5.c.x, var_5.c.x, 31781u), vec3<u32>(var_5.c.x, 0u, 1u)))), false);
    let var_6 = _wgslsmith_mult_i32(var_4 << (0u % 32u), _wgslsmith_mult_i32(-8271i, u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(248f, var_2.c, var_1.c, 302f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1545f, -899f, -1127f, var_5.d.x))), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(414f, var_5.b, -2095f, var_1.c)))))))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(var_5.c.x, func_3(vec4<bool>(true, var_2.a, var_2.a, false)), var_5.c.x, var_5.c.x), _wgslsmith_mult_vec4_u32(vec4<u32>(var_5.c.x, max(5090u, var_5.c.x), var_5.c.x, var_5.c.x), ~reverseBits(vec4<u32>(var_5.c.x, 32528u, 1u, 4294967295u))), vec4<u32>(10097u, ~var_5.c.x, ~abs(4294967295u), select(_wgslsmith_sub_u32(var_5.c.x, var_5.c.x), firstTrailingBit(65190u), var_0))), ~(~vec4<u32>(abs(var_5.c.x), ~var_5.c.x, ~4294967295u, var_5.c.x)), 791f);
}

