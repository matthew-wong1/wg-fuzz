struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: i32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<bool>(false, false, true), 1996f, 0i, false, false));

var<private> global1: f32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec3<bool>) -> u32 {
    global0 = Struct_2(arg_1);
    var var_0 = -333f;
    global1 = -708f;
    let var_1 = ~max(select(select(u_input.a, u_input.a | arg_2, true), vec2<u32>(_wgslsmith_clamp_u32(u_input.a.x, arg_0, arg_2.x), _wgslsmith_dot_vec4_u32(vec4<u32>(3583u, u_input.a.x, 35439u, arg_2.x), vec4<u32>(u_input.a.x, arg_0, arg_0, u_input.a.x))), arg_3.x), u_input.a);
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -1750f);
    return arg_0;
}

fn func_2() -> bool {
    global0 = Struct_2(Struct_1(vec3<bool>(-global0.a.c != -global0.a.c, all(vec4<bool>(false, global0.a.e, false, true)), global0.a.d), global0.a.b, firstTrailingBit(-59457i), all(!(!vec4<bool>(global0.a.e, true, global0.a.a.x, true))), false));
    var var_0 = Struct_2(Struct_1(global0.a.a, global0.a.b, 6000i, u_input.a.x < _wgslsmith_clamp_u32(func_3(u_input.a.x, Struct_1(vec3<bool>(global0.a.e, false, false), global0.a.b, 1i, global0.a.e, false), u_input.a, global0.a.a), u_input.a.x, ~0u), !all(select(global0.a.a.xx, global0.a.a.yx, global0.a.a.yz))));
    global1 = _wgslsmith_f_op_f32(round(-113f));
    var_0 = Struct_2(Struct_1(var_0.a.a, _wgslsmith_f_op_f32(f32(-1f) * -1015f), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(global0.a.c, -1i, global0.a.c, var_0.a.c)), countOneBits(abs(vec4<i32>(global0.a.c, -1i, var_0.a.c, var_0.a.c)))), abs(-1i | global0.a.c) == (firstTrailingBit(var_0.a.c) << (_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) % 32u)), var_0.a.d));
    global1 = var_0.a.b;
    return global0.a.a.x;
}

fn func_1(arg_0: f32) -> i32 {
    let var_0 = 26986u;
    var var_1 = global0.a;
    global1 = _wgslsmith_f_op_f32(-210f - 419f);
    var_1 = Struct_1(select(vec3<bool>(!(global0.a.b != var_1.b), global0.a.d, any(vec3<bool>(global0.a.a.x, var_1.d, true))), vec3<bool>(true, reverseBits(var_0) <= abs(1u), any(!vec4<bool>(global0.a.a.x, false, var_1.e, false))), vec3<bool>(any(!vec3<bool>(var_1.a.x, false, true)), var_1.a.x, any(select(vec3<bool>(true, var_1.e, global0.a.a.x), vec3<bool>(true, global0.a.e, global0.a.d), true)))), 1000f, 2147483647i, !all(vec3<bool>(!var_1.d, all(var_1.a.yz), false)), (global0.a.e || !var_1.e) | (func_2() | !(var_1.a.x && false)));
    let var_2 = vec4<bool>(global0.a.e, var_1.e, any(select(select(!var_1.a.yx, global0.a.a.yz, select(vec2<bool>(global0.a.a.x, false), vec2<bool>(true, var_1.d), vec2<bool>(false, false))), var_1.a.yz, ~global0.a.c >= 38076i)), _wgslsmith_clamp_i32(global0.a.c, 36321i, i32(-1i) * -17319i) > min(-23795i, _wgslsmith_add_i32(~(-13711i), -2147483647i)));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(!global0.a.a.zy, !(!vec2<bool>(global0.a.d, true)), _wgslsmith_f_op_f32(abs(-956f)) < global0.a.b), vec2<bool>(any(!(!vec4<bool>(false, global0.a.d, true, true))), true | all(vec2<bool>(true, true))), vec2<bool>(false, true));
    global1 = global0.a.b;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.b) * global0.a.b) + 494f);
    var var_2 = ~u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(~select(func_1(_wgslsmith_f_op_f32(-1027f * 691f)), -(i32(-1i) * -26466i), _wgslsmith_f_op_f32(max(-727f, global0.a.b)) > 345f), select(max(-select(vec2<i32>(-2147483647i, 6052i), vec2<i32>(-2147483647i, global0.a.c), var_0.x), firstTrailingBit(firstTrailingBit(vec2<i32>(global0.a.c, global0.a.c)))), _wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(-4064i, -8975i) | vec2<i32>(54437i, global0.a.c)), _wgslsmith_mod_vec2_i32(vec2<i32>(-53902i, -55637i), vec2<i32>(global0.a.c, -57475i)) & firstTrailingBit(vec2<i32>(global0.a.c, global0.a.c)), _wgslsmith_sub_vec2_i32(vec2<i32>(global0.a.c, -1i), countOneBits(vec2<i32>(24205i, global0.a.c)))), abs(global0.a.c) <= -61332i), vec2<u32>(var_2.x, ~(~56739u)), select(select(~(-vec2<i32>(global0.a.c, global0.a.c)), _wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(-2147483647i, 47046i)), vec2<i32>(global0.a.c, global0.a.c) << (u_input.a % vec2<u32>(32u))), select(!vec2<bool>(global0.a.a.x, true), global0.a.a.zx, select(global0.a.a.yy, vec2<bool>(false, var_0.x), false))), reverseBits(vec2<i32>(abs(35391i), min(global0.a.c, global0.a.c))), any(!(!vec3<bool>(false, true, global0.a.a.x)))));
}

