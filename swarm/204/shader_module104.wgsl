struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: vec3<bool>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17> = array<u32, 17>(4294967295u, 4294967295u, 30258u, 54035u, 1u, 0u, 0u, 4294967295u, 30713u, 0u, 95951u, 5745u, 0u, 4294967295u, 1u, 39305u, 1176u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32) -> vec4<u32> {
    global0 = array<u32, 17>();
    global0 = array<u32, 17>();
    global0 = array<u32, 17>();
    global0 = array<u32, 17>();
    return _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b, _wgslsmith_add_u32(1u, global0[_wgslsmith_index_u32(u_input.d, 17u)]), ~global0[_wgslsmith_index_u32(u_input.d, 17u)], countOneBits(4294967295u)), vec4<u32>(u_input.c.x, ~(~u_input.d), ~(u_input.b >> (global0[_wgslsmith_index_u32(u_input.b, 17u)] % 32u)), 17047u)), countOneBits(~firstLeadingBit(vec4<u32>(0u, u_input.c.x, u_input.c.x, 24239u))));
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    global0 = array<u32, 17>();
    global0 = array<u32, 17>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + -1000f) + -108f) + 154f))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(949f + _wgslsmith_div_f32(-1000f, arg_0.x)), select(select(vec4<u32>(2073u, u_input.b, 63680u, u_input.b), ~vec4<u32>(1u, global0[_wgslsmith_index_u32(0u, 17u)], global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(u_input.b, 17u)]), all(vec3<bool>(true, false, true))), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.b), func_3(arg_0.x)), !all(vec4<bool>(true, true, true, true))) | vec4<u32>(~global0[_wgslsmith_index_u32(52308u, 17u)], _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(firstTrailingBit(86264u), 17u)], u_input.b), 17000u, _wgslsmith_dot_vec4_u32(vec4<u32>(12088u, u_input.c.x, 66415u, 4529u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 17u)], 17u)], 0u, u_input.c.x, global0[_wgslsmith_index_u32(22110u, 17u)])) & global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(u_input.c.x, 17u)], 17u)]), u_input.b, vec3<bool>(false, (_wgslsmith_f_op_f32(arg_0.x - -515f) > -1845f) & false, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))), arg_0.x);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1732f) - var_1.e)))), abs(~(~vec4<u32>(global0[_wgslsmith_index_u32(1u, 17u)], 0u, 4294967295u, 26786u))), abs(u_input.b), var_1.d, -234f);
    return 1000f;
}

fn func_1(arg_0: Struct_1) -> bool {
    var var_0 = 4294967295u;
    var_0 = firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(max(u_input.b, 4294967295u), firstTrailingBit(0u), u_input.c.x | 45282u), ~vec3<u32>(30819u, arg_0.b.x, 1u)), ~(u_input.b | ~u_input.b)));
    return all(!vec2<bool>(all(vec4<bool>(arg_0.d.x, false, arg_0.d.x, false)), _wgslsmith_f_op_f32(-arg_0.e) == _wgslsmith_f_op_f32(func_2(vec3<f32>(-1000f, 830f, arg_0.e)))));
}

fn func_4(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_div_f32(1186f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(437f - _wgslsmith_f_op_f32(f32(-1f) * -408f)) + _wgslsmith_f_op_f32(max(1439f, 1000f)))), min(~vec4<u32>(_wgslsmith_div_u32(0u, global0[_wgslsmith_index_u32(4294967295u, 17u)]), 4294967295u, 1u, abs(global0[_wgslsmith_index_u32(1u, 17u)])), _wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.d, 0u, global0[_wgslsmith_index_u32(30576u, 17u)], 44513u), max(vec4<u32>(110554u, 22691u, u_input.c.x, 59311u), vec4<u32>(1u, u_input.c.x, 60867u, u_input.c.x)), select(vec4<bool>(false, true, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, true))), vec4<u32>(u_input.b >> (41481u % 32u), min(51252u, 4294967295u), 0u, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(0u, 17u)], 1u, 0u), 17u)]))), 0u, arg_0, 911f);
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.e))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_0.a, var_0.a, arg_0.x))))), var_0.e), ~select(vec4<u32>(~50546u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(44962u, 17u)], 0u, u_input.d, u_input.d), vec4<u32>(0u, 1u, 69386u, 7141u)), 0u, ~var_0.b.x), func_3(_wgslsmith_f_op_f32(var_0.e * var_0.a)), var_0.d.x), ~0u, !arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.e)) - -1078f));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(292f, -394f, !(false & arg_0.x))))), max(firstLeadingBit(vec4<u32>(u_input.c.x, 37721u, global0[_wgslsmith_index_u32(4294967295u, 17u)], u_input.b) >> (vec4<u32>(global0[_wgslsmith_index_u32(45519u, 17u)], 39429u, 38043u, 4294967295u) % vec4<u32>(32u))), vec4<u32>(max(_wgslsmith_dot_vec4_u32(var_1.b, var_1.b), global0[_wgslsmith_index_u32(u_input.c.x, 17u)] << (var_1.c % 32u)), ~global0[_wgslsmith_index_u32(~27446u, 17u)], countOneBits(46130u) | abs(u_input.c.x), var_1.b.x)), u_input.b | ~(~max(12619u, 13864u)), vec3<bool>(var_1.d.x, select(false, !(!arg_0.x), true), true), -385f);
    global0 = array<u32, 17>();
    let var_3 = countOneBits(~4294967295u);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 17>();
    let var_0 = func_4(select(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.b, 17u)] >= 4294967295u), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true)), !(!func_1(Struct_1(-1879f, vec4<u32>(29485u, 1u, global0[_wgslsmith_index_u32(89347u, 17u)], global0[_wgslsmith_index_u32(u_input.d, 17u)]), 4294967295u, vec3<bool>(true, true, true), -200f)))));
    let var_1 = var_0.d.x;
    var var_2 = func_4(var_0.d);
    var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_4(var_0.d).a)), var_0.b, ~func_4(select(vec3<bool>(false, var_1, var_2.d.x), vec3<bool>(var_1, false, true), !var_2.d)).b.x, var_0.d, 1703f);
    let var_3 = func_4(vec3<bool>(!func_4(!vec3<bool>(var_1, true, false)).d.x, !all(var_0.d), ((13105u >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 17u)], 17u)] % 32u)) == _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 1u, 60645u), vec3<u32>(108029u, 4294967295u, var_2.c))) || var_0.d.x));
    var_2 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, vec2<f32>(762f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(795f + _wgslsmith_f_op_f32(var_0.a - var_3.a)))), ~var_2.b.xxw);
}

