struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec3<f32>,
    e: i32,
}

struct Struct_3 {
    a: i32,
    b: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: f32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: f32,
    c: vec4<u32>,
    d: i32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 30> = array<vec2<i32>, 30>(vec2<i32>(i32(-2147483648), 0i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(i32(-2147483648), 3241i), vec2<i32>(14203i, 0i), vec2<i32>(-1i, -1034i), vec2<i32>(62909i, 1i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(22787i, -6783i), vec2<i32>(-1i, 4402i), vec2<i32>(1i, -1i), vec2<i32>(64043i, -45137i), vec2<i32>(8510i, -39069i), vec2<i32>(-20373i, 2147483647i), vec2<i32>(-18904i, -6102i), vec2<i32>(0i, 14390i), vec2<i32>(2147483647i, 1i), vec2<i32>(-274i, 1i), vec2<i32>(0i, 20594i), vec2<i32>(-43039i, 2147483647i), vec2<i32>(i32(-2147483648), 14030i), vec2<i32>(-46293i, -10730i), vec2<i32>(-1i, -44085i), vec2<i32>(-10278i, 2147483647i), vec2<i32>(2147483647i, 1i), vec2<i32>(2147483647i, 5872i), vec2<i32>(-1i, -1i), vec2<i32>(2824i, -13916i), vec2<i32>(30805i, -12523i), vec2<i32>(1801i, 2147483647i), vec2<i32>(-33494i, 2324i));

var<private> global1: i32;

var<private> global2: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(Struct_1(vec3<bool>(true, false, false), vec3<u32>(67801u, 8461u, 4294967295u), vec3<i32>(-1i, -8567i, i32(-2147483648)), 0u), true, Struct_1(vec3<bool>(true, true, false), vec3<u32>(34198u, 0u, 0u), vec3<i32>(2147483647i, -274i, -39475i), 34618u), vec3<f32>(211f, 1222f, -891f), -867i), Struct_2(Struct_1(vec3<bool>(true, true, true), vec3<u32>(1u, 1u, 1u), vec3<i32>(2147483647i, -52956i, 0i), 4294967295u), true, Struct_1(vec3<bool>(true, false, true), vec3<u32>(25682u, 20512u, 1u), vec3<i32>(-2798i, 2147483647i, 1i), 28955u), vec3<f32>(160f, 245f, -1072f), -19936i), Struct_2(Struct_1(vec3<bool>(false, false, false), vec3<u32>(42566u, 1u, 71993u), vec3<i32>(12428i, 0i, -1i), 27764u), false, Struct_1(vec3<bool>(false, true, false), vec3<u32>(4294967295u, 36003u, 41785u), vec3<i32>(-48566i, 1i, -5014i), 4294967295u), vec3<f32>(871f, 684f, -340f), -3858i), Struct_2(Struct_1(vec3<bool>(false, false, false), vec3<u32>(18799u, 0u, 19154u), vec3<i32>(i32(-2147483648), -9537i, -37253i), 4294967295u), true, Struct_1(vec3<bool>(false, true, true), vec3<u32>(18376u, 51581u, 1076u), vec3<i32>(11879i, 26336i, -38337i), 1u), vec3<f32>(1032f, 1000f, -375f), 32835i), Struct_2(Struct_1(vec3<bool>(false, true, true), vec3<u32>(32848u, 1u, 0u), vec3<i32>(2147483647i, 83347i, 1i), 13830u), true, Struct_1(vec3<bool>(true, true, true), vec3<u32>(72752u, 1u, 1836u), vec3<i32>(2147483647i, 2147483647i, 0i), 1u), vec3<f32>(2221f, -1542f, 881f), -33064i));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_add_vec2_u32(max(~min(countOneBits(u_input.c), min(u_input.c, u_input.c)), u_input.c), abs(vec2<u32>(~u_input.b, 5926u)) | _wgslsmith_mult_vec2_u32(countOneBits(abs(vec2<u32>(62801u, 0u))), u_input.c));
    var var_1 = Struct_3(_wgslsmith_sub_i32(18105i, arg_2.x), any(vec4<bool>(false, select(false, true, false) || true, _wgslsmith_f_op_f32(exp2(arg_1.x)) != _wgslsmith_f_op_f32(arg_1.x + arg_1.x), 1u >= _wgslsmith_div_u32(arg_0, 509u))));
    global2 = array<Struct_2, 5>();
    let var_2 = -35325i;
    var_1 = Struct_3(16714i, !(all(vec2<bool>(var_1.b, var_1.b)) && false));
    return max(_wgslsmith_mult_u32(~arg_0, 4294967295u), firstTrailingBit(var_0.x)) >> (~u_input.c.x % 32u);
}

fn func_2() -> Struct_4 {
    let var_0 = u_input.a.x << (func_3(u_input.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1406f, 1250f, 866f))), u_input.a) % 32u);
    global0 = array<vec2<i32>, 30>();
    var var_1 = !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(52449i >= var_0, true, any(vec4<bool>(true, false, true, true))), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), false)), !select(true, true, true) | true);
    var_1 = select(select(!select(vec3<bool>(var_1.x, true, false), !vec3<bool>(var_1.x, var_1.x, true), true), vec3<bool>(true, true, true), var_1.x), select(select(select(vec3<bool>(true, true, var_1.x), !vec3<bool>(var_1.x, false, var_1.x), false), !vec3<bool>(true, var_1.x, true), vec3<bool>(2147483647i > var_0, var_1.x, var_1.x)), !select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(true, var_1.x, var_1.x), select(var_1.x, var_1.x, var_1.x)), select(!(!vec3<bool>(true, true, var_1.x)), select(!vec3<bool>(true, false, var_1.x), vec3<bool>(var_1.x, var_1.x, false), all(vec4<bool>(var_1.x, false, var_1.x, var_1.x))), true)), !var_1.x);
    let var_2 = Struct_2(Struct_1(select(vec3<bool>(true, var_1.x, u_input.a.x > -1i), vec3<bool>(var_1.x, select(var_1.x, var_1.x, true), var_1.x), (true && var_1.x) != true), vec3<u32>(34830u, 1u, u_input.c.x), _wgslsmith_mult_vec3_i32(~(-vec3<i32>(u_input.a.x, var_0, -16641i)), abs(-vec3<i32>(-32920i, u_input.a.x, -8373i))), 0u), var_1.x, Struct_1(vec3<bool>(false, var_1.x, true), (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.c.x), vec3<u32>(4294967295u, 1u, 4294967295u)) ^ select(vec3<u32>(u_input.c.x, u_input.b, 27003u), vec3<u32>(u_input.b, 67426u, u_input.b), true)) ^ _wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, 33183u, u_input.b), vec3<u32>(15706u, 1u, u_input.c.x) << (vec3<u32>(u_input.c.x, 60268u, 43116u) % vec3<u32>(32u))), ~select(~vec3<i32>(1i, u_input.a.x, -2147483647i), min(vec3<i32>(19318i, var_0, 35004i), vec3<i32>(1i, -2147483647i, 32240i)), !vec3<bool>(var_1.x, true, var_1.x)), ~(~u_input.b) & func_3(_wgslsmith_dot_vec3_u32(vec3<u32>(23471u, u_input.c.x, u_input.b), vec3<u32>(u_input.b, 4294967295u, 4634u)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(190f, -317f, 1000f))), _wgslsmith_sub_vec2_i32(global0[_wgslsmith_index_u32(33505u, 30u)], global0[_wgslsmith_index_u32(u_input.c.x, 30u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-491f, -290f, 110f))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(568f, -568f, -723f))), vec3<f32>(758f, -1096f, 740f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(867f, -352f, -431f) + vec3<f32>(776f, -271f, 384f)))) - vec3<f32>(_wgslsmith_f_op_f32(1480f - -351f), _wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(round(-259f))))), u_input.a.x);
    return Struct_4(_wgslsmith_sub_i32(_wgslsmith_div_i32(min(-97919i, u_input.a.x), -10221i) & (-70402i ^ abs(var_0)), 2147483647i), Struct_2(var_2.c, var_2.b, Struct_1(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, var_1.x), vec3<bool>(true, var_2.c.a.x, true), var_2.c.a), vec3<bool>(var_2.c.a.x, true, var_1.x)), _wgslsmith_mult_vec3_u32(var_2.c.b & vec3<u32>(30851u, var_2.a.b.x, 1u), ~var_2.a.b), vec3<i32>(1i, u_input.a.x, u_input.a.x) ^ vec3<i32>(var_0, u_input.a.x, var_2.a.c.x), select(49594u, ~var_2.c.b.x, var_1.x)), _wgslsmith_f_op_vec3_f32(-var_2.d), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_2.e, -3300i), select(var_2.c.c.zx, vec2<i32>(0i, var_2.a.c.x), var_1.x)), -u_input.a)), _wgslsmith_f_op_f32(f32(-1f) * -129f));
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-530f + arg_0.b.d.x));
    let var_1 = arg_0.b.a.c;
    var var_2 = Struct_1(vec3<bool>(!all(func_2().b.c.a), arg_2, true), ~arg_0.b.a.b, ~arg_0.b.c.c, 1u);
    var var_3 = select(!select(vec4<bool>(arg_0.b.e >= -1i, !arg_1, any(arg_0.b.a.a), arg_2), select(select(vec4<bool>(arg_1, arg_2, arg_0.b.c.a.x, false), vec4<bool>(false, true, true, arg_1), vec4<bool>(arg_2, true, false, arg_1)), !vec4<bool>(var_2.a.x, true, false, var_2.a.x), arg_2), select(select(vec4<bool>(arg_0.b.b, false, arg_0.b.b, arg_0.b.b), vec4<bool>(var_2.a.x, arg_0.b.c.a.x, false, false), vec4<bool>(true, arg_1, var_2.a.x, true)), !vec4<bool>(false, false, true, var_2.a.x), vec4<bool>(false, arg_1, arg_0.b.a.a.x, false))), select(select(!select(vec4<bool>(true, arg_0.b.b, true, arg_1), vec4<bool>(arg_1, var_2.a.x, var_2.a.x, arg_0.b.b), vec4<bool>(arg_2, arg_0.b.a.a.x, false, var_2.a.x)), select(vec4<bool>(arg_0.b.a.a.x, arg_0.b.c.a.x, arg_0.b.b, false), vec4<bool>(true, arg_1, true, var_2.a.x), func_2().b.c.a.x), any(var_2.a)), select(select(vec4<bool>(true, false, arg_2, false), select(vec4<bool>(false, arg_0.b.a.a.x, arg_2, true), vec4<bool>(arg_2, arg_0.b.b, arg_1, arg_0.b.c.a.x), vec4<bool>(arg_2, true, true, arg_1)), vec4<bool>(true, var_2.a.x, arg_1, true)), !select(vec4<bool>(arg_1, var_2.a.x, arg_0.b.a.a.x, var_2.a.x), vec4<bool>(arg_0.b.c.a.x, true, arg_1, arg_0.b.a.a.x), true), vec4<bool>(true, arg_0.b.a.a.x && arg_1, -3508i == var_2.c.x, true)), vec4<bool>(!(var_2.b.x > u_input.b), true, false, false)), vec4<bool>(!(_wgslsmith_f_op_f32(-1752f * arg_0.b.d.x) == _wgslsmith_f_op_f32(f32(-1f) * -927f)), any(select(vec4<bool>(arg_0.b.c.a.x, false, false, var_2.a.x), !vec4<bool>(false, arg_1, false, false), true)), arg_1, all(select(!vec4<bool>(var_2.a.x, true, false, arg_2), vec4<bool>(arg_2, true, false, true), all(vec2<bool>(true, true))))));
    var var_4 = Struct_4(_wgslsmith_mod_i32(1i, max(i32(-1i) * -1i, 57042i) ^ var_2.c.x), arg_0.b, -319f);
    return arg_0.b.d.x;
}

fn func_1() -> Struct_3 {
    var var_0 = u_input.c;
    let var_1 = _wgslsmith_add_vec3_i32(~vec3<i32>(u_input.a.x, ~_wgslsmith_div_i32(2147483647i, u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-65082i, -32601i, u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, -1i, u_input.a.x, 7925i)) >> (u_input.c.x % 32u)), _wgslsmith_clamp_vec3_i32(abs(min(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x)), vec3<i32>(-12416i, u_input.a.x, u_input.a.x) ^ vec3<i32>(u_input.a.x, 7146i, 0i))), vec3<i32>(-16127i, 57727i, i32(-1i) * -1i), ~(~(~vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i)))));
    global2 = array<Struct_2, 5>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(501f)), 1418f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-149f - -689f)), _wgslsmith_f_op_f32(func_4(func_2(), true, any(vec3<bool>(true, true, true)))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-870f, -1169f, _wgslsmith_f_op_f32(131f * -620f)))))));
    return Struct_3(-u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-502f + 717f) * var_3.x)) < var_3.x);
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: Struct_3, arg_3: Struct_1) -> Struct_1 {
    global2 = array<Struct_2, 5>();
    global0 = array<vec2<i32>, 30>();
    let var_0 = arg_2;
    var var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1042f, arg_1, arg_1, -287f) * vec4<f32>(440f, 1000f, arg_1, 211f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -1006f, arg_1, 268f) + vec4<f32>(arg_1, -897f, 398f, arg_1)), u_input.a.x < 1i))), vec4<f32>(-2082f, _wgslsmith_f_op_f32(arg_1 + arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * 1089f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1639f)) * -1166f)))), _wgslsmith_f_op_f32(sign(719f)), firstLeadingBit(select(~vec4<u32>(u_input.c.x, 1u, 35105u, arg_3.d), vec4<u32>(12447u, u_input.b, 0u, u_input.b), false) ^ vec4<u32>(_wgslsmith_add_u32(u_input.b, 17896u), 20210u >> (1u % 32u), arg_3.d, u_input.c.x)), arg_3.c.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1951f, arg_1, _wgslsmith_f_op_f32(-arg_1)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1101f, arg_1, -936f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-291f, arg_1, -133f)), func_2().b.a.a))), vec3<f32>(1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1), arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_4(var_0.a, Struct_2(arg_3, var_0.b, arg_3, vec3<f32>(-178f, arg_1, 520f), var_0.a), -696f), false, true)))), false)));
    let var_2 = select(~vec2<u32>(arg_3.b.x, 6217u), select(u_input.c, select(vec2<u32>(_wgslsmith_add_u32(0u, arg_3.b.x), 1u), vec2<u32>(~0u, var_1.c.x), arg_3.a.xy), !vec2<bool>(var_1.e.x != var_1.b, all(vec4<bool>(arg_0.b, arg_3.a.x, false, false)))), arg_3.a.yz);
    return arg_3;
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: f32) -> vec3<bool> {
    let var_0 = func_2().b;
    var var_1 = Struct_2(var_0.c, u_input.a.x == max(~u_input.a.x, _wgslsmith_mod_i32(-1i, arg_1.c.c.x) ^ -var_0.c.c.x), func_5(Struct_3(arg_0.x, true), arg_1.d.x, func_1(), arg_1.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_2().b.d) - func_2().b.d), ~(-(_wgslsmith_div_i32(var_0.a.c.x, arg_1.e) ^ arg_0.x)));
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_2, var_1.d.x)))))) - var_0.d.x);
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -642f), -175f, -1607f);
    return vec3<bool>(true, false, false);
}

fn func_7(arg_0: vec3<bool>, arg_1: f32) -> StorageBuffer {
    global0 = array<vec2<i32>, 30>();
    global1 = ~(-1i) ^ ((~2147483647i << (reverseBits(u_input.c.x) % 32u)) ^ -12136i);
    let var_0 = vec4<u32>(~u_input.b, func_3(select(_wgslsmith_sub_u32(u_input.c.x, 1u), ~1u, func_2().b.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-370f, arg_1, 158f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 657f, arg_1), vec3<f32>(arg_1, arg_1, -853f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-455f, arg_1, -425f)) + vec3<f32>(-775f, -768f, -443f))), u_input.a), 41293u, u_input.b);
    var var_1 = 0u;
    var var_2 = global2[_wgslsmith_index_u32(~var_0.x, 5u)];
    return StorageBuffer(52059u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 667f;
    let x = u_input.a;
    s_output = func_7(func_6(vec4<i32>(abs(0i), _wgslsmith_mult_i32(u_input.a.x, u_input.a.x), -u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(7995i, u_input.a.x, 65573i, u_input.a.x), vec4<i32>(-3705i, 2147483647i, 59681i, u_input.a.x))) | _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, -2147483647i), vec4<i32>(0i, u_input.a.x, u_input.a.x, 2147483647i)), -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -62540i)), Struct_2(Struct_1(vec3<bool>(false, true, false), vec3<u32>(u_input.b, u_input.c.x, 39644u), vec3<i32>(u_input.a.x, u_input.a.x, 41863i), _wgslsmith_mod_u32(u_input.b, u_input.b)), true, func_5(func_1(), _wgslsmith_f_op_f32(select(var_0, var_0, false)), Struct_3(u_input.a.x, true), func_2().b.a), vec3<f32>(_wgslsmith_f_op_f32(round(-329f)), _wgslsmith_f_op_f32(-var_0), -210f), ~u_input.a.x), -573f), _wgslsmith_f_op_f32(func_4(Struct_4(min(u_input.a.x, ~1i), func_2().b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0 - 599f)))), !(true & (0i > u_input.a.x)), true)));
}

