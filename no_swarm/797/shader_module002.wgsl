struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 16> = array<vec2<f32>, 16>(vec2<f32>(1979f, -413f), vec2<f32>(644f, 1154f), vec2<f32>(-211f, 446f), vec2<f32>(-496f, -1874f), vec2<f32>(-940f, -336f), vec2<f32>(-1046f, 1155f), vec2<f32>(-196f, 482f), vec2<f32>(380f, 1633f), vec2<f32>(-384f, -592f), vec2<f32>(-382f, 1169f), vec2<f32>(-1943f, -1653f), vec2<f32>(644f, 922f), vec2<f32>(1157f, 596f), vec2<f32>(1187f, 813f), vec2<f32>(-493f, -786f), vec2<f32>(-2252f, 521f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = abs(select(min(abs(4294967295u), ~1u), ~36815u, !any(vec4<bool>(true, true, true, true))) >> (abs(4346u) % 32u));
    global0 = array<vec2<f32>, 16>();
    let var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(firstLeadingBit(1u), min(min(1u, ~108898u), 1u)), _wgslsmith_mod_vec2_u32(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(64812u, 134510u), vec2<u32>(14152u, 22734u), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 46169u), vec2<u32>(29680u, 4294967295u), vec2<u32>(4294967295u, 54153u))), vec2<u32>(~(~4294967295u), reverseBits(reverseBits(47873u)))));
    let var_2 = Struct_1(_wgslsmith_div_u32(~30895u, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(48564u, var_1.x), _wgslsmith_add_u32(0u, 1u), 86633u), ~vec3<u32>(var_1.x, var_1.x, 4294967295u) & min(vec3<u32>(4294967295u, var_1.x, var_1.x), vec3<u32>(35711u, 73203u, 1u)))), 12360i);
    var_0 = reverseBits(3825u);
    return arg_0;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: vec4<u32>) -> f32 {
    let var_0 = Struct_3(vec3<u32>(arg_1.x | ~59440u, abs(_wgslsmith_mod_u32(arg_2.x, 14737u) ^ _wgslsmith_add_u32(0u, arg_2.x)), 92217u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(select(-1000f, 559f, true)))), -1683f, !all(select(vec2<bool>(false, true), vec2<bool>(false, true), false)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-359f, -186f, -1731f, 1683f))) * vec4<f32>(-1483f, 103f, 1478f, 159f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1038f, -1000f, -1179f, -1000f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1885f, 2536f, 907f, -1771f))) - vec4<f32>(1f, 1f, 1f, 1f))));
    var var_1 = Struct_1(min(((arg_0.x >> (0u % 32u)) | 4294967295u) | abs(1u), ~(arg_1.x >> (arg_2.x % 32u)) >> ((1u | (arg_2.x >> (4294967295u % 32u))) % 32u)), 31200i << (~(~(1u << (arg_1.x % 32u))) % 32u));
    var_1 = Struct_1(~(~_wgslsmith_clamp_u32(reverseBits(arg_0.x), arg_0.x, abs(arg_0.x))), ~(-17846i));
    var var_2 = Struct_2(-firstLeadingBit(~select(vec4<i32>(u_input.a.x, 44568i, var_1.b, var_1.b), u_input.a, false)), vec4<u32>(35486u, _wgslsmith_div_u32(arg_1.x, _wgslsmith_sub_u32(9177u, 76141u << (arg_1.x % 32u))), 4294967295u, var_0.a.x));
    global0 = array<vec2<f32>, 16>();
    return 648f;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: u32) -> i32 {
    global0 = array<vec2<f32>, 16>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-970f, -383f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f)))) - global0[_wgslsmith_index_u32(select(1u, ~(~arg_1), !any(vec3<bool>(true, arg_0, true))), 16u)]) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(1u >> (1u % 32u), 16u)])) - vec2<f32>(_wgslsmith_f_op_f32(-921f + 469f), -437f)) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(arg_1, 16u)]) * _wgslsmith_div_vec2_f32(vec2<f32>(1095f, -1064f), global0[_wgslsmith_index_u32(87496u, 16u)]))))));
    global0 = array<vec2<f32>, 16>();
    global0 = array<vec2<f32>, 16>();
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-195f, _wgslsmith_f_op_f32(func_2(vec2<u32>(arg_1, ~26546u), (vec2<u32>(72188u, 1u) ^ vec2<u32>(0u, arg_2)) >> (vec2<u32>(arg_1, arg_1) % vec2<u32>(32u)), vec4<u32>(~0u, reverseBits(4294967295u), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(377u, 49157u, 0u), vec3<u32>(0u, arg_1, 1u))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), 688f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-493f, _wgslsmith_div_f32(1000f, 240f), _wgslsmith_f_op_f32(-466f + var_0.x)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) + vec3<f32>(-534f, -323f, -1173f)) - vec3<f32>(-1000f, -913f, var_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -303f, var_0.x))))));
    return countOneBits(~44146i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, func_1(all(vec4<bool>(false, true, true, true)), ~reverseBits(4294967295u), ~1u) <= u_input.a.x);
    let var_1 = u_input.a;
    let var_2 = 19257i;
    var var_3 = Struct_1(4294967295u, 1i);
    let var_4 = 0i;
    var var_5 = Struct_3((vec3<u32>(var_3.a & var_3.a, ~var_3.a, 1u) >> (~vec3<u32>(4294967295u, 15722u, 1u) % vec3<u32>(32u))) >> (~vec3<u32>(var_3.a << (50782u % 32u), var_3.a, reverseBits(var_3.a)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -1176f, false))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1982f, 2059f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(635f - _wgslsmith_f_op_f32(f32(-1f) * -866f))))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(923f)) + _wgslsmith_f_op_f32(abs(2005f))), -1014f, 1f, _wgslsmith_f_op_f32(func_3(-1228f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-181f, -612f, 971f, 723f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(122f, -488f, -476f, 301f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(716f, -1354f, -490f, 1020f), vec4<f32>(-613f, -708f, 478f, 1277f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b, _wgslsmith_f_op_f32(floor(var_5.b)), _wgslsmith_add_u32(~1u, select(~var_5.a.x, _wgslsmith_clamp_u32(abs(var_5.a.x), ~var_3.a, 14679u), var_0.x)));
}

