struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
    c: Struct_3,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(75760u, 0u, 93409u);

var<private> global1: array<Struct_4, 7> = array<Struct_4, 7>(Struct_4(5192u, vec4<u32>(1u, 0u, 38943u, 0u), Struct_3(false), vec4<i32>(26691i, -26787i, 2147483647i, 17722i), vec3<u32>(50896u, 4612u, 0u)), Struct_4(77704u, vec4<u32>(1u, 1u, 1u, 5802u), Struct_3(false), vec4<i32>(i32(-2147483648), 1i, -40311i, i32(-2147483648)), vec3<u32>(16432u, 69004u, 6032u)), Struct_4(12245u, vec4<u32>(4294967295u, 0u, 79745u, 39518u), Struct_3(true), vec4<i32>(29991i, 3229i, -1i, 57919i), vec3<u32>(30044u, 42833u, 4294967295u)), Struct_4(27993u, vec4<u32>(16515u, 11858u, 0u, 16176u), Struct_3(true), vec4<i32>(1i, 2147483647i, 1i, -4945i), vec3<u32>(1u, 28970u, 0u)), Struct_4(4294967295u, vec4<u32>(46883u, 81079u, 54468u, 100705u), Struct_3(true), vec4<i32>(7568i, -1i, i32(-2147483648), 0i), vec3<u32>(17587u, 2503u, 0u)), Struct_4(911u, vec4<u32>(4294967295u, 94048u, 18881u, 43328u), Struct_3(true), vec4<i32>(-31969i, 18690i, -31253i, 0i), vec3<u32>(0u, 4294967295u, 0u)), Struct_4(61502u, vec4<u32>(26490u, 11432u, 81461u, 1u), Struct_3(true), vec4<i32>(0i, 37612i, 2147483647i, -70801i), vec3<u32>(80341u, 1u, 5170u)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> Struct_5 {
    global1 = array<Struct_4, 7>();
    let var_0 = 1i;
    let var_1 = abs(2147483647i);
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c, -840f, 390f, arg_1.c))))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.c, _wgslsmith_f_op_f32(arg_1.c - -971f))) - 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.c)) * -612f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-547f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-759f, 1486f) * _wgslsmith_f_op_f32(-arg_1.c)) + _wgslsmith_f_op_f32(f32(-1f) * -935f)))));
    var var_3 = u_input.a.yx << (vec2<u32>(~u_input.a.x, select(1u, arg_1.b, false)) % vec2<u32>(32u));
    return Struct_5(Struct_1(vec3<i32>(_wgslsmith_mod_i32(var_0, _wgslsmith_dot_vec3_i32(vec3<i32>(-39511i, 0i, var_1), vec3<i32>(-5428i, var_1, -1i))), firstLeadingBit(-arg_1.a.x), arg_1.a.x), ~(global0.x | (27998u >> (arg_1.b % 32u))), 1f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 1146f, var_2.x, arg_1.c) + vec4<f32>(arg_1.c, 343f, arg_1.c, arg_1.c)) + var_2), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2)))));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: vec4<f32>, arg_3: vec3<u32>) -> vec4<i32> {
    let var_0 = _wgslsmith_mult_u32(~0u, arg_3.x);
    global0 = vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(0u), 52242u), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, arg_3.x), _wgslsmith_div_vec2_u32(arg_3.zy, vec2<u32>(global0.x, u_input.a.x)))) | ~0u, 4294967295u, 48385u);
    global1 = array<Struct_4, 7>();
    global0 = vec3<u32>(_wgslsmith_dot_vec3_u32(countOneBits(~arg_3), ~_wgslsmith_mult_vec3_u32(abs(vec3<u32>(global0.x, u_input.a.x, arg_3.x)), vec3<u32>(u_input.a.x, global0.x, 1u) | u_input.a)), 1u, 136127u & ~global0.x);
    global0 = ~u_input.a;
    return -(~vec4<i32>(-33475i & (arg_1 ^ arg_1), arg_1, arg_1, max(2147483647i, -2147483647i)));
}

fn func_2(arg_0: Struct_5, arg_1: i32) -> vec4<f32> {
    var var_0 = func_1(all(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), arg_0.a);
    var var_1 = Struct_3(false);
    let var_2 = Struct_4(_wgslsmith_add_u32(u_input.a.x, var_0.a.b), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.b, 35079u, u_input.a.x, arg_0.a.b) << (firstTrailingBit(vec4<u32>(var_0.a.b, 72380u, global0.x, 10303u)) % vec4<u32>(32u)), vec4<u32>(func_1(false, var_0.a).a.b, _wgslsmith_mod_u32(var_0.a.b, 42796u), 0u, ~var_0.a.b)), ~(~_wgslsmith_div_u32(62260u, arg_0.a.b)), _wgslsmith_sub_u32(4294967295u, u_input.a.x), reverseBits(var_0.a.b)), Struct_3(!all(vec2<bool>(true, true))), firstTrailingBit(func_3(select(!vec4<bool>(var_1.a, false, true, true), select(vec4<bool>(var_1.a, false, var_1.a, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, var_1.a, true)), any(vec3<bool>(true, var_1.a, var_1.a))), ~1i, arg_0.b, ~vec3<u32>(42556u, 1u, 4294967295u) & u_input.a)), _wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(1u | u_input.a.x, 83352u, 1u)));
    global1 = array<Struct_4, 7>();
    var var_3 = ((func_1(all(vec2<bool>(true, true)), Struct_1(var_0.a.a, 0u, -1205f)).a.a.x >> (0u % 32u)) & arg_0.a.a.x) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -(vec2<i32>(-1i, arg_1) & var_0.a.a.zx), max(-countOneBits(vec2<i32>(11775i, -1i)), vec2<i32>(var_2.d.x, var_0.a.a.x)));
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    var var_1 = Struct_5(Struct_1(firstLeadingBit(_wgslsmith_add_vec3_i32(abs(vec3<i32>(-24413i, 0i, -1i)), -vec3<i32>(78886i, 18952i, 1i))), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.x, 0u, 2353u, 1u), vec4<u32>(global0.x, global0.x, 108462u, u_input.a.x)), ~29197u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(step(1440f, -2261f)))))), _wgslsmith_f_op_vec4_f32(func_2(func_1(true, Struct_1(vec3<i32>(-1i, -1i, 2147483647i), u_input.a.x, _wgslsmith_f_op_f32(-596f * -735f))), -firstTrailingBit(_wgslsmith_sub_i32(-1i, 1i)))));
    var_0 = var_1.a.a.x;
    let var_2 = vec4<i32>(max(32313i ^ var_1.a.a.x, 3617i), ~(-1508i), -2147483647i, _wgslsmith_sub_i32(var_1.a.a.x, ~var_1.a.a.x));
    var_1 = func_1(all(vec2<bool>(all(vec3<bool>(true, true, true)), false)), var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_2.xz & vec2<i32>(-20334i, -35811i)));
}

