struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> f32 {
    var var_0 = Struct_3(firstTrailingBit(~(~(u_input.b >> (u_input.a % 32u)))));
    let var_1 = !select(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true))), vec3<bool>(any(vec4<bool>(true, true, true, false)), all(vec3<bool>(true, false, true)), true), vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, true), false)), -2147483647i > u_input.c.x, any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)))));
    var var_2 = ~(4294967295u | var_0.a);
    var_0 = Struct_3(max(~var_0.a, _wgslsmith_mult_u32(~_wgslsmith_mult_u32(65134u, 37108u), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 7416u, var_0.a, u_input.b), vec4<u32>(var_0.a, u_input.a, u_input.a, 0u)), ~vec4<u32>(var_0.a, u_input.b, var_0.a, 12828u)))));
    let var_3 = 28658u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1469f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1207f - 1225f), 1000f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-178f))), -335f))));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: Struct_3) -> vec2<bool> {
    var var_0 = -5502i;
    var_0 = _wgslsmith_clamp_i32(~(~u_input.d), arg_1, -_wgslsmith_clamp_i32(arg_0.a.x, select(0i, _wgslsmith_mod_i32(-23884i, 2147483647i), true), -u_input.c.x));
    let var_1 = arg_0.b;
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)), arg_0.c.x) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), 471f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x + -854f) - 1019f)))));
    var_0 = 1i;
    return select(select(vec2<bool>(select(false, all(vec3<bool>(false, false, true)), true), true), vec2<bool>(true, true), vec2<bool>(!any(vec2<bool>(true, true)), any(vec4<bool>(false, true, true, false)))), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(var_2.x >= var_2.x, any(vec3<bool>(true, true, true)))), vec2<bool>(~(~u_input.a) > abs(4294967295u), true));
}

fn func_1() -> Struct_1 {
    let var_0 = !vec3<bool>(all(!func_2(Struct_2(u_input.c.yx, u_input.b, vec4<f32>(458f, -336f, 888f, -620f)), u_input.c.x, Struct_3(21607u))), true, true);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-784f - -1046f), _wgslsmith_f_op_f32(f32(-1f) * -967f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1186f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(622f, -962f)) + _wgslsmith_f_op_f32(step(-197f, -938f)))), _wgslsmith_f_op_f32(select(-1745f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(219f - 915f)), var_0.x || all(vec4<bool>(false, true, var_0.x, var_0.x))))));
    var_1 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -238f), _wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -857f)))))));
    return Struct_1(var_1.x, _wgslsmith_f_op_vec2_f32(-var_1.zz), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-115f, 404f, var_1.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(289f, var_1.x, -1257f)))), _wgslsmith_div_vec3_f32(vec3<f32>(562f, -1000f, -283f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(504f, var_1.x, var_1.x)))))), vec3<f32>(_wgslsmith_div_f32(var_1.x, -1439f), _wgslsmith_f_op_f32(func_3()), var_1.x)));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: i32) -> vec2<u32> {
    var var_0 = 366f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(974f)) * -536f))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_1.b.x)), _wgslsmith_f_op_f32(-arg_1.b.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(690f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-386f, 2600f, false))))));
    let var_1 = arg_1;
    var var_2 = any(vec3<bool>(false, false, all(vec3<bool>(true, true, true)) || select(true, any(vec4<bool>(true, false, true, false)), true)));
    return _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(arg_0.xz, vec2<u32>(24392u, ~select(1u, arg_0.x, true))), arg_0.xz, arg_0.zx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(u_input.b);
    var var_1 = abs(firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), abs(vec2<u32>(u_input.a, u_input.a)), abs(vec2<u32>(0u, 0u)))) >> (func_4(firstLeadingBit(vec4<u32>(u_input.b, u_input.b, var_0.a, var_0.a)), func_1(), 6431i) % vec2<u32>(32u)));
    var_1 = ~(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, var_1.x, 128357u) | vec4<u32>(79389u, 97392u, 27899u, u_input.b), vec4<u32>(u_input.b, var_1.x, 1u, 4294967295u) | vec4<u32>(4294967295u, 1u, 31768u, 1u)), countOneBits(~0u)) | (reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 12240u), vec2<u32>(var_1.x, var_1.x))) >> (vec2<u32>(~u_input.a, max(u_input.b, 42892u)) % vec2<u32>(32u))));
    let var_2 = u_input.c;
    var_1 = vec2<u32>(4294967295u, _wgslsmith_mod_u32(1u, var_0.a));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(373f - 511f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-714f)) * 1f));
    let var_4 = vec2<f32>(var_3, _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-530f + -181f), all(vec4<bool>(true, true, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(vec4<u32>(~59692u, 38151u, ~0u, 2426u), max(_wgslsmith_mult_vec4_u32(~vec4<u32>(var_1.x, 1u, u_input.a, var_1.x), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a, var_0.a, 40497u, var_1.x), vec4<u32>(var_1.x, var_0.a, var_0.a, var_0.a))), ~(~vec4<u32>(4294967295u, 0u, 4294967295u, 8730u)))), var_4.x);
}

