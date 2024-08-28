struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 11> = array<vec3<f32>, 11>(vec3<f32>(1839f, -1844f, 570f), vec3<f32>(1797f, -464f, -738f), vec3<f32>(-362f, 1153f, 589f), vec3<f32>(-177f, 981f, 432f), vec3<f32>(688f, 1033f, -1830f), vec3<f32>(-782f, -262f, 524f), vec3<f32>(954f, -635f, -685f), vec3<f32>(395f, 938f, 584f), vec3<f32>(-1830f, -1000f, -738f), vec3<f32>(-220f, -107f, 286f), vec3<f32>(837f, 1000f, -1393f));

var<private> global1: array<vec2<i32>, 6>;

var<private> global2: bool;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: f32) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - arg_2), 841f, ~30706i == _wgslsmith_sub_i32(-21606i, _wgslsmith_add_i32(u_input.b, u_input.c.x))));
    var var_1 = Struct_2(vec2<bool>(~(~arg_1) < ~(1u ^ arg_1), arg_1 == _wgslsmith_dot_vec4_u32(vec4<u32>(39186u, 58674u, arg_1, arg_1), vec4<u32>(arg_1, arg_1, 33577u, 68099u))));
    var var_2 = u_input.b;
    global0 = array<vec3<f32>, 11>();
    var var_3 = !(!vec4<bool>(u_input.b < -8771i, true, true, any(vec2<bool>(false, false))));
    return vec2<f32>(-932f, arg_2);
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = Struct_2(vec2<bool>(true, all(vec3<bool>(0u != arg_0, true, true))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(704f * 288f), 1293f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(184f, -764f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-362f, -187f)), vec2<bool>(false, true))), vec2<bool>(true, var_0.a.x))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(181f, 1171f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(864f, 953f) + vec2<f32>(-1560f, -794f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec4<f32>(1122f, 309f, 805f, -149f), arg_0, -352f)))))));
    global0 = array<vec3<f32>, 11>();
    let var_2 = vec4<bool>(!var_0.a.x, var_0.a.x, _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, var_1.x, -1000f, -1392f))))), _wgslsmith_sub_u32(arg_0, arg_0) ^ ~arg_0, _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(abs(-967f)))))).x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(446f + var_1.x), -777f, true)) * -472f), true);
    global1 = array<vec2<i32>, 6>();
    return abs(_wgslsmith_clamp_u32(~51246u, arg_0, ~arg_0));
}

fn func_1() -> vec2<bool> {
    var var_0 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(func_2(4294967295u), 25949u, 51008u, ~(8080u >> (1u % 32u))), vec4<u32>(0u, ~27229u, ~(~58993u), _wgslsmith_mod_u32(_wgslsmith_mult_u32(10184u, 0u), 21767u)));
    var var_1 = Struct_2(vec2<bool>(true, select(select(true, true, true), true, true) && any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), true))));
    var_1 = Struct_2(vec2<bool>(true, var_1.a.x));
    var_1 = Struct_2(select(select(vec2<bool>(any(vec4<bool>(false, false, var_1.a.x, var_1.a.x)), var_1.a.x || true), !(!var_1.a), !var_1.a), !var_1.a, !select(!vec2<bool>(var_1.a.x, var_1.a.x), !var_1.a, !var_1.a)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(822f + -1115f) * -1824f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -299f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))))), true)));
    return vec2<bool>(true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1());
    global1 = array<vec2<i32>, 6>();
    let var_1 = !(!((select(var_0.a.x, var_0.a.x, false) & all(vec2<bool>(var_0.a.x, false))) == (var_0.a.x & (var_0.a.x | var_0.a.x))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-912f, -528f, true)))), 450f), vec2<f32>(791f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-520f + -372f), _wgslsmith_f_op_f32(step(-1022f, 626f))))), !(!select(vec2<bool>(var_0.a.x, var_0.a.x), vec2<bool>(true, var_0.a.x), var_1)))), select(!vec3<bool>(true, false == var_0.a.x, select(var_1, var_0.a.x, var_0.a.x)), vec3<bool>(true, _wgslsmith_dot_vec2_u32(vec2<u32>(150u, 4294967295u), vec2<u32>(20772u, 4294967295u)) == ~41130u, var_1), select(select(vec3<bool>(false, false, false), select(vec3<bool>(var_1, var_0.a.x, var_0.a.x), vec3<bool>(var_0.a.x, false, var_1), vec3<bool>(var_1, var_0.a.x, var_0.a.x)), !vec3<bool>(false, var_0.a.x, var_0.a.x)), vec3<bool>(var_1 || var_1, false, var_1 || var_0.a.x), vec3<bool>(any(vec4<bool>(true, var_0.a.x, true, true)), var_1 == var_0.a.x, true))), max(_wgslsmith_mult_vec3_i32(vec3<i32>(66897i, u_input.a.x, u_input.a.x ^ u_input.a.x), u_input.c.wzx), -_wgslsmith_clamp_vec3_i32(u_input.c.zxy | vec3<i32>(u_input.d, u_input.d, u_input.b), firstLeadingBit(vec3<i32>(u_input.d, u_input.a.x, 5139i)), ~vec3<i32>(1i, -2147483647i, u_input.c.x))));
    global2 = select(func_1().x, any(var_2.b), 1i <= u_input.d) || all(select(vec2<bool>(true, var_0.a.x | var_1), vec2<bool>(!var_1, true), !var_0.a.x));
    let var_3 = var_2;
    var var_4 = 106f;
    global2 = _wgslsmith_sub_u32(firstTrailingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 77781u, 4294967295u), vec3<u32>(38737u, 47063u, 1u))), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~(~vec2<u32>(18493u, 4294967295u)))) == ~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 62444u, 4642u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 33742u, 4294967295u, 18386u), vec4<u32>(0u, 0u, 1u, 4294967295u), vec4<u32>(46049u, 80290u, 0u, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<u32>(~(~26578u), firstLeadingBit(1u), _wgslsmith_mult_u32(~68218u, 1u)), vec3<u32>(4668u, ~func_2(41769u), ~countOneBits(1u)), var_2.b.x), var_2.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, var_3.a.x, var_3.a.x, var_2.a.x))), vec4<f32>(_wgslsmith_f_op_f32(select(-369f, var_2.a.x, true)), _wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(-1000f - var_3.a.x), _wgslsmith_div_f32(var_2.a.x, var_3.a.x)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-530f, var_3.a.x, var_2.a.x, -1038f))), vec4<f32>(var_2.a.x, _wgslsmith_f_op_f32(exp2(var_2.a.x)), _wgslsmith_f_op_f32(-var_2.a.x), 1666f))), _wgslsmith_div_vec4_u32(vec4<u32>(53646u, func_2(1u), 1u, 1u) >> (vec4<u32>(1u, 59445u, _wgslsmith_clamp_u32(17944u, 0u, 48879u), min(4294967295u, 0u)) % vec4<u32>(32u)), ~(~vec4<u32>(64996u, 4294967295u, 1u, 0u)) | ~select(vec4<u32>(33798u, 44094u, 13881u, 53493u), vec4<u32>(13809u, 1u, 4294967295u, 23520u), vec4<bool>(false, true, true, true))));
}

