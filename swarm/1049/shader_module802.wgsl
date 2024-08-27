struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: i32,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: u32, arg_3: Struct_3) -> f32 {
    let var_0 = _wgslsmith_add_i32(arg_3.b, ~arg_3.b);
    let var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 37462i, 1i, var_0), vec4<i32>(0i, -2147483647i, -19624i, var_0))), -(~select(-vec4<i32>(arg_3.b, arg_3.b, 17143i, arg_3.b), _wgslsmith_div_vec4_i32(vec4<i32>(arg_3.b, 29509i, var_0, arg_3.b), vec4<i32>(0i, 32753i, var_0, arg_3.b)), select(vec4<bool>(arg_0, false, false, arg_0), vec4<bool>(true, false, arg_0, arg_0), false))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a, 541f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(329f, arg_3.a) * vec2<f32>(-391f, arg_3.a)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a, 859f)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-362f, -649f)))), select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0), true), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), false), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false), vec2<bool>(arg_0, true))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_3.a, arg_3.a)))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_3.a, -477f))))), select(vec2<bool>(true, !arg_0), vec2<bool>(true, true), any(select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, false), false))))));
    return var_2.x;
}

fn func_3() -> i32 {
    let var_0 = Struct_2(vec2<bool>(true, any(vec2<bool>(true, true))), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(507f, 1296f, -801f))))), ~12667u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-499f - -2294f))))), _wgslsmith_mult_i32(1i, reverseBits(_wgslsmith_div_i32(-2147483647i, _wgslsmith_sub_i32(15892i, 22463i)))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(1u, 1u, 31981u), firstLeadingBit(u_input.a.x), ~44039u), ~(~vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(805f, -633f)), _wgslsmith_f_op_f32(2408f + 1000f), _wgslsmith_f_op_f32(step(880f, 327f)))), u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(false, 18706u, u_input.c, Struct_3(-541f, 2147483647i, vec3<u32>(29365u, 75543u, 0u), u_input.c)))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.e.a.x)));
    var var_2 = vec2<f32>(-926f, _wgslsmith_f_op_f32(-var_0.e.c));
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(var_0.e.a.zz)), _wgslsmith_f_op_vec2_f32(var_0.e.a.yy + vec2<f32>(_wgslsmith_f_op_f32(-var_0.e.c), _wgslsmith_f_op_f32(abs(-1062f)))), select(vec2<bool>(!var_0.a.x, var_0.a.x), vec2<bool>(u_input.c > 13186u, true), _wgslsmith_add_i32(var_0.c, -23098i) >= -82616i))));
    var var_3 = _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, ~max(var_0.c, var_0.c)) & select(-countOneBits(vec2<i32>(1i, 20099i)), vec2<i32>(var_0.c, var_0.c), vec2<bool>(true, var_0.a.x | false)), countOneBits(vec2<i32>(_wgslsmith_mod_i32(var_0.c, ~0i), _wgslsmith_div_i32(var_0.c, var_0.c))));
    return 1i;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec4<u32>) -> u32 {
    var var_0 = vec4<bool>(!all(select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, false, false, false))), !all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)), true, all(vec2<bool>(true, true)));
    var var_1 = Struct_4(Struct_1(vec3<f32>(arg_1, -497f, arg_1), ~reverseBits(~1u), arg_1), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-918f, arg_1))), _wgslsmith_f_op_f32(max(-224f, 902f)), _wgslsmith_f_op_f32(arg_1 + arg_1)), ~(~(~arg_0)), arg_1), 0u, Struct_2(var_0.wx, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 677f, 1189f))), _wgslsmith_mult_u32(43855u, 4723u) << (~arg_2.x % 32u), arg_1), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), -vec2<i32>(0i, 712i)), _wgslsmith_mod_i32(-66929i, -2147483647i)), vec3<u32>(u_input.a.x, ~abs(59258u), _wgslsmith_clamp_u32(_wgslsmith_add_u32(arg_0, 0u), arg_0, 15970u)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_1)), 42949u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1 + 1000f))))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-760f, -342f, 597f)))), arg_2.x, arg_1));
    var_1 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(-var_1.d.b.a), _wgslsmith_mult_u32(firstTrailingBit(var_1.c), ~1u >> (_wgslsmith_div_u32(30435u, 4294967295u) % 32u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.d.e.a.x, var_1.a.c) * _wgslsmith_f_op_f32(f32(-1f) * -1085f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * arg_1)))), var_1.a, ~(~min(~32983u, _wgslsmith_dot_vec4_u32(arg_2, vec4<u32>(u_input.a.x, 4294967295u, 15330u, arg_0)))), Struct_2(vec2<bool>(true, all(vec3<bool>(var_0.x, false, true))), Struct_1(vec3<f32>(2093f, -1000f, -317f), arg_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(370f, var_1.d.e.a.x))))), func_3(), var_1.d.d, Struct_1(var_1.b.a, 81912u, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(arg_1, var_1.e.c)))))), var_1.a);
    var_1 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, var_1.d.e.a.x, -268f), var_1.a.a, var_0.yxx)), _wgslsmith_f_op_vec3_f32(vec3<f32>(518f, arg_1, var_1.a.c) + vec3<f32>(arg_1, -645f, arg_1)))) + vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(abs(-1759f)), 917f)), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e.a.x) - 807f)), var_1.a, arg_0, var_1.d, Struct_1(_wgslsmith_f_op_vec3_f32(-var_1.a.a), reverseBits(1u), _wgslsmith_f_op_f32(exp2(var_1.b.c))));
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-586f - 1104f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_vec2_f32(-var_1.b.a.zy), select(var_1.d.a, !(!var_0.ww), select(vec2<bool>(true, var_0.x), !var_0.yw, var_0.x | true))))));
    return ~(~min(~0u, ~arg_0) | _wgslsmith_clamp_u32(_wgslsmith_mod_u32(4294967295u >> (arg_2.x % 32u), 11132u << (0u % 32u)), u_input.a.x, select(37087u, arg_2.x >> (arg_2.x % 32u), var_1.d.a.x)));
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_4) -> bool {
    var var_0 = arg_2.d;
    var_0 = arg_2.d;
    let var_1 = 0i;
    var_0 = Struct_2(!var_0.a, var_0.b, -1i, arg_2.d.d, Struct_1(arg_2.d.e.a, 21321u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.d.e.c * -551f) + _wgslsmith_f_op_f32(-var_0.e.c)))));
    let var_2 = arg_2.d;
    return !(!any(select(!vec4<bool>(false, arg_2.d.a.x, true, var_2.a.x), !vec4<bool>(true, true, var_0.a.x, var_2.a.x), select(arg_2.d.a.x, false, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, true, func_4(u_input.b & 0u, vec2<bool>(true, !(u_input.b != u_input.a.x)), Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1157f, -255f, 1049f)), u_input.b | 40486u, _wgslsmith_f_op_f32(func_1(false, u_input.c, 4294967295u, Struct_3(-236f, -34837i, vec3<u32>(u_input.c, u_input.a.x, u_input.c), 0u)))), Struct_1(vec3<f32>(-736f, -1175f, 201f), u_input.c ^ 20818u, _wgslsmith_f_op_f32(1035f * -1000f)), func_2(reverseBits(u_input.b), -737f, vec4<u32>(17355u, u_input.c, 5074u, 50533u) | vec4<u32>(u_input.b, u_input.c, u_input.b, u_input.c)), Struct_2(select(vec2<bool>(false, false), vec2<bool>(true, false), true), Struct_1(vec3<f32>(-372f, -696f, 680f), u_input.b, -593f), 1i, vec3<u32>(4294967295u, 15455u, 63154u) << (vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u) % vec3<u32>(32u)), Struct_1(vec3<f32>(1754f, 1713f, 267f), 4294967295u, 1120f)), Struct_1(vec3<f32>(-1016f, 375f, 1000f), 53135u, 717f))));
    let var_1 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(664f, -2417f, _wgslsmith_f_op_f32(f32(-1f) * -849f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1952f, 1213f, 1374f))))), min(47156u, u_input.a.x) >> (max(0u, _wgslsmith_div_u32(116691u, ~u_input.b)) % 32u), 1032f);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-103f, var_1.a.x, 223f, 433f))))))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(var_1.a.x, _wgslsmith_f_op_f32(-477f + 2087f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) * _wgslsmith_f_op_f32(var_1.a.x + 609f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-2096f * var_1.c))), var_1.a.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-829f, var_1.c, 1000f, 166f), vec4<f32>(var_1.a.x, var_1.a.x, var_1.c, var_1.a.x)))))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.x, -1014f, 1426f)))))))), 13342u, _wgslsmith_f_op_f32(-697f + var_1.a.x));
    let var_4 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1273f - var_3.a.x))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(709f * var_2.x) * _wgslsmith_div_f32(var_3.c, var_3.c)) - -816f)), ~(-min(max(2168i, 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-16312i, 0i), vec2<i32>(28585i, 11865i)))), vec3<u32>(_wgslsmith_sub_u32(func_2(u_input.a.x << (1u % 32u), _wgslsmith_f_op_f32(-var_3.a.x), vec4<u32>(var_3.b, var_3.b, var_3.b, var_1.b)), ~var_1.b >> (u_input.c % 32u)), _wgslsmith_dot_vec2_u32(select(_wgslsmith_mod_vec2_u32(vec2<u32>(var_3.b, 27065u), u_input.a), select(vec2<u32>(4237u, 1u), vec2<u32>(28665u, var_1.b), vec2<bool>(true, var_0.x)), true), reverseBits(_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(4294967295u, var_1.b)))), 16118u), u_input.c);
    var var_5 = vec3<u32>(reverseBits(37887u), 58923u, firstTrailingBit(~var_1.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_3.b, ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a.x, 1u), var_3.b)));
}

