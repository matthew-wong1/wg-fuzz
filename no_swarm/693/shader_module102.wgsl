struct Struct_1 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<i32>) -> bool {
    let var_0 = vec4<u32>(select(0u, abs(u_input.b.x), true), 33847u, firstLeadingBit(~(_wgslsmith_mult_u32(1u, u_input.a.x) | max(u_input.b.x, 4294967295u))), 38584u);
    var var_1 = max(var_0, _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, max(var_0.x, 0u), u_input.a.x, var_0.x), vec4<u32>(~var_0.x, 0u, u_input.a.x, ~5925u)), var_0));
    var var_2 = var_1.x;
    var var_3 = Struct_1(firstLeadingBit(max(~u_input.b.x, 14664u >> (firstTrailingBit(3563u) % 32u))), ~32485u);
    var var_4 = select(select(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true)), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), true), select(!vec3<bool>(true, true, any(vec2<bool>(false, false))), select(vec3<bool>(true, all(vec4<bool>(false, true, false, true)), true), vec3<bool>(true, select(true, false, false), true), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(false, true, true))), vec3<bool>(true, true, true));
    return !var_4.x;
}

fn func_4(arg_0: bool, arg_1: vec3<bool>) -> f32 {
    var var_0 = Struct_1(~(~firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.a.x, 0u), vec3<u32>(1u, u_input.a.x, u_input.b.x)))), u_input.b.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(626f, -227f, 154f, 194f), vec4<f32>(452f, -528f, -1223f, 716f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-613f, 861f, 720f, -990f), vec4<f32>(1000f, 978f, -655f, 364f), false)))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-720f * -178f) + -132f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1628f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -411f)), _wgslsmith_f_op_f32(f32(-1f) * -2041f))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(781f, var_1.x))), var_1.x, _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(f32(-1f) * -1801f)), _wgslsmith_f_op_f32(round(var_1.x)))));
    var_0 = Struct_1(4294967295u, _wgslsmith_mult_u32(4294967295u, ~(~var_0.b << (_wgslsmith_mod_u32(4294967295u, 4294967295u) % 32u))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.zxz) * vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2912f - var_1.x), var_1.x)), _wgslsmith_f_op_f32(599f * _wgslsmith_f_op_f32(f32(-1f) * -869f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-489f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x * 1000f), _wgslsmith_f_op_f32(exp2(var_1.x))))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(-1551f - var_2.x))) - _wgslsmith_f_op_f32(f32(-1f) * -699f))), -1387f));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: u32) -> vec3<u32> {
    let var_0 = false;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-198f)), arg_0.x);
    var_1 = _wgslsmith_f_op_f32(func_4(true, vec3<bool>(func_3(~vec3<i32>(-1i, 50429i, -1i)) || var_0, _wgslsmith_sub_i32(~(-2147483647i), -1i >> (arg_3 % 32u)) == _wgslsmith_div_i32(-1688i, _wgslsmith_clamp_i32(44703i, 32547i, -16461i)), all(!vec3<bool>(var_0, var_0, true)))));
    let var_2 = countOneBits(1u);
    let var_3 = _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(firstTrailingBit(6553u), arg_3)), u_input.a);
    return vec3<u32>((arg_2.a >> (((var_2 >> (arg_3 % 32u)) & var_3) % 32u)) >> (1u % 32u), 22993u, 66263u);
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(u_input.b, select(func_2(vec2<f32>(1298f, 115f), vec4<f32>(637f, 307f, 558f, 1226f), Struct_1(1u, u_input.b.x), 51076u), min(u_input.b, vec3<u32>(u_input.b.x, 23788u, 68171u)), arg_0) & u_input.b), _wgslsmith_div_vec3_u32(u_input.b, ~u_input.b));
    let var_1 = vec3<u32>(u_input.a.x, firstLeadingBit(46515u), 1u);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1203f * 1416f), -381f) + vec2<f32>(-870f, _wgslsmith_f_op_f32(1063f * 524f))) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1074f + 311f), -434f), 2168f)) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1949f) + _wgslsmith_f_op_f32(abs(139f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1278f, -434f))))));
    var_2 = vec2<f32>(_wgslsmith_div_f32(-311f, -343f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -377f) + 1657f));
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(577f, 2111f))));
    return Struct_1(0u, 4294967295u);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>) -> i32 {
    var var_0 = func_1(all(vec3<bool>(true, true, true)));
    var_0 = Struct_1(u_input.a.x, 4294967295u);
    var var_1 = func_1(any(vec4<bool>(true, true, true, true)));
    var_0 = Struct_1(24650u, _wgslsmith_mult_u32(1u, 1u));
    var_0 = Struct_1(0u, var_1.b);
    return -(~(33645i >> (max(1u, var_1.b) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(reverseBits(max(-7499i, -1i)), firstLeadingBit(abs(-52227i))), -1i), -min(~40151i, func_5(func_1(true), vec3<f32>(-182f, 380f, -682f))), 0i, _wgslsmith_mod_i32(firstLeadingBit(1i), firstLeadingBit(firstTrailingBit(-10513i))) << (17006u % 32u));
    let var_2 = Struct_1(32846u, u_input.b.x);
    var var_3 = func_1(true);
    var_3 = Struct_1(4294967295u, ~_wgslsmith_mod_u32(52227u, 19973u));
    var var_4 = func_1(select(var_0, any(!vec4<bool>(false, var_0, var_0, var_0)), -6089i <= _wgslsmith_dot_vec2_i32(var_1.zw, _wgslsmith_mod_vec2_i32(vec2<i32>(-16093i, 2147483647i), var_1.zw))));
    var_4 = Struct_1(~_wgslsmith_sub_u32(28814u, ~4u | var_2.b), abs(34757u));
    var_3 = func_1(all(!vec4<bool>(var_0, var_0, !var_0, select(true, var_0, var_0))));
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(688f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(664f))))), _wgslsmith_div_f32(-1333f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1782f) - -452f)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~(~countOneBits(var_1.wy))), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a, var_3.a, 42840u), max(u_input.b, u_input.b)), u_input.b ^ vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, var_4.b, 30971u, u_input.b.x), vec4<u32>(var_4.a, 4294967295u, 0u, var_4.a)), max(vec4<u32>(var_2.b, 0u, 0u, 0u), vec4<u32>(var_3.b, 0u, var_3.b, var_2.a))), var_3.b, 1u));
}

