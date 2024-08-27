struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17> = array<f32, 17>(-396f, 302f, 657f, -315f, -1000f, -790f, 185f, -566f, -507f, -1412f, -2336f, -898f, -977f, -446f, 1391f, -1000f, -669f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec2<u32>, arg_1: i32) -> Struct_1 {
    global0 = array<f32, 17>();
    let var_0 = !vec2<bool>(~(-4363i) <= u_input.b.x, true);
    var var_1 = !(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, true)));
    var var_2 = var_1.wwx;
    let var_3 = -firstLeadingBit(u_input.b.x);
    return Struct_1(arg_0.x);
}

fn func_1(arg_0: f32) -> u32 {
    global0 = array<f32, 17>();
    var var_0 = u_input.b.x;
    global0 = array<f32, 17>();
    let var_1 = Struct_1(_wgslsmith_mult_u32(u_input.a.x, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 4294967295u, 1u, 4294967295u), ~vec4<u32>(95929u, u_input.a.x, u_input.c, u_input.a.x))));
    var var_2 = func_2(min(firstTrailingBit(u_input.a.xz) << (select(vec2<u32>(var_1.a, var_1.a), countOneBits(vec2<u32>(4294967295u, u_input.c)), true) % vec2<u32>(32u)), u_input.a.zy), _wgslsmith_dot_vec3_i32(firstLeadingBit(-(~u_input.b)), u_input.b));
    return firstLeadingBit(102609u);
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: bool, arg_3: f32) -> u32 {
    let var_0 = select(vec3<bool>(true | arg_2, ~_wgslsmith_div_i32(-46727i, arg_1) <= 24602i, arg_2), !vec3<bool>(true, arg_2, -1290f >= _wgslsmith_div_f32(arg_3, global0[_wgslsmith_index_u32(u_input.c, 17u)])), vec3<bool>(!all(select(vec3<bool>(arg_2, arg_2, true), vec3<bool>(true, arg_2, true), true)), any(vec4<bool>(false, true, u_input.c >= u_input.c, all(vec3<bool>(true, arg_2, true)))), true));
    global0 = array<f32, 17>();
    global0 = array<f32, 17>();
    let var_1 = ~(~abs((arg_1 >> (u_input.c % 32u)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, 0u), vec4<u32>(10287u, 4294967295u, 33215u, 6290u)) % 32u)));
    global0 = array<f32, 17>();
    return ~4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(~countOneBits(u_input.a), ~(~(~u_input.a))), vec3<u32>(reverseBits(~func_1(global0[_wgslsmith_index_u32(15389u, 17u)])), _wgslsmith_sub_u32(countOneBits(func_3(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], 2147483647i, false, 674f)), _wgslsmith_clamp_u32(u_input.c >> (69670u % 32u), firstLeadingBit(49496u), u_input.c >> (u_input.a.x % 32u))), 4294967295u));
    var var_1 = ~vec2<u32>(u_input.c, abs(var_0.x));
    var_1 = ~(~(reverseBits(min(var_0.zz, u_input.a.xx)) >> (u_input.a.zy % vec2<u32>(32u))));
    var_1 = ~min(_wgslsmith_mod_vec2_u32(vec2<u32>(~64510u, abs(u_input.c)), firstLeadingBit(vec2<u32>(var_0.x, 14075u))), firstLeadingBit(~vec2<u32>(var_1.x, var_1.x)));
    var var_2 = firstTrailingBit(-2147483647i) & 1i;
    var var_3 = !vec4<bool>(any(vec2<bool>(true, true)) || true, any(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), false)), !(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(14526u, 17u)])) >= 1f), false);
    var_3 = select(vec4<bool>(false, true, !(true || var_3.x), all(!var_3.yxz)), vec4<bool>(var_3.x, !all(!vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x)), var_3.x, false), vec4<bool>(!(any(var_3.yyy) || var_3.x), true, true, all(select(vec4<bool>(false, var_3.x, var_3.x, var_3.x), !vec4<bool>(false, var_3.x, true, true), vec4<bool>(var_3.x, true, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1021f, _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(var_0.x, 17u)])), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 17u)] * -505f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(28339u, 17u)], global0[_wgslsmith_index_u32(90277u, 17u)], -171f), vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(var_1.x, 17u)], global0[_wgslsmith_index_u32(u_input.c, 17u)]), var_3.x)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(29631u, 17u)], _wgslsmith_f_op_f32(f32(-1f) * -752f), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, 0u), 17u)]) + vec3<f32>(global0[_wgslsmith_index_u32(reverseBits(55929u), 17u)], _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(var_0.x, 17u)], -207f)), global0[_wgslsmith_index_u32(1u ^ var_0.x, 17u)])) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1000f + -641f), 143f, _wgslsmith_f_op_f32(f32(-1f) * -1017f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(952f, global0[_wgslsmith_index_u32(var_0.x, 17u)], -464f))))));
}

