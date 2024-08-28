struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: u32 = 0u;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: vec4<f32>, arg_3: Struct_3) -> i32 {
    var var_0 = u_input.a;
    let var_1 = arg_0.a.b;
    let var_2 = ~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(firstLeadingBit(~19389u), reverseBits(arg_1.x << (u_input.a % 32u))), ~0u, 0u);
    var_0 = _wgslsmith_clamp_u32(74027u, var_2, ~(~var_2));
    global1 = 73141u;
    return _wgslsmith_div_i32(arg_0.b, ~arg_0.b) ^ arg_0.b;
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = Struct_1(select(vec2<bool>(any(vec3<bool>(true, true, true)), true), select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), true), true), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 685f) + 2223f))));
    let var_1 = vec4<u32>(_wgslsmith_mult_u32(max(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(62095u, 26371u, 123882u), vec3<u32>(u_input.a, 4294967295u, 0u)), u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a) ^ vec4<u32>(u_input.a, u_input.a, u_input.a, 80118u), vec4<u32>(4294967295u, u_input.a, 45866u, u_input.a))), u_input.a), _wgslsmith_div_u32(_wgslsmith_mod_u32(~countOneBits(0u), u_input.a), u_input.a), u_input.a, 1u);
    let var_2 = Struct_3(var_0, u_input.d);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(853f, -339f, var_0.b, var_2.a.b), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.a.b, -1643f, -667f, var_0.b)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1014f, -202f, var_2.a.b, var_0.b))), _wgslsmith_f_op_vec4_f32(vec4<f32>(222f, 1132f, -274f, var_2.a.b) - vec4<f32>(-1210f, -116f, var_0.b, -485f))))))));
    let var_4 = Struct_3(Struct_1(vec2<bool>(var_2.a.a.x, !(var_2.a.b > -606f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), var_2.a.b) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-279f)) * _wgslsmith_f_op_f32(-963f + 1578f)))), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, ~(-var_2.b)), -vec2<i32>(1i, var_2.b)));
    return _wgslsmith_f_op_f32(sign(var_2.a.b));
}

fn func_1(arg_0: vec2<u32>, arg_1: bool) -> vec3<i32> {
    var var_0 = max(_wgslsmith_dot_vec4_i32(-(vec4<i32>(u_input.b, u_input.d, u_input.d, 0i) ^ -vec4<i32>(0i, -22624i, 1i, u_input.b)), vec4<i32>(41188i, u_input.c, u_input.c, 31152i) & vec4<i32>(u_input.c, 0i, -19487i, u_input.c)), ~_wgslsmith_mod_i32(0i, -9971i));
    let var_1 = ~(~arg_0.x);
    let var_2 = vec4<i32>(abs(i32(-1i) * -u_input.b), _wgslsmith_sub_i32(~func_2(Struct_3(Struct_1(vec2<bool>(false, false), 666f), u_input.c), vec3<u32>(4294967295u, 0u, 1u), vec4<f32>(1168f, -1000f, -1287f, -194f), Struct_3(Struct_1(vec2<bool>(true, arg_1), 258f), 28260i)), 0i), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2147483647i) << (vec2<u32>(arg_0.x, 28437u) % vec2<u32>(32u)), vec2<i32>(62268i, -20207i)), 2147483647i), ~u_input.b) << ((vec4<u32>(_wgslsmith_mod_u32(0u & arg_0.x, ~u_input.a), 15049u, countOneBits(u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 11616u), vec3<u32>(45420u, arg_0.x, 1u)) | ~u_input.a) | firstTrailingBit(vec4<u32>(arg_0.x, var_1, 1u, 3819u))) % vec4<u32>(32u));
    let var_3 = Struct_2(Struct_1(vec2<bool>(!all(vec2<bool>(arg_1, true)), false), -781f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(func_3(-17730i)), _wgslsmith_f_op_f32(select(-765f, 1214f, true))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2170f), -645f, -846f)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-592f, 268f, -468f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1262f, -1691f, 740f) + vec3<f32>(-1227f, 2366f, 610f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-406f, -817f, 559f), vec3<f32>(344f, -1011f, 490f), vec3<bool>(false, true, arg_1))))))), Struct_1(vec2<bool>(arg_1, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(933f + -578f)) - _wgslsmith_f_op_f32(-874f - _wgslsmith_f_op_f32(max(-253f, 557f))))));
    let var_4 = 0i;
    return -vec3<i32>(~(-22239i), firstTrailingBit(2147483647i), ~(-2443i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(u_input.c);
    global0 = 12142i;
    let var_1 = func_1(firstLeadingBit(vec2<u32>(0u, 20554u)) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -390f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1293f)))) | ~vec3<i32>(var_0, select(1i, -22125i, any(vec2<bool>(true, false))), var_0);
    var var_2 = _wgslsmith_dot_vec3_i32(max(min(var_1 ^ vec3<i32>(u_input.b, u_input.d, var_1.x), var_1 & var_1), max(~var_1, vec3<i32>(u_input.d, 11000i, var_1.x))), vec3<i32>(_wgslsmith_clamp_i32(7357i, var_0, var_0), u_input.b, u_input.c) & -_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, -562i, 2147483647i), var_1, vec3<i32>(var_1.x, var_1.x, u_input.c))) ^ -2147483647i;
    var var_3 = Struct_3(Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1845f - 661f) * -1126f)))), u_input.b);
    var var_4 = Struct_2(var_3.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, var_3.a.b, -1867f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-597f, var_3.a.b, 449f), vec3<f32>(102f, -526f, 1081f))), vec3<bool>(var_3.a.a.x, true, var_3.a.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-242f, -1171f, 101f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a.b, var_3.a.b, var_3.a.b) * vec3<f32>(-1394f, var_3.a.b, var_3.a.b))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_3.a.b, 878f, 1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.b, var_3.a.b, -376f)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1046f, var_3.a.b, 1795f))))))), var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.zy);
}

