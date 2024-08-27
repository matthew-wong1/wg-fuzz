struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: u32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3) -> bool {
    let var_0 = Struct_3(arg_0.a, arg_0.b, select(max(~arg_0.c, firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0.c, arg_0.c, u_input.a), vec4<u32>(32244u, 0u, u_input.a, arg_0.c)))), _wgslsmith_dot_vec3_u32(~abs(vec3<u32>(13304u, arg_0.c, arg_0.c)), ~vec3<u32>(arg_0.c, 4294967295u, arg_0.c)), !(any(arg_0.b.wz) | arg_0.b.x)));
    var var_1 = Struct_4(vec4<bool>(false, true, true, any(select(arg_0.b, select(vec4<bool>(var_0.b.x, true, arg_0.b.x, var_0.b.x), vec4<bool>(false, var_0.b.x, var_0.b.x, true), var_0.b.x), arg_0.b))));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-645f, 706f, var_0.a.x, _wgslsmith_f_op_f32(min(arg_0.a.x, arg_0.a.x))))), vec4<f32>(-207f, arg_0.a.x, -2067f, 1000f), var_0.b));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_f_op_f32(-arg_0.a.x))))));
    var var_4 = 29715u >= _wgslsmith_mult_u32(1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c, 56448u, 63155u), ~vec3<u32>(u_input.a, u_input.a, arg_0.c)));
    return any(select(select(select(var_0.b.xyx, arg_0.b.zyy, !arg_0.b.xwz), select(select(var_1.a.yxz, vec3<bool>(false, arg_0.b.x, var_0.b.x), vec3<bool>(false, var_0.b.x, arg_0.b.x)), arg_0.b.yzy, !var_1.a.zyy), select(!arg_0.b.zyy, select(vec3<bool>(arg_0.b.x, var_1.a.x, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), !vec3<bool>(false, arg_0.b.x, true))), vec3<bool>(true, var_0.b.x, u_input.a >= ~u_input.a), select(select(select(vec3<bool>(var_0.b.x, var_1.a.x, var_0.b.x), vec3<bool>(true, true, arg_0.b.x), false), vec3<bool>(var_0.b.x, false, true), true), vec3<bool>(any(var_0.b.wz), !arg_0.b.x, var_1.a.x), arg_0.b.x)));
}

fn func_2() -> Struct_4 {
    var var_0 = true;
    var_0 = !(!any(vec3<bool>(true, false, true)) & (1i >= u_input.d));
    let var_1 = 372f;
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -693f, var_1))))))), vec4<bool>(!any(vec2<bool>(true, true)), true, all(select(vec2<bool>(true, true), vec2<bool>(false, true), select(true, true, false))), !func_3(Struct_3(vec3<f32>(306f, -302f, var_1), vec4<bool>(false, false, false, true), 4294967295u))), ~countOneBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, 28637u) << (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(ceil(var_2.a.x)), 1373f, 837f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1, 755f, var_1, var_1))), _wgslsmith_f_op_vec4_f32(vec4<f32>(521f, var_2.a.x, -2117f, 1009f) - vec4<f32>(var_1, var_1, -2649f, var_2.a.x)))))) - vec4<f32>(2910f, 609f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1)))));
    return Struct_4(select(!(!var_2.b), select(!(!var_2.b), !(!vec4<bool>(var_2.b.x, false, var_2.b.x, var_2.b.x)), select(var_2.b.x, true, var_2.b.x) || any(vec2<bool>(true, var_2.b.x))), var_2.b.x));
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: vec2<u32>, arg_3: vec4<u32>) -> bool {
    let var_0 = u_input.b;
    var var_1 = func_2();
    let var_2 = all(func_2().a) && ((-(u_input.d & 1i) <= u_input.c) && !any(select(vec3<bool>(var_1.a.x, true, false), vec3<bool>(true, var_1.a.x, var_1.a.x), true)));
    let var_3 = i32(-1i) * -reverseBits(_wgslsmith_sub_i32(reverseBits(-20741i), ~var_0));
    let var_4 = ~(~firstTrailingBit(~arg_3));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~min(vec2<u32>(0u, ~u_input.a), vec2<u32>(1u, 26920u)), vec2<bool>(func_1(u_input.a, vec3<u32>(u_input.a, u_input.a, u_input.a), vec2<u32>(73243u, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 64444u, u_input.a, u_input.a), vec4<u32>(u_input.a, 27804u, u_input.a, 49221u))) == true, u_input.a >= 1u));
    let var_1 = Struct_2(vec2<u32>(~u_input.a, 4294967295u), !(!var_0.b));
    let var_2 = countOneBits(max(~var_0.a.x, ~firstLeadingBit(min(var_1.a.x, var_0.a.x))));
    var_0 = Struct_2(vec2<u32>(u_input.a, 1u), vec2<bool>(var_1.b.x, var_1.b.x && true));
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(4007f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(377f, 662f, var_1.b.x))))), var_0.b.x));
    let var_4 = ~var_1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, max(~_wgslsmith_sub_vec3_u32(vec3<u32>(70789u, 0u, var_1.a.x), vec3<u32>(47894u, var_0.a.x, 3287u)), vec3<u32>(_wgslsmith_dot_vec2_u32(var_1.a, var_0.a), select(1u, var_0.a.x, var_0.b.x), reverseBits(4294967295u))) | vec3<u32>(firstLeadingBit(_wgslsmith_mult_u32(65168u, var_2)), 0u, ~(~var_2)), ~(~(~67779u | var_1.a.x)), select(~0u, ~_wgslsmith_mod_u32(~var_0.a.x, ~0u), all(!var_1.b)));
}

