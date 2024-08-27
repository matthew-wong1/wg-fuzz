struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec2<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 19> = array<vec3<bool>, 19>(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true));

var<private> global1: u32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(265f, -1275f, 1000f, 325f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -843f, -928f, -1512f) * vec4<f32>(-417f, 1000f, 1240f, -1392f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-648f, -119f, -663f, _wgslsmith_f_op_f32(1017f - 1637f)))));
    global1 = 0u;
    var var_1 = u_input.a;
    global1 = 1u;
    global1 = ~(~firstLeadingBit(70744u)) ^ _wgslsmith_mod_u32(~_wgslsmith_clamp_u32(1u >> (0u % 32u), 11285u, _wgslsmith_div_u32(17355u, 1u)), reverseBits(_wgslsmith_sub_u32(~28988u, ~32682u)));
    return _wgslsmith_f_op_f32(f32(-1f) * -1710f);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: i32) -> f32 {
    global0 = array<vec3<bool>, 19>();
    global1 = 117258u;
    let var_0 = !vec4<bool>(1i < -(~arg_2), true, true, true);
    let var_1 = arg_0;
    let var_2 = var_1.c.zwy;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(2120f + 963f), var_1.d);
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1563f, -1533f))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(-730f, -684f), vec2<f32>(-1000f, 366f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-987f, -1301f) - vec2<f32>(264f, -1161f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-340f, -1759f) - vec2<f32>(-771f, -2476f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1014f, 178f) * vec2<f32>(-1031f, -2337f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(func_2()), -593f), vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(23182u, -1602f, vec4<i32>(-35175i, u_input.a, 1i, 2147483647i), -1000f, 59600u), vec2<u32>(4294967295u, 61045u), u_input.a)), _wgslsmith_f_op_f32(-143f + -1481f))))));
    global1 = _wgslsmith_div_u32(1u, select(0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 4099u, 48377u), ~vec3<u32>(4294967295u, 22675u, 4294967295u)), (u_input.a >= 0i) && all(vec2<bool>(true, true)))) << (~(~_wgslsmith_dot_vec4_u32(vec4<u32>(17955u, 34301u, 0u, 20386u), ~vec4<u32>(4294967295u, 4294967295u, 73277u, 54642u))) % 32u);
    let var_1 = arg_0;
    global1 = ~firstLeadingBit(64521u);
    global1 = 18173u;
    return Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), -2189f)), _wgslsmith_mult_u32(~4294967295u, _wgslsmith_sub_u32(40937u, _wgslsmith_dot_vec4_u32(vec4<u32>(21552u, 58022u, 0u, 0u), ~vec4<u32>(9631u, 1u, 0u, 26081u)))), !select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))), select(vec2<bool>(true, true), vec2<bool>(true, false), all(vec4<bool>(false, true, true, true))), false), Struct_1(_wgslsmith_add_u32(abs(~4294967295u), ~1u), var_0.x, vec4<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.a, -15017i, u_input.a), vec3<i32>(2147483647i, u_input.a, u_input.a), vec3<bool>(false, false, true)), -vec3<i32>(-2147483647i, var_1, arg_0)), 2147483647i, -1i, -55806i), 1591f, _wgslsmith_dot_vec4_u32(select(~vec4<u32>(2741u, 4294967295u, 1u, 1u), firstLeadingBit(vec4<u32>(4835u, 119695u, 4294967295u, 57306u)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), true)), vec4<u32>(4294967295u, 0u, 1u, max(147u, 1u)))));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    var var_0 = vec3<i32>(arg_0.d.c.x, arg_2.c.x << (arg_2.a % 32u), u_input.a);
    var var_1 = firstLeadingBit(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(abs(arg_2.c.x), _wgslsmith_sub_i32(var_0.x, -2147483647i)), ~arg_2.c.yz ^ (vec2<i32>(var_0.x, var_0.x) << (vec2<u32>(arg_0.b, arg_2.a) % vec2<u32>(32u)))), vec2<i32>(arg_2.c.x, var_0.x)));
    var_0 = _wgslsmith_clamp_vec3_i32(firstLeadingBit(abs(_wgslsmith_sub_vec3_i32(reverseBits(arg_2.c.xzx), vec3<i32>(0i, -1308i, var_0.x) << (vec3<u32>(arg_2.e, 71147u, arg_2.e) % vec3<u32>(32u))))), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(~arg_2.c.xyy, arg_0.d.c.yzy), arg_0.d.c.zxz), ~vec3<i32>(-2147483647i ^ firstTrailingBit(u_input.a), -2147483647i, var_0.x & u_input.a));
    global1 = arg_2.e;
    global1 = ~arg_0.b;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(-1i), any(vec2<bool>(true, true)), Struct_1(~4294967295u, -793f, ~(~(vec4<i32>(u_input.a, -6000i, u_input.a, -2147483647i) | vec4<i32>(0i, 1i, -1i, 10532i))), func_1(_wgslsmith_mod_i32(_wgslsmith_mult_i32(11628i, -10611i), 1i | u_input.a)).d.d, 0u));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, firstLeadingBit(-_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(var_0.d.c.x, 2147483647i), vec2<i32>(2825i, var_0.d.c.x))) >> (min(select(vec2<u32>(var_0.d.a, 12848u), vec2<u32>(1u, var_0.b), vec2<bool>(var_0.c.x, true)) >> (~vec2<u32>(var_0.b, 1u) % vec2<u32>(32u)), ~firstLeadingBit(vec2<u32>(var_0.b, 1u))) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a, var_0.a, 1000f, var_0.d.d)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a, var_0.d.b, var_0.d.b, 1000f), vec4<f32>(var_0.d.d, -446f, var_0.a, var_0.d.d), var_0.c.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1231f, 144f, 172f, var_0.a) - vec4<f32>(var_0.d.d, var_0.a, var_0.d.b, -1296f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a, -107f, 1807f, 362f))))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.d.d, var_0.d.d, -1245f, 1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.b, -755f, var_0.a, var_0.d.b)))))), var_0.d.a, vec2<i32>(-(var_0.d.c.x << (var_0.d.e % 32u)), _wgslsmith_mod_i32(var_0.d.c.x, -65320i)));
}

