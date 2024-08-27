struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: bool;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2) -> u32 {
    var var_0 = select(!vec2<bool>(!arg_1.b.a, global0.b.b >= global0.a.b), vec2<bool>(global0.b.a, _wgslsmith_div_u32(_wgslsmith_mod_u32(arg_1.d.b, global0.a.b), arg_1.a.b | arg_1.b.b) != _wgslsmith_clamp_u32(u_input.a, ~4294967295u, ~global0.b.b)), !vec2<bool>(arg_1.a.a | any(vec2<bool>(global0.d.a, global0.a.d)), true));
    global0 = arg_1;
    var var_1 = arg_1;
    var var_2 = var_1.d;
    var var_3 = arg_1.c;
    return arg_1.a.b | countOneBits(~_wgslsmith_sub_u32(countOneBits(24474u), global0.b.b));
}

fn func_2(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = Struct_2(global0.b, Struct_1(any(vec4<bool>(any(arg_0.wy), global0.d.a & false, false, false)), global0.b.b, ~_wgslsmith_mod_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(global0.c.x, 2147483647i) >> (vec2<u32>(global0.b.b, global0.a.b) % vec2<u32>(32u))), false), global0.c, Struct_1(true, func_3(global0.d.c ^ select(vec2<i32>(u_input.b, global0.b.c.x), global0.b.c, arg_0.zz), Struct_2(Struct_1(global0.d.d, 4294967295u, vec2<i32>(u_input.b, global0.b.c.x), global0.d.a), global0.d, global0.c >> (vec4<u32>(82425u, global0.b.b, u_input.a, 42784u) % vec4<u32>(32u)), Struct_1(true, 64197u, global0.d.c, global0.a.d))), global0.d.c, !(global0.a.c.x >= _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -21757i), vec2<i32>(u_input.c, 1i)))));
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-364f)));
    var var_3 = var_1.c.zyx;
    var var_4 = countOneBits(select(_wgslsmith_div_vec4_u32(vec4<u32>(2901u, 71151u, var_0.a.b, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.d.b, u_input.a, 49909u, global0.b.b), vec4<u32>(4294967295u, 58730u, 3582u, 70179u))), ~min(vec4<u32>(global0.a.b, 19012u, 1u, 18422u), vec4<u32>(u_input.a, 31591u, 4294967295u, var_1.d.b)), !vec4<bool>(true, true, global0.a.a, var_1.b.d))) & ~select(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 4294967295u, var_1.d.b, 8851u) << (vec4<u32>(4294967295u, 0u, var_0.d.b, var_1.b.b) % vec4<u32>(32u)), ~vec4<u32>(var_0.d.b, var_0.b.b, var_1.d.b, var_1.b.b)), ~vec4<u32>(24091u, u_input.a, 73517u, var_0.a.b), arg_0);
    return var_0;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2) -> vec2<u32> {
    global0 = func_2(vec4<bool>(any(vec2<bool>(arg_1.c.x > -2147483647i, true)), true, true, any(select(!arg_0.xzz, select(vec3<bool>(global0.b.a, arg_0.x, false), vec3<bool>(global0.d.d, arg_1.a.d, global0.a.d), true), !arg_0.xzz))));
    var var_0 = !select(vec2<bool>(!func_2(arg_0).d.d, any(arg_0)), vec2<bool>(arg_1.b.a, any(arg_0.yzz)), !(!arg_0.zy));
    var var_1 = global0.d.b;
    var var_2 = Struct_1(false, 37385u, vec2<i32>(i32(-1i) * -1i, firstLeadingBit(~arg_1.b.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1277f, -546f)))) * _wgslsmith_f_op_f32(232f + -877f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1682f)));
    var_1 = global0.a.b;
    return vec2<u32>(((~0u << (~u_input.a % 32u)) & 1u) & ~83500u, arg_1.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0.b.a;
    var var_0 = 1u;
    var var_1 = _wgslsmith_mod_u32(global0.d.b, max(max(_wgslsmith_dot_vec2_u32(func_1(vec4<bool>(global0.d.d, global0.d.d, false, global0.b.a), Struct_2(Struct_1(global0.b.a, global0.a.b, global0.c.yz, global0.b.d), global0.b, global0.c, Struct_1(global0.d.a, 16991u, global0.a.c, false))), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 40685u), vec2<u32>(63925u, u_input.a))), reverseBits(4294967295u)), 0u));
    let var_2 = 483f;
    var_0 = 4294967295u;
    var var_3 = func_2(vec4<bool>(true, true, !global0.a.d, true || all(!vec3<bool>(global0.d.d, false, false))));
    var var_4 = -28624i;
    var var_5 = _wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-624f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -2397f))))));
    var var_6 = Struct_2(Struct_1(false, func_1(!select(vec4<bool>(global0.b.a, var_3.a.a, true, true), vec4<bool>(false, var_3.d.d, true, true), vec4<bool>(global0.d.a, true, var_3.d.d, global0.a.a)), Struct_2(func_2(vec4<bool>(global0.d.d, var_3.b.a, true, global0.a.a)).d, func_2(vec4<bool>(true, true, var_3.b.d, var_3.a.a)).b, global0.c, func_2(vec4<bool>(false, true, global0.b.a, var_3.a.a)).a)).x, -global0.d.c, !(!var_3.a.a)), func_2(vec4<bool>(!(!var_3.b.d), false, true, true)).b, abs(~((var_3.c ^ var_3.c) >> (vec4<u32>(global0.a.b, var_3.b.b, global0.d.b, u_input.a) % vec4<u32>(32u)))), func_2(vec4<bool>(true, all(select(vec4<bool>(false, global0.d.d, var_3.a.a, var_3.d.a), vec4<bool>(var_3.d.d, false, global0.d.a, var_3.b.a), vec4<bool>(false, global0.b.a, var_3.d.a, true))), _wgslsmith_f_op_f32(sign(-115f)) != _wgslsmith_f_op_f32(var_2 * var_2), var_2 <= _wgslsmith_f_op_f32(select(var_2, var_2, true)))).b);
    let x = u_input.a;
    s_output = StorageBuffer(546f, vec2<u32>(func_2(!(!vec4<bool>(false, var_6.b.a, true, var_6.a.a))).d.b, max(~4294967295u, var_6.d.b) & global0.a.b), 0u, var_2, vec4<u32>(~4294967295u, firstLeadingBit(_wgslsmith_add_u32(1u, 1u)), select(~u_input.a, _wgslsmith_add_u32(global0.d.b, 8153u), true), ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a, var_3.d.b), global0.b.b)));
}

