struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<f32>,
    d: Struct_1,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    var var_0 = vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), 19778u > global0.a)) && !(!all(vec4<bool>(false, true, false, true))), true);
    var_0 = vec2<bool>(!((reverseBits(2147483647i) & -u_input.c) >= _wgslsmith_add_i32(~u_input.c, 25738i)), !all(!select(vec4<bool>(var_0.x, true, false, false), vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(false, true, false, false))));
    var_0 = select(select(select(vec2<bool>(all(vec2<bool>(false, false)), true), select(vec2<bool>(var_0.x, true), vec2<bool>(false, var_0.x), !vec2<bool>(true, var_0.x)), true), select(select(select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x)), select(vec2<bool>(false, var_0.x), vec2<bool>(true, var_0.x), vec2<bool>(false, var_0.x)), true), !select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, var_0.x), var_0.x), vec2<bool>(true, all(vec4<bool>(var_0.x, true, var_0.x, var_0.x)))), !(!select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, true), true))), select(vec2<bool>((var_0.x || var_0.x) == var_0.x, false), vec2<bool>(any(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, var_0.x, true), vec3<bool>(false, true, var_0.x))), any(!vec3<bool>(var_0.x, var_0.x, true))), vec2<bool>(all(vec2<bool>(var_0.x, true)), true)), true);
    global0 = Struct_1(~_wgslsmith_add_u32(global0.a, global0.a));
    var var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global0.a), u_input.a.xy), ~47572u), u_input.a.yy)), var_0.x, vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-434f - 305f)), _wgslsmith_f_op_f32(f32(-1f) * -270f))), -395f), Struct_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~u_input.a.zx, u_input.a.xz), ~(global0.a ^ global0.a))), u_input.a.xz);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_1.c.x))));
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> f32 {
    var var_0 = !any(vec2<bool>(true, true));
    var_0 = !((firstTrailingBit(abs(49771u)) ^ ~1u) < _wgslsmith_mult_u32(81444u, arg_0.d.a));
    global0 = Struct_1(4294967295u);
    let var_1 = vec4<i32>(u_input.b.x, -1i | u_input.c, u_input.b.x, _wgslsmith_sub_i32(~u_input.c, i32(-1i) * -_wgslsmith_clamp_i32(u_input.b.x, 56493i, -2147483647i)));
    let var_2 = arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * -1001f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(168f))), !(var_2.c.x != var_2.c.x)))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(~global0.a), true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1191f - -1346f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(30596u), false, vec2<f32>(1000f, 170f), Struct_1(global0.a), u_input.a.yx), global0.a)))))), Struct_1(max(1u, min(3832u, ~9391u))), firstTrailingBit(abs(u_input.a.yx) ^ u_input.a.yx));
    var_0 = Struct_2(Struct_1(1u), var_0.b, vec2<f32>(var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x * 804f))), Struct_1(global0.a), vec2<u32>(76392u, global0.a));
    var var_1 = 35886u;
    let var_2 = u_input.b;
    var var_3 = Struct_2(var_0.d, (~_wgslsmith_clamp_i32(var_2.x, u_input.c, -2147483647i) << (4294967295u % 32u)) < countOneBits(1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c + _wgslsmith_f_op_vec2_f32(var_0.c + var_0.c)))), var_0.d, countOneBits(u_input.a.yz));
    return Struct_1(_wgslsmith_mult_u32(_wgslsmith_div_u32(1u, u_input.a.x), u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(abs(u_input.a.x));
    global0 = func_1(u_input.c);
    global0 = var_0;
    global0 = func_1(-firstLeadingBit(4970i));
    global0 = func_1(abs(~75871i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(210f * -2366f)))));
}

