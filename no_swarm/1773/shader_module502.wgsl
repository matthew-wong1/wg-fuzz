struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<u32>,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 26> = array<vec3<u32>, 26>(vec3<u32>(0u, 86057u, 26851u), vec3<u32>(4294967295u, 36245u, 4294967295u), vec3<u32>(8036u, 0u, 9569u), vec3<u32>(16131u, 1u, 12006u), vec3<u32>(30584u, 0u, 34962u), vec3<u32>(10961u, 4294967295u, 8017u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(0u, 44166u, 41682u), vec3<u32>(0u, 4294967295u, 33295u), vec3<u32>(24240u, 20590u, 26484u), vec3<u32>(0u, 0u, 0u), vec3<u32>(1131u, 4294967295u, 36330u), vec3<u32>(28578u, 17656u, 0u), vec3<u32>(4294967295u, 48188u, 4294967295u), vec3<u32>(1u, 5404u, 0u), vec3<u32>(30966u, 58553u, 9894u), vec3<u32>(4294967295u, 4294967295u, 79381u), vec3<u32>(4294967295u, 4294967295u, 53460u), vec3<u32>(0u, 9353u, 0u), vec3<u32>(1u, 4294967295u, 69376u), vec3<u32>(1u, 4294967295u, 53967u), vec3<u32>(0u, 10347u, 11417u), vec3<u32>(0u, 27081u, 1u), vec3<u32>(55420u, 1u, 1u), vec3<u32>(452u, 4294967295u, 1u), vec3<u32>(14599u, 4294967295u, 4294967295u));

var<private> global1: array<vec3<bool>, 10>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<i32>) -> u32 {
    global1 = array<vec3<bool>, 10>();
    let var_0 = Struct_1(u_input.b.x, arg_0.x, vec2<u32>(30924u, (~u_input.b.x & _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(23625u, u_input.c, 5127u))) ^ 1u), ~1i, !arg_0.x);
    let var_1 = 1456f;
    var var_2 = min(13037u, 0u | abs(_wgslsmith_mod_u32(13024u, u_input.a.x))) == _wgslsmith_div_u32(_wgslsmith_div_u32(max(6877u | var_0.c.x, 17372u), ~_wgslsmith_mod_u32(var_0.a, u_input.b.x)), u_input.a.x);
    let var_3 = all(select(select(global1[_wgslsmith_index_u32(abs(~u_input.b.x), 10u)], vec3<bool>(127006u < u_input.b.x, !var_0.b, all(vec3<bool>(false, false, var_0.b))), false), select(vec3<bool>(true, any(arg_0), all(vec4<bool>(var_0.e, true, true, var_0.e))), global1[_wgslsmith_index_u32(abs(min(u_input.b.x, 1u)), 10u)], any(!vec3<bool>(false, false, arg_0.x))), global1[_wgslsmith_index_u32(1u, 10u)]));
    return ~u_input.b.x;
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    global1 = array<vec3<bool>, 10>();
    let var_0 = ~57742u;
    let var_1 = vec2<bool>(true, any(global1[_wgslsmith_index_u32(func_3(select(select(vec2<bool>(arg_1.b, arg_1.e), vec2<bool>(true, false), vec2<bool>(arg_1.b, arg_1.b)), !vec2<bool>(false, arg_1.b), select(vec2<bool>(true, false), vec2<bool>(true, arg_1.e), arg_1.b)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, 1i, arg_1.d, -5764i), vec4<i32>(-1i, arg_0, 29284i, arg_1.d), vec4<i32>(0i, 98320i, 35945i, -2147483647i))), 10u)]));
    let var_2 = arg_1;
    global0 = array<vec3<u32>, 26>();
    return var_2;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> vec3<u32> {
    global1 = array<vec3<bool>, 10>();
    let var_0 = func_2(max(-_wgslsmith_sub_i32(arg_1.d, -1i), arg_1.d & firstLeadingBit(_wgslsmith_sub_i32(arg_1.d, arg_3.d))), func_2(2147483647i, arg_3));
    global0 = array<vec3<u32>, 26>();
    var var_1 = max(u_input.b.x, _wgslsmith_mult_u32(min(~(arg_1.c.x ^ arg_3.a), abs(18532u)), ~4294967295u ^ _wgslsmith_mod_u32(58994u << (arg_1.a % 32u), arg_1.a)));
    var_1 = 78341u;
    return abs(~u_input.b);
}

fn func_1() -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_dot_vec3_u32(func_4(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-314f, -230f, 988f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-487f, 1000f, -377f)))), Struct_1(_wgslsmith_mod_u32(14259u, 1u), all(vec3<bool>(true, true, true)), ~u_input.a, _wgslsmith_add_i32(1i, 31648i), all(vec4<bool>(false, true, false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1654f)) - _wgslsmith_f_op_f32(406f + 904f)), func_2(1i, Struct_1(u_input.c, true, u_input.a, 13535i, true))), u_input.b), (u_input.a.x & u_input.a.x) < _wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.a.x, 4294967295u), true), firstLeadingBit(abs(vec2<u32>(u_input.c, 38390u)))), vec2<u32>(14379u, 4294967295u) << (~_wgslsmith_mult_vec2_u32(u_input.a, u_input.b.xz) % vec2<u32>(32u)), 13615i, true || all(vec4<bool>(true, false, all(vec3<bool>(false, false, false)), false)));
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d, 1i, var_0.d), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.d, var_0.d, var_0.d), vec3<i32>(var_0.d, 0i, var_0.d))), var_0.d), ~_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.d, -2147483647i, -2147483647i, 1i), vec4<i32>(41781i, 1i, -25631i, -1i)), abs(vec4<i32>(42314i, -1276i, -2147483647i, 19447i))), ~_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(2147483647i, -1i, var_0.d, -31011i)), vec4<i32>(var_0.d, -1749i, var_0.d, -2147483647i))), min(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(var_0.d, -19253i), var_0.d), var_0.d, ~max(1i, var_0.d)), vec3<i32>(-firstLeadingBit(var_0.d), var_0.d, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.d, -18720i, -27770i, var_0.d), abs(vec4<i32>(var_0.d, -2147483647i, var_0.d, var_0.d))))));
    var_0 = func_2(6729i, func_2(var_1, Struct_1(~(~var_0.a), var_0.e, ~(~vec2<u32>(1u, 1u)), var_0.d, any(vec3<bool>(var_0.b, var_0.b, var_0.b)))));
    return !vec4<bool>(true, !select(select(true, var_0.b, false), true, u_input.b.x <= var_0.a), var_0.b, var_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(func_1(), vec4<bool>(!select(false, true, 36794u <= u_input.c), true, func_2(_wgslsmith_add_i32(max(-1i, -1i), -9624i >> (u_input.a.x % 32u)), func_2(1i, Struct_1(u_input.c, false, u_input.a, -2147483647i, true))).e, true), select(vec4<bool>(true, true, any(func_1()), !any(vec2<bool>(true, true))), !vec4<bool>(true, true, all(vec2<bool>(false, true)), true), func_1()));
    global0 = array<vec3<u32>, 26>();
    global1 = array<vec3<bool>, 10>();
    global0 = array<vec3<u32>, 26>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(2474f, 393f), _wgslsmith_f_op_f32(step(-122f, -366f))), _wgslsmith_f_op_f32(-154f * -891f), 965f)));
    var var_2 = -1811f;
    var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(136f, var_1.x, var_1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) + vec3<f32>(886f, var_1.x, var_1.x))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(round(-2044f))), vec3<f32>(var_1.x, _wgslsmith_f_op_f32(select(var_1.x, -944f, false)), _wgslsmith_f_op_f32(ceil(1000f))), func_1().xyx)), select(!select(var_0.yzy, vec3<bool>(var_0.x, false, var_0.x), false), var_0.xzx, var_0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(326f, var_1.x, var_1.x) + vec3<f32>(var_1.x, -403f, 523f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(198f, var_1.x, -540f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-472f, -610f, var_1.x)) * vec3<f32>(-1000f, var_1.x, var_1.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(355f, -390f, var_1.x) + vec3<f32>(1f, 1f, 1f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(767f, var_1.x, 513f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 1535f, var_1.x))))));
    var var_3 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(~(~4294967295u), 0u, ~(~u_input.b.x)), select(reverseBits(vec3<u32>(u_input.b.x, u_input.a.x, u_input.b.x) & vec3<u32>(u_input.b.x, 0u, u_input.b.x)), ~(~vec3<u32>(u_input.c, u_input.b.x, 0u)), vec3<bool>(true, any(var_0), var_0.x))), !var_0.x, u_input.b.zy, 1i, true);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.x)) + _wgslsmith_f_op_f32(var_1.x - var_1.x)), 1101f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-362f)), var_1.x)), _wgslsmith_div_vec4_i32(vec4<i32>(1i << (var_3.c.x % 32u), reverseBits(-2147483647i), ~var_3.d, 2147483647i), _wgslsmith_sub_vec4_i32(~vec4<i32>(var_3.d, var_3.d, -1i, var_3.d), select(_wgslsmith_add_vec4_i32(vec4<i32>(var_3.d, var_3.d, var_3.d, 28387i), vec4<i32>(var_3.d, 2147483647i, var_3.d, var_3.d)), -vec4<i32>(-40152i, -1i, 0i, 41203i), var_0.x))), _wgslsmith_sub_i32(0i, func_2(var_3.d, Struct_1(_wgslsmith_sub_u32(var_3.a, 4294967295u), any(global1[_wgslsmith_index_u32(var_3.c.x, 10u)]), ~vec2<u32>(42947u, 34982u), -8350i, !var_3.b)).d));
}

