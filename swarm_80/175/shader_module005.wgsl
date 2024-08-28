struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: f32,
    d: vec3<u32>,
    e: u32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_2, arg_3: i32) -> vec2<bool> {
    let var_0 = vec3<u32>(63558u, 20956u, ~u_input.b.x);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a)), arg_1, -1489f);
    var var_2 = abs(firstLeadingBit(arg_0));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(step(1168f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1032f) + _wgslsmith_f_op_f32(arg_2.a - 257f)) - _wgslsmith_f_op_f32(-arg_1)))), _wgslsmith_f_op_vec2_f32(floor(var_1.yy)), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, ~arg_2.c, arg_3, 1i), reverseBits(~vec4<i32>(arg_2.c, -2147483647i, arg_3, arg_3))));
    var var_4 = var_3.c;
    return !select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(all(vec3<bool>(true, true, false)), false)), select(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, var_3.a <= 1113f), false), true);
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_4) -> f32 {
    let var_0 = Struct_3(!func_3(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 81005u, 1u, u_input.a), vec4<u32>(u_input.c.x, u_input.c.x, 51904u, u_input.b.x)), _wgslsmith_mult_u32(4294967295u, u_input.c.x)), _wgslsmith_f_op_f32(abs(arg_0.x)), Struct_2(1482f, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1151f, -635f) * vec2<f32>(arg_2.a, 1000f)), abs(-2147483647i)), -41530i), -((firstLeadingBit(vec3<i32>(0i, 1i, arg_1)) | vec3<i32>(arg_1, arg_1, arg_1)) ^ ~vec3<i32>(arg_1, 1i, arg_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.a))))), arg_0.x), ~vec3<u32>(~u_input.a, 31030u, 4294967295u), countOneBits(u_input.c.x));
    let var_1 = ~_wgslsmith_clamp_vec2_i32(vec2<i32>(-countOneBits(var_0.b.x), arg_1), var_0.b.xy, firstTrailingBit(vec2<i32>(arg_1, var_0.b.x) >> (var_0.d.yz % vec2<u32>(32u))));
    var var_2 = vec4<bool>(!(var_1.x > ~abs(-1i)), any(!vec3<bool>(any(var_0.a), !var_0.a.x, any(vec2<bool>(var_0.a.x, var_0.a.x)))), var_0.a.x, any(!(!select(vec3<bool>(var_0.a.x, true, false), vec3<bool>(true, false, var_0.a.x), var_0.a.x))));
    let var_3 = ~_wgslsmith_mod_u32(reverseBits(37299u), ~u_input.b.x);
    let var_4 = countOneBits(~min(~var_0.d.yx, ~abs(vec2<u32>(23759u, 23635u))));
    return 357f;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec2<i32>) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1648f, 1f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-414f, _wgslsmith_f_op_f32(1536f - -351f))), 1128f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(784f + _wgslsmith_f_op_f32(-1219f * -530f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -947f), _wgslsmith_f_op_f32(func_2(vec2<f32>(-1467f, -270f), 2147483647i, Struct_4(-333f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(843f * -660f)), _wgslsmith_f_op_f32(-144f * _wgslsmith_f_op_f32(func_1(Struct_1(-40432i, false), false, vec2<i32>(-23990i, -1i)))), _wgslsmith_f_op_f32(1f * 1f), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1702f, -258f))), ~(-2147483647i), Struct_4(1000f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(483f, -581f, -160f, 1028f))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(847f, -1454f, 1941f, -1000f)))) * vec4<f32>(_wgslsmith_f_op_f32(select(-1372f, 1669f, false)), _wgslsmith_f_op_f32(round(543f)), 1480f, _wgslsmith_f_op_f32(f32(-1f) * -640f)))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(var_0.xx)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_0.xx + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.x, -316f), vec2<f32>(var_0.x, var_0.x))))))), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), 627f <= var_0.x), !vec2<bool>(any(vec2<bool>(true, false)), true), vec2<bool>(true, true))));
    let var_2 = _wgslsmith_add_u32(u_input.a, u_input.b.x);
    let var_3 = vec3<i32>(~(-firstTrailingBit(firstLeadingBit(-1i))), -firstLeadingBit(1i), _wgslsmith_mult_i32(_wgslsmith_sub_i32(0i, select(55722i, 27980i, false) & min(1i, 5536i)), -10768i));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1342f - -1034f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), -980f);
    let var_4 = vec2<bool>(any(vec3<bool>(true, true, true)) == true, false);
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(-(vec3<i32>(-1i) * -firstLeadingBit(vec3<i32>(-2147483647i, 4370i, var_3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(166f * var_0.x)), -abs(~vec4<i32>(var_3.x, var_3.x, var_3.x, -37402i)), ~1u);
}

