struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, false, 1306f, true, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec4<bool>) -> i32 {
    var var_0 = Struct_2(arg_0);
    var var_1 = !arg_3;
    var_1 = vec4<bool>(all(vec2<bool>(true, all(arg_3) && true)), (764f < _wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(var_0.a.c, arg_0.c))) & ((_wgslsmith_f_op_f32(f32(-1f) * -387f) == _wgslsmith_f_op_f32(step(-1880f, global0.c))) && any(vec4<bool>(var_1.x, arg_1.b, true, arg_2.x))), !(!arg_0.e), arg_0.c >= 260f);
    var var_2 = Struct_2(Struct_1(all(vec3<bool>(!arg_2.x, any(vec4<bool>(false, false, arg_3.x, true)), true)), false, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.c), _wgslsmith_f_op_f32(select(arg_1.c, arg_1.c, global0.e)))), arg_3.x, all(var_1.wyw) != arg_3.x));
    var_1 = select(!select(arg_3, arg_3, !var_0.a.a), !vec4<bool>(!(!var_2.a.d), false, _wgslsmith_f_op_f32(-var_0.a.c) != arg_0.c, select(true, var_2.a.d, u_input.b <= u_input.b)), vec4<bool>(arg_1.a, true, any(vec3<bool>(arg_0.c <= var_0.a.c, true, true)), u_input.a == ~(-2147483647i)));
    return 39666i;
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_1 {
    global0 = arg_2;
    global0 = Struct_1(!all(select(select(vec3<bool>(false, true, false), vec3<bool>(global0.b, false, arg_2.e), vec3<bool>(true, false, true)), select(vec3<bool>(false, global0.a, false), vec3<bool>(arg_2.b, arg_2.d, false), vec3<bool>(global0.b, true, false)), vec3<bool>(arg_2.b, false, true))), any(vec3<bool>(false, false, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1615f)), false, true);
    var var_0 = Struct_2(arg_2);
    let var_1 = -773f;
    global0 = Struct_1(((~(-6175i) & max(u_input.a, u_input.a)) << (4294967295u % 32u)) <= min(reverseBits(0i & u_input.a), max(u_input.a, u_input.a)), global0.d, global0.c, !(func_3(Struct_1(arg_2.a, var_0.a.a, -790f, true, var_0.a.a), Struct_1(false, false, arg_2.c, true, true), !vec3<bool>(arg_2.d, true, arg_2.d), !vec4<bool>(global0.a, var_0.a.a, var_0.a.a, arg_2.a)) >= u_input.a), true);
    return arg_2;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_2) -> vec4<bool> {
    global0 = arg_1.a;
    global0 = arg_2.a;
    global0 = func_2(~9971u, vec3<u32>(~((arg_0.x >> (16281u % 32u)) & u_input.b), 22736u, ((arg_0.x >> (1u % 32u)) << ((u_input.b << (u_input.b % 32u)) % 32u)) | arg_0.x), arg_2.a);
    let var_0 = ~select(vec4<u32>(u_input.b, arg_0.x, u_input.b, select(arg_0.x | 0u, u_input.b ^ 0u, global0.d & arg_2.a.b)), max(~arg_0, _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, arg_0.x, arg_0.x), arg_0)) | ~vec4<u32>(682u, 4294967295u, u_input.b, u_input.b), true);
    global0 = arg_2.a;
    return vec4<bool>(arg_2.a.a, global0.d, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(arg_1.a.c, -1317f)))))) >= _wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(482f + -416f)) * -211f) >= arg_2.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.b && all(!vec4<bool>(false, global0.b, global0.a, global0.e)), true, -1994f, any(!(!func_1(vec4<u32>(67809u, 8955u, 4294967295u, u_input.b), Struct_2(Struct_1(true, global0.a, global0.c, global0.a, global0.b)), Struct_2(Struct_1(global0.b, global0.d, global0.c, false, true))))), all(vec3<bool>(all(vec2<bool>(global0.e, global0.e)), true, !global0.e)));
    var var_0 = ~(_wgslsmith_div_u32(~u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 0u, 111750u) & vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), ~vec4<u32>(u_input.b, 30047u, u_input.b, 1u))) >> (u_input.b % 32u));
    let var_1 = u_input.a;
    global0 = func_2(~(~_wgslsmith_mult_u32(u_input.b, 27820u >> (u_input.b % 32u))), vec3<u32>(firstLeadingBit(0u), max(19067u, 0u), countOneBits(_wgslsmith_sub_u32(abs(106358u), u_input.b >> (u_input.b % 32u)))), Struct_1(global0.b, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.c)) + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-464f, global0.c), _wgslsmith_f_op_f32(exp2(global0.c))))), select(~u_input.b <= ~1u, !(1872f <= global0.c), _wgslsmith_f_op_f32(-723f - global0.c) == global0.c), global0.a));
    let var_2 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(ceil(global0.c))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c * 1000f)), !global0.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.c, global0.c, global0.d))), 1554f, true)), false, global0.e));
    var_0 = u_input.b | u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(abs(4294967295u), global0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a.c + var_2.a.c), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-538f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-193f * -1083f) - -1354f)))), 518f, _wgslsmith_clamp_i32(-15662i, _wgslsmith_mod_i32(func_3(var_2.a, func_2(0u, vec3<u32>(81468u, 5729u, 4294967295u), var_2.a), !vec3<bool>(global0.d, var_2.a.b, false), vec4<bool>(true, var_2.a.b, false, global0.b)), var_1), ~(-2147483647i)));
}

