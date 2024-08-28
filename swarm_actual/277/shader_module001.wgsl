struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 10968i;

var<private> global1: vec4<u32>;

var<private> global2: Struct_1;

var<private> global3: u32 = 8881u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: i32, arg_3: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1000f, 488f)) * vec3<f32>(720f, -1096f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(2241f))))));
    let var_1 = -arg_3 << (17625u % 32u);
    var var_2 = global2.b.x;
    let var_3 = Struct_1(_wgslsmith_dot_vec3_u32(global1.yxx, vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, global2.a, u_input.a, u_input.a), vec4<u32>(33871u, global2.a, 19690u, 20003u) ^ vec4<u32>(arg_1, 4294967295u, arg_1, global2.a)), _wgslsmith_mod_u32(firstTrailingBit(u_input.a), 1u | global2.a), global2.a)), !select(select(global2.b, select(vec4<bool>(false, true, global2.b.x, global2.b.x), vec4<bool>(false, false, global2.b.x, global2.b.x), global2.b), global2.b.x), select(select(vec4<bool>(false, global2.b.x, true, global2.b.x), global2.b, global2.b.x), !global2.b, global2.b.x), select(global2.b, vec4<bool>(global2.b.x, global2.b.x, false, global2.b.x), all(global2.b.zx))));
    var var_4 = ~select(global1.x, firstLeadingBit(0u), any(var_3.b.xyz) | false);
    return var_3.a;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: bool) -> vec4<bool> {
    global3 = ~(~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(global1.x, 0u, 4294967295u), _wgslsmith_add_u32(u_input.a, arg_0), _wgslsmith_sub_u32(0u, arg_0)) >> (func_3(-_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.b, 2147483647i), vec3<i32>(u_input.b, 1i, u_input.b)), _wgslsmith_mod_u32(~global1.x, global1.x), ~u_input.b ^ 2147483647i, -1316i) % 32u));
    let var_0 = Struct_1(1735u, vec4<bool>(true, true, false, false));
    var var_1 = var_0;
    let var_2 = Struct_1(_wgslsmith_div_u32(_wgslsmith_add_u32(global1.x >> (reverseBits(27797u) % 32u), ~(~16030u)), 0u), var_1.b);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -680f));
    return !var_2.b;
}

fn func_1(arg_0: bool) -> bool {
    var var_0 = Struct_1(~_wgslsmith_clamp_u32(~u_input.a, 1u, global1.x), func_2(76534u, arg_0, false));
    let var_1 = 1191f;
    global2 = Struct_1(~(~global1.x), !select(var_0.b, select(vec4<bool>(arg_0, true, true, var_0.b.x), global2.b, select(vec4<bool>(false, true, true, true), var_0.b, global2.b.x)), select(vec4<bool>(true, false, false, false), !vec4<bool>(false, false, false, global2.b.x), global2.b)));
    var var_2 = vec3<i32>(u_input.b, u_input.b, u_input.b);
    var var_3 = u_input.b;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.a, select(vec4<bool>(any(!vec4<bool>(global2.b.x, global2.b.x, true, global2.b.x)), false, false, !global2.b.x && !global2.b.x), select(vec4<bool>(global2.b.x && global2.b.x, u_input.a == global1.x, global2.b.x, true), vec4<bool>(true, true, true, true), vec4<bool>(global2.b.x, global2.b.x, true, true)), vec4<bool>(func_1(true), !global2.b.x, any(global2.b.xwz), any(global2.b.wz))));
    let var_1 = Struct_1(3733u, vec4<bool>(global2.b.x, all(var_0.b), false | (abs(u_input.b) < u_input.b), func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(21584u, u_input.a, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, global1.x)) >= u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(1012f, ~29955u, vec2<u32>(global2.a, global2.a));
}

