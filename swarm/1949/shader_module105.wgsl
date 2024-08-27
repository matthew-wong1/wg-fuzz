struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: bool,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<u32> {
    global0 = Struct_1(vec2<i32>(global0.a.x, ~u_input.a.x), vec3<bool>(!all(select(vec3<bool>(global0.b.x, global0.c, true), global0.b, false)), true, true), (u_input.a.x > -min(u_input.a.x, -1i)) && select(any(vec4<bool>(global0.b.x, false, false, global0.b.x)), true, true), firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 1u), global0.d.zx), ~u_input.b, ~u_input.b, global0.d.x)) << (((~vec4<u32>(global0.d.x, 1u, 33615u, 4294967295u) ^ vec4<u32>(1u, u_input.b, global0.d.x, global0.d.x)) << (_wgslsmith_sub_vec4_u32(~vec4<u32>(global0.d.x, 0u, 53674u, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(global0.d.x, 0u, global0.d.x, u_input.b), vec4<u32>(39736u, u_input.b, 1u, 1u))) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_0 = global0.d.xw;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(763f, 152f)))))), _wgslsmith_f_op_f32(-760f * _wgslsmith_f_op_f32(f32(-1f) * -568f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1512f, _wgslsmith_f_op_f32(abs(297f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -237f) + _wgslsmith_f_op_f32(f32(-1f) * -184f))) - 1f));
    let var_2 = Struct_1(global0.a, global0.b, all(select(select(vec3<bool>(false, global0.c, global0.c), !global0.b, global0.c), !global0.b, all(!global0.b.xz))), global0.d);
    var var_3 = ~(~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(max(vec3<u32>(22856u, global0.d.x, var_0.x), var_2.d.wzy), global0.d.yzz), var_2.d.xzw));
    return global0.d;
}

fn func_2(arg_0: vec2<bool>, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_1(global0.a, select(vec3<bool>(global0.c, global0.b.x, false), vec3<bool>(false, all(global0.b.yx), all(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false))), !select(vec3<bool>(true, global0.c, arg_0.x), vec3<bool>(true, arg_0.x, arg_0.x), global0.c && false)), !any(!(!global0.b.xy)), ~(~(~_wgslsmith_mult_vec4_u32(global0.d, vec4<u32>(1u, global0.d.x, global0.d.x, u_input.b)))));
    global0 = Struct_1(u_input.a.zz, global0.b, true, func_3());
    let var_1 = 469f;
    let var_2 = ~vec4<u32>(~(~21449u), countOneBits(_wgslsmith_dot_vec2_u32(global0.d.yw, vec2<u32>(global0.d.x, var_0.d.x))), firstLeadingBit(var_0.d.x), 70752u) & (global0.d << ((select(vec4<u32>(25304u, 4294967295u, 4294967295u, 47394u), abs(var_0.d), false) >> (global0.d % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_3 = global0.b;
    return Struct_1(-vec2<i32>(var_0.a.x, ~(~var_0.a.x)), var_0.b, global0.b.x && (_wgslsmith_clamp_u32(1u, u_input.b, 13138u) <= u_input.b), firstLeadingBit(vec4<u32>(global0.d.x, 8885u, countOneBits(32826u), 33963u)));
}

fn func_1(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1052f, -1000f, -1000f)), vec3<f32>(829f, 530f, 1065f), select(vec3<bool>(arg_2.b.x, false, false), arg_3.b, vec3<bool>(true, true, arg_1.x))))))));
    var var_1 = Struct_1(global0.a ^ arg_2.a, vec3<bool>(!(select(arg_1.x, arg_2.b.x, true) != arg_3.c), !arg_3.b.x, false), global0.b.x, _wgslsmith_add_vec4_u32(abs(~vec4<u32>(0u, arg_2.d.x, 4294967295u, 4294967295u)), global0.d & vec4<u32>(min(49721u, 115359u), 4294967295u, _wgslsmith_dot_vec3_u32(arg_2.d.wzz, arg_2.d.xxz), 1u)));
    global0 = arg_2;
    let var_2 = func_2(select(!arg_3.b.xz, !vec2<bool>(!arg_3.b.x, arg_1.x | arg_3.b.x), true), 400f);
    var var_3 = arg_2;
    return select(vec4<bool>(true, false, false, arg_2.b.x && true), !(!select(!vec4<bool>(var_2.c, false, true, false), arg_1, select(vec4<bool>(false, arg_3.c, arg_2.b.x, var_3.b.x), arg_1, var_1.b.x))), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(u_input.a.x);
    var var_1 = !vec3<bool>(all(func_1(global0.c, vec4<bool>(global0.b.x, global0.b.x, global0.b.x, false), Struct_1(u_input.a.xy, vec3<bool>(false, true, global0.c), global0.c, vec4<u32>(4294967295u, global0.d.x, u_input.b, u_input.b)), Struct_1(global0.a, global0.b, global0.c, vec4<u32>(u_input.b, u_input.b, 13016u, u_input.b)))) || true, all(!(!global0.b.yy)), all(global0.b.yx));
    let var_2 = 40627i;
    var_1 = global0.b;
    var_1 = global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(1i, firstLeadingBit(var_0) | (_wgslsmith_dot_vec2_i32(vec2<i32>(1i, global0.a.x), -vec2<i32>(u_input.a.x, global0.a.x)) ^ u_input.a.x), firstLeadingBit(select(global0.a, ~(~u_input.a.xz), var_1.yz)), u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -984f)))));
}

