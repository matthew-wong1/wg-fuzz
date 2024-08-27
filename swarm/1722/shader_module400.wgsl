struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: i32,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: vec4<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = firstLeadingBit(vec2<i32>(-56i, -1i) ^ _wgslsmith_mod_vec2_i32(u_input.a.xz, u_input.c.xw));
    let var_1 = Struct_5(Struct_1(u_input.e.x, vec4<bool>(arg_0, true, ~u_input.e.x >= u_input.b, !arg_0), select(vec3<bool>(true, true, true), !(!vec3<bool>(arg_0, false, true)), false)), _wgslsmith_sub_u32(39495u, _wgslsmith_mod_u32(0u, u_input.e.x ^ u_input.b)), select(vec4<bool>(arg_0, true, any(!vec3<bool>(arg_0, arg_0, arg_0)), true), vec4<bool>(arg_0, any(select(vec4<bool>(false, true, arg_0, arg_0), vec4<bool>(arg_0, false, arg_0, true), vec4<bool>(false, false, arg_0, false))), true && any(vec4<bool>(false, false, true, false)), true), vec4<bool>(!(arg_0 | false), arg_0, true, true)), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.a.x, var_0.x, u_input.c.x) ^ u_input.a.wxz), select(~u_input.a.xxz, vec3<i32>(2147483647i, var_0.x, -2147483647i) >> (u_input.e.xyx % vec3<u32>(32u)), true)) & (u_input.d.x | 0i));
    let var_2 = Struct_1(1u, vec4<bool>(any(vec2<bool>(arg_0, any(vec3<bool>(false, var_1.c.x, false)))), !(1f <= _wgslsmith_f_op_f32(round(-117f))), !all(!var_1.c.zw), any(!var_1.c.yxx)), vec3<bool>(all(select(!vec4<bool>(var_1.c.x, true, true, var_1.a.b.x), vec4<bool>(true, var_1.c.x, arg_0, true), var_1.c)), true, reverseBits(1u) < u_input.b));
    var var_3 = var_1.a;
    var_3 = var_1.a;
    return 283f;
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = Struct_2(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), any(vec4<bool>(false, true, false, true))));
    var var_1 = u_input.b;
    let var_2 = Struct_2(!var_0.a);
    var var_3 = Struct_2(vec3<bool>(var_2.a.x, ~u_input.e.x != (_wgslsmith_add_u32(0u, u_input.e.x) << (42738u % 32u)), true));
    return _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(true)) - _wgslsmith_f_op_f32(arg_0 + arg_0))));
}

fn func_1() -> Struct_5 {
    let var_0 = select(select(vec4<bool>(any(vec4<bool>(true, false, true, false)), true, all(vec3<bool>(true, false, true)) && true, true), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), false), true), true), !vec4<bool>(false, true, _wgslsmith_f_op_f32(sign(-644f)) != _wgslsmith_f_op_f32(func_2(-142f)), all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true)))), any(select(vec2<bool>(false, select(true, true, true)), vec2<bool>(true, true), vec2<bool>(true, all(vec3<bool>(false, true, false))))));
    let var_1 = ~1u;
    var var_2 = Struct_3(var_0.zzy);
    var var_3 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(countOneBits(~14738u), abs(1u)), vec2<u32>(~var_1, 0u), u_input.e.wy);
    return Struct_5(Struct_1(~_wgslsmith_sub_u32(u_input.b, var_1), var_0, !(!vec3<bool>(true, var_0.x, var_0.x))), 14637u, select(!select(var_0, !var_0, 2147483647i >= u_input.a.x), !var_0, !var_0.x | var_0.x), ~(-30887i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = Struct_1(~(~51018u), !(!vec4<bool>(func_1().c.x, true, 1i <= u_input.c.x, 1u > u_input.e.x)), select(vec3<bool>(true, all(vec3<bool>(true, true, true)), !(!var_0.c.x)), vec3<bool>((12077u >> (var_0.b % 32u)) >= u_input.e.x, all(!var_0.a.c.zz), any(vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x))), true));
    var_0 = func_1();
    var_0 = func_1();
    var_1 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2427f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1507f + -1157f) + _wgslsmith_f_op_f32(max(727f, -791f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -324f), -614f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1393f - 116f))));
}

