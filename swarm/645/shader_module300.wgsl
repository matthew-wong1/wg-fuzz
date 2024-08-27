struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> bool {
    let var_0 = arg_0;
    global0 = var_0;
    let var_1 = var_0;
    let var_2 = Struct_1(vec2<bool>(!(!global0.a.x), global0.a.x), abs(1u));
    var var_3 = u_input.c.x;
    return global0.a.x;
}

fn func_2(arg_0: bool, arg_1: vec2<u32>, arg_2: vec3<bool>) -> f32 {
    global0 = Struct_1(select(vec2<bool>(any(select(arg_2.xx, arg_2.yx, arg_0)), func_3(Struct_1(vec2<bool>(arg_2.x, true), arg_1.x), arg_0 || arg_2.x)), vec2<bool>(true, true), global0.a), 17844u);
    let var_0 = Struct_1(vec2<bool>(u_input.c.x < firstTrailingBit(min(20910i, u_input.c.x)), func_3(Struct_1(vec2<bool>(false, true), 4294967295u), all(select(vec2<bool>(true, arg_0), global0.a, arg_2.x)))), u_input.b.x);
    global0 = Struct_1(vec2<bool>(arg_0, var_0.a.x), ~min(121271u, 4294967295u));
    let var_1 = u_input.c.x;
    var var_2 = var_0;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-175f + 962f) + _wgslsmith_f_op_f32(f32(-1f) * -1312f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -325f)))))))));
}

fn func_1(arg_0: i32, arg_1: vec4<f32>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(func_2(!(!all(!vec4<bool>(true, false, false, global0.a.x))), reverseBits(select(abs(u_input.b.yx), _wgslsmith_mod_vec2_u32(u_input.b.zw, u_input.a.zz), global0.a) | u_input.b.yx), !vec3<bool>(true, global0.a.x, _wgslsmith_f_op_f32(-arg_1.x) > arg_1.x)));
    let var_1 = arg_1.x;
    var var_2 = 74542u;
    let var_3 = Struct_1(select(global0.a, vec2<bool>(false, false), true), _wgslsmith_add_u32(_wgslsmith_mod_u32(countOneBits(global0.b & global0.b), u_input.a.x), ~global0.b));
    let var_4 = Struct_1(var_3.a, firstLeadingBit(16487u));
    return vec3<bool>(any(!vec4<bool>(select(true, global0.a.x, true), false, any(vec2<bool>(false, false)), true)), -3086f <= arg_1.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec2<bool>(any(func_1(u_input.c.x | u_input.c.x, vec4<f32>(1238f, 450f, 170f, -1371f))), global0.a.x));
    var_0 = any(!select(!(!vec4<bool>(false, global0.a.x, global0.a.x, false)), vec4<bool>(global0.a.x || global0.a.x, global0.a.x, any(vec4<bool>(global0.a.x, global0.a.x, true, global0.a.x)), false || global0.a.x), !select(global0.a.x, false, global0.a.x)));
    var var_1 = ~u_input.b;
    var var_2 = !select(select(func_1(-48643i, vec4<f32>(560f, 374f, -395f, -1964f)), !select(vec3<bool>(false, false, false), vec3<bool>(false, global0.a.x, true), vec3<bool>(true, global0.a.x, false)), false), vec3<bool>(true, u_input.c.x >= _wgslsmith_sub_i32(2147483647i, u_input.c.x), true), func_1(~_wgslsmith_dot_vec2_i32(u_input.c.yw, u_input.c.zx), vec4<f32>(542f, 1f, 1f, -765f)));
    let var_3 = !(!all(vec3<bool>(any(global0.a), true, var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(min(~u_input.b, vec4<u32>(min(~1u, 1u), var_1.x, _wgslsmith_div_u32(_wgslsmith_clamp_u32(global0.b, 0u, 40772u), firstTrailingBit(0u)), _wgslsmith_div_u32(var_1.x, u_input.b.x))), global0.b, 15029i, u_input.c.x);
}

