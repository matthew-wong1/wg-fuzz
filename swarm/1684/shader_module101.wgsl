struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: vec4<i32>, arg_3: bool) -> u32 {
    global0 = _wgslsmith_f_op_f32(1755f * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-662f))), 668f))));
    let var_0 = arg_2.zy;
    let var_1 = vec4<bool>(true, false, true, false);
    return u_input.a.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: vec4<i32>, arg_3: vec4<f32>) -> Struct_2 {
    let var_0 = u_input.a.x;
    let var_1 = ~_wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(4294967295u, 4294967295u, 35132u))), vec3<u32>(_wgslsmith_sub_u32(~1704u, _wgslsmith_add_u32(0u, u_input.a.x)), ~var_0, 46911u));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1464f) + -1586f))));
    global0 = arg_3.x;
    var var_2 = 0u;
    return Struct_2(~vec3<u32>(~0u >> (1u % 32u), var_1, ~func_3(39012i, vec2<bool>(true, true), arg_2, false)), Struct_1(4294967295u, select(~vec4<u32>(7243u, 0u, 23115u, 4294967295u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0, 5757u, var_0, u_input.a.x), vec4<u32>(u_input.a.x, 4294967295u, var_1, 4294967295u)), vec4<bool>(any(vec3<bool>(false, true, false)), true, any(vec3<bool>(false, true, true)), true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -769f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_3.x), -1981f)))), 1u, 35253u), min((vec2<i32>(arg_2.x, arg_2.x) | firstTrailingBit(arg_2.wx)) & abs(min(vec2<i32>(arg_2.x, -2147483647i), arg_2.yz)), vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(arg_2.zx, arg_2.zw)));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: f32, arg_3: f32) -> f32 {
    var var_0 = func_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-364f, _wgslsmith_f_op_f32(ceil(arg_2)), -1070f, -429f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(112f, arg_2, arg_2, arg_3)))))), arg_3, ~(~arg_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_3, 936f, arg_3, arg_3), vec4<f32>(arg_3, arg_3, 796f, arg_3))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_3, arg_3, arg_2))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1211f, arg_2, -302f, -835f), vec4<f32>(arg_3, -157f, arg_2, arg_3))))));
    var_0 = Struct_2(~max(~firstTrailingBit(vec3<u32>(1u, var_0.b.d, 1u)), vec3<u32>(26001u, u_input.a.x, ~var_0.b.d)), var_0.b, countOneBits(abs(_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-11027i, arg_0.x), vec2<i32>(arg_0.x, 1i)), countOneBits(vec2<i32>(var_0.c.x, var_0.c.x)), ~vec2<i32>(2147483647i, var_0.c.x)))));
    let var_1 = select(max(~func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-3535f, var_0.b.c, -380f, 481f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), vec4<i32>(var_0.c.x, var_0.c.x, arg_0.x, 0i), _wgslsmith_div_vec4_f32(vec4<f32>(arg_2, 751f, 184f, arg_3), vec4<f32>(-101f, -247f, -1000f, arg_2))).a, vec3<u32>(var_0.a.x, 1u, ~_wgslsmith_sub_u32(1u, var_0.b.d))), ~(~(u_input.a << (var_0.b.b.xyx % vec3<u32>(32u))) >> ((_wgslsmith_sub_vec3_u32(vec3<u32>(63360u, u_input.a.x, u_input.a.x), var_0.b.b.zwx) | vec3<u32>(var_0.a.x, 10702u, u_input.a.x)) % vec3<u32>(32u))), (var_0.b.b.x ^ ~func_2(vec4<f32>(1000f, -627f, -1331f, 538f), 138f, vec4<i32>(-2147483647i, 2147483647i, var_0.c.x, 5523i), vec4<f32>(arg_2, arg_2, -1100f, 346f)).a.x) >= var_0.b.d);
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, _wgslsmith_f_op_f32(exp2(arg_3)), _wgslsmith_f_op_f32(-arg_2), -1015f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(573f + arg_3)), arg_0, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(430f, -328f, 136f, var_0.b.c), vec4<f32>(-632f, 1222f, -131f, arg_2))))) * vec4<f32>(_wgslsmith_f_op_f32(-1139f + arg_3), _wgslsmith_f_op_f32(ceil(-676f)), _wgslsmith_f_op_f32(-868f * -1256f), 582f)))));
    var var_3 = arg_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(func_2(vec4<f32>(arg_3, var_2.b.c, -2780f, arg_3), 1152f, vec4<i32>(arg_0.x, var_2.c.x, arg_0.x, var_0.c.x), vec4<f32>(-136f, var_0.b.c, var_2.b.c, 421f)).b.c, _wgslsmith_f_op_f32(var_2.b.c * -325f))) - _wgslsmith_f_op_f32(var_0.b.c * _wgslsmith_f_op_f32(sign(arg_3)))), arg_3)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-468f)), _wgslsmith_f_op_f32(select(338f, 472f, select(false, true, false))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - vec3<f32>(425f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<i32>(62143i, -1i, -2147483647i, -1i), vec2<bool>(false, true), -862f, 2971f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1532f, -1200f), _wgslsmith_div_f32(-892f, 1998f), any(vec2<bool>(false, true)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1239f, 1000f, 485f))), vec3<f32>(-2646f, -1504f, _wgslsmith_f_op_f32(f32(-1f) * -1148f))))));
    let var_1 = Struct_1(64793u, ~vec4<u32>(~(4294967295u ^ u_input.a.x), min(select(u_input.a.x, u_input.a.x, true), 1u), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 4294967295u, 28918u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 1u)), u_input.a.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(round(-148f)))), u_input.a.x, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(abs(u_input.a.xx >> (u_input.a.xx % vec2<u32>(32u))), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yy), ~vec2<u32>(1u, u_input.a.x))), u_input.a.yz));
    var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-522f, var_0.x, -709f), vec3<f32>(-339f, var_0.x, var_1.c)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-125f, 553f, 1406f))), true)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(var_0.x, -465f)), -563f, _wgslsmith_f_op_f32(-239f - -323f)) + vec3<f32>(-1221f, -721f, var_0.x)))), all(vec2<bool>(true, all(vec4<bool>(true, true, true, true))))));
    let var_2 = 18749u;
    var var_3 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_mult_i32(0i, 2147483647i), _wgslsmith_mod_i32(func_2(vec4<f32>(var_0.x, var_0.x, var_1.c, var_1.c), var_1.c, vec4<i32>(-54203i, 1823i, 0i, 50205i), vec4<f32>(-641f, -1888f, var_1.c, 2189f)).c.x, -1i) >> (_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a.x), vec2<u32>(16090u, 1u))) % 32u), _wgslsmith_clamp_i32(abs(-53506i), 0i, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-13144i, 2147483647i, -2147483647i), vec3<i32>(-1i, 37617i, 12037i))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(~(-vec4<i32>(-2147483647i, -1i, 4689i, 1i)), vec2<bool>(true, true), _wgslsmith_f_op_f32(floor(1128f)), _wgslsmith_f_op_f32(var_1.c + _wgslsmith_f_op_f32(f32(-1f) * -275f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2251f - _wgslsmith_f_op_f32(-401f + 384f)))), i32(-1i) * -select(2147483647i << (var_2 % 32u), -58401i, true));
}

