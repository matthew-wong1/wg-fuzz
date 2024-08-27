struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 23> = array<vec2<f32>, 23>(vec2<f32>(1095f, 1415f), vec2<f32>(-290f, 785f), vec2<f32>(906f, -761f), vec2<f32>(1000f, 1000f), vec2<f32>(840f, -1259f), vec2<f32>(395f, -440f), vec2<f32>(1200f, 284f), vec2<f32>(1362f, 814f), vec2<f32>(-1606f, 536f), vec2<f32>(-327f, 923f), vec2<f32>(492f, 606f), vec2<f32>(253f, -107f), vec2<f32>(-1299f, 543f), vec2<f32>(-892f, 2551f), vec2<f32>(860f, 1000f), vec2<f32>(1700f, -231f), vec2<f32>(2027f, -1285f), vec2<f32>(1381f, 412f), vec2<f32>(-559f, -1496f), vec2<f32>(447f, 749f), vec2<f32>(717f, 1000f), vec2<f32>(212f, -260f), vec2<f32>(1149f, -326f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> i32 {
    global0 = array<vec2<f32>, 23>();
    global0 = array<vec2<f32>, 23>();
    var var_0 = ~(~reverseBits(u_input.b | firstTrailingBit(u_input.b)));
    var_0 = abs(1u);
    let var_1 = select(abs((vec4<i32>(-1i, 18597i, 1i, 1i) >> (firstLeadingBit(vec4<u32>(u_input.b, u_input.b, u_input.a.x, u_input.b)) % vec4<u32>(32u))) & vec4<i32>(-11885i, -1i << (1u % 32u), abs(-88297i), _wgslsmith_div_i32(18207i, -60354i))), _wgslsmith_div_vec4_i32(select(_wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(2147483647i, 13633i, 29632i, -2163i)), -vec4<i32>(-3332i, -2147483647i, 2147483647i, 24135i), vec4<bool>(true, true, true, true)), -vec4<i32>(~1430i, -1i, 52047i, countOneBits(-1i))), !select(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, false, u_input.a.x <= u_input.a.x, true), true));
    return countOneBits(var_1.x) | abs(~abs(_wgslsmith_dot_vec4_i32(vec4<i32>(17786i, var_1.x, -2147483647i, -45293i), vec4<i32>(1i, var_1.x, -2147483647i, -9653i))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    global0 = array<vec2<f32>, 23>();
    let var_0 = !(max(arg_2.a.b & 1u, 45578u) >= _wgslsmith_add_u32(abs(~4528u), ~firstTrailingBit(24859u)));
    global0 = array<vec2<f32>, 23>();
    let var_1 = arg_1.a.b ^ ~71934u;
    global0 = array<vec2<f32>, 23>();
    return all(vec3<bool>(all(vec3<bool>(true, any(vec4<bool>(arg_2.a.d, true, false, arg_2.a.d)), arg_2.b.x)), var_0, arg_2.b.x));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: bool) -> f32 {
    global0 = array<vec2<f32>, 23>();
    var var_0 = !func_4(vec4<i32>(_wgslsmith_add_i32(func_3(), arg_0.a.a.x ^ arg_0.a.a.x), _wgslsmith_clamp_i32(0i, -1i, i32(-1i) * -12288i), _wgslsmith_add_i32(arg_2.a.c.x, func_3()), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(26798i, arg_0.a.a.x, -1i, arg_2.a.a.x), vec4<i32>(55874i, arg_0.a.c.x, arg_0.a.a.x, 25171i)), vec4<i32>(1i, -2147483647i, -18529i, -12146i) << (vec4<u32>(4294967295u, arg_2.a.b, 77909u, arg_2.a.b) % vec4<u32>(32u)))), arg_2, Struct_2(Struct_1(abs(arg_2.a.a), firstLeadingBit(0u), vec3<i32>(2147483647i, arg_2.a.a.x, arg_2.a.a.x), arg_0.b.x || arg_1.x), vec2<bool>(!arg_1.x, true)));
    var_0 = all(select(select(!vec4<bool>(true, arg_3, false, arg_2.a.d), vec4<bool>(true, false, arg_2.a.d & true, true), select(select(vec4<bool>(arg_0.a.d, true, true, false), vec4<bool>(false, arg_0.b.x, false, false), arg_1.x), !vec4<bool>(true, arg_1.x, arg_0.b.x, true), true)), select(select(vec4<bool>(arg_2.b.x, arg_2.b.x, true, false), !vec4<bool>(arg_0.a.d, arg_2.a.d, false, false), !vec4<bool>(arg_0.a.d, false, arg_1.x, arg_0.b.x)), vec4<bool>(true, false, all(vec2<bool>(true, false)), all(vec2<bool>(arg_1.x, arg_2.a.d))), select(select(vec4<bool>(arg_1.x, false, arg_3, false), vec4<bool>(true, arg_2.a.d, arg_3, arg_3), arg_2.a.d), vec4<bool>(false, arg_2.a.d, true, arg_2.b.x), !vec4<bool>(arg_0.b.x, arg_3, false, arg_0.b.x))), arg_1.x));
    var_0 = !arg_3;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1425f - _wgslsmith_f_op_f32(sign(333f)))))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<i32>) -> f32 {
    let var_0 = Struct_2(Struct_1(vec3<i32>(-22477i, _wgslsmith_mult_i32(-arg_1.x, 37941i), -(arg_1.x >> (u_input.b % 32u))), u_input.b, (~vec3<i32>(arg_1.x, 1i, arg_1.x) << (~vec3<u32>(52u, 3723u, u_input.a.x) % vec3<u32>(32u))) ^ vec3<i32>(~2147483647i, 0i ^ arg_1.x, _wgslsmith_sub_i32(arg_1.x, arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(624f + -219f) - _wgslsmith_f_op_f32(f32(-1f) * -779f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x))), vec2<bool>(!(!any(vec4<bool>(false, false, false, true))), true));
    global0 = array<vec2<f32>, 23>();
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-529f, -1852f, _wgslsmith_f_op_f32(-arg_0.x), arg_0.x) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), -660f, _wgslsmith_f_op_f32(func_2(Struct_2(var_0.a, var_0.b), vec2<bool>(var_0.a.d, false), Struct_2(var_0.a, vec2<bool>(var_0.a.d, var_0.b.x)), true)), -1120f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2398f, arg_0.x, -400f, arg_0.x)) * _wgslsmith_f_op_vec4_f32(round(arg_0))))), _wgslsmith_div_vec4_f32(arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, -434f, -721f) + _wgslsmith_f_op_vec4_f32(abs(arg_0))))), func_4(max(-vec4<i32>(var_0.a.c.x, arg_1.x, var_0.a.a.x, arg_1.x), vec4<i32>(arg_1.x, 0i, -27849i, arg_1.x)), var_0, Struct_2(var_0.a, var_0.b)) & var_1));
    let var_3 = -304f;
    return arg_0.x;
}

fn func_5(arg_0: i32, arg_1: vec2<bool>, arg_2: u32) -> Struct_1 {
    let var_0 = -select(~(~vec2<i32>(2147483647i, -1i) << (~u_input.a % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(vec2<i32>(-38270i, arg_0 << (u_input.b % 32u)), vec2<i32>(select(-1i, 18538i, arg_1.x), arg_0)), true);
    var var_1 = Struct_2(Struct_1(vec3<i32>(var_0.x, arg_0 ^ 1i, _wgslsmith_add_i32(0i, -55261i)), 1u, vec3<i32>(0i, _wgslsmith_clamp_i32(-65759i, -var_0.x, var_0.x), _wgslsmith_add_i32(~2147483647i, var_0.x)), true), select(arg_1, vec2<bool>(arg_1.x, false), false));
    var var_2 = arg_1.x & select(var_1.a.d, false, true);
    var_1 = Struct_2(var_1.a, arg_1);
    return Struct_1(select(var_1.a.a, ~(-(var_1.a.a >> (vec3<u32>(1u, 39495u, u_input.a.x) % vec3<u32>(32u)))), true), ~arg_2, -vec3<i32>(arg_0, var_0.x | var_1.a.a.x, i32(-1i) * -2147483647i), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(27458i, select(vec2<bool>(_wgslsmith_f_op_f32(1217f + 2529f) > _wgslsmith_f_op_f32(func_1(vec4<f32>(569f, 524f, 538f, -837f), vec2<i32>(1i, 1i))), any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false))), vec2<bool>(true, true), true), ~28337u);
    var var_1 = vec3<u32>(20923u, ~abs(~var_0.b >> (~0u % 32u)), abs(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, var_0.b), vec2<u32>(u_input.a.x, 4294967295u)))));
    global0 = array<vec2<f32>, 23>();
    let var_2 = vec4<i32>(var_0.a.x, -34147i, (var_0.a.x << (var_0.b % 32u)) | 1i, 29835i);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1215f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1857f + 730f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-325f)) + _wgslsmith_f_op_f32(-1000f - 1000f))))), _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(874f)), -1128f)) + -144f), 1000f);
    var_1 = vec3<u32>(var_1.x, 0u, _wgslsmith_div_u32(_wgslsmith_mult_u32(var_0.b, var_1.x) >> (~0u % 32u), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(var_1.x, 4294967295u, 74987u, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, var_0.b, 17277u, u_input.b), vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, 0u))))) >> (countOneBits(~firstTrailingBit(~vec3<u32>(17881u, 1u, 4294967295u))) % vec3<u32>(32u));
    var_1 = max(~vec3<u32>(1u, 41741u >> (0u % 32u), _wgslsmith_mult_u32(1033u >> (u_input.b % 32u), abs(2590u))), vec3<u32>(reverseBits(4294967295u), 11841u, firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_mod_u32(var_0.b, 17342u), ~var_1.x))));
    global0 = array<vec2<f32>, 23>();
    var_1 = ~_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_add_u32(~var_0.b, 20235u), var_1.x, _wgslsmith_div_u32(var_1.x, u_input.a.x)), vec3<u32>(~11881u, u_input.b, firstLeadingBit(var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-2147483647i, _wgslsmith_mod_i32(var_2.x, _wgslsmith_clamp_i32(-35180i, 0i, 7367i)), 1i) & var_0.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_3.x))), var_2);
}

