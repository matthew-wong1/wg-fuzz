struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<vec4<f32>, 9> = array<vec4<f32>, 9>(vec4<f32>(-1413f, -1535f, -972f, -822f), vec4<f32>(-158f, 1885f, -719f, -873f), vec4<f32>(1686f, 489f, 472f, 471f), vec4<f32>(-106f, -236f, 104f, -583f), vec4<f32>(823f, -1000f, -177f, 1623f), vec4<f32>(-572f, 1168f, -331f, 1629f), vec4<f32>(600f, -439f, 417f, -657f), vec4<f32>(-448f, 684f, 950f, 148f), vec4<f32>(1312f, -673f, 869f, -1622f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec3<u32>) -> u32 {
    return _wgslsmith_dot_vec2_u32(arg_2.xy, arg_2.xx);
}

fn func_2() -> Struct_1 {
    global1 = array<vec4<f32>, 9>();
    var var_0 = Struct_1(false, select(vec2<bool>(true, true), vec2<bool>(true, true), u_input.a != ~(~295u)), false, u_input.a << ((~(~u_input.a) ^ u_input.a) % 32u));
    let var_1 = 1i;
    var var_2 = _wgslsmith_div_i32(var_1, firstLeadingBit(i32(-1i) * -15272i));
    var_2 = select(i32(-1i) * -(~(-33172i)), -var_1, var_0.c);
    return Struct_1(!(~var_0.d >= 4294967295u), vec2<bool>(57718u > ~select(83294u, u_input.a, false), true && select(all(vec4<bool>(false, var_0.b.x, var_0.c, true)), var_0.b.x, true)), true, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(17926u, 75119u, 1u) ^ min(vec3<u32>(var_0.d, u_input.a, 23489u), vec3<u32>(u_input.a, 1u, u_input.a))), ~vec3<u32>(u_input.a & var_0.d, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 55219u), vec2<u32>(var_0.d, 26305u)), func_3(var_1, var_0.a, vec3<u32>(var_0.d, var_0.d, 19152u)))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: u32) -> bool {
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(961f, -726f, false))))), _wgslsmith_div_f32(global0.x, _wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, 158f), 599f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.x, global0.x), vec2<f32>(1189f, 406f))))))));
    let var_0 = Struct_1(any(!arg_1.b), vec2<bool>(false, all(select(!vec4<bool>(arg_1.a, arg_1.b.x, false, true), vec4<bool>(false, true, false, false), any(vec3<bool>(arg_0, arg_0, false))))), all(vec4<bool>(!(arg_1.d == u_input.a), func_2().b.x, !any(vec3<bool>(arg_1.b.x, true, false)), func_2().b.x)), ~arg_3 ^ func_2().d);
    var var_1 = vec3<u32>(arg_1.d, ~_wgslsmith_clamp_u32(arg_3, ~(~u_input.a), 15614u), 1u);
    var var_2 = reverseBits(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.a, 9509u, u_input.a), arg_3));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), vec2<f32>(global0.x, 546f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(2419f, 1536f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1514f, 1397f) - vec2<f32>(global0.x, global0.x))) - vec2<f32>(1479f, -865f))));
    return true;
}

fn func_1() -> Struct_1 {
    return Struct_1(false != func_4(true, func_2(), vec4<i32>(1i, 1i, 1i, 1i), u_input.a), !(!(!select(vec2<bool>(false, false), vec2<bool>(false, true), false))), true, _wgslsmith_mod_u32(~func_3(abs(2147483647i), true, firstLeadingBit(vec3<u32>(u_input.a, 0u, u_input.a))), 7633u << (_wgslsmith_sub_u32(_wgslsmith_sub_u32(51877u, u_input.a), abs(23100u)) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = array<vec4<f32>, 9>();
    let var_1 = vec2<i32>(~(~_wgslsmith_dot_vec3_i32(vec3<i32>(-33725i, 0i, -6007i), vec3<i32>(73504i, 14010i, -1i))) | 1i, -_wgslsmith_clamp_i32(countOneBits(firstLeadingBit(1i)), 0i, _wgslsmith_div_i32(-1i, -2147483647i) >> (~u_input.a % 32u)));
    var var_2 = Struct_1(false, select(var_0.b, var_0.b, var_0.b), var_0.b.x, 26746u);
    var_2 = var_0;
    let var_3 = vec4<f32>(global0.x, -1266f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(global0.x))))) + global0.x), 137f);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + var_3.x) + _wgslsmith_f_op_f32(floor(var_3.x)))) * -1376f));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, _wgslsmith_f_op_vec3_f32(-var_3.yyw), var_3.wy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, var_3.x))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.x)))))), 37878u);
}

