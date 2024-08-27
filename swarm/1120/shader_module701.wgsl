struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_2,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> vec2<u32> {
    let var_0 = false;
    return arg_0.e.zz;
}

fn func_2() -> Struct_5 {
    var var_0 = 1u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -600f))), -1341f));
    var_0 = ~_wgslsmith_dot_vec2_u32(func_3(Struct_3(u_input.d & vec4<i32>(u_input.b.x, u_input.c.x, u_input.b.x, 1i), Struct_1(840f, false), Struct_2(u_input.d.xz, -1215f, u_input.d), u_input.b, vec3<u32>(u_input.a.x, u_input.e.x, 0u))), u_input.a);
    let var_2 = Struct_5(-2147483647i, _wgslsmith_f_op_f32(f32(-1f) * -163f), Struct_2((_wgslsmith_div_vec2_i32(u_input.c, u_input.d.zw) | u_input.c) ^ select(~vec2<i32>(u_input.c.x, 2147483647i), vec2<i32>(u_input.b.x, u_input.c.x), true), 795f, select(-abs(vec4<i32>(10830i, -16627i, u_input.d.x, 72066i)), vec4<i32>(-1i | u_input.b.x, ~(-42604i), u_input.d.x, 1i), vec4<bool>(true, -35786i >= u_input.b.x, true, false))));
    var var_3 = vec2<bool>(!(!((u_input.d.x & 20621i) <= -var_2.a)), false);
    return var_2;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<bool>) -> Struct_5 {
    return func_2();
}

fn func_4(arg_0: Struct_5) -> bool {
    let var_0 = vec3<i32>(func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1516f, -1000f, arg_0.c.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, arg_0.c.b, -620f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, arg_0.c.b, 499f) + vec3<f32>(900f, -151f, -1251f))), select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, false), true))).a, func_2().a, 2147483647i);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_2().b, _wgslsmith_f_op_f32(-arg_0.c.b)))), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, 1u), vec3<u32>(4294967295u, 17931u, u_input.a.x)) < u_input.a.x);
    var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2().c.b * _wgslsmith_f_op_f32(-arg_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.b))) * -364f), true);
    let var_2 = max(~vec3<u32>(~min(4294967295u, u_input.a.x), u_input.a.x, 13162u), select(~(~abs(vec3<u32>(56424u, u_input.e.x, u_input.a.x))), vec3<u32>(~77723u, u_input.e.x, 0u), all(!select(vec2<bool>(var_1.b, var_1.b), vec2<bool>(false, true), vec2<bool>(var_1.b, var_1.b)))));
    var var_3 = vec2<f32>(-307f, arg_0.c.b);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(select(vec2<bool>(true, all(vec2<bool>(true, false))), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), func_4(func_1(_wgslsmith_div_vec3_f32(vec3<f32>(-495f, -2009f, 215f), vec3<f32>(-635f, 1477f, -302f)), select(vec2<bool>(false, true), vec2<bool>(true, false), false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1468f, 1217f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(557f, 416f) + _wgslsmith_f_op_f32(-615f + 1098f)), -1509f))), u_input.d.yz, _wgslsmith_dot_vec3_u32(min(~vec3<u32>(19068u, 0u, 62838u), ~vec3<u32>(0u, 0u, 11745u)), ~vec3<u32>(5481u, u_input.e.x, u_input.a.x)) ^ (countOneBits(9587u) << ((min(u_input.a.x, 4294967295u) & ~1074u) % 32u)), -u_input.c, u_input.d);
}

