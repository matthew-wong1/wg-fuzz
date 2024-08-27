struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 19> = array<vec2<f32>, 19>(vec2<f32>(-249f, 195f), vec2<f32>(-256f, 663f), vec2<f32>(-148f, 735f), vec2<f32>(1020f, 587f), vec2<f32>(-1000f, -744f), vec2<f32>(-438f, -1221f), vec2<f32>(1752f, 106f), vec2<f32>(741f, 1781f), vec2<f32>(-868f, -224f), vec2<f32>(1000f, 1021f), vec2<f32>(-546f, 443f), vec2<f32>(875f, -1137f), vec2<f32>(432f, -854f), vec2<f32>(342f, -233f), vec2<f32>(240f, -1077f), vec2<f32>(-2018f, -186f), vec2<f32>(-1059f, 1499f), vec2<f32>(332f, 1862f), vec2<f32>(772f, 725f));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<i32>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-360f * -793f)), -632f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1142f + 238f)), 994f)), -392f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-636f, 618f, 520f, -1287f), vec4<f32>(264f, 1176f, 1683f, -553f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-778f, 594f, -422f, 815f), vec4<f32>(1177f, -144f, -1826f, 314f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, 252f, -483f, -1000f)))) - vec4<f32>(_wgslsmith_div_f32(1000f, 136f), _wgslsmith_div_f32(-299f, -183f), _wgslsmith_f_op_f32(-511f * 320f), _wgslsmith_f_op_f32(min(-2087f, 572f))))));
    var var_1 = all(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), false), false)) != true;
    var_1 = true;
    var var_2 = Struct_1(arg_0.xz, arg_0.x & ~2147483647i, _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x >> (u_input.a.x % 32u), u_input.a.x, u_input.a.x, ~38047u), ~(vec4<u32>(u_input.a.x, u_input.a.x, 2780u, u_input.a.x) << (u_input.a % vec4<u32>(32u)))), vec4<u32>(25676u, u_input.a.x, ~u_input.a.x, abs(~u_input.a.x))));
    let var_3 = Struct_1(abs(vec2<i32>(~arg_0.x, -2147483647i)), firstLeadingBit(min(var_2.b, abs(-2147483647i))), u_input.a ^ ~select(~var_2.c, vec4<u32>(var_2.c.x, 13868u, 35240u, var_2.c.x), true));
    return var_3.a;
}

fn func_2() -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(30987u, 19u)])));
    global0 = array<vec2<f32>, 19>();
    var var_1 = Struct_1(min(func_3(vec3<i32>(47829i, countOneBits(51525i), i32(-1i) * -9950i)), _wgslsmith_div_vec2_i32(vec2<i32>(0i, -27661i), (vec2<i32>(22378i, -1i) >> (vec2<u32>(21154u, u_input.a.x) % vec2<u32>(32u))) & firstTrailingBit(vec2<i32>(-1i, 1i)))), _wgslsmith_div_i32(_wgslsmith_add_i32(2147483647i, 0i), 1i), firstTrailingBit(min(abs(vec4<u32>(67854u, 157559u, u_input.a.x, 4294967295u)), ~vec4<u32>(9862u, u_input.a.x, u_input.a.x, u_input.a.x))));
    var var_2 = vec4<bool>(-1995f < var_0.x, true, !(select(abs(1u), _wgslsmith_add_u32(1u, var_1.c.x), any(vec3<bool>(true, true, true))) != u_input.a.x), !(!all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)))));
    var var_3 = Struct_1(var_1.a, var_1.b, ~var_1.c);
    return _wgslsmith_mod_vec2_u32(vec2<u32>(var_3.c.x, firstTrailingBit(~(var_1.c.x >> (49646u % 32u)))), min(_wgslsmith_div_vec2_u32(u_input.a.zw, vec2<u32>(0u, firstLeadingBit(u_input.a.x))), u_input.a.xy));
}

fn func_4(arg_0: vec2<u32>) -> vec2<bool> {
    var var_0 = Struct_1(min(reverseBits(vec2<i32>(~(-65322i), i32(-1i) * -2147483647i)), ~(-select(vec2<i32>(0i, -24792i), vec2<i32>(0i, -11445i), true))), select(0i << ((13788u >> (u_input.a.x % 32u)) % 32u), firstTrailingBit(-1i), any(vec2<bool>(true, true))) | firstTrailingBit(~19823i), reverseBits(select(min(vec4<u32>(arg_0.x, 1u, arg_0.x, u_input.a.x), u_input.a), ~vec4<u32>(u_input.a.x, u_input.a.x, 0u, 5178u), vec4<bool>(true, true, true, true)) | max(vec4<u32>(4294967295u, 4294967295u, 1u, u_input.a.x), firstTrailingBit(u_input.a))));
    var var_1 = -1112f;
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-409f, 586f, -754f)), vec3<f32>(-104f, 547f, 825f)))))));
    return vec2<bool>(select(38679i, -8489i, true) >= -1i, !(var_0.c.x != u_input.a.x));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<u32>) -> f32 {
    let var_0 = func_4(max(vec2<u32>(4294967295u, arg_1.x), func_2()));
    let var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 19u)];
    global0 = array<vec2<f32>, 19>();
    let var_2 = Struct_1(vec2<i32>(arg_0.x, _wgslsmith_div_i32(-19772i, -49113i)), arg_0.x, _wgslsmith_sub_vec4_u32(u_input.a, u_input.a));
    let var_3 = _wgslsmith_mod_vec4_u32(abs(var_2.c), vec4<u32>(~u_input.a.x, min(var_2.c.x, firstLeadingBit(53826u)), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~var_2.c.zw, firstTrailingBit(vec2<u32>(arg_1.x, var_2.c.x))), vec2<u32>(arg_1.x, _wgslsmith_add_u32(118856u, 29308u))), var_2.c.x));
    return 963f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(u_input.a.x, countOneBits(abs(40752u)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -132f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-483f - 812f), _wgslsmith_f_op_f32(round(-596f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(vec4<i32>(2147483647i, 8483i, 2147483647i, -2147483647i), u_input.a.xww)))))) * _wgslsmith_f_op_f32(-1f)));
    let var_2 = false;
    var var_3 = Struct_1(~(-vec2<i32>(1i, 1i)), 1i, _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.a, _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 51717u, 1u, 33469u), u_input.a)), firstLeadingBit(_wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, var_0, u_input.a.x, var_0)))), vec4<u32>(u_input.a.x, 55731u, _wgslsmith_add_u32(17998u, 1u), abs(_wgslsmith_dot_vec3_u32(u_input.a.zxy, u_input.a.xyy)))));
    var var_4 = Struct_1(var_3.a, countOneBits(~var_3.b), u_input.a);
    let var_5 = Struct_1(_wgslsmith_add_vec2_i32(max(var_4.a, var_3.a), reverseBits(var_4.a)), var_4.a.x, _wgslsmith_sub_vec4_u32(firstLeadingBit(abs(vec4<u32>(var_4.c.x, var_0, var_4.c.x, var_4.c.x)) | vec4<u32>(46983u, 39024u, 95878u, 14822u)), vec4<u32>(43119u << (var_0 % 32u), abs(var_0), var_4.c.x, 59121u) & vec4<u32>(u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, 49872u), ~1u, var_4.c.x)));
    let var_6 = firstLeadingBit(vec4<u32>(u_input.a.x, 4294967295u, max(abs(var_5.c.x), ~_wgslsmith_div_u32(35708u, 40540u)), u_input.a.x));
    let var_7 = true;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(710f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-482f - 1000f) * _wgslsmith_f_op_f32(ceil(-565f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(399f, -704f)) - 359f), all(!vec4<bool>(true, true, var_2, false)))) - _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-645f + -1789f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_3.b, ~(-20142i)), vec2<f32>(215f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1993f + -766f)))), -625f);
}

