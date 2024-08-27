struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> bool {
    let var_0 = Struct_1(_wgslsmith_add_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.a, 31892u)) << (vec2<u32>(firstLeadingBit(1u), ~1480u) % vec2<u32>(32u)), select(~select(vec2<u32>(u_input.a, 13800u), vec2<u32>(u_input.a, 79541u), true), ~reverseBits(vec2<u32>(29071u, u_input.a)), vec2<bool>(true, true))));
    global0 = array<Struct_1, 24>();
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(round(-152f))))))), 1227f);
    global0 = array<Struct_1, 24>();
    var var_2 = vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, ~(~(-2147483647i)), _wgslsmith_mult_i32(firstLeadingBit(6192i), -u_input.c.x), _wgslsmith_div_i32(u_input.d, -26826i) ^ (u_input.c.x << (45449u % 32u))), -abs(vec4<i32>(-2147483647i, 17594i, u_input.c.x, u_input.c.x))), ~u_input.c.x);
    return _wgslsmith_dot_vec2_i32(u_input.c.xy, u_input.c.ww) <= 29294i;
}

fn func_2() -> bool {
    global0 = array<Struct_1, 24>();
    var var_0 = global0[_wgslsmith_index_u32((u_input.a | 46364u) >> (_wgslsmith_mult_u32(u_input.a, abs(~u_input.b)) % 32u), 24u)];
    return !any(vec3<bool>(false, func_3(), false)) == false;
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: bool) -> vec4<u32> {
    global0 = array<Struct_1, 24>();
    var var_0 = global0[_wgslsmith_index_u32(abs(0u), 24u)];
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1025f, -599f, _wgslsmith_f_op_f32(floor(-981f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1380f), _wgslsmith_f_op_f32(f32(-1f) * -294f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(895f, 117f)), _wgslsmith_f_op_f32(step(560f, 1307f)), 1501f, -2425f) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(282f, 776f, -1032f, -438f), vec4<f32>(-1004f, 595f, 656f, -2503f), vec4<bool>(true, true, true, true))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-605f, 1255f, 785f, -333f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 319f, -921f, 438f))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(390f, -1290f, -1000f, 780f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1085f, -1429f, 1522f, 494f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(652f, 172f, 716f, -128f))), select(!vec4<bool>(arg_2, arg_2, arg_1.x, true), select(vec4<bool>(true, false, arg_2, false), vec4<bool>(false, true, arg_2, arg_2), vec4<bool>(arg_2, arg_2, arg_1.x, false)), select(vec4<bool>(arg_2, arg_1.x, false, false), vec4<bool>(true, arg_1.x, false, arg_1.x), vec4<bool>(arg_1.x, arg_2, arg_1.x, false)))))));
    return ~vec4<u32>(1u, arg_0, ~var_0.a.x, _wgslsmith_add_u32(_wgslsmith_mult_u32(~arg_0, select(var_0.a.x, 1u, true)), arg_0));
}

fn func_1(arg_0: vec4<bool>) -> u32 {
    let var_0 = -1424f;
    var var_1 = Struct_1(_wgslsmith_div_vec2_u32(((vec2<u32>(u_input.b, 4294967295u) | vec2<u32>(38144u, 1u)) << (~vec2<u32>(42418u, u_input.a) % vec2<u32>(32u))) << (~vec2<u32>(43855u, u_input.a) % vec2<u32>(32u)), abs(~vec2<u32>(u_input.a, u_input.b) & vec2<u32>(u_input.b, u_input.a))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0)), -1040f));
    let var_3 = func_4(u_input.b, vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)) >= _wgslsmith_f_op_f32(-var_0), true, select(arg_0.x, arg_0.x || false, false) & all(select(vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(false, arg_0.x), arg_0.zw))), true || func_2());
    var_1 = Struct_1(var_3.xx);
    return var_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(min(u_input.b, _wgslsmith_sub_u32(u_input.b, 4294967295u) << (u_input.a % 32u)), select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, 101148u), vec3<u32>(4294967295u, u_input.b, 4359u)), u_input.b, true) & u_input.a, func_1(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true))) & u_input.a, ~u_input.b), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, ~u_input.b, ~21300u, min(u_input.b, 26930u)), firstTrailingBit(firstLeadingBit(vec4<u32>(u_input.b, u_input.a, 1u, u_input.b)))), ~min(~vec4<u32>(25559u, 23471u, u_input.a, 24442u), ~vec4<u32>(u_input.b, u_input.a, 0u, u_input.b)), ~firstTrailingBit(vec4<u32>(31666u, 1u, u_input.b, u_input.a) & vec4<u32>(u_input.a, 1u, u_input.a, 12440u)))), 24u)];
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-451f - -258f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1186f + 721f)), any(select(vec2<bool>(false, false), vec2<bool>(false, true), false)))))));
    let var_2 = global0[_wgslsmith_index_u32(~func_4(~u_input.a, vec3<bool>(false, !func_2(), !all(vec2<bool>(true, true))), false).x, 24u)];
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(536f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var var_4 = all(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)) | true;
    var var_5 = ~abs(countOneBits(-countOneBits(u_input.c.xwz)));
    global0 = array<Struct_1, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-199f, -1018f, 1427f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-115f, 498f, -827f)))))), u_input.c.x, select(_wgslsmith_dot_vec3_i32(u_input.c.xyx, -u_input.c.yzw), abs(-var_5.x) >> (_wgslsmith_clamp_u32(~var_0.a.x, 27801u, 3731u) % 32u), select(any(vec2<bool>(false, false)), true, true)));
}

