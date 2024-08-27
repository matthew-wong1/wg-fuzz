struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<u32>,
    c: bool,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    var var_0 = any(vec4<bool>(true, false, true, all(vec4<bool>(false, false, false, true)))) && (-1435f >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-2933f)))));
    let var_1 = Struct_1(true, _wgslsmith_add_i32(max(_wgslsmith_dot_vec2_i32(vec2<i32>(2301i, u_input.a), vec2<i32>(u_input.a, 1i)), 0i), u_input.a) << (48070u % 32u), u_input.a, arg_0.x, all(select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), true), vec2<bool>(true, true), true)));
    let var_2 = false;
    let var_3 = Struct_4(abs(86764u), Struct_2(abs(_wgslsmith_sub_i32(var_1.c, -20877i)) >> ((7469u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 20991u, 23991u), vec4<u32>(66918u, 0u, 11797u, 1u)) % 32u)) % 32u)));
    var_0 = true;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.d * -160f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -684f), var_1.d), all(select(select(!vec3<bool>(var_2, false, var_2), vec3<bool>(true, true, true), select(vec3<bool>(false, var_2, false), vec3<bool>(false, true, true), false)), select(select(vec3<bool>(var_1.a, var_2, true), vec3<bool>(false, var_1.a, false), true), vec3<bool>(false, true, var_1.e), !vec3<bool>(var_2, false, var_2)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.b.a, var_3.b.a), vec2<i32>(u_input.a, 2147483647i)) <= countOneBits(var_3.b.a)))));
}

fn func_2() -> u32 {
    let var_0 = ~(~1u);
    let var_1 = ~var_0;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1901f, 223f, -998f, 514f), vec4<f32>(-340f, 816f, 214f, 1000f), true)))))))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1049f) + 988f)))));
    let var_3 = Struct_2(-_wgslsmith_sub_i32(u_input.a, abs(2147483647i)));
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(max(-1000f, 170f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1179f, _wgslsmith_f_op_f32(-382f + _wgslsmith_div_f32(-1333f, -331f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1430f)))), 1453f);
    return select(_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(4294967295u, var_0, var_1) >> (~vec3<u32>(var_0, 32890u, var_0) % vec3<u32>(32u))), abs(~countOneBits(vec3<u32>(23306u, 1u, 1u)))), 1u, true);
}

fn func_1(arg_0: vec3<bool>, arg_1: bool, arg_2: bool) -> f32 {
    var var_0 = _wgslsmith_add_u32(firstLeadingBit(_wgslsmith_mod_u32(firstTrailingBit(4294967295u), firstTrailingBit(min(1u, 42147u)))), ~(~min(4294967295u, abs(4294967295u))));
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(36507u, 43759u), countOneBits(16750u)), ~func_2()), ~min(~0u, 1u), ~(~1u)), ~max(vec3<u32>(min(1u, 10456u), 4294967295u, 78904u), firstTrailingBit(firstLeadingBit(vec3<u32>(7697u, 46964u, 28632u)))));
    let var_2 = any(select(!select(!vec3<bool>(false, false, arg_0.x), vec3<bool>(arg_1, false, arg_2), select(arg_0, arg_0, arg_1)), select(vec3<bool>(false, arg_2, true), vec3<bool>(all(vec3<bool>(true, false, false)), true | arg_1, false | arg_2), arg_1), select(arg_0, vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, arg_1, true), !vec3<bool>(arg_2, true, false)))));
    var_1 = max(1u, ~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(60172u, 1u, 45015u), vec3<u32>(0u, 1u, 1u), var_2), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 1609u, 65626u), vec3<u32>(43328u, 19099u, 29645u))), min(firstTrailingBit(0u), ~43818u)));
    var var_3 = -(_wgslsmith_div_vec2_i32(firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, -1764i), vec2<i32>(4482i, -1i))), vec2<i32>(~u_input.a, -2147483647i)) ^ -reverseBits(vec2<i32>(u_input.a, -2147483647i)));
    return _wgslsmith_f_op_f32(-972f * -626f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1386f, -2200f))), _wgslsmith_f_op_f32(f32(-1f) * -232f))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<bool>(true, true, false), false, true))) - -503f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1134f) + _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(536f, 239f, -232f, -1250f)))))));
    var var_1 = Struct_3(select(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))), false), vec2<bool>(true, true)), min(_wgslsmith_clamp_vec2_i32(vec2<i32>(27736i, u_input.a), min(vec2<i32>(39403i, u_input.a), vec2<i32>(u_input.a, 1i)), select(vec2<i32>(-2332i, u_input.a), vec2<i32>(2147483647i, 0i), false)) & ~(-vec2<i32>(-45416i, 1i)), vec2<i32>(_wgslsmith_mult_i32(select(u_input.a, -57255i, false), ~u_input.a), countOneBits(1i))), vec4<u32>(~(~(~0u)), min(37979u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(57119u, 4294967295u), vec2<u32>(79954u, 15246u))), countOneBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(68797u, 1u, 22020u, 4294967295u), vec4<u32>(4294967295u, 22038u, 16016u, 18379u))), 14538u));
    let var_2 = ~var_1.c.x << (var_1.c.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.x & (_wgslsmith_add_i32(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(68746i, u_input.a, var_1.b.x), vec3<i32>(8527i, 47449i, -61500i))) >> (~(var_1.c.x << (0u % 32u)) % 32u)), abs(_wgslsmith_div_u32(1u, min(~50531u, _wgslsmith_div_u32(var_2, var_2)))));
}

