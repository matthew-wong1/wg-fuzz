struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: u32) -> bool {
    let var_0 = 989f;
    global0 = array<Struct_3, 29>();
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, arg_0, -304f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1065f, 329f, 484f)), false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 717f, -822f) - vec3<f32>(841f, -810f, var_0)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1795f, arg_0, var_0) - vec3<f32>(-1071f, var_0, 540f))), _wgslsmith_div_vec3_f32(vec3<f32>(var_0, -1986f, -981f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, -525f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_f_op_f32(ceil(155f)), -764f)));
    let var_2 = reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 36792u), _wgslsmith_mod_vec2_u32(~(u_input.b ^ vec2<u32>(u_input.b.x, u_input.c.x)), u_input.c.zy), vec2<u32>(57964u, arg_1)));
    global0 = array<Struct_3, 29>();
    return true;
}

fn func_2(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_3, arg_3: bool) -> vec3<f32> {
    global0 = array<Struct_3, 29>();
    var var_0 = Struct_1(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(firstLeadingBit(arg_2.a.a), arg_2.b.a), arg_2.b.a), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(max(vec2<u32>(66308u, arg_2.a.b.x), vec2<u32>(6901u, u_input.c.x)) | (arg_2.a.b & arg_2.b.b), select(u_input.c.xx, arg_2.b.b, vec2<bool>(arg_3, arg_1)) ^ abs(arg_0.xy)), vec2<u32>(1u, abs(arg_2.b.b.x))));
    var_0 = Struct_1(var_0.a, _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(38435u, 1u), var_0.b), vec2<u32>(~_wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(90786u, u_input.b.x, 96084u)), 4294967295u)));
    var_0 = arg_2.b;
    let var_1 = vec4<bool>(true, arg_3, !((u_input.a >= var_0.a.x) || arg_3), ~firstLeadingBit(u_input.b.x) < 4294967295u);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.c, arg_2.c, arg_2.c) * vec3<f32>(608f, 267f, 495f)), vec3<f32>(arg_2.c, 3042f, arg_2.c), func_3(arg_2.c, var_0.b.x, arg_0.x))))));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: vec4<bool>, arg_3: i32) -> f32 {
    global0 = array<Struct_3, 29>();
    var var_0 = Struct_2(-46158i, _wgslsmith_f_op_vec3_f32(func_2(~select(max(u_input.c, vec3<u32>(72770u, u_input.b.x, 13098u)), u_input.c, select(arg_2.zyz, vec3<bool>(false, arg_2.x, true), arg_2.x)), false, global0[_wgslsmith_index_u32(1u, 29u)], true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(775f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2890f))), _wgslsmith_f_op_f32(abs(-1000f))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, 1883f, -839f), vec3<f32>(-1381f, -337f, -937f))) - vec3<f32>(1f, 1f, 1f))))), _wgslsmith_f_op_f32(-1198f - _wgslsmith_f_op_vec3_f32(func_2(vec3<u32>(1u, 1u, min(1u, u_input.c.x)), all(select(vec4<bool>(arg_2.x, true, true, false), arg_2, arg_2)), global0[_wgslsmith_index_u32(39235u, 29u)], arg_2.x)).x), ~4294967295u);
    let var_1 = -107464i;
    var var_2 = Struct_1(-_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.x, ~arg_0.x, 1i, 1i), firstTrailingBit(arg_0), _wgslsmith_sub_vec4_i32(~vec4<i32>(var_0.a, -2147483647i, var_1, -57911i), firstTrailingBit(vec4<i32>(3083i, -71166i, var_1, 1i)))), u_input.b);
    global0 = array<Struct_3, 29>();
    return var_0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(u_input.d.x, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_1(vec4<i32>(u_input.e, 58781i, u_input.a, 2147483647i), false, vec4<bool>(false, true, false, false), u_input.e)), _wgslsmith_f_op_f32(f32(-1f) * -392f), _wgslsmith_f_op_f32(2149f - -682f))), _wgslsmith_f_op_vec3_f32(func_2(firstLeadingBit(vec3<u32>(0u, 17837u, u_input.c.x) ^ u_input.c), true, Struct_3(Struct_1(vec4<i32>(u_input.e, 1i, u_input.e, u_input.e), vec2<u32>(887u, u_input.c.x)), Struct_1(vec4<i32>(u_input.e, u_input.d.x, -2147483647i, u_input.e), u_input.c.zy), _wgslsmith_div_f32(-1000f, 173f)), any(vec3<bool>(true, true, true)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -543f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1497f, -557f) + _wgslsmith_f_op_f32(450f - -365f)), _wgslsmith_f_op_f32(select(1f, -1000f, -17806i > u_input.a))), -1006f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-914f))))))), _wgslsmith_sub_u32(57984u, u_input.b.x | (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 45184u, 1u), vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.b.x)) & ~u_input.b.x)));
    var var_1 = _wgslsmith_mult_u32(~51255u, max(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.c.x, ~u_input.c.x), u_input.c.x >> (u_input.b.x % 32u)), _wgslsmith_clamp_u32(var_0.e, 0u << (abs(u_input.c.x) % 32u), ~77710u)));
    var var_2 = Struct_3(Struct_1(-vec4<i32>(-3837i, var_0.a, _wgslsmith_dot_vec4_i32(vec4<i32>(93674i, u_input.d.x, -20426i, var_0.a), vec4<i32>(u_input.a, u_input.a, var_0.a, -1i)), var_0.a ^ u_input.e), ~(~vec2<u32>(15112u, 1u))), Struct_1(-reverseBits(vec4<i32>(2147483647i, 1i, 2965i, 2147483647i) ^ vec4<i32>(var_0.a, 1i, 91020i, 43525i)), _wgslsmith_mult_vec2_u32(~vec2<u32>(4294967295u, var_0.e), ~vec2<u32>(u_input.c.x, 23819u) | ~vec2<u32>(var_0.e, 620u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_2(u_input.c, false, Struct_3(Struct_1(vec4<i32>(21819i, -2147483647i, 1i, u_input.d.x), vec2<u32>(4294967295u, u_input.c.x)), Struct_1(vec4<i32>(u_input.a, 0i, var_0.a, -1i), u_input.c.yx), 1289f), false)).x - _wgslsmith_f_op_f32(var_0.d * -308f)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec3_f32(func_2(vec3<u32>(u_input.b.x, var_0.e, 1u), any(vec4<bool>(false, true, false, false)), Struct_3(Struct_1(vec4<i32>(u_input.e, 8054i, u_input.d.x, -72484i), vec2<u32>(1u, 42511u)), Struct_1(vec4<i32>(u_input.d.x, 20145i, u_input.d.x, var_0.a), vec2<u32>(u_input.c.x, 1849u)), var_0.d), any(vec2<bool>(true, true)))).x))));
    let var_3 = vec4<u32>(~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(47346u, 25548u, 50796u, 4294967295u), vec4<u32>(var_2.b.b.x, var_2.b.b.x, u_input.b.x, u_input.b.x)), u_input.c.x), ~_wgslsmith_mod_u32(var_0.e, u_input.c.x), var_0.e, _wgslsmith_add_u32(0u | (4294967295u << (var_2.a.b.x % 32u)), u_input.b.x >> (var_2.a.b.x % 32u))) >> (vec4<u32>(_wgslsmith_sub_u32(abs(4294967295u), 0u), select(u_input.b.x, max(0u, select(28616u, var_2.a.b.x, false)), true), abs(1u), var_2.b.b.x) % vec4<u32>(32u));
    var_2 = Struct_3(Struct_1(-(~(vec4<i32>(var_2.a.a.x, var_2.a.a.x, 2525i, u_input.d.x) << (vec4<u32>(var_3.x, 1u, 4294967295u, 0u) % vec4<u32>(32u)))), vec2<u32>(1u, 1u)), Struct_1(var_2.b.a, u_input.c.xx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c * 1f)));
    let var_4 = vec3<bool>(4294967295u <= abs(_wgslsmith_dot_vec2_u32(var_3.wz, vec2<u32>(4488u, var_0.e))), var_0.b.x >= _wgslsmith_f_op_f32(select(457f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)), true)), (true & (true | (var_0.c.x < 2220f))) & (true | func_3(var_2.c, _wgslsmith_dot_vec3_u32(var_3.wxz, vec3<u32>(4279u, 1u, 28717u)), ~var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-1148f, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c, var_2.c, var_2.c, var_2.c) + vec4<f32>(331f, var_0.d, -349f, var_0.c.x)) + vec4<f32>(var_2.c, -331f, var_0.b.x, 1412f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.d, var_0.c.x, var_2.c))))))));
}

