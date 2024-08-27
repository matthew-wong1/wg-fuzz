struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec3<bool>,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec4<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 21>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec4<f32>, arg_3: u32) -> Struct_3 {
    var var_0 = true;
    global0 = array<vec2<f32>, 21>();
    var var_1 = Struct_4(arg_0.e, 549f, arg_0.d, false);
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-607f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1048f))))));
    let var_3 = Struct_4(var_1.a, 746f, arg_2, true);
    return Struct_3(u_input.a, var_3.a, 11039u);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>) -> bool {
    var var_0 = Struct_1(~_wgslsmith_mult_u32(15678u, ~(~1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(~arg_0.b.b, ~u_input.a.x, ~arg_0.b.a, _wgslsmith_mod_u32(func_2(Struct_2(586f, false, vec3<bool>(false, false, false), vec4<f32>(arg_0.b.d, -1689f, -1140f, arg_1.x), Struct_1(u_input.a.x, 1u, arg_0.b.c, -207f)), arg_1, vec4<f32>(-1736f, arg_1.x, 676f, arg_1.x), 38184u).b.a, arg_0.c)), arg_0.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_0.b.d)))), arg_0.b.d);
    var var_1 = select(_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.b, _wgslsmith_mod_i32(u_input.b ^ u_input.b, ~u_input.b)), _wgslsmith_mod_i32(abs(reverseBits(u_input.b)), 34943i)), _wgslsmith_mod_i32(u_input.b, abs(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-1855i, u_input.b, 1i)), vec3<i32>(u_input.b, u_input.b, u_input.b) ^ vec3<i32>(2147483647i, -59432i, u_input.b)))), true);
    let var_2 = 4654i;
    var var_3 = select(!select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(false, true, any(vec4<bool>(false, true, true, false)))), !(!vec3<bool>(all(vec4<bool>(false, false, false, false)), false, any(vec3<bool>(true, false, false)))), any(vec3<bool>(true, true, true)) || true);
    var var_4 = false;
    return var_3.x;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: bool) -> Struct_1 {
    global0 = array<vec2<f32>, 21>();
    return func_2(Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -591f))), true, arg_1.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.d)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.e.d, arg_1.a, arg_1.a, -104f)))), arg_1.e), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-arg_1.d.wxy), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) - _wgslsmith_f_op_f32(-arg_1.d.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1342f * arg_1.e.d), _wgslsmith_f_op_f32(select(arg_1.e.d, -179f, arg_1.c.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1360f * arg_1.e.c), arg_1.e.c, arg_1.e.c, _wgslsmith_f_op_f32(arg_1.d.x * arg_1.a))) * arg_1.d), countOneBits(arg_1.e.a)).b;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: i32) -> Struct_3 {
    var var_0 = arg_1.x;
    var_0 = arg_1.x;
    var var_1 = func_4(vec2<i32>(abs(_wgslsmith_mod_i32(-2147483647i, -2319i)), firstTrailingBit(-u_input.b)) ^ -firstLeadingBit(~vec2<i32>(1i, arg_0.x)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1740f)))), 1i >= _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, arg_0.x), vec3<i32>(-75793i, -1i, u_input.b)), firstTrailingBit(vec3<i32>(u_input.b, -24351i, 12007i))), vec3<bool>(!all(vec3<bool>(true, false, false)), func_3(func_2(Struct_2(-529f, false, vec3<bool>(false, true, false), vec4<f32>(-2321f, 464f, -412f, arg_1.x), Struct_1(84163u, u_input.a.x, arg_1.x, arg_1.x)), arg_1, vec4<f32>(2262f, 880f, arg_1.x, arg_1.x), u_input.a.x), arg_1), -arg_0.x >= select(76887i, 0i, true)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x), _wgslsmith_f_op_f32(abs(arg_1.x)), _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(trunc(1704f))), arg_1.x), Struct_1(1555u, ~4294967295u, 968f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -640f)))), _wgslsmith_clamp_vec3_u32(abs(u_input.a.zww), vec3<u32>(~4053u, 22006u, 1u), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(27172u, u_input.a.x, 4294967295u), u_input.a.yxz), _wgslsmith_mult_vec3_u32(reverseBits(u_input.a.ywy), vec3<u32>(1u, u_input.a.x, 0u)))), all(vec2<bool>(false, select(true, false, false))));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.d))) * func_4(arg_0, Struct_2(var_1.c, false, vec3<bool>(true, true, false), vec4<f32>(846f, arg_1.x, arg_1.x, arg_1.x), Struct_1(4294967295u, 1u, var_1.d, -143f)), select(u_input.a.xwy, u_input.a.yzz, vec3<bool>(false, true, false)), false).c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(323f - 1f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.c))))));
    global0 = array<vec2<f32>, 21>();
    return Struct_3(vec4<u32>(u_input.a.x, 1u >> (reverseBits(func_2(Struct_2(-316f, true, vec3<bool>(true, false, true), vec4<f32>(var_1.d, arg_1.x, 1316f, -432f), Struct_1(u_input.a.x, var_1.b, var_1.c, arg_1.x)), arg_1, vec4<f32>(221f, -271f, var_1.c, arg_1.x), var_1.b).b.b) % 32u), _wgslsmith_mult_u32(1u, u_input.a.x), ~_wgslsmith_dot_vec2_u32(u_input.a.zy, u_input.a.wy)), func_2(Struct_2(arg_1.x, true, vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 701f, -823f, arg_1.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(535f, -2113f, var_1.d, var_1.d))))), Struct_1(1u, 1u, _wgslsmith_f_op_f32(-var_1.d), 1772f)), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1258f)), _wgslsmith_f_op_f32(-arg_1.x))), 1256f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1032f, arg_1.x)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * arg_1.x), var_1.c, func_2(Struct_2(-667f, false, vec3<bool>(false, false, false), vec4<f32>(-293f, 1656f, var_1.d, -995f), Struct_1(var_1.a, 0u, 122f, 641f)), _wgslsmith_f_op_vec3_f32(max(arg_1, vec3<f32>(365f, 1414f, -273f))), _wgslsmith_div_vec4_f32(vec4<f32>(-565f, -814f, arg_1.x, -987f), vec4<f32>(var_1.c, var_1.d, arg_1.x, -511f)), 8725u).b.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-967f - arg_1.x) * var_1.c)), u_input.a.x).b, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(firstTrailingBit(vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.b, u_input.b), abs(u_input.b)), ~(-u_input.b))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1949f))), 209f) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_div_vec3_f32(vec3<f32>(-912f, 481f, 267f), vec3<f32>(-1111f, 116f, 1400f)))))), _wgslsmith_mult_i32(~(1i & _wgslsmith_mult_i32(u_input.b, u_input.b)), -u_input.b));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 1265f)), _wgslsmith_f_op_f32(ceil(1380f))));
    var_0 = func_2(Struct_2(var_0.b.c, ~u_input.a.x <= min(71117u >> (u_input.a.x % 32u), var_0.c), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), vec3<bool>(var_0.b.d >= var_0.b.d, u_input.a.x < u_input.a.x, true), !all(vec4<bool>(true, true, false, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(801f, var_1, 1517f, var_1), vec4<f32>(var_1, 179f, var_0.b.d, var_1)))), Struct_1((var_0.a.x << (30468u % 32u)) << (func_2(Struct_2(var_0.b.d, true, vec3<bool>(false, false, true), vec4<f32>(var_1, -1740f, var_0.b.c, var_1), var_0.b), vec3<f32>(-643f, -575f, var_1), vec4<f32>(1725f, -1000f, var_1, var_0.b.d), u_input.a.x).c % 32u), 3639u, _wgslsmith_f_op_f32(floor(-432f)), _wgslsmith_f_op_f32(f32(-1f) * -360f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.d), _wgslsmith_div_f32(-733f, var_0.b.d), 1000f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.c, var_0.b.c, -822f, var_0.b.c) * vec4<f32>(var_0.b.c, var_1, -642f, var_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.c, 1521f, var_0.b.c, -977f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-232f, var_1, 1266f, var_1))) + vec4<f32>(var_0.b.d, var_0.b.d, var_0.b.c, var_0.b.d)), vec4<f32>(_wgslsmith_f_op_f32(var_1 + 434f), _wgslsmith_f_op_f32(var_1 + 526f), _wgslsmith_f_op_f32(-var_0.b.c), func_2(Struct_2(var_1, true, vec3<bool>(true, true, true), vec4<f32>(var_1, -754f, var_1, -502f), var_0.b), vec3<f32>(var_1, -1187f, 1532f), vec4<f32>(var_0.b.d, var_1, var_0.b.c, 322f), var_0.c).b.c))), ~select(var_0.a.x, var_0.c, !any(vec3<bool>(true, true, false))));
    var var_2 = ~var_0.b.b;
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.d, var_0.b.d, var_0.b.c, var_0.b.d) * vec4<f32>(var_0.b.c, -151f, var_0.b.c, var_0.b.d)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.d, 483f, var_0.b.c, var_0.b.d) - vec4<f32>(-924f, -1108f, var_0.b.d, -1382f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-412f, -557f, var_0.b.c, 1269f) - vec4<f32>(1151f, 882f, -1246f, var_1)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, -1000f, 517f, 1045f), vec4<f32>(-326f, -1349f, var_1, -607f), true)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(621f, -1965f, 853f, -1037f) + vec4<f32>(-1000f, var_0.b.d, var_0.b.d, var_1))))), vec4<f32>(_wgslsmith_f_op_f32(step(486f, -1687f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.b.d + -757f), _wgslsmith_f_op_f32(1970f - var_0.b.d))))), _wgslsmith_f_op_f32(var_0.b.c + 568f), 1848f));
    let var_4 = 1u << (func_1(vec2<i32>(-51074i, firstTrailingBit(select(-1i, u_input.b, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(257f, var_1, 2457f), var_3.yzw)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1, 1000f, var_0.b.c))), var_3.yxz, vec3<bool>(true, false, false)))), select(~u_input.b, select(u_input.b, u_input.b, false) >> (_wgslsmith_dot_vec2_u32(u_input.a.ww, var_0.a.ww) % 32u), true)).c % 32u);
    let var_5 = -vec3<i32>(-1i, u_input.b, 7665i);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-17247i) >> (var_0.b.b % 32u));
}

