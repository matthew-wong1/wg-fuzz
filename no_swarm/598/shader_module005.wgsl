struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec4<f32>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3) -> i32 {
    let var_0 = _wgslsmith_clamp_i32(_wgslsmith_add_i32(11370i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(-2147483647i, u_input.a))), _wgslsmith_mult_i32(arg_1.a.b.x, reverseBits(u_input.a)), -8962i) <= 1i;
    var var_1 = Struct_1(-1652f, !(!select(vec4<bool>(true, true, var_0, var_0), !vec4<bool>(var_0, var_0, false, var_0), select(vec4<bool>(false, var_0, false, var_0), vec4<bool>(true, false, false, false), var_0))), vec3<bool>(var_0, any(!select(vec2<bool>(false, var_0), vec2<bool>(true, var_0), false)), any(vec4<bool>(any(vec3<bool>(true, true, true)), var_0, var_0, true))), _wgslsmith_div_vec3_i32(~_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-881i, -2147483647i, u_input.a), vec3<i32>(-2147483647i, u_input.a, arg_1.a.b.x)), countOneBits(vec3<i32>(arg_1.a.b.x, -48916i, 8707i))), abs(vec3<i32>(2147483647i, 17727i, u_input.a) & vec3<i32>(u_input.a, u_input.a, u_input.a))));
    var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1207f)) + var_1.a), !(!vec4<bool>(arg_1.d.x != arg_0.x, any(vec2<bool>(false, false)), !var_1.c.x, !var_1.b.x)), !select(select(select(vec3<bool>(var_0, true, var_0), vec3<bool>(false, true, true), var_1.b.x), !vec3<bool>(var_1.c.x, false, false), select(vec3<bool>(false, false, var_1.b.x), vec3<bool>(false, var_0, false), var_1.c.x)), select(!vec3<bool>(var_1.c.x, false, var_0), var_1.c, select(vec3<bool>(true, true, var_1.b.x), vec3<bool>(true, var_1.b.x, var_1.b.x), true)), !(!vec3<bool>(true, true, var_0))), ~vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(28954i, arg_1.a.b.x), var_1.d.xz), ~arg_1.a.b.x, var_1.d.x & 2147483647i) | (select(-var_1.d, _wgslsmith_div_vec3_i32(vec3<i32>(0i, -2147483647i, var_1.d.x), vec3<i32>(-59102i, arg_1.a.b.x, var_1.d.x)), any(vec3<bool>(false, var_1.c.x, var_0))) ^ _wgslsmith_mult_vec3_i32(var_1.d, var_1.d)));
    var var_2 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(932f, 356f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.c.x))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.b * var_1.a), _wgslsmith_div_f32(var_1.a, var_1.a)), -1000f)), -690f, arg_1.c.x), vec2<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.a, 13342i, var_1.d.x, -27497i), vec4<i32>(-16394i, 9280i, var_1.d.x, u_input.a) >> (vec4<u32>(1u, arg_0.x, 0u, 0u) % vec4<u32>(32u)), !vec4<bool>(var_0, false, var_1.b.x, false)), vec4<i32>(-u_input.a, -4501i, u_input.a, -2147483647i)), 36037i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(612f, arg_1.b)) + arg_1.c.x), arg_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -104f) + 816f))));
    var var_3 = arg_1.a;
    return (_wgslsmith_dot_vec2_i32(vec2<i32>(-10047i, min(37232i, -1i)), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-3448i, u_input.a), vec2<i32>(0i, u_input.a)), select(vec2<i32>(26397i, u_input.a), var_2.b, vec2<bool>(true, true)))) << (19951u % 32u)) << (~_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(arg_1.d, vec3<u32>(9511u, 0u, arg_1.d.x)), ~arg_1.d ^ arg_1.d) % 32u);
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_4 {
    return Struct_4(2147483647i, _wgslsmith_dot_vec2_u32(reverseBits(~vec2<u32>(33223u, 14649u)) & vec2<u32>(~14620u, _wgslsmith_clamp_u32(50578u, 57788u, arg_1)), _wgslsmith_mult_vec2_u32(vec2<u32>(50472u | arg_1, ~8790u), firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1, arg_1), vec2<u32>(arg_1, 46226u))))), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(832f, -189f, arg_0, arg_0) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 814f, arg_0) * vec4<f32>(1615f, arg_0, -373f, arg_0))) * vec4<f32>(-446f, _wgslsmith_div_f32(arg_0, 1000f), _wgslsmith_div_f32(346f, arg_0), arg_0)), vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -28804i, -12015i), vec3<i32>(9405i, 54702i, 1i)), 0i), u_input.a), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 2430f, -294f, arg_0) * vec4<f32>(arg_0, arg_0, -1000f, arg_0)) - vec4<f32>(609f, arg_0, -1497f, -2238f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1000f, 729f, -1056f)), func_3(vec2<u32>(0u, arg_1), Struct_3(Struct_2(vec4<f32>(arg_0, -1000f, arg_0, arg_0), vec2<i32>(-23321i, u_input.a), vec4<f32>(1195f, -610f, 382f, arg_0)), -884f, vec4<f32>(1099f, -210f, arg_0, 236f), vec3<u32>(16230u, arg_1, 34251u))) == -2147483647i))), Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -1060f, arg_0, arg_0) - vec4<f32>(433f, arg_0, -641f, 970f)))), reverseBits(vec2<i32>(u_input.a, u_input.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, -1000f, 829f, 1444f), vec4<f32>(arg_0, -432f, -1056f, -2283f))))), -1000f, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1633f, arg_0, -242f, -831f), vec4<f32>(-129f, arg_0, arg_0, 701f), false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-131f, -361f, -434f, -1755f) * vec4<f32>(-598f, arg_0, arg_0, arg_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_0, -1929f, arg_0), vec4<f32>(arg_0, 736f, arg_0, 1000f)) + _wgslsmith_div_vec4_f32(vec4<f32>(161f, -410f, 257f, -476f), vec4<f32>(arg_0, -369f, arg_0, -613f)))), abs(countOneBits(vec3<u32>(42397u, arg_1, arg_1) & vec3<u32>(arg_1, 1u, arg_1)))));
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: vec4<f32>) -> Struct_4 {
    let var_0 = select(vec4<u32>(~(~1u), 47278u, ~arg_1.b, arg_1.d.d.x & ~4294967295u), vec4<u32>(arg_1.d.d.x >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.d.d.x, 1u, 0u, 77098u), firstLeadingBit(vec4<u32>(1763u, 1u, 0u, 1u))) % 32u), arg_1.d.d.x, min(~(~arg_1.d.d.x), ~countOneBits(0u)), arg_1.b), !vec4<bool>(true, all(!arg_2.zz), arg_2.x, arg_2.x && (arg_2.x | arg_2.x)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_1.d.a.c.x, _wgslsmith_f_op_f32(-arg_3.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.x - 1509f), _wgslsmith_f_op_f32(min(arg_3.x, -230f))), !arg_2.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -428f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x + 575f)))), !select(vec4<bool>(true, arg_2.x, !arg_2.x, true), vec4<bool>(false, arg_2.x == arg_2.x, true, arg_1.d.a.b.x < -1i), !vec4<bool>(arg_2.x, true, false, true)), !(!arg_2), -vec3<i32>(9811i, ~(-38760i), ~abs(2147483647i)));
    let var_2 = func_2(563f, 4294967295u).c;
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)), var_2.a.x))), !vec4<bool>(arg_2.x, arg_2.x, true, var_1.b.x), vec3<bool>(any(select(select(arg_2.yy, vec2<bool>(false, true), true), !var_1.c.zx, 4294967295u != arg_1.b)), select(arg_2.x, select(var_1.c.x, true, true) && true, arg_2.x), !any(var_1.b.yx)), _wgslsmith_mod_vec3_i32(-reverseBits(select(var_1.d, var_1.d, true)), abs(~vec3<i32>(33488i, arg_0, arg_1.a)) << (firstTrailingBit(vec3<u32>(var_0.x, arg_1.b, arg_1.d.d.x)) % vec3<u32>(32u))));
    let var_3 = abs(vec3<i32>(firstLeadingBit(reverseBits(_wgslsmith_mod_i32(arg_0, -2147483647i))), -22355i, ~firstTrailingBit(firstLeadingBit(0i))));
    return arg_1;
}

fn func_1() -> u32 {
    let var_0 = -firstLeadingBit(~firstLeadingBit(vec3<i32>(-3722i, -16577i, u_input.a) << (vec3<u32>(1u, 4294967295u, 49764u) % vec3<u32>(32u))));
    let var_1 = !any(vec4<bool>(true, false, false, any(vec2<bool>(true, true))));
    var var_2 = func_4(27920i, func_2(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -225f)))), countOneBits(~(~18401u))), vec3<bool>(var_1, select(all(vec2<bool>(var_1, false)), true, var_1), all(vec3<bool>(any(vec2<bool>(false, var_1)), var_1, all(vec3<bool>(var_1, true, var_1))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-132f * -1721f), -987f, _wgslsmith_div_f32(-390f, -1249f), _wgslsmith_f_op_f32(2131f - -555f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-585f, 529f, -532f, 301f))), vec4<bool>(var_1, true, !var_1, false)))));
    var_2 = Struct_4(_wgslsmith_mult_i32(-20981i, -_wgslsmith_mod_i32(-u_input.a, 12686i)), abs(var_2.b << (4294967295u % 32u)), func_4(var_0.x, Struct_4(48030i, ~4294967295u, Struct_2(vec4<f32>(var_2.d.a.c.x, var_2.d.a.c.x, -129f, 933f), vec2<i32>(2147483647i, var_0.x), _wgslsmith_f_op_vec4_f32(-var_2.d.a.c)), var_2.d), !(!vec3<bool>(var_1, true, var_1)), var_2.c.c).c, Struct_3(func_2(-182f, 11100u >> (~var_2.d.d.x % 32u)).c, var_2.d.c.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-743f, var_2.c.a.x, -1136f, var_2.c.c.x))) + _wgslsmith_f_op_vec4_f32(-var_2.c.c))), ~(~(vec3<u32>(2338u, var_2.d.d.x, var_2.d.d.x) << (vec3<u32>(var_2.d.d.x, var_2.b, 6797u) % vec3<u32>(32u))))));
    var_2 = func_2(_wgslsmith_f_op_f32(-func_4(2147483647i, func_4(func_4(1i, Struct_4(u_input.a, 39931u, var_2.c, var_2.d), vec3<bool>(var_1, var_1, var_1), var_2.c.c).c.b.x, func_2(var_2.c.c.x, 92064u), !vec3<bool>(var_1, var_1, var_1), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.c.c.x, var_2.d.c.x, var_2.c.a.x, -425f), vec4<f32>(var_2.d.c.x, -308f, -867f, -566f), var_1))), vec3<bool>(select(var_1, true, false), var_1, 0i >= u_input.a), vec4<f32>(-547f, _wgslsmith_f_op_f32(-var_2.c.c.x), var_2.d.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))).c.a.x), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(func_2(_wgslsmith_f_op_f32(var_2.c.c.x * var_2.c.a.x), var_2.b ^ var_2.b).d.d, _wgslsmith_div_vec3_u32(~var_2.d.d, vec3<u32>(var_2.b, 36693u, var_2.b) ^ var_2.d.d)), _wgslsmith_mod_vec3_u32(var_2.d.d, var_2.d.d)));
    return var_2.b ^ 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_2(vec4<f32>(-396f, 1f, 481f, _wgslsmith_f_op_f32(-125f - _wgslsmith_f_op_f32(f32(-1f) * -181f))), vec2<i32>(~_wgslsmith_clamp_i32(-1i, 1i, 2147483647i), u_input.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(-143f, 1138f, _wgslsmith_f_op_f32(max(630f, -389f)), -910f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-393f, -1047f, 1100f, 603f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1196f, -1020f, 571f) * vec4<f32>(-535f, -1062f, 1326f, -1567f))))), 1174f, _wgslsmith_f_op_vec4_f32(vec4<f32>(-337f, -1091f, _wgslsmith_f_op_f32(f32(-1f) * -994f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1898f)) * _wgslsmith_f_op_f32(round(-599f)))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 967f) + -1287f), -1362f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(min(-269f, 2667f))), _wgslsmith_f_op_f32(max(-814f, 891f)))), vec3<u32>(0u, 21378u, func_1()) >> (~(~func_2(424f, 1u).d.d) % vec3<u32>(32u)));
    var var_1 = vec2<bool>(true, reverseBits(min(_wgslsmith_mult_i32(1i, -42411i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.b.x, var_0.a.b.x, u_input.a, -64334i), vec4<i32>(41613i, -31578i, -2147483647i, u_input.a)))) < -1i);
    var_1 = !vec2<bool>(true, false && var_1.x);
    let var_2 = var_0.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(min(min(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(35894u, var_2, 38155u)), vec3<u32>(var_0.d.x, var_2, 17327u)), ~_wgslsmith_mult_u32(8404u, 58102u)), 50408u));
}

