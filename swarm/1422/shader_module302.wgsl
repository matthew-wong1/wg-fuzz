struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec3<bool>,
    d: u32,
    e: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<f32, 30> = array<f32, 30>(-185f, -1073f, 338f, 361f, 1808f, -1088f, 2128f, -492f, 761f, 1531f, 1000f, 1180f, 2680f, -1552f, -1000f, 1491f, -413f, -351f, -1000f, 168f, -609f, -300f, -741f, -904f, -911f, 176f, -774f, -1260f, 1377f, 278f);

var<private> global2: Struct_1 = Struct_1(vec4<u32>(25229u, 4294967295u, 17508u, 4462u), 61239u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<u32>) -> u32 {
    let var_0 = arg_0;
    let var_1 = arg_0.c.a;
    let var_2 = select(var_1.a.x, ~(~(~reverseBits(48212u))), false);
    var var_3 = Struct_4(-274i, var_0.b, Struct_2(Struct_1(~global2.a, 1u)), var_0.c);
    let var_4 = Struct_1(~arg_1, u_input.d);
    return ~abs(firstLeadingBit(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(4294967295u, var_4.a.x, global2.a.x)), firstLeadingBit(var_0.c.a.a.zyy))));
}

fn func_2(arg_0: vec2<i32>) -> vec2<f32> {
    global2 = Struct_1(~vec4<u32>(~1u, reverseBits(firstTrailingBit(2252u)), global2.a.x, func_3(Struct_4(arg_0.x, vec2<f32>(global1[_wgslsmith_index_u32(75589u, 30u)], global1[_wgslsmith_index_u32(u_input.e, 30u)]), Struct_2(Struct_1(vec4<u32>(32599u, u_input.e, 1u, 0u), u_input.d)), Struct_2(Struct_1(global2.a, 4294967295u))), _wgslsmith_sub_vec4_u32(vec4<u32>(global2.a.x, 4294967295u, u_input.d, global2.b), vec4<u32>(0u, u_input.e, global2.a.x, 51098u)))), abs((global2.a.x | 67522u) ^ u_input.d));
    let var_0 = Struct_1(global2.a, _wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, 99594u), vec2<u32>(countOneBits(0u), _wgslsmith_add_u32(u_input.e, 4294967295u)), all(vec2<bool>(true, true)) & true), vec2<u32>(~global2.b, 2859u) >> (reverseBits(global2.a.yw) % vec2<u32>(32u))));
    var var_1 = true;
    let var_2 = -_wgslsmith_dot_vec4_i32(~max(u_input.c, -u_input.c), -(~vec4<i32>(1i, -12502i, u_input.a, arg_0.x)));
    var_1 = any(select(select(vec3<bool>(all(vec2<bool>(false, true)), global1[_wgslsmith_index_u32(global2.a.x, 30u)] < global1[_wgslsmith_index_u32(4294967295u, 30u)], true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, select(true, true, false) && true, any(vec3<bool>(false, false, true)))));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global2.a.x, 30u)] + global1[_wgslsmith_index_u32(9261u, 30u)]))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(53718u, 30u)])))), global1[_wgslsmith_index_u32(countOneBits(firstLeadingBit(max(_wgslsmith_mod_u32(2175u, 65437u), global2.b))), 30u)]);
}

fn func_1(arg_0: f32) -> vec3<bool> {
    global1 = array<f32, 30>();
    global0 = global2.b;
    let var_0 = Struct_2(Struct_1(global2.a, ~4294967295u << (select(29561u, countOneBits(global2.b), select(true, false, false)) % 32u)));
    let var_1 = Struct_4(select(u_input.a, 2147483647i, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global1[_wgslsmith_index_u32(23526u, 30u)]) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(var_0.a.a.x, 30u)], global1[_wgslsmith_index_u32(var_0.a.a.x, 30u)]))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(global2.a.x, 30u)], global1[_wgslsmith_index_u32(var_0.a.b, 30u)]) * _wgslsmith_f_op_vec2_f32(func_2(u_input.b)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(0u, 30u)], 1000f)), vec2<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0)))), Struct_2(var_0.a), Struct_2(Struct_1(vec4<u32>(_wgslsmith_dot_vec3_u32(var_0.a.a.xww, global2.a.wxw), ~u_input.e, ~1u, global2.b), ~(global2.b & 4294967295u))));
    let var_2 = vec3<f32>(221f, 1103f, var_1.b.x);
    return !(!(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), vec3<bool>(false, true, false), any(vec4<bool>(false, false, false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(min(~global2.a.x, u_input.e), 30u)])));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~28002i, u_input.a, -1i, u_input.c.x), abs(select(~global2.a.wyx & vec3<u32>(0u, global2.b, u_input.e), global2.a.wzy, select(vec3<bool>(false, true, true), func_1(-1490f), true))), vec3<f32>(-1655f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0))), _wgslsmith_f_op_f32(511f * 404f)), u_input.b.x >> (~abs(0u) % 32u));
}

