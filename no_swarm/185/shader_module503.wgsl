struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec4<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = arg_2;
    var var_1 = select(vec3<i32>(~(-2147483647i), i32(-1i) * -2147483647i, -1i), abs(vec3<i32>(firstLeadingBit(36367i), _wgslsmith_div_i32(countOneBits(u_input.b.x), u_input.b.x), u_input.d)), var_0.e.yxy);
    return vec4<i32>(-62568i, 1i, -12834i, 27279i);
}

fn func_3(arg_0: vec4<bool>) -> vec4<bool> {
    var var_0 = Struct_2(true, 1f);
    var_0 = Struct_2(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - 428f));
    let var_1 = u_input.e;
    var var_2 = vec4<bool>(any(arg_0) || arg_0.x, select(!(true | any(arg_0)), false, any(select(select(vec2<bool>(arg_0.x, arg_0.x), arg_0.zz, false), select(arg_0.yw, vec2<bool>(var_0.a, false), arg_0.ww), arg_0.x))), var_1 >= var_1, var_0.a | true);
    var_0 = Struct_2(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-302f, _wgslsmith_f_op_f32(f32(-1f) * -497f)) * _wgslsmith_f_op_f32(max(1067f, _wgslsmith_f_op_f32(-var_0.b))))));
    return !(!select(arg_0, vec4<bool>(false, arg_0.x, all(arg_0), any(arg_0)), all(arg_0.wyz) != var_0.a));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<bool>) -> Struct_1 {
    return Struct_1(arg_1.b, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b + -262f)), 483f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) * _wgslsmith_div_f32(591f, arg_1.b))))), u_input.c, !func_3(select(select(vec4<bool>(arg_2.x, true, true, true), vec4<bool>(arg_0.a, arg_1.a, true, false), vec4<bool>(true, true, false, true)), !vec4<bool>(arg_2.x, true, arg_0.a, arg_0.a), any(vec2<bool>(true, false)))), select(!vec4<bool>(arg_0.a, func_3(vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x)).x, arg_0.b >= arg_0.b, u_input.b.x < u_input.b.x), vec4<bool>(arg_1.a, !func_3(vec4<bool>(false, false, true, true)).x, func_3(!vec4<bool>(false, false, false, arg_0.a)).x, _wgslsmith_f_op_f32(-arg_1.b) == arg_1.b), vec4<bool>(!(415f < arg_1.b), !(33551i <= u_input.b.x), false, func_3(select(vec4<bool>(arg_2.x, true, false, true), vec4<bool>(arg_0.a, arg_0.a, false, false), true)).x)));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = Struct_2(!(!select(false, arg_1.e.x, false)), _wgslsmith_f_op_f32(floor(arg_1.a)));
    let var_1 = var_0.b;
    let var_2 = Struct_2(true, 1125f);
    let var_3 = vec3<bool>(!arg_1.d.x, (var_0.a & any(vec4<bool>(false, var_0.a, var_2.a, false))) | !any(arg_1.d), var_2.a);
    let var_4 = true;
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.x, var_0.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(-arg_1.b.x)) * 588f)));
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> u32 {
    return _wgslsmith_div_u32(1u, func_2(Struct_2(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-146f + arg_2.b.x))), Struct_2(true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1082f))))), !vec3<bool>(!arg_2.e.x, arg_2.e.x, select(arg_2.e.x, arg_2.e.x, false))).c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(func_5(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-14900i, 32689i, u_input.b.x, u_input.d), vec4<i32>(49785i, u_input.b.x, 0i, u_input.b.x)) >> (u_input.a % vec4<u32>(32u)), vec4<i32>(u_input.b.x, 14942i, u_input.d, u_input.b.x) ^ func_1(false, Struct_2(false, 877f), Struct_1(1795f, vec3<f32>(-1689f, -1285f, -1337f), vec3<u32>(u_input.c.x, 12407u, 4294967295u), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -804f))))), Struct_1(-1305f, _wgslsmith_f_op_vec3_f32(func_4(u_input.d, func_2(Struct_2(true, 141f), Struct_2(true, -1000f), vec3<bool>(false, true, true)))), u_input.a.wxy, func_3(vec4<bool>(true, true, true, true)), vec4<bool>(true, true, false, true))), func_2(Struct_2(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1605f, 367f)) * _wgslsmith_div_f32(1604f, 314f))), Struct_2(true, _wgslsmith_f_op_f32(select(-704f, _wgslsmith_f_op_f32(sign(538f)), func_3(vec4<bool>(true, false, true, false)).x))), select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(false, false, true)), 74751u == u_input.c.x, select(true, false, true)), vec3<bool>(true, true, true))).c.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(-303f, _wgslsmith_f_op_f32(ceil(-166f)))), _wgslsmith_div_f32(2448f, _wgslsmith_f_op_f32(max(-594f, 964f)))) - func_2(Struct_2(true, _wgslsmith_f_op_f32(-1194f - 1836f)), Struct_2(any(vec4<bool>(true, true, false, false)), -1499f), vec3<bool>(true, true, any(vec2<bool>(true, false)))).b.xx));
    var var_2 = Struct_2(any(vec4<bool>(all(vec3<bool>(true, true, true)), true, all(vec2<bool>(true, true)), var_0.x >= (u_input.e << (85167u % 32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-573f * 459f)))));
    var_2 = Struct_2(1000f < var_1.x, -747f);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(step(var_1.x, -636f)), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(-var_2.b)), -597f)), var_2.b, 1727f), vec3<u32>(var_0.x, ~var_0.x, _wgslsmith_add_u32(u_input.e, 114961u)), func_3(vec4<bool>(func_2(Struct_2(var_2.a, -922f), Struct_2(var_2.a, -1157f), vec3<bool>(false, var_2.a, true)).e.x, true, true, func_2(Struct_2(true, 1184f), Struct_2(true, var_2.b), !vec3<bool>(var_2.a, var_2.a, var_2.a)).e.x)), vec4<bool>(true, var_2.a & (u_input.d != 0i), true, var_2.a && (_wgslsmith_sub_u32(var_0.x, var_0.x) < _wgslsmith_mult_u32(1u, 0u))));
    let var_4 = vec3<i32>(abs(min(-1i, 1i)), 44142i, abs(_wgslsmith_add_i32(u_input.d, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -27082i, 12485i), u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e);
}

