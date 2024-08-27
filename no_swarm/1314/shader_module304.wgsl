struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: vec2<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool) -> vec2<u32> {
    global0 = array<f32, 26>();
    let var_0 = u_input.a;
    let var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(41923u, 26u)], global0[_wgslsmith_index_u32(23916u, 26u)])))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(947f, -234f, global0[_wgslsmith_index_u32(0u, 26u)]))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0[_wgslsmith_index_u32(48259u, 26u)], 1181f, global0[_wgslsmith_index_u32(4294967295u, 26u)]), vec3<f32>(1000f, 478f, global0[_wgslsmith_index_u32(4294967295u, 26u)])))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(arg_0.x, 26u)], global0[_wgslsmith_index_u32(67396u, 26u)], global0[_wgslsmith_index_u32(44247u, 26u)]), vec3<f32>(-1928f, global0[_wgslsmith_index_u32(arg_0.x, 26u)], -1409f)) + vec3<f32>(global0[_wgslsmith_index_u32(arg_0.x, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)], -1087f))))), _wgslsmith_add_i32(~_wgslsmith_dot_vec4_i32(-u_input.a, vec4<i32>(var_0.x, -4653i, 1i, -41660i)), -(~u_input.a.x)));
    global0 = array<f32, 26>();
    let var_2 = vec2<bool>(true, true);
    return _wgslsmith_add_vec2_u32(vec2<u32>(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(52492u, 4294967295u, arg_0.x, 46071u), vec4<u32>(arg_0.x, 18920u, 50947u, 3235u))), abs(select(_wgslsmith_dot_vec2_u32(vec2<u32>(103220u, arg_0.x), arg_0), arg_0.x, arg_1))), arg_0);
}

fn func_2(arg_0: Struct_3) -> vec3<u32> {
    global0 = array<f32, 26>();
    let var_0 = !(!any(select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true))));
    var var_1 = Struct_1(arg_0.a.a.a);
    var_1 = arg_0.a.a;
    let var_2 = abs(~(~firstLeadingBit(func_3(vec2<u32>(4294967295u, 1u), true))));
    return ~(~(~vec3<u32>(~var_2.x, var_2.x, var_2.x)));
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    var var_0 = abs(vec3<i32>(~u_input.b, 1i, _wgslsmith_clamp_i32(u_input.b | u_input.b, u_input.a.x, 1i)) << (func_2(Struct_3(Struct_2(Struct_1(1000f), vec3<f32>(global0[_wgslsmith_index_u32(0u, 26u)], -765f, 604f)), u_input.b | u_input.b)) % vec3<u32>(32u)));
    var_0 = max(vec3<i32>(var_0.x, u_input.b, 0i), -u_input.a.wzx | vec3<i32>(2147483647i, ~var_0.x, u_input.b));
    var_0 = u_input.a.yzz;
    global0 = array<f32, 26>();
    global0 = array<f32, 26>();
    return global0[_wgslsmith_index_u32(11693u, 26u)];
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<bool>(true, true, false, true)))), u_input.b, _wgslsmith_div_vec2_i32(select(vec2<i32>(-u_input.a.x, min(0i, u_input.a.x)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, 48748i) >> (vec2<u32>(1u, 38685u) % vec2<u32>(32u)), ~u_input.a.xw), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), ~vec2<i32>(reverseBits(u_input.a.x), u_input.b | u_input.a.x)), min(-_wgslsmith_mod_vec2_i32(u_input.a.wz | u_input.a.wz, vec2<i32>(u_input.b, 2147483647i)), ~(~abs(u_input.a.wz))));
}

