struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(arg_0.b.zz + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(arg_0.b.yw)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(arg_0.b.x, arg_0.b.x)), arg_0.b.x) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.b.wy, arg_0.b.zy)))));
    let var_1 = arg_1;
    var var_2 = 0u;
    let var_3 = Struct_2(true, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(572f, -430f, -227f, var_0.x), _wgslsmith_f_op_vec4_f32(-arg_0.b), !var_1.a)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(267f, var_0.x, var_0.x, var_0.x) - vec4<f32>(var_0.x, arg_0.b.x, var_0.x, var_0.x)) - _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -239f, arg_0.b.x, var_0.x), vec4<f32>(arg_0.b.x, -1272f, arg_0.b.x, arg_0.b.x)))))));
    var_2 = ~u_input.b;
    return _wgslsmith_f_op_f32(394f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1090f)) * _wgslsmith_f_op_f32(-var_3.b.x)));
}

fn func_4(arg_0: vec2<i32>, arg_1: f32, arg_2: f32) -> vec3<bool> {
    var var_0 = arg_2;
    var_0 = 845f;
    var_0 = arg_1;
    var_0 = -1364f;
    let var_1 = u_input.b;
    return !vec3<bool>(~u_input.b < ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1, u_input.b, 0u), vec3<u32>(1u, 1u, 40127u)), any(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), arg_0.x < u_input.a.x)), false);
}

fn func_2() -> Struct_1 {
    let var_0 = func_4(vec2<i32>(_wgslsmith_sub_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, 1i, u_input.a.x, -3385i))) & u_input.a.x, _wgslsmith_mult_i32(-(-19321i >> (u_input.b % 32u)), _wgslsmith_sub_i32(u_input.a.x, -16316i) ^ u_input.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1095f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1246f * -546f)) * _wgslsmith_f_op_f32(select(-1191f, _wgslsmith_f_op_f32(func_3(Struct_2(true, vec4<f32>(1162f, -1196f, -352f, -2448f)), Struct_1(false))), u_input.a.x != -1i))))));
    let var_1 = Struct_3(Struct_1(!(!(!var_0.x))), -271f, u_input.a.x ^ ~_wgslsmith_mult_i32(max(u_input.a.x, u_input.a.x), firstTrailingBit(37653i)), Struct_1(var_0.x));
    var var_2 = Struct_2(var_1.d.a, vec4<f32>(var_1.b, _wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(floor(713f))), _wgslsmith_div_f32(var_1.b, var_1.b)));
    var var_3 = vec4<bool>(true, true, true, true);
    var var_4 = !select(select(func_4(_wgslsmith_div_vec2_i32(u_input.a.xw, u_input.a.wx), _wgslsmith_f_op_f32(131f - 2547f), var_2.b.x), !select(var_0, vec3<bool>(true, var_3.x, false), var_1.a.a), select(var_3.xxx, !var_3.zwx, true)), select(select(select(var_3.zwz, var_0, var_1.d.a), !vec3<bool>(true, true, var_0.x), true), !(!var_0), all(vec4<bool>(true, false, false, var_0.x))), _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a.x, -2147483647i), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, var_1.c), u_input.a.zw)) == 1i);
    return var_1.d;
}

fn func_1(arg_0: vec3<i32>) -> bool {
    var var_0 = ~(firstTrailingBit(firstLeadingBit(1u)) ^ u_input.b);
    let var_1 = firstLeadingBit(arg_0.x);
    let var_2 = vec3<i32>(17831i, firstTrailingBit(5963i), var_1);
    var_0 = 0u;
    let var_3 = Struct_3(func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-436f, _wgslsmith_f_op_f32(f32(-1f) * -361f))))), 51529i, Struct_1(arg_0.x <= (_wgslsmith_clamp_i32(-30817i, 23382i, 2147483647i) ^ max(48589i, arg_0.x))));
    return var_3.a.a;
}

fn func_5(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: f32) -> Struct_2 {
    var var_0 = Struct_3(Struct_1(arg_1.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1346f * _wgslsmith_f_op_f32(-1493f + -1100f)))), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, -1i), u_input.a.xwz), Struct_1(arg_1.x));
    var_0 = Struct_3(func_2(), _wgslsmith_f_op_f32(f32(-1f) * -827f), countOneBits(_wgslsmith_dot_vec2_i32(u_input.a.zx, u_input.a.ww)), func_2());
    return Struct_2(arg_1.x, vec4<f32>(594f, 117f, -1000f, var_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(select(vec3<bool>(true, true, true | (u_input.b <= 0u)), select(vec3<bool>(true, true, u_input.a.x >= u_input.a.x), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, false, false), func_1(vec3<i32>(-4845i, -1i, 1i)))), true && all(vec3<bool>(true, true, true))), vec4<bool>(false, true, false, !(!(u_input.a.x <= u_input.a.x))), 618f);
    var var_1 = Struct_2(true, vec4<f32>(443f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(215f, _wgslsmith_f_op_f32(f32(-1f) * -1472f)))), var_0.b.x, 165f));
    let var_2 = Struct_3(Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.b.x, var_1.b.x), _wgslsmith_f_op_f32(ceil(575f))) < var_1.b.x), var_1.b.x, ~_wgslsmith_dot_vec3_i32(-vec3<i32>(1i, 1i, u_input.a.x), select(~u_input.a.xwx, max(u_input.a.zzw, vec3<i32>(u_input.a.x, u_input.a.x, 1i)), vec3<bool>(var_0.a, true, false))), func_2());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(u_input.a.ww, ~(~u_input.a.yw)) << (firstTrailingBit(select(~vec2<u32>(40941u, 0u), ~vec2<u32>(4294967295u, 25044u), vec2<bool>(var_1.a, var_2.a.a))) % vec2<u32>(32u)), vec3<u32>(u_input.b, 1u, ~66185u));
}

