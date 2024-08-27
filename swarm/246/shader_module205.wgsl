struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: i32,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_2,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<bool>(true, true, true));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>) -> vec3<bool> {
    global0 = Struct_4(arg_0.b.a);
    var var_0 = Struct_3(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(661f, _wgslsmith_f_op_f32(-535f + 1208f))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-1879f + 1283f), -1082f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-351f, 735f) - vec2<f32>(-594f, 378f)), vec2<f32>(var_0.b, -149f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.b, -623f), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, var_0.b) * vec2<f32>(var_0.b, var_0.b)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-455f, var_0.b), vec2<f32>(var_0.b, 295f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, var_0.b) * vec2<f32>(1271f, var_0.b)))))));
    var_0 = Struct_3(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1898f * var_0.b)));
    var var_2 = select(arg_1, select(vec2<bool>(arg_0.b.a.x, all(vec3<bool>(true, arg_1.x, arg_0.d)) | any(vec3<bool>(arg_1.x, var_0.a.a.x, true))), select(vec2<bool>(arg_0.d && false, var_0.a.b.a.x), !select(arg_1, arg_0.a.zx, arg_1), !arg_0.b.a.x && true), any(arg_0.a.zyy)), !(any(select(arg_0.a.zww, var_0.a.b.a, vec3<bool>(true, true, false))) | true));
    return vec3<bool>((~u_input.d.x == _wgslsmith_mod_u32(1u, u_input.d.x)) && false, select(all(select(vec4<bool>(var_0.a.b.a.x, arg_1.x, false, true), arg_0.a, vec4<bool>(global0.a.x, false, false, true))) == true, true, var_0.a.d), !(~abs(u_input.d.x) > (11810u >> (u_input.d.x % 32u))));
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    global0 = Struct_4(select(vec3<bool>(true, true, true), global0.a, global0.a));
    var var_0 = Struct_5(Struct_2(select(!select(vec4<bool>(global0.a.x, global0.a.x, false, true), vec4<bool>(global0.a.x, true, global0.a.x, false), false), vec4<bool>(global0.a.x, all(vec4<bool>(true, global0.a.x, global0.a.x, global0.a.x)), all(global0.a), !global0.a.x), true), Struct_1(!global0.a, vec3<i32>(~u_input.a.x, 25091i, 7872i)), -arg_0.x, global0.a.x), Struct_3(Struct_2(vec4<bool>(any(vec4<bool>(true, global0.a.x, false, global0.a.x)), true, global0.a.x, global0.a.x), Struct_1(vec3<bool>(global0.a.x, false, global0.a.x), ~u_input.a.zxx), ~arg_0.x, !(8510u >= u_input.d.x)), _wgslsmith_f_op_f32(select(-1780f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -427f)), true))), Struct_2(select(vec4<bool>(global0.a.x, false && global0.a.x, all(vec4<bool>(global0.a.x, global0.a.x, true, global0.a.x)), all(global0.a.zz)), select(!vec4<bool>(false, false, global0.a.x, false), vec4<bool>(false, global0.a.x, global0.a.x, global0.a.x), select(vec4<bool>(false, false, true, global0.a.x), vec4<bool>(false, true, false, false), true)), vec4<bool>(!global0.a.x, false, true, all(global0.a))), Struct_1(!vec3<bool>(global0.a.x, false, global0.a.x), reverseBits(-vec3<i32>(arg_0.x, -2147483647i, arg_0.x))), 1i, true), !select(vec4<bool>(global0.a.x || false, true, global0.a.x, any(vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global0.a.x))), !(!vec4<bool>(global0.a.x, global0.a.x, true, global0.a.x)), true && all(vec3<bool>(true, global0.a.x, false))));
    var var_1 = var_0.a;
    var var_2 = Struct_4(select(var_0.b.a.b.a, !var_1.a.wwx, !(!var_0.c.b.a)));
    global0 = Struct_4(select(!select(func_3(var_0.b.a, var_2.a.xz), global0.a, var_0.d.zww), !var_0.a.a.wyw, any(var_0.c.a.zxw)));
    return ~(~firstLeadingBit(u_input.d.x) | max(countOneBits(1u), 1u));
}

fn func_1(arg_0: u32, arg_1: u32) -> Struct_1 {
    var var_0 = 24333u;
    var_0 = 23667u;
    let var_1 = max(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, arg_1, 5121u, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0, arg_0, u_input.d.x, arg_1), vec4<u32>(1u, u_input.d.x, 0u, 26452u))) << ((~vec4<u32>(arg_0, 0u, arg_0, arg_1) ^ (vec4<u32>(arg_1, u_input.d.x, 0u, u_input.d.x) >> (vec4<u32>(arg_1, 1u, arg_1, 1u) % vec4<u32>(32u)))) % vec4<u32>(32u)), ~select(vec4<u32>(arg_1, 62799u, 1u, 51973u), vec4<u32>(u_input.d.x, arg_1, 0u, arg_1), vec4<bool>(global0.a.x, false, true, true)) << (firstTrailingBit(vec4<u32>(arg_0, arg_1, 45012u, 20174u)) % vec4<u32>(32u))) >> (vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0, 7106u, arg_1, 13302u), abs(vec4<u32>(75909u, 24488u, u_input.d.x, arg_1))), _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(31872u, 20811u, u_input.d.x, 0u)), max(vec4<u32>(arg_1, arg_1, u_input.d.x, 0u), vec4<u32>(0u, 17792u, 0u, arg_1)))), firstTrailingBit(~4294967295u), u_input.d.x, _wgslsmith_div_u32(func_2(vec3<i32>(42007i, u_input.a.x, u_input.a.x)), ~select(arg_0, 96980u, global0.a.x))) % vec4<u32>(32u));
    let var_2 = Struct_1(func_3(Struct_2(vec4<bool>(true, global0.a.x == global0.a.x, false, true), Struct_1(!global0.a, u_input.c.yzy), (2147483647i & u_input.c.x) ^ u_input.b, true), global0.a.xz), vec3<i32>(-21781i, u_input.a.x, -1i));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1070f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -625f)))))));
    return Struct_1(!func_3(Struct_2(vec4<bool>(global0.a.x, true, global0.a.x, var_2.a.x), Struct_1(vec3<bool>(var_2.a.x, true, false), vec3<i32>(-35888i, u_input.b, u_input.b)), _wgslsmith_add_i32(u_input.b, 11883i), false), select(vec2<bool>(global0.a.x, true), vec2<bool>(true, true), global0.a.x)), abs(select(vec3<i32>(abs(var_2.b.x), -7006i, -24833i), var_2.b, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-201f + 814f))))));
    var var_1 = -min(vec2<i32>(_wgslsmith_mult_i32(i32(-1i) * -23911i, ~44117i), _wgslsmith_sub_i32(-9288i, _wgslsmith_mult_i32(u_input.c.x, 16240i))), -u_input.c.zx);
    let var_2 = func_1(u_input.d.x, _wgslsmith_mult_u32(1u, 56035u));
    let var_3 = firstTrailingBit(firstLeadingBit(~(~vec4<u32>(u_input.d.x, 0u, u_input.d.x, 48786u)) ^ ~(vec4<u32>(987u, u_input.d.x, u_input.d.x, 85183u) >> (vec4<u32>(1u, u_input.d.x, u_input.d.x, u_input.d.x) % vec4<u32>(32u)))));
    let var_4 = func_1(min(_wgslsmith_mod_u32(func_2(~u_input.c.yyx), 4294967295u), 0u), abs(~20383u)).a.yz;
    let var_5 = var_3.x;
    let var_6 = select(select(vec4<bool>(var_4.x, !global0.a.x, !func_3(Struct_2(vec4<bool>(false, true, true, false), var_2, -12011i, true), global0.a.xy).x, (u_input.d.x != 85071u) && var_4.x), select(select(select(vec4<bool>(var_4.x, false, var_4.x, global0.a.x), vec4<bool>(true, var_4.x, false, var_2.a.x), vec4<bool>(false, global0.a.x, var_2.a.x, true)), vec4<bool>(global0.a.x, var_4.x, true, true), false), !vec4<bool>(true, global0.a.x, false, global0.a.x), !(var_0 == -2091f)), select(!vec4<bool>(var_4.x, global0.a.x, var_2.a.x, var_4.x), !(!vec4<bool>(var_2.a.x, global0.a.x, global0.a.x, var_4.x)), vec4<bool>(true, all(vec3<bool>(var_4.x, false, var_4.x)), global0.a.x, func_3(Struct_2(vec4<bool>(global0.a.x, false, var_2.a.x, var_2.a.x), Struct_1(global0.a, u_input.c.zwy), var_2.b.x, var_4.x), vec2<bool>(var_4.x, false)).x))), vec4<bool>(true, !(var_0 != _wgslsmith_f_op_f32(f32(-1f) * -936f)), all(vec2<bool>(select(var_4.x, var_4.x, global0.a.x), true)), false), !(_wgslsmith_f_op_f32(var_0 + -1057f) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, var_0))));
    global0 = Struct_4(var_6.zww);
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

