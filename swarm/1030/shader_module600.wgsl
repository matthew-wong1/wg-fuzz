struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec4<f32>,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: f32) -> f32 {
    var var_0 = Struct_5(_wgslsmith_add_u32(abs(~(~1u)), 1u), Struct_4((abs(1u) | _wgslsmith_dot_vec4_u32(vec4<u32>(66689u, 50242u, 32798u, 1u), vec4<u32>(4294967295u, 41518u, 67173u, 11900u))) ^ ~_wgslsmith_div_u32(1u, 26394u)));
    var var_1 = -2147483647i;
    var var_2 = Struct_5(1u, var_0.b);
    return -619f;
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec4<u32>) -> Struct_4 {
    let var_0 = vec2<i32>(countOneBits(-1i), -1i) << (~(abs(~vec2<u32>(arg_2.x, 30620u)) | _wgslsmith_sub_vec2_u32(arg_2.xz, max(arg_2.xx, vec2<u32>(arg_2.x, arg_2.x)))) % vec2<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(select(arg_1, 1000f, arg_0)))))));
    let var_2 = any(vec2<bool>(!arg_0, arg_0));
    let var_3 = Struct_5(abs(~_wgslsmith_dot_vec4_u32(countOneBits(arg_2), ~arg_2)), Struct_4(abs(~(~4294967295u))));
    let var_4 = u_input.a;
    return Struct_4(13929u);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_3) -> Struct_4 {
    let var_0 = vec4<i32>(~(-42866i), 0i, _wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_clamp_i32(-11332i, -2147483647i, arg_1.a.x)) & _wgslsmith_clamp_i32(abs(21202i), u_input.a.x ^ 61135i, arg_1.a.x), abs(abs(firstLeadingBit(-1i)))), u_input.a.x);
    var var_1 = _wgslsmith_f_op_f32(-175f + _wgslsmith_f_op_f32(-arg_1.d.a.e));
    var_1 = 480f;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -706f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.a.e)), _wgslsmith_f_op_f32(min(-1497f, _wgslsmith_f_op_f32(-900f + arg_1.c.a.e))))));
    var_1 = _wgslsmith_f_op_f32(-arg_1.d.a.e);
    return func_3(true, _wgslsmith_f_op_f32(max(204f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(261f))))))), vec4<u32>(_wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(27983u, 4294967295u, 10387u, 14155u)), vec4<u32>(1u, firstLeadingBit(0u), ~0u, max(55882u, 1u))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), 1u, ~(~(7100u << (0u % 32u)))));
}

fn func_4(arg_0: Struct_4) -> bool {
    let var_0 = vec3<i32>(u_input.a.x, -2147483647i, -reverseBits(u_input.a.x)) >> (_wgslsmith_div_vec3_u32(~(vec3<u32>(1u, 1u, arg_0.a) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(8450u, arg_0.a, 14609u), vec3<u32>(arg_0.a, 4294967295u, 51928u)) % vec3<u32>(32u))), vec3<u32>(~(~8570u), ~arg_0.a | _wgslsmith_sub_u32(1u, arg_0.a), ~0u)) % vec3<u32>(32u));
    let var_1 = Struct_5(1u, func_1(vec3<bool>(true, true, !all(vec2<bool>(true, false))), Struct_3(vec2<i32>(22478i, ~2147483647i), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), true), Struct_2(Struct_1(vec4<f32>(684f, -331f, 1734f, 1498f), true, vec4<f32>(-282f, -1365f, 1590f, 520f), vec4<bool>(false, false, false, false), -1021f)), Struct_2(Struct_1(vec4<f32>(1006f, 1000f, 333f, 224f), false, vec4<f32>(537f, 1240f, -312f, -463f), vec4<bool>(false, false, true, false), 454f)))));
    return any(vec4<bool>(false, any(vec2<bool>(var_1.a > var_1.b.a, true)), -823f != _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -559f))), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 743f;
    let var_1 = !select(vec3<bool>(true, true, true), vec3<bool>(true, func_4(func_1(vec3<bool>(false, true, true), Struct_3(vec2<i32>(u_input.a.x, -1i), vec4<bool>(true, true, false, false), Struct_2(Struct_1(vec4<f32>(var_0, -195f, 518f, -481f), true, vec4<f32>(224f, var_0, var_0, -1000f), vec4<bool>(true, false, false, false), -411f)), Struct_2(Struct_1(vec4<f32>(var_0, var_0, 318f, 397f), false, vec4<f32>(var_0, var_0, 245f, var_0), vec4<bool>(true, true, true, true), var_0))))), !func_4(Struct_4(50311u))), all(vec4<bool>(true, false, true, false)) | true);
    let var_2 = true;
    var var_3 = func_1(var_1, Struct_3(abs(max(-u_input.a.zy, vec2<i32>(2147483647i, u_input.a.x))), select(vec4<bool>(var_2, all(var_1), var_2, true && var_1.x), !(!vec4<bool>(false, var_1.x, true, false)), vec4<bool>(true, !var_1.x, true, var_2)), Struct_2(Struct_1(vec4<f32>(var_0, -1990f, var_0, 1323f), false, vec4<f32>(-1026f, var_0, 197f, var_0), !vec4<bool>(true, var_2, var_2, false), _wgslsmith_f_op_f32(floor(-1123f)))), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0, var_0, 782f, var_0))), any(vec3<bool>(true, false, false)), vec4<f32>(var_0, var_0, -914f, 1000f), select(vec4<bool>(false, var_2, var_2, true), vec4<bool>(var_2, var_1.x, var_1.x, false), vec4<bool>(var_2, var_1.x, var_1.x, var_1.x)), -1033f))));
    var_3 = func_3(!(!func_4(Struct_4(1u))) & true, _wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-760f, _wgslsmith_f_op_f32(-var_0))))), ~countOneBits(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(var_3.a, var_3.a, var_3.a, 6891u), vec4<u32>(var_3.a, var_3.a, 47717u, 4294967295u)))));
    let var_4 = ~(~_wgslsmith_mod_vec4_u32(min(vec4<u32>(var_3.a, 1u, 1u, var_3.a), ~vec4<u32>(var_3.a, var_3.a, 0u, 23954u)), ~select(vec4<u32>(26142u, 5990u, var_3.a, 30716u), vec4<u32>(var_3.a, 23045u, var_3.a, var_3.a), var_2)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~4294967295u, 48708u, var_3.a >> (var_4.x % 32u), ~_wgslsmith_clamp_u32(var_4.x, 17132u, var_3.a) | 1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(var_0)), _wgslsmith_f_op_f32(select(var_0, 677f, var_1.x)), _wgslsmith_f_op_f32(step(var_0, var_0)), _wgslsmith_f_op_f32(var_0 * var_0)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-676f, -1000f, var_0, var_0)))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * var_0) - 783f), -1304f, -1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1087f)))))), var_0);
}

