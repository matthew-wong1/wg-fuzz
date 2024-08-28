struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: bool,
    e: bool,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: f32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> i32 {
    let var_0 = select(vec2<bool>(_wgslsmith_sub_i32(abs(u_input.a.x), firstLeadingBit(36254i)) >= u_input.b, true), vec2<bool>(all(vec2<bool>(false, false)) && select(false, true, true), true), false);
    var var_1 = Struct_2(-1000f, Struct_1(1u, firstTrailingBit(~max(67028u, 4294967295u)), vec3<i32>(-(~u_input.a.x), -20689i, ~_wgslsmith_clamp_i32(-24088i, u_input.a.x, 7583i)), var_0.x, -reverseBits(-5116i)), Struct_1(~_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(48567u, 42195u, 1u)), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 16548u, 64512u), vec3<u32>(4294967295u, 1u, 38064u))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, 1u, 1u)), vec3<i32>(~u_input.b, 0i, 0i), all(var_0), _wgslsmith_div_i32(_wgslsmith_clamp_i32(-u_input.b, 1i, countOneBits(u_input.a.x)), reverseBits(-u_input.a.x))), ~48019u);
    var_1 = Struct_2(_wgslsmith_div_f32(1f, var_1.a), var_1.b, Struct_1(var_1.c.b, ~_wgslsmith_dot_vec2_u32(select(vec2<u32>(0u, 16420u), vec2<u32>(var_1.d, 73183u), false), vec2<u32>(var_1.d, var_1.b.a)), vec3<i32>(_wgslsmith_div_i32(19624i, -u_input.b), 2147483647i & var_1.b.e, _wgslsmith_mod_i32(-23417i, abs(48855i))), all(select(vec4<bool>(false, true, var_1.c.d, var_1.b.d), !vec4<bool>(var_1.c.d, var_0.x, var_0.x, false), select(vec4<bool>(var_0.x, var_1.b.d, var_0.x, true), vec4<bool>(false, var_1.c.d, true, true), vec4<bool>(false, false, true, true)))), min(-7791i, min(2611i, -12364i))), var_1.b.b);
    var var_2 = i32(-1i) * -2147483647i;
    let var_3 = ~vec2<i32>(~_wgslsmith_sub_i32(_wgslsmith_mod_i32(-3366i, 3609i), ~2147483647i), _wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.b, 1i), vec3<i32>(23338i, -58025i, u_input.a.x)), -_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.a.x, u_input.b), var_1.b.c)));
    return _wgslsmith_dot_vec4_i32(select(-vec4<i32>(-1i, u_input.b, ~2147483647i, var_3.x), select(-vec4<i32>(29691i, 31019i, var_3.x, var_3.x) ^ ~vec4<i32>(-2147483647i, 0i, 6682i, -1i), vec4<i32>(7107i, min(u_input.b, var_3.x), -u_input.b, 2147483647i), var_1.c.d), vec4<bool>(var_1.c.d, -468f <= _wgslsmith_f_op_f32(select(-841f, -275f, var_1.c.d)), !(false || var_0.x), true)), ~(~_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(var_1.c.e, 1i, u_input.b, -46251i)), abs(vec4<i32>(-1i, -1i, u_input.b, u_input.b)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: u32, arg_3: vec2<u32>) -> f32 {
    var var_0 = Struct_2(-997f, arg_0, Struct_1(~arg_0.a, ~(~0u) | arg_0.b, ~vec3<i32>(func_3(), u_input.b, 8293i), arg_0.d, _wgslsmith_mod_i32(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 0i) << (vec2<u32>(0u, 1u) % vec2<u32>(32u)), u_input.a))), ~(abs(~arg_2) << ((_wgslsmith_sub_u32(6538u, arg_3.x) >> (~0u % 32u)) % 32u)));
    let var_1 = Struct_1(_wgslsmith_dot_vec4_u32(select(firstLeadingBit(vec4<u32>(0u, 36179u, var_0.d, arg_2)), vec4<u32>(~1u, ~arg_0.a, var_0.d, 74138u), false), abs(select(min(vec4<u32>(arg_0.b, arg_0.a, arg_2, 22419u), vec4<u32>(var_0.c.b, arg_2, arg_0.a, 1u)), vec4<u32>(arg_2, arg_3.x, 0u, arg_3.x), select(vec4<bool>(arg_0.d, var_0.b.d, true, var_0.b.d), vec4<bool>(false, var_0.c.d, var_0.c.d, true), var_0.c.d)))), arg_0.a, var_0.c.c, select(any(!select(vec4<bool>(var_0.b.d, false, false, var_0.c.d), vec4<bool>(var_0.c.d, false, true, false), arg_0.d)), arg_0.d, select(select(var_0.b.d, all(vec3<bool>(arg_0.d, var_0.b.d, false)), arg_1.x < var_0.a), !all(vec3<bool>(var_0.b.d, true, arg_0.d)), arg_0.d)), _wgslsmith_div_i32(-_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.c.x, u_input.b), vec2<i32>(var_0.b.c.x, 0i)), u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(64446i, u_input.a.x), u_input.a)), countOneBits(-u_input.b)));
    var var_2 = Struct_1(~select(5286u, 1u, !var_1.d && !var_0.b.d), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(arg_2, arg_3.x, arg_0.a, arg_0.a), vec4<u32>(var_0.d, var_1.b, var_0.c.b, arg_2), vec4<bool>(var_1.d, var_0.b.d, arg_0.d, var_1.d)), min(vec4<u32>(var_1.a, 92547u, 1u, 26562u), vec4<u32>(var_1.b, arg_0.b, 816u, var_0.b.b)) & ~vec4<u32>(36953u, arg_2, 0u, var_0.d)), abs(arg_2)), ~max(-select(vec3<i32>(var_0.b.e, 12224i, 44604i), vec3<i32>(u_input.b, 2147483647i, 17884i), vec3<bool>(arg_0.d, var_0.b.d, arg_0.d)), -_wgslsmith_add_vec3_i32(vec3<i32>(var_0.b.e, 25408i, 11395i), arg_0.c)), var_0.b.b <= 0u, 16582i);
    let var_3 = true;
    var_2 = var_1;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -116f);
}

fn func_1() -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-831f, -1000f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(186f, 2313f) - vec2<f32>(-1037f, -437f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-101f, 338f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, -105f))))) + vec2<f32>(-394f, _wgslsmith_f_op_f32(f32(-1f) * -534f)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1551f)) - 1312f), _wgslsmith_f_op_f32(select(-1711f, _wgslsmith_div_f32(-369f, -831f), true))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-524f, -911f)), vec2<f32>(1127f, -1592f)))))));
    let var_1 = -883f;
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1940f))) + vec2<f32>(-504f, _wgslsmith_div_f32(-417f, _wgslsmith_f_op_f32(func_2(Struct_1(58399u, 0u, vec3<i32>(u_input.a.x, u_input.a.x, -49134i), true, u_input.a.x), vec3<f32>(var_0.x, -1665f, -593f), 26846u, vec2<u32>(49781u, 0u)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1f), 463f)));
    let var_3 = Struct_1(4294967295u, firstLeadingBit(abs(_wgslsmith_mult_u32(~1351u, 0u))), abs(vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 2147483647i, -18877i), vec3<i32>(u_input.b, 1i, 2147483647i))), true, 1i);
    let var_4 = -59103i;
    return Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1))), var_1, var_2.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_2.x, var_0.x)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1430f, -978f, -510f, 540f) + vec4<f32>(var_2.x, -1273f, var_2.x, -224f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_0.x, -178f, -1000f)), !vec4<bool>(true, var_3.d, false, true))), vec4<f32>(var_2.x, var_0.x, 587f, _wgslsmith_f_op_f32(trunc(-153f)))))), 13619i, _wgslsmith_sub_u32(var_3.b, ~(max(2695u, 4294967295u) ^ select(var_3.b, var_3.a, var_3.d))), var_2.x, _wgslsmith_mod_vec3_u32(vec3<u32>(reverseBits(39923u), var_3.b, _wgslsmith_div_u32(11368u << (var_3.a % 32u), ~8938u)), _wgslsmith_add_vec3_u32(~vec3<u32>(var_3.b, var_3.b, var_3.a), ~vec3<u32>(1u, 1u, var_3.b)) & (select(vec3<u32>(var_3.a, var_3.a, 66646u), vec3<u32>(var_3.b, var_3.a, var_3.a), false) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(0u, var_3.a, var_3.a), vec3<u32>(var_3.b, 44786u, var_3.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!(!(u_input.b <= u_input.a.x))));
    var var_1 = func_1();
    var var_2 = Struct_1(select(~var_1.e.x, var_1.e.x, any(select(!vec4<bool>(true, var_0, true, var_0), vec4<bool>(var_0, var_0, true, false), any(vec3<bool>(var_0, var_0, false))))), ~min(firstLeadingBit(~78001u), _wgslsmith_mult_u32(~0u, _wgslsmith_sub_u32(1u, 0u))), min(abs(vec3<i32>(-2257i, -1i, 18888i)), vec3<i32>(-(~u_input.a.x), max(u_input.a.x, u_input.a.x << (var_1.c % 32u)), ~(~u_input.a.x))), var_0, 52322i);
    let var_3 = Struct_1(26582u, 25172u, var_2.c, true, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(var_1.b, -2147483647i), vec2<i32>(var_2.e, var_1.b)), vec2<i32>(-1i) * -vec2<i32>(u_input.a.x, 0i)), reverseBits(~_wgslsmith_add_vec2_i32(u_input.a, vec2<i32>(25240i, var_1.b)))));
    let var_4 = vec4<u32>(var_1.e.x, ~abs(~(~0u)), countOneBits(0u & ~_wgslsmith_dot_vec4_u32(vec4<u32>(53225u, 30161u, 85881u, 0u), vec4<u32>(var_1.e.x, 4294967295u, var_3.b, 1u))), var_3.a);
    var var_5 = all(select(!select(vec2<bool>(false, var_2.d), select(vec2<bool>(var_0, var_3.d), vec2<bool>(var_3.d, var_2.d), vec2<bool>(true, var_0)), var_3.d), !select(!vec2<bool>(var_2.d, true), vec2<bool>(var_0, var_3.d), false), select(!vec2<bool>(var_2.d, true), !(!vec2<bool>(var_2.d, var_3.d)), var_0)));
    let var_6 = select(false, all(vec3<bool>(all(!vec3<bool>(var_3.d, var_3.d, true)), true, true)), var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(var_4.x, var_2.b, var_4.x, 77941u)), _wgslsmith_mult_vec4_u32(var_4 >> (~var_4 % vec4<u32>(32u)), vec4<u32>(56545u, _wgslsmith_mult_u32(0u, var_3.a), 23989u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.e.x, var_3.b, var_1.c), var_4.wxy)))), u_input.b, ~46155u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(219f, _wgslsmith_f_op_f32(-var_1.a.x))), var_1.d));
}

