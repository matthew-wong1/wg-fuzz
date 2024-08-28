struct Struct_1 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    global0 = Struct_1(_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.c.yx, u_input.c.ww), u_input.a), ~55316u), global0.a), 517f);
    return global0.a;
}

fn func_2() -> bool {
    global0 = Struct_1(min(func_3(), u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)));
    let var_0 = Struct_1(~(~_wgslsmith_clamp_u32(1u, firstTrailingBit(50111u), ~1u)), _wgslsmith_f_op_f32(trunc(-1577f)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(682f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.b))), global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-159f)) + -190f) * _wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(-1543f * var_0.b)))));
    global0 = Struct_1(~(~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(4294967295u, 4294967295u)), u_input.c.yw)), _wgslsmith_f_op_f32(-812f - _wgslsmith_f_op_f32(step(global0.b, _wgslsmith_f_op_f32(max(-681f, -1033f))))));
    var var_2 = var_0;
    return false;
}

fn func_1() -> Struct_1 {
    var var_0 = vec3<bool>(true, true, true);
    let var_1 = select(_wgslsmith_div_i32(_wgslsmith_clamp_i32(~(i32(-1i) * -45799i), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.d.x, -8282i), i32(-1i) * -5165i, select(u_input.d.x, 23458i, false)), firstLeadingBit(~(-2147483647i))), 28267i), _wgslsmith_mod_i32(u_input.d.x, ~u_input.d.x ^ -1i), func_2());
    let var_2 = Struct_1(~u_input.c.x, _wgslsmith_f_op_f32(-global0.b));
    let var_3 = 0i;
    global0 = var_2;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = u_input.d.x;
    let var_2 = -2367i;
    let x = u_input.a;
    s_output = StorageBuffer(-var_2, ~_wgslsmith_dot_vec4_u32(u_input.c, min(u_input.c & vec4<u32>(1u, 19364u, 1u, u_input.c.x), ~vec4<u32>(8542u, 158u, 55285u, 50225u))));
}

