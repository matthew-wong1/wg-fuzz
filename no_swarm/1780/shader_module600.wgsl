struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    let var_0 = -1396f;
    let var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(~(u_input.b & min(4294967295u, 0u)), _wgslsmith_add_u32(~(u_input.b | u_input.a.x), u_input.a.x), ~u_input.b), u_input.a);
    global0 = array<i32, 9>();
    var var_2 = vec3<i32>(-(~(~55576i)), _wgslsmith_div_i32(u_input.c, 1i), ~u_input.c & ~select(1i, abs(u_input.c), any(vec2<bool>(false, true))));
    let var_3 = Struct_1(true, vec2<bool>(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true))), true));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(998f, var_0))))), _wgslsmith_f_op_f32(-276f + 1004f)))));
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-237f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -979f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(602f))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-991f, _wgslsmith_f_op_f32(1070f + _wgslsmith_f_op_f32(f32(-1f) * -1526f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 1386f))) * vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(642f + -1004f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(883f, 445f)) * -798f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))));
    var var_1 = _wgslsmith_sub_vec2_u32(vec2<u32>(firstLeadingBit(u_input.a.x), 1u), vec2<u32>(~countOneBits(u_input.a.x), u_input.b)) & vec2<u32>(u_input.b, u_input.a.x);
    let var_2 = Struct_1(true, select(!vec2<bool>(arg_0.x, arg_0.x), !vec2<bool>(select(true, true, false), !arg_0.x), arg_0.xy));
    let var_3 = !arg_0;
    var_1 = ~(~vec2<u32>(0u, firstLeadingBit(var_1.x) >> (1u % 32u)));
    return Struct_1(var_3.x | true, !select(select(!vec2<bool>(arg_0.x, var_2.a), select(vec2<bool>(var_2.b.x, true), var_2.b, true), vec2<bool>(var_2.a, false)), select(vec2<bool>(arg_0.x, true), !var_3.xy, !arg_0.yx), !arg_0.zz));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: vec2<bool>) -> bool {
    global0 = array<i32, 9>();
    global0 = array<i32, 9>();
    var var_0 = arg_0;
    let var_1 = firstLeadingBit(1u);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - 436f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(899f, 114f, arg_0.a)) + _wgslsmith_f_op_f32(trunc(-1557f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1000f)))));
    return false;
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = -2147483647i;
    var var_1 = Struct_1(func_4(func_2(vec3<bool>(true, true, true)), vec2<bool>(true, _wgslsmith_dot_vec2_u32(u_input.a.zx, vec2<u32>(1u, u_input.b)) == 0u), _wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(27444u, arg_0, arg_0)), u_input.a, u_input.a), vec2<bool>(true, true)), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), global0[_wgslsmith_index_u32(35639u, 9u)] != -40560i), vec2<bool>(true, true), true));
    let var_2 = !(!select(!select(vec3<bool>(true, var_1.a, true), vec3<bool>(false, false, false), vec3<bool>(false, false, var_1.b.x)), select(vec3<bool>(true, true, true), vec3<bool>(var_1.b.x, false, var_1.a), vec3<bool>(true, true, true)), true));
    var var_3 = Struct_1(all(vec2<bool>(true, false)), func_2(!select(select(var_2, var_2, var_2), vec3<bool>(var_1.a, var_1.a, var_1.a), var_2.x)).b);
    let var_4 = select(_wgslsmith_div_vec2_u32(abs(vec2<u32>(u_input.a.x, u_input.a.x ^ 62859u)), u_input.a.xx), ~(~vec2<u32>(4294967295u, 77330u)) | u_input.a.xy, var_2.yx);
    return countOneBits(reverseBits(4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 9>();
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-303f, 1002f)) * -485f))), -2855f), -1579f));
    let var_1 = _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.b, ~1u, 0u), func_1(min(abs(u_input.b), u_input.a.x)) & reverseBits(92359u));
    var var_2 = Struct_1(select(!func_4(Struct_1(true, vec2<bool>(true, false)), vec2<bool>(false, true), _wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(5684u, u_input.a.x, var_1)), vec2<bool>(true, true)), true, false), vec2<bool>(false, any(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, false), false))));
    global0 = array<i32, 9>();
    let var_3 = var_2.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -390f, -1377f) * vec3<f32>(1528f, 504f, var_0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, var_0) - vec3<f32>(var_0, -1774f, var_0)))) - vec3<f32>(598f, var_0, _wgslsmith_f_op_f32(-var_0)))), ~_wgslsmith_add_vec4_u32(vec4<u32>(var_1, var_1 | 4294967295u, var_1, ~var_1), vec4<u32>(u_input.b, ~0u, abs(5300u), var_1)), firstTrailingBit(firstTrailingBit(~(~vec4<u32>(var_1, 0u, 8954u, var_1)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1391f)) - -253f))), firstLeadingBit(u_input.a.zy));
}

