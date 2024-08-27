struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec2<u32>) -> u32 {
    global0 = Struct_1(1i);
    var var_0 = Struct_1(arg_1.a);
    let var_1 = ~(~(~(~u_input.b.x)));
    var_0 = Struct_1(~(-2147483647i));
    global0 = arg_1;
    return 1u;
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = arg_1;
    global0 = arg_1;
    global0 = arg_1;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-922f, 1994f)) + -1314f), -525f);
    global0 = arg_1;
    return select(vec4<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.x - 1000f))) >= -963f, true, any(vec2<bool>(true, true)), true), !vec4<bool>(any(vec4<bool>(true, true, true, true)), true, false, true && select(false, false, true)), select(!vec4<bool>(false, all(vec4<bool>(true, true, true, false)), false, any(vec3<bool>(false, false, false))), !(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false))), true));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>) -> vec2<u32> {
    global0 = Struct_1(arg_0.a);
    let var_0 = firstTrailingBit(u_input.a.x);
    let var_1 = abs(_wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -(vec4<i32>(global0.a, -40910i, -46197i, -30190i) | vec4<i32>(-43322i, -1i, global0.a, global0.a)), -vec4<i32>(abs(arg_0.a), global0.a, arg_0.a, i32(-1i) * -32314i)));
    return ~(~u_input.a);
}

fn func_1() -> Struct_1 {
    global0 = Struct_1(~global0.a);
    let var_0 = 41852i;
    var var_1 = Struct_1(-40585i);
    var var_2 = vec3<u32>(~_wgslsmith_mult_u32(min(~17643u, 86517u ^ u_input.a.x), func_2(global0.a, Struct_1(var_1.a), _wgslsmith_clamp_vec2_u32(u_input.b.xz, vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(u_input.a.x, 86237u)))), func_2(-38881i, Struct_1(var_0), func_4(Struct_1(1i), func_3(firstTrailingBit(vec3<i32>(49755i, -3480i, var_0)), Struct_1(global0.a)))), u_input.a.x);
    var var_3 = select(!(!vec3<bool>(true, select(false, false, true), true)), vec3<bool>(!any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))), 458f > _wgslsmith_f_op_f32(max(512f, _wgslsmith_f_op_f32(select(-1518f, 2600f, false)))), true), all(vec4<bool>(!any(vec4<bool>(false, true, false, true)), true, false, true)));
    return Struct_1(-2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = func_1();
    global0 = func_1();
    var var_1 = var_0;
    let var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1783f, -869f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1561f, -149f) * vec2<f32>(1370f, 154f)), vec2<bool>(false, var_2))) - vec2<f32>(1f, 1f))), 0u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1800f, -492f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-487f, 867f, -1618f) - vec3<f32>(1887f, 142f, -2195f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1012f, -806f, -470f))))))), func_2(max(global0.a ^ (i32(-1i) * -41785i), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.a, var_0.a, global0.a), vec3<i32>(var_1.a, global0.a, var_0.a))), var_0, max(select(u_input.a, u_input.a, vec2<bool>(false, var_2)) >> (~u_input.a % vec2<u32>(32u)), u_input.a & _wgslsmith_add_vec2_u32(u_input.b.yx, vec2<u32>(42060u, 0u)))));
}

