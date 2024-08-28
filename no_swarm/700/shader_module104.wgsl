struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(true, true, false, false));

var<private> global1: u32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    return arg_1;
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> bool {
    global1 = u_input.a.x & 44030u;
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(110f - arg_3.x)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_3.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_3.x, arg_3.x)) * arg_3.x)));
    let var_1 = -544f;
    global1 = ~u_input.a.x;
    let var_2 = _wgslsmith_f_op_f32(step(arg_3.x, _wgslsmith_f_op_f32(select(1075f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - 380f) * 680f)), true))));
    return arg_1.a.x;
}

fn func_1() -> Struct_1 {
    global1 = 33080u;
    return Struct_1(!vec4<bool>(func_3(firstTrailingBit(vec3<i32>(u_input.b.x, 2147483647i, 1i)), Struct_1(vec4<bool>(global0.a.x, false, global0.a.x, false)), func_2(Struct_1(global0.a), Struct_1(vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global0.a.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1537f, 710f) - vec2<f32>(399f, 1309f))), true, !global0.a.x, _wgslsmith_f_op_f32(round(-857f)) > -387f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global1 = u_input.a.x;
    var var_0 = func_1();
    let var_1 = func_2(func_1(), func_2(Struct_1(vec4<bool>(!global0.a.x, global0.a.x, true, global0.a.x)), func_2(func_2(func_1(), Struct_1(vec4<bool>(global0.a.x, false, true, true))), func_2(Struct_1(var_0.a), Struct_1(var_0.a)))));
    var var_2 = func_2(func_1(), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(~(~max(vec3<i32>(u_input.b.x, u_input.b.x, 65843i), select(vec3<i32>(-1i, -2147483647i, -1i), vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i), var_0.a.x))), _wgslsmith_clamp_i32(-32164i, ~(-2147483647i), ~u_input.b.x << (1u % 32u)), vec3<u32>(~(~_wgslsmith_add_u32(4294967295u, u_input.a.x)), ~_wgslsmith_div_u32(min(18569u, 26708u), ~u_input.a.x), 0u >> (_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, 0u)) % 32u)), vec2<i32>(select(u_input.b.x, -u_input.b.x, !any(vec2<bool>(false, global0.a.x))), _wgslsmith_mod_i32(u_input.b.x, _wgslsmith_sub_i32(u_input.b.x, abs(-12452i)))));
}

