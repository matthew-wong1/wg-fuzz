struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * -192f))), -1000f, _wgslsmith_f_op_f32(step(1379f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1480f)))))));
    let var_1 = ~vec4<u32>(1u, 1u, 1u, 1u);
    var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(-554f, 334f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1422f)))), all(vec2<bool>(false, arg_0.a)))), var_0.x, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(336f * 1919f))), vec4<f32>(1092f, var_0.x, var_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-893f * 1000f), var_0.x)))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(966f)))), 666f, -494f, 1221f);
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1753f, var_0.x, 1164f, 1258f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, -2041f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-239f, 1653f, 1217f, -950f) * vec4<f32>(var_0.x, var_0.x, -502f, 2433f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -132f, -2723f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(898f, 1505f, var_0.x, -1250f))), !(!(!vec4<bool>(false, arg_0.a, arg_0.a, arg_0.a))))));
    return 46047u;
}

fn func_2() -> i32 {
    let var_0 = Struct_2(Struct_1(~_wgslsmith_mult_u32(4294967295u, 1u) != min(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, 43391u), vec4<u32>(4294967295u, 1u, 45519u, 37414u)), func_3(Struct_1(true, vec2<i32>(-1i, -2147483647i), 1i))), select(~vec2<i32>(-2147483647i, u_input.a), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(2147483647i, 1i)), ~vec2<i32>(0i, u_input.a)), true), 1039i), _wgslsmith_f_op_f32(floor(-1974f)), Struct_1(true, select(~vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a) << (vec2<u32>(101602u, 0u) % vec2<u32>(32u)), vec2<bool>(true, true)) >> (~(~vec2<u32>(11312u, 17639u)) % vec2<u32>(32u)), -21699i));
    var var_1 = -_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(1i, -2147483647i, 20254i), vec3<i32>(2147483647i, var_0.a.b.x, reverseBits(var_0.c.c)), vec3<i32>(-2147483647i, u_input.a, -1300i));
    var_1 = max(vec3<i32>(u_input.a, -4525i, -1i), _wgslsmith_div_vec3_i32(vec3<i32>(-922i, countOneBits(var_1.x) << (1u % 32u), -67050i), -reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.a.c, 0i, -2147483647i), vec3<i32>(25182i, -49020i, var_0.c.b.x)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b))), var_0.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1231f, var_0.b))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, 658f)))))))));
    return 4924i;
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_add_i32(~u_input.a, func_2());
    let var_1 = _wgslsmith_mult_u32(1u, firstLeadingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(4200u, 0u), ~(~vec2<u32>(0u, 1u)))));
    let var_2 = Struct_3(_wgslsmith_dot_vec3_u32(vec3<u32>(70199u, 0u, var_1 | abs(55151u)), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, var_1, var_1), vec3<u32>(1u, 1u, 1u))), any(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)))), ~_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(19797u, var_1), vec2<u32>(0u, 40044u)), vec2<u32>(1u, 4294967295u)) << (select(vec2<u32>(select(var_1, var_1, false), var_1), ~_wgslsmith_mod_vec2_u32(vec2<u32>(var_1, var_1), vec2<u32>(var_1, var_1)), vec2<bool>(true, true)) % vec2<u32>(32u)));
    var_0 = -2147483647i << (firstTrailingBit(firstLeadingBit(1u)) % 32u);
    return ~6769u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<i32>(_wgslsmith_mod_i32(abs(-1718i), 2147483647i), -(~u_input.a), reverseBits(u_input.a), u_input.a) << (vec4<u32>(321u, _wgslsmith_clamp_u32(~reverseBits(4294967295u), ~min(0u, 2855u), func_1()), ~1u, 4294967295u) % vec4<u32>(32u));
    var var_1 = Struct_4(Struct_1(true | all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false))), ~select(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, var_0.x), vec2<i32>(u_input.a, -2147483647i)), _wgslsmith_sub_vec2_i32(var_0.zz, var_0.xz), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))), 1i), Struct_3(select(4294967295u, 1u, !all(vec3<bool>(false, false, false))), true, _wgslsmith_mod_vec2_u32(abs(vec2<u32>(72844u, 35745u)), vec2<u32>(1u, 1u))), firstLeadingBit(-1i), false);
    let var_2 = 2147483647i;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-235f)));
    let var_4 = Struct_3(~12118u, (all(!vec3<bool>(var_1.b.b, var_1.a.a, true)) & false) & var_1.b.b, vec2<u32>(~(~func_3(var_1.a)), min(~var_1.b.a, _wgslsmith_mult_u32(var_1.b.c.x, ~var_1.b.c.x))));
    var var_5 = Struct_2(Struct_1(true, _wgslsmith_mult_vec2_i32(select(-vec2<i32>(2147483647i, u_input.a), vec2<i32>(var_0.x, var_2), select(vec2<bool>(var_4.b, true), vec2<bool>(false, var_1.b.b), vec2<bool>(true, var_4.b))), select(vec2<i32>(-1i, var_0.x), vec2<i32>(var_0.x, 32543i) << (var_1.b.c % vec2<u32>(32u)), true)), i32(-1i) * -9180i), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(716f + 733f), _wgslsmith_f_op_f32(max(-1676f, 1271f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-192f, 1000f))))))), var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_5.b, -1425f) + vec3<f32>(var_5.b, var_5.b, var_5.b))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-954f, var_5.b, 1199f)))) * vec3<f32>(-512f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2681f + var_5.b)), var_5.b)));
}

