struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: f32) -> Struct_1 {
    global0 = u_input.c.xy;
    var var_0 = u_input.a;
    let var_1 = ~(~(~firstTrailingBit(countOneBits(26420u))));
    let var_2 = Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !vec3<bool>(true, true, all(vec2<bool>(true, false)))));
    var var_3 = any(!(!vec2<bool>(false, any(var_2.a))));
    return Struct_1(vec3<bool>(any(vec3<bool>(!var_2.a.x, !var_2.a.x, any(var_2.a.zx))), any(!vec2<bool>(var_2.a.x, false)) && false, true));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: f32) -> u32 {
    var var_0 = func_2(_wgslsmith_f_op_f32(sign(arg_2)));
    let var_1 = func_2(-437f).a;
    var_0 = Struct_1(!vec3<bool>(true, arg_1.a.x, !(!arg_0)));
    global0 = vec2<u32>(min(51101u, abs(_wgslsmith_div_u32(reverseBits(global0.x), firstTrailingBit(8825u)))), _wgslsmith_mod_u32(select(0u, u_input.c.x, any(vec3<bool>(false, false, arg_1.a.x))), 54036u));
    return ~(~0u);
}

fn func_3() -> Struct_1 {
    var var_0 = 4294967295u;
    var var_1 = func_2(-1695f).a;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(ceil(-1124f)))), var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-888f - 1132f) * -1913f) - _wgslsmith_f_op_f32(select(827f, _wgslsmith_f_op_f32(step(2238f, 1236f)), false))))));
    let var_3 = vec4<u32>(~global0.x, 4294967295u, ~(~(~67631u)), 43773u);
    let var_4 = Struct_1(!select(vec3<bool>(true, true, var_1.x), select(!vec3<bool>(var_1.x, var_1.x, var_1.x), func_2(-1287f).a, all(var_1.yx)), any(select(vec4<bool>(false, false, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(true, true, var_1.x, var_1.x)))));
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<u32>(min(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(1u, 71287u), func_1(false, Struct_1(vec3<bool>(false, false, false)), -484f), u_input.c.x, ~global0.x), vec4<u32>(0u, u_input.c.x, u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 18479u, 1u), u_input.c.wyx))), (firstLeadingBit(global0.x) ^ u_input.c.x) >> (0u % 32u)), ~countOneBits(_wgslsmith_add_u32(global0.x, max(10292u, 0u))));
    let var_0 = vec2<f32>(1f, 1f);
    let var_1 = func_2(1000f);
    var var_2 = func_3();
    let var_3 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(~global0.x, ~21031u, 117893u, global0.x >> (u_input.c.x % 32u))), reverseBits(u_input.c)), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

