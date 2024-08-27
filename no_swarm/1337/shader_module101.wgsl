struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 18>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = Struct_1(!all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-219f, 1461f)))))), 1u);
    var var_1 = vec4<bool>(select(true, !any(!vec3<bool>(false, var_0.a, true)), false), var_0.a, _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(1174f - _wgslsmith_f_op_f32(trunc(-1452f)))) >= var_0.b, false);
    var var_2 = var_0;
    var var_3 = var_1.zzy;
    var_1 = !vec4<bool>(any(select(var_1.yy, !var_3.xz, true)), !all(select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(false, var_0.a, true), vec3<bool>(false, false, var_1.x))), any(var_1.xx), !(!(!var_3.x)));
    return true;
}

fn func_2() -> vec4<u32> {
    let var_0 = vec4<bool>(true, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-352f)))), func_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1108f, -315f))) | all(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true)));
    global0 = array<vec4<u32>, 18>();
    var var_1 = Struct_1(any(!var_0.xz), 422f, _wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(4294967295u, 1u, 9518u)), _wgslsmith_mod_vec3_u32(vec3<u32>(6166u, 39881u, 58329u), vec3<u32>(1u, 4294967295u, 4294967295u)))), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 28583u), vec2<u32>(1u, 30402u)))));
    global0 = array<vec4<u32>, 18>();
    global0 = array<vec4<u32>, 18>();
    return firstLeadingBit(global0[_wgslsmith_index_u32(88942u, 18u)]) >> (firstTrailingBit(global0[_wgslsmith_index_u32(select(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(var_1.c, 0u)), _wgslsmith_add_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(36766u, 116554u))), 102248u >> (var_1.c % 32u), var_0.x), 18u)]) % vec4<u32>(32u));
}

fn func_1(arg_0: bool) -> u32 {
    global0 = array<vec4<u32>, 18>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1303f - 619f) * _wgslsmith_f_op_f32(f32(-1f) * -275f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-342f)))) + -619f), -871f, _wgslsmith_f_op_f32(sign(-1478f)), -1934f);
    var var_1 = abs(~func_2());
    var var_2 = -829f;
    var_1 = _wgslsmith_clamp_vec4_u32(global0[_wgslsmith_index_u32(~(~(~var_1.x)), 18u)], ~(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, var_1.x), 18u)] | ~vec4<u32>(22073u, 37562u, 0u, 4294967295u)), vec4<u32>(~_wgslsmith_div_u32(17549u, var_1.x), ~0u, var_1.x, ~4294967295u)) >> (vec4<u32>(~46227u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(4294967295u, var_1.x), var_1.x), var_1.ww), _wgslsmith_clamp_u32(var_1.x << (var_1.x % 32u), max(var_1.x | 0u, ~0u), abs(~21683u)), countOneBits(~(~var_1.x))) % vec4<u32>(32u));
    return var_1.x | var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 77204u;
    var_0 = ~_wgslsmith_div_u32(~_wgslsmith_mult_u32(37939u, 40776u), ~18013u);
    let var_1 = abs(func_1(any(vec2<bool>(false, true))) & firstTrailingBit(func_1(true)));
    var var_2 = vec3<i32>(u_input.a, _wgslsmith_add_i32(-u_input.a, min(u_input.a, _wgslsmith_add_i32(u_input.a, u_input.a))), -27101i);
    let var_3 = Struct_1(any(select(select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), true)), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-524f, 270f, false))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1327f)) + _wgslsmith_f_op_f32(-406f - 984f)))), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, select(~(~(~67838u)), var_1, var_3.a), _wgslsmith_mod_vec3_u32(~_wgslsmith_add_vec3_u32(~vec3<u32>(var_3.c, var_1, var_1), reverseBits(vec3<u32>(var_1, 0u, 4294967295u))), vec3<u32>(~9135u, select(var_3.c, 54970u, var_3.a), 1u) << (firstTrailingBit(firstTrailingBit(vec3<u32>(1739u, 34306u, 3685u))) % vec3<u32>(32u))));
}

