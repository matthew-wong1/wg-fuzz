struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>) -> vec2<bool> {
    let var_0 = Struct_3(Struct_1(true, vec3<bool>(true, false, true)), Struct_1(true, vec3<bool>(true, true, false)), Struct_1(!(2147483647i <= arg_0.x) | false, vec3<bool>(any(vec3<bool>(true, false, false)) & true, true, !all(vec3<bool>(false, false, false)))), Struct_1(true, !vec3<bool>(all(vec2<bool>(true, false)), true, any(vec2<bool>(false, true)))));
    var var_1 = _wgslsmith_clamp_u32(u_input.b.x, ~(u_input.a.x >> (_wgslsmith_mod_u32(4294967295u, 44816u) % 32u)), 4u);
    let var_2 = !(!all(var_0.d.b));
    var var_3 = 1000f;
    return select(vec2<bool>(32165i <= arg_0.x, false), vec2<bool>(true, true), any(var_0.d.b.yy));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: vec2<bool>) -> f32 {
    let var_0 = -_wgslsmith_mult_i32(~_wgslsmith_mod_i32(1i, 9967i) >> (_wgslsmith_clamp_u32(~u_input.a.x, u_input.b.x, _wgslsmith_clamp_u32(1u, u_input.b.x, 82756u)) % 32u), 3745i);
    var var_1 = Struct_4(~(firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(1i, var_0), vec2<i32>(5395i, var_0))) & _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(var_0, 0i)), -vec2<i32>(var_0, 5308i), firstLeadingBit(vec2<i32>(var_0, -17310i)))), 4294967295u, _wgslsmith_mod_vec2_i32(abs(firstTrailingBit(~vec2<i32>(var_0, -12669i))), vec2<i32>(~1i, -1i)), Struct_3(Struct_1(any(arg_0), vec3<bool>(arg_2.x == false, false, u_input.a.x < 0u)), Struct_1(true, select(!vec3<bool>(true, arg_0.x, arg_0.x), !vec3<bool>(true, arg_0.x, false), true)), Struct_1(arg_2.x, vec3<bool>(!arg_2.x, false, arg_0.x)), Struct_1(!any(vec3<bool>(false, true, arg_0.x)), !select(vec3<bool>(false, false, false), vec3<bool>(arg_2.x, arg_2.x, arg_2.x), arg_2.x))), Struct_1(arg_0.x, select(select(!vec3<bool>(true, arg_0.x, true), !vec3<bool>(arg_0.x, arg_2.x, false), any(vec4<bool>(arg_2.x, arg_0.x, false, false))), !select(vec3<bool>(false, arg_2.x, arg_0.x), vec3<bool>(arg_2.x, arg_0.x, arg_0.x), arg_0.x), all(vec4<bool>(true, false, false, arg_0.x)))));
    var var_2 = select(reverseBits(vec3<u32>(34203u & u_input.b.x, abs(0u), 0u) >> (abs(vec3<u32>(0u, 7206u, 0u)) % vec3<u32>(32u))), u_input.b.zzw, vec3<bool>(arg_2.x, any(vec4<bool>(true, true, true, select(true, arg_0.x, arg_2.x))), -3952i == _wgslsmith_add_i32(var_0, ~(-1i))));
    var var_3 = ~(~_wgslsmith_sub_u32(~(1u & var_2.x), min(firstLeadingBit(var_2.x), ~u_input.b.x)));
    var var_4 = 576f;
    return arg_1.x;
}

fn func_2(arg_0: vec2<f32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(func_4(vec2<bool>(true | !all(vec4<bool>(false, false, true, false)), !(!any(vec3<bool>(false, false, true)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-258f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), -1000f, _wgslsmith_f_op_f32(-1202f * _wgslsmith_f_op_f32(-arg_0.x)))), func_3(firstTrailingBit(~vec4<i32>(1i, 1i, 1i, 1i)))));
    return u_input.a;
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = !arg_1.e.b;
    let var_1 = arg_1.e;
    var var_2 = ((any(vec4<bool>(false, true, false, arg_1.d.b.b.x)) && true) | var_1.a) && any(!select(vec4<bool>(var_1.b.x, true, var_0.x, false), select(vec4<bool>(true, true, arg_1.e.b.x, var_1.b.x), vec4<bool>(true, false, var_1.a, arg_1.e.b.x), arg_1.e.a), true));
    let var_3 = ~_wgslsmith_sub_i32(arg_1.a.x, arg_1.a.x);
    var_2 = arg_1.d.c.a;
    return arg_1.d.a;
}

fn func_6(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = vec2<bool>(all(arg_0.b) & !(_wgslsmith_clamp_i32(0i, arg_2.x, 37442i) >= -54322i), true);
    let var_1 = select(-(~(-51758i | arg_2.x)), _wgslsmith_add_i32(~0i, firstTrailingBit(-1i)), arg_1.x < arg_2.x) > 2147483647i;
    let var_2 = _wgslsmith_div_vec4_u32((vec4<u32>(u_input.b.x << (44834u % 32u), 29445u, _wgslsmith_mod_u32(191u, 45188u), max(u_input.b.x, u_input.b.x)) | vec4<u32>(1u, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(22213u, u_input.a.x, u_input.a.x, 5623u)), abs(0u), ~u_input.b.x)) ^ vec4<u32>(u_input.a.x, u_input.a.x, firstTrailingBit(u_input.a.x), 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(67398u, 4294967295u, ~u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, 4294967295u)) << (~(~vec4<u32>(u_input.a.x, 1u, 94189u, u_input.a.x)) % vec4<u32>(32u)), u_input.b));
    var var_3 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(round(1550f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -302f))), _wgslsmith_f_op_f32(max(-1332f, _wgslsmith_f_op_f32(f32(-1f) * -1213f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1027f - _wgslsmith_f_op_f32(ceil(-435f))) * 2350f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-929f, -238f)), _wgslsmith_f_op_f32(trunc(-1551f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1096f)))))));
    var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, -591f, 612f))) * vec4<f32>(_wgslsmith_f_op_f32(var_3.x - var_3.x), _wgslsmith_f_op_f32(-var_3.x), var_3.x, _wgslsmith_f_op_f32(max(-1000f, var_3.x)))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -404f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.x, -511f) - 1681f), var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1756f - 688f) - 2163f))));
    return func_5(_wgslsmith_add_vec2_u32(~(_wgslsmith_mod_vec2_u32(vec2<u32>(34622u, 1u), var_2.yz) & ~u_input.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 1u) & vec2<u32>(var_2.x, 17846u), ~vec2<u32>(19341u, u_input.b.x), ~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(54525u, u_input.b.x)))), Struct_4(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(-arg_2.xx, vec2<i32>(arg_2.x, -1i) << (vec2<u32>(u_input.b.x, 4294967295u) % vec2<u32>(32u)), abs(vec2<i32>(arg_1.x, arg_2.x))), arg_1.zx), 1u, max(-(~arg_1.ww), ~(~vec2<i32>(arg_1.x, arg_1.x))), Struct_3(func_5(u_input.a | vec2<u32>(u_input.a.x, 2832u), Struct_4(arg_1.zz, 7378u, vec2<i32>(0i, -19225i), Struct_3(Struct_1(arg_0.b.x, vec3<bool>(var_0.x, false, var_1)), arg_0, arg_0, arg_0), Struct_1(var_0.x, arg_0.b)), _wgslsmith_f_op_vec2_f32(ceil(var_3.yx))), func_5(var_2.yx, Struct_4(vec2<i32>(1i, -30889i), 4294967295u, arg_2.yz, Struct_3(arg_0, Struct_1(true, arg_0.b), Struct_1(false, vec3<bool>(true, arg_0.b.x, var_0.x)), Struct_1(var_1, vec3<bool>(var_1, var_1, true))), Struct_1(true, arg_0.b)), _wgslsmith_f_op_vec2_f32(-var_3.zx)), arg_0, func_5(func_2(var_3.xx), Struct_4(vec2<i32>(arg_2.x, arg_2.x), 41898u, vec2<i32>(-1642i, arg_2.x), Struct_3(arg_0, Struct_1(true, arg_0.b), Struct_1(var_1, vec3<bool>(arg_0.b.x, arg_0.b.x, true)), Struct_1(var_1, arg_0.b)), Struct_1(arg_0.a, vec3<bool>(true, var_0.x, var_0.x))), _wgslsmith_f_op_vec2_f32(-var_3.ww))), func_5(vec2<u32>(_wgslsmith_add_u32(49508u, u_input.a.x), u_input.a.x), Struct_4(arg_1.zx, 4294967295u, arg_2.yz, Struct_3(arg_0, Struct_1(var_0.x, vec3<bool>(false, var_0.x, var_0.x)), Struct_1(var_1, arg_0.b), arg_0), func_5(vec2<u32>(0u, 37976u), Struct_4(arg_1.xw, 25309u, vec2<i32>(arg_1.x, -12167i), Struct_3(arg_0, arg_0, Struct_1(false, vec3<bool>(arg_0.a, arg_0.a, false)), arg_0), arg_0), vec2<f32>(-667f, var_3.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.wx) + vec2<f32>(-1358f, -170f)))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(2194f + -1159f), _wgslsmith_f_op_f32(abs(var_3.x))), _wgslsmith_f_op_f32(func_4(!vec2<bool>(var_1, false), vec4<f32>(709f, var_3.x, -191f, var_3.x), !vec2<bool>(var_0.x, false)))))));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1) -> f32 {
    let var_0 = arg_1.b.x;
    let var_1 = vec4<i32>(arg_0.x, ~min(arg_0.x, _wgslsmith_clamp_i32(2147483647i, arg_0.x, arg_0.x)), -1i, ~2147483647i);
    var var_2 = Struct_1(arg_1.a || any(vec3<bool>(arg_1.a == true, true != arg_1.a, true)), vec3<bool>(arg_1.b.x, true, true));
    var_2 = func_6(func_5(~firstLeadingBit(func_2(vec2<f32>(610f, 1000f))), Struct_4(-vec2<i32>(2147483647i, var_1.x) << (u_input.b.yz % vec2<u32>(32u)), ~u_input.b.x, arg_0, Struct_3(arg_1, Struct_1(true, arg_1.b), Struct_1(var_0, vec3<bool>(false, true, true)), Struct_1(false, arg_1.b)), arg_1), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -532f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-168f + 340f), _wgslsmith_f_op_f32(1385f + -288f)))), _wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(arg_0.x, var_1.x, -var_1.x, _wgslsmith_dot_vec3_i32(var_1.xxx, vec3<i32>(17937i, -51667i, -11529i)))), var_1), _wgslsmith_mod_vec3_i32(var_1.zzx, var_1.xzx));
    var var_3 = Struct_4(-var_1.xy | arg_0, 1u, ~(arg_0 ^ firstLeadingBit(firstLeadingBit(vec2<i32>(-43467i, var_1.x)))), Struct_3(func_5(~(~u_input.a), Struct_4(var_1.zy, ~39557u, var_1.wx, Struct_3(Struct_1(true, vec3<bool>(false, true, var_0)), arg_1, arg_1, arg_1), func_6(arg_1, vec4<i32>(-1i, 0i, -20572i, arg_0.x), vec3<i32>(2147483647i, -1i, var_1.x))), vec2<f32>(_wgslsmith_f_op_f32(round(-261f)), -482f)), arg_1, Struct_1(var_0, vec3<bool>(true, true, true || var_2.a)), arg_1), func_5(vec2<u32>(_wgslsmith_div_u32(u_input.b.x, 81967u) >> (_wgslsmith_div_u32(u_input.a.x, 12169u) % 32u), abs(_wgslsmith_mult_u32(u_input.b.x, 4294967295u))), Struct_4(arg_0, ~_wgslsmith_add_u32(u_input.a.x, u_input.a.x), -arg_0, Struct_3(arg_1, func_5(vec2<u32>(0u, u_input.a.x), Struct_4(var_1.zy, u_input.a.x, arg_0, Struct_3(arg_1, Struct_1(arg_1.b.x, vec3<bool>(var_0, false, arg_1.b.x)), arg_1, Struct_1(var_0, vec3<bool>(true, true, var_2.b.x))), Struct_1(arg_1.b.x, var_2.b)), vec2<f32>(-1245f, 402f)), func_5(u_input.a, Struct_4(arg_0, u_input.b.x, vec2<i32>(arg_0.x, arg_0.x), Struct_3(arg_1, arg_1, arg_1, Struct_1(true, vec3<bool>(arg_1.a, var_2.b.x, false))), Struct_1(true, vec3<bool>(true, var_0, true))), vec2<f32>(1042f, -1000f)), func_6(Struct_1(true, arg_1.b), var_1, var_1.zzy)), Struct_1(true, arg_1.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1322f), -1048f) - vec2<f32>(561f, _wgslsmith_f_op_f32(167f * 1050f)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(203f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-304f * 2170f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-987f)) * 809f)));
}

fn func_7(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = Struct_2(vec3<bool>(false, all(func_5(u_input.b.yz, Struct_4(vec2<i32>(-2147483647i, 2147483647i), 1u, vec2<i32>(0i, -2147483647i), Struct_3(Struct_1(true, arg_0.zxw), Struct_1(true, arg_0.ywx), Struct_1(arg_0.x, arg_0.wzx), Struct_1(true, vec3<bool>(false, arg_0.x, true))), Struct_1(arg_0.x, vec3<bool>(false, arg_0.x, false))), vec2<f32>(-396f, 335f)).b.yz) || !(!arg_0.x), !arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1203f), true);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-var_0.b) < _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(func_1(select(vec2<i32>(30341i, 59068i), vec2<i32>(-30922i, -1i), vec2<bool>(var_0.a.x, true)), Struct_1(false, vec3<bool>(var_0.a.x, arg_0.x, arg_0.x))))), vec3<bool>(1i == ~firstTrailingBit(-1i), true, select(select(true, true, select(false, true, arg_0.x)), true, select(var_0.c, false, arg_0.x) && true)));
    let var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(max(~(-2147483647i), firstLeadingBit(-7824i)), countOneBits(1i), _wgslsmith_dot_vec3_i32(~vec3<i32>(1i, 1i, 1i), vec3<i32>(-1i) * -vec3<i32>(2147483647i, 16928i, 1i)), 20323i), vec4<i32>(1i, 2147483647i, -48045i, ~(~_wgslsmith_div_i32(-9624i, 3737i))));
    let var_3 = Struct_4(~vec2<i32>(max(-339i, 2147483647i), -var_2.x), ~_wgslsmith_mod_u32(u_input.b.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, u_input.a.x, 7772u), vec3<u32>(23133u, u_input.a.x, u_input.a.x))), firstTrailingBit(select(abs(~vec2<i32>(-71518i, -2147483647i)), var_2.zy, !var_1.b.x)), Struct_3(var_1, var_1, func_6(var_1, -vec4<i32>(-26583i, -12056i, var_2.x, -1i), vec3<i32>(1i, 41746i ^ var_2.x, var_2.x)), Struct_1(var_1.a | true, arg_0.xwx)), Struct_1(var_1.a, func_5(abs(u_input.a) >> (vec2<u32>(u_input.b.x, u_input.a.x) % vec2<u32>(32u)), Struct_4(~vec2<i32>(-2147483647i, 14186i), firstTrailingBit(u_input.b.x), min(var_2.wy, var_2.xy), Struct_3(var_1, Struct_1(var_0.a.x, var_1.b), var_1, Struct_1(var_1.a, arg_0.zxz)), var_1), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-153f, -1811f))).b));
    var var_4 = ~var_2.xyy;
    return Struct_2(var_0.a, _wgslsmith_f_op_f32(-var_0.b), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(select(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, all(vec2<bool>(false, false))), 1604f > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(996f - -1561f), _wgslsmith_f_op_f32(func_1(vec2<i32>(-8150i, 2147483647i), Struct_1(true, vec3<bool>(true, false, true))))))));
    var_0 = Struct_2(!(!func_7(vec4<bool>(true, var_0.c, true, var_0.c)).a), _wgslsmith_f_op_f32(exp2(var_0.b)), var_0.c);
    var_0 = Struct_2(vec3<bool>(false, func_6(func_5(vec2<u32>(u_input.b.x, u_input.a.x), Struct_4(vec2<i32>(2147483647i, 2147483647i), 20783u, vec2<i32>(-11189i, 76716i), Struct_3(Struct_1(false, var_0.a), Struct_1(false, var_0.a), Struct_1(true, var_0.a), Struct_1(false, vec3<bool>(var_0.a.x, var_0.c, var_0.c))), Struct_1(var_0.c, var_0.a)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b, -163f), vec2<f32>(var_0.b, 373f), var_0.c))), ~vec4<i32>(1i, 1i, 1i, 1i), vec3<i32>(i32(-1i) * -33360i, 1i, _wgslsmith_div_i32(-2671i, 1i))).a, !var_0.a.x), _wgslsmith_f_op_f32(func_1(vec2<i32>(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 2147483647i, -21629i) << (u_input.b.zwx % vec3<u32>(32u)), vec3<i32>(1i, 1i, 1i))), func_6(func_6(func_6(Struct_1(var_0.a.x, vec3<bool>(false, true, var_0.c)), vec4<i32>(0i, -2147483647i, -40525i, -14549i), vec3<i32>(-7967i, -2147483647i, -2147483647i)), vec4<i32>(1i, 1i, 1i, 1i), vec3<i32>(-8570i, 34808i, 44626i)), firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(-5414i, 0i, 2147483647i, 75037i), vec4<i32>(-29663i, 2147483647i, -21228i, -55566i), vec4<i32>(-20922i, 11115i, -54523i, 0i))), ~vec3<i32>(1i, 1i, 1i)))), var_0.a.x);
    var_0 = func_7(!select(select(select(vec4<bool>(var_0.c, var_0.c, var_0.a.x, false), vec4<bool>(false, true, false, true), true), select(vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c), vec4<bool>(false, var_0.a.x, false, var_0.c), vec4<bool>(var_0.c, false, var_0.a.x, var_0.a.x)), !vec4<bool>(var_0.c, var_0.c, true, var_0.c)), vec4<bool>(var_0.a.x, true, true, !var_0.c), select(vec4<bool>(true, true, var_0.a.x, false), !vec4<bool>(var_0.c, false, var_0.c, var_0.a.x), select(vec4<bool>(false, var_0.a.x, true, var_0.c), vec4<bool>(var_0.c, true, true, true), vec4<bool>(false, var_0.a.x, var_0.c, var_0.a.x)))));
    let var_1 = _wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.b.ww, u_input.b.ww)) ^ _wgslsmith_div_u32(4294967295u, u_input.b.x), ~select(4294967295u, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 30212u, u_input.a.x, u_input.a.x)), var_0.a.x), 0u, u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -734f) - _wgslsmith_f_op_f32(-var_0.b))), var_0.b)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-952f, var_0.b)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_0.b))) + vec2<f32>(_wgslsmith_f_op_f32(max(var_0.b, var_0.b)), var_0.b)), select(func_5(u_input.b.yx, Struct_4(vec2<i32>(-1i, 35229i), 58181u, vec2<i32>(2147483647i, -7017i), Struct_3(Struct_1(var_0.c, vec3<bool>(var_0.a.x, false, true)), Struct_1(var_0.c, var_0.a), Struct_1(false, vec3<bool>(var_0.c, var_0.a.x, var_0.a.x)), Struct_1(var_0.c, vec3<bool>(false, var_0.c, var_0.a.x))), Struct_1(var_0.a.x, vec3<bool>(var_0.c, var_0.c, var_0.c))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, 2442f) * vec2<f32>(1679f, -1000f))).b.yy, func_5(~vec2<u32>(4294967295u, 0u), Struct_4(vec2<i32>(2147483647i, -2190i), 1u, vec2<i32>(-4126i, -2147483647i), Struct_3(Struct_1(var_0.a.x, var_0.a), Struct_1(var_0.c, vec3<bool>(var_0.a.x, var_0.c, var_0.c)), Struct_1(var_0.c, var_0.a), Struct_1(true, vec3<bool>(var_0.a.x, true, var_0.c))), Struct_1(false, var_0.a)), vec2<f32>(-347f, var_0.b)).b.yy, var_0.a.xy))), func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, -1252f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_0.b)))).x & var_1.x, u_input.b.x, 0i);
}

