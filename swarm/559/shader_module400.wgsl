struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -2448f;

var<private> global1: array<Struct_4, 28> = array<Struct_4, 28>(Struct_4(Struct_2(true), vec2<bool>(false, true), i32(-2147483648), 2147483647i), Struct_4(Struct_2(false), vec2<bool>(false, false), 27440i, 0i), Struct_4(Struct_2(true), vec2<bool>(true, true), -1i, -19637i), Struct_4(Struct_2(false), vec2<bool>(true, false), 2147483647i, 2663i), Struct_4(Struct_2(false), vec2<bool>(false, false), 2147483647i, 35740i), Struct_4(Struct_2(true), vec2<bool>(false, true), 0i, 0i), Struct_4(Struct_2(false), vec2<bool>(false, false), -1642i, 4223i), Struct_4(Struct_2(true), vec2<bool>(true, true), -1i, -22601i), Struct_4(Struct_2(false), vec2<bool>(false, true), -55408i, -1i), Struct_4(Struct_2(true), vec2<bool>(true, false), -1i, -695i), Struct_4(Struct_2(true), vec2<bool>(true, false), i32(-2147483648), 17800i), Struct_4(Struct_2(false), vec2<bool>(true, true), 1i, -39295i), Struct_4(Struct_2(false), vec2<bool>(false, false), 4826i, i32(-2147483648)), Struct_4(Struct_2(true), vec2<bool>(true, false), i32(-2147483648), 55860i), Struct_4(Struct_2(true), vec2<bool>(false, true), i32(-2147483648), -39486i), Struct_4(Struct_2(true), vec2<bool>(false, false), 0i, 2147483647i), Struct_4(Struct_2(true), vec2<bool>(false, true), 32665i, -1i), Struct_4(Struct_2(false), vec2<bool>(true, false), 11550i, 1i), Struct_4(Struct_2(true), vec2<bool>(true, true), -15670i, -1i), Struct_4(Struct_2(false), vec2<bool>(true, false), -1i, 0i), Struct_4(Struct_2(true), vec2<bool>(false, true), 0i, i32(-2147483648)), Struct_4(Struct_2(false), vec2<bool>(false, true), 13075i, -1i), Struct_4(Struct_2(false), vec2<bool>(true, false), -12126i, 3360i), Struct_4(Struct_2(false), vec2<bool>(false, false), 2147483647i, -1075i), Struct_4(Struct_2(true), vec2<bool>(true, true), -1i, 2147483647i), Struct_4(Struct_2(true), vec2<bool>(true, true), -12881i, 2147483647i), Struct_4(Struct_2(true), vec2<bool>(false, false), i32(-2147483648), 1i), Struct_4(Struct_2(false), vec2<bool>(true, false), 1i, -5341i));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec4<bool>) -> f32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1123f, -1397f))) - -1952f));
    global1 = array<Struct_4, 28>();
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1304f * 1443f), _wgslsmith_f_op_f32(f32(-1f) * -2142f), all(select(vec2<bool>(arg_0.x, arg_0.x), arg_0.zy, arg_0.x))))));
}

fn func_3() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(900f + 1373f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-339f * _wgslsmith_f_op_f32(f32(-1f) * -129f))))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-427f, 495f)))) + _wgslsmith_f_op_f32(trunc(-147f))), u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-845f + -195f)) * _wgslsmith_f_op_f32(-121f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1338f, -1390f)) - 442f))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1312f, _wgslsmith_div_f32(-1071f, _wgslsmith_f_op_f32(-766f * var_1.a)), var_1.c), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-143f, var_1.a, var_1.c) * vec3<f32>(var_1.a, var_1.a, var_1.c)), vec3<f32>(var_1.a, var_1.a, var_1.c))))), true)));
    var var_3 = firstTrailingBit(_wgslsmith_div_i32(reverseBits(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-25008i, 1i, 27958i), 1i)), -1i));
    global0 = -133f;
    return u_input.a;
}

fn func_1(arg_0: Struct_4, arg_1: bool, arg_2: Struct_2) -> StorageBuffer {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(696f)) + _wgslsmith_f_op_f32(-1000f - -1592f))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1868f + -1000f) * -1844f)))), u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(549f))));
    let var_1 = vec3<i32>(arg_0.d, arg_0.c, -1i);
    global1 = array<Struct_4, 28>();
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1057f, var_0.c)) - var_0.c), var_0.a, arg_0.b.x | !arg_1)) * -1147f);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)) - _wgslsmith_f_op_f32(f32(-1f) * -748f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(vec4<bool>(arg_0.b.x, false, true, true))), _wgslsmith_f_op_f32(step(1105f, _wgslsmith_f_op_f32(-var_0.c))))))));
    return StorageBuffer(_wgslsmith_dot_vec3_u32(func_3(), ~(~u_input.a)) | _wgslsmith_mod_u32(var_0.b, ~countOneBits(var_0.b)), vec2<i32>(-53645i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(var_1.x, var_1.x), var_1.x) | -23885i), var_1.x, var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(Struct_4(Struct_2(true), vec2<bool>(false, !all(vec2<bool>(false, false))), -_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(1i, -6506i, 26513i), reverseBits(-1i), _wgslsmith_clamp_i32(-48244i, -35183i, 1i)), _wgslsmith_mod_i32(2147483647i, firstLeadingBit(firstTrailingBit(2147483647i)))), all(vec2<bool>(true, true)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(152f, -1303f)) >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1264f)), _wgslsmith_f_op_f32(1058f + 240f)))));
}

