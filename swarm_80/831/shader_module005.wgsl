struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec4<bool>) -> f32 {
    var var_0 = u_input.a;
    var_0 = firstTrailingBit(-29606i);
    var_0 = ~u_input.a;
    var var_1 = ~(~(2147483647i ^ ~_wgslsmith_mult_i32(u_input.a, -1i)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_div_f32(1443f, -1534f)) * _wgslsmith_f_op_f32(-443f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(808f - -1902f), _wgslsmith_f_op_f32(482f * -1753f))))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(908f + _wgslsmith_f_op_f32(1f * 1838f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -834f))))))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_3, arg_3: Struct_2) -> i32 {
    var var_0 = arg_0;
    var var_1 = Struct_3((arg_2.a | (arg_2.b.zx >> (vec2<u32>(arg_3.c, 0u) % vec2<u32>(32u)))) | -vec2<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a, -22212i), vec3<i32>(-25452i, -2147483647i, arg_2.b.x))), arg_2.b);
    var var_2 = _wgslsmith_f_op_f32(sign(988f));
    let var_3 = !(!(!select(vec4<bool>(arg_0.a.x, var_0.a.x, false, arg_0.a.x), !vec4<bool>(arg_0.a.x, true, var_0.a.x, arg_0.a.x), any(vec2<bool>(arg_0.a.x, false)))));
    var_1 = arg_2;
    return _wgslsmith_sub_i32(abs(arg_1), reverseBits(var_1.a.x));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_3 {
    var var_0 = Struct_1(arg_0.a);
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<bool>(arg_0.a.x, arg_1, var_0.a.x, true)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, 698f)) - _wgslsmith_f_op_f32(-676f * 1417f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-656f + 226f), _wgslsmith_div_f32(-1277f, -749f))) - 1659f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1736f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(944f + _wgslsmith_f_op_f32(-700f - _wgslsmith_f_op_f32(floor(-890f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -3014f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1364f) + _wgslsmith_f_op_f32(f32(-1f) * -1233f)))));
    var var_2 = Struct_1(select(select(!select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(arg_0.a.x, arg_1, false), vec3<bool>(arg_0.a.x, arg_0.a.x, true)), vec3<bool>(true, true, true), true), var_0.a, arg_0.a));
    var_0 = arg_0;
    var var_3 = Struct_3(vec2<i32>(u_input.a, 46607i), -(~(-vec3<i32>(1i, 1i, 1i))));
    return Struct_3(vec2<i32>(1i, -10245i), ~vec3<i32>(-1i, -1i & func_3(Struct_1(arg_0.a), var_3.b.x, Struct_3(vec2<i32>(1i, -34402i), var_3.b), Struct_2(vec3<f32>(var_1.x, var_1.x, var_1.x), vec4<u32>(4294967295u, 1u, 0u, 1u), 4294967295u)), -2147483647i));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>) -> vec4<f32> {
    let var_0 = _wgslsmith_div_f32(-305f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1f)))));
    let var_1 = vec2<bool>(!select(true, all(vec4<bool>(true, true, true, true)), (arg_0.b.x > arg_1.x) & true), all(vec4<bool>(true, any(vec4<bool>(false, true, true, true)), true, true)) == !any(vec4<bool>(true, false, false, false)));
    let var_2 = !(!select(select(!vec3<bool>(var_1.x, var_1.x, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), all(vec2<bool>(true, var_1.x))), select(select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, var_1.x, var_1.x), var_1.x), !vec3<bool>(true, var_1.x, false), var_1.x), var_1.x));
    var var_3 = Struct_1(!(!vec3<bool>(true, true, false || var_1.x)));
    var var_4 = select(vec4<bool>(false, all(vec4<bool>(var_3.a.x, var_1.x, any(vec4<bool>(false, var_2.x, var_1.x, var_2.x)), true)), false, any(select(!vec4<bool>(var_1.x, false, false, true), !vec4<bool>(true, var_1.x, true, var_2.x), vec4<bool>(false, var_1.x, var_1.x, var_2.x)))), !vec4<bool>(false, all(vec3<bool>(false, true, var_1.x)), var_3.a.x, false), !select(select(select(vec4<bool>(var_3.a.x, var_2.x, var_3.a.x, true), vec4<bool>(var_1.x, true, var_3.a.x, false), vec4<bool>(true, var_3.a.x, false, var_3.a.x)), !vec4<bool>(var_1.x, true, var_3.a.x, false), !vec4<bool>(false, false, var_3.a.x, false)), !select(vec4<bool>(var_2.x, true, true, var_1.x), vec4<bool>(false, true, false, true), var_3.a.x), true));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0, var_0, var_0, 1087f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 13282i;
    let var_1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-281f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1512f, -656f) - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-2590f, -1283f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1244f, 263f)), _wgslsmith_f_op_f32(step(1000f, -1039f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-545f + -1049f)))), _wgslsmith_f_op_vec4_f32(func_4(func_1(Struct_1(vec3<bool>(true, true, true)), true && all(vec4<bool>(false, true, false, false))), vec4<i32>(0i, u_input.a, u_input.a, -2147483647i)))));
    var var_2 = firstTrailingBit(vec3<u32>(~abs(0u) ^ _wgslsmith_dot_vec3_u32(min(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(0u, 4294967295u, 39755u)), abs(vec3<u32>(57254u, 0u, 0u))), ~min(_wgslsmith_mod_u32(4294967295u, 1u), 1u), 1u));
    var_0 = -1i;
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2014f) + -1076f))), -1546f, (~_wgslsmith_mult_u32(var_2.x, 26371u) <= _wgslsmith_add_u32(1u, 4294967295u >> (var_2.x % 32u))) || any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(1796f, -vec4<i32>(-u_input.a, ~u_input.a, -1i, -1i) | _wgslsmith_clamp_vec4_i32(abs(-vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a)), vec4<i32>(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(9641i, u_input.a, u_input.a)), _wgslsmith_mod_i32(u_input.a, 0i), 2147483647i >> (var_2.x % 32u)), (vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i) | vec4<i32>(u_input.a, -49162i, 2147483647i, u_input.a)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(var_2.x, var_2.x, var_2.x, 0u), vec4<u32>(80025u, 138470u, 39103u, var_2.x)) % vec4<u32>(32u))), ~(-(u_input.a << (1u % 32u)) << (~1u % 32u)), ~vec4<u32>(0u, var_2.x, var_2.x, var_2.x), _wgslsmith_dot_vec4_u32(select(vec4<u32>(_wgslsmith_add_u32(4294967295u, var_2.x), _wgslsmith_div_u32(var_2.x, 27815u), ~var_2.x, 500u), select(firstLeadingBit(vec4<u32>(var_2.x, var_2.x, 4294967295u, 0u)), ~vec4<u32>(7925u, var_2.x, var_2.x, var_2.x), true), all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true)))), ~(~vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x) >> (firstTrailingBit(vec4<u32>(4294967295u, 0u, var_2.x, var_2.x)) % vec4<u32>(32u)))));
}

