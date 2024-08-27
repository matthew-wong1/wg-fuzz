struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: vec2<i32>, arg_2: vec4<f32>) -> bool {
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(939f - arg_2.x)));
    global0 = _wgslsmith_f_op_f32(trunc(189f));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(ceil(-612f)));
    return all(vec3<bool>(any(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), u_input.e <= arg_1.x, all(vec3<bool>(true, true, true))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-479f))));
    var var_0 = _wgslsmith_f_op_f32(arg_1.b - arg_2.b);
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_2.b, _wgslsmith_div_f32(-796f, arg_1.b))));
    var var_1 = Struct_3(Struct_1(u_input.c.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b, 1167f, -438f) + vec3<f32>(-500f, arg_1.b, 1873f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b, -163f, 225f) + vec3<f32>(649f, arg_2.b, 770f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(295f, arg_1.b, -470f)), true)))), select(select(vec4<bool>(true, true, false, true), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), true), any(select(vec2<bool>(false, true), vec2<bool>(true, true), false))), vec4<bool>(true, true, true, true), any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), true))), _wgslsmith_dot_vec2_i32(u_input.b, u_input.b));
    var_1 = Struct_3(var_1.a, var_1.b, _wgslsmith_dot_vec4_i32(arg_1.a, -arg_2.a << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 1u, var_1.a.a, 16078u), u_input.a, firstTrailingBit(u_input.a)) % vec4<u32>(32u))));
    return !any(select(!var_1.b.yyz, vec3<bool>(false, !var_1.b.x, false), var_1.b.zzw));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: Struct_1) -> vec3<i32> {
    var var_0 = abs(firstLeadingBit(u_input.a));
    global0 = -1268f;
    var var_1 = Struct_1(~min(~max(u_input.c.x, 1u), 1u), arg_2.b);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.b.x - 908f)))) - _wgslsmith_f_op_f32(min(var_1.b.x, 598f))));
    var_1 = Struct_1(~1u, var_1.b);
    return ~countOneBits(vec3<i32>(-7952i, -19729i, u_input.d));
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    global0 = 1000f;
    let var_0 = !(u_input.c.x >= 0u) || false;
    let var_1 = _wgslsmith_mod_vec3_i32(-vec3<i32>(-abs(-42851i), 53177i, abs(-u_input.e)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_add_i32(6186i, u_input.b.x), u_input.e, 1i), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, u_input.d, u_input.e), vec3<i32>(u_input.b.x, u_input.e, -2147483647i)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, u_input.b.x, 1i), vec3<i32>(u_input.b.x, u_input.b.x, 17597i))), (vec3<i32>(u_input.b.x, u_input.e, 16160i) ^ vec3<i32>(u_input.d, u_input.b.x, 14887i)) >> (vec3<u32>(17711u, 1u, u_input.c.x) % vec3<u32>(32u))));
    var var_2 = _wgslsmith_dot_vec3_i32(func_4(select(!(!vec2<bool>(var_0, var_0)), vec2<bool>(func_2(arg_0.x, vec2<i32>(var_1.x, u_input.e), vec4<f32>(-1000f, 1708f, arg_0.x, arg_0.x)), func_3(u_input.a.www, Struct_2(vec4<i32>(var_1.x, var_1.x, -16830i, u_input.d), -375f), Struct_2(vec4<i32>(u_input.e, 0i, u_input.e, 0i), arg_0.x))), var_0), !select(!vec4<bool>(false, false, var_0, var_0), vec4<bool>(true, true, true, true), !vec4<bool>(true, false, false, var_0)), Struct_1(_wgslsmith_add_u32(0u, 0u), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.x, -860f, -198f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1443f, arg_0.x, 744f)))))), _wgslsmith_div_vec3_i32(var_1, var_1));
    let var_3 = Struct_4(Struct_3(Struct_1(~(u_input.a.x | u_input.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-943f, -1665f, 1000f)))), !select(vec4<bool>(var_0, var_0, true, var_0), select(vec4<bool>(false, var_0, false, var_0), vec4<bool>(false, var_0, var_0, true), vec4<bool>(true, var_0, false, true)), !var_0), ~u_input.e), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 1u << (min(u_input.a.x, 4294967295u) % 32u), u_input.a.x), u_input.a.yzw), Struct_2(_wgslsmith_add_vec4_i32(vec4<i32>(-22562i, ~u_input.e, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, u_input.b.x, u_input.b.x, var_1.x), vec4<i32>(44014i, var_1.x, 33501i, 17889i)), 57231i), select(~vec4<i32>(var_1.x, u_input.e, 43351i, u_input.d), firstTrailingBit(vec4<i32>(var_1.x, u_input.b.x, u_input.e, -10159i)), var_0)), 1474f));
    return Struct_1(~_wgslsmith_dot_vec2_u32(~u_input.a.ww ^ (u_input.a.yw >> (vec2<u32>(u_input.a.x, var_3.b) % vec2<u32>(32u))), u_input.a.xz), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1035f, 607f, _wgslsmith_f_op_f32(-1890f - arg_0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.xyw;
    let var_1 = u_input.d;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-368f - -1689f), _wgslsmith_f_op_f32(f32(-1f) * -920f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -581f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(275f, -741f)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -205f) * -479f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-525f * 682f)))))));
    let var_3 = Struct_3(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, var_2))), select(vec4<bool>(true, !all(vec3<bool>(true, false, true)), true, ~30551u == u_input.a.x), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), func_2(var_2, u_input.b, vec4<f32>(var_2, var_2, 903f, -764f))), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(true, true)), true, true, true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)))), var_1);
    var var_4 = vec2<i32>(~(u_input.d << (_wgslsmith_clamp_u32(37915u, abs(43760u), var_0.x) % 32u)), ~u_input.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, var_2, -1264f, var_2), vec4<f32>(var_2, var_2, var_3.a.b.x, 1683f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2, -671f, var_3.b.x)) * var_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-723f + 537f) + 1781f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) * func_1(var_3.a.b.zz).b.x), -1000f)), vec4<i32>(abs(_wgslsmith_mult_i32(-2147483647i, 1i)), _wgslsmith_clamp_i32(-(u_input.d | u_input.b.x), -2147483647i, 63281i), var_4.x, -27492i), 46492u, var_0.x >> (4294967295u % 32u), ~_wgslsmith_sub_u32(76082u, 0u));
}

