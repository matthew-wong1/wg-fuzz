struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_1) -> f32 {
    var var_0 = !vec2<bool>(1u == firstTrailingBit(arg_2.c.x), false);
    global0 = arg_2.a.x;
    var_0 = select(vec2<bool>(true, true), vec2<bool>(false, arg_2.a.x), all(select(vec2<bool>(!var_0.x, all(vec4<bool>(var_0.x, false, var_0.x, false))), arg_2.a.yy, vec2<bool>(var_0.x || false, var_0.x))));
    var var_1 = arg_2;
    var var_2 = arg_2;
    return 1773f;
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> f32 {
    let var_0 = arg_1.b;
    var var_1 = arg_1.a.x;
    global0 = true;
    var var_2 = arg_1.c.xww;
    var var_3 = arg_1.c.zxw & vec3<u32>(arg_1.c.x, _wgslsmith_mult_u32(u_input.d, ~4294967295u), 4294967295u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(461f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_1.d.x)), _wgslsmith_f_op_f32(-413f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.x) * -491f))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec2<i32>) -> u32 {
    let var_0 = arg_0.b;
    var var_1 = arg_0;
    return _wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(37116u, arg_0.c.x, var_1.c.x), reverseBits(u_input.d)), 26012u, ~27213u, 4294967295u), var_1.c);
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> bool {
    let var_0 = select(!arg_2.a, select(!(!(!arg_2.a)), vec3<bool>(_wgslsmith_f_op_f32(abs(194f)) == _wgslsmith_f_op_f32(func_2(vec2<u32>(14889u, arg_2.c.x), 399f, Struct_1(vec3<bool>(arg_2.a.x, false, false), arg_0.b, arg_0.c, vec2<f32>(-2442f, -583f)))), all(select(arg_2.a.yz, arg_0.a.yx, vec2<bool>(arg_2.a.x, arg_2.a.x))), true), select(vec3<bool>(arg_2.c.x < arg_2.c.x, arg_2.a.x, all(vec3<bool>(arg_0.a.x, arg_2.a.x, true))), !vec3<bool>(arg_2.a.x, true, true), false)), !(!(_wgslsmith_f_op_f32(sign(-1000f)) != arg_0.d.x)));
    let var_1 = u_input.d;
    global0 = _wgslsmith_sub_u32(func_4(Struct_1(vec3<bool>(arg_2.a.x, false, arg_2.a.x), _wgslsmith_sub_vec3_i32(arg_2.b, arg_2.b), ~arg_0.c, arg_2.d), _wgslsmith_f_op_f32(func_3(vec3<bool>(false, false, true), arg_2)), -arg_0.b.yz), 0u) != ~70154u;
    let var_2 = select(vec3<bool>(true, true, false), select(arg_2.a, !(!(!vec3<bool>(arg_2.a.x, true, var_0.x))), !any(select(vec4<bool>(false, arg_2.a.x, arg_2.a.x, true), vec4<bool>(arg_0.a.x, arg_0.a.x, var_0.x, arg_2.a.x), false))), true);
    var var_3 = select(arg_0.a, arg_2.a, var_2.x);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(round(1026f)), any(vec4<bool>(true, true, true, true)))) + 943f), -1906f);
    global0 = all(vec3<bool>(all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * 228f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), true));
    var var_1 = vec4<u32>(abs(~(u_input.c.x & u_input.d)), _wgslsmith_mod_u32(~u_input.d, ~0u) << (4294967295u % 32u), u_input.d, 42383u);
    var_1 = vec4<u32>(~(~u_input.d), ~12681u, 4294967295u, select(1u, ~6703u, true));
    global0 = !any(vec4<bool>(true, true, true, func_1(Struct_1(vec3<bool>(true, true, false), vec3<i32>(u_input.a, u_input.b, -2147483647i), vec4<u32>(var_1.x, var_1.x, u_input.d, var_1.x), vec2<f32>(-992f, -608f)), -957f, Struct_1(vec3<bool>(false, false, false), vec3<i32>(u_input.b, 1i, u_input.a), vec4<u32>(var_1.x, var_1.x, 4294967295u, 19880u), vec2<f32>(401f, 260f))))) | true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x);
}

