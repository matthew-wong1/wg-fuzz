struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: vec3<u32>, arg_3: bool) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-136f, -268f) * vec2<f32>(1000f, -658f))), vec2<f32>(_wgslsmith_f_op_f32(-471f * -1000f), _wgslsmith_f_op_f32(select(-772f, -417f, arg_3))))))));
    let var_1 = vec2<i32>(i32(-1i) * -1i, u_input.a.x);
    var var_2 = true;
    var_2 = arg_3;
    var_2 = arg_3;
    return false;
}

fn func_2(arg_0: bool) -> Struct_3 {
    let var_0 = Struct_1(vec3<i32>(~(~(-2147483647i)), u_input.a.x, u_input.a.x >> (~(~51539u) % 32u)));
    let var_1 = Struct_1(-reverseBits(vec3<i32>(-1i, u_input.a.x, 2147483647i)) << (vec3<u32>(reverseBits(~u_input.b.x), _wgslsmith_div_u32(u_input.b.x, u_input.b.x & 43099u), _wgslsmith_sub_u32(4294967295u, u_input.b.x)) % vec3<u32>(32u)));
    let var_2 = 4213i;
    var var_3 = Struct_2(select(select(vec4<bool>(any(vec4<bool>(arg_0, arg_0, true, true)), true, func_3(vec2<u32>(31742u, 56143u), u_input.b, vec3<u32>(u_input.b.x, 2470u, u_input.b.x), arg_0), false != arg_0), !select(vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(true, false, arg_0, false), vec4<bool>(arg_0, false, arg_0, true)), any(vec3<bool>(true, arg_0, true)) && false), vec4<bool>(true, !(!arg_0), arg_0, !(arg_0 || arg_0)), vec4<bool>(!any(vec4<bool>(arg_0, arg_0, arg_0, arg_0)), true, true, select(arg_0, arg_0, false && arg_0))), countOneBits(vec2<u32>(_wgslsmith_mod_u32(firstTrailingBit(0u), abs(u_input.b.x)), ~u_input.b.x)));
    return Struct_3(3635u, vec4<i32>(~var_1.a.x, ~_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.x, var_0.a.x, var_1.a.x), var_0.a), _wgslsmith_add_i32(30253i, u_input.a.x)), u_input.a.x, var_1.a.x), Struct_1(vec3<i32>(var_1.a.x, -2147483647i, var_1.a.x)));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> Struct_3 {
    let var_0 = true;
    return func_2(var_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    var var_1 = vec4<u32>(u_input.b.x, u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x), u_input.b.x);
    let var_2 = func_1(firstTrailingBit(u_input.a.x), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, 0i)), true);
    var_1 = ~vec4<u32>(56440u, firstLeadingBit(0u), ~u_input.b.x, ~func_1(_wgslsmith_mod_i32(var_2.b.x, -3508i), Struct_1(var_2.c.a), true).a);
    var_1 = ~(~(~(~reverseBits(vec4<u32>(var_2.a, 0u, 13826u, u_input.b.x)))));
    var_0 = _wgslsmith_dot_vec3_u32(~(~abs(vec3<u32>(var_2.a, u_input.b.x, 59140u))), vec3<u32>(1u, 4294967295u, func_1(0i, var_2.c, all(vec4<bool>(true, true, false, false)) | select(true, false, true)).a));
    var var_3 = ~var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.wxw, min(vec2<u32>(~(~43490u), select(~28385u, var_2.a, false)), max(vec2<u32>(11212u, ~25720u), u_input.b)), ~abs(~(-6134i)));
}

