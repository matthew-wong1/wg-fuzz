struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: f32,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: f32,
    d: bool,
    e: vec3<bool>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> vec2<bool> {
    var var_0 = select(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(44432u, 78995u, 118037u), vec3<u32>(1u, arg_1, 4294967295u), arg_0.e.x), ~vec3<u32>(1u, 53274u, arg_0.a.d), vec3<u32>(1u, 59233u, arg_0.a.d) & vec3<u32>(69996u, arg_1, arg_0.a.b.a.a)) | vec3<u32>(0u, 66648u, abs(arg_2.a)), ~(~vec3<u32>(arg_1, arg_1, arg_2.a)), false) & firstTrailingBit(~(~min(vec3<u32>(arg_1, arg_0.a.d, 16777u), vec3<u32>(arg_2.a, 1u, 30168u))));
    var_0 = ~reverseBits(select(~vec3<u32>(var_0.x, arg_0.a.d, 83987u), _wgslsmith_div_vec3_u32(vec3<u32>(arg_2.a, 60115u, 4294967295u), countOneBits(vec3<u32>(arg_1, 0u, 34844u))), arg_0.e.x));
    let var_1 = firstLeadingBit(~firstLeadingBit(max(vec4<u32>(arg_1, 7149u, 1u, var_0.x), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, arg_1, 31025u, arg_1), vec4<u32>(arg_1, arg_1, arg_2.a, arg_0.a.d)))));
    var_0 = firstTrailingBit(vec3<u32>(var_1.x, 45122u, reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.d, var_0.x), var_0.xy) ^ countOneBits(var_0.x))));
    var_0 = ~var_1.yww;
    return vec2<bool>(false, any(select(arg_0.e, arg_0.e, true)));
}

fn func_2(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = !all(select(func_3(Struct_4(Struct_3(false, Struct_2(Struct_1(arg_0.a), -1559f), -1831f, arg_0.a), vec3<i32>(2147483647i, -1i, u_input.b), 1381f, true, vec3<bool>(true, false, false)), arg_0.a, arg_0, _wgslsmith_f_op_f32(589f * -731f)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))));
    var_0 = all(vec3<bool>(true, !any(vec2<bool>(true, true)), select(any(vec2<bool>(true, false)), (0u >> (1u % 32u)) > firstTrailingBit(0u), any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false)))));
    var_0 = true;
    var var_1 = vec4<i32>(u_input.b, ~(-u_input.b), _wgslsmith_clamp_i32(u_input.b & abs(53339i), _wgslsmith_sub_i32(u_input.a, u_input.b), 1i), -2147483647i);
    var_0 = false;
    return ~(var_1.xw ^ min(var_1.ww >> (vec2<u32>(arg_0.a, arg_0.a) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(firstTrailingBit(var_1.wz), _wgslsmith_sub_vec2_i32(var_1.yx, vec2<i32>(1i, 16139i)))));
}

fn func_1() -> vec4<bool> {
    var var_0 = -_wgslsmith_mult_vec2_i32(func_2(Struct_1(~52730u)), ~select(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 1i)), func_2(Struct_1(8434u)), vec2<bool>(true, true)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-989f * _wgslsmith_f_op_f32(722f + _wgslsmith_div_f32(705f, 619f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(755f))))));
    var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(569f, 462f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) * vec2<f32>(var_1.x, -308f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)), vec2<bool>(!all(vec4<bool>(false, false, true, true)), false)));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1282f - var_1.x)), -1384f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1795f, var_1.x))))))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -538f), 1299f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1000f, -523f, false)), _wgslsmith_f_op_f32(-1319f - var_1.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(127f, 767f, 1000f), vec3<f32>(var_1.x, 304f, var_1.x), false)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, 969f)))))), true));
    var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.zy * var_2.yx)) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_2.zx)))) * vec2<f32>(_wgslsmith_f_op_f32(trunc(var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + var_2.x) * var_2.x)))));
    return !vec4<bool>(select(true, true, true), func_3(Struct_4(Struct_3(true, Struct_2(Struct_1(4294967295u), var_2.x), var_2.x, 5368u), min(vec3<i32>(var_0.x, -2147483647i, var_0.x), vec3<i32>(-2147483647i, 1i, u_input.b)), _wgslsmith_f_op_f32(-var_2.x), all(vec3<bool>(false, true, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), 0u, Struct_1(~4u), _wgslsmith_f_op_f32(1349f * var_2.x)).x, func_3(Struct_4(Struct_3(true, Struct_2(Struct_1(4294967295u), var_1.x), var_1.x, 35407u), vec3<i32>(2147483647i, u_input.b, var_0.x), 833f, false, vec3<bool>(true, false, true)), _wgslsmith_dot_vec3_u32(vec3<u32>(99846u, 12350u, 0u), vec3<u32>(1u, 42067u, 58050u)), Struct_1(40112u), _wgslsmith_f_op_f32(ceil(1106f))).x && true, true & (_wgslsmith_div_f32(1493f, var_2.x) != _wgslsmith_f_op_f32(216f - 1191f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(select(!(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), true)), !vec4<bool>(true, true, all(vec4<bool>(false, true, true, false)), false), func_1()));
    let var_1 = vec4<bool>(true, (-1i & u_input.a) == _wgslsmith_add_i32(u_input.a, ~0i), true, select(true, false && var_0, var_0));
    let var_2 = Struct_1(~4294967295u);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -300f), _wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(920f, -1685f)), _wgslsmith_f_op_f32(444f - 1373f), false)), false))));
    var var_4 = vec2<bool>(!func_1().x, false);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~_wgslsmith_add_i32(0i, 28443i) >> (~(~var_2.a) % 32u), ~(~u_input.a) | (i32(-1i) * -5598i), ~(-1i), abs(u_input.a)), var_2.a, ~_wgslsmith_sub_vec3_u32(vec3<u32>(~49758u, countOneBits(73835u), _wgslsmith_clamp_u32(var_2.a, 0u, 26332u)), _wgslsmith_div_vec3_u32(vec3<u32>(var_2.a, 0u, 7629u), vec3<u32>(31338u, 0u, 9320u)) & (vec3<u32>(var_2.a, 4294967295u, var_2.a) << (vec3<u32>(var_2.a, var_2.a, 11653u) % vec3<u32>(32u)))), vec3<f32>(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(ceil(var_3)), _wgslsmith_f_op_f32(117f - 1000f)));
}

