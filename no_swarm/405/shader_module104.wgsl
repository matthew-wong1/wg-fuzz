struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: vec2<f32>) -> u32 {
    return 68883u;
}

fn func_2(arg_0: u32) -> Struct_1 {
    return Struct_1(_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(~arg_0, 0u), ~(~4294967295u)), ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_0, 0u), u_input.b)), u_input.a);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1684f, 135f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1069f) + 1242f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1273f, -747f)))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1969f, 1000f)) - _wgslsmith_f_op_f32(-197f - -284f)))));
    let var_1 = Struct_2(Struct_1(u_input.d.x, max(u_input.a, firstLeadingBit(arg_1.b))), _wgslsmith_mod_u32(~85705u << ((4294967295u << (max(arg_1.a, u_input.b) % 32u)) % 32u), 0u), func_2(~0u), u_input.d.xy, arg_1);
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -691f) + -774f))));
    var var_3 = select(arg_0.wy, vec2<bool>(all(!(!vec3<bool>(false, arg_0.x, true))), any(vec2<bool>(arg_0.x, all(vec2<bool>(arg_0.x, false))))), !select(!select(vec2<bool>(true, arg_0.x), arg_0.xy, false), vec2<bool>(any(arg_0), false), arg_0.x));
    let var_4 = select(arg_0.yy, vec2<bool>(var_3.x & false, all(!arg_0.zw)), !vec2<bool>(arg_0.x, all(arg_0)));
    return var_1.a;
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    global0 = !(!any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true))));
    return Struct_3(arg_0.c, _wgslsmith_sub_u32(~arg_0.b, arg_0.e.a) & ~9396u, !(!all(vec4<bool>(true, true, true, true))), all(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true))), Struct_1(0u, 2147483647i));
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: vec2<u32>) -> Struct_2 {
    let var_0 = arg_1.a;
    let var_1 = vec4<i32>(_wgslsmith_mod_i32(~(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 4408i), vec2<i32>(u_input.e.x, -33961i))), firstLeadingBit(u_input.c)), abs(0i), select(u_input.c, 8138i, !arg_1.c), ~(-2147483647i) | func_3(vec4<bool>(true, arg_1.d, false, arg_1.d), Struct_1(1u, u_input.c << (arg_2.x % 32u))).b);
    var var_2 = ~countOneBits(countOneBits(_wgslsmith_div_vec2_u32(~u_input.d.zz, vec2<u32>(arg_0, 27884u))));
    let var_3 = arg_1;
    global0 = true == func_4(Struct_2(Struct_1(0u, var_3.a.b), reverseBits(1u) >> (_wgslsmith_mod_u32(var_2.x, var_2.x) % 32u), arg_1.a, (vec2<u32>(arg_1.b, 50204u) >> (arg_2 % vec2<u32>(32u))) & firstLeadingBit(arg_2), var_0)).c;
    return Struct_2(func_4(Struct_2(Struct_1(arg_2.x, var_0.b), ~arg_1.e.a, Struct_1(1u, var_0.b), arg_2, Struct_1(36202u, func_4(Struct_2(Struct_1(3816u, var_3.e.b), 1u, arg_1.a, arg_2, Struct_1(var_0.a, 0i))).a.b))).e, 0u, Struct_1(_wgslsmith_sub_u32(arg_2.x, u_input.b), -26395i), ~vec2<u32>(24099u, var_2.x), func_3(select(!vec4<bool>(var_3.d, var_3.d, var_3.c, true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, var_3.d, var_3.c), vec4<bool>(var_3.c, true, arg_1.c, var_3.d)), !vec4<bool>(var_3.d, true, true, false), !vec4<bool>(arg_1.d, var_3.d, true, arg_1.d)), !select(vec4<bool>(var_3.c, true, false, true), vec4<bool>(var_3.c, false, arg_1.c, true), true)), arg_1.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_mod_u32((~364u ^ ~u_input.b) << (func_1(vec2<f32>(1f, 1f)) % 32u), u_input.d.x), func_4(Struct_2(Struct_1(u_input.b, countOneBits(u_input.a)), u_input.b, func_3(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true)), func_2(1u)), firstLeadingBit(~vec2<u32>(45067u, u_input.d.x)), Struct_1(~0u, 1i))), u_input.d.zy);
    global0 = any(!vec2<bool>(true, all(vec2<bool>(true, true)))) | true;
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(2174f, 937f, 892f), vec3<f32>(-800f, -1824f, -796f), vec3<bool>(true, true, false))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-352f, 637f, 415f) - vec3<f32>(793f, -488f, 248f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-922f, -1078f, -697f), vec3<f32>(1239f, 1000f, -1617f), true)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, 216f, -1000f)))))))));
    var var_2 = -vec3<i32>(~(u_input.c ^ ~0i), u_input.c, -1i);
    let var_3 = all(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), !(var_1.x == 2250f))) & (var_1.x < var_1.x);
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(ceil(var_1.x)), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(func_5(_wgslsmith_div_u32(var_0.c.a, 30681u), Struct_3(Struct_1(78197u, var_0.a.b), var_0.a.a, false, var_3, var_0.c), ~vec2<u32>(0u, u_input.d.x)).c.b >> (~1u % 32u), _wgslsmith_mult_i32(select(~var_0.a.b, -7255i << (u_input.b % 32u), !var_3), 48799i), max(-29398i, -2147483647i), 0i), -1i, reverseBits(~(vec2<u32>(u_input.d.x, 4294967295u) >> (~vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(var_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.x, 689f, 573f)), _wgslsmith_f_op_f32(step(-754f, 426f)) != _wgslsmith_f_op_f32(-347f * var_1.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1 - var_1)) * var_1))), countOneBits(vec4<u32>(func_2(11366u).a, ~_wgslsmith_sub_u32(var_0.c.a, 1u), (var_0.e.a << (1u % 32u)) | ~97313u, 1u)));
}

