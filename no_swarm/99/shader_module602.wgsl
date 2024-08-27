struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: f32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool) -> vec3<u32> {
    var var_0 = Struct_1(39702i);
    var var_1 = ~_wgslsmith_add_vec2_i32(~abs(-vec2<i32>(18409i, 1i)), min(-(~vec2<i32>(-2147483647i, var_0.a)), _wgslsmith_mod_vec2_i32(select(vec2<i32>(var_0.a, var_0.a), vec2<i32>(8953i, var_0.a), arg_0.xx), -vec2<i32>(-1i, -21102i))));
    var_0 = Struct_1(2147483647i);
    var_1 = -_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_div_i32(var_0.a, -2147483647i) | var_1.x, firstLeadingBit(var_1.x << (u_input.c % 32u))), vec2<i32>(_wgslsmith_mult_i32(~(-25676i), var_0.a), abs(var_0.a) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 1u, 4294967295u), vec4<u32>(u_input.c, 21133u, 7760u, 4294967295u)) % 32u)));
    let var_2 = vec3<i32>((-_wgslsmith_dot_vec3_i32(vec3<i32>(-25088i, var_1.x, var_1.x), vec3<i32>(71352i, 41868i, -1i)) ^ -(~var_1.x)) ^ (_wgslsmith_add_i32(~var_0.a, 2147483647i) ^ 0i), var_1.x, -var_0.a);
    return ~abs(vec3<u32>(~1u, 1u, 1u));
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_2 {
    let var_0 = !vec4<bool>(arg_1, arg_1, select(true, true | all(vec3<bool>(arg_1, true, arg_1)), true), ~_wgslsmith_mod_u32(29237u, 39751u) < u_input.b);
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-219f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_2 = _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(14244u, u_input.b, 0u), func_3(vec3<bool>(arg_1, false, var_0.x), arg_1 & var_0.x) & ~(~u_input.a.yyz)), vec3<u32>(u_input.a.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.b), vec2<u32>(44707u, u_input.a.x)) % 32u), u_input.c, abs(~u_input.c)) & vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.c, 81230u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.c, 83019u, u_input.a.x), vec4<u32>(66749u, u_input.b, u_input.b, 1u))), u_input.a.x, 70788u));
    var var_3 = false;
    var var_4 = Struct_2(Struct_1(_wgslsmith_sub_i32(2166i, ~min(1i, 1i))), arg_0, Struct_1(2147483647i), 0i);
    return Struct_2(Struct_1(arg_0), ~(-2147483647i >> (1u % 32u)), var_4.a, countOneBits(var_4.b));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = ~(u_input.b << (~u_input.a.x % 32u));
    var_0 = ~_wgslsmith_mod_u32(57180u & u_input.a.x, countOneBits(~66674u));
    var_0 = _wgslsmith_dot_vec3_u32(max(~vec3<u32>(u_input.b, 87981u, 0u), u_input.a.xzx), _wgslsmith_mult_vec3_u32(u_input.a.yzw, ~min(u_input.a.zwx, u_input.a.yxw))) & _wgslsmith_div_u32(1u, countOneBits(u_input.a.x));
    var_0 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, _wgslsmith_add_u32(select(firstTrailingBit(0u), _wgslsmith_add_u32(u_input.a.x, u_input.a.x), false), ~1u)), firstLeadingBit(abs(func_3(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), all(vec4<bool>(false, true, true, true))).x)));
    var_0 = 1u;
    return arg_0.c;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    return func_4(Struct_2(func_2(2147483647i, true || all(vec4<bool>(false, true, true, false))).c, arg_1.a, arg_0.a, arg_1.a));
}

fn func_1() -> f32 {
    let var_0 = Struct_3(func_5(Struct_2(Struct_1(max(0i, 22125i)), ~(-11591i) >> (abs(u_input.b) % 32u), func_4(func_2(2147483647i, true)), _wgslsmith_mult_i32(1i, ~(-6772i))), func_4(Struct_2(Struct_1(-16630i), _wgslsmith_dot_vec4_i32(vec4<i32>(38262i, 0i, 0i, -1i), vec4<i32>(-2147483647i, -3514i, 32651i, -10701i)), func_2(-4515i, false).c, ~(-18843i)))), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(true, true), all(select(vec2<bool>(true, true), vec2<bool>(false, true), true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1390f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1361f + -503f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-342f, -777f) * _wgslsmith_f_op_f32(f32(-1f) * -735f))), u_input.a);
    let var_1 = vec2<u32>(var_0.d.x, ~(u_input.c >> (u_input.c % 32u))) & _wgslsmith_add_vec2_u32(max(firstLeadingBit(vec2<u32>(u_input.a.x, 0u)), vec2<u32>(reverseBits(u_input.a.x), 1u)), func_3(vec3<bool>(var_0.b.x, any(vec3<bool>(true, var_0.b.x, var_0.b.x)), any(vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x))), false).xy);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.c)));
}

fn func_6(arg_0: f32, arg_1: vec2<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(316f, -126f)), _wgslsmith_div_f32(arg_0, arg_0))))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0))))) + arg_0) - _wgslsmith_f_op_f32(func_1()));
    var var_1 = vec2<f32>(arg_0, -372f);
    var_0 = 137f;
    var var_2 = max(arg_1.x, func_5(func_2(-2147483647i, false), func_4(Struct_2(Struct_1(1i), _wgslsmith_dot_vec2_i32(arg_1, arg_1), Struct_1(arg_1.x), arg_1.x))).a);
    return !(!(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1031f, arg_0)), -1000f) >= _wgslsmith_f_op_f32(ceil(-871f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1())))), reverseBits(vec2<i32>(1i, ~2290i)));
    let var_1 = !vec3<bool>(var_0, var_0, false);
    var var_2 = u_input.a.wzy;
    var var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -2445f, 492f, 1577f) * vec4<f32>(-138f, 1296f, 1134f, -630f)))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-276f, 1833f, -512f, -167f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(573f, -379f, -1051f, 1000f) + vec4<f32>(-1557f, -962f, -1441f, -235f)))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(462f + -460f), _wgslsmith_div_f32(1000f, 131f), -1264f, 365f), vec4<f32>(911f, 1335f, 553f, _wgslsmith_f_op_f32(-2114f + -1000f))))))));
    var_2 = firstLeadingBit(vec3<u32>(1907u, ~6587u, ~(~1u)) & vec3<u32>(firstLeadingBit(var_2.x), 1u, ~(~var_2.x)));
    var_2 = vec3<u32>(var_2.x, reverseBits(_wgslsmith_div_u32(var_2.x, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, var_2.x, 0u), vec3<u32>(4294967295u, var_2.x, 38654u))))), _wgslsmith_add_u32(~u_input.b, ~countOneBits(57011u)) | u_input.b);
    var var_4 = Struct_3(Struct_1(12692i), !(!vec2<bool>(var_0, !var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3.x, var_3.x, var_1.x)) + -798f)), ~_wgslsmith_mod_vec4_u32(u_input.a, ~u_input.a ^ _wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(0u, u_input.c, 38886u, 85646u))));
    let x = u_input.a;
    s_output = StorageBuffer(88828u, _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(countOneBits(38619u), ~1u), vec2<u32>(u_input.a.x, _wgslsmith_mod_u32(var_2.x, 11404u))), ~(~u_input.a.ww)), -920f);
}

