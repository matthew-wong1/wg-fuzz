struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 26312u, 4294967295u);

var<private> global1: i32 = 0i;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    global0 = vec3<u32>(reverseBits(1u), min(0u, max(_wgslsmith_clamp_u32(17474u, global0.x, arg_1), global0.x)), u_input.b << (min(u_input.b << (arg_1 % 32u), reverseBits(arg_1)) % 32u)) << (select((~vec3<u32>(0u, global0.x, 26305u) | _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, global0.x, 37535u), vec3<u32>(u_input.e, 4294967295u, global0.x))) ^ (firstLeadingBit(vec3<u32>(global0.x, u_input.e, arg_1)) | reverseBits(vec3<u32>(1u, 3699u, global0.x))), vec3<u32>(global0.x, firstTrailingBit(u_input.a), arg_1) & _wgslsmith_add_vec3_u32(~vec3<u32>(global0.x, 0u, arg_1), ~vec3<u32>(u_input.a, 9758u, 63252u)), any(vec2<bool>(true, true))) % vec3<u32>(32u));
    var var_0 = ~(-2147483647i);
    let var_1 = _wgslsmith_div_vec3_i32(u_input.c, -min(vec3<i32>(-39624i, -15970i, i32(-1i) * -4480i), u_input.c));
    var var_2 = ~(_wgslsmith_mod_i32(arg_2.a, _wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.c.zz), countOneBits(vec2<i32>(var_1.x, arg_0.x)))) | (-arg_3.a & ~(arg_0.x >> (48288u % 32u))));
    var_0 = -2147483647i;
    return (i32(-1i) * -2147483647i) >> (0u % 32u);
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = Struct_1(~_wgslsmith_add_i32(~u_input.c.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a, -2147483647i, 11943i), u_input.c), func_3(vec2<i32>(u_input.d, -48233i), 4294967295u, arg_0, Struct_1(u_input.c.x)))));
    let var_1 = -arg_0.a;
    var var_2 = arg_0;
    var var_3 = select(select(vec3<bool>(any(vec2<bool>(true, false)), all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false)), any(vec3<bool>(false, true, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true))), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), !select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), false)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !vec3<bool>(all(vec3<bool>(true, true, false)), true, false), all(vec4<bool>(true, true, true, true))), vec3<bool>(all(vec4<bool>(true, any(vec4<bool>(true, true, false, true)), select(false, true, true), -2147483647i >= arg_0.a)), true, false));
    global1 = _wgslsmith_div_i32(abs(12623i), _wgslsmith_mult_i32(firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_mod_i32(arg_0.a, 2147483647i), arg_0.a)), 0i));
    return var_3.x;
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> bool {
    let var_0 = select(_wgslsmith_mod_vec3_u32((vec3<u32>(4294967295u, u_input.b, arg_1) << (~vec3<u32>(arg_1, global0.x, 12684u) % vec3<u32>(32u))) & firstTrailingBit(~vec3<u32>(1032u, 52585u, u_input.b)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1, u_input.b, global0.x), vec3<u32>(26507u, 23350u, u_input.a))), select(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1, 46156u, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(arg_1, u_input.e, 1u), vec3<u32>(97263u, arg_1, arg_1))), ~(~vec3<u32>(0u, global0.x, global0.x))), ~vec3<u32>(_wgslsmith_sub_u32(global0.x, 4294967295u), u_input.b, 28762u), _wgslsmith_mod_u32(41266u, 68100u ^ u_input.e) > ~_wgslsmith_add_u32(global0.x, 0u)), !select(vec3<bool>(true, false, any(vec2<bool>(false, false))), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), vec3<bool>(func_2(arg_0), all(vec4<bool>(false, false, false, false)), true)));
    var var_1 = !(!any(vec2<bool>(false, true)));
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, -465f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1082f, -519f)) - _wgslsmith_div_f32(-181f, 359f)), 1f))));
    let var_4 = -26134i;
    return !(var_3.x > var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.yx;
    let var_1 = Struct_1(-var_0.x & (i32(-1i) * -(i32(-1i) * -61623i)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(367f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(127f + 1530f) * _wgslsmith_div_f32(1017f, 218f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1056f, -495f))))));
    let var_3 = vec4<bool>(any(!vec4<bool>(true, all(vec2<bool>(false, false)), false, all(vec4<bool>(false, true, false, false)))), !(var_0.x == var_0.x), all(vec3<bool>(all(vec4<bool>(true, true, false, true)), (var_2.x >= var_2.x) & true, all(vec2<bool>(true, false)))), true);
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(817f, _wgslsmith_div_f32(var_2.x, -172f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, var_2.x))), vec2<bool>(func_1(var_1, global0.x), var_3.x))) - vec2<f32>(var_2.x, var_2.x)));
    let var_4 = vec4<f32>(_wgslsmith_div_f32(654f, _wgslsmith_f_op_f32(step(var_2.x, -359f))), 316f, var_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), var_2.x));
    let var_5 = !any(vec3<bool>(var_3.x, var_3.x, var_3.x));
    var var_6 = select(~reverseBits(func_3(-u_input.c.yx, ~86307u, Struct_1(u_input.c.x), var_1)), var_0.x, all(select(!var_3.zw, vec2<bool>(var_3.x || false, select(var_3.x, false, var_5)), all(vec2<bool>(var_3.x, false)))));
    var_2 = var_4.zy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_4.zz, _wgslsmith_f_op_vec2_f32(vec2<f32>(561f, var_4.x) * _wgslsmith_div_vec2_f32(var_4.zz, var_4.zy))))), 381f);
}

