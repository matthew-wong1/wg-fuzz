struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_3,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_dot_vec4_u32(countOneBits(select(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(4294967295u, 4294967295u, 1u, 28777u), vec4<bool>(true, true, true, true))), vec4<u32>(1u, 1u, 1u, 1u)) | select(firstTrailingBit(34398u), select(1u, 1u, true), select(!all(vec4<bool>(true, true, true, false)), true, true));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1781f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-472f, 1016f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))), select(~(_wgslsmith_sub_u32(var_0, 11804u) ^ select(77291u, 1u, true)), ~32982u, true), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(-224f, 1153f), _wgslsmith_f_op_f32(min(-856f, _wgslsmith_f_op_f32(abs(-1000f))))))));
    var var_2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1568f * var_1.b.x), -1990f), var_1.b, var_1.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.b) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.b * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, -220f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(615f, 600f)))))));
    var_1 = Struct_2(-1000f, vec2<f32>(var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-316f)))), 0u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(-1495f)), var_2.b.x)));
    var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -737f)), _wgslsmith_f_op_vec2_f32(max(var_1.d, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1303f - var_2.a)), 863f))), countOneBits(0u), var_2.d);
    return var_1.a;
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = Struct_3(_wgslsmith_dot_vec3_u32(~vec3<u32>(67465u, 4294967295u, ~1u), vec3<u32>(70342u, 1u, ~1u)), vec3<f32>(138f, _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-arg_0)), 458f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * -1344f) * _wgslsmith_f_op_f32(-arg_0)) + arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1467f))))), Struct_1(vec4<bool>(-1i >= u_input.b.x, false, any(vec3<bool>(true, true, false)) != false, all(vec2<bool>(false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, arg_0, true))))));
    var_0 = Struct_3(~1u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(var_0.b - var_0.b))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0, arg_0, var_0.c.x))) + vec3<f32>(1000f, 785f, var_0.d.b))))), var_0.b, Struct_1(!vec4<bool>(true, var_0.d.a.x | false, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - -789f))));
    let var_1 = -54692i ^ -((i32(-1i) * -u_input.b.x) ^ _wgslsmith_dot_vec3_i32(u_input.b, u_input.b));
    var_0 = Struct_3(4294967295u, vec3<f32>(-778f, var_0.b.x, var_0.b.x), vec3<f32>(_wgslsmith_f_op_f32(-var_0.d.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - -1387f)), var_0.d);
    let var_2 = reverseBits(reverseBits(~abs(_wgslsmith_add_vec2_u32(vec2<u32>(14345u, 1u), vec2<u32>(var_0.a, 0u)))));
    return Struct_2(arg_0, vec2<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-641f * -195f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1436f) + -907f)), 4294967295u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b.xy), _wgslsmith_f_op_vec2_f32(-var_0.b.xz)));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_2, arg_3: bool) -> i32 {
    let var_0 = _wgslsmith_sub_u32(~arg_2.c, 269u << (reverseBits(~arg_2.c) % 32u));
    var var_1 = all(vec4<bool>(arg_3, arg_3 && false, arg_3, !(var_0 < abs(19643u))));
    let var_2 = Struct_5(select(abs(vec3<u32>(83149u, arg_2.c, ~arg_2.c)), vec3<u32>(_wgslsmith_mult_u32(var_0, arg_2.c | 9512u), var_0, var_0), any(select(select(vec4<bool>(false, false, arg_3, arg_3), vec4<bool>(true, arg_3, true, false), vec4<bool>(true, false, true, arg_3)), select(vec4<bool>(arg_3, arg_3, false, false), vec4<bool>(arg_3, false, true, arg_3), true), vec4<bool>(true, arg_3, false, true)))), Struct_3(4294967295u, vec3<f32>(arg_2.b.x, _wgslsmith_f_op_f32(arg_2.a - _wgslsmith_f_op_f32(arg_2.a - arg_2.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(529f, 575f)) + arg_2.d.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.a), arg_2.d.x, -2430f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(245f, arg_2.b.x, arg_2.a) + vec3<f32>(-114f, -1096f, arg_2.a)))), Struct_1(!select(vec4<bool>(arg_3, false, false, false), vec4<bool>(true, true, arg_3, true), true), 713f)), vec2<i32>(-1i) * -(min(u_input.b.zy, vec2<i32>(-6251i, -2147483647i)) & firstTrailingBit(vec2<i32>(arg_0, -2147483647i))));
    let var_3 = var_2.b;
    var var_4 = _wgslsmith_div_f32(-229f, -507f);
    return -1i;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec3<bool>) -> f32 {
    var var_0 = vec2<i32>(arg_0.c.x, i32(-1i) * -func_4(u_input.a, 0i ^ arg_0.c.x, func_2(2061f), true));
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.e.b, _wgslsmith_f_op_f32(var_1.e.b + -1675f), true)), -600f)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(select(507f, 1f, true))), _wgslsmith_f_op_f32(-var_1.d.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-925f, -1323f, 1649f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2086f, -419f, -1000f)) + vec3<f32>(-969f, 1997f, -609f)))) * vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-740f * 1f), _wgslsmith_f_op_f32(-225f + _wgslsmith_f_op_f32(sign(2115f))), true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(Struct_4(vec3<u32>(143216u, 0u, 3719u), vec3<f32>(1539f, 1633f, -2430f), vec3<i32>(-1i, u_input.a, u_input.b.x), Struct_1(vec4<bool>(false, false, false, true), -1408f), Struct_1(vec4<bool>(false, true, false, true), -737f)), Struct_1(vec4<bool>(false, true, false, false), -443f), vec3<bool>(true, false, false), vec3<bool>(true, false, true))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-106f, -523f) - _wgslsmith_f_op_f32(func_3())) - _wgslsmith_f_op_f32(select(-883f, -2136f, true)))));
    let var_1 = false;
    let var_2 = Struct_1(!select(select(select(vec4<bool>(true, var_1, var_1, false), vec4<bool>(var_1, false, var_1, var_1), var_1), !vec4<bool>(var_1, true, var_1, true), all(vec3<bool>(true, true, false))), vec4<bool>(false, false, false, !var_1), vec4<bool>(var_1, !var_1, all(vec4<bool>(true, false, var_1, false)), var_1 & var_1)), _wgslsmith_f_op_f32(sign(var_0.x)));
    let var_3 = _wgslsmith_f_op_f32(-func_2(var_0.x).a);
    var var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.b, 578f, var_3, 451f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, -1505f, -684f, -427f))), !var_2.a.x)))), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_2.b), 1225f, _wgslsmith_div_f32(1090f, _wgslsmith_f_op_f32(var_3 * _wgslsmith_f_op_f32(474f * var_2.b)))));
    let var_5 = Struct_3(38229u, _wgslsmith_f_op_vec3_f32(-var_4.wxz), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(var_0.x - -1450f), _wgslsmith_f_op_f32(max(var_2.b, -1060f))) * vec3<f32>(var_4.x, _wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(step(121f, var_4.x)))))), Struct_1(var_2.a, 1843f));
    let x = u_input.a;
    s_output = StorageBuffer(-902f, ~(-1i), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.b, ~vec3<i32>(-1i, 15084i, 7815i)), 20955i, abs(u_input.a >> (1u % 32u))), u_input.b), u_input.b.x);
}

