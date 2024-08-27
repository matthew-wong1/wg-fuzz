struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<bool>,
    d: vec2<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: f32;

var<private> global2: f32 = -2336f;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global2 = _wgslsmith_f_op_f32(max(-1717f, -1095f));
    let var_0 = arg_2.e;
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -718f))), 910f);
    let var_1 = -12803i;
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-441f * -1314f) + -841f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1018f, -668f)) - _wgslsmith_f_op_f32(ceil(-247f)))));
    return var_2.x;
}

fn func_3() -> u32 {
    global2 = _wgslsmith_f_op_f32(ceil(372f));
    let var_0 = 1i;
    var var_1 = !any(vec4<bool>(!(0u >= u_input.a.x), true, true, true));
    var var_2 = Struct_1(1u, true, vec3<bool>(select(true, _wgslsmith_sub_u32(u_input.a.x, 54358u) != ~4294967295u, select(all(vec4<bool>(false, true, false, true)), true, any(vec3<bool>(true, false, true)))), (_wgslsmith_div_f32(825f, 810f) == _wgslsmith_f_op_f32(round(1000f))) && (select(0u, 27038u, false) != min(u_input.a.x, u_input.a.x)), all(vec4<bool>(true, true, true, true))), vec2<i32>(abs(var_0), abs(0i)), 4294967295u);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1216f - -463f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(37969u, true, var_2.c, vec2<i32>(var_0, 0i), var_2.a), vec4<u32>(0u, 0u, var_2.a, 1u) | vec4<u32>(3176u, 25428u, 4294967295u, var_2.a), Struct_1(53093u, true, vec3<bool>(false, false, var_2.c.x), var_2.d, var_2.e), Struct_1(1u, false, var_2.c, vec2<i32>(var_0, var_0), 41419u))))));
    return ~_wgslsmith_div_u32(~u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.xy, vec2<u32>(_wgslsmith_div_u32(var_2.e, 0u), 63123u)));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = -vec2<i32>(2147483647i, arg_1.d.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1916f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(arg_1, vec4<u32>(0u, 25134u, u_input.a.x, arg_1.e), Struct_1(0u, false, vec3<bool>(arg_1.b, arg_1.b, false), arg_1.d, 28454u), arg_1))))), 350f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1114f)) * -603f)));
    let var_2 = Struct_1(~func_3(), select(!(_wgslsmith_f_op_f32(var_1.x - -616f) > -539f), arg_1.b, arg_1.b), !arg_1.c, vec2<i32>(-1i) * -(~(vec2<i32>(2147483647i, var_0.x) | vec2<i32>(var_0.x, -15146i))), ~arg_1.a);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-1156f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * var_1.x))), -2163f, var_1.x);
    let var_4 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, var_1.x, -1307f)), var_1.wzw, false))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, 820f, var_1.x))), vec3<f32>(1612f, var_3.x, -1093f))), vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(arg_1.e, true, arg_1.c, var_0, u_input.a.x), vec4<u32>(0u, 10162u, arg_0, 1u), Struct_1(0u, true, vec3<bool>(false, arg_1.c.x, arg_1.c.x), vec2<i32>(var_0.x, 2147483647i), var_2.a), Struct_1(var_2.a, var_2.c.x, arg_1.c, vec2<i32>(-13293i, var_0.x), u_input.a.x))), _wgslsmith_f_op_f32(sign(var_1.x)), -657f), vec3<bool>(!var_2.c.x, true, -991f <= var_3.x))), var_2.c))));
    return arg_1;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = func_1(u_input.a.x, func_1(u_input.a.x, arg_0));
    let var_1 = var_0;
    global2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-647f * -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -2083f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1177f))))) - _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1198f * -110f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1432f, 1181f, false)) + _wgslsmith_f_op_f32(ceil(-116f)))) * _wgslsmith_f_op_f32(select(-1049f, 1097f, !all(vec4<bool>(var_0.b, arg_0.c.x, true, false)))))));
    var var_2 = firstTrailingBit(~func_1(~abs(var_0.a), func_1(~16103u, Struct_1(arg_0.e, var_0.b, var_0.c, vec2<i32>(var_1.d.x, 1i), 17874u))).d.x);
    let var_3 = Struct_1(35908u, var_1.c.x == ((arg_0.d.x | ~var_1.d.x) > arg_0.d.x), vec3<bool>(func_1(_wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, u_input.a.x), select(var_0.a, 2756u, var_1.b)), var_0).b, !var_0.b, select(false, false, !var_0.c.x)), vec2<i32>(firstLeadingBit(-_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, -79510i, 1i), vec4<i32>(var_1.d.x, arg_0.d.x, -17471i, var_1.d.x))), 0i), countOneBits(29217u << (~_wgslsmith_mod_u32(var_0.a, 85969u) % 32u)));
    return func_1(var_3.e, Struct_1(1u, var_1.c.x, !func_1(var_0.e, func_1(4294967295u, Struct_1(1u, false, arg_0.c, vec2<i32>(var_0.d.x, 1i), var_1.a))).c, -arg_0.d, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(~max(countOneBits(29359u), 0u >> (u_input.a.x % 32u)), Struct_1(1491u, false, select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec2<i32>(-60459i, -13658i), u_input.a.x)));
    let var_1 = _wgslsmith_clamp_vec4_u32(firstLeadingBit(firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a, 54839u, u_input.a.x, 27935u), vec4<u32>(u_input.a.x, 9512u, 42297u, 1u), vec4<u32>(32411u, var_0.e, 31829u, 4294967295u)))) ^ ~vec4<u32>(1u, var_0.e, var_0.a >> (1u % 32u), abs(var_0.e)), vec4<u32>(_wgslsmith_sub_u32(~(var_0.e << (63283u % 32u)), firstLeadingBit(1u)), ~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.a, 77579u), vec3<u32>(var_0.a, var_0.e, 48774u)) ^ _wgslsmith_div_u32(func_4(Struct_1(u_input.a.x, var_0.c.x, var_0.c, vec2<i32>(18429i, var_0.d.x), var_0.e)).e, var_0.e), ~(~_wgslsmith_sub_u32(12041u, u_input.a.x))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(5697u), ~35055u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, var_0.a, u_input.a.x), vec4<u32>(u_input.a.x, var_0.e, 42366u, var_0.e)), var_0.a), ~(vec4<u32>(var_0.e, var_0.e, 4294967295u, u_input.a.x) & vec4<u32>(u_input.a.x, 1u, u_input.a.x, var_0.a))), 0u, u_input.a.x, ~(22708u << (u_input.a.x % 32u))));
    var var_2 = u_input.a.zy;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(1391f + -525f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, 235f)) + _wgslsmith_f_op_f32(min(1027f, -628f)))))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-2221f)))))));
    global0 = -1464f;
    var var_3 = func_1(~(var_2.x & 1u), func_1(select(~(~84922u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_2.x, 19195u, 4294967295u), var_1), true), func_4(func_1(31056u, Struct_1(47413u, var_0.b, var_0.c, var_0.d, var_0.a)))));
    var var_4 = vec2<i32>(_wgslsmith_div_i32(abs(var_3.d.x), var_3.d.x), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-18379i, _wgslsmith_mult_i32(~var_0.d.x, -2147483647i), var_0.d.x), ~(~max(0i, var_0.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, var_4.x, var_3.d, vec4<i32>(func_4(func_1(~4294967295u, Struct_1(u_input.a.x, true, vec3<bool>(true, true, true), vec2<i32>(0i, var_0.d.x), 75462u))).d.x, ~var_3.d.x, firstLeadingBit(var_4.x), i32(-1i) * -var_3.d.x));
}

