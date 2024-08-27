struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: i32 = -18676i;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    global0 = arg_2;
    global0 = Struct_2(2947f, Struct_1(-509f, true, ~arg_1.b.c, arg_2.a), 1i);
    let var_0 = 0u;
    let var_1 = Struct_1(global0.a, global0.b.b, -firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_div_i32(-7618i, 1i), -17455i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_2.b.d)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_1.a, -142f)))));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -204f) + _wgslsmith_f_op_f32(ceil(-1701f)))));
    return global0.a;
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<bool>(any(select(select(vec2<bool>(true, true), !vec2<bool>(global0.b.b, true), !vec2<bool>(global0.b.b, true)), vec2<bool>(true, global0.a == -199f), vec2<bool>(true, true))), false, abs(-10222i) <= min(firstLeadingBit(_wgslsmith_mod_i32(-881i, -1876i)), -u_input.b.x));
    var var_1 = max(abs(~u_input.c | abs(_wgslsmith_add_u32(0u, u_input.c))), ~u_input.c);
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(min(441f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(u_input.b.x, Struct_2(-388f, global0.b, 2147483647i), Struct_2(-430f, Struct_1(-610f, var_0.x, u_input.d, global0.b.d), -2147483647i))), -1123f))), !(!(global0.a > 983f)), ~u_input.b.x, global0.a), global0.b);
    var var_3 = vec4<bool>(_wgslsmith_div_i32(global0.c, select(-2147483647i, ~54231i, var_2.b.b)) < firstLeadingBit(var_2.b.c), all(select(select(var_0.zx, var_0.xy, var_0.yy), var_0.yz, any(vec4<bool>(true, false, false, var_2.a.b)))) & var_0.x, false, true);
    let var_4 = 4294967295u;
    return global0.b;
}

fn func_1() -> bool {
    let var_0 = u_input.c;
    var var_1 = Struct_2(675f, func_2(), firstTrailingBit(_wgslsmith_div_i32(global0.b.c, -global0.c)));
    global1 = max(~_wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-15114i, var_1.b.c), 1i), global0.b.c), -2147483647i);
    var var_2 = true;
    var var_3 = -1296f;
    return ~1u >= ~abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, 2136u, 4294967295u, 50495u), vec4<u32>(10176u, 1u, 9288u, var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(_wgslsmith_f_op_f32(-global0.b.a), Struct_1(global0.a, false, u_input.d, _wgslsmith_f_op_f32(min(-1178f, _wgslsmith_f_op_f32(-global0.b.d)))), ~u_input.d);
    let var_0 = Struct_2(-1000f, Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.a))))), false, 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.a)) - global0.b.a) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.a, global0.a))))), _wgslsmith_sub_i32(countOneBits(-max(-2147483647i, 0i)), _wgslsmith_div_i32(_wgslsmith_add_i32(global0.b.c, -18468i), 36107i)));
    var var_1 = select(!(!(!(!vec2<bool>(true, global0.b.b)))), select(!(!(!vec2<bool>(global0.b.b, true))), !(!vec2<bool>(var_0.b.b, var_0.b.b)), func_1()), select(!(!(!vec2<bool>(global0.b.b, false))), !vec2<bool>(true, global0.b.b), vec2<bool>(all(vec2<bool>(false, false)), !global0.b.b)));
    global0 = var_0;
    let var_2 = Struct_3(var_0.b, func_2());
    let x = u_input.a;
    s_output = StorageBuffer(34866u, 615f, -_wgslsmith_add_i32(global0.b.c, -4995i));
}

