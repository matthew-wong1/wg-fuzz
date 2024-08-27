struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: bool = true;

var<private> global2: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(33599u), Struct_1(0u), Struct_1(43196u), Struct_1(24389u), Struct_1(1u), Struct_1(0u), Struct_1(0u), Struct_1(20233u), Struct_1(55023u), Struct_1(52907u), Struct_1(1u), Struct_1(4294967295u), Struct_1(0u), Struct_1(2222u), Struct_1(40644u), Struct_1(4294967295u), Struct_1(105195u), Struct_1(0u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_1, arg_3: vec4<bool>) -> u32 {
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    global2 = array<Struct_1, 18>();
    let var_0 = global0[_wgslsmith_index_u32(0u, 9u)];
    var var_1 = arg_0.wyx;
    return u_input.b;
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32) -> u32 {
    var var_0 = !(!select(vec4<bool>(any(vec3<bool>(true, true, true)), true, u_input.b < 1u, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-1323f - 727f) > _wgslsmith_f_op_f32(step(-982f, 477f))));
    global0 = array<Struct_1, 9>();
    var var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(366f + -711f)));
    let var_3 = _wgslsmith_mult_i32(max(arg_2, -2147483647i), arg_2);
    return 1u;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = arg_1;
    var var_1 = reverseBits(vec4<u32>(func_3(~u_input.a.xy, Struct_1(~arg_3.a), u_input.a.x), ~(~_wgslsmith_add_u32(68611u, u_input.b)), ~81219u ^ arg_1.a, u_input.b));
    global1 = all(vec3<bool>(!any(select(vec4<bool>(false, arg_0, arg_0, false), vec4<bool>(arg_0, true, arg_0, false), vec4<bool>(false, arg_0, arg_0, arg_0))), !arg_0, all(!select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(false, true, true), arg_0))));
    var var_2 = Struct_1(~var_0.a);
    var var_3 = global0[_wgslsmith_index_u32(var_0.a, 9u)];
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 18>();
    let var_0 = ~_wgslsmith_add_vec4_u32(~vec4<u32>(func_1(u_input.a, u_input.b, global0[_wgslsmith_index_u32(1u, 9u)], vec4<bool>(true, false, true, false)), u_input.b, 36776u >> (u_input.b % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 2819u, u_input.b, 1u), vec4<u32>(u_input.b, 0u, 31328u, 4294967295u))), vec4<u32>(_wgslsmith_clamp_u32(36312u, _wgslsmith_sub_u32(960u, 1u), 4294967295u), ~u_input.b, ~(~35817u), u_input.b));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1037f, -244f, 655f, 1000f), vec4<f32>(1828f, -1000f, -244f, 1566f))))));
    let var_2 = !select(!vec4<bool>(true, true, var_0.x != var_0.x, all(vec4<bool>(false, false, true, true))), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), (u_input.a.x & u_input.a.x) <= func_2(true, global2[_wgslsmith_index_u32(4294967295u, 18u)], Struct_1(44677u), global2[_wgslsmith_index_u32(u_input.b, 18u)])), true);
    var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.x, -166f, var_1.x, var_1.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, 111f, var_1.x, var_1.x), vec4<f32>(123f, var_1.x, 1631f, var_1.x), true)))))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-769f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.x + -645f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2050f)) * 431f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.x, var_1.x, -978f, var_1.x))))))))), !(!(select(var_2.x, var_2.x, true) | true))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.xz, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x | abs(-u_input.a.x), 0i), var_0.xyw, ~min(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 50876u, u_input.b), vec4<u32>(1963u, 0u, 44602u, u_input.b)), 4294967295u), var_0.zx));
}

