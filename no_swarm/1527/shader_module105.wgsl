struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 3>;

var<private> global1: array<i32, 12>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: vec3<i32>) -> bool {
    var var_0 = _wgslsmith_div_vec2_i32(~(~(vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(84186u, 12u)]) | vec2<i32>(arg_2.x, 2147483647i))), arg_2.zz);
    global1 = array<i32, 12>();
    let var_1 = select(~u_input.a.zz, vec2<u32>(firstTrailingBit(_wgslsmith_sub_u32(78058u, 9054u)), reverseBits(_wgslsmith_sub_u32(_wgslsmith_div_u32(arg_1.x, 443u), ~u_input.a.x))), false);
    global0 = array<vec4<u32>, 3>();
    let var_2 = Struct_1(false);
    return var_2.a;
}

fn func_2() -> u32 {
    global1 = array<i32, 12>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(976f * _wgslsmith_f_op_f32(f32(-1f) * -268f)), _wgslsmith_f_op_f32(round(1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1179f), -1065f), 900f);
    let var_1 = Struct_1((u_input.a.x | _wgslsmith_dot_vec2_u32(u_input.a.xz, u_input.a.xy)) <= ~(~_wgslsmith_add_u32(u_input.a.x, u_input.a.x)));
    var var_2 = !vec3<bool>(func_3(-1i, ~(~global0[_wgslsmith_index_u32(10818u, 3u)]), ~(-u_input.d.xwx)), all(select(select(vec2<bool>(true, var_1.a), vec2<bool>(true, true), var_1.a), vec2<bool>(true, true), var_1.a)), all(!vec4<bool>(true, var_1.a, true, false)));
    let var_3 = !select(vec4<bool>(!(var_2.x | false), !all(vec4<bool>(var_1.a, false, var_1.a, var_1.a)), true, false), vec4<bool>(any(select(vec3<bool>(var_1.a, true, var_2.x), vec3<bool>(var_2.x, var_1.a, true), true)), var_2.x, true, !any(vec4<bool>(var_1.a, var_2.x, var_2.x, var_2.x))), !(any(vec3<bool>(false, var_2.x, false)) | true));
    return _wgslsmith_mult_u32(10864u, _wgslsmith_clamp_u32(u_input.a.x, 46200u, 0u)) ^ (22900u | _wgslsmith_add_u32(u_input.a.x, u_input.a.x));
}

fn func_1() -> u32 {
    let var_0 = -global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~80210u), ~func_2(), 22066u), 12u)];
    global0 = array<vec4<u32>, 3>();
    global0 = array<vec4<u32>, 3>();
    let var_1 = Struct_1(!((~var_0 >= 1i) && true));
    let var_2 = 0u;
    return min(u_input.a.x | 1u, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 3>();
    global0 = array<vec4<u32>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(func_1(), _wgslsmith_div_u32(u_input.a.x, ~((20172u >> (u_input.a.x % 32u)) | 94517u)));
}

