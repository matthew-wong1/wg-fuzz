struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
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

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_2) -> f32 {
    var var_0 = Struct_3(arg_2.a.b.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.a, 935f))))));
    var_0 = Struct_3(arg_0.c.b.xx, _wgslsmith_f_op_vec2_f32(-var_0.b));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.b.x)) * _wgslsmith_f_op_f32(-arg_2.d.a)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_0.b.x)), _wgslsmith_f_op_f32(select(arg_2.c.a, var_0.b.x, arg_2.e.x))))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.a)))), var_0.b.x))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<i32>) -> u32 {
    let var_0 = vec3<i32>(~countOneBits(select(countOneBits(arg_1.x), 0i, true)), 2147483647i, -10486i);
    let var_1 = Struct_3(u_input.c, vec2<f32>(1283f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(659f, vec4<i32>(u_input.e, -842i, arg_1.x, 0i)), Struct_1(734f, vec4<i32>(arg_1.x, arg_1.x, arg_1.x, var_0.x)), Struct_1(1264f, vec4<i32>(var_0.x, 26950i, -2147483647i, 2147483647i)), Struct_1(2478f, vec4<i32>(2147483647i, 228i, u_input.d, -2147483647i)), vec3<bool>(false, true, true)), vec4<i32>(7907i, 1i, -2147483647i, u_input.a), Struct_2(Struct_1(1017f, vec4<i32>(var_0.x, 53883i, u_input.d, arg_1.x)), Struct_1(1482f, vec4<i32>(0i, var_0.x, var_0.x, -8148i)), Struct_1(-377f, vec4<i32>(arg_1.x, u_input.a, arg_1.x, 2147483647i)), Struct_1(1851f, vec4<i32>(23131i, 1i, -62491i, u_input.c.x)), vec3<bool>(true, true, false)))))));
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(828f, var_1.b.x)))));
    let var_4 = Struct_1(var_1.b.x, -firstLeadingBit(select(vec4<i32>(0i, 0i, 1i, -40989i) | vec4<i32>(1226i, arg_1.x, u_input.c.x, var_1.a.x), ~vec4<i32>(arg_1.x, u_input.c.x, 48212i, -7272i), any(vec3<bool>(var_2, false, false)))));
    return reverseBits((~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, arg_0.x, 23640u, arg_0.x), vec4<u32>(u_input.b.x, u_input.b.x, 1u, arg_0.x)) >> (0u % 32u)) & arg_0.x);
}

fn func_1(arg_0: u32) -> StorageBuffer {
    var var_0 = firstLeadingBit(arg_0) >= u_input.b.x;
    var var_1 = u_input.e;
    var var_2 = Struct_1(1635f, -abs(firstLeadingBit(abs(vec4<i32>(u_input.c.x, u_input.c.x, -1i, u_input.a)))));
    var_0 = true;
    let var_3 = _wgslsmith_sub_vec2_u32(max(_wgslsmith_clamp_vec2_u32(vec2<u32>(25650u, u_input.b.x | 43513u), ~(~vec2<u32>(arg_0, u_input.b.x)), firstTrailingBit(~vec2<u32>(17135u, arg_0))), _wgslsmith_mult_vec2_u32(u_input.b, vec2<u32>(func_2(vec2<u32>(27807u, arg_0), vec2<i32>(u_input.e, var_2.b.x)), countOneBits(u_input.b.x)))), min(~_wgslsmith_sub_vec2_u32(select(vec2<u32>(27032u, 1u), vec2<u32>(4294967295u, arg_0), vec2<bool>(true, true)), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.b.x), u_input.b)), ~u_input.b));
    return StorageBuffer(u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(41969u);
}

