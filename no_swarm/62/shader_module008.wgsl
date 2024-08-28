struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> u32 {
    let var_0 = 1u;
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1202f, -1000f)))) + _wgslsmith_f_op_f32(f32(-1f) * -2038f))));
    var var_2 = -1958f;
    var_2 = var_1;
    let var_3 = false;
    return _wgslsmith_div_u32(14532u, max(u_input.b, ~6016u));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec4<i32>, arg_3: vec3<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(floor(-1053f)), _wgslsmith_f_op_f32(-295f - -1257f)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2166f)))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-799f, 853f), _wgslsmith_f_op_f32(872f - 264f), any(arg_3.zz)))))));
    var var_1 = Struct_2(-(vec3<i32>(-1i) * -(~arg_2.xyx)));
    var var_2 = select(~select(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, 1u, u_input.b, 0u), vec4<u32>(u_input.b, 4294967295u, u_input.a, 4294967295u)), ~firstTrailingBit(vec4<u32>(1u, 41556u, u_input.a, 31212u)), select(!vec4<bool>(arg_3.x, arg_1, arg_1, true), select(vec4<bool>(arg_3.x, arg_1, arg_1, arg_3.x), vec4<bool>(false, arg_3.x, arg_3.x, arg_3.x), vec4<bool>(true, true, false, arg_3.x)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, arg_3.x, false), arg_1))), vec4<u32>(_wgslsmith_mod_u32(~(~u_input.a), ~_wgslsmith_add_u32(96834u, 45737u)), ~(u_input.a & u_input.a) ^ 43057u, _wgslsmith_clamp_u32(4294967295u, u_input.a, 10194u) & _wgslsmith_clamp_u32(~1u, ~u_input.b, u_input.a), min(u_input.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.b, u_input.a, 57098u), vec4<u32>(u_input.b, u_input.a, u_input.a, u_input.a)))), vec4<bool>(!(var_0.x > 161f) || (true && any(vec3<bool>(arg_3.x, true, arg_1))), all(vec2<bool>(any(arg_3.zz), true)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 65385u, u_input.b), select(vec4<u32>(44794u, u_input.a, u_input.b, u_input.a), vec4<u32>(4294967295u, u_input.a, u_input.b, u_input.a), arg_1)) != ~firstLeadingBit(1u), !(!any(vec3<bool>(arg_1, true, arg_3.x)))));
    var var_3 = Struct_2(var_1.a);
    let var_4 = !arg_1;
    return var_0.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(abs(arg_2), arg_0.e.x & (1u != u_input.b), vec4<i32>(-58622i, 0i, -1i, arg_0.b.x) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(24030u, 30792u, u_input.a, u_input.a), vec4<u32>(u_input.b, 0u, u_input.a, u_input.b)) % vec4<u32>(32u)), arg_0.e.wwx)) - -2053f));
    let var_1 = arg_1;
    var_0 = -1402f;
    let var_2 = Struct_2(select(_wgslsmith_div_vec3_i32(var_1.a, vec3<i32>(_wgslsmith_dot_vec3_i32(var_1.a, arg_0.b.wyy), arg_0.c, u_input.c.x)), _wgslsmith_add_vec3_i32(select(vec3<i32>(arg_2, 0i, arg_1.b.x) << (vec3<u32>(u_input.b, 1u, 63436u) % vec3<u32>(32u)), ~vec3<i32>(2147483647i, var_1.d, 0i), select(arg_1.e.wzy, var_1.e.zxw, vec3<bool>(false, arg_1.e.x, arg_1.e.x))), min(arg_0.b.xwz, vec3<i32>(-7234i, arg_2, var_1.c))), select(vec3<bool>(var_1.e.x, !arg_1.e.x, true), vec3<bool>(true, true, false), select(arg_1.e.xwz, var_1.e.yzz, true))));
    let var_3 = var_2;
    return ~20549u << (~u_input.b % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f * -1437f), _wgslsmith_f_op_f32(436f - 313f), true))))));
    let x = u_input.a;
    s_output = StorageBuffer(-848f, ~vec4<u32>(min(func_1(), func_2(Struct_1(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, -2147483647i, -1220i, u_input.c.x), u_input.c.x, -2147483647i, vec4<bool>(true, true, true, true)), Struct_1(vec3<i32>(u_input.c.x, 0i, 2147483647i), vec4<i32>(-25408i, u_input.c.x, -32743i, -38509i), 1i, 0i, vec4<bool>(false, false, false, false)), u_input.c.x)), abs(1u), u_input.a, 1u), ~abs(_wgslsmith_div_vec2_u32(vec2<u32>(53979u, u_input.b), _wgslsmith_mod_vec2_u32(vec2<u32>(56180u, u_input.b), vec2<u32>(1u, 18114u)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 374f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(391f)), var_0)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0), -355f, 1000f, _wgslsmith_f_op_f32(-var_0))))));
}

