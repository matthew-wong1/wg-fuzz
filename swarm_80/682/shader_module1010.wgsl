struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(false, false, false), false);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> bool {
    return true;
}

fn func_2(arg_0: vec4<i32>) -> bool {
    global0 = Struct_1(global0.a, func_3() | true);
    let var_0 = Struct_1(!vec3<bool>(u_input.c > u_input.a.x, false, all(vec2<bool>(global0.a.x, global0.a.x))), any(global0.a.xx));
    global0 = var_0;
    global0 = Struct_1(select(select(select(!vec3<bool>(false, global0.b, false), select(var_0.a, global0.a, var_0.a), select(vec3<bool>(true, false, var_0.a.x), global0.a, vec3<bool>(true, false, global0.b))), global0.a, true), select(!select(vec3<bool>(var_0.a.x, global0.b, false), global0.a, vec3<bool>(false, true, var_0.b)), global0.a, false), any(select(!vec3<bool>(var_0.a.x, global0.b, false), global0.a, !global0.a.x))), global0.a.x);
    global0 = var_0;
    return func_3();
}

fn func_1(arg_0: u32) -> vec2<f32> {
    let var_0 = Struct_1(!global0.a, global0.b);
    let var_1 = Struct_1(select(!select(select(vec3<bool>(global0.b, true, var_0.b), vec3<bool>(true, true, global0.b), global0.a), vec3<bool>(true, global0.b, false), false), vec3<bool>(true && all(global0.a), var_0.a.x, !func_2(vec4<i32>(-42351i, 0i, 1i, 2147483647i))), var_0.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(135f, -153f))))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(510f, 846f)))));
    global0 = Struct_1(var_1.a, all(select(!(!vec3<bool>(var_0.b, false, true)), select(select(vec3<bool>(false, global0.a.x, true), global0.a, false), vec3<bool>(true, var_1.a.x, global0.a.x), true), !(!var_0.a))));
    global0 = Struct_1(var_0.a, global0.a.x || !var_1.b);
    var var_2 = global0.a;
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-994f + -682f))) * -472f), -217f);
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: vec2<bool>) -> bool {
    let var_0 = arg_0.x;
    var var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_div_u32(47815u, 9024u)), abs(u_input.a.xx) | ~u_input.b.yy);
    let var_2 = Struct_1(!vec3<bool>(true, true, any(global0.a.xz)), global0.b);
    var_1 = abs(u_input.b.xy);
    var_1 = _wgslsmith_sub_vec2_u32(abs(vec2<u32>(~var_1.x, 4294967295u)), ~min(~(~vec2<u32>(0u, arg_1)), ~reverseBits(u_input.a.xx)));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!vec3<bool>(true, !(!global0.a.x), true), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-849f, 293f)), _wgslsmith_f_op_vec2_f32(func_1(20800u)), vec2<bool>(true, false)))), reverseBits(31237u), global0.a.zy));
    var var_1 = ~(-_wgslsmith_div_i32(select(1i, -1i, true), -max(-2147483647i, 2147483647i)));
    let var_2 = u_input.a.wy | (vec2<u32>(u_input.b.x, _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_add_u32(u_input.c, u_input.d))) | firstLeadingBit(~u_input.a.zw));
    var var_3 = 304f;
    global0 = var_0;
    var var_4 = ~vec4<i32>(i32(-1i) * -49061i, abs(_wgslsmith_mod_i32(~(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, -2147483647i), vec3<i32>(-1i, 1i, -12127i)))), -24387i | ((43341i << (var_2.x % 32u)) >> (_wgslsmith_div_u32(u_input.a.x, 13249u) % 32u)), ~firstLeadingBit(-1i));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.b.x, ~abs(~4294967295u)), min(_wgslsmith_dot_vec2_u32(reverseBits(~u_input.a.zw), vec2<u32>(~var_2.x, ~67932u)), var_2.x), -733f, _wgslsmith_mult_i32(i32(-1i) * -1i, -_wgslsmith_dot_vec2_i32(vec2<i32>(var_4.x, -23136i), vec2<i32>(var_4.x, var_4.x))), u_input.b.zx | ~vec2<u32>(var_2.x, _wgslsmith_clamp_u32(19945u, u_input.b.x, 1u)));
}

