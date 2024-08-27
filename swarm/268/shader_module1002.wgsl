struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: f32,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-669f * 702f))) - 702f));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -252f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -294f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1558f * -214f)) + -1000f)), _wgslsmith_div_f32(-227f, _wgslsmith_f_op_f32(-var_0.a)));
    global0 = 6912i;
    var var_2 = var_0;
    var var_3 = -vec4<i32>((0i >> (u_input.a % 32u)) & 1i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, 2147483647i, -31652i, 0i), ~vec4<i32>(21933i, 16938i, -9865i, 1i)), 70416i), _wgslsmith_div_i32(countOneBits(-1i), _wgslsmith_clamp_i32(~50401i, firstTrailingBit(-17127i), -1i)), _wgslsmith_sub_i32(1i, ~countOneBits(-2147483647i)));
    return var_3.x >= -2147483647i;
}

fn func_1(arg_0: Struct_2) -> bool {
    global0 = _wgslsmith_mod_i32(~60495i, firstTrailingBit(firstTrailingBit(_wgslsmith_mod_i32(0i, countOneBits(-33758i)))));
    var var_0 = arg_0;
    global0 = 40023i;
    global0 = 0i;
    let var_1 = i32(-1i) * -39105i;
    return select(-1i, -1i, !func_2()) <= _wgslsmith_add_i32(_wgslsmith_sub_i32(~2147483647i, _wgslsmith_mod_i32(var_1, var_1)) & 9494i, var_1);
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = -_wgslsmith_mod_i32(~0i, ~40567i);
    var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(select(_wgslsmith_add_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(0i, -24457i)) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(55437u, u_input.a)) % vec2<u32>(32u)), ~vec2<i32>(22456i, 13329i), vec2<bool>(true, all(vec2<bool>(false, true)))), vec2<i32>(1i, 1i)), vec2<i32>(-1i, _wgslsmith_sub_i32(-_wgslsmith_sub_i32(26664i, -1i), 38086i)));
    let var_1 = vec4<u32>(abs(u_input.a), firstTrailingBit(~max(u_input.a, ~20935u)), u_input.a, abs(u_input.a));
    let var_2 = select(select(vec4<bool>(all(vec2<bool>(true, true)), true, !any(vec4<bool>(true, false, true, false)), false), !(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), true), any(vec3<bool>(true, false, true)))), !select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), false), vec4<bool>(false, true, false, false)), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), false), true), arg_0.a < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.a - arg_0.a)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(arg_0.a)))), _wgslsmith_f_op_f32(max(-1073f, arg_0.a)))), _wgslsmith_f_op_f32(round(arg_0.a)), _wgslsmith_f_op_f32(-arg_0.a), 1082f));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-837f * _wgslsmith_f_op_f32(sign(arg_0.a))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1155f))) - _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(round(-513f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_add_i32(12793i, 1i);
    let var_0 = u_input.a;
    let var_1 = any(vec4<bool>(any(select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), false))), select(!select(true, false, true), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -95i), vec2<i32>(2147483647i, 20672i)) >= -1i, !func_1(Struct_2(1160f))), true, false));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(1657f)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -605f) * _wgslsmith_f_op_f32(floor(-804f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1669f, _wgslsmith_f_op_f32(399f * 475f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1095f, 1014f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(355f - 2223f) - -1627f)) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1135f + 794f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(671f + -677f)))));
    global0 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -1i, 1i), ~firstLeadingBit(reverseBits(vec2<i32>(-2147483647i, 0i))));
    global0 = -(-27962i & firstTrailingBit(~(-7978i)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-1i), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -539f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(var_2.a))) - _wgslsmith_f_op_f32(func_3(Struct_2(var_2.a)))))));
}

