struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1, arg_3: vec2<i32>) -> bool {
    var var_0 = Struct_1(countOneBits(_wgslsmith_add_u32(firstTrailingBit(_wgslsmith_add_u32(arg_2.a, 0u)), ~1u)), arg_2.b);
    let var_1 = ~((vec3<u32>(firstTrailingBit(var_0.a), ~4294967295u, max(arg_2.a, 94823u)) | reverseBits(select(vec3<u32>(arg_2.a, 4294967295u, 4294967295u), vec3<u32>(1u, 28317u, var_0.a), true))) >> (vec3<u32>(arg_2.a, 41483u, u_input.b.x) % vec3<u32>(32u)));
    var var_2 = vec3<u32>(_wgslsmith_dot_vec4_u32(~(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 96846u, arg_2.a, 0u), vec4<u32>(4294967295u, 45410u, var_1.x, 34503u))), vec4<u32>(1u, 4370u, arg_2.a, abs(u_input.b.x))), u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, 4294967295u));
    let var_3 = _wgslsmith_sub_i32(arg_2.b.x, -1i);
    var var_4 = -2147483647i;
    return all(select(vec4<bool>(arg_1, true, arg_1, any(vec4<bool>(arg_1, arg_1, arg_1, false))), select(select(!vec4<bool>(false, arg_1, arg_1, false), vec4<bool>(true, true, true, true), true), select(!vec4<bool>(true, false, arg_1, false), !vec4<bool>(false, true, arg_1, arg_1), all(vec3<bool>(arg_1, arg_1, arg_1))), !select(arg_1, arg_1, true)), vec4<bool>(any(!vec3<bool>(arg_1, false, false)), any(vec2<bool>(true, arg_1)) & true, all(select(vec3<bool>(false, true, true), vec3<bool>(false, arg_1, arg_1), vec3<bool>(true, arg_1, arg_1))), arg_1)));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1139f * 1745f), _wgslsmith_f_op_f32(step(558f, 712f))) - _wgslsmith_f_op_f32(f32(-1f) * -1019f))));
    var var_1 = !vec4<bool>(false | any(vec2<bool>(true, false)), (true && any(vec3<bool>(false, true, true))) | true, true, true);
    var_1 = !select(select(vec4<bool>(var_1.x, all(var_1.yy), var_1.x, true), vec4<bool>(true, var_1.x, func_3(vec2<f32>(var_0, var_0), false, Struct_1(u_input.b.x, vec4<i32>(-1i, u_input.a.x, 0i, 0i)), vec2<i32>(-21778i, u_input.a.x)), false | var_1.x), any(!vec4<bool>(var_1.x, false, true, var_1.x))), !select(select(vec4<bool>(var_1.x, true, var_1.x, false), vec4<bool>(var_1.x, true, false, var_1.x), vec4<bool>(var_1.x, false, true, var_1.x)), !vec4<bool>(false, var_1.x, false, false), !vec4<bool>(false, false, true, var_1.x)), vec4<bool>(true, false, func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) * vec2<f32>(565f, var_0)), var_0 > -1382f, Struct_1(u_input.b.x, vec4<i32>(u_input.a.x, -2147483647i, -21341i, u_input.a.x)), u_input.a), false));
    var var_2 = Struct_1(min(select(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 25408u, u_input.b.x), vec3<u32>(0u, u_input.b.x, u_input.b.x)), ~vec3<u32>(0u, 0u, 0u)), u_input.b.x, all(select(vec2<bool>(true, false), var_1.yz, var_1.xw))), min(u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, firstTrailingBit(24112u)))), vec4<i32>(u_input.a.x >> (~(~61861u) % 32u), ~u_input.a.x, u_input.a.x, max(~_wgslsmith_add_i32(u_input.a.x, u_input.a.x), 41402i)));
    let var_3 = Struct_1(u_input.b.x, -(~_wgslsmith_mult_vec4_i32(var_2.b << (vec4<u32>(23915u, var_2.a, 33541u, u_input.b.x) % vec4<u32>(32u)), -vec4<i32>(var_2.b.x, u_input.a.x, u_input.a.x, var_2.b.x))));
    return Struct_1(71132u, ~vec4<i32>(abs(i32(-1i) * -47344i), max(-2147483647i, _wgslsmith_div_i32(-14783i, var_3.b.x)), _wgslsmith_mod_i32(1i, countOneBits(3900i)), (i32(-1i) * -8349i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-9471i, var_2.b.x, u_input.a.x, 44647i), var_3.b)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = u_input.b.x;
    var var_1 = vec4<f32>(568f, -545f, -476f, _wgslsmith_f_op_f32(f32(-1f) * -1711f));
    var var_2 = arg_0.b.xz;
    let var_3 = 6527u;
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1030f), -317f, _wgslsmith_f_op_f32(-var_1.x), var_1.x)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1094f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(2425f, -847f) * 734f), _wgslsmith_f_op_f32(min(var_1.x, var_1.x)), var_1.x))));
    return all(!select(vec2<bool>(all(vec3<bool>(true, false, true)), true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true)), true));
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = ~_wgslsmith_add_vec4_u32(reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, 0u), vec4<u32>(10612u, 28124u, 0u, arg_0.a)) ^ ~vec4<u32>(u_input.b.x, arg_0.a, arg_0.a, arg_0.a)), select(~vec4<u32>(arg_0.a, u_input.b.x, 34816u, 1u), vec4<u32>(_wgslsmith_mult_u32(arg_0.a, u_input.b.x), arg_0.a, ~u_input.b.x, ~u_input.b.x), func_4(func_2(), func_2())));
    let var_1 = Struct_1(4294967295u, vec4<i32>(countOneBits(-3561i), arg_0.b.x, select(_wgslsmith_sub_i32(arg_0.b.x, _wgslsmith_dot_vec4_i32(arg_0.b, arg_0.b)), firstLeadingBit(i32(-1i) * -6481i), any(select(vec2<bool>(true, false), vec2<bool>(true, false), false))), _wgslsmith_clamp_i32(0i, arg_0.b.x, arg_0.b.x)));
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1163f))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(f32(-1f) * -496f)));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(1479f)), _wgslsmith_f_op_f32(trunc(326f)))), _wgslsmith_f_op_f32(min(var_3.x, _wgslsmith_f_op_f32(select(572f, 1894f, true))))))) - var_3.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_3.x)), _wgslsmith_f_op_f32(trunc(var_3.x))))))) + var_3.x);
}

fn func_5(arg_0: i32, arg_1: vec4<f32>, arg_2: i32) -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u) | (vec3<u32>(14781u, 26981u, u_input.b.x) ^ vec3<u32>(4294967295u, 1u, 4645u)), firstTrailingBit(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))) | ~(~55924u | (28686u << (u_input.b.x % 32u))), vec4<i32>(_wgslsmith_clamp_i32(u_input.a.x, arg_0, _wgslsmith_sub_i32(0i & arg_0, u_input.a.x >> (26283u % 32u))), i32(-1i) * -(~(-1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i << (u_input.b.x % 32u), i32(-1i) * -20097i, ~(-18362i), -u_input.a.x), _wgslsmith_mult_vec4_i32(func_2().b, min(vec4<i32>(u_input.a.x, -21834i, u_input.a.x, 2615i), vec4<i32>(arg_0, u_input.a.x, -15222i, u_input.a.x)))), _wgslsmith_div_i32(-reverseBits(-1i), reverseBits(min(arg_2, -2147483647i)))));
    var_0 = Struct_1(u_input.b.x, _wgslsmith_div_vec4_i32(var_0.b, select(vec4<i32>(arg_0 & u_input.a.x, -1i, _wgslsmith_mod_i32(arg_0, arg_0), -arg_0), var_0.b, all(vec2<bool>(true, false)))));
    let var_1 = select(vec4<u32>(1u, ~u_input.b.x, 18807u, ~1u), vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(u_input.b.x, 82555u, 15523u, var_0.a)), 20700u, max(u_input.b.x & ~u_input.b.x, 1u), firstLeadingBit(var_0.a)), vec4<bool>(all(vec3<bool>(true, true, func_3(arg_1.xz, false, Struct_1(u_input.b.x, var_0.b), vec2<i32>(arg_2, -9601i)))), all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false))) == true, any(select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), false)), 1f < _wgslsmith_f_op_f32(-450f - arg_1.x)));
    var var_2 = ~abs(~vec4<u32>(18928u, ~5823u, firstLeadingBit(1u), var_1.x & var_1.x));
    var_2 = ~vec4<u32>(var_1.x, 0u, _wgslsmith_sub_u32(~var_1.x, ~(~4294967295u)), ~4294967295u);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.xy - vec2<f32>(arg_1.x, arg_1.x)))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-400f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, arg_1.x) + -396f)), arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_5(u_input.a.x, vec4<f32>(-747f, _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(sign(-517f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(Struct_1(1u, vec4<i32>(2147483647i, -1i, u_input.a.x, 13506i)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-629f)) * _wgslsmith_f_op_f32(1000f + -1104f)))), ~u_input.a.x));
    var var_1 = -251f;
    var_1 = _wgslsmith_f_op_f32(step(1000f, var_0.x));
    let var_2 = u_input.a.x | 2147483647i;
    var var_3 = 0u;
    var_3 = _wgslsmith_div_u32(~select(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.b.x, 0u, 0u), 1u), ~u_input.b.x, select(all(vec3<bool>(true, true, false)), true, true)), ~max(1u, countOneBits(12996u)) >> (u_input.b.x % 32u));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.x * 1130f), 381f, -3522f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-669f, 1973f, var_0.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, 995f, var_0.x)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) - _wgslsmith_f_op_f32(floor(var_0.x))), var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, u_input.b.x, vec3<f32>(var_4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_4.x)))) - -1581f), -437f), (_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_2, 1i, 2147483647i), vec3<i32>(-1i, -2332i, 25879i)), max(vec3<i32>(2147483647i, 39931i, 32596i), vec3<i32>(u_input.a.x, var_2, var_2))) & ~_wgslsmith_mult_vec3_i32(vec3<i32>(var_2, var_2, u_input.a.x), vec3<i32>(var_2, u_input.a.x, var_2))) ^ vec3<i32>(var_2, -1i, u_input.a.x), u_input.b.x);
}

