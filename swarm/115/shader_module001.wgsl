struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<i32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: i32 = 1i;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec3<f32>) -> vec3<f32> {
    global1 = -_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-30841i, 2147483647i, 1i), firstTrailingBit(arg_1.c.yww)), ~arg_1.c.wwx), arg_1.c.x);
    var var_0 = u_input.d.x << ((max(arg_0, u_input.b.x) >> (_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.e, 4294967295u), vec2<u32>(14541u, 24932u)), u_input.b), _wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(1u, arg_0)), ~u_input.b)) % 32u)) % 32u);
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_2.b.yzx), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(260f, arg_1.b.b.x, -1292f))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(748f - arg_2.b.x), -1044f, _wgslsmith_f_op_f32(arg_2.b.x - arg_1.a.x)) * arg_1.b.b.wxw)), arg_2, vec4<i32>(~1i, arg_1.c.x, 2147483647i, (_wgslsmith_add_i32(9908i, -25092i) | (1i >> (arg_0 % 32u))) << (arg_0 % 32u)), select(select(!vec2<bool>(true, arg_1.d.x), arg_1.d, any(vec4<bool>(true, true, false, arg_1.d.x)) || true), select(!arg_1.d, vec2<bool>(select(arg_1.d.x, true, true), arg_1.d.x & arg_1.d.x), arg_1.d.x), select(arg_1.d.x, all(arg_1.d), arg_1.d.x)));
    var_0 = countOneBits(_wgslsmith_mod_i32(abs(arg_2.a.x), ~_wgslsmith_div_i32(0i, arg_1.c.x)));
    global0 = -1235f;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(arg_1.a, var_1.b.b.ywy)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_2.b.xxy, var_1.a) - vec3<f32>(arg_3.x, -445f, -2187f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(2083f, arg_1.b.b.x, 513f), vec3<f32>(arg_2.b.x, -226f, var_1.a.x), false))))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<bool>) -> vec2<u32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(777f, arg_0.x, arg_0.x) - vec3<f32>(arg_0.x, arg_0.x, 175f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-525f, arg_0.x, 1629f) * vec3<f32>(-751f, -1000f, arg_0.x)), 47713u != u_input.b.x))))), Struct_1(u_input.d | _wgslsmith_add_vec2_i32(u_input.d, vec2<i32>(u_input.d.x, 0i) << (u_input.b % vec2<u32>(32u))), vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - arg_0.x)), -1000f, _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, arg_1.x)))))), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_div_i32(7609i, u_input.d.x), ~u_input.d.x, i32(-1i) * -63476i), vec4<i32>(39743i, 10995i, u_input.d.x, 0i ^ u_input.d.x), firstLeadingBit(vec4<i32>(45927i, u_input.d.x, u_input.d.x, u_input.d.x)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(13070u, u_input.a, u_input.c, 1u), vec4<u32>(50106u, u_input.a, 4294967295u, u_input.c)) % vec4<u32>(32u))) << (~vec4<u32>(1u, firstLeadingBit(55384u), _wgslsmith_sub_u32(u_input.c, u_input.c), _wgslsmith_dot_vec3_u32(vec3<u32>(22451u, 0u, u_input.a), vec3<u32>(1u, u_input.c, 44995u))) % vec4<u32>(32u)), arg_1.yx);
    var var_1 = ~1u | (u_input.b.x | 1u);
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_3(76154u, Struct_3(_wgslsmith_f_op_vec3_f32(var_0.b.b.wwz - var_0.a), Struct_1(u_input.d, var_0.b.b), firstLeadingBit(var_0.c), !arg_1.xz), var_0.b, vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_0.x), -133f))))), Struct_1(_wgslsmith_mult_vec2_i32(countOneBits(var_0.b.a >> (vec2<u32>(u_input.b.x, 17898u) % vec2<u32>(32u))), vec2<i32>(var_0.c.x, 53810i) ^ select(vec2<i32>(-28008i, -1358i), vec2<i32>(var_0.b.a.x, 0i), arg_1.yy)), vec4<f32>(_wgslsmith_f_op_f32(abs(-218f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + 681f)), _wgslsmith_f_op_f32(floor(996f)), var_0.b.b.x)), -vec4<i32>(abs(var_0.c.x), ~_wgslsmith_div_i32(var_0.c.x, u_input.d.x), ~(-var_0.b.a.x), 2147483647i), !vec2<bool>(true || all(vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x)), (arg_1.x & false) || true));
    let var_2 = vec4<u32>(select(~1u, ~(~u_input.a), !arg_1.x), _wgslsmith_sub_u32(4294967295u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(16267u, 13851u), u_input.b)) >> (~u_input.e % 32u), 57407u, 7725u);
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_0.a.x, _wgslsmith_f_op_f32(var_0.b.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + -584f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.a.x)) * arg_0.x) * 611f))), ~(~var_2.x) >= min(24699u, select(var_2.x, 0u, arg_1.x) << (1u % 32u))));
    return vec2<u32>(var_2.x >> (_wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, u_input.b.x, var_2.x), vec3<u32>(0u, 98214u, var_2.x)), 0u, reverseBits(abs(4294967295u))) % 32u), 1u);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_2 {
    let var_0 = u_input.b & ((func_2(_wgslsmith_f_op_vec2_f32(round(arg_1.b.ww)), vec3<bool>(arg_0, false, arg_0)) | (vec2<u32>(63292u, 4294967295u) << (~u_input.b % vec2<u32>(32u)))) >> (~u_input.b % vec2<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -633f), arg_1.b.x)) - vec2<f32>(arg_1.b.x, 1f));
    global1 = 1i;
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-arg_1.b.wxz))), arg_1, min(_wgslsmith_div_vec4_i32(vec4<i32>(~0i, -arg_2.x, arg_1.a.x, -57274i), vec4<i32>(arg_2.x | arg_2.x, 4321i, max(0i, arg_1.a.x), arg_2.x)), firstLeadingBit(vec4<i32>(u_input.d.x, arg_2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, arg_2.x, arg_1.a.x, arg_2.x), vec4<i32>(arg_1.a.x, arg_1.a.x, -7930i, -47641i)), countOneBits(0i)))), vec2<bool>(arg_0, false));
    global0 = var_2.b.b.x;
    return Struct_2(~(~var_2.c.x), ~(~_wgslsmith_mod_vec2_u32(var_0, vec2<u32>(var_0.x, var_0.x))));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> vec4<u32> {
    let var_0 = !(~1i > -u_input.d.x);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -345f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1128f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1114f))))) - 1000f));
    global1 = 1i;
    global1 = arg_2.a;
    global1 = firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.a, arg_0.a, u_input.d.x) << (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, arg_1, arg_1), vec3<u32>(1u, 82307u, u_input.c)) % vec3<u32>(32u)), vec3<i32>(1i, 1i, 1i)), 444i));
    return ~vec4<u32>(_wgslsmith_mod_u32(~36506u, ~_wgslsmith_add_u32(arg_2.b.x, 1u)), 32518u, ~(~16276u), ~u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~min(firstTrailingBit(~(~vec4<u32>(u_input.c, 70275u, u_input.e, 26135u))), _wgslsmith_mod_vec4_u32(~vec4<u32>(8312u, u_input.b.x, 35758u, 51465u), ~(~vec4<u32>(0u, u_input.e, 4294967295u, 12474u))));
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -891f), _wgslsmith_f_op_f32(min(165f, 375f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2093f * 1211f) - _wgslsmith_f_op_f32(trunc(-1108f)))))));
    let var_1 = firstTrailingBit(~_wgslsmith_add_vec4_u32(~min(vec4<u32>(u_input.e, u_input.a, 1u, var_0.x), vec4<u32>(26450u, var_0.x, 1u, 4294967295u)), func_4(Struct_2(u_input.d.x, vec2<u32>(var_0.x, 3896u)), ~var_0.x, func_1(true, Struct_1(u_input.d, vec4<f32>(961f, -1748f, -371f, -1000f)), vec3<i32>(1i, 27648i, 1819i)))));
    var_0 = ~(~vec4<u32>(u_input.b.x, 4294967295u, reverseBits(var_1.x) | 384u, var_0.x >> (_wgslsmith_mod_u32(33364u, var_0.x) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_dot_vec3_u32(~var_1.zzx, var_0.wxw), Struct_3(vec3<f32>(-531f, -240f, 2622f), Struct_1(u_input.d, vec4<f32>(-1000f, -1433f, -2229f, -1590f)), ~vec4<i32>(u_input.d.x, u_input.d.x, -1i, 1i), vec2<bool>(true, false)), Struct_1(-u_input.d, vec4<f32>(-657f, -567f, -920f, -822f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1014f, -827f, 108f)) * _wgslsmith_div_vec3_f32(vec3<f32>(1169f, -526f, -837f), vec3<f32>(-464f, -336f, 746f))))))));
}

