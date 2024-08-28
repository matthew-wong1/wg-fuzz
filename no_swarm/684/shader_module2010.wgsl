struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: i32,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32) -> vec3<bool> {
    return !select(vec3<bool>(true, true, true), vec3<bool>(false, any(vec4<bool>(true, true, true, true)), true), vec3<bool>(any(vec3<bool>(true, true, false)), all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), false));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<i32>) -> Struct_3 {
    let var_0 = true != all(vec4<bool>(false, true, true, true));
    var var_1 = Struct_1(_wgslsmith_mult_u32(~_wgslsmith_sub_u32(~32798u, 1u), ~(~_wgslsmith_mod_u32(67848u, 1u))), !select(!vec2<bool>(var_0, false), !(!vec2<bool>(var_0, true)), true), u_input.c, -13167i, select(vec3<bool>(any(select(vec3<bool>(false, var_0, false), vec3<bool>(false, false, var_0), vec3<bool>(false, false, true))), any(!vec2<bool>(true, var_0)), false), !(!select(vec3<bool>(true, true, true), vec3<bool>(var_0, true, var_0), var_0)), select(vec3<bool>(true, var_0, var_0), !(!vec3<bool>(false, true, var_0)), var_0)));
    let var_2 = vec4<u32>(4294967295u, 46456u, 21611u, 23748u);
    var_1 = Struct_1(~_wgslsmith_clamp_u32(var_1.a, _wgslsmith_div_u32(var_2.x, ~var_1.a), 4294967295u), vec2<bool>(var_0, false), -1i, 1i, func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(432f, 845f, -1000f) + vec3<f32>(879f, 1867f, 461f)))), -2147483647i & (~arg_1.x | _wgslsmith_sub_i32(arg_1.x, 20994i))));
    var_1 = Struct_1(min(39467u, ~0u), select(!vec2<bool>(true, all(vec3<bool>(true, var_0, true))), !select(var_1.e.xy, select(var_1.e.xz, vec2<bool>(var_1.b.x, true), false), var_0 & false), var_1.e.xx), _wgslsmith_add_i32((-25458i & (-10280i | arg_0.x)) & 46381i, arg_1.x), 26486i, select(vec3<bool>(var_1.b.x, false && var_1.b.x, var_1.b.x), var_1.e, any(vec4<bool>(true, var_1.b.x, var_0, var_0)) & true));
    return Struct_3(true && all(vec4<bool>(var_1.e.x, var_0, true, true)), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-arg_0.zz, arg_0.xw), _wgslsmith_add_i32(reverseBits(-u_input.a), 1i)), var_2.yx);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_4) -> vec3<u32> {
    var var_0 = ~arg_0.b;
    var_0 = ~1i;
    var var_1 = Struct_2(_wgslsmith_div_i32(_wgslsmith_clamp_i32(-select(2147483647i, arg_0.b, arg_2.d.x), -1684i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.c) | vec2<i32>(-2147483647i, u_input.a), vec2<i32>(arg_0.b, 22801i))), _wgslsmith_mult_i32(-arg_0.b, 23353i)), false);
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(-1485f, 623f)), _wgslsmith_f_op_f32(round(264f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-297f, arg_2.c, 1795f), vec3<f32>(arg_1.c, arg_2.c, arg_1.c)))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c, arg_2.c, arg_2.c))), vec3<f32>(_wgslsmith_f_op_f32(arg_2.c - arg_1.c), _wgslsmith_div_f32(-351f, -1265f), 416f)))));
    var var_3 = max(_wgslsmith_clamp_vec2_i32(-vec2<i32>(u_input.c, 8456i) << (arg_0.c % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, -2147483647i) & vec2<i32>(1i, arg_0.b), -vec2<i32>(1i, -2147483647i)), min(abs(vec2<i32>(var_1.a, -23405i)), abs(vec2<i32>(-19316i, var_1.a)))) ^ select(firstTrailingBit(abs(vec2<i32>(0i, arg_0.b))), select(reverseBits(vec2<i32>(-56635i, var_1.a)), _wgslsmith_sub_vec2_i32(vec2<i32>(var_1.a, 27454i), vec2<i32>(-1i, var_1.a)), select(arg_1.d.wz, arg_2.d.zz, arg_1.d.wx)), var_2.x >= var_2.x), select(vec2<i32>(-1i) * -(vec2<i32>(arg_0.b, u_input.b) & vec2<i32>(2147483647i, -28761i)), _wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(-28202i, var_1.a)), _wgslsmith_sub_vec2_i32(~vec2<i32>(-68460i, 0i), _wgslsmith_add_vec2_i32(vec2<i32>(var_1.a, var_1.a), vec2<i32>(-2147483647i, arg_0.b))), (vec2<i32>(arg_0.b, u_input.b) | vec2<i32>(-2147483647i, -2147483647i)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))), vec2<bool>(arg_0.a, arg_0.a)));
    return vec3<u32>(50110u, countOneBits(arg_0.c.x), 4294967295u);
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> vec2<i32> {
    var var_0 = ~countOneBits(countOneBits(func_4(func_2(vec4<i32>(arg_0.a, arg_0.a, 1i, 50997i), vec3<i32>(-2147483647i, -55403i, 0i)), Struct_4(15962u, vec2<u32>(4294967295u, 1201u), 1005f, vec4<bool>(true, arg_1, arg_1, false)), Struct_4(4294967295u, vec2<u32>(94748u, 33105u), 872f, vec4<bool>(false, true, false, arg_0.b)))));
    var_0 = vec3<u32>(_wgslsmith_mult_u32(0u, 4294967295u), ~min(_wgslsmith_dot_vec3_u32(max(vec3<u32>(var_0.x, 60718u, var_0.x), vec3<u32>(0u, var_0.x, var_0.x)), ~vec3<u32>(var_0.x, var_0.x, var_0.x)), ~4294967295u), 6900u);
    let var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(1u, _wgslsmith_mult_u32(var_0.x << (var_0.x % 32u), _wgslsmith_mult_u32(var_0.x, 41744u))), firstTrailingBit(~firstTrailingBit(vec2<u32>(2092u, var_0.x)))) << (0u % 32u);
    let var_2 = i32(-1i) * -(~_wgslsmith_mod_i32(u_input.c, arg_0.a) | abs(1i));
    var_0 = _wgslsmith_add_vec3_u32(min(~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 32646u, 4294967295u), vec3<u32>(0u, var_1, 0u) >> (vec3<u32>(var_0.x, var_1, var_0.x) % vec3<u32>(32u))), ~_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(var_0.x, 47711u, 40960u)), vec3<u32>(var_0.x, var_0.x, var_1))), ~_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(var_0.x, var_1), _wgslsmith_dot_vec4_u32(vec4<u32>(18934u, var_1, var_0.x, 0u), vec4<u32>(19780u, var_1, var_1, var_0.x)), var_0.x), select(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 17928u, var_0.x), vec3<u32>(1u, 10789u, 46276u)), countOneBits(vec3<u32>(var_1, 7164u, 1u)), func_3(vec3<f32>(2330f, 139f, 632f), var_2))));
    return vec2<i32>(u_input.c, var_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(~(-7662i & u_input.b), u_input.c), ~(~vec2<i32>(u_input.b, -2147483647i)) | (func_1(Struct_2(-2147483647i, true), true) ^ ~vec2<i32>(u_input.b, 30502i))), _wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_mult_i32(~u_input.c, u_input.a), reverseBits(select(u_input.c, -2147483647i, true))), ~0i));
    var var_1 = !(!select(!func_3(vec3<f32>(-1000f, 2033f, 1000f), 4343i), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true)));
    let var_2 = var_1.xx;
    let var_3 = Struct_3(_wgslsmith_clamp_u32(~(~0u), ~_wgslsmith_mult_u32(0u, 12238u), _wgslsmith_sub_u32(~25406u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 12698u, 22312u), vec3<u32>(20758u, 4294967295u, 0u)))) >= 1u, _wgslsmith_mult_i32(2147483647i, -(_wgslsmith_div_i32(var_0, u_input.a) >> (1u % 32u))), firstTrailingBit(vec2<u32>(60757u, 4037u)));
    let var_4 = var_3.c << (_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(var_3.c.x, ~1u)), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(0u, var_3.c.x), _wgslsmith_sub_vec2_u32(vec2<u32>(var_3.c.x, 1u), vec2<u32>(4294967295u, 4294967295u))), _wgslsmith_add_vec2_u32(var_3.c, vec2<u32>(48854u, var_3.c.x)) | vec2<u32>(4294967295u, 1u))) % vec2<u32>(32u));
    let var_5 = _wgslsmith_mult_vec2_u32(~min(var_3.c, ~var_4), countOneBits(vec2<u32>(var_4.x, 1u)));
    var_1 = select(func_3(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1040f, -915f, 653f) - vec3<f32>(-1000f, 506f, 2289f)))))), 0i), !(!select(func_3(vec3<f32>(-2010f, -1877f, 492f), 2147483647i), vec3<bool>(var_1.x, true, var_1.x), !vec3<bool>(var_3.a, var_1.x, var_3.a))), false);
    var_1 = vec3<bool>(!(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(290f, 597f)))) > _wgslsmith_f_op_f32(1000f + -172f)), var_3.a, all(!vec4<bool>(true, true, true & var_1.x, !var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(round(-822f)), -1142f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2017f, -108f) + -1548f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1169f))), var_2.x)), 519f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-311f)) - -315f) - _wgslsmith_f_op_f32(select(-593f, -529f, select(var_1.x, true, false)))) * 1f));
}

