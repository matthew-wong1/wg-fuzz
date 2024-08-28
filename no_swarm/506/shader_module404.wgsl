struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: vec4<i32>, arg_3: vec4<i32>) -> u32 {
    var var_0 = true;
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    let var_1 = arg_3.zx;
    global0 = array<Struct_1, 17>();
    return u_input.c;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: vec2<u32>, arg_3: f32) -> vec4<bool> {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(func_3(u_input.b, u_input.a, vec4<i32>(10110i, 0i, -2147483647i, -23153i), vec4<i32>(u_input.b.x, u_input.a, u_input.d, 1i)), 4294967295u, arg_2.x >> (arg_2.x % 32u)), _wgslsmith_div_vec3_u32(vec3<u32>(1u, arg_2.x, 78635u) & vec3<u32>(arg_2.x, 35799u, 1u), ~vec3<u32>(1u, 4294967295u, arg_2.x)))), ~(vec3<u32>(_wgslsmith_mod_u32(4294967295u, 67742u), _wgslsmith_sub_u32(u_input.c, u_input.c), 1u) >> (~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.c, arg_2.x), vec3<u32>(0u, u_input.c, arg_2.x), vec3<u32>(64854u, 0u, arg_2.x)) % vec3<u32>(32u)))), 17u)];
    var var_1 = Struct_1(var_0.a);
    var var_2 = global0[_wgslsmith_index_u32(~u_input.c, 17u)];
    let var_3 = select(select(vec3<bool>(true, true, any(vec4<bool>(true, arg_1.x, false, arg_1.x))), !vec3<bool>(select(arg_1.x, arg_1.x, arg_1.x), !arg_1.x, false), vec3<bool>(!all(vec4<bool>(false, true, true, true)), any(select(vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(true, arg_1.x, false), vec3<bool>(arg_1.x, false, true))), true)), vec3<bool>(!(!arg_1.x), arg_1.x, all(vec4<bool>(arg_1.x, arg_1.x | true, !arg_1.x, arg_1.x))), select(select(select(!vec3<bool>(arg_1.x, arg_1.x, true), vec3<bool>(arg_1.x, false, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), !(!vec3<bool>(false, false, arg_1.x)), !vec3<bool>(arg_1.x, true, arg_1.x)), select(vec3<bool>(arg_0.x <= 2504f, true, arg_1.x), select(!vec3<bool>(arg_1.x, arg_1.x, arg_1.x), select(vec3<bool>(false, arg_1.x, true), vec3<bool>(true, arg_1.x, arg_1.x), false), true), any(select(vec3<bool>(false, true, arg_1.x), vec3<bool>(true, arg_1.x, true), vec3<bool>(arg_1.x, false, true)))), any(vec2<bool>(false, !arg_1.x))));
    var_0 = Struct_1(vec4<u32>(var_2.a.x, ~(~(u_input.c & 36105u)), 1u, 1u));
    return select(!select(select(vec4<bool>(false, true, arg_1.x, arg_1.x), !vec4<bool>(false, arg_1.x, arg_1.x, var_3.x), !vec4<bool>(var_3.x, false, var_3.x, arg_1.x)), !select(vec4<bool>(false, var_3.x, false, var_3.x), vec4<bool>(true, var_3.x, arg_1.x, var_3.x), vec4<bool>(var_3.x, true, true, false)), true), vec4<bool>(true, !var_3.x, true, true & all(vec2<bool>(var_3.x, var_3.x))), !vec4<bool>(!arg_1.x != false, all(vec4<bool>(false, false, false, false)), !var_3.x | arg_1.x, all(select(vec3<bool>(arg_1.x, var_3.x, false), var_3, true))));
}

fn func_1() -> f32 {
    var var_0 = false;
    var var_1 = 1560f;
    let var_2 = select(select(!select(vec4<bool>(true, false, false, false), func_2(vec3<f32>(-527f, 393f, 1000f), vec2<bool>(false, false), vec2<u32>(4294967295u, 54262u), 1000f), true), select(func_2(vec3<f32>(-145f, 1294f, 167f), vec2<bool>(true, true), countOneBits(vec2<u32>(u_input.c, 50939u)), _wgslsmith_f_op_f32(1237f * 1000f)), vec4<bool>(all(vec4<bool>(false, false, false, false)), true, true, true), vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true))), !select(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-386f, -133f, 1753f)), select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<u32>(0u, u_input.c), 1392f), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), true), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    let var_3 = 0i;
    global0 = array<Struct_1, 17>();
    return _wgslsmith_div_f32(_wgslsmith_div_f32(436f, 2098f), 1f);
}

fn func_4(arg_0: vec4<f32>, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> vec4<i32> {
    return -select(abs(vec4<i32>(-15568i, 1i, 1i, u_input.b.x) & vec4<i32>(-1i, 2147483647i, u_input.d, 52868i)), u_input.b, !select(!vec4<bool>(arg_1, true, arg_1, false), vec4<bool>(false, arg_1, true, arg_1), any(vec2<bool>(arg_1, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    let var_1 = func_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, -740f))), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-811f, _wgslsmith_f_op_f32(f32(-1f) * -507f)) + 1057f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(419f - _wgslsmith_f_op_f32(step(193f, -1678f)))))), true, firstLeadingBit(_wgslsmith_clamp_i32(~(u_input.d << (56908u % 32u)), ~u_input.d, u_input.d)), Struct_1(reverseBits(~vec4<u32>(41873u, var_0, 1u, 23119u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-362f, 1406f, 123f, -922f), vec4<f32>(555f, 166f, -1303f, 857f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1066f, -1092f, -1830f, -1779f) * vec4<f32>(1443f, -1020f, -534f, 1000f))))))));
}

