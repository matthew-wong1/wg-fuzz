struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: vec2<u32>) -> vec4<bool> {
    var var_0 = Struct_1(select(select(select(vec3<bool>(false, true, arg_1.x), select(arg_1, vec3<bool>(false, true, arg_1.x), arg_1), !arg_1.x), !select(vec3<bool>(false, arg_1.x, false), arg_1, arg_1.x), vec3<bool>(arg_1.x, true, select(false, false, arg_1.x))), select(select(arg_1, arg_1, select(arg_1, vec3<bool>(arg_1.x, arg_1.x, arg_1.x), arg_1.x)), select(!arg_1, !vec3<bool>(arg_1.x, arg_1.x, arg_1.x), select(arg_1, arg_1, arg_1.x)), false), !arg_1.x), select(all(select(select(vec4<bool>(arg_1.x, arg_1.x, true, false), vec4<bool>(false, arg_1.x, arg_1.x, true), vec4<bool>(false, true, arg_1.x, arg_1.x)), !vec4<bool>(arg_1.x, true, arg_1.x, false), select(arg_1.x, arg_1.x, false))), !arg_1.x, select(true | all(vec3<bool>(false, arg_1.x, true)), arg_1.x || (arg_3.x <= 4294967295u), !(arg_1.x && false))));
    var_0 = Struct_1(select(var_0.a, !vec3<bool>(arg_1.x | false, arg_3.x == 4294967295u, !var_0.b), (all(var_0.a.zz) | all(vec2<bool>(true, arg_1.x))) | false), ((1590u >> (u_input.d % 32u)) < ~countOneBits(u_input.b)) && var_0.b);
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * -1293f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -819f) + _wgslsmith_f_op_f32(-1091f - 236f)), arg_2.x)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2 * arg_2)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, -2049f, 1198f) + arg_2), _wgslsmith_f_op_vec3_f32(-arg_2), false || arg_1.x)))))));
    var_0 = Struct_1(var_0.a, !(!var_0.a.x));
    let var_2 = Struct_2(_wgslsmith_mod_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_3.x, 1u), arg_3, vec2<u32>(arg_3.x, arg_3.x)), vec2<u32>(_wgslsmith_sub_u32(~4294967295u, arg_0.a.x), countOneBits(arg_3.x))), 1u);
    return vec4<bool>(false, all(select(!select(var_0.a.zy, arg_1.xz, true), !vec2<bool>(false, var_0.b), !var_0.a.zx)), var_2.b == min(~firstLeadingBit(u_input.d), ~(~u_input.b)), any(select(select(vec3<bool>(false, arg_1.x, var_0.b), vec3<bool>(arg_1.x, true, var_0.b), false), var_0.a, !arg_1)) & (any(select(vec4<bool>(arg_1.x, var_0.a.x, arg_1.x, false), vec4<bool>(false, arg_1.x, true, var_0.b), false)) != (var_0.b && arg_1.x)));
}

fn func_2(arg_0: bool) -> Struct_3 {
    var var_0 = Struct_1(vec3<bool>(all(select(vec4<bool>(arg_0, false, arg_0, true), !vec4<bool>(arg_0, true, arg_0, true), func_3(Struct_3(vec4<u32>(18806u, u_input.b, 0u, 91729u)), vec3<bool>(arg_0, arg_0, true), vec3<f32>(205f, 768f, -139f), vec2<u32>(u_input.d, u_input.b)))), any(func_3(Struct_3(vec4<u32>(u_input.b, u_input.b, 20071u, u_input.d)), vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(971f, 207f, -1117f))), vec2<u32>(u_input.d, 4294967295u)).zww), all(!vec2<bool>(arg_0, false))), arg_0);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(499f - -108f))) * _wgslsmith_f_op_f32(ceil(-762f)));
    var_1 = 1000f;
    let var_2 = Struct_2(~vec2<u32>(0u ^ ~u_input.b, 49288u), _wgslsmith_clamp_u32(select(~(u_input.d | 22851u), u_input.b, true), ~7165u | _wgslsmith_sub_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, 2841u, 4294967295u), vec4<u32>(2306u, 2836u, 29559u, u_input.b))), u_input.b & _wgslsmith_mod_u32(u_input.b | 4294967295u, firstLeadingBit(u_input.b))));
    var_1 = -156f;
    return Struct_3(_wgslsmith_div_vec4_u32(~abs(~vec4<u32>(u_input.d, 4294967295u, u_input.b, 72945u)), ~vec4<u32>(4294967295u, 39667u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 13169u, 1u, var_2.b), vec4<u32>(1u, 38146u, 59568u, u_input.d)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3) -> Struct_1 {
    var var_0 = 1u;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-903f, _wgslsmith_f_op_f32(-1586f * 1043f)) * arg_0.xz)));
    var_0 = u_input.b;
    var var_2 = 25647i;
    let var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1158f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.x - -170f))))))));
    return Struct_1(vec3<bool>(true, true, true), false);
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: i32) -> Struct_2 {
    let var_0 = arg_1;
    var var_1 = 1u <= _wgslsmith_dot_vec2_u32(vec2<u32>(38505u, 96274u), vec2<u32>(~_wgslsmith_div_u32(u_input.d, u_input.d), ~u_input.d >> ((u_input.b << (84832u % 32u)) % 32u)));
    var var_2 = ~(~_wgslsmith_add_u32(~(~u_input.b), 31983u));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))) - _wgslsmith_f_op_f32(arg_0 * arg_0));
    var var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(round(arg_0))) * _wgslsmith_f_op_vec3_f32(max(arg_2, arg_2)));
    return Struct_2(~firstLeadingBit(_wgslsmith_div_vec2_u32(select(vec2<u32>(u_input.d, u_input.d), vec2<u32>(45413u, u_input.d), vec2<bool>(arg_1.a.x, true)), vec2<u32>(0u, u_input.b))), _wgslsmith_dot_vec4_u32(vec4<u32>(max(countOneBits(0u), u_input.d), reverseBits(74046u), firstLeadingBit(~0u), min(max(u_input.d, 54792u), 0u)), countOneBits(vec4<u32>(u_input.b, 74501u, 0u, 19430u) ^ ~vec4<u32>(4294967295u, 4294967295u, u_input.d, 4294967295u))));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: bool, arg_3: f32) -> u32 {
    var var_0 = func_5(_wgslsmith_f_op_f32(-arg_3), func_4(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2251f), arg_3, -1321f, arg_3), func_2(arg_2)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1067f, arg_3, arg_3)))))), u_input.c);
    var_0 = func_5(arg_3, func_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, 922f, arg_3, 933f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_3, arg_3, 1468f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_3, arg_3, arg_3)))))), func_2(any(vec4<bool>(false, true, true, arg_1.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-117f, -1000f, 134f)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_3, arg_3, arg_3))))))), ~1i);
    var var_1 = -2147483647i;
    let var_2 = _wgslsmith_mult_u32(firstLeadingBit(func_5(_wgslsmith_f_op_f32(-647f + arg_3), func_4(vec4<f32>(826f, arg_3, arg_3, 203f), arg_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(610f, -901f, arg_3)), -17802i).b), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(968f))), func_4(vec4<f32>(arg_3, -950f, -103f, arg_3), func_2(false)), vec3<f32>(_wgslsmith_f_op_f32(step(arg_3, -1317f)), -869f, _wgslsmith_f_op_f32(max(-895f, 631f))), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -2147483647i, -9686i), -vec3<i32>(1i, -13603i, 43730i))).b) <= u_input.d;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_3, 1316f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-166f, -1000f) + vec2<f32>(-619f, -202f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1655f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, 151f) * vec2<f32>(520f, arg_3))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(919f, arg_3) - vec2<f32>(-142f, 439f)))))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(248f, arg_3)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1923f, 2323f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_3)))))));
    return ~firstTrailingBit(var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(_wgslsmith_sub_u32(0u | _wgslsmith_mod_u32(~u_input.d, _wgslsmith_sub_u32(u_input.d, u_input.d)), _wgslsmith_add_u32(u_input.d, _wgslsmith_div_u32(func_1(Struct_3(vec4<u32>(u_input.b, u_input.d, 20024u, u_input.b)), vec2<bool>(true, false), false, 441f), ~u_input.d))));
    var var_1 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1392f, -474f, -1566f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1269f, -1115f, -295f), vec3<f32>(-297f, 844f, -1000f)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1702f, -773f, 1106f)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(401f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1554f + -105f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1047f, -1000f, true)) + _wgslsmith_f_op_f32(min(-170f, -722f))))), _wgslsmith_add_vec2_i32(u_input.a.yx, reverseBits(-u_input.a.xx)), -firstTrailingBit(u_input.a.xy));
}

