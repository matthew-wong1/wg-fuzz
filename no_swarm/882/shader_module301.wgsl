struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_4, arg_3: Struct_3) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-arg_3.c);
    var var_1 = arg_2.a;
    let var_2 = Struct_4(arg_2.a, vec2<u32>(1u, 1u));
    var var_3 = arg_2;
    var_3 = Struct_4(Struct_2(var_2.a.c, select(select(!vec2<bool>(var_3.a.c.c, true), arg_2.a.b, var_1.b), vec2<bool>(false, arg_2.a.a.c), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, arg_3.b.x, -2147483647i), u_input.a) != (51097i << (var_1.d % 32u))), Struct_1(205f, arg_2.a.c.b, var_3.a.b.x, 276f), ~(~38546u)), firstLeadingBit(abs(firstTrailingBit(_wgslsmith_sub_vec2_u32(var_2.b, vec2<u32>(var_2.b.x, 7524u))))));
    return _wgslsmith_mod_u32(~firstLeadingBit(arg_0), reverseBits(~arg_0)) ^ arg_0;
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> f32 {
    var var_0 = 19353u;
    var var_1 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(473f + 1463f) + _wgslsmith_f_op_f32(trunc(-266f))), vec2<f32>(1f, 1f), !(!arg_1.c), arg_1.d), vec2<bool>(all(!vec4<bool>(arg_1.c, false, true, true)), true), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(564f, arg_0, arg_1.c))), vec2<f32>(arg_0, _wgslsmith_f_op_f32(arg_0 * -269f)), arg_1.c & (u_input.d.x < 39980u), 777f), u_input.c.x), vec2<u32>(~30170u >> (_wgslsmith_sub_u32(func_3(39491u, false, Struct_4(Struct_2(Struct_1(2160f, vec2<f32>(-755f, arg_0), false, -569f), vec2<bool>(arg_1.c, arg_1.c), arg_1, u_input.d.x), vec2<u32>(1u, 0u)), Struct_3(vec2<f32>(236f, -743f), u_input.a, arg_0)), 1u << (u_input.b.x % 32u)) % 32u), func_3(4294967295u, arg_1.c, Struct_4(Struct_2(arg_1, vec2<bool>(true, arg_1.c), arg_1, 4294967295u), ~vec2<u32>(42927u, u_input.d.x)), Struct_3(vec2<f32>(170f, 1000f), ~vec3<i32>(1i, -1i, -2147483647i), -222f))));
    var_1 = Struct_4(Struct_2(Struct_1(425f, _wgslsmith_f_op_vec2_f32(select(arg_1.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-483f, var_1.a.c.a)), !vec2<bool>(arg_1.c, false))), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-128f * 182f) * _wgslsmith_f_op_f32(round(arg_0)))), var_1.a.b, var_1.a.c, 37918u), vec2<u32>(~_wgslsmith_clamp_u32(u_input.c.x, 0u, 0u) | ~(~var_1.a.d), 0u));
    var var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -23836i) << (u_input.c % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -5023i, u_input.a.x, 11472i), vec4<i32>(-2147483647i, -28782i, u_input.a.x, 43971i))), vec4<i32>(u_input.a.x, -10773i, -20476i, ~_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 83502i)));
    var_2 = -_wgslsmith_mult_vec4_i32(-min(vec4<i32>(var_2.x, 27344i, u_input.a.x, -27122i) >> (u_input.c % vec4<u32>(32u)), vec4<i32>(var_2.x, -8735i, var_2.x, -3981i)), _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(47559i, 10372i, u_input.a.x, u_input.a.x)), vec4<i32>(~50780i, 2147483647i, -2147483647i, 0i)));
    return _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(max(-1300f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-225f)) * _wgslsmith_f_op_f32(f32(-1f) * -800f))))));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_3(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1423f * -1000f), _wgslsmith_f_op_f32(func_2(-484f, Struct_1(142f, vec2<f32>(-1000f, -1038f), true, -1364f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -147f), _wgslsmith_f_op_f32(floor(1000f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(-1723f + -439f)))), u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(672f, 2602f)))) + -283f));
    var_0 = Struct_3(_wgslsmith_div_vec2_f32(var_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(758f, var_0.a.x)))), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.b.x, var_0.b.x, var_0.b.x), vec3<i32>(-2147483647i, var_0.b.x, -2147483647i)) ^ var_0.b, firstTrailingBit(select(vec3<i32>(var_0.b.x, 1i, u_input.a.x), vec3<i32>(var_0.b.x, var_0.b.x, -41543i), vec3<bool>(true, false, true)))) ^ u_input.a, _wgslsmith_f_op_f32(var_0.c - var_0.a.x));
    var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-465f, -482f))), vec3<i32>(~(-126i) << (u_input.d.x % 32u), 0i, _wgslsmith_dot_vec4_i32(select(-vec4<i32>(var_0.b.x, 1i, u_input.a.x, 2147483647i), -vec4<i32>(44659i, 33589i, u_input.a.x, var_0.b.x), true), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-69882i, u_input.a.x, -26496i, 0i), vec4<i32>(var_0.b.x, -40188i, -1i, -1i)), 1i | u_input.a.x, _wgslsmith_mod_i32(var_0.b.x, u_input.a.x), -var_0.b.x))), var_0.c);
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a.x)));
    var_0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-var_1), -787f), var_0.b, var_0.a.x);
    return Struct_2(Struct_1(-1063f, var_0.a, -625f == _wgslsmith_f_op_f32(var_0.a.x - var_0.c), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1 * -320f)))), !(!select(vec2<bool>(true, false), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, false), false))), Struct_1(-1365f, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_0.a * _wgslsmith_f_op_vec2_f32(vec2<f32>(944f, var_1) - vec2<f32>(var_0.c, -1381f))), var_0.a)), true, _wgslsmith_f_op_f32(trunc(1f))), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.c.zyz, u_input.c.zzy), ~u_input.c.x) & vec2<u32>(u_input.d.x, reverseBits(u_input.d.x)), ~vec2<u32>(u_input.d.x, u_input.d.x)));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec2<bool>) -> Struct_1 {
    return arg_0.c;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: vec4<u32>) -> Struct_3 {
    let var_0 = Struct_4(Struct_2(Struct_1(func_1().a.b.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(-616f, arg_0.a) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-364f, 963f) * arg_0.b)), arg_0.c, arg_0.a), func_1().b, arg_0, 1u), _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, arg_2)), min(u_input.b.zx, arg_3.wy)), ~(~vec2<u32>(1u, 1u) << (arg_3.yx % vec2<u32>(32u)))));
    let var_1 = -983f;
    let var_2 = !(!(!(!select(vec4<bool>(var_0.a.c.c, arg_0.c, true, true), vec4<bool>(arg_0.c, arg_0.c, var_0.a.a.c, false), vec4<bool>(false, false, true, false)))));
    var var_3 = Struct_4(Struct_2(var_0.a.a, !vec2<bool>(arg_0.c && var_2.x, arg_0.c | true), var_0.a.a, arg_2), ~arg_3.xy);
    var var_4 = func_1();
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(529f, -612f), vec2<f32>(-1156f, var_3.a.c.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(171f, 309f))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-arg_0.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(1230f, var_0.a.a.d) - vec2<f32>(782f, 263f)))))), countOneBits(_wgslsmith_mod_vec3_i32(min(u_input.a, u_input.a), u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -154f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.a.c.b.x))) - _wgslsmith_f_op_f32(-var_3.a.c.d))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(879f, -1000f))), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1169f)), _wgslsmith_f_op_f32(abs(-1126f))) - _wgslsmith_f_op_f32(f32(-1f) * -1378f))));
    let var_1 = 444f;
    var var_2 = func_5(func_4(func_1(), -824f, select(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_add_i32(select(0i, max(-1i, -1i & var_0.b.x), true), -1i), countOneBits(u_input.b.x) & ~u_input.c.x, vec4<u32>(~1u, _wgslsmith_mod_u32(u_input.b.x, u_input.c.x), _wgslsmith_sub_u32(~(u_input.d.x << (u_input.d.x % 32u)), ~u_input.c.x), firstTrailingBit(u_input.b.x)));
    let var_3 = ~(41396u ^ ~(~_wgslsmith_mult_u32(u_input.b.x, 1u)));
    var var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~(~(reverseBits(vec4<i32>(var_2.b.x, var_0.b.x, -26216i, var_2.b.x)) >> (vec4<u32>(20255u, 55157u, var_4.d, 3543u) % vec4<u32>(32u)))), 16430i, u_input.c.x);
}

