struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(0u, Struct_1(vec4<i32>(-16936i, -25508i, 47764i, 0i), 2147483647i, vec4<i32>(-30466i, 0i, i32(-2147483648), i32(-2147483648))), Struct_1(vec4<i32>(-61824i, -1032i, 10547i, 0i), -43312i, vec4<i32>(-27375i, -20743i, 33760i, 33436i)), Struct_1(vec4<i32>(-14525i, 0i, -6784i, i32(-2147483648)), 6278i, vec4<i32>(20001i, -41298i, 1i, 2147483647i)), Struct_1(vec4<i32>(0i, 44778i, 1i, 0i), 1i, vec4<i32>(9909i, 2147483647i, -47642i, 1i))), Struct_2(1u, Struct_1(vec4<i32>(i32(-2147483648), 25695i, 33658i, -17581i), -8783i, vec4<i32>(1i, 21089i, i32(-2147483648), -71868i)), Struct_1(vec4<i32>(-62886i, 1i, -1514i, i32(-2147483648)), 28088i, vec4<i32>(-34441i, 1i, -1i, 2147483647i)), Struct_1(vec4<i32>(-8938i, 0i, -1i, 2147483647i), 37746i, vec4<i32>(1i, 1i, 2147483647i, 20649i)), Struct_1(vec4<i32>(0i, 4613i, -13632i, 6854i), -1i, vec4<i32>(-25604i, -42258i, 0i, 2147483647i))), Struct_2(1653u, Struct_1(vec4<i32>(-1i, -30078i, -53952i, 7926i), 2147483647i, vec4<i32>(14817i, 0i, -1i, 60431i)), Struct_1(vec4<i32>(i32(-2147483648), -32951i, -32831i, 0i), i32(-2147483648), vec4<i32>(78391i, 0i, -1i, 16667i)), Struct_1(vec4<i32>(-23032i, -1i, -1i, 21356i), 23985i, vec4<i32>(i32(-2147483648), -1i, 3181i, 2147483647i)), Struct_1(vec4<i32>(1i, i32(-2147483648), -54327i, 5812i), -7673i, vec4<i32>(i32(-2147483648), 35312i, i32(-2147483648), 1863i))), Struct_2(4294967295u, Struct_1(vec4<i32>(i32(-2147483648), -25457i, -1i, 18365i), -4895i, vec4<i32>(9837i, 9274i, 43474i, -30052i)), Struct_1(vec4<i32>(27244i, -44373i, i32(-2147483648), 1i), -19930i, vec4<i32>(54984i, -1i, 32880i, 1i)), Struct_1(vec4<i32>(57463i, 1i, -19536i, -39800i), 12106i, vec4<i32>(2147483647i, 29376i, 35235i, 2147483647i)), Struct_1(vec4<i32>(-6259i, 2147483647i, i32(-2147483648), i32(-2147483648)), 2147483647i, vec4<i32>(-1i, 0i, 2147483647i, -11982i))));

var<private> global1: i32 = 1i;

var<private> global2: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec4<i32>(10584i, 53384i, 1i, -40906i), -1i, vec4<i32>(-12713i, -1i, 1i, -13404i)), Struct_1(vec4<i32>(-12679i, 9089i, -6737i, -38820i), 2147483647i, vec4<i32>(-21023i, -12769i, -1i, -1i)), Struct_1(vec4<i32>(1i, 0i, 2147483647i, 34709i), 9547i, vec4<i32>(0i, 2147483647i, 1i, -5482i)), Struct_1(vec4<i32>(18193i, 20114i, 1i, -19818i), -1i, vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 21207i)), Struct_1(vec4<i32>(-17895i, -56918i, 2144i, i32(-2147483648)), 1i, vec4<i32>(1i, 1i, 2164i, -9027i)), Struct_1(vec4<i32>(-35835i, -8484i, -21448i, 37606i), 63313i, vec4<i32>(-1i, 2147483647i, -11901i, 2711i)), Struct_1(vec4<i32>(-12985i, 2147483647i, -1i, 2147483647i), i32(-2147483648), vec4<i32>(19918i, -2225i, 29158i, -1i)), Struct_1(vec4<i32>(1i, 2147483647i, -1i, -44425i), 71409i, vec4<i32>(2147483647i, 1i, 1i, 0i)), Struct_1(vec4<i32>(i32(-2147483648), 1i, 2147483647i, 2147483647i), 2147483647i, vec4<i32>(-2907i, -1i, -44304i, 2147483647i)), Struct_1(vec4<i32>(-1i, 1i, -1i, 0i), 64919i, vec4<i32>(-1i, -32222i, -22034i, 13087i)), Struct_1(vec4<i32>(0i, 0i, -4303i, 24493i), 2147483647i, vec4<i32>(0i, -63446i, i32(-2147483648), -1i)), Struct_1(vec4<i32>(-15053i, -58840i, 0i, 0i), i32(-2147483648), vec4<i32>(-10956i, 26591i, -10515i, i32(-2147483648))), Struct_1(vec4<i32>(-18898i, 23797i, 0i, 15825i), 2147483647i, vec4<i32>(-47803i, 26734i, i32(-2147483648), 37943i)), Struct_1(vec4<i32>(1i, 0i, -1664i, 20280i), -1i, vec4<i32>(1i, 3938i, 2147483647i, i32(-2147483648))), Struct_1(vec4<i32>(14254i, 1i, -5957i, 15334i), -12086i, vec4<i32>(28265i, i32(-2147483648), 2147483647i, -40413i)), Struct_1(vec4<i32>(-1i, 2147483647i, 27199i, 66513i), 2147483647i, vec4<i32>(2147483647i, 0i, 33710i, 2609i)), Struct_1(vec4<i32>(i32(-2147483648), -26219i, 24229i, -42325i), -14100i, vec4<i32>(45550i, 2147483647i, -11212i, 27746i)), Struct_1(vec4<i32>(-36581i, -16525i, 6899i, -1i), 1i, vec4<i32>(i32(-2147483648), 1i, -8250i, 2147483647i)), Struct_1(vec4<i32>(73048i, -27544i, 14185i, i32(-2147483648)), 49472i, vec4<i32>(60607i, i32(-2147483648), -1i, -17053i)), Struct_1(vec4<i32>(1i, -18853i, -22540i, 2147483647i), -33506i, vec4<i32>(0i, 2147483647i, 2147483647i, -19332i)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, _wgslsmith_add_u32(~u_input.c, select(u_input.c, 1u, true)), u_input.c, ~(~u_input.c)), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 20359u, u_input.c, u_input.c), vec4<u32>(73245u, 13363u, u_input.c, 1u)), 0u, 86378u, u_input.c & u_input.c), vec4<u32>(~16874u, 38717u ^ u_input.c, ~63801u, 19664u & u_input.c))), 4u)];
    let var_1 = -3247i;
    let var_2 = abs(select(vec3<u32>(~(~0u), var_0.a, _wgslsmith_dot_vec4_u32(vec4<u32>(51749u, 42249u, u_input.c, 107036u), min(vec4<u32>(var_0.a, 1u, u_input.c, 1u), vec4<u32>(0u, u_input.c, 7189u, var_0.a)))), vec3<u32>(var_0.a, 39895u, ~u_input.c & _wgslsmith_mod_u32(u_input.c, u_input.c)), select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true)), vec3<bool>(true, false, all(vec3<bool>(true, false, false))))));
    var var_3 = Struct_4(!select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false)), Struct_1(vec4<i32>(var_1, ~var_0.e.b, ~(-var_0.e.a.x), _wgslsmith_dot_vec3_i32(u_input.a.xxw, abs(vec3<i32>(var_1, var_0.d.a.x, -1i)))), firstLeadingBit(~var_1), -(~u_input.a) | max(~u_input.a, ~var_0.e.c)));
    let var_4 = Struct_1(select(-(~(u_input.a & var_3.b.c)), abs(var_0.e.c), !vec4<bool>(true, var_3.a.x, var_3.a.x, true)), 43418i, max(~(vec4<i32>(-1i) * -vec4<i32>(var_0.b.c.x, -4867i, 59309i, 1i)), -countOneBits(~var_3.b.a)));
    return 0u | ~u_input.c;
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: u32, arg_3: u32) -> vec4<u32> {
    let var_0 = Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, arg_3) & vec2<u32>(2312u, 0u), ~vec2<u32>(0u, arg_3)), vec2<u32>(2325u, _wgslsmith_mod_u32(arg_2, arg_3)), countOneBits(min(vec2<u32>(27333u, 3636u), vec2<u32>(3072u, u_input.c)))), countOneBits(countOneBits(vec2<u32>(arg_0, 4294967295u))) >> (_wgslsmith_mult_vec2_u32(~vec2<u32>(arg_0, arg_0), vec2<u32>(1u, 1u)) % vec2<u32>(32u))), 4u)], _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i >> (firstLeadingBit(arg_2) % 32u), ~u_input.d, reverseBits(-2147483647i), ~_wgslsmith_mod_i32(-28183i, -67213i)), vec4<i32>(abs(u_input.a.x), _wgslsmith_div_i32(-12658i, u_input.d), ~u_input.b.x, -1i) & u_input.a), u_input.a.xwy ^ -max(vec3<i32>(u_input.a.x, -2147483647i, 12028i), _wgslsmith_add_vec3_i32(vec3<i32>(-93121i, 60520i, u_input.d), vec3<i32>(0i, -16275i, u_input.a.x))));
    let var_1 = abs(vec2<i32>(-31521i, var_0.b));
    let var_2 = vec2<bool>(true, all(vec2<bool>(true, all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), true)))));
    global2 = array<Struct_1, 20>();
    var var_3 = _wgslsmith_clamp_vec3_i32(var_0.a.b.a.wyw, _wgslsmith_clamp_vec3_i32(u_input.a.xzz, u_input.a.xxx, select(var_0.a.d.a.yyw, var_0.c, true)) << (~vec3<u32>(abs(69891u), 1u, ~arg_3) % vec3<u32>(32u)), var_0.a.b.a.yyy);
    return reverseBits(vec4<u32>(reverseBits(74382u), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, arg_0, arg_0, u_input.c), vec4<u32>(arg_2, arg_2, u_input.c, u_input.c)), vec4<u32>(4294967295u, 70499u, 0u, 90678u) << (vec4<u32>(arg_2, 0u, arg_2, arg_2) % vec4<u32>(32u))), u_input.c), _wgslsmith_add_u32(~max(arg_0, 0u), ~(~0u)), 1u));
}

fn func_2() -> bool {
    let var_0 = global0[_wgslsmith_index_u32(u_input.c, 4u)];
    global2 = array<Struct_1, 20>();
    let var_1 = func_4(_wgslsmith_sub_u32(u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(62235u, 1u, 22731u), vec3<u32>(var_0.a, u_input.c & var_0.a, var_0.a))), -357f, reverseBits(~0u) ^ u_input.c, firstLeadingBit(func_3()));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, 1u), 4u)];
    var_2 = Struct_2(firstTrailingBit(var_1.x) >> (15387u % 32u), Struct_1(-(vec4<i32>(-19373i, var_2.b.c.x, var_0.c.c.x, 0i) ^ min(vec4<i32>(-1i, u_input.b.x, u_input.b.x, -4977i), vec4<i32>(var_2.e.a.x, 0i, 61864i, 0i))), var_2.c.b, vec4<i32>(_wgslsmith_add_i32(-692i, var_0.b.a.x), var_2.b.b, _wgslsmith_clamp_i32(~(-2147483647i), -20219i, var_0.b.b | var_0.e.a.x), -43764i)), Struct_1(vec4<i32>(reverseBits(-1i), var_2.b.c.x >> (0u % 32u), _wgslsmith_dot_vec3_i32(var_0.d.a.zxw, var_2.b.a.yzy & var_2.b.a.yyx), -_wgslsmith_dot_vec2_i32(var_0.c.a.yy, vec2<i32>(46389i, 2147483647i))), u_input.b.x, vec4<i32>(-1i) * -(~var_2.e.c)), var_0.e, Struct_1(var_0.c.c, var_2.b.b, var_0.d.c));
    return true;
}

fn func_5(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: vec2<bool>) -> Struct_2 {
    global1 = ~(-3256i);
    global0 = array<Struct_2, 4>();
    var var_0 = -1535f;
    global2 = array<Struct_1, 20>();
    var_0 = _wgslsmith_f_op_f32(-1143f - arg_0.x);
    return global0[_wgslsmith_index_u32(~u_input.c, 4u)];
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: Struct_3) -> Struct_2 {
    global1 = arg_1.d.c.x;
    let var_0 = arg_1.e.c.zw;
    let var_1 = Struct_2(~0u, global2[_wgslsmith_index_u32(~(~arg_3.a.a) >> (arg_1.a % 32u), 20u)], Struct_1(_wgslsmith_mod_vec4_i32(arg_1.b.a, abs(arg_1.c.a)), 0i, -reverseBits(reverseBits(vec4<i32>(-6378i, u_input.d, 11505i, var_0.x)))), global2[_wgslsmith_index_u32(arg_3.a.a, 20u)], arg_1.e);
    global1 = u_input.b.x;
    let var_2 = u_input.b;
    return func_5(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(737f + 646f), -981f, 126f), arg_2)), vec3<f32>(arg_0.x, 665f, _wgslsmith_f_op_f32(trunc(1f))))), !vec4<bool>(func_2(), -1i > (-35728i | var_2.x), true, true), select(select(vec2<bool>(true, false), select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true)), vec2<bool>(var_1.b.a.x < 1i, true)), !(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))), select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(false, false), true), vec2<bool>(true, false), vec2<bool>(false, true))));
}

fn func_6(arg_0: Struct_2, arg_1: vec3<u32>) -> i32 {
    let var_0 = Struct_3(global0[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(arg_1.x, arg_1.x) & abs(0u)), 4u)], abs(~(-4680i) ^ (countOneBits(u_input.d) << (max(4294967295u, 4294967295u) % 32u))), max(vec3<i32>(-arg_0.d.a.x, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(2839i, arg_0.d.b, u_input.d, arg_0.b.a.x)), u_input.a), u_input.d), u_input.a.xzx));
    var var_1 = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(2231f, -455f, _wgslsmith_f_op_f32(2158f * -554f), _wgslsmith_f_op_f32(-1301f * -1060f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-463f, 746f, -1010f, -457f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-369f, 1815f, -664f, 885f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 600f, 1067f, 204f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 473f, -703f, 986f) + vec4<f32>(1208f, 1074f, -215f, -884f))), false))), func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-824f, 169f, -510f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(400f, -1324f, 200f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(867f, 168f, -654f))), vec4<bool>(any(vec4<bool>(true, true, true, true)), all(vec2<bool>(false, true)), true, true), select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(false, true), vec2<bool>(false, false)), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-560f, 1000f, -563f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-471f, -540f, 1494f) + vec3<f32>(-262f, 194f, -740f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(240f, _wgslsmith_f_op_f32(step(401f, -198f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + vec3<f32>(_wgslsmith_f_op_f32(621f + -207f), _wgslsmith_f_op_f32(-476f - 693f), _wgslsmith_f_op_f32(min(-1449f, 220f))))), Struct_3(func_5(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(2849f, -664f, 1000f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-3107f, -525f, 1000f))))), vec4<bool>(true, true, true, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), false)), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -u_input.a.yzy, var_0.c), -max(u_input.a.zyx, _wgslsmith_mod_vec3_i32(u_input.a.zxw, vec3<i32>(var_0.c.x, -1i, u_input.d)))));
    var var_2 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(239f, -1844f, 634f, 464f))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1184f, -1431f, 841f, -1102f)))))), func_5(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f))), vec4<bool>(!any(vec2<bool>(false, true)), true, func_2(), true), vec2<bool>(true || select(true, true, true), true)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(410f, -2570f), -1783f, -1651f))))), Struct_3(global0[_wgslsmith_index_u32(1u, 4u)], -arg_0.e.c.x, -vec3<i32>(-var_1.b.a.x, ~(-1i), -1i)));
    let var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-583f, -360f), vec2<f32>(-259f, 538f)))) - vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-585f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, -199f)))))));
    var var_4 = true;
    return -(~(-u_input.a.x));
}

fn func_7(arg_0: f32, arg_1: f32, arg_2: i32, arg_3: f32) -> vec4<i32> {
    let var_0 = Struct_4(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), all(vec3<bool>(true, false, false)))), Struct_1(_wgslsmith_mult_vec4_i32(func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(-709f, 1189f, 1000f) * vec3<f32>(arg_1, arg_1, 2259f)), vec4<bool>(true, true, true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))).b.c, u_input.a), _wgslsmith_clamp_i32(~15724i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(23093i, 1i, -24600i), arg_2), 0i), u_input.a));
    let var_1 = countOneBits(_wgslsmith_mult_u32(u_input.c, ~u_input.c));
    return max(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(var_0.b.b, 2147483647i, u_input.d, var_0.b.c.x), -u_input.a, var_0.b.a), vec4<i32>(arg_2 ^ u_input.b.x, arg_2 & abs(u_input.d), abs(0i), 14048i)), _wgslsmith_div_vec4_i32(var_0.b.a, vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(var_0.b.c.x, -50453i), ~(-1i)), _wgslsmith_mod_i32(var_0.b.b, arg_2 & 25100i), select(~0i, ~2511i, true), 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 99535i;
    let var_1 = _wgslsmith_sub_vec2_i32(u_input.b, _wgslsmith_add_vec2_i32(-vec2<i32>(select(31888i, -10014i, true), ~u_input.b.x), u_input.a.zx));
    var var_2 = _wgslsmith_clamp_vec4_i32(u_input.a | func_7(-946f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-728f - -751f)), func_6(func_1(vec4<f32>(-960f, 114f, 1000f, -236f), global0[_wgslsmith_index_u32(1u, 4u)], vec3<f32>(398f, 1672f, 1155f), Struct_3(global0[_wgslsmith_index_u32(41958u, 4u)], var_1.x, vec3<i32>(var_1.x, -5651i, var_1.x))), vec3<u32>(u_input.c, u_input.c, 20011u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -598f))), countOneBits(~u_input.a), _wgslsmith_sub_vec4_i32(u_input.a, u_input.a));
    let var_3 = 30777i;
    var var_4 = Struct_4(!select(vec3<bool>(all(vec3<bool>(false, false, true)), true, -33484i == u_input.d), select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), select(true, false, true)), true), func_5(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-439f, 1057f, -789f), vec3<f32>(-661f, 1000f, -463f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(379f, -321f, -1100f) * vec3<f32>(-655f, -871f, -1144f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-671f, 1172f, -637f) - vec3<f32>(-136f, -1036f, -232f)))), true)), vec4<bool>(true, true, all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true))), true), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), all(vec4<bool>(true, false, false, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), true))).c);
    var var_5 = Struct_4(vec3<bool>(var_4.a.x, true, 0u <= _wgslsmith_div_u32(func_1(vec4<f32>(-665f, -350f, -737f, 749f), global0[_wgslsmith_index_u32(1u, 4u)], vec3<f32>(-1575f, 966f, -1283f), Struct_3(global0[_wgslsmith_index_u32(u_input.c, 4u)], var_2.x, vec3<i32>(var_2.x, var_4.b.b, 1161i))).a, abs(u_input.c))), global2[_wgslsmith_index_u32(0u, 20u)]);
    var var_6 = Struct_4(vec3<bool>(any(vec2<bool>(true, true)), true, var_4.a.x), Struct_1(vec4<i32>(-54454i, func_6(func_1(vec4<f32>(485f, 738f, -358f, -619f), Struct_2(u_input.c, Struct_1(u_input.a, 2147483647i, vec4<i32>(2147483647i, -1i, -1i, 15342i)), var_5.b, Struct_1(var_5.b.a, var_1.x, vec4<i32>(u_input.a.x, -37850i, var_3, var_4.b.a.x)), Struct_1(vec4<i32>(var_2.x, 47670i, 1i, var_2.x), var_4.b.c.x, vec4<i32>(var_2.x, 54612i, u_input.b.x, -2147483647i))), vec3<f32>(431f, 148f, 1000f), Struct_3(Struct_2(0u, Struct_1(vec4<i32>(u_input.b.x, var_2.x, -1i, var_4.b.c.x), var_1.x, vec4<i32>(-12871i, -41711i, var_1.x, 2147483647i)), global2[_wgslsmith_index_u32(u_input.c, 20u)], var_5.b, var_4.b), -2147483647i, vec3<i32>(u_input.d, var_5.b.a.x, 1i))), reverseBits(vec3<u32>(u_input.c, 1u, 4294967295u))), _wgslsmith_mult_i32(1i, _wgslsmith_div_i32(2147483647i, 2147483647i)), abs(select(var_3, 3019i, false))), select(24227i, func_1(vec4<f32>(1f, 1f, 1f, 1f), func_5(vec3<f32>(1466f, 802f, -428f), vec4<bool>(var_5.a.x, false, true, true), var_4.a.zy), vec3<f32>(-690f, -832f, -264f), Struct_3(global0[_wgslsmith_index_u32(u_input.c, 4u)], var_2.x, vec3<i32>(var_4.b.a.x, -2147483647i, var_2.x))).e.b, func_2()), countOneBits(select(vec4<i32>(0i, var_4.b.a.x, 0i, var_5.b.a.x), var_5.b.a, !vec4<bool>(var_4.a.x, var_4.a.x, true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-927f, -963f, -987f, -774f) - vec4<f32>(-599f, -1014f, 2252f, -397f))))));
}

