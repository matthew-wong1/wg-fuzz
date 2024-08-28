struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_2 = Struct_2(vec3<f32>(-904f, 606f, 153f), Struct_1(vec2<f32>(264f, 668f)), Struct_1(vec2<f32>(-302f, -1705f)), Struct_1(vec2<f32>(1000f, -118f)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec3<bool> {
    let var_0 = global1.a;
    return select(select(vec3<bool>(true || any(vec2<bool>(false, false)), any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(-global1.b.a.x) > _wgslsmith_f_op_f32(sign(global1.d.a.x))), vec3<bool>(true, true, true), !select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), true)), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(select(true, false, true), false, true), true), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true)), true);
}

fn func_2() -> vec3<bool> {
    var var_0 = func_3();
    global0 = vec3<f32>(global1.b.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.d.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1059f) * -182f)))), _wgslsmith_div_f32(global0.x, -506f));
    var var_1 = global1.a.x;
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.a)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1059f, 432f))), global1.d, global1.b);
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(global1.a, vec3<f32>(-758f, 148f, 726f), !vec3<bool>(var_0.x, var_0.x, true))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(global1.a)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-613f, global0.x, -283f), vec3<f32>(global0.x, 1263f, global0.x))))))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1242f, -2241f) + vec2<f32>(global0.x, -167f))))), global1.d, Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-683f, global1.a.x)))));
    return !select(func_3(), vec3<bool>(var_0.x, false, var_0.x), select(select(vec3<bool>(false, false, var_0.x), !vec3<bool>(var_0.x, true, var_0.x), true), vec3<bool>(any(vec4<bool>(true, false, var_0.x, true)), var_0.x, true), vec3<bool>(false, select(true, true, var_0.x), !var_0.x)));
}

fn func_1() -> Struct_1 {
    let var_0 = select(~max(select(vec2<u32>(5126u, 2782u), vec2<u32>(1u, 1u), vec2<bool>(true, true)), vec2<u32>(67201u, 35388u)) >> (vec2<u32>(~_wgslsmith_mult_u32(1u, 62269u), _wgslsmith_sub_u32(1u, 0u)) % vec2<u32>(32u)), ~vec2<u32>(1u, 1u), true);
    let var_1 = select(!select(select(func_2(), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)), select(!func_2(), func_3(), func_3().x), var_0.x >= ~var_0.x);
    let var_2 = ~122819u;
    var var_3 = 2147483647i;
    let var_4 = ~_wgslsmith_sub_u32(var_0.x, 1u);
    return global1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global1.a + vec3<f32>(_wgslsmith_f_op_f32(global0.x - global1.c.a.x), _wgslsmith_f_op_f32(global0.x - -2319f), -214f)), global1.a, select(vec3<bool>(u_input.a.x >= u_input.a.x, true, true), vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false)))), func_1(), Struct_1(_wgslsmith_f_op_vec2_f32(exp2(global1.b.a))), global1.b);
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1082f)) * _wgslsmith_f_op_f32(ceil(global1.b.a.x)))))), 1000f);
    global1 = Struct_2(global1.a, func_1(), Struct_1(func_1().a), Struct_1(_wgslsmith_f_op_vec2_f32(-global1.a.yy)));
    global0 = vec3<f32>(global0.x, _wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(708f)))))));
    global0 = global1.a;
    global0 = global1.a;
    var var_1 = func_1();
    let var_2 = select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(any(vec2<bool>(false, false)), true), !(!vec2<bool>(u_input.a.x <= -2147483647i, any(vec3<bool>(false, true, true)))));
    let var_3 = vec2<u32>(~2771u, abs(abs(_wgslsmith_mod_u32(1u, select(107447u, 1u, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(~59300u, var_3.x), u_input.a.x, select(_wgslsmith_div_i32(u_input.a.x | u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, -975i)) << ((_wgslsmith_add_u32(var_3.x, var_3.x) << (var_3.x % 32u)) % 32u), -2147483647i ^ u_input.a.x, true), u_input.a.x << (30336u % 32u), abs(vec4<u32>(reverseBits(64291u), var_3.x, _wgslsmith_clamp_u32(_wgslsmith_div_u32(var_3.x, var_3.x), _wgslsmith_dot_vec3_u32(vec3<u32>(22488u, var_3.x, var_3.x), vec3<u32>(17124u, var_3.x, var_3.x)), reverseBits(16818u)), ~(var_3.x << (38802u % 32u)))));
}

