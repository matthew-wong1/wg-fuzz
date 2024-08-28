struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

var<private> global1: vec4<bool>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec3<f32>) -> vec4<bool> {
    var var_0 = 8491u;
    var_0 = u_input.a.x;
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.wz, u_input.a.xx), 20u)];
    var var_2 = global1.wx;
    var var_3 = Struct_1(select(u_input.b, select(-u_input.b, -reverseBits(var_1.a), global1.x), true), u_input.b.x);
    return vec4<bool>(global1.x, arg_1 < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-255f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1 * 427f))))), true, true);
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = ~u_input.b.xww;
    global1 = !(!select(!select(vec4<bool>(true, false, true, global1.x), vec4<bool>(global1.x, true, true, arg_0), vec4<bool>(arg_0, global1.x, false, true)), !(!vec4<bool>(true, arg_0, global1.x, arg_0)), all(!global1.yw)));
    let var_1 = all(vec4<bool>(global1.x, true, global1.x, all(!func_2(23131u, 369f, vec3<f32>(640f, -1407f, 1000f)))));
    let var_2 = _wgslsmith_f_op_f32(trunc(1f));
    let var_3 = u_input.a.x;
    return global0[_wgslsmith_index_u32(abs(~(~0u)), 20u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x == 2147483647i;
    global1 = !(!vec4<bool>(true, true, var_0, var_0));
    var var_1 = _wgslsmith_dot_vec3_u32((u_input.a.xxx & ~u_input.a.yzy) & _wgslsmith_add_vec3_u32(firstLeadingBit(~u_input.a.xxz), u_input.a.yww), u_input.a.zzx);
    var_1 = (0u | ((70838u << (u_input.c % 32u)) << (firstTrailingBit(_wgslsmith_add_u32(0u, u_input.c)) % 32u))) & u_input.a.x;
    let var_2 = ~u_input.b.x;
    var var_3 = func_1(false & global1.x);
    let var_4 = global0[_wgslsmith_index_u32(~reverseBits(1u), 20u)];
    let x = u_input.a;
    s_output = StorageBuffer(22988u, _wgslsmith_add_i32(~(-abs(var_4.a.x)), 2147483647i));
}

