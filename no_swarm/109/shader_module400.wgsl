struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_3,
    d: vec4<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<u32>,
    c: bool,
    d: vec4<i32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_1(63054u), vec3<u32>(30564u, 17269u, 36268u), false, vec4<i32>(0i, -29357i, 1i, -13263i), Struct_3(Struct_2(vec3<u32>(0u, 0u, 100168u), 4294967295u, Struct_1(73400u), 128f)));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: Struct_3) -> vec3<f32> {
    let var_0 = vec4<f32>(-1000f, arg_1.d, 1084f, -474f);
    var var_1 = global0.e.a;
    var var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0)), global0.a, Struct_3(arg_1), firstLeadingBit(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(18341u, 33512u, 4294967295u, 18591u), vec4<u32>(4294967295u, var_1.b, 0u, arg_3.a.c.a)))));
    var_1 = global0.e.a;
    var var_3 = !(!vec3<bool>(false, any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), global0.c)), !(!global0.c)));
    return _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.d - -490f))))), 659f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(663f)) * -522f)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -106f), -497f, _wgslsmith_f_op_f32(select(1000f, 1397f, false))))))));
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0 + _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec2<f32>(1000f, 350f), global0.e.a, vec3<u32>(u_input.a.x, 63892u, 4294967295u), global0.e)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(428f, -1499f, global0.e.a.d), vec3<f32>(-635f, arg_0.x, 475f)))), _wgslsmith_f_op_vec3_f32(sign(arg_0)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec2_f32(-arg_0.zx), global0.e.a, ~(~global0.b), Struct_3(global0.e.a))))));
    var var_1 = global0.e.a.c;
    return global0.a;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = Struct_5(global0.e.a.c, global0.e.a.a, global0.c, global0.d, global0.e);
    var var_0 = arg_0;
    let var_1 = abs(firstLeadingBit(~vec4<u32>(arg_0.a, 4294967295u, 4294967295u, global0.a.a | var_0.a)));
    var_0 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.e.a.d, global0.e.a.d, global0.e.a.d))) * vec3<f32>(global0.e.a.d, global0.e.a.d, -762f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.e.a.d, global0.e.a.d, global0.e.a.d) - vec3<f32>(111f, global0.e.a.d, -1861f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.e.a.d, 872f, global0.e.a.d))), vec3<bool>(global0.c, false, global0.c)))))));
    var var_2 = global0.e.a;
    return func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.d, var_2.d, global0.e.a.d) - _wgslsmith_div_vec3_f32(vec3<f32>(var_2.d, global0.e.a.d, 817f), vec3<f32>(var_2.d, -2298f, global0.e.a.d)))))));
}

fn func_1(arg_0: Struct_4, arg_1: u32) -> Struct_5 {
    let var_0 = global0.e;
    let var_1 = ~u_input.b.x;
    global0 = Struct_5(Struct_1(u_input.a.x), var_0.a.a, false, global0.d >> (_wgslsmith_div_vec4_u32(select(arg_0.d, arg_0.d, false) | arg_0.d, arg_0.d) % vec4<u32>(32u)), Struct_3(Struct_2(vec3<u32>(_wgslsmith_mod_u32(var_0.a.c.a, var_0.a.c.a), _wgslsmith_sub_u32(global0.a.a, global0.e.a.b), 0u), global0.b.x, var_0.a.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a.d * -601f), _wgslsmith_f_op_f32(1000f - global0.e.a.d))))));
    var var_2 = Struct_5(func_4(func_2(vec3<f32>(var_0.a.d, arg_0.a.x, _wgslsmith_div_f32(-2077f, 369f)))), u_input.b | _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), global0.b.zy), 1u, 1u), max(vec3<u32>(4294967295u, global0.e.a.c.a, 1u), firstTrailingBit(u_input.b))), true, ~select(vec4<i32>(~global0.d.x, 19497i, _wgslsmith_sub_i32(71552i, global0.d.x), firstTrailingBit(-1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, global0.d.x, global0.d.x, -52446i), vec4<i32>(35369i, global0.d.x, global0.d.x, -1i)) | vec4<i32>(-18098i, global0.d.x, global0.d.x, 1i), !vec4<bool>(global0.c, global0.c, global0.c, global0.c)), Struct_3(var_0.a));
    global0 = Struct_5(var_0.a.c, var_0.a.a, any(!(!vec3<bool>(global0.c, false, true))), _wgslsmith_add_vec4_i32(global0.d, vec4<i32>(-1i) * -global0.d), Struct_3(Struct_2(vec3<u32>(~var_0.a.c.a, var_1, 0u), ~var_2.a.a, Struct_1(~arg_1), _wgslsmith_div_f32(-352f, _wgslsmith_f_op_f32(f32(-1f) * -385f)))));
    return Struct_5(Struct_1(var_0.a.c.a), global0.e.a.a, !any(vec3<bool>(global0.c, false, global0.c)), vec4<i32>(_wgslsmith_dot_vec4_i32(var_2.d, global0.d) << ((29530u ^ var_2.a.a) % 32u), ~(~var_2.d.x), firstLeadingBit(global0.d.x), (-10466i << (var_1 % 32u)) ^ -6716i) ^ var_2.d, arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(883f, -879f) + vec2<f32>(-339f, global0.e.a.d)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.e.a.d, global0.e.a.d)) - vec2<f32>(-1924f, global0.e.a.d))), global0.a, global0.e, ~max(reverseBits(vec4<u32>(u_input.b.x, global0.b.x, 19723u, global0.a.a)), min(vec4<u32>(global0.e.a.c.a, u_input.a.x, u_input.a.x, global0.b.x), vec4<u32>(global0.a.a, u_input.b.x, u_input.a.x, 55877u)))), _wgslsmith_sub_u32(_wgslsmith_sub_u32(~1u, min(global0.b.x, ~29890u)), ~global0.e.a.c.a));
    let var_0 = ~(min(4294967295u, select(30591u, 40647u, true)) | 58277u) ^ (global0.a.a & 0u);
    let var_1 = global0.e;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.d, 830f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.d)))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global0.e.a.d)), _wgslsmith_f_op_f32(-1805f + -1101f), global0.c && any(select(vec4<bool>(global0.c, false, global0.c, false), vec4<bool>(global0.c, false, global0.c, global0.c), vec4<bool>(true, global0.c, global0.c, global0.c))))));
    var_2 = _wgslsmith_f_op_f32(-657f + global0.e.a.d);
    let var_3 = func_1(Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -469f)), global0.e.a, vec3<u32>(4294967295u, u_input.b.x, u_input.b.x), Struct_3(Struct_2(global0.e.a.a, var_1.a.b, Struct_1(1u), 310f)))).yz + _wgslsmith_div_vec2_f32(vec2<f32>(global0.e.a.d, var_1.a.d), vec2<f32>(var_1.a.d, global0.e.a.d))), Struct_1(var_1.a.c.a), global0.e, min(vec4<u32>(1u, global0.e.a.a.x, 1u, global0.a.a), vec4<u32>(4294967295u, u_input.a.x, 4294967295u, var_0)) ^ vec4<u32>(func_2(vec3<f32>(562f, 1997f, var_1.a.d)).a, 4294967295u, ~0u, abs(20790u))), var_0).e.a.c;
    var var_4 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(470f, 240f))))) * vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.d), _wgslsmith_f_op_f32(func_1(Struct_4(vec2<f32>(global0.e.a.d, var_1.a.d), Struct_1(var_3.a), global0.e, vec4<u32>(1u, 1u, u_input.a.x, 4294967295u)), var_1.a.b).e.a.d + global0.e.a.d))), Struct_1(_wgslsmith_mod_u32(_wgslsmith_add_u32(1u, 0u), _wgslsmith_add_u32(~0u, var_0))), global0.e, countOneBits(firstLeadingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 15773u, var_1.a.c.a, var_1.a.c.a), vec4<u32>(4294967295u, 19258u, var_0, 4294967295u)), max(vec4<u32>(var_1.a.b, 0u, 98865u, 81631u), vec4<u32>(0u, 17477u, global0.a.a, 4193u))))));
    var var_5 = func_1(Struct_4(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.e.a.d * var_1.a.d), var_4.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(967f, var_1.a.d) + var_4.a))), var_3, Struct_3(global0.e.a), _wgslsmith_add_vec4_u32(var_4.d, var_4.d ^ vec4<u32>(32093u, 1u, global0.e.a.c.a, global0.e.a.a.x)) & ~var_4.d), global0.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1921f)) * global0.e.a.d), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.a.d))))), -1717f, _wgslsmith_f_op_f32(1315f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.d - 1293f)))), var_5.d.xxz, _wgslsmith_f_op_vec2_f32(ceil(var_4.a)));
}

