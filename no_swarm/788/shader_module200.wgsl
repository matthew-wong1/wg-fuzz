struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: u32,
}

struct Struct_4 {
    a: i32,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct Struct_5 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec3<f32>) -> vec4<bool> {
    return vec4<bool>(!(!any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), 4294967295u >= arg_1.x, true, all(vec2<bool>(true, true)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: f32) -> f32 {
    var var_0 = Struct_1(arg_0.x, ~(u_input.a >> (u_input.b.x % 32u)) ^ ~reverseBits(u_input.a), !select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), false), firstTrailingBit(u_input.b.x) > _wgslsmith_mod_u32(45464u, u_input.a)));
    var_0 = Struct_1(416f, ~(~(~(var_0.b ^ var_0.b))), !vec4<bool>(var_0.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b, u_input.b.x), vec2<u32>(29021u, u_input.b.x)) >= 0u, var_0.c.x, any(select(vec4<bool>(false, true, true, false), vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x), var_0.c.x))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(f32(-1f) * -511f)), _wgslsmith_f_op_f32(max(arg_2, arg_2)))) - _wgslsmith_f_op_f32(-arg_2)), 925u, var_0.c);
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), 1291u, !select(select(func_3(vec4<f32>(-259f, 1000f, var_0.a, var_0.a), vec4<u32>(u_input.b.x, 266u, 5450u, var_0.b), Struct_2(u_input.a, vec3<f32>(-1763f, arg_2, arg_2)), vec3<f32>(arg_0.x, arg_2, arg_2)), !vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x), var_0.c), select(var_0.c, !vec4<bool>(true, var_0.c.x, var_0.c.x, true), var_0.c), !(!var_0.c)));
    var var_1 = !var_0.c.zx;
    return _wgslsmith_f_op_f32(arg_0.x - -784f);
}

fn func_4(arg_0: f32, arg_1: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-arg_1.b.x);
    let var_1 = vec4<i32>(firstLeadingBit(u_input.c.x), 1i, -(~u_input.c.x), -1i);
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 276f, -1775f, 631f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.b.x, 1314f, arg_0, arg_0)))), vec4<f32>(_wgslsmith_div_f32(-1060f, arg_0), _wgslsmith_f_op_f32(floor(arg_1.b.x)), arg_0, _wgslsmith_f_op_f32(-arg_0)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, -580f, 967f, arg_1.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1578f, -268f, arg_0, 1173f) - vec4<f32>(-207f, -622f, arg_1.b.x, -759f))))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.b.x, 1927f) - _wgslsmith_f_op_f32(arg_0 + 412f)), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(min(1000f, arg_1.b.x))), arg_1.a)), _wgslsmith_f_op_f32(f32(-1f) * -1541f), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0, -1319f), vec2<f32>(arg_1.b.x, arg_1.b.x))), _wgslsmith_sub_vec4_i32(var_1, var_1), arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0))) * arg_1.b.x))));
    var var_3 = Struct_2(38659u, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_2.wyz - vec3<f32>(_wgslsmith_f_op_f32(arg_1.b.x + arg_1.b.x), -610f, arg_1.b.x)), vec3<f32>(arg_1.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_2.x)), _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) - _wgslsmith_f_op_f32(-arg_1.b.x))), _wgslsmith_add_u32(u_input.b.x, u_input.a) > abs(u_input.b.x << (38949u % 32u)))));
    var var_4 = arg_1.a;
    return _wgslsmith_mod_u32(arg_1.c, arg_1.c);
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = vec3<bool>(false, false, false);
    let var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(595u, 1u, 0u, u_input.b.x), vec4<u32>(54915u, 37012u, 4294967295u, 1u))), ~_wgslsmith_mod_u32(u_input.a, 4294967295u)), ~u_input.a, ~68169u), ~vec3<u32>(0u, (arg_0 & arg_0) ^ (7787u << (0u % 32u)), countOneBits(countOneBits(arg_0))));
    var var_2 = ~(~abs(max(~vec3<u32>(var_1.x, 69273u, u_input.a), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 25029u, 4294967295u), var_1))));
    var_2 = select(vec3<u32>(~var_2.x, _wgslsmith_mod_u32(func_4(_wgslsmith_f_op_f32(func_2(vec2<f32>(-2249f, 978f), vec4<i32>(u_input.c.x, -2147483647i, 22833i, 11799i), -591f)), Struct_3(true, vec3<f32>(-298f, 1925f, -474f), 1u)), _wgslsmith_sub_u32(var_1.x, 0u)), ~(arg_0 >> (var_1.x % 32u)) & (u_input.a >> (select(arg_0, arg_0, false) % 32u))), var_1, true);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1740f - _wgslsmith_div_f32(-1000f, -1072f))), -1967f)));
    return Struct_1(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-373f, -595f)) * -1424f)))), ~(~(~var_1.x)), select(select(func_3(vec4<f32>(-965f, -975f, -333f, -1076f), vec4<u32>(1u, var_1.x, 8186u, 1u) << (vec4<u32>(var_2.x, 1u, 1u, var_1.x) % vec4<u32>(32u)), Struct_2(4294967295u, vec3<f32>(-1000f, 324f, 442f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1257f, 484f, 1090f), vec3<f32>(-1165f, -156f, 797f)))), func_3(_wgslsmith_div_vec4_f32(vec4<f32>(-577f, 653f, -1000f, 395f), vec4<f32>(-217f, 890f, 866f, 646f)), ~vec4<u32>(u_input.a, arg_0, 1u, var_2.x), Struct_2(var_2.x, vec3<f32>(-342f, 1000f, -885f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(337f, -544f, 220f) - vec3<f32>(-1000f, -399f, -969f))), select(!vec4<bool>(var_0.x, var_0.x, true, var_0.x), !vec4<bool>(var_0.x, false, var_0.x, true), !var_0.x)), select(vec4<bool>(var_0.x, select(var_0.x, true, false), var_0.x, var_0.x), vec4<bool>(!var_0.x, any(vec4<bool>(var_0.x, false, var_0.x, true)), true, true), !(!vec4<bool>(false, true, true, var_0.x))), var_0.x));
}

fn func_5(arg_0: Struct_1) -> bool {
    let var_0 = 478f;
    var var_1 = var_0;
    var_1 = -1414f;
    var var_2 = ~vec4<u32>(_wgslsmith_mult_u32(~0u & _wgslsmith_add_u32(u_input.a, 0u), _wgslsmith_mod_u32(~1u, u_input.a)), firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(34057u, arg_0.b, 59258u), vec3<u32>(29940u, u_input.a, arg_0.b)) << ((arg_0.b & u_input.b.x) % 32u)), arg_0.b, 1u);
    let var_3 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(select(arg_0.a, _wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(-1745f + -1711f)), arg_0.c.x)), 1f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, -964f))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1710f, arg_0.a)))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -273f)), _wgslsmith_f_op_f32(-604f + _wgslsmith_f_op_f32(var_0 - arg_0.a)))), true));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(~_wgslsmith_mult_u32(u_input.b.x, 37506u)));
    var_0 = any(vec4<bool>(25285i != u_input.c.x, !((u_input.b.x >= u_input.b.x) && true), true, !(u_input.a >= u_input.b.x)));
    var_0 = func_5(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-530f + 1000f) - _wgslsmith_f_op_f32(sign(984f))) - -1365f), min(~31861u, ~func_4(243f, Struct_3(false, vec3<f32>(-713f, 107f, -1000f), 15235u))), vec4<bool>(false, _wgslsmith_f_op_f32(sign(-1591f)) <= _wgslsmith_div_f32(853f, -1927f), true, all(vec3<bool>(false, true, true)) && true)));
    var_0 = false;
    let var_1 = Struct_4(reverseBits(abs(u_input.c.x) & 0i) << (u_input.a % 32u), vec4<i32>(_wgslsmith_mult_i32(~1i, _wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, u_input.c.x)) | ~firstLeadingBit(u_input.c.x), u_input.c.x, firstTrailingBit(_wgslsmith_add_i32(~(-1i), -2147483647i ^ u_input.c.x)), i32(-1i) * -firstTrailingBit(1i)), !func_3(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1168f), _wgslsmith_f_op_f32(2129f * -1031f), -1042f, -1000f), ~vec4<u32>(12243u, u_input.b.x, u_input.b.x, 1u) | countOneBits(vec4<u32>(u_input.a, u_input.a, 27612u, 27448u)), Struct_2(1u, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1159f, 472f, 427f), vec3<f32>(1483f, -1247f, -159f)))), vec3<f32>(_wgslsmith_f_op_f32(select(-512f, 1450f, false)), 209f, _wgslsmith_f_op_f32(f32(-1f) * -2061f))).zwz);
    let var_2 = select(var_1.a, u_input.c.x, -641f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1446f, -412f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, 1000f)) + -375f)));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(countOneBits(min(vec3<u32>(0u, u_input.b.x, 8036u), vec3<u32>(u_input.b.x, u_input.b.x, 0u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1015f))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -611f), _wgslsmith_f_op_f32(283f - 1997f)))));
}

