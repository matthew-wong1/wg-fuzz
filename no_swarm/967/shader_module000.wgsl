struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<f32> = vec4<f32>(1005f, -618f, 1000f, -139f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec2<i32> {
    var var_0 = Struct_1(global0.a, global0.b, ~(~countOneBits(vec2<u32>(4294967295u, 0u))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(global0.b, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1055f, global0.b.x, global1.x, var_0.b.x)))))))));
    let var_2 = -2147483647i;
    var var_3 = var_1.x;
    global1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.x), -456f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b.x, -169f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - -580f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b.x)))))));
    return _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(-_wgslsmith_add_vec2_i32(u_input.b, vec2<i32>(-2147483647i, 1i)), _wgslsmith_clamp_vec2_i32(u_input.b, ~vec2<i32>(u_input.a, u_input.b.x), reverseBits(u_input.b)), u_input.b), select(countOneBits(max(vec2<i32>(u_input.a, u_input.a), u_input.b)), vec2<i32>(-1i) * -u_input.b, vec2<bool>(any(vec3<bool>(true, false, true)), false))) << (_wgslsmith_add_vec2_u32(vec2<u32>(var_0.a.x, select(~global0.a.x, ~43625u, true)), vec2<u32>(~(u_input.c.x | global0.a.x), var_0.a.x)) % vec2<u32>(32u));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1) -> f32 {
    global0 = arg_1;
    let var_0 = vec3<i32>(2147483647i, _wgslsmith_dot_vec2_i32(firstLeadingBit(firstLeadingBit(vec2<i32>(-11711i, u_input.b.x))) << (arg_0.zy % vec2<u32>(32u)), func_3() | vec2<i32>(_wgslsmith_add_i32(u_input.b.x, -42786i), -40092i)), _wgslsmith_add_i32(-2147483647i, u_input.b.x));
    var var_1 = !vec2<bool>(false, all(vec2<bool>(true, any(vec3<bool>(true, true, true)))));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.b.x)) + 868f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-691f, global0.b.x)) - _wgslsmith_f_op_f32(f32(-1f) * -988f)), global0.b.x, _wgslsmith_f_op_f32(-508f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(621f))))));
    let var_2 = ~global0.a;
    return arg_1.b.x;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec4<u32>, arg_3: vec2<i32>) -> i32 {
    global1 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.x))), arg_0.b.x, _wgslsmith_f_op_f32(ceil(-479f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(arg_0.a, arg_0)) + _wgslsmith_f_op_f32(global1.x - -280f)), _wgslsmith_f_op_f32(-global1.x))) - arg_0.b.x));
    global0 = arg_0;
    let var_0 = Struct_2(true, firstLeadingBit(~select(vec4<i32>(u_input.b.x, u_input.b.x, u_input.a, arg_3.x), ~vec4<i32>(arg_3.x, -14656i, -24061i, 5873i), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true)))), vec4<f32>(_wgslsmith_f_op_f32(min(global0.b.x, _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-arg_0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -215f) * -1000f)), _wgslsmith_f_op_f32(trunc(-277f)), _wgslsmith_f_op_f32(-arg_0.b.x)));
    let var_1 = ~_wgslsmith_div_vec2_u32(~(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.a.x, u_input.c.x), vec2<u32>(u_input.c.x, 0u)) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(arg_2.x, 73955u), vec2<u32>(1u, 14006u)) % vec2<u32>(32u))), ~vec2<u32>(~4294967295u, 1u));
    return ~14279i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!vec3<bool>(false, all(vec4<bool>(false, true, false, false)), true)));
    let var_1 = global1.x;
    var var_2 = var_0.x;
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(590f, global0.b.x)))), 922f, _wgslsmith_f_op_f32(step(global1.x, _wgslsmith_f_op_f32(-global0.b.x))), global1.x)));
    var var_3 = Struct_2(true, vec4<i32>(-2147483647i, u_input.b.x, func_1(Struct_1(vec3<u32>(14301u, global0.c.x, global0.a.x), vec4<f32>(global0.b.x, global0.b.x, global1.x, global0.b.x), vec2<u32>(26867u, 29155u)), global0.a.x, abs(~vec4<u32>(0u, u_input.d, global0.c.x, 0u)), _wgslsmith_add_vec2_i32(-u_input.b, u_input.b)), 20822i), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(global0.b, vec4<f32>(global0.b.x, 1192f, global0.b.x, 1454f), false)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.b.x, -1587f, 102f, -1000f), vec4<f32>(global1.x, global1.x, 870f, -802f), true))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(0i, _wgslsmith_dot_vec2_i32(~vec2<i32>(34547i, u_input.a), ~u_input.b & _wgslsmith_div_vec2_i32(vec2<i32>(var_3.b.x, u_input.b.x), u_input.b)), 15257i), _wgslsmith_f_op_f32(-169f * global0.b.x), 991f, _wgslsmith_f_op_vec4_f32(-global0.b));
}

