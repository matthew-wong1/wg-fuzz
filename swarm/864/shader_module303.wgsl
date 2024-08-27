struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> bool {
    let var_0 = all(!vec3<bool>(true, !global0.a | any(vec3<bool>(true, true, true)), false));
    var var_1 = Struct_2(true);
    var_1 = Struct_2(any(!vec2<bool>(all(vec3<bool>(var_1.a, global0.a, true)), true)));
    global0 = Struct_2(all(vec4<bool>(true, true, true, select(var_1.a, var_1.a, false))));
    var_1 = Struct_2(var_0);
    return any(!select(!(!vec2<bool>(var_1.a, true)), vec2<bool>(true, true), vec2<bool>(true, u_input.b.x >= u_input.b.x)));
}

fn func_1() -> vec4<bool> {
    let var_0 = ~vec4<u32>(u_input.a, ~firstTrailingBit(firstLeadingBit(u_input.a)), 1u, 4294967295u);
    var var_1 = Struct_2(true);
    var var_2 = Struct_2(global0.a);
    var var_3 = 1i;
    var_3 = _wgslsmith_sub_i32(countOneBits(-33685i), _wgslsmith_add_i32(countOneBits(2147483647i), -35186i));
    return vec4<bool>(func_2(), var_1.a, true, ~(~(~u_input.b.x)) < u_input.a);
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = -1000f;
    var_0 = 506f;
    let var_1 = Struct_3(Struct_1(firstLeadingBit(_wgslsmith_add_i32(2147483647i, -19258i)), vec2<i32>(1i, 1i), u_input.b.x, vec2<f32>(_wgslsmith_f_op_f32(1136f * _wgslsmith_f_op_f32(187f + arg_0)), _wgslsmith_f_op_f32(round(arg_0)))));
    global0 = Struct_2(true);
    var var_2 = Struct_2(true);
    return _wgslsmith_f_op_f32(arg_0 * arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(all(vec3<bool>(all(vec2<bool>(false, false)), !global0.a, global0.a)) == false);
    global0 = Struct_2(global0.a);
    let var_0 = vec2<bool>(any(select(func_1(), !(!vec4<bool>(global0.a, true, true, true)), !(!vec4<bool>(false, global0.a, true, global0.a)))), !(_wgslsmith_f_op_f32(f32(-1f) * -1084f) < _wgslsmith_f_op_f32(func_3(-1327f))));
    global0 = Struct_2(!any(vec3<bool>(func_2(), func_2(), all(vec4<bool>(false, true, global0.a, var_0.x)))));
    var var_1 = func_1().zz;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(436f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(896f)) + _wgslsmith_f_op_f32(1261f + 969f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -263f) - 1631f)), vec3<u32>(_wgslsmith_dot_vec2_u32(abs(u_input.b.zy ^ vec2<u32>(u_input.b.x, u_input.a)), u_input.b.ww), min(_wgslsmith_mult_u32(36284u, 0u) & _wgslsmith_add_u32(6994u, u_input.b.x), ~72971u | u_input.b.x), 77639u), countOneBits(-2147483647i << ((max(u_input.b.x, 67613u) ^ ~1u) % 32u)), 4340i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(514f * 1061f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2400f - -1033f) - 1953f))));
}

