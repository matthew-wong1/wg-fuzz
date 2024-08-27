struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false));

var<private> global1: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(-391f, -276f, 400f, 1667f), vec4<f32>(-908f, -824f, 274f, -166f), vec4<f32>(-1444f, -450f, 167f, 1000f), vec4<f32>(1045f, -985f, -1273f, -848f), vec4<f32>(775f, 1020f, 664f, 429f), vec4<f32>(1142f, -169f, 1602f, 323f), vec4<f32>(-240f, 185f, 420f, 1172f), vec4<f32>(-1000f, -341f, -1970f, 426f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec3<u32>) -> f32 {
    global1 = array<vec4<f32>, 8>();
    var var_0 = arg_3.xy;
    var_0 = arg_2.yw;
    let var_1 = global0[_wgslsmith_index_u32(0u, 7u)];
    global0 = array<Struct_1, 7>();
    return -667f;
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = 35827u;
    let var_1 = global0[_wgslsmith_index_u32(38385u, 7u)];
    let var_2 = false || var_1.a;
    var var_3 = 1537f;
    var var_4 = Struct_1((any(select(vec3<bool>(var_2, false, var_2), vec3<bool>(var_1.a, true, false), false)) & true) | (true && var_2));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1256f), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(func_3(vec2<f32>(_wgslsmith_f_op_f32(-1000f * -784f), arg_0), global0[_wgslsmith_index_u32(~var_0, 7u)], ~vec4<u32>(4294967295u, 4294967295u, 0u, 1u), ~firstTrailingBit(vec3<u32>(u_input.c, u_input.c, 31039u))))), var_1.a));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> vec2<i32> {
    global0 = array<Struct_1, 7>();
    let var_0 = 35967u;
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    var var_1 = _wgslsmith_f_op_f32(func_2(1031f));
    return select(u_input.a.zy, vec2<i32>(-1i) * -u_input.a.xy, select((u_input.c > 61527u) && select(true, arg_0.a, arg_2.a), true && all(vec3<bool>(false, true, arg_1)), any(vec2<bool>(arg_1, true)))) >> (vec2<u32>(36358u, _wgslsmith_div_u32(~_wgslsmith_mod_u32(u_input.c, u_input.c), 1u)) % vec2<u32>(32u));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = any(!vec3<bool>(arg_3.a == false, all(vec4<bool>(arg_1.a, false, arg_1.a, false)), arg_3.a)) & any(!(!vec2<bool>(arg_1.a, arg_1.a)));
    let var_1 = u_input.a;
    let var_2 = vec3<bool>(true, arg_3.a, any(select(!(!vec4<bool>(arg_1.a, arg_1.a, true, false)), select(vec4<bool>(arg_3.a, true, true, true), !vec4<bool>(true, false, var_0, false), var_0), vec4<bool>(true, arg_3.a, any(vec2<bool>(true, arg_3.a)), true))));
    return vec3<u32>(u_input.c, 1u, max(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.c, u_input.c, 4294967295u, 73006u)), vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.c)) | 15909u, 121260u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 8>();
    var var_0 = min(select(_wgslsmith_sub_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, 4294967295u, 1u), vec3<u32>(u_input.c, 0u, u_input.c), vec3<u32>(1u, u_input.c, 28577u)), ~vec3<u32>(0u, u_input.c, u_input.c)), func_4(vec2<i32>(28764i, -2147483647i) | func_1(Struct_1(true), true, Struct_1(true)), Struct_1(true), max(u_input.a, ~u_input.a), Struct_1(true)), vec3<bool>(true, 1u < countOneBits(u_input.c), !any(vec4<bool>(false, false, false, true)))), vec3<u32>(1u, ~u_input.c, 1u));
    let var_1 = global0[_wgslsmith_index_u32(1u, 7u)];
    var var_2 = global0[_wgslsmith_index_u32(min(0u, _wgslsmith_add_u32(~u_input.c, firstLeadingBit(u_input.c))), 7u)];
    let var_3 = -720f;
    var var_4 = ((u_input.a.x >> (_wgslsmith_clamp_u32(~var_0.x, _wgslsmith_clamp_u32(u_input.c, 1u, u_input.c), ~18263u) % 32u)) > 13075i) | true;
    let var_5 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0.zz, var_0.yx), 7u)];
    var var_6 = Struct_1(var_5.a);
    var_6 = global0[_wgslsmith_index_u32(var_0.x, 7u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3, 1f) * vec2<f32>(102f, var_3)), var_3, -1119f, u_input.c, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2423f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_3)), _wgslsmith_f_op_f32(-var_3), !var_6.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)), 1205f), global1[_wgslsmith_index_u32(u_input.c, 8u)])));
}

