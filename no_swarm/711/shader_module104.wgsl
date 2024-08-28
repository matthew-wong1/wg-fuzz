struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0i, vec2<u32>(4294967295u, 28953u));

var<private> global1: bool = false;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(select(51524i, -44817i, !any(vec3<bool>(true, true, true))), select(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, global0.b.x), max(global0.b, global0.b)), global0.b), _wgslsmith_clamp_vec2_u32(global0.b, countOneBits(vec2<u32>(20936u, 14423u)) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(12563u, global0.b.x), vec2<u32>(global0.b.x, global0.b.x)) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(vec2<u32>(5787u, global0.b.x), ~global0.b)), !vec2<bool>(global0.b.x >= 1u, all(vec3<bool>(false, false, false)))));
    let var_1 = var_0;
    let var_2 = 1u;
    let var_3 = vec3<bool>(true, true, true);
    global1 = false;
    return var_1;
}

fn func_3(arg_0: Struct_1) -> f32 {
    global0 = Struct_1(2147483647i, ~select(_wgslsmith_clamp_vec2_u32(~arg_0.b, _wgslsmith_mod_vec2_u32(vec2<u32>(18245u, 1u), vec2<u32>(1u, 1u)), ~arg_0.b), global0.b, true));
    global0 = Struct_1(-(arg_0.a & -2147483647i), vec2<u32>(global0.b.x, 0u));
    let var_0 = func_2();
    return 569f;
}

fn func_1() -> Struct_1 {
    global1 = 4294967295u < global0.b.x;
    let var_0 = -abs(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, global0.a, -11266i, u_input.a.x), select(u_input.a, vec4<i32>(31700i, -45458i, -2147483647i, 0i), false)));
    global0 = Struct_1(2147483647i, _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(global0.b.x, 4294967295u) & max(global0.b, vec2<u32>(45423u, 36422u)), abs(vec2<u32>(28899u, global0.b.x))), reverseBits(select(vec2<u32>(global0.b.x, 18248u), _wgslsmith_clamp_vec2_u32(global0.b, vec2<u32>(36505u, global0.b.x), vec2<u32>(global0.b.x, global0.b.x)), vec2<bool>(false, false)))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(348f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -461f) * _wgslsmith_f_op_f32(f32(-1f) * -745f)) + 1f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(func_2())), 1000f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-325f, 831f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1295f), -440f, true)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(192f)) - _wgslsmith_div_f32(-1053f, -1364f)) + _wgslsmith_f_op_f32(-115f * _wgslsmith_div_f32(-178f, -198f)))));
    global1 = any(vec3<bool>(true, true, true));
    return Struct_1(2147483647i, global0.b);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: i32) -> u32 {
    var var_0 = arg_0;
    var var_1 = func_1();
    var var_2 = ~(~abs(~(~38421u)));
    var_2 = countOneBits(1u);
    var var_3 = true;
    return ~66244u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(_wgslsmith_sub_u32(~0u, 1u ^ ~global0.b.x), func_4(func_1(), vec3<u32>(50981u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.b.x, global0.b.x, global0.b.x), vec3<u32>(global0.b.x, global0.b.x, global0.b.x)), ~vec3<u32>(0u, global0.b.x, 598u)), global0.b.x), vec4<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))), true, -1i >= max(0i, u_input.a.x), true), -(~0i)));
    var var_1 = any(vec4<bool>(false, any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), all(vec4<bool>(true, global0.a > 0i, false, u_input.a.x == -2147483647i)), true));
    let var_2 = u_input.a.x;
    var var_3 = func_1();
    var_1 = select(any(vec4<bool>(false, any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))), all(vec3<bool>(false, false, true)), false)), false, all(select(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, -(var_3.a & max(var_3.a, 1i)) << (abs(_wgslsmith_div_u32(var_0.x, global0.b.x)) % 32u), vec4<i32>(var_2, ~reverseBits(1100i), -1i << (select(0u, var_0.x, true) % 32u), abs(_wgslsmith_mult_i32(u_input.a.x, -13544i))) | min(vec4<i32>(var_2, global0.a, 2760i, 87619i) ^ firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x)), _wgslsmith_div_vec4_i32(u_input.a << (vec4<u32>(global0.b.x, global0.b.x, var_3.b.x, var_3.b.x) % vec4<u32>(32u)), vec4<i32>(39045i, 2147483647i, global0.a, var_2))), ~select(_wgslsmith_mod_vec3_u32(~vec3<u32>(0u, 0u, var_3.b.x), vec3<u32>(var_3.b.x, global0.b.x, 22812u) << (vec3<u32>(var_0.x, 92237u, 56507u) % vec3<u32>(32u))), ~min(vec3<u32>(4294967295u, var_0.x, 0u), vec3<u32>(var_3.b.x, 0u, global0.b.x)), select(all(vec4<bool>(true, true, true, true)), true, true)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -446f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-403f, 1785f, true))), _wgslsmith_f_op_f32(f32(-1f) * -358f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1364f * 1000f), _wgslsmith_f_op_f32(step(613f, -219f)), -1032f))));
}

