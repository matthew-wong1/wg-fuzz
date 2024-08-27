struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec4<bool>,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    let var_0 = Struct_2(Struct_1(true, u_input.a.wxy & _wgslsmith_sub_vec3_u32(~u_input.a.ywz, _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 15143u, u_input.b.x), u_input.b)), !vec4<bool>(all(vec2<bool>(true, true)), true, all(vec3<bool>(false, false, false)), true), all(vec4<bool>(true, true, false, true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-265f, 870f, 166f))))))), Struct_1(-57687i <= u_input.e.x, _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, u_input.d, 0u) & select(vec3<u32>(u_input.b.x, 4294967295u, 4712u), u_input.a.wzx, true), _wgslsmith_mod_vec3_u32(vec3<u32>(59257u, u_input.b.x, 7666u), _wgslsmith_mult_vec3_u32(u_input.a.xzw, u_input.a.xwz))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), true, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(max(593f, 647f)), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_1 = Struct_1(!var_0.b.d, ~_wgslsmith_div_vec3_u32(min(min(vec3<u32>(19431u, 41647u, u_input.a.x), vec3<u32>(u_input.b.x, 4294967295u, var_0.a.b.x)), ~u_input.a.yyy), vec3<u32>(72385u, u_input.b.x, 4294967295u) >> (~vec3<u32>(var_0.a.b.x, var_0.b.b.x, u_input.d) % vec3<u32>(32u))), vec4<bool>(any(select(var_0.b.c.yxy, !var_0.b.c.zzz, vec3<bool>(true, true, true))), false, true, false), !any(select(!var_0.a.c.xwy, var_0.b.c.wwx, true)), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-315f + _wgslsmith_f_op_f32(f32(-1f) * -161f)))), _wgslsmith_div_f32(-424f, 575f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.e.x + -178f) - _wgslsmith_f_op_f32(abs(var_0.b.e.x))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1623f, 394f) + -1190f))));
    return !select(true, any(var_1.c), !(-914f >= _wgslsmith_f_op_f32(-var_1.e.x)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(select(false, false, ~u_input.a.x != u_input.a.x), select(~max(u_input.a.zyy, vec3<u32>(u_input.a.x, u_input.d, 4294967295u)), vec3<u32>(u_input.b.x, 88664u | u_input.a.x, 36173u), arg_0), !vec4<bool>(u_input.a.x == u_input.b.x, true, arg_0, true), func_3(), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(189f, 360f, -1728f)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-741f, 1470f, 1685f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1811f, 675f, -123f)))), arg_0))), Struct_1(arg_0, _wgslsmith_add_vec3_u32(~u_input.b, max(u_input.a.yzw, _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, u_input.d), vec3<u32>(u_input.a.x, 22826u, u_input.a.x), vec3<u32>(u_input.b.x, 0u, u_input.d)))), select(!select(vec4<bool>(false, arg_0, true, arg_0), vec4<bool>(arg_0, false, arg_0, true), arg_0), !vec4<bool>(arg_0, true, false, false), !(arg_0 || true)), any(select(select(vec3<bool>(true, false, arg_0), vec3<bool>(true, false, true), vec3<bool>(arg_0, false, arg_0)), !vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, _wgslsmith_f_op_f32(1013f - -695f), _wgslsmith_div_f32(-2332f, 370f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-325f, -1117f, -2290f))), arg_0))));
    return var_0.a;
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: bool) -> Struct_1 {
    var var_0 = !select(vec3<bool>(true, true, !(!arg_3)), vec3<bool>(true, true, true), !vec3<bool>(any(vec2<bool>(false, arg_3)), arg_3, false));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2026f) + -1000f))));
    let var_2 = arg_1;
    var var_3 = func_2(!arg_3);
    let var_4 = countOneBits(u_input.e.yw);
    return func_2(func_3());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(any(select(vec2<bool>(false, true), vec2<bool>(false, true), true)) == true, countOneBits(vec3<u32>(0u, 141194u, u_input.b.x)) >> ((select(u_input.b, vec3<u32>(u_input.a.x, u_input.a.x, u_input.b.x), true) << (u_input.b % vec3<u32>(32u))) % vec3<u32>(32u)), !vec4<bool>(any(vec2<bool>(false, false)), true, false, true), !(!(u_input.b.x == u_input.b.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(571f, 104f, 465f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(942f, 590f, -1154f), vec3<f32>(-1000f, 952f, -108f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1087f, -404f, -858f)))))), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -383f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1279f, 1620f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -2005f, 467f, -606f), vec4<f32>(-626f, -656f, 487f, -422f), u_input.b.x <= u_input.a.x)))), vec2<u32>(max(u_input.b.x, ~u_input.d), ~_wgslsmith_sub_u32(u_input.b.x, u_input.a.x)), !(_wgslsmith_f_op_f32(ceil(942f)) == _wgslsmith_f_op_f32(315f + -1000f))));
    var var_1 = func_2(!var_0.b.d).a;
    var var_2 = vec4<bool>(any(var_0.b.c.wy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-686f))) + _wgslsmith_f_op_f32(-851f + 986f)) < 1347f, var_0.a.d, all(!(!var_0.a.c.xz)) == !any(func_1(1493f, vec4<f32>(var_0.a.e.x, var_0.b.e.x, var_0.a.e.x, -155f), u_input.a.wx, false).c.zwz));
    let var_3 = Struct_2(Struct_1(!func_1(var_0.b.e.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.e.x, -927f, 1686f, var_0.b.e.x) + vec4<f32>(var_0.a.e.x, var_0.b.e.x, var_0.b.e.x, 715f)), firstLeadingBit(vec2<u32>(1u, u_input.d)), any(var_0.a.c)).a, vec3<u32>(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.b.x, u_input.d, 0u)), _wgslsmith_mult_vec3_u32(var_0.b.b, var_0.b.b)), min(var_0.a.b.x, _wgslsmith_div_u32(97046u, var_0.a.b.x)), ~0u), select(var_0.a.c, vec4<bool>(var_2.x, true, var_2.x, true), !(var_2.x | false)), var_2.x, var_0.b.e), Struct_1(var_0.b.d, ~_wgslsmith_add_vec3_u32(var_0.b.b >> (var_0.b.b % vec3<u32>(32u)), vec3<u32>(var_0.a.b.x, u_input.b.x, var_0.a.b.x)), !vec4<bool>(true != var_2.x, 1548f > var_0.b.e.x, true, !var_0.b.c.x), var_0.a.d, vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.b.e.x, 2171f))), 810f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.e.x) - -557f))));
    var var_4 = vec4<i32>(max(35633i, ~firstTrailingBit(firstTrailingBit(u_input.c.x))), -50819i ^ u_input.c.x, u_input.e.x, u_input.e.x);
    var var_5 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_3.b.e - _wgslsmith_f_op_vec3_f32(-var_0.a.e))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, 0u, u_input.e.x);
}

