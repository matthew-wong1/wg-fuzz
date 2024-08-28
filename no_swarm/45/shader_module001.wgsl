struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<i32> = vec2<i32>(2147483647i, 12419i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<bool>, arg_1: bool) -> bool {
    let var_0 = Struct_1(4294967295u, true, u_input.b, countOneBits(~vec4<i32>(-2147483647i, countOneBits(35232i), _wgslsmith_mod_i32(global1.x, global1.x), global0.d.x)));
    global0 = var_0;
    global0 = Struct_1(~_wgslsmith_clamp_u32(u_input.b, ~85175u, ~(~u_input.b)), -232f != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-800f, -290f)), _wgslsmith_f_op_f32(542f + -539f))))), global0.a, vec4<i32>(0i, _wgslsmith_dot_vec4_i32(var_0.d << (~vec4<u32>(u_input.b, global0.c, u_input.b, var_0.c) % vec4<u32>(32u)), vec4<i32>(-1860i, global1.x, 28045i, -28649i) | var_0.d), ~(-firstTrailingBit(-1i)), 25198i << (_wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, global0.c, 4075u), ~global0.a) % 32u)));
    let var_1 = reverseBits(_wgslsmith_add_u32(~_wgslsmith_clamp_u32(global0.a, global0.c, var_0.c) << ((0u >> (global0.c % 32u)) % 32u), 50714u));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-734f, 1071f))))));
    return false;
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec3<u32>, arg_3: Struct_1) -> u32 {
    let var_0 = arg_2.yz;
    global0 = Struct_1(5111u, all(select(!vec2<bool>(arg_3.b, global0.b), vec2<bool>(false, func_3(vec4<bool>(global0.b, global0.b, global0.b, arg_3.b), true)), true)), global0.a >> (arg_2.x % 32u), arg_3.d);
    global1 = ~u_input.a;
    var var_1 = arg_3;
    global0 = Struct_1(u_input.b, true, 4294967295u, ~(~firstLeadingBit(-arg_3.d)));
    return _wgslsmith_mult_u32(firstTrailingBit(global0.a), max(~firstTrailingBit(24144u), abs(select(~42481u, 5063u, any(vec4<bool>(false, false, true, global0.b))))));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(5977u, _wgslsmith_div_f32(-534f, _wgslsmith_f_op_f32(step(-792f, _wgslsmith_f_op_f32(min(649f, 1000f))))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-775f * -779f))), u_input.b, global0.d);
    let var_1 = vec4<bool>(~_wgslsmith_sub_u32(func_2(-420f, -2147483647i, vec3<u32>(1u, 1u, 1995u), Struct_1(4294967295u, var_0.b, u_input.b, var_0.d)), 1u) != ~((var_0.c & 0u) >> (50198u % 32u)), true, !global0.b, all(!vec4<bool>(false, !global0.b, !var_0.b, !var_0.b)));
    var var_2 = Struct_1(_wgslsmith_mod_u32(11200u, _wgslsmith_add_u32(~min(global0.c, u_input.b), 4294967295u)), all(vec2<bool>(true, select(!var_1.x, func_3(var_1, var_1.x), !global0.b))), _wgslsmith_div_u32(56856u, 92336u), var_0.d);
    var_2 = Struct_1(var_2.c, global0.b, 0u, vec4<i32>(1i, ~(~global0.d.x), -31807i, _wgslsmith_clamp_i32(-53376i, -var_2.d.x, _wgslsmith_div_i32(-1i, 28545i)) >> (global0.c % 32u)));
    let var_3 = Struct_1(var_2.c, !(true & any(var_1.wz)), ~global0.c, global0.d);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = firstLeadingBit((global0.d.zx ^ vec2<i32>(global0.d.x, 1i)) >> ((firstTrailingBit(vec2<u32>(1u, 43656u)) ^ ~(~vec2<u32>(u_input.b, 1u))) % vec2<u32>(32u)));
    global0 = func_1();
    global1 = vec2<i32>(u_input.c, firstLeadingBit(_wgslsmith_div_i32(var_0.x, max(-2147483647i, min(global0.d.x, -1i)))));
    var var_1 = -vec2<i32>(var_0.x, abs(11959i));
    var_0 = vec2<i32>(select(_wgslsmith_sub_i32(-u_input.a.x, _wgslsmith_div_i32(var_0.x, 0i)), var_1.x, !global0.b), ~max(countOneBits(var_1.x), _wgslsmith_dot_vec3_i32(~global0.d.zyx, firstTrailingBit(vec3<i32>(0i, -1i, -1i)))));
    let var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_add_i32(0i, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, var_0.x), global0.d.wy), min(global0.d.x, 0i))), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 5346i, -9522i, -32727i), select(vec4<i32>(2147483647i, 0i, var_0.x, u_input.c), vec4<i32>(-2147483647i, -1i, -25337i, global0.d.x), vec4<bool>(false, false, var_2.b, global0.b)))), ~_wgslsmith_div_i32(37553i, _wgslsmith_add_i32(0i, global1.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(927f))))));
}

