struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6>;

var<private> global1: array<vec2<i32>, 23>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: f32, arg_3: vec4<bool>) -> bool {
    let var_0 = Struct_2(arg_3.wyz, arg_1, Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-2103f)), -1000f))), arg_1);
    global0 = array<bool, 6>();
    let var_1 = arg_0;
    var var_2 = min(countOneBits(vec2<u32>(1u, 1u)), vec2<u32>(1u, ~select(31487u, 1u, var_0.a.x) << (1u % 32u)));
    global1 = array<vec2<i32>, 23>();
    return all(vec3<bool>(all(arg_3.xxz) | all(select(arg_3.xz, vec2<bool>(arg_3.x, arg_3.x), false)), false, arg_3.x));
}

fn func_2() -> Struct_2 {
    global1 = array<vec2<i32>, 23>();
    global0 = array<bool, 6>();
    return Struct_2(!select(vec3<bool>(false, false, func_3(u_input.a, Struct_1(-983f), 416f, vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(50103u, 6u)], global0[_wgslsmith_index_u32(86483u, 6u)]))), vec3<bool>(true, global0[_wgslsmith_index_u32(min(0u, 1u), 6u)], true), global0[_wgslsmith_index_u32(firstLeadingBit(~28324u), 6u)]), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1086f))))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1070f - 709f) + 1377f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-332f - -1119f))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1282f)) + _wgslsmith_f_op_f32(trunc(460f))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: Struct_2) -> bool {
    var var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(~(~0u), firstTrailingBit(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), abs(vec4<u32>(0u, 4294967295u, 0u, 36320u))), 1u), ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 7229u, 1u), vec3<u32>(0u, 33250u, 0u)), _wgslsmith_clamp_u32(~0u, 1u, 1u), _wgslsmith_clamp_u32(~1u, 4436u, ~0u), ~(~0u)));
    var var_1 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~1u, _wgslsmith_mod_u32(1u, 1u), 1u, 70932u), ~_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(1u, 50021u, 1u, 6867u)), ~vec4<u32>(1u, 2610u, 9027u, 29870u), select(vec4<u32>(0u, 19320u, 51962u, 4294967295u), vec4<u32>(11719u, 0u, 0u, 62566u), vec4<bool>(arg_3.a.x, arg_1.a.x, true, true)))), ~select(~(~37419u), ~(~11870u), global0[_wgslsmith_index_u32(~4294967295u, 6u)]), 1u, _wgslsmith_mult_u32(4294967295u, _wgslsmith_add_u32(4294967295u, 0u) | _wgslsmith_clamp_u32(4294967295u, 4294967295u, 796u)) << ((1u << (1u % 32u)) % 32u));
    let var_2 = func_2();
    var var_3 = false;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1574f) - _wgslsmith_f_op_f32(exp2(arg_3.b.a))), _wgslsmith_f_op_f32(arg_0.x - -805f))), _wgslsmith_div_f32(var_2.d.a, arg_1.b.a))));
    return any(vec2<bool>(!all(arg_1.a.zx), arg_1.a.x & ((u_input.a.x << (0u % 32u)) != 1i)));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec3<u32>) -> vec2<u32> {
    let var_0 = select(vec3<bool>(!func_4(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-246f, 680f), vec2<f32>(361f, 1000f))), Struct_2(vec3<bool>(false, arg_1, arg_0), Struct_1(1618f), Struct_1(253f), Struct_1(-1734f)), !vec3<bool>(arg_1, false, true), func_2()), !global0[_wgslsmith_index_u32(1u, 6u)], arg_1 && !(!arg_1)), !select(!select(vec3<bool>(false, arg_1, true), vec3<bool>(false, true, global0[_wgslsmith_index_u32(4294967295u, 6u)]), true), !func_2().a, !(!vec3<bool>(true, true, global0[_wgslsmith_index_u32(arg_2.x, 6u)]))), false);
    var var_1 = var_0.zy;
    var var_2 = _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(550f, _wgslsmith_div_f32(1102f, 1725f)))), false));
    var_2 = -621f;
    global0 = array<bool, 6>();
    return arg_2.xx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(0u, 0u)), reverseBits(func_1(global0[_wgslsmith_index_u32(3076u, 6u)], true, vec3<u32>(1u, 51252u, 0u)))), ~(~vec2<u32>(14687u, 27413u))));
    global0 = array<bool, 6>();
    global1 = array<vec2<i32>, 23>();
    global1 = array<vec2<i32>, 23>();
    var var_1 = Struct_2(vec3<bool>(false, global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_clamp_u32(~0u, var_0.x, 0u | var_0.x)), 6u)], global0[_wgslsmith_index_u32(var_0.x, 6u)]), func_2().d, func_2().b, Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1899f + 225f), _wgslsmith_f_op_f32(1000f - -998f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -358f))))));
    global1 = array<vec2<i32>, 23>();
    global1 = array<vec2<i32>, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 33297u, var_0.x, 0u), vec4<u32>(var_0.x, 4294967295u, 95034u, 4294967295u)), ~var_0.x, ~4294967295u, var_0.x), ~vec4<u32>(var_0.x, 8593u, 1u, var_0.x)), _wgslsmith_div_vec4_u32(vec4<u32>(~4294967295u, ~var_0.x, ~22193u, abs(76749u)), ~(vec4<u32>(28004u, 1u, 4294967295u, var_0.x) | vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.c.a, var_1.d.a)))))), -u_input.a.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(882f, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(168f - 116f)), var_1.c.a));
}

