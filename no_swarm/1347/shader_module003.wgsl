struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_3) -> bool {
    return true;
}

fn func_2(arg_0: u32, arg_1: vec4<f32>) -> bool {
    var var_0 = Struct_2(-801f, true, Struct_1(-1147f));
    var var_1 = vec3<bool>(all(select(select(!vec4<bool>(false, var_0.b, false, var_0.b), vec4<bool>(var_0.b, true, var_0.b, true), vec4<bool>(false, var_0.b, var_0.b, var_0.b)), vec4<bool>(true, !var_0.b, false, true), vec4<bool>(select(var_0.b, false, var_0.b), 21482i <= u_input.c.x, u_input.d < u_input.a.x, all(vec4<bool>(var_0.b, false, var_0.b, var_0.b))))), var_0.b, ~54843u < arg_0);
    var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1953f)), !(!func_3(-62022i, _wgslsmith_div_vec4_f32(vec4<f32>(624f, 673f, arg_1.x, var_0.c.a), arg_1), Struct_3(u_input.c.x))), var_0.c);
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_1.x - 871f), var_0.c.a)), arg_1.zx)), arg_1.ww);
    let var_3 = Struct_2(305f, true, Struct_1(_wgslsmith_div_f32(1702f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))));
    return true;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: i32) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2117f - 1215f)), func_2(0u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a + arg_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a - arg_1.a) + _wgslsmith_f_op_f32(sign(arg_1.a))), 1502f, _wgslsmith_f_op_f32(-573f * arg_1.a))), Struct_1(_wgslsmith_f_op_f32(313f - _wgslsmith_f_op_f32(ceil(arg_1.a)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, arg_1.a, -129f, arg_1.a) + vec4<f32>(var_0.a, var_0.a, arg_1.a, -190f))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(144f, 1037f, -283f, var_0.c.a))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.a, 672f, 2545f, -677f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-2242f, var_0.a, arg_1.a, arg_1.a), vec4<f32>(arg_1.a, arg_1.a, -491f, -1122f)))))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(976f, _wgslsmith_f_op_f32(-var_1.x), func_3(0i, vec4<f32>(-1565f, arg_1.a, 398f, arg_1.a), arg_0))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_1.a, -675f)))))), abs(abs(2147483647i) ^ _wgslsmith_mult_i32(18339i, u_input.c.x)) >= 0i, arg_1);
    let var_3 = arg_0;
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-767f)))) * _wgslsmith_f_op_f32(floor(arg_1.a))), true, Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(true, true, false, true & select(true, true, true)), vec4<bool>(!any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), !all(vec2<bool>(true, true)), true, any(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)))), !(!select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true))));
    let var_1 = func_1(Struct_3(-2147483647i), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-121f - 493f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-228f))))), u_input.c, (_wgslsmith_div_i32(min(31075i, u_input.c.x), u_input.c.x) ^ -firstLeadingBit(u_input.c.x)) | -33783i);
    let var_2 = func_2(0u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.a, -704f, -742f, -1041f) * vec4<f32>(-1473f, -558f, var_1.c.a, var_1.c.a)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.c.a, var_1.c.a, 113f, -224f)))), vec4<f32>(_wgslsmith_f_op_f32(min(var_1.a, -1104f)), _wgslsmith_f_op_f32(-340f * var_1.a), 431f, _wgslsmith_f_op_f32(-var_1.a)), select(!vec4<bool>(true, var_0.x, var_0.x, true), select(vec4<bool>(var_1.b, var_0.x, false, var_1.b), vec4<bool>(true, false, var_0.x, var_1.b), var_1.b), var_1.b)))) && false;
    let var_3 = _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, 11975u, 4294967295u), vec4<u32>(0u, 1u, u_input.b.x, 1u)), u_input.d), u_input.b.x, _wgslsmith_mult_u32(1u, 4294967295u ^ u_input.a.x), 29827u)), select(~(~vec4<u32>(39033u, 1u, u_input.a.x, u_input.d)), ~(~abs(vec4<u32>(4294967295u, u_input.a.x, u_input.d, u_input.d))), var_0.x));
    var_0 = !select(!(!vec4<bool>(false, false, var_0.x, false)), select(select(vec4<bool>(true, var_1.b, true, false), vec4<bool>(var_1.b, true, false, true), false), vec4<bool>(var_0.x | false, false, any(vec4<bool>(var_0.x, var_0.x, var_1.b, false)), var_0.x && var_2), (8128i < u_input.c.x) != var_0.x), !vec4<bool>(var_1.a < var_1.c.a, !var_2, true, false));
    var var_4 = var_3;
    var_0 = vec4<bool>(((_wgslsmith_dot_vec4_u32(var_3, vec4<u32>(1u, var_3.x, 41064u, 8436u)) << (countOneBits(4294967295u) % 32u)) <= (var_4.x ^ max(var_4.x, var_4.x))) != var_2, true, var_1.a == -792f, var_2);
    var_4 = ~(~vec4<u32>(4294967295u, 0u, firstLeadingBit(var_4.x), var_3.x));
    var_4 = abs(~(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.a.x, 48520u), vec4<u32>(var_3.x, u_input.a.x, var_3.x, 0u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.b.x, u_input.d)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u, 1u, 28241u), vec4<u32>(u_input.d, 4294967295u, var_4.x, var_4.x)), var_3) | var_3));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(abs(var_3.x), 35024u, 1u, 41726u), ~_wgslsmith_mult_vec4_u32(var_3, vec4<u32>(u_input.d, 4294967295u, var_3.x, var_3.x)))), var_4.xxy, -7478i);
}

