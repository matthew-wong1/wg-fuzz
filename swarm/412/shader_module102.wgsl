struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec4<f32>) -> vec2<u32> {
    global0 = array<Struct_1, 23>();
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(arg_0.x, -1000f)), _wgslsmith_f_op_f32(max(arg_0.x, -544f)), arg_0.x, _wgslsmith_f_op_f32(arg_0.x + arg_0.x)))))));
    var var_1 = global0[_wgslsmith_index_u32(reverseBits(1u), 23u)];
    global0 = array<Struct_1, 23>();
    let var_2 = ~(_wgslsmith_clamp_u32(~21824u, 0u, 1u) ^ ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(56781u, 0u), vec2<u32>(0u, 52935u))));
    return ~(~vec2<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(55927u, 1u, var_2), vec3<u32>(0u, 1u, var_2), vec3<bool>(false, true, false)), vec3<u32>(1u, var_2, 21327u)), ~(~1u)));
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_1(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a, u_input.b.x), reverseBits(-2147483647i)) << (_wgslsmith_div_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(46757u, 45991u, 1u), vec3<u32>(1u, 11984u, 0u))) % 32u), 58383i, ~u_input.a));
    var var_1 = Struct_1(_wgslsmith_clamp_vec3_i32(-var_0.a | var_0.a, -var_0.a, _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -var_0.a.x, ~(-8270i)), vec3<i32>(var_0.a.x, 2147483647i, u_input.a) | var_0.a, var_0.a)));
    let var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(_wgslsmith_mult_i32(u_input.b.x, var_0.a.x), var_1.a.x, -31769i, firstLeadingBit(40792i)), vec4<i32>(firstLeadingBit(abs(u_input.a)), -u_input.b.x ^ ~u_input.b.x, _wgslsmith_clamp_i32(1i, 28126i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, -24736i, 0i, -2147483647i), vec4<i32>(-2147483647i, -38902i, u_input.b.x, -1i))), var_0.a.x)), abs(abs(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.a.x, var_1.a.x, var_0.a.x, 1i) >> (vec4<u32>(29450u, 34376u, 15415u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, -31254i, -24680i, u_input.c), vec4<i32>(var_0.a.x, 0i, 21845i, 2147483647i))))));
    let var_3 = global0[_wgslsmith_index_u32(0u ^ _wgslsmith_clamp_u32(~(_wgslsmith_dot_vec4_u32(vec4<u32>(77074u, 4294967295u, 65631u, 35988u), vec4<u32>(44424u, 1u, 110103u, 934u)) ^ max(0u, 5105u)), min(39297u, 1u), 34303u), 23u)];
    return ~func_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-694f, -627f, 1322f, -1547f))))))));
}

fn func_1(arg_0: bool, arg_1: vec3<i32>, arg_2: vec3<bool>, arg_3: bool) -> vec4<f32> {
    var var_0 = ~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(~0u, ~1u), func_2(vec4<f32>(-1000f, 637f, 622f, 1000f))));
    var_0 = _wgslsmith_add_vec2_u32(~(~vec2<u32>(var_0.x, 14196u)), ~_wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(41618u, var_0.x))) << (~((countOneBits(vec2<u32>(1u, var_0.x)) & (vec2<u32>(41760u, 4294967295u) | vec2<u32>(var_0.x, var_0.x))) ^ ~vec2<u32>(var_0.x, 4294967295u)) % vec2<u32>(32u));
    var var_1 = Struct_1(arg_1);
    global0 = array<Struct_1, 23>();
    var_0 = ~max(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_sub_u32(var_0.x, var_0.x)), ~min(vec2<u32>(30013u, var_0.x), vec2<u32>(var_0.x, 11112u))), func_3());
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1390f, 566f, -424f, 891f))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(378f, 762f, 818f, 1922f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-401f, -864f, 1000f, 2410f))) * _wgslsmith_f_op_vec4_f32(func_1(true, vec3<i32>(20618i, u_input.c, -25630i) & vec3<i32>(6014i, -12523i, u_input.c), vec3<bool>(true, true, true), true))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -710f))), _wgslsmith_f_op_f32(select(-1147f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(492f)))), any(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(230f)) + _wgslsmith_f_op_f32(673f + -604f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -840f), 455f))));
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    var var_1 = firstLeadingBit(firstTrailingBit(abs(~_wgslsmith_clamp_u32(46559u, 19808u, 1281u))));
    let var_2 = vec3<u32>(1u, 70115u, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(firstTrailingBit(49797u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 59724u), vec2<u32>(91842u, 74036u)))) | countOneBits(1u));
    global0 = array<Struct_1, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(var_0)), vec4<f32>(1f, -1000f, -934f, -951f))), (~vec4<i32>(1i, 2914i, u_input.a, -12539i) | vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.b.x), u_input.b), _wgslsmith_add_i32(u_input.a, u_input.a), -1i, u_input.a)) | abs(~vec4<i32>(1i, 0i, u_input.c, u_input.b.x)));
}

