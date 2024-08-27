struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec3<bool>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: bool) -> bool {
    let var_0 = Struct_3(4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1266f)) + _wgslsmith_f_op_f32(floor(922f))))) * -804f), select(!(!select(vec3<bool>(arg_1, arg_0, true), vec3<bool>(true, false, false), arg_0)), vec3<bool>(true, select(any(vec2<bool>(false, arg_0)), arg_1, true), (u_input.b > u_input.b) && true), all(!select(vec3<bool>(arg_0, arg_1, false), vec3<bool>(arg_0, arg_1, true), vec3<bool>(arg_1, false, arg_1)))));
    var var_1 = vec4<i32>(2147483647i, _wgslsmith_mult_i32(u_input.b, -u_input.b), -(~47956i) << (~(~var_0.a >> (_wgslsmith_add_u32(var_0.a, var_0.a) % 32u)) % 32u), u_input.a);
    var_1 = -_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(var_1.x, u_input.a, -12746i, 15291i), -(~(vec4<i32>(var_1.x, 22567i, -1i, 1i) >> (vec4<u32>(var_0.a, 0u, 4294967295u, 19043u) % vec4<u32>(32u)))), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, var_1.x, -32929i, var_1.x), vec4<i32>(3014i, var_1.x, var_1.x, var_1.x)), ~u_input.a), 1i, abs(_wgslsmith_add_i32(var_1.x, 0i)), countOneBits(var_1.x << (1u % 32u))));
    let var_2 = var_1.zw;
    let var_3 = select(_wgslsmith_clamp_i32(select(_wgslsmith_mod_i32(var_1.x << (0u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -1i, -30843i, var_2.x), vec4<i32>(-30440i, 14894i, 27842i, var_2.x))), ~min(var_1.x, u_input.a), arg_0), u_input.b, -2147483647i), max(~(~1i), ~max(var_1.x << (var_0.a % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, -1i, u_input.b, u_input.b), vec4<i32>(57186i, -20334i, var_1.x, u_input.b)))), false);
    return arg_0;
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_1(any(!vec4<bool>(false, func_3(false, true), true, true)), countOneBits(vec3<i32>(-4842i, countOneBits(i32(-1i) * -38209i), 0i)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(176f, 151f, 703f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-487f, 576f, 365f))))), vec3<f32>(-172f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(916f + -602f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - 200f))), -1000f);
    var_0 = Struct_1(all(select(select(select(vec3<bool>(var_0.a, true, false), vec3<bool>(true, false, var_0.a), vec3<bool>(false, var_0.a, false)), select(vec3<bool>(true, var_0.a, false), vec3<bool>(true, true, var_0.a), true), -4678i >= u_input.b), !vec3<bool>(var_0.a, true, var_0.a), !select(vec3<bool>(false, var_0.a, var_0.a), vec3<bool>(true, var_0.a, var_0.a), true))), vec3<i32>(~(-2147483647i), abs(u_input.b), firstLeadingBit(var_0.b.x)) << (vec3<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), min(vec2<u32>(1u, 13904u), vec2<u32>(0u, 1u))), _wgslsmith_add_u32(reverseBits(49143u), 77041u)) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(1000f - 1304f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.c.x))), _wgslsmith_f_op_f32(-var_0.d)))), _wgslsmith_div_f32(-1899f, _wgslsmith_f_op_f32(var_0.d * _wgslsmith_f_op_f32(round(var_0.c.x)))));
    var var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(reverseBits(~(~1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(0u, 97975u), ~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(33059u, 4294967295u, 0u, 4146u), vec4<u32>(31228u, 47083u, 4294967295u, 0u))), vec3<u32>(~51025u, ~4294967295u, ~45183u)), 33515u, 17874u), vec4<u32>(~1u, ~0u, 4294967295u, 2536u));
    let var_2 = Struct_4(_wgslsmith_mod_i32(u_input.a, abs(-u_input.b)));
    var_0 = Struct_1(func_3(var_0.a, func_3(false, all(vec4<bool>(var_0.a, var_0.a, false, var_0.a)))), vec3<i32>(max(u_input.b, -49588i) >> (70368u % 32u), _wgslsmith_mod_i32(u_input.a >> (31074u % 32u), 17869i), ~(i32(-1i) * -31853i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, var_0.d, var_0.c.x)) * var_0.c) - vec3<f32>(var_0.d, _wgslsmith_f_op_f32(round(var_0.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1655f)))), _wgslsmith_f_op_f32(353f + 292f));
    return select(select(select(!select(vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(var_0.a, false, var_0.a), false), vec3<bool>(func_3(var_0.a, true), var_0.d != var_0.c.x, 19304u >= var_1.x), !select(vec3<bool>(var_0.a, false, var_0.a), vec3<bool>(var_0.a, true, true), vec3<bool>(var_0.a, false, true))), vec3<bool>(var_1.x == var_1.x, (92368u <= var_1.x) && (var_1.x >= 34539u), true), (true | var_0.a) == ((var_0.b.x <= u_input.a) & !var_0.a)), vec3<bool>(true, all(select(vec2<bool>(var_0.a, true), select(vec2<bool>(false, var_0.a), vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, var_0.a)), vec2<bool>(var_0.a, true))), var_0.a), vec3<bool>(true, var_1.x < firstTrailingBit(var_1.x), false));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_5, arg_2: u32) -> u32 {
    let var_0 = Struct_3(_wgslsmith_sub_u32(arg_0.x, ~(~27830u)), _wgslsmith_f_op_f32(1020f + 908f), func_2());
    var var_1 = Struct_3(min(4294967295u, _wgslsmith_sub_u32(var_0.a | arg_2, _wgslsmith_mult_u32(var_0.a, 1u))), -947f, vec3<bool>(false, arg_1.a.a, false));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1395f))), var_0.b)) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b + 1000f), _wgslsmith_f_op_f32(-var_1.b)))))));
    var var_3 = arg_1;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1490f * var_1.b))), _wgslsmith_f_op_f32(var_1.b - 787f)))));
    return 8605u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_add_vec4_u32(vec4<u32>(~abs(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 5923u), vec2<u32>(1u, 1u)), _wgslsmith_clamp_u32(func_1(vec2<u32>(4629u, 62269u), Struct_5(Struct_1(true, vec3<i32>(u_input.b, u_input.b, u_input.a), vec3<f32>(-271f, -1697f, 261f), -219f)), 1u), _wgslsmith_div_u32(1u, 4294967295u), _wgslsmith_mult_u32(1u, 24786u)), 38185u), vec4<u32>(_wgslsmith_sub_u32(1u, 1u), _wgslsmith_add_u32(_wgslsmith_mult_u32(17571u, 1362u), _wgslsmith_div_u32(4294967295u, 8906u)), func_1(abs(vec2<u32>(27575u, 1u)), Struct_5(Struct_1(true, vec3<i32>(u_input.a, -21976i, -2147483647i), vec3<f32>(936f, -644f, -512f), 1472f)), max(4294967295u, 12167u)), 1u));
    var var_1 = Struct_1(true, -vec3<i32>(abs(1i), max(abs(-2147483647i), 0i), -1i), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(-528f - _wgslsmith_f_op_f32(f32(-1f) * -639f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1181f)) * _wgslsmith_f_op_f32(451f * 1000f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-968f, _wgslsmith_f_op_f32(min(551f, 1336f)), _wgslsmith_f_op_f32(-791f * 1259f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -620f, -1076f) * vec3<f32>(-1574f, -469f, -900f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1414f, _wgslsmith_div_f32(-129f, -1000f), false)))));
    var var_2 = Struct_4(~(~var_1.b.x));
    let var_3 = !any(select(vec4<bool>(true, select(false, var_1.a, var_1.a), var_1.a, any(vec2<bool>(var_1.a, var_1.a))), select(!vec4<bool>(var_1.a, var_1.a, true, var_1.a), select(vec4<bool>(true, var_1.a, false, false), vec4<bool>(true, var_1.a, var_1.a, false), vec4<bool>(true, var_1.a, false, var_1.a)), any(vec3<bool>(false, false, false))), vec4<bool>(true, true, true, true)));
    var var_4 = Struct_1(!var_3, _wgslsmith_mod_vec3_i32(var_1.b, vec3<i32>(u_input.b ^ _wgslsmith_dot_vec3_i32(var_1.b, vec3<i32>(u_input.a, var_1.b.x, var_1.b.x)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, u_input.a, var_2.a), vec4<i32>(var_1.b.x, var_2.a, 0i, var_1.b.x)), min(~var_1.b.x, firstTrailingBit(-56344i)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(var_1.c, var_1.c), var_1.c)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.c.x, -353f, var_1.c.x), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-112f, var_1.c.x, 538f), var_1.c)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.d - 1124f))));
    var_2 = Struct_4(1i);
    var_4 = Struct_1(false, _wgslsmith_mod_vec3_i32(vec3<i32>(reverseBits(reverseBits(u_input.a)), firstTrailingBit(2991i), _wgslsmith_div_i32(2147483647i, var_4.b.x)), var_1.b), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(abs(var_1.d)), _wgslsmith_div_f32(-106f, _wgslsmith_f_op_f32(abs(-208f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.d), 862f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.d - 1000f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d) - _wgslsmith_f_op_f32(f32(-1f) * -548f)))));
    var var_5 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2056f, _wgslsmith_f_op_f32(floor(-273f))))) > var_1.c.x, any(vec2<bool>(select(var_1.a, true, false), var_1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(min(min(~var_0.wwy, ~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, var_0.x, 0u), vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(1231u, var_0.x, 3249u))), abs(~var_0.ywy)), ~(_wgslsmith_sub_vec3_i32(var_4.b, vec3<i32>(0i, 0i, var_2.a)) & _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-27306i, 8897i, 185i), vec3<i32>(-34024i, var_2.a, var_2.a)), var_4.b)), 9103i, ~var_0.ywz, _wgslsmith_mult_vec2_u32(var_0.yz, var_0.zy));
}

