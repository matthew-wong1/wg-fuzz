struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec2<u32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = u_input.b.x;
    var var_1 = _wgslsmith_add_i32(_wgslsmith_clamp_i32(abs(17370i), -23996i, _wgslsmith_dot_vec2_i32(select(vec2<i32>(0i, u_input.a.x), vec2<i32>(-1028i, -26407i), arg_0.a), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, 1i), arg_1))) ^ -_wgslsmith_mult_i32(~arg_1.x, arg_1.x), i32(-1i) * -_wgslsmith_sub_i32(-arg_1.x, arg_1.x >> (1u % 32u)));
    let var_2 = vec3<i32>(u_input.b.x | u_input.a.x, -2147483647i & ~abs(_wgslsmith_mult_i32(-2147483647i, arg_1.x)), _wgslsmith_mult_i32(~arg_1.x, countOneBits(~(-1i))));
    var var_3 = arg_0;
    let var_4 = Struct_1(arg_3.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.b - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_3.b))))), firstLeadingBit(~_wgslsmith_mod_vec2_u32(~vec2<u32>(arg_3.c.x, 1u), ~arg_3.c)), ~(u_input.c.x << (1666u % 32u)));
    return _wgslsmith_f_op_vec2_f32(arg_0.b - arg_3.b);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    global0 = select(vec2<bool>(all(select(vec3<bool>(arg_0.a, true, arg_0.a), vec3<bool>(arg_1.a, false, false), vec3<bool>(false, global0.x, true))) && arg_0.a, global0.x), !select(vec2<bool>(arg_1.a != true, true), select(select(vec2<bool>(true, global0.x), vec2<bool>(arg_0.a, true), vec2<bool>(false, arg_1.a)), vec2<bool>(true, arg_1.a), select(vec2<bool>(true, arg_1.a), vec2<bool>(arg_0.a, false), false)), !(true || global0.x)), !select(select(!vec2<bool>(arg_1.a, global0.x), vec2<bool>(true, false), global0.x), vec2<bool>(any(vec2<bool>(global0.x, arg_0.a)), true), any(!vec4<bool>(arg_1.a, false, arg_0.a, arg_0.a))));
    global0 = !select(vec2<bool>(false, true), vec2<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c.x, arg_0.d, 4294967295u, arg_0.d), vec4<u32>(arg_1.d, arg_1.c.x, u_input.c.x, arg_1.d)) < countOneBits(5712u), arg_1.a | (u_input.a.x > u_input.b.x)), vec2<bool>(true, all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, arg_0.a, arg_1.a), true))));
    let var_0 = Struct_1(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.b)) + vec2<f32>(429f, _wgslsmith_f_op_f32(-525f - -157f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-659f, arg_1.b.x))))), vec2<u32>(select(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.c.x, arg_1.d), ~vec2<u32>(1u, 4294967295u)), 4294967295u, any(!vec4<bool>(global0.x, false, false, true))), ~firstLeadingBit(arg_0.d >> (u_input.c.x % 32u))), 0u);
    global0 = !select(vec2<bool>(true, global0.x), vec2<bool>(true, any(select(vec3<bool>(var_0.a, arg_0.a, true), vec3<bool>(var_0.a, global0.x, false), vec3<bool>(false, false, arg_0.a)))), vec2<bool>(arg_1.d != (5148u << (u_input.c.x % 32u)), all(select(vec4<bool>(global0.x, var_0.a, false, false), vec4<bool>(arg_1.a, var_0.a, arg_1.a, false), vec4<bool>(var_0.a, arg_1.a, var_0.a, true)))));
    let var_1 = Struct_1(true, arg_0.b, firstLeadingBit(_wgslsmith_add_vec2_u32(abs(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 17162u), vec2<u32>(arg_0.c.x, 76680u))), abs(select(u_input.c, vec2<u32>(47734u, arg_1.c.x), global0.x)))), reverseBits(1u));
    return _wgslsmith_mod_i32(u_input.a.x, _wgslsmith_div_i32(~(~2147483647i), -30998i)) >= -2147483647i;
}

fn func_2() -> Struct_1 {
    global0 = vec2<bool>(true, global0.x);
    let var_0 = -u_input.b.x;
    global0 = vec2<bool>(func_4(Struct_1(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(global0.x, vec2<f32>(1434f, 591f), vec2<u32>(0u, u_input.c.x), u_input.c.x), vec2<i32>(-47590i, -2147483647i), vec3<u32>(u_input.c.x, 5192u, u_input.c.x), Struct_1(global0.x, vec2<f32>(1204f, 477f), u_input.c, u_input.c.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(475f, -294f))), u_input.c, 28899u), Struct_1(any(!vec2<bool>(global0.x, true)), vec2<f32>(_wgslsmith_f_op_f32(-1139f + 2612f), _wgslsmith_f_op_f32(f32(-1f) * -366f)), vec2<u32>(~u_input.c.x, 0u), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(48574u, 135812u, u_input.c.x, u_input.c.x), vec4<u32>(323u, u_input.c.x, u_input.c.x, 11124u))))), func_4(Struct_1(any(vec3<bool>(true, true, global0.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 801f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-375f, -920f), vec2<f32>(-150f, 895f))), true | global0.x)), abs(~u_input.c), 1u), Struct_1(all(vec3<bool>(false, false, false)) || all(vec4<bool>(true, global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(958f, -228f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1356f, -1247f))), _wgslsmith_add_vec2_u32(~u_input.c, vec2<u32>(0u, u_input.c.x)), _wgslsmith_sub_u32(u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(68019u, 4294967295u, 0u), vec3<u32>(4294967295u, u_input.c.x, u_input.c.x))))));
    var var_1 = Struct_1(!any(vec3<bool>(u_input.c.x >= u_input.c.x, global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1421f, -2321f) * vec2<f32>(-1000f, 1237f)), vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-419f, 835f), vec2<f32>(-1556f, 1012f), vec2<bool>(true, global0.x))))))), ~_wgslsmith_div_vec2_u32(u_input.c, abs(min(vec2<u32>(1u, 1u), u_input.c))), ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, ~0u), u_input.c.x));
    var var_2 = var_0 <= ~reverseBits(-_wgslsmith_dot_vec2_i32(u_input.b.wx, vec2<i32>(-50435i, 21782i)));
    return Struct_1(!(!func_4(Struct_1(var_1.a, var_1.b, var_1.c, u_input.c.x), Struct_1(true, var_1.b, vec2<u32>(var_1.d, 11989u), u_input.c.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.b, vec2<f32>(var_1.b.x, var_1.b.x)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.b.x, 139f), var_1.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.b.x, -695f))) + _wgslsmith_f_op_vec2_f32(-var_1.b)), vec2<bool>(!var_1.a, true)))), abs(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(11446u, 38950u), u_input.c), vec2<u32>(_wgslsmith_clamp_u32(21014u, var_1.d, 4785u), 1u))), var_1.c.x);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(func_4(Struct_1(false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(arg_0, u_input.a.zy, vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), arg_0)) + arg_2.b), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.d, 0u), arg_0.c), _wgslsmith_div_vec2_u32(u_input.c, vec2<u32>(0u, arg_0.c.x))), _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.c.x, 18608u), abs(u_input.c.x))), arg_0), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-166f)), 1769f) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_0.b)))), arg_1.b)), u_input.c, _wgslsmith_add_u32(~17626u, ~abs(u_input.c.x)) & ~(_wgslsmith_dot_vec4_u32(vec4<u32>(25980u, 39691u, arg_0.c.x, arg_0.d), vec4<u32>(8902u, arg_0.c.x, 1u, 1u)) | arg_0.d));
    let var_1 = u_input.b.x;
    let var_2 = func_2();
    var var_3 = arg_1;
    let var_4 = ~(4294967295u << ((~reverseBits(u_input.c.x) >> (_wgslsmith_sub_u32(~1u, var_0.d) % 32u)) % 32u));
    return Struct_1(!arg_1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(arg_2.b)) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(589f, arg_1.b.x)), _wgslsmith_f_op_vec2_f32(-var_3.b))), _wgslsmith_f_op_vec2_f32(func_3(func_2(), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, 21392i), u_input.a.wy), ~vec3<u32>(u_input.c.x, var_3.d, 1u), arg_2))))), var_2.c, 0u);
}

fn func_1(arg_0: vec2<i32>, arg_1: bool) -> vec2<bool> {
    let var_0 = func_5(func_2(), Struct_1(arg_1, vec2<f32>(1f, 1f), abs(firstTrailingBit(vec2<u32>(13375u, u_input.c.x))), 23449u), Struct_1(true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-547f, 2045f) - vec2<f32>(1412f, -1130f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(447f, 414f) - vec2<f32>(1652f, 966f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-746f, 1043f)))), ~(~u_input.c), _wgslsmith_div_u32(u_input.c.x, ~_wgslsmith_div_u32(49867u, 33131u))));
    let var_1 = var_0.b.x;
    var var_2 = var_0;
    global0 = !(!select(select(vec2<bool>(arg_1, true), vec2<bool>(var_0.a, arg_1), !vec2<bool>(global0.x, arg_1)), vec2<bool>(true, true), select(select(vec2<bool>(true, global0.x), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, true), true)));
    var var_3 = arg_0.x;
    return select(vec2<bool>(_wgslsmith_sub_i32(~(-16109i), _wgslsmith_dot_vec3_i32(u_input.b.ywy, u_input.a.xzy)) == arg_0.x, var_0.a), select(vec2<bool>(true, true), vec2<bool>(global0.x, var_2.a), select(select(vec2<bool>(false, arg_1), vec2<bool>(true, true), vec2<bool>(var_0.a, var_0.a)), vec2<bool>(true, true), !vec2<bool>(global0.x, var_0.a))), !vec2<bool>(global0.x, all(!vec4<bool>(false, var_0.a, arg_1, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !func_1(vec2<i32>(-1i) * -(~u_input.b.wy), 343f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1661f)) * _wgslsmith_f_op_f32(sign(356f))));
    let var_0 = func_5(Struct_1(false, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(max(-191f, 1009f)), 308f))), ~vec2<u32>(4294967295u, 127153u << (u_input.c.x % 32u)), u_input.c.x), Struct_1(!(func_1(vec2<i32>(u_input.b.x, u_input.a.x), true).x && (global0.x && false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-749f, -543f) + vec2<f32>(1000f, -700f)))), u_input.c, _wgslsmith_add_u32(u_input.c.x, 64067u) | (_wgslsmith_mult_u32(u_input.c.x, u_input.c.x) >> (u_input.c.x % 32u))), func_5(func_5(Struct_1(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1493f, -173f)), vec2<u32>(u_input.c.x, 0u), u_input.c.x), func_2(), Struct_1(false, _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1410f) + vec2<f32>(1469f, -1209f)), ~u_input.c, ~89434u)), func_2(), Struct_1(firstTrailingBit(-2147483647i) <= 2147483647i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(172f, -1714f)), u_input.c, 4294967295u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.b.x, -444f)))) * _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(-var_0.b.x))));
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b.x, 414f, var_0.b.x), vec3<f32>(401f, -1000f, -578f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-407f * 805f)), 1f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(var_0.b.x + -798f))))));
    global0 = vec2<bool>(var_0.a, global0.x);
    var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(683f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1084f + var_0.b.x) + var_2.x), var_0.b.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_0.b.x, _wgslsmith_f_op_f32(round(var_2.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_0.b.x, var_2.x)))))));
    var_1 = _wgslsmith_f_op_f32(-var_0.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(min(783f, var_2.x))), 2118f, _wgslsmith_f_op_f32(abs(973f)), _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.x - 1000f))))));
}

