struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: vec4<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))) + -443f);
    return true;
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1308f, _wgslsmith_f_op_f32(367f - 1000f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(849f, -1478f) - vec2<f32>(614f, -636f)))), true)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(385f, 973f)))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -250f), _wgslsmith_f_op_f32(f32(-1f) * -905f))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, -248f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1000f)) - vec2<f32>(1775f, var_0.x)))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.x, -1103f))) * 943f), -534f, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(-var_0.x)));
    var_0 = vec2<f32>(145f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(223f)), _wgslsmith_f_op_f32(min(var_0.x, var_0.x))))));
    var_0 = vec2<f32>(807f, var_0.x);
    return -1251f;
}

fn func_2(arg_0: vec3<i32>) -> vec3<i32> {
    var var_0 = 1172f;
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1087f, _wgslsmith_f_op_f32(func_3()))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-267f - _wgslsmith_f_op_f32(f32(-1f) * -1205f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1033f * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -589f))) + _wgslsmith_div_f32(642f, 101f)));
    let var_2 = select(vec4<bool>(any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true))) || any(vec4<bool>(true, true, true, true)), true, !any(vec2<bool>(true, true)), any(vec4<bool>(true, true, true, true))), !(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), true))), any(vec3<bool>(true, !func_1(), -70800i <= _wgslsmith_add_i32(u_input.a.x, arg_0.x))));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(round(-878f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -366f) - _wgslsmith_f_op_f32(464f - 628f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -303f), _wgslsmith_f_op_f32(select(1749f, 1217f, false)), true))))));
    return arg_0;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: bool, arg_3: vec2<bool>) -> vec4<bool> {
    let var_0 = !(!func_1()) && arg_3.x;
    let var_1 = Struct_1(66174u, arg_2, vec4<u32>(arg_0.x, ~(1u & arg_0.x), arg_0.x, arg_0.x));
    let var_2 = ~arg_0.x;
    var var_3 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3())))), true, var_1.c, _wgslsmith_f_op_f32(-1284f + 751f));
    let var_4 = Struct_1(_wgslsmith_dot_vec3_u32(~(arg_0 & vec3<u32>(48137u, var_2, arg_0.x)), vec3<u32>(~select(var_3.c.x, arg_0.x, false), firstLeadingBit(~7224u), countOneBits(0u))), arg_2, max(countOneBits(vec4<u32>(19805u, 34389u, 0u, 11673u)) >> (_wgslsmith_add_vec4_u32(var_3.c, var_1.c) % vec4<u32>(32u)), var_3.c) >> (_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(reverseBits(var_1.c), vec4<u32>(var_1.c.x, 1u, 0u, 4294967295u)), ~select(vec4<u32>(1u, 56350u, var_3.c.x, 4294967295u), vec4<u32>(var_2, var_3.c.x, var_2, arg_0.x), vec4<bool>(false, var_0, false, false))) % vec4<u32>(32u)));
    return select(!(!select(!vec4<bool>(true, false, true, var_3.b), select(vec4<bool>(true, arg_2, var_1.b, true), vec4<bool>(true, var_1.b, var_3.b, var_0), true), vec4<bool>(false, var_3.b, false, var_3.b))), select(!vec4<bool>(true, var_0, !var_1.b, var_4.b && false), vec4<bool>(var_3.a < var_3.d, (arg_2 | true) & true, all(!vec4<bool>(var_1.b, true, true, false)), false), select(arg_2, arg_3.x, all(vec2<bool>(true, var_4.b)))), vec4<bool>(var_1.b && false, arg_2 & !any(vec2<bool>(arg_2, var_3.b)), true, var_1.b & true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false && !any(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)));
    var var_1 = vec4<bool>(!(!any(vec4<bool>(var_0, true, var_0, false))) && !(!func_1()), func_1() != ((select(true, false, true) | !var_0) && !select(var_0, var_0, true)), var_0 && any(func_4(vec3<u32>(0u, 53628u, 37461u), func_2(vec3<i32>(u_input.a.x, u_input.a.x, 52279i)), var_0, select(vec2<bool>(false, var_0), vec2<bool>(false, var_0), vec2<bool>(true, var_0)))), var_0 != (!var_0 != true));
    var var_2 = u_input.b.x;
    var_1 = func_4(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(min(19504u, 60733u), _wgslsmith_div_u32(18382u, 1u), min(0u, 2184u), _wgslsmith_dot_vec3_u32(vec3<u32>(13719u, 1u, 21730u), vec3<u32>(1560u, 1277u, 4294967295u))), select(vec4<u32>(54406u, 0u, 4294967295u, 1u), ~vec4<u32>(18785u, 1u, 1691u, 0u), var_0)), min(~_wgslsmith_mult_u32(36571u, 15902u), ~0u), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(23469u, 0u), vec2<u32>(88266u, 0u)), ~4294967295u) >> (1u % 32u)), abs(u_input.c.zwy), var_0, !vec2<bool>(true, any(!vec4<bool>(var_0, var_1.x, var_0, var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(min(~(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 108861u), vec2<u32>(0u, 46062u)) | 1u), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 0u, 4294967295u, 1u), vec4<u32>(84459u, 0u, 0u, 4294967295u))), 14760i, -u_input.c.xxx, abs(vec4<u32>(~(~0u), 90265u, 1u, firstLeadingBit(1u))));
}

