struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 30>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = Struct_2(max(~u_input.a, firstTrailingBit(-vec3<i32>(0i, u_input.b, 10600i))), 521f, max(select(select(vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(1u, 1u, 1u), false), vec3<u32>(_wgslsmith_mult_u32(19745u, 34772u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 14758u, 4294967295u), vec3<u32>(0u, 0u, 6967u)), 4294967295u), false), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), firstLeadingBit(vec3<u32>(1u, 1u, 1u)))));
    var var_1 = abs(vec4<u32>(4294967295u, 49271u, ~(~(~45238u)), ~var_0.c.x));
    var_1 = ~_wgslsmith_mult_vec4_u32(~vec4<u32>(var_1.x | 4219u, var_1.x, 1u, firstTrailingBit(21285u)), reverseBits(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.x, 17160u, var_0.c.x, var_0.c.x), vec4<u32>(4294967295u, var_1.x, var_0.c.x, 0u)), 0u, var_0.c.x, var_1.x)));
    var_1 = ~_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(0u, 38675u, var_0.c.x, 10220u)), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(4294967295u, var_1.x, 0u, 74819u)), abs(vec4<u32>(var_1.x, 13650u, var_0.c.x, var_0.c.x))), vec4<u32>(8153u, var_0.c.x, 4294967295u, 1u)), ~(~(~vec4<u32>(0u, var_1.x, var_0.c.x, 4294967295u))));
    var_1 = ~vec4<u32>(var_0.c.x, var_1.x, (1979u ^ var_0.c.x) >> (13294u % 32u), 21465u) | vec4<u32>(~var_0.c.x, ~6208u, var_0.c.x, 1u);
    return _wgslsmith_f_op_f32(step(var_0.b, _wgslsmith_f_op_f32(-var_0.b)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: bool) -> u32 {
    global0 = array<vec2<i32>, 30>();
    let var_0 = Struct_1(select(firstLeadingBit(arg_2.a), countOneBits(vec3<i32>(~u_input.c, countOneBits(u_input.a.x), -7797i)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(824f * arg_2.b) + _wgslsmith_f_op_f32(func_3(arg_2.a.x))) + arg_2.b) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b) - _wgslsmith_f_op_f32(2732f - _wgslsmith_f_op_f32(1087f + arg_2.b)))), 101482u);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1400f)));
    global0 = array<vec2<i32>, 30>();
    var var_2 = Struct_2(~(vec3<i32>(-71428i, 1i & arg_0.x, var_0.a.x) ^ (max(vec3<i32>(var_0.a.x, arg_0.x, -8980i), var_0.a) | firstLeadingBit(vec3<i32>(arg_2.a.x, arg_2.a.x, arg_2.a.x)))), _wgslsmith_f_op_f32(max(arg_2.b, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(f32(-1f) * -1542f)), _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(-613f * var_1))))), firstLeadingBit(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(arg_2.c, vec3<u32>(arg_2.c.x, 6961u, 55497u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, arg_2.c.x, var_0.c), arg_2.c, arg_2.c))) & firstTrailingBit(~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 4294967295u, var_0.c), vec3<u32>(var_0.c, arg_2.c.x, arg_2.c.x), arg_2.c)));
    return arg_2.c.x;
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(595f, -248f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -717f) + vec2<f32>(-2012f, -518f)))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f - -283f), _wgslsmith_f_op_f32(f32(-1f) * -565f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -761f) + -1000f)))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -619f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1426f))), 150f))));
    let var_1 = var_0.x;
    let var_2 = _wgslsmith_mult_u32(0u, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(1u, 1u)), min(vec2<u32>(2539u, ~4294967295u), abs(vec2<u32>(4294967295u, 1u)))));
    global0 = array<vec2<i32>, 30>();
    let var_3 = Struct_2(u_input.a, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(var_1 * -645f)), _wgslsmith_f_op_f32(458f - var_1)))), ~vec3<u32>(~_wgslsmith_add_u32(36940u, var_2), func_2(vec2<i32>(u_input.c, -1i), vec2<bool>(true, true), Struct_2(u_input.a, var_0.x, vec3<u32>(2790u, var_2, var_2)), true), var_2));
    return max(_wgslsmith_sub_u32(~var_3.c.x, var_3.c.x), ~1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-770f, -1222f))))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-438f, -1000f)));
    global0 = array<vec2<i32>, 30>();
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-165f - -183f) * 736f), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(f32(-1f) * -1216f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-611f, var_0.x) + vec2<f32>(var_0.x, var_0.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(679f, var_0.x), vec2<f32>(var_0.x, 1391f), true)))))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))));
    let var_1 = -36774i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-562f))))), vec3<u32>(1u, 1u, 1u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(max(~16319u, 20798u >> (1u % 32u)), _wgslsmith_mod_u32(func_1(), 3515u)), _wgslsmith_sub_u32(1u, 0u)), _wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(max(_wgslsmith_dot_vec4_u32(select(vec4<u32>(32479u, 49310u, 4294967295u, 1u), vec4<u32>(4294967295u, 18835u, 0u, 1358u), vec4<bool>(true, false, false, false)), reverseBits(vec4<u32>(4294967295u, 1u, 59871u, 0u))), ~reverseBits(26841u)), 30u)], _wgslsmith_mod_vec2_i32(u_input.a.xz, vec2<i32>(1205i, -u_input.b))));
}

