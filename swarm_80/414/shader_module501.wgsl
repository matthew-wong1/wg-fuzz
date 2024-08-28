struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-18060i, 2147483647i, -1i);

var<private> global1: u32 = 0u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>) -> f32 {
    global1 = _wgslsmith_div_u32(~u_input.a.x, abs(arg_1.x));
    let var_0 = vec3<u32>(reverseBits(firstTrailingBit(~49977u)), _wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(select(arg_1, arg_1, vec3<bool>(false, false, true)), vec3<u32>(1u, 18438u, arg_1.x)), 0u), _wgslsmith_add_u32(~firstLeadingBit(firstLeadingBit(1u)), _wgslsmith_add_u32(~67772u >> (~4294967295u % 32u), arg_1.x)));
    global1 = firstLeadingBit(max(u_input.a.x, _wgslsmith_mult_u32(42389u, _wgslsmith_div_u32(~27776u, 4294967295u))));
    let var_1 = arg_0;
    var var_2 = select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, !all(vec2<bool>(true, false))), !vec3<bool>(true, all(vec3<bool>(false, false, true)), true)), !vec3<bool>(true, any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), false)), true), vec3<bool>(any(vec2<bool>(true, true)), any(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(false, true, false), select(true, false, true))), false));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-499f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1943f * _wgslsmith_f_op_f32(f32(-1f) * -778f)))));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> u32 {
    global0 = -arg_0.a.wxw;
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-arg_1), -220f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1, 379f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -778f), 907f))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -266f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-618f - 763f) + _wgslsmith_f_op_f32(-arg_1))))), var_0.x);
    global1 = u_input.a.x;
    global1 = 1u;
    return ~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.b) << (vec3<u32>(u_input.b, 3752u, u_input.a.x) % vec3<u32>(32u)), vec3<u32>(u_input.b, 1u, u_input.b), ~vec3<u32>(u_input.b, 0u, u_input.b)) >> (abs(vec3<u32>(1u, 0u, 52443u)) % vec3<u32>(32u)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.b, 0u), reverseBits(vec3<u32>(19688u, u_input.b, u_input.b)), vec3<u32>(u_input.a.x, 1u, u_input.a.x)));
}

fn func_2() -> Struct_3 {
    global1 = u_input.a.x;
    global1 = _wgslsmith_clamp_u32(0u, 22549u, u_input.a.x);
    global1 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.b, ~u_input.a.x, ~select(u_input.b, u_input.a.x, true)), func_4(Struct_1(~vec4<i32>(0i, -2147483647i, -2147483647i, -5469i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(vec4<i32>(-30903i, 0i, -33731i, 2147483647i), vec3<i32>(2147483647i, global0.x, 30862i)), vec3<u32>(0u, 0u, u_input.b))) - 564f))), abs(select(16861u ^ _wgslsmith_mod_u32(0u, u_input.b), 45630u, false)));
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1593f, 407f))));
    var var_1 = vec2<f32>(_wgslsmith_div_f32(556f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1069f, -2423f)) * -168f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-250f + -1000f))), 539f))));
    return Struct_3(-(~(-u_input.c)) ^ reverseBits(global0.x), Struct_1(countOneBits(vec4<i32>(global0.x, 1i, -2147483647i, -u_input.c))), false, vec3<i32>(2147483647i, max(1i, 1i), -global0.x));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: Struct_1) -> i32 {
    var var_0 = func_2();
    let var_1 = ~firstTrailingBit(-vec4<i32>(u_input.c, -1i, global0.x ^ 7496i, var_0.b.a.x));
    var var_2 = ~(-firstLeadingBit(abs(22452i) >> (_wgslsmith_mult_u32(u_input.b, 69745u) % 32u)));
    var var_3 = abs(_wgslsmith_div_i32(var_0.b.a.x, 1i));
    let var_4 = ~_wgslsmith_sub_u32(u_input.b, ~56246u);
    return -_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_2.a.x & -14867i, global0.x, 25869i), ~arg_2.a.zxy);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~vec3<i32>(-_wgslsmith_sub_i32(global0.x, func_1(vec4<u32>(2219u, 0u, 115853u, 4294967295u), vec4<f32>(130f, -1000f, 964f, -458f), Struct_1(vec4<i32>(5514i, -52540i, -2415i, 1i)))), 1i, u_input.c);
    global1 = ~_wgslsmith_div_u32(select(4294967295u, u_input.b, true), ~u_input.b) | 46009u;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(0u, select(u_input.a.x, _wgslsmith_sub_u32(1u, u_input.a.x), u_input.a.x <= 28346u)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(~(-39657i), ~1i, global0.x, -48474i), vec4<i32>(firstTrailingBit(u_input.c), _wgslsmith_sub_i32(-52447i, -2147483647i), 0i, -22045i)), 30175i, 50925i), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(570f, -530f, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1406f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-258f)), _wgslsmith_f_op_f32(ceil(-312f))))));
}

