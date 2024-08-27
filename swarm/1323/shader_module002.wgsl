struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: vec2<u32>) -> i32 {
    let var_0 = -1441f;
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(280f, var_0, var_0, 1748f) * vec4<f32>(var_0, -205f, -736f, var_0))))), vec4<f32>(var_0, -620f, var_0, var_0), vec4<bool>(arg_0.x, all(select(arg_0, arg_0, arg_0)), arg_0.x && true, true)))));
    let var_2 = vec3<i32>(-1i, _wgslsmith_mult_i32(-2147483647i, ~firstTrailingBit(2147483647i)), u_input.a);
    let var_3 = Struct_4(51704u, 0u, true, true);
    var var_4 = _wgslsmith_f_op_f32(var_0 + var_1.x);
    return u_input.a;
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: vec2<i32>, arg_3: Struct_3) -> bool {
    let var_0 = Struct_3(Struct_2(!vec3<bool>(all(arg_3.a.a.yz), true, false), ~111996u));
    return false;
}

fn func_1(arg_0: f32) -> Struct_4 {
    var var_0 = Struct_2(vec3<bool>(func_3(~u_input.a, vec3<i32>(func_2(vec4<bool>(true, false, true, true), vec2<u32>(0u, 48937u), vec2<u32>(0u, 86781u)), max(u_input.a, 17368i), select(u_input.a, -2147483647i, true)), vec2<i32>(i32(-1i) * -1i, _wgslsmith_clamp_i32(-2147483647i, 6233i, -1i)), Struct_3(Struct_2(vec3<bool>(true, true, true), 0u))), all(vec3<bool>(all(vec2<bool>(false, true)), 1i != u_input.a, arg_0 <= arg_0)), !(all(vec2<bool>(true, false)) & (1i < u_input.a))), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(~0u, max(9008u, 1u)), 37406u, _wgslsmith_mult_u32(firstTrailingBit(1u), ~27967u), ~(~0u)), vec4<u32>(1u, 1u, 1u, 1u)));
    var_0 = Struct_2(select(var_0.a, var_0.a, !(any(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, true)) | var_0.a.x)), min((_wgslsmith_sub_u32(4294967295u, var_0.b) | _wgslsmith_div_u32(11062u, var_0.b)) << (~(~var_0.b) % 32u), 0u));
    var_0 = Struct_2(var_0.a, var_0.b);
    var var_1 = Struct_4(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(113552u, var_0.b, var_0.b, var_0.b), ~vec4<u32>(var_0.b, 0u, var_0.b, 69881u), abs(vec4<u32>(var_0.b, var_0.b, var_0.b, 0u))), reverseBits(~vec4<u32>(var_0.b, 8970u, 67521u, 54806u))) >> (4294967295u % 32u), var_0.b, any(var_0.a.zx), all(var_0.a.xx));
    var var_2 = vec2<u32>(var_1.a, var_0.b) << (~abs(vec2<u32>(~0u, _wgslsmith_div_u32(var_0.b, 4294967295u))) % vec2<u32>(32u));
    return Struct_4(~countOneBits(~(var_0.b & var_0.b)), 1u, false, var_0.a.x);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_4) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -597f, 674f, -399f), vec4<f32>(732f, -179f, 1507f, 374f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1732f, 1000f, 352f, -1931f))) - vec4<f32>(850f, _wgslsmith_f_op_f32(round(1000f)), -147f, _wgslsmith_f_op_f32(step(175f, -1000f))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-559f * 782f) - _wgslsmith_f_op_f32(-203f * -701f)), _wgslsmith_f_op_f32(max(445f, _wgslsmith_f_op_f32(step(-1000f, -1577f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(147f)), _wgslsmith_f_op_f32(550f + -1522f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1026f, -206f) + -253f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(486f, -711f, 1000f, 1256f))) * vec4<f32>(281f, 1472f, 120f, 996f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1607f, 1138f, -1176f, -365f)))));
    var var_1 = i32(-1i) * -18505i;
    let var_2 = _wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(arg_0 ^ arg_0, -(u_input.a >> (arg_1.b % 32u)), -u_input.a)), vec3<i32>(arg_0, 35135i, u_input.a));
    var_1 = arg_0 & var_2.x;
    var_1 = -1i;
    return Struct_3(arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(-(i32(-1i) * -abs(-31999i)), Struct_2(!vec3<bool>(select(false, true, true), false, true), ~_wgslsmith_add_u32(~0u, select(19158u, 15398u, true))), func_1(552f));
    let var_1 = true;
    let var_2 = !vec3<bool>(all(!select(var_0.a.a.zz, vec2<bool>(true, var_0.a.a.x), var_0.a.a.x)), false, false);
    let var_3 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(113f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1877f - -195f))), 189f), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1433f * _wgslsmith_f_op_f32(1000f - -1258f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-971f, 266f, 2206f, 1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(200f, 1694f, -752f, -1432f) * vec4<f32>(-156f, -1834f, -680f, -1798f)), select(vec4<bool>(false, true, var_2.x, var_0.a.a.x), vec4<bool>(false, false, false, false), false))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(717f, -392f, 666f, -2035f) + vec4<f32>(-1000f, -1645f, 1843f, 326f))))))), !(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, var_0.a.a.x, false), var_2.x), select(vec4<bool>(var_2.x, true, var_0.a.a.x, false), vec4<bool>(var_1, true, false, var_0.a.a.x), vec4<bool>(var_1, false, true, true)), select(vec4<bool>(true, var_0.a.a.x, var_1, false), vec4<bool>(var_0.a.a.x, var_0.a.a.x, true, false), vec4<bool>(var_1, true, true, false))))));
    let var_4 = firstLeadingBit(firstLeadingBit(-6792i));
    let var_5 = _wgslsmith_sub_vec4_i32(vec4<i32>(49800i, var_4, 1i, select(max(-u_input.a, var_4 ^ var_4), 1i, var_1)), -vec4<i32>(1i, firstTrailingBit(var_4), u_input.a, -21512i) << (vec4<u32>(79662u, firstTrailingBit(select(var_0.a.b, 41326u, true)), var_0.a.b, _wgslsmith_add_u32(~1u, _wgslsmith_sub_u32(var_0.a.b, 37675u))) % vec4<u32>(32u)));
    var var_6 = vec2<bool>(var_0.a.a.x & all(select(vec3<bool>(var_1, false, var_2.x), var_0.a.a, !var_1)), any(vec4<bool>(var_2.x, true, all(select(vec4<bool>(var_2.x, var_2.x, var_2.x, var_1), vec4<bool>(var_2.x, var_1, var_1, var_1), vec4<bool>(false, var_1, false, var_2.x))), func_3(func_2(vec4<bool>(var_2.x, var_0.a.a.x, false, true), vec2<u32>(var_0.a.b, var_0.a.b), vec2<u32>(var_0.a.b, var_0.a.b)), vec3<i32>(var_5.x, -49199i, -1i), _wgslsmith_div_vec2_i32(var_5.xz, var_5.xw), Struct_3(Struct_2(var_2, var_0.a.b))))));
    var var_7 = _wgslsmith_div_vec3_f32(var_3.zwz, var_3.wyw);
    var_6 = var_2.zx;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(-_wgslsmith_mod_vec4_i32(var_5, var_5))));
}

