struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: bool, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_mod_i32(-391i, -((0i << (_wgslsmith_mod_u32(u_input.b, u_input.b) % 32u)) ^ u_input.a));
    var var_1 = 15129u;
    return Struct_1(vec3<i32>(35437i, ~u_input.a, -arg_1.x), 1u);
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> vec3<u32> {
    let var_0 = !select(vec2<bool>(!arg_1, arg_1), !select(vec2<bool>(arg_1, true), vec2<bool>(true, true), !vec2<bool>(arg_1, false)), true);
    return ~(vec3<u32>(_wgslsmith_sub_u32(arg_3, arg_2.b) & u_input.b, _wgslsmith_add_u32(abs(u_input.b), _wgslsmith_sub_u32(arg_2.b, u_input.b)), ~arg_3) >> ((~(~vec3<u32>(4294967295u, arg_3, u_input.b)) ^ ~(~vec3<u32>(u_input.b, arg_3, 55229u))) % vec3<u32>(32u)));
}

fn func_1() -> vec4<bool> {
    let var_0 = func_3(abs(~u_input.b >> (~1888u % 32u)), false, func_2(true, ~select(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(-16121i, 0i, -1i, u_input.a), false)), u_input.b) << (~vec3<u32>(u_input.b, func_2(true, -vec4<i32>(-5781i, u_input.a, 4289i, 1i)).b, _wgslsmith_mult_u32(u_input.b, ~77647u)) % vec3<u32>(32u));
    var var_1 = Struct_2(Struct_1(vec3<i32>(~u_input.a << (var_0.x % 32u), u_input.a ^ 7039i, -(~1i)), _wgslsmith_sub_u32(var_0.x, 0u)), 1033f, Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.a, -56908i, 0i), vec3<i32>(u_input.a, u_input.a, -2147483647i) >> (vec3<u32>(var_0.x, u_input.b, var_0.x) % vec3<u32>(32u))), ~_wgslsmith_sub_u32(0u, firstTrailingBit(55492u))), func_2(false && ((u_input.a > 55979i) || true), min(-abs(vec4<i32>(u_input.a, -1i, u_input.a, -2147483647i)), firstTrailingBit(~vec4<i32>(0i, u_input.a, u_input.a, u_input.a)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_1.b, 1637f)), var_1.b)))), _wgslsmith_f_op_f32(select(-1314f, _wgslsmith_f_op_f32(f32(-1f) * -715f), all(vec4<bool>(false, true, false, true))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-349f, _wgslsmith_f_op_f32(select(var_1.b, var_1.b, true)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.b, var_1.b, false)) - -307f)) + -2057f));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.b, var_1.b)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, var_1.b, var_1.b, 1027f) * vec4<f32>(448f, var_1.b, -3148f, var_1.b)))))));
    return vec4<bool>(true, true, true, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec3<bool>(true, true, true), vec3<bool>(true, all(func_1()), any(vec3<bool>(true, true, true))), all(vec3<bool>(true, true, true)));
    var_0 = !(!(!select(!vec3<bool>(true, var_0.x, var_0.x), select(vec3<bool>(false, true, var_0.x), vec3<bool>(true, false, var_0.x), false), true)));
    var_0 = vec3<bool>(false & (var_0.x | any(vec3<bool>(false, false, false))), true, false);
    var_0 = select(vec3<bool>(true, false, true), select(vec3<bool>(_wgslsmith_f_op_f32(round(1087f)) == _wgslsmith_div_f32(695f, 180f), any(vec3<bool>(var_0.x, true, var_0.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<u32>(20735u, u_input.b, u_input.b)) > firstLeadingBit(1u)), !vec3<bool>(select(var_0.x, var_0.x, true), true, any(vec3<bool>(false, true, true))), select(select(!vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(true, true, true), !var_0.x), vec3<bool>(func_1().x, var_0.x, u_input.b > 0u), select(!vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(false, true, false), select(vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, var_0.x, var_0.x))))), var_0.x);
    var var_1 = 0u;
    var_1 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, firstTrailingBit(4294967295u)), u_input.b);
    var_1 = select(10949u, 19831u, select(any(!(!vec4<bool>(false, var_0.x, true, var_0.x))), func_1().x, func_1().x));
    var var_2 = select(vec4<bool>(false, func_1().x, var_0.x, !all(func_1().yz)), vec4<bool>(func_1().x, true || !var_0.x, !(!all(vec2<bool>(true, true))), var_0.x), any(!select(!vec3<bool>(false, var_0.x, true), vec3<bool>(true, false, var_0.x), var_0.x)));
    var_1 = ~(~38174u);
    let x = u_input.a;
    s_output = StorageBuffer(48908u, vec3<f32>(-1150f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-2060f)))))), _wgslsmith_f_op_f32(-835f + _wgslsmith_f_op_f32(floor(-1290f)))), firstTrailingBit(_wgslsmith_clamp_vec2_u32((vec2<u32>(37211u, u_input.b) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))) << (~vec2<u32>(u_input.b, 0u) % vec2<u32>(32u)), vec2<u32>(u_input.b, 1u), vec2<u32>(1u, 1u))));
}

