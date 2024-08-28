struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: u32,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1027f, -432f, -723f, -1000f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> vec2<bool> {
    let var_0 = vec2<bool>(false, any(vec3<bool>(true, true, true)));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-588f, global0.x, global0.x, global0.x) * vec4<f32>(global0.x, global0.x, global0.x, -970f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, global0.x, global0.x, global0.x))))));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, -1443f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(min(409f, global0.x)))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1887f, global0.x, 382f, -192f))))))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, global0.x, 198f, 111f)), vec4<f32>(659f, -279f, 2329f, -1515f), false)) * vec4<f32>(-804f, _wgslsmith_f_op_f32(ceil(999f)), _wgslsmith_f_op_f32(abs(-348f)), _wgslsmith_f_op_f32(trunc(822f)))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-1309f - -807f), _wgslsmith_f_op_f32(max(var_1.x, var_1.x)), _wgslsmith_f_op_f32(global0.x + global0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 784f, 1164f, 228f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 936f, var_1.x, var_1.x)))))));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1381f))))), var_1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1000f)), -171f)), var_1.x) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -382f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x * global0.x), _wgslsmith_f_op_f32(global0.x * var_1.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1733f * _wgslsmith_f_op_f32(260f + global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2003f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -186f) + _wgslsmith_f_op_f32(-1232f * global0.x)))));
    return var_0;
}

fn func_3() -> i32 {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(trunc(167f))), _wgslsmith_clamp_u32(u_input.d, u_input.d, u_input.b) >> (_wgslsmith_div_u32(_wgslsmith_mult_u32(~30103u, u_input.d), _wgslsmith_add_u32(46167u, 12306u << (u_input.a % 32u))) % 32u), u_input.d, !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))), vec2<bool>(all(vec4<bool>(true, false, true, true)), true)), Struct_1(all(vec2<bool>(false, true)) || false, any(vec3<bool>(global0.x != global0.x, all(vec2<bool>(true, false)), false)), vec3<bool>(all(vec2<bool>(true, false)) && all(vec4<bool>(true, false, false, true)), false, true)));
    var var_1 = _wgslsmith_mult_i32(u_input.c.x, 16208i);
    let var_2 = select(select(!select(select(var_0.e.c, var_0.e.c, var_0.d.x), select(vec3<bool>(var_0.d.x, true, var_0.d.x), vec3<bool>(var_0.d.x, var_0.d.x, true), vec3<bool>(var_0.d.x, var_0.e.a, var_0.e.c.x)), var_0.e.c), vec3<bool>(!(-819f != var_0.a.a), 15042u > u_input.b, false), all(select(!vec3<bool>(var_0.e.a, true, false), var_0.e.c, vec3<bool>(var_0.d.x, false, false)))), !select(select(select(var_0.e.c, vec3<bool>(var_0.e.a, var_0.d.x, var_0.e.c.x), true), vec3<bool>(true, false, var_0.e.a), vec3<bool>(true, var_0.e.a, true)), var_0.e.c, vec3<bool>(select(false, var_0.d.x, var_0.d.x), u_input.a > 0u, false)), vec3<bool>(var_0.e.a, var_0.d.x, var_0.e.c.x));
    let var_3 = -1i | _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c.x, -22200i, -1145i), _wgslsmith_mult_vec3_i32(vec3<i32>(18116i, 74572i, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)) | abs(u_input.c.wxw)), ((19010i >> (u_input.a % 32u)) << (1u % 32u)) & _wgslsmith_add_i32(abs(2147483647i), 0i));
    let var_4 = -1254f;
    return u_input.c.x;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_5) -> bool {
    var var_0 = true;
    let var_1 = _wgslsmith_mod_i32(i32(-1i) * -38763i, min(u_input.c.x, func_3()));
    let var_2 = ~vec2<u32>(abs(1u), max(countOneBits(u_input.a), abs(arg_0.c))) | select(vec2<u32>(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, 84735u, arg_3.c), vec4<u32>(u_input.d, u_input.d, u_input.a, 4294967295u))), abs(~vec2<u32>(arg_0.c, 18349u)) | ~firstTrailingBit(vec2<u32>(837u, arg_0.b)), arg_0.d.x);
    var_0 = any(vec3<bool>(true, false, all(arg_0.e.c)));
    var var_3 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-379f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_3.d.a)))), _wgslsmith_f_op_f32(-arg_3.b.a.a), arg_3.b.a.a)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-250f, -1000f, global0.x, -531f) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, global0.x, 2218f, global0.x), vec4<f32>(-373f, 1000f, global0.x, 440f))))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(-1253f, 1103f), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x + global0.x)))), vec4<bool>(true, all(func_1()), func_2(Struct_3(Struct_2(1000f), u_input.b, u_input.a, vec2<bool>(false, false), Struct_1(true, false, vec3<bool>(false, true, true))), Struct_2(global0.x), Struct_2(global0.x), Struct_5(Struct_1(false, false, vec3<bool>(true, true, false)), Struct_3(Struct_2(-601f), u_input.b, u_input.a, vec2<bool>(true, false), Struct_1(true, true, vec3<bool>(false, false, false))), 44615u, Struct_2(1091f))) && all(vec3<bool>(false, false, false)), true))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-631f, _wgslsmith_div_f32(252f, global0.x), -245f, _wgslsmith_f_op_f32(-1101f * global0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 177f, -1098f, -153f))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, -696f, global0.x, global0.x))) + vec4<f32>(-1354f, -1105f, -679f, 1408f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 1451f, global0.x, global0.x) - vec4<f32>(282f, global0.x, global0.x, -1140f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 1155f, 1638f, global0.x) + vec4<f32>(global0.x, global0.x, -257f, global0.x)))))));
    var var_0 = firstTrailingBit(firstLeadingBit(u_input.c.x));
    let var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -2127f) + global0.ww))))));
    var var_2 = vec3<u32>(~(~1u), u_input.d, 1u);
    var var_3 = Struct_5(Struct_1(false, true, select(vec3<bool>(any(vec2<bool>(false, false)), any(vec2<bool>(true, true)), any(vec2<bool>(false, false))), vec3<bool>(true, true, -2147483647i < u_input.c.x), vec3<bool>(func_2(Struct_3(Struct_2(var_1.a.x), 61013u, 1u, vec2<bool>(true, true), Struct_1(true, true, vec3<bool>(false, true, false))), Struct_2(global0.x), Struct_2(-2051f), Struct_5(Struct_1(false, true, vec3<bool>(false, true, true)), Struct_3(Struct_2(global0.x), 0u, u_input.d, vec2<bool>(true, false), Struct_1(true, false, vec3<bool>(false, true, true))), 42229u, Struct_2(-570f))), true, true))), Struct_3(Struct_2(_wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(global0.x * 670f))), firstTrailingBit(u_input.b), ~(~u_input.d) << (u_input.d % 32u), vec2<bool>(true, true), Struct_1(all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), _wgslsmith_f_op_f32(-var_1.a.x) >= global0.x, vec3<bool>(u_input.c.x == u_input.c.x, any(vec2<bool>(true, true)), true))), firstLeadingBit(firstTrailingBit(var_2.x)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x))))));
    let var_4 = var_3.d;
    var_2 = ~select(vec3<u32>(var_3.c | 47976u, var_3.c, 0u), ~(~vec3<u32>(var_3.b.c, u_input.b, var_2.x)), var_3.b.d.x) ^ min(abs(vec3<u32>(4294967295u, u_input.d, 48081u) | _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, var_2.x, u_input.a), vec3<u32>(36358u, 4294967295u, 107106u))), ~select(~vec3<u32>(0u, 19742u, 34708u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.a), vec3<u32>(u_input.a, var_2.x, 19231u)), var_3.b.e.c));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(reverseBits(min(vec3<u32>(2159u, 4168u, 31112u), vec3<u32>(4294967295u, u_input.a, 1u)) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(20940u, 37496u, 4294967295u), vec3<u32>(4294967295u, 97631u, u_input.a), vec3<u32>(1u, var_2.x, 1u)))));
}

