struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec4<f32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 3> = array<vec3<f32>, 3>(vec3<f32>(-1000f, 1000f, -621f), vec3<f32>(1067f, -109f, -619f), vec3<f32>(-981f, -2191f, 284f));

var<private> global1: array<f32, 32> = array<f32, 32>(482f, 280f, 493f, 1000f, -1017f, 2184f, 372f, -180f, -761f, 651f, -263f, 613f, -1798f, -625f, -281f, 828f, 2099f, 1642f, -1000f, -1190f, 832f, 1000f, 808f, -1000f, -1564f, -908f, 630f, 922f, -116f, 1029f, -173f, -544f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: u32) -> u32 {
    var var_0 = Struct_3(global0[_wgslsmith_index_u32(4294967295u, 3u)], arg_0.b);
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-770f, _wgslsmith_f_op_f32(var_0.a.x - 106f), _wgslsmith_f_op_f32(-arg_1.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-468f, global1[_wgslsmith_index_u32(u_input.a.x, 32u)], -717f), vec3<f32>(global1[_wgslsmith_index_u32(arg_2, 32u)], global1[_wgslsmith_index_u32(u_input.a.x, 32u)], -1000f)))), vec4<i32>(-7525i, var_0.b.x, 2147483647i, ~var_0.b.x));
    var var_1 = -774f;
    let var_2 = ~(~countOneBits(~vec4<u32>(0u, u_input.a.x, u_input.a.x, 4294967295u) ^ ~vec4<u32>(0u, u_input.a.x, 54358u, 16268u)));
    let var_3 = Struct_5(Struct_2(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(true, true)), true, false, true), !select(false, false, true)), Struct_1(min(~var_2.x, var_2.x)), vec3<u32>(_wgslsmith_div_u32(abs(u_input.a.x), countOneBits(var_2.x)), 58443u, abs(max(145983u, 16257u)))));
    return arg_2;
}

fn func_2(arg_0: i32, arg_1: Struct_3) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(firstLeadingBit(select(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x)), vec4<u32>(0u, u_input.a.x, 1u, 34998u) | vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x)), _wgslsmith_mult_u32(~4294967295u, firstTrailingBit(u_input.a.x))), 4294967295u, !all(vec3<bool>(true, true, true)))), 32u)];
    global1 = array<f32, 32>();
    let var_1 = vec2<f32>(global1[_wgslsmith_index_u32(~u_input.a.x, 32u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x - _wgslsmith_f_op_f32(715f - -1000f))) * _wgslsmith_f_op_f32(-1f)));
    let var_2 = Struct_2(vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - global1[_wgslsmith_index_u32(u_input.a.x, 32u)])) >= arg_1.a.x, select(!all(vec4<bool>(true, false, true, true)), any(vec4<bool>(true, true, false, false)) || all(vec2<bool>(true, false)), any(vec4<bool>(true, true, true, true))), u_input.a.x != 1u, all(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)))), Struct_1(_wgslsmith_sub_u32(45885u, firstTrailingBit(0u) ^ u_input.a.x)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(firstTrailingBit(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<u32>(1u, 23865u, 0u) | (vec3<u32>(4294967295u, 108252u, u_input.a.x) >> (vec3<u32>(52846u, 4993u, 1u) % vec3<u32>(32u)))), vec3<u32>(~func_3(Struct_3(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], arg_1.b), arg_1.a.zx, u_input.a.x), 4294967295u, _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a.x, 4294967295u), 4294967295u << (u_input.a.x % 32u))), reverseBits(reverseBits(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x) >> (vec3<u32>(1u, 41099u, 19391u) % vec3<u32>(32u))))));
    global1 = array<f32, 32>();
    return 46985u;
}

fn func_1() -> vec2<u32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(4294967295u, 3u)] + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(1531f)), 2393f, _wgslsmith_f_op_f32(f32(-1f) * -404f)) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(global0[_wgslsmith_index_u32(u_input.a.x, 3u)])))))), vec4<i32>(-1i, ~(-14060i) >> (~func_2(-29273i, Struct_3(vec3<f32>(2071f, global1[_wgslsmith_index_u32(53922u, 32u)], -1000f), vec4<i32>(2147483647i, 0i, 0i, -8070i))) % 32u), 36913i, -9363i));
    global1 = array<f32, 32>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(375f + var_0.a.x)))), _wgslsmith_f_op_f32(var_0.a.x + 242f))));
    let var_2 = firstLeadingBit(~(~vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, 4294967295u), abs(u_input.a.x))));
    let var_3 = min(vec2<u32>(77681u, 1u), vec2<u32>(u_input.a.x & 0u, ~(~(~var_2.x))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = array<vec3<f32>, 3>();
    let var_1 = ~_wgslsmith_mult_vec4_u32(firstTrailingBit(~vec4<u32>(0u, 18811u, u_input.a.x, 9203u) ^ max(vec4<u32>(24208u, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, var_0.x))), ~vec4<u32>(0u, select(14580u, var_0.x, false), _wgslsmith_sub_u32(var_0.x, u_input.a.x), 1u << (u_input.a.x % 32u)));
    global0 = array<vec3<f32>, 3>();
    let var_2 = -1353f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-793f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1471f * -616f) - global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.x, 4294967295u), 32u)]))), i32(-1i) * -_wgslsmith_mod_i32(firstTrailingBit(-2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -18720i), vec2<i32>(2147483647i, -2147483647i))), ~u_input.a.x, _wgslsmith_dot_vec3_i32(min(vec3<i32>(1i, 1i, 1i), -select(vec3<i32>(-26801i, 16637i, 0i), vec3<i32>(70590i, -44185i, 2147483647i), vec3<bool>(false, false, false))), ~(select(vec3<i32>(2147483647i, 19848i, 1i), vec3<i32>(0i, 1i, 1i), vec3<bool>(true, true, false)) & vec3<i32>(-5973i, 2147483647i, 45353i))));
}

