struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> u32 {
    global0 = Struct_1(!select(!global0.b, global0.a, true), global0.b);
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-163f, _wgslsmith_f_op_f32(floor(1323f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(105f)))))));
    global0 = Struct_1(select(!select(global0.b, global0.b, true), !(!select(vec4<bool>(true, false, global0.a.x, global0.a.x), vec4<bool>(false, global0.a.x, true, global0.a.x), vec4<bool>(global0.a.x, global0.b.x, false, global0.b.x))), false), global0.a);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -1000f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_div_f32(-1000f, -311f))))));
    return 28640u;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = arg_0;
    var var_0 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 100398u), vec2<u32>(17027u, 1u)), ~42163u, firstLeadingBit(1u)), vec3<u32>(~1u, func_3(), 0u));
    let var_1 = arg_0;
    let var_2 = abs(vec2<u32>(_wgslsmith_dot_vec2_u32(max(~vec2<u32>(55776u, 1u), vec2<u32>(1u, 1u) << (vec2<u32>(1u, 0u) % vec2<u32>(32u))), _wgslsmith_mod_vec2_u32(min(vec2<u32>(43812u, 8529u), vec2<u32>(4294967295u, 0u)), countOneBits(vec2<u32>(35464u, 29584u)))), 1u));
    var var_3 = select(arg_0.a.yxy, select(select(vec3<bool>(var_2.x == var_2.x, !global0.a.x, true), select(!var_1.b.zxw, vec3<bool>(true, true, var_1.a.x), !arg_0.a.x), select(select(arg_0.a.zxx, var_1.a.wzx, vec3<bool>(var_1.a.x, true, global0.a.x)), arg_0.a.zzy, arg_0.b.x)), !vec3<bool>(select(true, false, false), !arg_0.a.x, arg_0.a.x), !vec3<bool>(arg_0.b.x, arg_0.a.x, any(vec2<bool>(false, false)))), !(!vec3<bool>(var_1.b.x, false, false)));
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = func_2(arg_1);
    return func_2(Struct_1(global0.a, arg_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(Struct_1(select(!vec4<bool>(false, global0.b.x, true, true), global0.b, any(!vec4<bool>(false, true, global0.a.x, global0.a.x))), global0.a), Struct_1(select(vec4<bool>(true, global0.a.x, false, true || global0.b.x), vec4<bool>(true, true, global0.b.x, select(global0.b.x, global0.a.x, global0.a.x)), true), global0.b));
    global0 = func_1(func_1(func_2(Struct_1(vec4<bool>(true, true, false, false), func_2(Struct_1(global0.a, vec4<bool>(global0.a.x, true, true, true))).b)), Struct_1(func_2(Struct_1(vec4<bool>(global0.a.x, false, true, false), vec4<bool>(global0.b.x, false, global0.b.x, false))).a, vec4<bool>(global0.b.x, func_1(Struct_1(vec4<bool>(global0.a.x, false, global0.b.x, true), global0.b), Struct_1(vec4<bool>(false, true, true, false), vec4<bool>(global0.b.x, global0.a.x, true, global0.b.x))).a.x, true, global0.a.x))), func_2(func_2(func_2(func_1(Struct_1(vec4<bool>(true, false, global0.a.x, global0.a.x), global0.b), Struct_1(vec4<bool>(global0.b.x, false, false, global0.a.x), global0.b))))));
    global0 = func_1(Struct_1(select(vec4<bool>(global0.b.x, true, true, true), vec4<bool>(true, global0.a.x, all(global0.b), true), func_1(func_1(Struct_1(vec4<bool>(global0.b.x, global0.b.x, false, false), vec4<bool>(true, true, true, global0.a.x)), Struct_1(vec4<bool>(global0.b.x, true, false, false), global0.b)), Struct_1(global0.a, vec4<bool>(false, global0.b.x, global0.a.x, false))).b.x), global0.b), Struct_1(vec4<bool>(true, all(!global0.b.zxw), true, false), !global0.a));
    let var_0 = 1i <= -firstTrailingBit(-(~u_input.a));
    var var_1 = vec4<f32>(912f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-808f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(229f)) - _wgslsmith_f_op_f32(abs(1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1134f, -1023f)) + _wgslsmith_f_op_f32(sign(-1358f))))) + 1573f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -301f)));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(select(var_1.x, var_1.x, var_0)), _wgslsmith_f_op_f32(var_1.x + var_1.x)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1049f, -123f, 2278f, -1076f)))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1868f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-370f - 723f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1915f + 2019f))), var_1.x) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + -108f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -791f), 615f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1446f - var_1.x))))));
    let var_2 = func_2(Struct_1(global0.a, func_2(func_1(Struct_1(vec4<bool>(global0.b.x, var_0, true, true), global0.b), Struct_1(vec4<bool>(var_0, global0.b.x, false, true), global0.a))).b)).a.x;
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1719f), var_1.x, _wgslsmith_f_op_f32(select(var_1.x, var_1.x, var_0)), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>((~u_input.a | u_input.a) ^ u_input.a, u_input.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_1.x)))), var_1.x, var_1.yzx, _wgslsmith_dot_vec4_i32(countOneBits(reverseBits(min(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 7859i)))), _wgslsmith_clamp_vec4_i32(firstLeadingBit(~vec4<i32>(1i, u_input.a, u_input.a, 1i)), firstLeadingBit(-vec4<i32>(19454i, u_input.a, u_input.a, u_input.a)), _wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a, -1i, u_input.a, 63966i), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, 0i, u_input.a, u_input.a))))));
}

