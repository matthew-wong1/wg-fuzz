struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21>;

var<private> global1: array<bool, 6>;

var<private> global2: Struct_4;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    let var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d << (~0u % 32u), abs(select(u_input.e, u_input.d, true)), global2.a, _wgslsmith_div_u32(4294967295u, countOneBits(abs(u_input.d)))), ~max(~vec4<u32>(global2.b, global2.a, 10171u, 4294967295u), ~(~vec4<u32>(58739u, 62228u, 46541u, 15348u))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global2.c.a.x - 161f), _wgslsmith_div_f32(global2.c.a.x, -737f), _wgslsmith_f_op_f32(global2.c.a.x - global2.c.a.x), global2.c.a.x) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(global2.c.a.x, global2.c.a.x, 1000f, -924f), vec4<f32>(global2.c.a.x, global2.c.a.x, global2.c.a.x, -165f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(995f, global2.c.a.x, global2.c.a.x, -276f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.a.x, -796f, _wgslsmith_f_op_f32(select(-261f, global2.c.a.x, true)), global2.c.a.x) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-895f, 1471f, global2.c.a.x, 2446f)))))))), !all(select(select(arg_0, arg_0, arg_0), select(vec4<bool>(global1[_wgslsmith_index_u32(var_0, 6u)], false, arg_0.x, arg_0.x), vec4<bool>(false, false, false, arg_0.x), arg_0), !vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 6u)], false, true))), Struct_1(global2.c.a));
    var var_2 = global2.c;
    var_1 = Struct_2(vec4<f32>(1688f, var_1.a.x, -2518f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_2.a.x))))), !arg_0.x, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.a.x, var_1.c.a.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-942f, 345f)))));
    let var_3 = _wgslsmith_f_op_f32(global2.c.a.x - 1173f);
    return abs(~0u);
}

fn func_2(arg_0: u32) -> Struct_1 {
    global2 = Struct_4(~(~(16865u >> (_wgslsmith_mod_u32(global2.b, 16596u) % 32u))), ~min(u_input.e & arg_0, 6944u), global2.c, abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(global2.d, arg_0, 4294967295u, arg_0), ~vec4<u32>(global2.a, u_input.d, arg_0, u_input.d))));
    var var_0 = ~(~1u);
    var_0 = func_3(vec4<bool>(_wgslsmith_f_op_f32(select(946f, global2.c.a.x, true)) > _wgslsmith_f_op_f32(global2.c.a.x - 447f), global1[_wgslsmith_index_u32(~3862u, 6u)], global2.d != 88677u, all(vec4<bool>(global1[_wgslsmith_index_u32(0u, 6u)], false, true, false)) && global1[_wgslsmith_index_u32(4294967295u << (u_input.d % 32u), 6u)])) >> (firstTrailingBit(global2.b) % 32u);
    var var_1 = Struct_4(0u, u_input.d, Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.c.a + global2.c.a) * _wgslsmith_f_op_vec2_f32(-global2.c.a))))), global2.b);
    var var_2 = min(abs(~vec3<u32>(~arg_0, 1u, 40327u)), vec3<u32>(u_input.e, ~global2.b, ~71881u));
    return global2.c;
}

fn func_1(arg_0: vec4<i32>) -> vec2<bool> {
    let var_0 = global2.c;
    var var_1 = Struct_3(!select(select(vec3<bool>(global1[_wgslsmith_index_u32(global2.b, 6u)], global1[_wgslsmith_index_u32(0u, 6u)], false), vec3<bool>(global1[_wgslsmith_index_u32(global2.d, 6u)], false, global1[_wgslsmith_index_u32(1u, 6u)]), !global1[_wgslsmith_index_u32(global2.d, 6u)]), !vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 6u)], true), select(!vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 6u)], false, true), vec3<bool>(true, true, true), false)), func_2(u_input.e));
    let var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(761f, var_0.a.x))), var_1.b.a.x, _wgslsmith_f_op_f32(-369f * global2.c.a.x)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -754f))), 3100f, 1375f), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global2.c.a.x, -1182f, -453f), vec3<f32>(var_0.a.x, var_0.a.x, -612f)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.b.a.x, -285f, var_1.b.a.x), vec3<f32>(468f, 190f, var_0.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(391f, -1000f, 1000f))) * vec3<f32>(var_1.b.a.x, 1057f, -1227f)))))));
    let var_3 = Struct_4(29075u, ~global2.b, func_2(u_input.d), ~(~0u));
    let var_4 = Struct_3(var_1.a, Struct_1(_wgslsmith_f_op_vec2_f32(var_2.zz + vec2<f32>(1f, var_2.x))));
    return !(!var_4.a.xx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(!vec2<bool>(false, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.d, 18268u, global2.a), vec4<u32>(96639u, u_input.e, u_input.e, 50646u)), 6u)]), !select(func_1(u_input.c), vec2<bool>(true, true), vec2<bool>(global1[_wgslsmith_index_u32(global2.d, 6u)], false)), !(!all(vec3<bool>(global1[_wgslsmith_index_u32(0u, 6u)], true, global1[_wgslsmith_index_u32(0u, 6u)]))));
    let var_1 = Struct_3(vec3<bool>(var_0.x, func_1(select(u_input.c, vec4<i32>(u_input.a.x, 19441i, 0i, global0[_wgslsmith_index_u32(global2.b, 21u)]), vec4<bool>(var_0.x, var_0.x, global1[_wgslsmith_index_u32(6201u, 6u)], var_0.x))).x & global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(global2.b, 85552u, u_input.d), u_input.d ^ u_input.e), 6u)], any(vec4<bool>(true, !global1[_wgslsmith_index_u32(u_input.d, 6u)], !var_0.x, false))), func_2(43331u));
    var_0 = vec2<bool>(false, var_1.b.a.x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.b.a.x))));
    var var_2 = firstLeadingBit(u_input.a.xx);
    let var_3 = ~_wgslsmith_mod_vec4_u32(vec4<u32>((u_input.e | 10714u) << (abs(u_input.e) % 32u), 0u, u_input.d, reverseBits(1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(global2.a, ~0u, u_input.d, ~u_input.e), ~vec4<u32>(global2.a, 4294967295u, 22784u, 4294967295u)));
    let var_4 = vec3<u32>(global2.b, ~var_3.x, 11867u);
    let var_5 = any(select(vec4<bool>((global2.b >> (1u % 32u)) > ~u_input.d, !(global1[_wgslsmith_index_u32(0u, 6u)] | true), _wgslsmith_clamp_i32(2147483647i, u_input.b, 1i) <= abs(80759i), all(select(vec4<bool>(global1[_wgslsmith_index_u32(global2.b, 6u)], global1[_wgslsmith_index_u32(global2.b, 6u)], var_0.x, global1[_wgslsmith_index_u32(global2.a, 6u)]), vec4<bool>(var_1.a.x, true, true, var_0.x), false))), !(!(!vec4<bool>(var_0.x, global1[_wgslsmith_index_u32(u_input.e, 6u)], var_0.x, global1[_wgslsmith_index_u32(0u, 6u)]))), var_1.a.x | true));
    let var_6 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~global2.a, 4294967295u), 21u)];
    let x = u_input.a;
    s_output = StorageBuffer(global2.c.a.x);
}

