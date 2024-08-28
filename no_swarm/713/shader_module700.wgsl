struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> i32 {
    return 1i;
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: vec4<bool>) -> vec3<i32> {
    var var_0 = -vec3<i32>(-84114i, u_input.b, func_3());
    var var_1 = ~arg_0;
    var var_2 = Struct_1(arg_0 << (_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0, arg_0, arg_0, 1u), select(vec4<u32>(arg_0, 904u, 8251u, arg_0), vec4<u32>(arg_0, arg_0, arg_0, 1u), arg_1.x)), ~(~vec4<u32>(arg_0, arg_0, 0u, arg_0))) % 32u), u_input.a & -30234i, vec4<bool>(!(!arg_2.x) | (4294967295u <= arg_0), 0u >= _wgslsmith_mult_u32(0u, min(arg_0, 17024u)), true, !arg_2.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -861f)), -147f, _wgslsmith_f_op_f32(-725f * -1000f))));
    let var_3 = abs(-vec4<i32>(var_2.b, u_input.a, _wgslsmith_sub_i32(~2147483647i, ~22827i), abs(~(-1i))));
    let var_4 = Struct_2(select(var_2.c, var_2.c, true), Struct_1(~11493u, 7909i << (0u % 32u), arg_2, _wgslsmith_f_op_vec3_f32(vec3<f32>(816f, _wgslsmith_f_op_f32(trunc(var_2.d.x)), var_2.d.x) * vec3<f32>(_wgslsmith_f_op_f32(-var_2.d.x), var_2.d.x, var_2.d.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.d.x * 651f), _wgslsmith_f_op_f32(-var_2.d.x)), 1613f, var_2.d.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(589f, 560f, var_2.d.x, 1618f), vec4<f32>(var_2.d.x, var_2.d.x, var_2.d.x, var_2.d.x)) - vec4<f32>(var_2.d.x, 1000f, var_2.d.x, 309f)))), Struct_1(var_2.a, var_0.x, vec4<bool>(all(!vec3<bool>(true, true, var_2.c.x)), var_2.c.x & arg_1.x, arg_1.x, !var_2.c.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.d.x, var_2.d.x, var_2.d.x)) - vec3<f32>(var_2.d.x, -157f, var_2.d.x)), vec3<f32>(var_2.d.x, _wgslsmith_f_op_f32(-371f * var_2.d.x), -1968f), false))));
    return var_3.wwy;
}

fn func_1(arg_0: Struct_3, arg_1: i32) -> vec4<u32> {
    let var_0 = -vec3<i32>(-(0i >> (arg_0.b.a % 32u)), u_input.b, u_input.b) | (vec3<i32>(412i, firstTrailingBit(_wgslsmith_sub_i32(-1i, arg_1)), -(u_input.a ^ 0i)) & -max(func_2(arg_0.b.a, arg_0.b.c.xxw, vec4<bool>(true, true, arg_0.b.c.x, arg_0.b.c.x)), vec3<i32>(-38575i, 1i, -54772i)));
    let var_1 = Struct_1(arg_0.b.a, ~(i32(-1i) * -1i), select(arg_0.b.c, select(vec4<bool>(true, false, true, arg_0.b.b == 1i), arg_0.b.c, vec4<bool>(arg_0.b.c.x, !arg_0.b.c.x, true, arg_0.b.c.x)), !(!(!arg_0.b.c))), arg_0.b.d);
    var var_2 = ~vec2<u32>(_wgslsmith_div_u32(1u, 1u), 21016u) ^ firstTrailingBit(vec2<u32>(arg_0.b.a, _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(var_1.a, 71238u)), vec2<u32>(arg_0.b.a, 4294967295u))));
    var_2 = ~(_wgslsmith_div_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.b.a, 1u), vec2<u32>(var_2.x, var_1.a)), ~vec2<u32>(var_2.x, var_1.a)) ^ vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, var_1.a), ~vec3<u32>(var_2.x, 4294967295u, 4294967295u)), ~1u));
    var_2 = vec2<u32>(var_2.x, min(~(~(~4294967295u)), 0u));
    return vec4<u32>(_wgslsmith_clamp_u32(countOneBits(4294967295u), ~_wgslsmith_mult_u32(0u, arg_0.b.a) | _wgslsmith_mod_u32(~1796u, ~0u), ~18788u & _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(101509u, var_2.x, 4294967295u), vec3<u32>(arg_0.b.a, 0u, 0u)), 76622u)), 6133u, 11642u ^ var_2.x, var_1.a);
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec3<i32>, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = arg_3.xzw;
    let var_1 = Struct_1(~(~(~var_0.x)), arg_2.x, select(!vec4<bool>(true, true, u_input.b == arg_2.x, true), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, arg_1, arg_1), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 1094f, 472f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_1, -853f) - vec3<f32>(-1177f, 2254f, -1359f))))));
    let var_2 = !select(select(var_1.c.yxz, !select(vec3<bool>(var_1.c.x, var_1.c.x, var_1.c.x), var_1.c.ywz, vec3<bool>(var_1.c.x, false, var_1.c.x)), var_1.c.x), !(!(!vec3<bool>(true, true, var_1.c.x))), var_1.c.x);
    let var_3 = ~vec2<u32>(_wgslsmith_div_u32(0u ^ arg_3.x, _wgslsmith_sub_u32(var_0.x, var_0.x)) << (1u % 32u), _wgslsmith_add_u32(_wgslsmith_clamp_u32(39939u, 50097u, 51383u) | ~21105u, 48021u));
    var var_4 = -2147483647i;
    return Struct_1(4294967295u, countOneBits(arg_2.x), select(!var_1.c, select(vec4<bool>(all(vec4<bool>(false, true, false, var_1.c.x)), var_2.x, true, true), !select(var_1.c, vec4<bool>(true, var_2.x, var_1.c.x, false), true), false && (-1i == arg_2.x)), var_1.c), var_1.d);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_2) -> Struct_3 {
    let var_0 = 312f;
    var var_1 = arg_0.x;
    let var_2 = Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(-select(-2147483647i, arg_1.b.b, arg_0.x), -1i, 1i << (min(arg_1.d.a, arg_1.b.a) % 32u), firstTrailingBit(abs(-2147483647i))), (~vec4<i32>(arg_1.b.b, u_input.a, u_input.b, 35459i) >> (~vec4<u32>(arg_1.b.a, 37061u, arg_1.b.a, arg_1.b.a) % vec4<u32>(32u))) << (vec4<u32>(arg_1.b.a, abs(13333u), arg_1.b.a, arg_1.d.a) % vec4<u32>(32u))), arg_1.b);
    var_1 = !(all(!select(vec4<bool>(arg_1.b.c.x, var_2.b.c.x, arg_0.x, arg_1.b.c.x), vec4<bool>(true, var_2.b.c.x, true, false), var_2.b.c)) | true);
    var var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.d.x, var_0, -841f, var_0) - vec4<f32>(-1072f, arg_1.b.d.x, -1480f, -2683f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.c))))));
    return Struct_3(u_input.a, Struct_1(_wgslsmith_add_u32(_wgslsmith_mod_u32(0u, firstTrailingBit(var_2.b.a)), _wgslsmith_sub_u32(var_2.b.a, 18402u)), var_2.b.b, select(!var_2.b.c, !vec4<bool>(true, true, false, var_2.b.c.x), arg_0.x), _wgslsmith_f_op_vec3_f32(-var_2.b.d)));
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_3) -> u32 {
    return _wgslsmith_mult_u32(0u, arg_1.b.a) | 79160u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(~abs(~reverseBits(vec3<u32>(4294967295u, 4294967295u, 1u))), func_5(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(all(vec4<bool>(true, true, true, false)), false)), Struct_2(vec4<bool>(true, true, true, true), func_4(76023i, 1f, vec3<i32>(u_input.a, -16713i, u_input.b), func_1(Struct_3(u_input.b, Struct_1(1u, -5289i, vec4<bool>(false, true, false, false), vec3<f32>(-753f, 1000f, 186f))), 34513i)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1168f), -866f, _wgslsmith_f_op_f32(1033f + -373f), 1f), func_4(1i, _wgslsmith_div_f32(-1000f, -416f), vec3<i32>(u_input.a, u_input.b, u_input.a), vec4<u32>(1u, 57442u, 4294967295u, 0u)))));
    var_0 = firstTrailingBit(~select(~75766u, firstTrailingBit(4294967295u), false) ^ abs(4294967295u));
    let var_1 = vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(~43127u, 1u), 1u, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 22524u, 45424u, 2893u), vec4<u32>(1u, 1u, 1u, 17440u)))), 25637u, countOneBits(1u >> ((reverseBits(26496u) >> (func_1(Struct_3(u_input.b, Struct_1(6178u, -1i, vec4<bool>(false, false, false, true), vec3<f32>(1131f, -700f, -739f))), 2147483647i).x % 32u)) % 32u)));
    let var_2 = Struct_3(-34811i, Struct_1(var_1.x | max(~46278u, ~0u), u_input.b, !vec4<bool>(all(vec4<bool>(false, false, true, false)), true, func_5(vec2<bool>(true, false), Struct_2(vec4<bool>(true, false, false, false), Struct_1(0u, -17255i, vec4<bool>(false, true, false, true), vec3<f32>(-421f, -648f, 1408f)), vec4<f32>(-2123f, 2387f, 834f, -2004f), Struct_1(var_1.x, u_input.a, vec4<bool>(true, true, false, true), vec3<f32>(-920f, -535f, 437f)))).b.c.x, true), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-1165f, -1069f, 307f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(331f, 2159f, -214f)))))));
    let var_3 = vec2<f32>(var_2.b.d.x, var_2.b.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.d.yz);
}

