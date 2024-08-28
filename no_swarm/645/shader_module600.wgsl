struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_2, 30>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> u32 {
    let var_0 = ~(-1i & u_input.b.x);
    let var_1 = Struct_1(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.e), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.e, 4294967295u), vec2<u32>(u_input.e, 2492u), vec2<u32>(1u, 1u))), ~vec2<u32>(20967u, 31518u) ^ firstTrailingBit(vec2<u32>(15152u, u_input.e))) | max(abs(~vec2<u32>(111543u, u_input.e)), ~vec2<u32>(u_input.e, u_input.e)), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~reverseBits(vec2<u32>(0u, 49979u)), _wgslsmith_mod_vec2_u32(min(vec2<u32>(0u, u_input.e), vec2<u32>(u_input.e, u_input.e)), ~vec2<u32>(u_input.e, 4294967295u))), vec2<u32>(u_input.e, ~u_input.e)));
    let var_2 = !(!vec4<bool>(select(select(true, true, true), any(vec3<bool>(true, true, true)), all(vec3<bool>(false, false, false))), false, true, !all(vec3<bool>(false, true, true))));
    let var_3 = global1[_wgslsmith_index_u32(var_1.a.x, 30u)];
    var var_4 = var_3.a;
    return ~19103u;
}

fn func_2(arg_0: u32) -> vec2<f32> {
    let var_0 = vec4<u32>(min(arg_0, ~4346u) | ~func_3(), 4405u, arg_0, ~1u);
    var var_1 = -12152i;
    global1 = array<Struct_2, 30>();
    let var_2 = Struct_1(var_0.zx >> (_wgslsmith_div_vec2_u32(vec2<u32>(min(var_0.x, 59254u), _wgslsmith_sub_u32(var_0.x, arg_0)), vec2<u32>(0u, ~59547u)) % vec2<u32>(32u)), 1u);
    let var_3 = vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(2147483647i, select(1i, u_input.a.x, true)), reverseBits(-1i)), select(_wgslsmith_sub_i32(select(u_input.a.x, u_input.d.x, false), countOneBits(-25064i)), -1i, all(vec3<bool>(false, true, false)) | (-3833i >= u_input.a.x)) >> (reverseBits(u_input.e) % 32u), u_input.d.x & max(_wgslsmith_sub_i32(-10142i & u_input.a.x, ~u_input.c), _wgslsmith_clamp_i32(~(-50800i), -45958i, ~u_input.a.x)));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -458f), _wgslsmith_f_op_f32(step(-926f, -673f)))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -390f), 167f)));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>) -> f32 {
    var var_0 = vec2<u32>(firstTrailingBit(arg_1.x), _wgslsmith_dot_vec2_u32(arg_1, ~_wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.e) >> (arg_1 % vec2<u32>(32u)), arg_1 << (vec2<u32>(57097u, u_input.e) % vec2<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(111f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(242f * -323f)))), -901f));
    let var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(firstLeadingBit(max(0u & u_input.e, 0u)), var_0.x, u_input.e, u_input.e), vec4<u32>(1u, firstTrailingBit(1u) ^ _wgslsmith_mult_u32(1u, u_input.e), firstLeadingBit(1u), 0u) << (reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, arg_0, 20926u, 4294967295u) << (vec4<u32>(var_0.x, arg_0, arg_1.x, 45500u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(74244u, u_input.e, 23621u, arg_0), vec4<u32>(12137u, arg_0, 135587u, arg_0)))) % vec4<u32>(32u)));
    var var_3 = 44292u;
    let var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(761f, var_1))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(arg_1.x)))))), select(vec3<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, false), true)), any(vec2<bool>(true, true)) & true, true), vec3<bool>(any(vec4<bool>(false, true, false, true)), all(vec2<bool>(false, true)), any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true))), vec3<bool>(false, true, true)));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_mult_u32(max(1431u, 0u), arg_0))).x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1044f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(u_input.e, vec2<u32>(56739u, u_input.e))))))), _wgslsmith_div_f32(-124f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(312f, -741f)), _wgslsmith_f_op_f32(ceil(-1040f))))))));
    let var_0 = select(!select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), !any(vec3<bool>(true, true, true))), select(vec2<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false)), true), select(vec2<bool>(true, all(vec4<bool>(true, true, false, false))), vec2<bool>(select(true, true, false), true), true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), any(vec2<bool>(true, false))), any(vec4<bool>(true, false, false, true)) && false)), !(!select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(false, true))));
    let var_1 = -660f;
    let var_2 = Struct_1(vec2<u32>(countOneBits(u_input.e), u_input.e | u_input.e), _wgslsmith_mult_u32(~(u_input.e | u_input.e) << (14273u % 32u), 1u));
    global1 = array<Struct_2, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - var_1) + _wgslsmith_f_op_f32(f32(-1f) * -1383f)), -1042f, var_1), vec3<f32>(263f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + var_1)), _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(abs(1000f)))))));
}

