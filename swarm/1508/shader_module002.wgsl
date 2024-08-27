struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    var var_0 = vec4<bool>(false, any(select(select(!vec3<bool>(arg_2.c.a.x, true, false), select(arg_2.c.a, vec3<bool>(arg_1.b, arg_2.d.b, arg_1.a.x), true), arg_2.c.a), select(vec3<bool>(true, arg_1.b, false), vec3<bool>(true, true, arg_1.a.x), arg_2.c.a), !arg_1.a)), !(_wgslsmith_div_u32(arg_0.x, ~65111u) < arg_0.x), arg_2.b.b);
    return Struct_1(arg_2.d.a, arg_1.b);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = u_input.c.x;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-214f)) * -1355f);
    return ~(~u_input.e ^ u_input.d.x);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: Struct_3) -> f32 {
    let var_0 = Struct_2(u_input.c.x ^ -28883i, Struct_1(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true))), false), Struct_1(vec3<bool>(true, all(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true))), ((arg_0.x >= -187f) | true) != true), Struct_1(vec3<bool>(true, true, true), u_input.e != func_3(arg_2.c.zxx, ~u_input.c, func_2(arg_2.c, Struct_1(vec3<bool>(true, false, false), true), Struct_2(-46304i, Struct_1(vec3<bool>(false, true, false), false), Struct_1(vec3<bool>(true, true, true), false), Struct_1(vec3<bool>(true, true, false), false), vec4<f32>(778f, 383f, -1068f, arg_1.x))), func_2(vec4<u32>(212u, arg_2.c.x, arg_2.c.x, 0u), Struct_1(vec3<bool>(true, false, true), true), Struct_2(2147483647i, Struct_1(vec3<bool>(false, true, true), true), Struct_1(vec3<bool>(true, true, false), false), Struct_1(vec3<bool>(false, false, false), false), arg_0)))), arg_0);
    var var_1 = var_0.e;
    let var_2 = var_0.d.a;
    var var_3 = _wgslsmith_mult_vec3_i32(firstLeadingBit(abs(-countOneBits(vec3<i32>(-1506i, u_input.c.x, var_0.a)))), ~vec3<i32>(-2705i, -2147483647i, _wgslsmith_div_i32(var_0.a, u_input.c.x)) ^ vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(0i, var_0.a), ~(-1i), ~u_input.b.x), 64628i, u_input.b.x));
    let var_4 = !(-1000f > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-var_0.e.x)))));
    return _wgslsmith_f_op_f32(var_0.e.x - -2357f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-726f, 1000f, -644f, 364f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-916f, 492f, -187f) * vec3<f32>(713f, -1207f, -1732f)), Struct_3(-1442f, 88875u, vec4<u32>(u_input.a, u_input.e, 21746u, 0u)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(637f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)))) * -1019f));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), vec3<f32>(var_0.x, var_0.x, 1400f), Struct_3(var_0.x, 62678u, vec4<u32>(72223u, u_input.a, u_input.e, u_input.e)))) + _wgslsmith_f_op_f32(sign(1808f)))))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1738f)), var_0.x))));
    var var_1 = func_2(firstLeadingBit(vec4<u32>(u_input.d.x, reverseBits(abs(u_input.a)), ~u_input.e, u_input.a)), func_2(~(~(vec4<u32>(u_input.a, u_input.a, 25570u, 1u) << (vec4<u32>(u_input.a, 1u, 1u, u_input.a) % vec4<u32>(32u)))), func_2(~(vec4<u32>(u_input.e, 1266u, u_input.d.x, 4294967295u) & vec4<u32>(u_input.e, 35866u, 4294967295u, 4294967295u)), func_2(~vec4<u32>(40392u, u_input.e, u_input.d.x, u_input.a), Struct_1(vec3<bool>(true, false, false), false), Struct_2(23230i, Struct_1(vec3<bool>(true, false, true), false), Struct_1(vec3<bool>(true, true, true), false), Struct_1(vec3<bool>(true, false, false), true), vec4<f32>(var_0.x, var_0.x, -685f, var_0.x))), Struct_2(u_input.c.x, Struct_1(vec3<bool>(false, false, true), false), func_2(vec4<u32>(11893u, u_input.e, u_input.d.x, 1u), Struct_1(vec3<bool>(true, false, false), false), Struct_2(1i, Struct_1(vec3<bool>(true, false, false), true), Struct_1(vec3<bool>(false, false, false), true), Struct_1(vec3<bool>(true, true, false), false), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))), Struct_1(vec3<bool>(false, true, false), true), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1586f, var_0.x, var_0.x, var_0.x))))), Struct_2(abs(-2147483647i), Struct_1(vec3<bool>(true, true, true), true), Struct_1(vec3<bool>(true, true, true), true), Struct_1(vec3<bool>(true, false, false), true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, -702f)))), Struct_2(~u_input.b.x, Struct_1(vec3<bool>(all(vec2<bool>(true, false)), false, true), 844f < var_0.x), func_2(vec4<u32>(u_input.e, 4514u, ~u_input.a, _wgslsmith_add_u32(96020u, 62220u)), func_2(select(vec4<u32>(0u, u_input.a, 0u, u_input.e), vec4<u32>(u_input.a, u_input.a, 4294967295u, 1u), vec4<bool>(false, false, true, false)), Struct_1(vec3<bool>(true, false, true), false), Struct_2(27767i, Struct_1(vec3<bool>(true, false, false), true), Struct_1(vec3<bool>(false, false, true), true), Struct_1(vec3<bool>(false, true, false), false), vec4<f32>(var_0.x, var_0.x, var_0.x, 174f))), Struct_2(_wgslsmith_mod_i32(u_input.c.x, u_input.c.x), func_2(vec4<u32>(u_input.a, 1u, u_input.d.x, 4294967295u), Struct_1(vec3<bool>(false, true, true), false), Struct_2(79660i, Struct_1(vec3<bool>(false, false, true), true), Struct_1(vec3<bool>(false, true, false), true), Struct_1(vec3<bool>(false, false, true), false), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))), Struct_1(vec3<bool>(false, true, false), false), func_2(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), Struct_1(vec3<bool>(true, true, false), false), Struct_2(-2147483647i, Struct_1(vec3<bool>(false, false, false), true), Struct_1(vec3<bool>(true, false, true), true), Struct_1(vec3<bool>(true, false, false), true), vec4<f32>(583f, 1223f, var_0.x, var_0.x))), vec4<f32>(-518f, var_0.x, var_0.x, var_0.x))), func_2(vec4<u32>(firstTrailingBit(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 0u, 22838u), vec3<u32>(1u, u_input.a, u_input.d.x)), _wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(17180u, u_input.e)), _wgslsmith_mod_u32(u_input.e, u_input.a)), func_2(vec4<u32>(u_input.d.x, u_input.a, 47548u, 4294967295u), Struct_1(vec3<bool>(true, true, false), false), Struct_2(u_input.c.x, Struct_1(vec3<bool>(false, false, true), true), Struct_1(vec3<bool>(false, false, false), false), Struct_1(vec3<bool>(true, true, false), false), vec4<f32>(var_0.x, 1379f, var_0.x, -1836f))), Struct_2(_wgslsmith_div_i32(-2147483647i, u_input.c.x), Struct_1(vec3<bool>(true, false, false), true), func_2(vec4<u32>(u_input.a, 0u, 1u, 4294967295u), Struct_1(vec3<bool>(true, true, false), true), Struct_2(-9235i, Struct_1(vec3<bool>(true, true, false), true), Struct_1(vec3<bool>(true, true, false), false), Struct_1(vec3<bool>(false, true, false), false), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))), func_2(vec4<u32>(u_input.e, u_input.a, u_input.a, u_input.e), Struct_1(vec3<bool>(false, true, false), true), Struct_2(0i, Struct_1(vec3<bool>(true, false, false), false), Struct_1(vec3<bool>(false, true, false), false), Struct_1(vec3<bool>(true, true, true), true), vec4<f32>(var_0.x, -1000f, var_0.x, -1184f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 448f, 1194f, var_0.x) + vec4<f32>(-651f, 1646f, 398f, 1592f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<f32>(var_0.x, var_0.x, 403f, -500f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(258f, var_0.x, var_0.x, var_0.x) - vec4<f32>(var_0.x, var_0.x, -582f, 300f))))));
    let var_2 = func_2(_wgslsmith_mult_vec4_u32((abs(vec4<u32>(4294967295u, 1u, u_input.a, 36502u)) ^ vec4<u32>(0u, u_input.d.x, u_input.e, u_input.d.x)) | (select(vec4<u32>(5734u, u_input.a, 15023u, 0u), vec4<u32>(4294967295u, 46716u, 1u, 13225u), false) | ~vec4<u32>(4294967295u, u_input.d.x, 0u, 10390u)), firstLeadingBit(vec4<u32>(u_input.e, 0u, 28472u, u_input.a) | vec4<u32>(0u, 60503u, u_input.a, 75991u))), Struct_1(select(select(!var_1.a, var_1.a, !var_1.a), !select(var_1.a, vec3<bool>(var_1.b, var_1.a.x, var_1.a.x), var_1.a), true), var_1.b), Struct_2(-1i, Struct_1(var_1.a, false), Struct_1(!vec3<bool>(var_1.a.x, true, true), any(!vec3<bool>(var_1.b, var_1.b, true))), func_2(firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(99330u, 4294967295u, 4294967295u, 62977u), vec4<u32>(29657u, u_input.a, u_input.a, 1u))), Struct_1(!var_1.a, !var_1.b), Struct_2(-2147483647i & u_input.c.x, Struct_1(var_1.a, false), func_2(vec4<u32>(45647u, 19906u, 0u, 1u), Struct_1(var_1.a, var_1.a.x), Struct_2(0i, Struct_1(var_1.a, true), Struct_1(vec3<bool>(true, var_1.a.x, false), var_1.a.x), Struct_1(var_1.a, var_1.a.x), vec4<f32>(var_0.x, -1000f, var_0.x, var_0.x))), Struct_1(var_1.a, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(365f, var_0.x, -1023f, var_0.x) - vec4<f32>(-795f, 1964f, -317f, var_0.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) + vec4<f32>(1175f, var_0.x, var_0.x, 596f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, 114f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -982f, 971f))))));
    let var_3 = u_input.c.x;
    var_1 = Struct_1(func_2(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 4724u), vec4<u32>(0u, 0u, u_input.e, u_input.a))) >> (vec4<u32>(1u, 1u, u_input.e ^ 24267u, u_input.e) % vec4<u32>(32u)), func_2(select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 0u, 0u, 0u), vec4<u32>(u_input.a, 4294967295u, 0u, 9846u)), reverseBits(vec4<u32>(11321u, u_input.d.x, u_input.a, 1u)), 13757u > u_input.a), var_2, Struct_2(var_3, var_2, func_2(vec4<u32>(4294967295u, 0u, 4294967295u, u_input.d.x), Struct_1(var_1.a, var_2.a.x), Struct_2(0i, Struct_1(var_2.a, true), Struct_1(var_2.a, false), var_2, vec4<f32>(var_0.x, var_0.x, var_0.x, -208f))), Struct_1(var_1.a, var_1.a.x), vec4<f32>(-504f, -198f, var_0.x, var_0.x))), Struct_2(var_3, func_2(firstLeadingBit(vec4<u32>(0u, u_input.e, u_input.e, 1825u)), Struct_1(var_2.a, var_1.a.x), Struct_2(var_3, var_2, Struct_1(vec3<bool>(false, var_1.a.x, false), true), Struct_1(var_1.a, false), vec4<f32>(1000f, var_0.x, -661f, -889f))), func_2(vec4<u32>(u_input.a, 27079u, 4294967295u, 1u) << (vec4<u32>(0u, u_input.e, u_input.d.x, u_input.d.x) % vec4<u32>(32u)), Struct_1(var_1.a, var_1.b), Struct_2(var_3, var_2, Struct_1(vec3<bool>(var_1.b, var_1.a.x, false), true), Struct_1(var_2.a, true), vec4<f32>(var_0.x, var_0.x, -542f, var_0.x))), Struct_1(func_2(vec4<u32>(u_input.d.x, 48613u, 0u, u_input.e), var_2, Struct_2(-43056i, var_2, Struct_1(vec3<bool>(var_2.a.x, var_1.a.x, var_2.a.x), false), var_2, vec4<f32>(var_0.x, 402f, -173f, -1254f))).a, !var_2.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(939f, -1015f, var_0.x, var_0.x) * vec4<f32>(var_0.x, -1115f, -928f, var_0.x))))).a, true | !((var_2.b && false) & false));
    var_1 = var_2;
    var var_4 = !select(var_2.a, var_2.a, var_1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - 297f), 552f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(251f, -187f) + vec2<f32>(-1949f, var_0.x))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - vec2<f32>(var_0.x, 1405f)))))));
}

