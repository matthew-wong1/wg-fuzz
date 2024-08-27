struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 12> = array<vec3<i32>, 12>(vec3<i32>(1i, 0i, -1i), vec3<i32>(38818i, -22032i, -43349i), vec3<i32>(-25568i, 1i, 37295i), vec3<i32>(-31512i, 2147483647i, 21018i), vec3<i32>(-1i, -4627i, 10427i), vec3<i32>(-12133i, i32(-2147483648), 59479i), vec3<i32>(-6051i, 2012i, 0i), vec3<i32>(-1i, 0i, 3556i), vec3<i32>(56963i, 2147483647i, 22590i), vec3<i32>(3988i, 42067i, i32(-2147483648)), vec3<i32>(-1i, -1i, 13049i), vec3<i32>(0i, 54721i, -1i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = select(!select(vec3<bool>(true, u_input.c.x <= u_input.b.x, arg_0), !vec3<bool>(false, false, arg_0), !all(vec4<bool>(arg_0, arg_0, false, arg_0))), !(!select(!vec3<bool>(true, true, arg_0), select(vec3<bool>(arg_0, true, false), vec3<bool>(arg_0, arg_0, arg_0), arg_0), !vec3<bool>(arg_0, true, false))), vec3<bool>(-1060f != _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(553f)))), all(select(vec2<bool>(true, true), select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0)), !arg_0)), any(vec3<bool>(u_input.c.x > u_input.c.x, arg_0, !arg_0))));
    let var_1 = vec2<u32>(_wgslsmith_add_u32(64982u ^ u_input.a.x, 101758u), u_input.e);
    global0 = array<vec3<i32>, 12>();
    var var_2 = Struct_1(10712i >> (var_1.x % 32u), vec4<i32>(u_input.c.x, 1i, _wgslsmith_mod_i32(~u_input.b.x, -u_input.c.x), ~u_input.b.x) >> (u_input.d % vec4<u32>(32u)), arg_0);
    global0 = array<vec3<i32>, 12>();
    return Struct_1(abs(u_input.b.x), var_2.b, any(vec3<bool>(any(vec3<bool>(true, var_2.c, false)), any(vec3<bool>(true, true, true)), arg_0)) || any(select(vec3<bool>(false, false, arg_0), select(vec3<bool>(true, var_0.x, var_2.c), vec3<bool>(true, false, false), true), !vec3<bool>(var_0.x, true, true))));
}

fn func_3(arg_0: u32, arg_1: f32) -> u32 {
    let var_0 = 7764u;
    let var_1 = select(select(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))), vec2<bool>(_wgslsmith_f_op_f32(round(arg_1)) < arg_1, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), false)), !vec2<bool>(u_input.c.x < u_input.b.x, !select(false, false, true)), vec2<bool>(true, true));
    global0 = array<vec3<i32>, 12>();
    var var_2 = u_input.d.xxw;
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, _wgslsmith_f_op_f32(ceil(arg_1)), _wgslsmith_f_op_f32(arg_1 + arg_1)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-237f, -709f, arg_1), vec3<f32>(-1305f, arg_1, 1000f), vec3<bool>(true, var_1.x, false))))))));
    return ~(~arg_0);
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: u32, arg_3: u32) -> f32 {
    global0 = array<vec3<i32>, 12>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -455f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(step(arg_0.a.x, -246f))), _wgslsmith_f_op_f32(-arg_0.a.x));
    let var_1 = max(_wgslsmith_div_u32(0u, arg_1.x << ((func_3(17950u, 1613f) | arg_2) % 32u)), arg_1.x);
    let var_2 = ~1u;
    global0 = array<vec3<i32>, 12>();
    return var_0.x;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    global0 = array<vec3<i32>, 12>();
    global0 = array<vec3<i32>, 12>();
    global0 = array<vec3<i32>, 12>();
    let var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * arg_2.a.x) * -270f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2047f), _wgslsmith_f_op_f32(min(arg_1, arg_3.a.x)))))), arg_3.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(vec3<f32>(arg_3.a.x, arg_2.a.x, 747f)), vec4<u32>(0u, u_input.a.x, 20456u, 27759u) >> (vec4<u32>(u_input.d.x, u_input.e, 6575u, u_input.a.x) % vec4<u32>(32u)), ~66644u, select(u_input.a.x, u_input.a.x, arg_0.c))))));
    var var_1 = reverseBits(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(min(vec4<u32>(u_input.d.x, u_input.a.x, u_input.e, u_input.a.x), vec4<u32>(u_input.e, u_input.e, u_input.a.x, 34630u)), ~vec4<u32>(4294967295u, u_input.a.x, u_input.d.x, u_input.d.x)) >> (~countOneBits(vec4<u32>(0u, u_input.e, u_input.e, 8933u)) % vec4<u32>(32u)), vec4<u32>(9300u, 42780u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, u_input.a.x, u_input.e), vec3<u32>(u_input.d.x, 10606u, u_input.e)) | u_input.e, 29094u)));
    return Struct_2(arg_3.a);
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: bool) -> u32 {
    global0 = array<vec3<i32>, 12>();
    return 0u;
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: u32) -> Struct_1 {
    let var_0 = _wgslsmith_div_i32(21213i, _wgslsmith_mod_i32(1i, u_input.b.x));
    var var_1 = vec4<u32>(~_wgslsmith_mult_u32(4294967295u, func_3(0u, -823f)), 78148u, ~(~(~4294967295u >> (_wgslsmith_sub_u32(16564u, u_input.a.x) % 32u))), ~arg_0);
    let var_2 = arg_1;
    var_1 = u_input.d;
    var var_3 = !arg_2;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 12>();
    let var_0 = func_6(func_5(func_4(func_1(false), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-870f, -580f), _wgslsmith_f_op_f32(func_2(Struct_2(vec3<f32>(-1655f, 787f, -1607f)), u_input.d, 1u, 58u)), true)), Struct_2(vec3<f32>(579f, -862f, 3780f)), Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(-1919f, -902f, -1000f), vec3<f32>(970f, -1832f, -2065f)))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), u_input.e != u_input.e), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), all(vec4<bool>(true, true, false, true)))), !any(vec4<bool>(true, true, true, true))), Struct_1(-u_input.c.x, firstTrailingBit(_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.b.x, u_input.c.x, 2147483647i, u_input.b.x), _wgslsmith_sub_vec4_i32(vec4<i32>(-7912i, u_input.b.x, u_input.b.x, 0i), vec4<i32>(u_input.b.x, u_input.b.x, 1i, -6279i)))), (_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.b.x), u_input.c.xx) >> (~4294967295u % 32u)) <= reverseBits(1i)), select(vec2<bool>(true, true), vec2<bool>(func_1(any(vec2<bool>(true, true))).c, any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true))), !(all(vec2<bool>(false, true)) || any(vec2<bool>(false, false)))), ~(~(u_input.d.x ^ func_3(23923u, 156f))));
    let var_1 = var_0.b.x;
    var var_2 = var_0;
    var var_3 = !(!select(false, true, all(select(vec2<bool>(var_0.c, var_0.c), vec2<bool>(var_2.c, true), var_0.c))));
    var var_4 = _wgslsmith_add_vec3_u32(~(~(_wgslsmith_mult_vec3_u32(u_input.d.wyx, u_input.d.zzz) << (vec3<u32>(0u, 1u, 2419u) % vec3<u32>(32u)))), u_input.d.yyz);
    let var_5 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1102f, -181f, -457f))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_2(vec3<f32>(-710f, 163f, 390f)), vec4<u32>(var_4.x, var_4.x, 4294967295u, 1u), var_4.x, 32370u)), _wgslsmith_f_op_f32(func_2(Struct_2(vec3<f32>(1923f, 1000f, -198f)), vec4<u32>(var_4.x, 0u, u_input.a.x, var_4.x), u_input.e, 1u)), 900f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1154f, 1287f, -234f), vec3<f32>(1729f, -1612f, 1456f), false)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-841f, 1000f, -1016f), vec3<f32>(-1000f, 668f, 1052f)))))));
    let var_6 = Struct_1(~(-2147483647i), func_1(false).b, !func_6(u_input.e, func_6(_wgslsmith_mult_u32(var_4.x, 9460u), var_0, select(vec2<bool>(false, false), vec2<bool>(var_0.c, false), vec2<bool>(var_2.c, var_2.c)), ~35523u), !select(vec2<bool>(var_0.c, false), vec2<bool>(var_2.c, var_2.c), vec2<bool>(false, false)), 1u).c);
    global0 = array<vec3<i32>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(~10722u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -928f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.a.x - var_5.a.x)))), ~firstLeadingBit(vec3<u32>(u_input.e, var_4.x, _wgslsmith_add_u32(0u, var_4.x))), vec2<u32>(var_4.x << ((~var_4.x << (u_input.d.x % 32u)) % 32u), var_4.x));
}

