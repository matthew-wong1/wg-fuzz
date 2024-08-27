struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: vec4<f32>) -> u32 {
    return ~34463u;
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    let var_0 = vec3<bool>(!(~1u == _wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 35957u, 33524u), vec3<u32>(37485u, 1u, 43457u)))), false, true);
    let var_1 = max(arg_0 & _wgslsmith_div_vec3_i32(u_input.a.xzz >> (vec3<u32>(4294967295u, 0u, 65205u) % vec3<u32>(32u)), vec3<i32>(countOneBits(-65903i), arg_0.x, abs(2147483647i))), vec3<i32>(i32(-1i) * -1859i, u_input.d.x, u_input.b.x) | _wgslsmith_div_vec3_i32(abs(-arg_0), vec3<i32>(i32(-1i) * -2147483647i, ~arg_0.x, arg_0.x)));
    let var_2 = vec2<i32>(-2147483647i, -2147483647i);
    var var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, -273f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1522f, 352f))) + vec2<f32>(-737f, -438f))))));
    var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) + _wgslsmith_f_op_f32(var_3.x + var_3.x))), _wgslsmith_f_op_f32(abs(-1126f))));
    return 2147483647i;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<u32>) -> vec4<u32> {
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(-firstLeadingBit(_wgslsmith_sub_i32(u_input.d.x, -67972i)), func_3(~_wgslsmith_add_vec3_i32(vec3<i32>(0i, u_input.d.x, u_input.a.x), vec3<i32>(u_input.a.x, 2147483647i, -1i)))), vec2<i32>(~(-_wgslsmith_div_i32(u_input.d.x, -12058i)), firstTrailingBit(_wgslsmith_sub_i32(-u_input.e.x, u_input.a.x))));
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(433f, 1000f))), _wgslsmith_f_op_f32(221f - 1f))), vec2<u32>(_wgslsmith_div_u32(arg_1.x, countOneBits(~68626u)), arg_0.x), _wgslsmith_mult_u32(~(~select(0u, arg_0.x, true)), ~countOneBits(arg_1.x) | 39342u), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-1440f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-329f, 122f))), _wgslsmith_f_op_f32(f32(-1f) * -1202f)), vec3<f32>(941f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1141f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(626f)) * 853f))));
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1727f * var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.d.x))))), ~vec2<u32>(min(abs(arg_0.x), var_1.b.x), _wgslsmith_mod_u32(~var_1.c, arg_1.x)), ~(~4294967295u), vec3<f32>(var_1.d.x, -1780f, _wgslsmith_f_op_f32(var_1.d.x - _wgslsmith_f_op_f32(floor(-789f)))));
    let var_3 = Struct_2(~vec3<u32>(~1u, ~1u, var_2.b.x), Struct_1(~select(abs(vec4<u32>(52031u, 22262u, 36382u, arg_0.x)), ~vec4<u32>(arg_1.x, arg_1.x, arg_0.x, 4294967295u), true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.a.x, -1134f)))))), !select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true)), var_0 != firstLeadingBit(2147483647i)), Struct_1(min(~_wgslsmith_clamp_vec4_u32(arg_0, arg_0, arg_0), ~arg_0), var_1.d.x), -2147483647i);
    var var_4 = Struct_1(max(arg_0, vec4<u32>(_wgslsmith_dot_vec4_u32(~var_3.b.a, min(vec4<u32>(var_3.b.a.x, 4294967295u, 39662u, 12278u), var_3.b.a)), 4294967295u, 4294967295u, reverseBits(_wgslsmith_div_u32(arg_0.x, arg_0.x)))), _wgslsmith_f_op_f32(-1122f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -426f)))));
    return ~var_4.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ((~vec4<u32>(1u, 1u, 1u, 1u) << ((~vec4<u32>(64297u, 1157u, 4294967295u, 4294967295u) << (select(vec4<u32>(29695u, 0u, 4294967295u, 0u), vec4<u32>(144u, 65641u, 4294967295u, 0u), vec4<bool>(false, true, true, true)) % vec4<u32>(32u))) % vec4<u32>(32u))) >> (vec4<u32>(1u, 0u, ~countOneBits(30213u), 1u) % vec4<u32>(32u))) & _wgslsmith_mod_vec4_u32(max(vec4<u32>(9215u, 1u, func_1(vec2<f32>(-1675f, 217f), Struct_4(vec2<f32>(471f, -884f), vec2<u32>(12080u, 4294967295u), 56186u, vec3<f32>(1105f, -150f, -660f)), vec4<f32>(514f, -465f, -849f, -1474f)), ~1u), ~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, 1u, 28537u), vec4<u32>(1270u, 95908u, 4294967295u, 1u))), firstLeadingBit(_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(5481u, 0u, 4294967295u, 4294967295u)), func_2(vec4<u32>(31563u, 4294967295u, 369u, 54154u), vec2<u32>(110868u, 22302u)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-667f, -805f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-821f, -1476f) * vec2<f32>(-1275f, 242f))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1142f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-412f)), _wgslsmith_f_op_f32(select(164f, 2243f, true)))))));
    let var_2 = !select(select(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), (var_1.x > var_1.x) | false), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false)), vec3<bool>(true, 2147483647i != u_input.b.x, select(false, true, false)), all(vec3<bool>(false, true, true))), false);
    let var_3 = ~(~vec2<u32>(~var_0.x, reverseBits(abs(33539u))));
    var var_4 = abs(vec4<i32>(-u_input.c.x, ~reverseBits(-14424i), ~(-u_input.e.x), -6468i));
    var_4 = _wgslsmith_mod_vec4_i32(abs(u_input.c), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, max(abs(u_input.c.x), _wgslsmith_mult_i32(var_4.x, -2147483647i)), 1i, var_4.x), _wgslsmith_sub_vec4_i32(-(~u_input.c), _wgslsmith_add_vec4_i32(max(vec4<i32>(0i, var_4.x, -19173i, 1i), vec4<i32>(247i, u_input.b.x, u_input.a.x, u_input.b.x)), u_input.d))));
    var_4 = firstTrailingBit(vec4<i32>(reverseBits(~(var_4.x << (var_0.x % 32u))), -2147483647i, ~(-2147483647i), 1i));
    var_4 = (u_input.c << (abs(firstTrailingBit(_wgslsmith_clamp_vec4_u32(var_0, var_0, var_0))) % vec4<u32>(32u))) & -_wgslsmith_mod_vec4_i32(abs(vec4<i32>(-36511i, var_4.x, 67040i, var_4.x) ^ vec4<i32>(2349i, 35307i, u_input.b.x, u_input.a.x)), firstLeadingBit(_wgslsmith_mod_vec4_i32(u_input.c, u_input.a)));
    let var_5 = func_1(var_1, Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1 - var_1) - var_1) * vec2<f32>(var_1.x, _wgslsmith_f_op_f32(abs(var_1.x)))), var_0.xx, var_0.x, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-880f)), var_1.x, _wgslsmith_f_op_f32(var_1.x + var_1.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-240f, var_1.x, var_1.x))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(523f, -346f, -1000f), vec3<f32>(2211f, var_1.x, 523f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1083f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 943f)), 731f, 286f)));
    let x = u_input.a;
    s_output = StorageBuffer(354f, _wgslsmith_add_u32(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_1)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(709f, var_1.x) - var_1)), Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(335f, var_1.x)), vec2<u32>(1u, 4294967295u) & vec2<u32>(0u, var_5), var_3.x, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.x, -693f, var_1.x)))), vec4<f32>(1093f, var_1.x, _wgslsmith_f_op_f32(select(1501f, -806f, false)), _wgslsmith_f_op_f32(var_1.x - 829f))), ~(select(0u, 23414u, var_2.x) | 69225u)), _wgslsmith_f_op_f32(floor(var_1.x)), max(var_3, vec2<u32>(~(~9837u), ~1346u)));
}

