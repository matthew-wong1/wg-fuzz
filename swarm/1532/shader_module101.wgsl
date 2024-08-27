struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec2<u32>,
    d: f32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
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

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-941f + -1077f), -1364f))));
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, _wgslsmith_div_f32(var_0, 1000f), _wgslsmith_f_op_f32(-var_0)), vec3<f32>(_wgslsmith_f_op_f32(var_0 - 1023f), _wgslsmith_f_op_f32(ceil(var_0)), _wgslsmith_f_op_f32(739f * -1408f)), true)) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-1274f, var_0, -396f), vec3<f32>(-2100f, var_0, var_0)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0, var_0, var_0))), true)))))));
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -882f), var_0));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_1.x, var_0)))), var_0));
    var var_3 = reverseBits(~(-vec3<i32>(min(-1i, u_input.a.x), _wgslsmith_mod_i32(6357i, u_input.a.x), u_input.a.x)));
    return !(!select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), true));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<bool>) -> bool {
    var var_0 = Struct_3(true);
    let var_1 = -671f;
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1, -1705f, 2276f), vec3<f32>(var_1, 1000f, var_1), true))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-609f, var_1, -160f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-149f, 150f, 1092f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 172f, 1633f))))), arg_1.zzz));
    var var_3 = ~(~vec2<i32>(firstLeadingBit(_wgslsmith_add_i32(arg_0.x, -2147483647i)), -firstTrailingBit(-74175i)));
    var var_4 = u_input.a.yw;
    return var_1 == _wgslsmith_f_op_f32(min(var_2.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_1, var_2.x)), 695f))));
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_clamp_i32(firstLeadingBit(u_input.a.x), u_input.a.x, ~abs(firstLeadingBit(u_input.a.x)));
    let var_1 = vec3<bool>(func_4(select(vec2<i32>(~u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -5156i, -48247i, 0i), vec4<i32>(1768i, 1i, -2147483647i, u_input.a.x))), ~u_input.a.xy, select(true, true, all(vec2<bool>(false, true)))), select(select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), true), true), func_3(), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false)), true))), func_4(~_wgslsmith_sub_vec2_i32(-vec2<i32>(0i, u_input.a.x), firstTrailingBit(vec2<i32>(u_input.a.x, 1i))), vec4<bool>(false, any(func_3().yw), true, all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false))))), true);
    let var_2 = _wgslsmith_div_u32(_wgslsmith_mult_u32(arg_0.x | arg_0.x, arg_0.x), ~4294967295u);
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-783f * _wgslsmith_f_op_f32(select(846f, -688f, var_1.x))))))));
    let var_4 = var_1.yy;
    return Struct_2(countOneBits(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 1u, 0u), vec4<u32>(70822u, 4294967295u, var_2, arg_0.x)), _wgslsmith_add_u32(84953u, arg_0.x))), !vec3<bool>(true, !func_4(vec2<i32>(u_input.a.x, u_input.a.x), vec4<bool>(false, var_1.x, true, var_4.x)), (var_4.x != false) && var_1.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(~0u, _wgslsmith_sub_u32(var_2, 1u)) | vec2<u32>(_wgslsmith_add_u32(4294967295u, arg_0.x), var_2), arg_0.zx, ~firstTrailingBit(arg_0.yy)), _wgslsmith_div_f32(-573f, 490f));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> bool {
    var var_0 = u_input.a.x;
    var var_1 = vec4<u32>(func_2(_wgslsmith_clamp_vec3_u32(~(vec3<u32>(arg_0.a.x, 1u, 0u) ^ vec3<u32>(arg_0.c.x, 4294967295u, 4294967295u)), vec3<u32>(12076u, 13093u, arg_0.a.x), firstTrailingBit(vec3<u32>(0u, 4294967295u, arg_0.c.x)) | _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.a.x, 40542u, 0u), vec3<u32>(arg_0.a.x, 77437u, 1u)))).c.x, arg_0.a.x, 4294967295u << (arg_0.c.x % 32u), 1u);
    var_0 = -15810i;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1356f)) + arg_0.d) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.d, -636f)) + -617f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.d)))))));
    let var_3 = false;
    return all(!(!vec4<bool>(arg_1.a, 2032f > arg_0.d, arg_0.b.x, any(vec4<bool>(var_3, var_3, false, false)))));
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = select(!(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true))), !vec4<bool>(true, true, any(vec3<bool>(false, false, false)), all(vec3<bool>(false, true, true))), !(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), true)));
    var_0 = !vec4<bool>(var_0.x, true, true, !func_5(func_2(vec3<u32>(64539u, 44886u, 3677u)), Struct_3(var_0.x)));
    var_0 = !vec4<bool>(true, true != func_5(func_2(vec3<u32>(0u, 0u, 62904u)), Struct_3(var_0.x)), true, var_0.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(425f, arg_0, arg_0, arg_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1537f, -1039f, -1325f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, -536f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -941f, _wgslsmith_f_op_f32(-arg_0), 236f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0, -562f, 124f, 875f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 137f, arg_0, -1077f) - vec4<f32>(arg_0, 202f, arg_0, 1221f))))), !all(vec2<bool>(true, true)) | func_4(countOneBits(reverseBits(u_input.a.ww)), vec4<bool>(false, func_2(vec3<u32>(24578u, 0u, 4294967295u)).b.x, true, false))));
    var_0 = !vec4<bool>(var_0.x, !(true & var_0.x), (_wgslsmith_div_i32(0i, u_input.a.x) | u_input.a.x) > -reverseBits(u_input.a.x), true);
    return ~(~0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-321f, 291f)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(366f, -110f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-252f, 1000f))))))));
    var var_1 = u_input.a.x;
    var_1 = -1i;
    let var_2 = vec2<u32>(~abs(func_1(-435f)) >> (66536u % 32u), (_wgslsmith_dot_vec4_u32(vec4<u32>(52985u, 17856u, 4045u, 12857u), vec4<u32>(1u, 1u, 1u, 1u)) | 1u) ^ ~4294967295u);
    let var_3 = func_2(countOneBits(~countOneBits(vec3<u32>(52368u, 4294967295u, 4294967295u) & vec3<u32>(var_2.x, 635u, 0u))));
    let var_4 = !(!vec2<bool>(var_3.b.x, !(var_3.b.x | true)));
    let x = u_input.a;
    s_output = StorageBuffer(~1i, abs(abs(var_3.c.x)));
}

