struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-215f);

var<private> global1: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(849f), Struct_1(1026f), Struct_1(-1046f), Struct_1(1027f), Struct_1(-205f), Struct_1(151f), Struct_1(-1649f), Struct_1(-1970f), Struct_1(-1036f), Struct_1(-1000f), Struct_1(1609f));

var<private> global2: vec2<u32> = vec2<u32>(11420u, 26186u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec2<i32>, arg_3: vec3<bool>) -> f32 {
    var var_0 = 1089f;
    let var_1 = u_input.b;
    let var_2 = _wgslsmith_mult_u32(firstTrailingBit(~(global2.x | global2.x)), firstTrailingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.a.x), u_input.a.xx))) ^ u_input.a.x;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(exp2(global0.a)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(943f)) + 152f) - var_3.a);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3) -> f32 {
    global2 = ~select(~abs(u_input.a.xz >> (u_input.a.yy % vec2<u32>(32u))), vec2<u32>(~69507u, ~u_input.a.x), true);
    global1 = array<Struct_1, 11>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    global0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-426f + var_0.a) * 1028f), -3510f)));
    global2 = u_input.a.yy;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(516f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(493f))))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_1.b, u_input.b.x, u_input.b.yy, select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false))))) * -1000f));
}

fn func_1(arg_0: Struct_3, arg_1: i32) -> f32 {
    let var_0 = vec4<u32>(0u, countOneBits(arg_0.a), 63247u, ~49962u);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.a - -464f), _wgslsmith_f_op_f32(step(749f, _wgslsmith_f_op_f32(abs(-1706f)))))))), _wgslsmith_div_f32(global0.a, -1090f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(global0.a * arg_0.c.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(Struct_1(global0.a), Struct_3(4294967295u, Struct_2(arg_0.b.a), vec4<f32>(-1507f, -1376f, global0.a, -1265f)))))))));
    let var_2 = vec2<bool>(false, false);
    var var_3 = false;
    let var_4 = global0.a;
    return -1730f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(u_input.b.xz);
    let var_1 = vec2<f32>(-1210f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(2379f, global0.a))) * global0.a) + _wgslsmith_f_op_f32(max(333f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_3(82146u, Struct_2(var_0.a), vec4<f32>(global0.a, -300f, global0.a, 513f)), -1i)) + global0.a)))));
    global2 = u_input.a.zz;
    let var_2 = all(!select(vec3<bool>(true, all(vec2<bool>(false, true)), true), vec3<bool>(all(vec3<bool>(false, true, true)), true, global0.a != var_1.x), vec3<bool>(true, true, true)));
    let var_3 = vec4<u32>(u_input.d, _wgslsmith_mult_u32(~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(global2.x, u_input.c, u_input.c), countOneBits(global2.x)), global2.x), _wgslsmith_div_u32(~abs(u_input.c) | _wgslsmith_add_u32(~u_input.a.x, ~global2.x), min(~u_input.a.x, 4294967295u)), ~(~select(global2.x, ~u_input.d, var_2 || true)));
    let x = u_input.a;
    s_output = StorageBuffer(1u, max(~(i32(-1i) * -1i), ~(var_0.a.x & u_input.b.x)) ^ (i32(-1i) * -2147483647i));
}

