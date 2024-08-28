struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec3<u32>,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: Struct_1,
    d: bool,
    e: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
    c: bool,
}

struct Struct_5 {
    a: vec2<i32>,
    b: u32,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: vec2<f32>) -> vec3<u32> {
    let var_0 = ~min(_wgslsmith_sub_vec4_i32(-firstLeadingBit(vec4<i32>(-76279i, 0i, -1i, 32066i)), vec4<i32>(_wgslsmith_mod_i32(-2147483647i, 7822i), ~(-2147483647i), _wgslsmith_div_i32(-1i, 2147483647i), 0i)), vec4<i32>(-11567i, _wgslsmith_clamp_i32(-19348i, _wgslsmith_clamp_i32(37353i, 5400i, -18458i), _wgslsmith_add_i32(34218i, -1476i)), firstTrailingBit(i32(-1i) * -1i), i32(-1i) * -2147483647i));
    var var_1 = _wgslsmith_f_op_f32(sign(-455f));
    var var_2 = ~(~max(firstLeadingBit(vec3<u32>(25972u, u_input.a.x, u_input.a.x)) >> (abs(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) % vec3<u32>(32u)), abs(vec3<u32>(65656u, 4294967295u, u_input.a.x))));
    var var_3 = arg_0.x;
    var var_4 = -1i;
    return u_input.a;
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: vec4<bool>, arg_3: vec3<f32>) -> Struct_2 {
    var var_0 = Struct_3(vec3<u32>(~4294967295u, 50527u << (1u % 32u), min(~(~42347u), u_input.a.x)), select(u_input.a, ~max(u_input.a, vec3<u32>(u_input.a.x, 58961u, 23399u)) & ~(~vec3<u32>(u_input.a.x, 0u, 56778u)), true), Struct_1(arg_2.zw, vec3<bool>(arg_2.x, true, !arg_2.x), select(u_input.a, _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 1u, 4294967295u), vec3<u32>(u_input.a.x, arg_1.x, arg_1.x), vec3<u32>(u_input.a.x, 23884u, u_input.a.x)), select(vec3<bool>(arg_2.x, arg_2.x, arg_2.x), vec3<bool>(arg_2.x, arg_2.x, false), vec3<bool>(false, true, true))) >> (_wgslsmith_add_vec3_u32(u_input.a, func_3(vec4<f32>(936f, 1489f, arg_3.x, arg_3.x), false, arg_3.zy)) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 317f, arg_0) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -365f, arg_3.x) * arg_3)) + _wgslsmith_div_vec3_f32(arg_3, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.x, 626f, -206f) * arg_3))), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i))), false, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0)), arg_0), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_f32(sign(-116f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -388f) * _wgslsmith_f_op_f32(-171f * _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(859f, arg_0)), _wgslsmith_f_op_f32(arg_3.x + -1004f)))));
    var var_1 = _wgslsmith_mod_i32(-38387i, select(56719i, _wgslsmith_clamp_i32(max(countOneBits(-1145i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.e.x, -28192i, -1i, 8652i), vec4<i32>(25233i, var_0.c.e.x, 0i, var_0.c.e.x))), -54580i, _wgslsmith_mod_i32(var_0.c.e.x, firstLeadingBit(57040i))), select(arg_2.x, var_0.d, true)));
    var var_2 = abs(reverseBits(abs(-32705i)));
    var var_3 = Struct_5(vec2<i32>(firstTrailingBit(-2147483647i) | var_0.c.e.x, -2147483647i), ~(~(~(~var_0.b.x))), Struct_3(max(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 0u, arg_1.x), vec3<u32>(48083u, var_0.b.x, 1u)), vec3<u32>(44775u, u_input.a.x, 8541u), firstLeadingBit(u_input.a)), ~vec3<u32>(4294967295u, u_input.a.x, 0u) ^ countOneBits(vec3<u32>(u_input.a.x, arg_1.x, 4294967295u))), _wgslsmith_add_vec3_u32(select(max(vec3<u32>(arg_1.x, 0u, u_input.a.x), var_0.a), select(vec3<u32>(var_0.a.x, var_0.b.x, 0u), vec3<u32>(arg_1.x, var_0.c.c.x, var_0.c.c.x), var_0.d), var_0.d), firstLeadingBit(var_0.a)), Struct_1(vec2<bool>(true, select(var_0.c.a.x, arg_2.x, arg_2.x)), var_0.c.b, ~max(u_input.a, u_input.a), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(arg_3, vec3<f32>(arg_3.x, 374f, arg_3.x)))), ~abs(var_0.c.e)), any(var_0.c.b), var_0.e), var_0.c.e.x);
    var var_4 = !select(!(!arg_2.xw), vec2<bool>(any(vec3<bool>(var_0.d, true, var_3.c.c.b.x)), -191f <= _wgslsmith_div_f32(var_0.c.d.x, arg_3.x)), select(var_3.c.c.a, vec2<bool>(3166u != var_3.b, var_3.c.d), vec2<bool>(true, true)));
    return Struct_2(var_3.c.c, _wgslsmith_f_op_f32(-var_3.c.c.d.x), var_0.c);
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> u32 {
    var var_0 = ~(~vec2<u32>(_wgslsmith_div_u32(37228u, max(arg_0.a.c.x, u_input.a.x)), ~u_input.a.x >> (29095u % 32u)));
    let var_1 = firstLeadingBit(vec2<u32>(~43980u, 80908u));
    let var_2 = all(!vec4<bool>(any(!vec2<bool>(false, arg_1)), arg_0.a.a.x, arg_1, select(-1107f <= arg_0.c.d.x, any(arg_0.c.b), true)));
    let var_3 = arg_0.c;
    var_0 = var_1;
    return select(arg_0.c.c.x, max(~var_1.x, abs(var_3.c.x | var_0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.d.x, -168f))))) >= var_3.d.x);
}

fn func_1() -> Struct_2 {
    var var_0 = -1i;
    let var_1 = abs(~vec2<u32>(1u & u_input.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 21637u, 1u, 0u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), ~vec4<u32>(20794u, u_input.a.x, 34938u, 67606u))));
    var_0 = select(-(0i >> ((4294967295u | firstTrailingBit(u_input.a.x)) % 32u)), ~(~(i32(-1i) * -40315i)), true);
    let var_2 = vec2<u32>(~func_4(func_2(1492f, ~var_1, vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(-653f, -640f, 1131f) * vec3<f32>(-524f, -1161f, 1000f))), false), 4294967295u);
    let var_3 = Struct_3(u_input.a, ~(~_wgslsmith_add_vec3_u32(~u_input.a, ~vec3<u32>(u_input.a.x, 4294967295u, var_2.x))), func_2(1f, ~(~(~var_1)), vec4<bool>(true, !(var_2.x <= var_1.x), true, true), vec3<f32>(_wgslsmith_f_op_f32(1152f * _wgslsmith_div_f32(-662f, 1737f)), 154f, 1000f)).a, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1371f)), min(u_input.a.zz, _wgslsmith_clamp_vec2_u32(u_input.a.zx, vec2<u32>(0u, 93535u), var_1)), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -1111f, -354f), vec3<f32>(413f, -1000f, -1019f), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true))))).c.a.x && true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -424f, -432f, 1162f), _wgslsmith_f_op_vec4_f32(vec4<f32>(837f, -167f, 506f, 295f) + vec4<f32>(-431f, 1899f, 170f, 144f)))) + vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -210f), _wgslsmith_f_op_f32(min(-139f, -657f)))), _wgslsmith_f_op_f32(f32(-1f) * -1602f), 1440f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-780f, -1022f))))));
    return func_2(322f, ~(~vec2<u32>(select(33613u, var_3.b.x, true), 0u)), vec4<bool>(var_3.c.a.x | (var_3.c.b.x || true), var_3.c.a.x, true, !any(select(vec4<bool>(var_3.c.a.x, var_3.c.a.x, var_3.c.b.x, true), vec4<bool>(var_3.d, var_3.d, var_3.c.b.x, true), vec4<bool>(var_3.d, var_3.c.b.x, false, var_3.d)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.e.x, 309f, var_3.e.x) * var_3.c.d), _wgslsmith_f_op_vec3_f32(var_3.e.wzw - vec3<f32>(var_3.c.d.x, var_3.c.d.x, var_3.c.d.x)), any(vec2<bool>(true, true))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = ~u_input.a.x;
    var var_2 = !func_2(_wgslsmith_f_op_f32(-var_0.b), vec2<u32>(u_input.a.x, 28986u), vec4<bool>(true, max(var_0.a.e.x, var_0.c.e.x) != (var_0.c.e.x << (var_1 % 32u)), true, func_2(-336f, u_input.a.zz, select(vec4<bool>(true, true, var_0.a.b.x, var_0.a.b.x), vec4<bool>(true, false, var_0.c.a.x, var_0.a.a.x), vec4<bool>(true, true, false, var_0.a.b.x)), _wgslsmith_f_op_vec3_f32(-var_0.c.d)).a.b.x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.d.x, var_0.c.d.x, -520f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 494f, 1550f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -2005f, -1000f) - var_0.a.d), !vec3<bool>(false, var_0.c.a.x, var_0.a.a.x)))))).c.b.x;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1065f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-202f + -1818f) - _wgslsmith_f_op_f32(min(var_0.c.d.x, var_0.c.d.x)))), 1000f)), var_0.a.d.x);
    let var_4 = ~firstLeadingBit(~var_0.a.c.yx ^ u_input.a.zy) ^ var_0.c.c.yx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(var_0.c.d.x)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(var_0.a.e.x, ~(-66954i)), -1i), -30667i);
}

