struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: u32,
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

var<private> global0: vec3<f32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec3<f32> {
    global0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-223f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -167f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(global0.x)))) - global0.x))));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1544f)), global0.x, -1326f);
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 695f, 585f) * vec3<f32>(2053f, -184f, global0.x)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.x, global0.x, global0.x)))), true))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1087f), 1650f, _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(global0.x + -392f))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(f32(-1f) * -2107f)), global0.x, 815f)));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(573f * -1000f), _wgslsmith_f_op_f32(trunc(-1377f))), global0.x);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(819f, global0.x, 1170f))))));
    return vec3<f32>(-823f, 470f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -480f) - -481f)))));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32) -> vec3<f32> {
    global0 = _wgslsmith_f_op_vec3_f32(func_3());
    let var_0 = ~reverseBits(min(min(vec3<i32>(arg_0.x, -15653i, -11534i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, 34122i, -27767i), vec3<i32>(arg_0.x, arg_0.x, arg_0.x))), _wgslsmith_div_vec3_i32(vec3<i32>(arg_0.x, 6122i, arg_0.x), vec3<i32>(0i, -23767i, 0i)) >> ((vec3<u32>(80070u, 105514u, arg_1) << (u_input.d % vec3<u32>(32u))) % vec3<u32>(32u))));
    var var_1 = global0.x;
    let var_2 = Struct_1(vec3<u32>(~(firstTrailingBit(0u) | arg_1), 6319u, ~u_input.a), vec4<u32>(max(_wgslsmith_sub_u32(45259u, min(arg_1, arg_1)), 30063u), 50199u, 0u, reverseBits(1u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 1509f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-911f, -1166f, global0.x), vec3<f32>(global0.x, global0.x, 919f), true))) + vec3<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -287f), global0.x)), vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(trunc(-195f))), !(all(vec2<bool>(false, false)) & (-711f >= global0.x)))));
    return var_2.c;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: u32, arg_3: vec3<bool>) -> Struct_3 {
    global0 = arg_1;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(arg_1, _wgslsmith_f_op_vec3_f32(func_2(vec2<i32>(-13612i, arg_0.x), 1u)))))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -615f), arg_1.x, _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(trunc(arg_1.x))))));
    return Struct_3(vec4<u32>(~firstTrailingBit(arg_2), ~4294967295u, ~countOneBits(arg_2), arg_2) >> ((~select(vec4<u32>(u_input.a, u_input.a, arg_2, arg_2), vec4<u32>(u_input.d.x, 4294967295u, u_input.c.x, arg_2), vec4<bool>(true, arg_3.x, false, true)) | firstLeadingBit(vec4<u32>(4294967295u, arg_2, 44794u, 1u))) % vec4<u32>(32u)));
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-global0.x));
    let var_1 = -15445i;
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(var_0.a * -1048f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, -1061f) - _wgslsmith_f_op_f32(var_0.a + var_0.a)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, var_0.a, global0.x)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1220f, var_0.a, var_0.a)))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_vec3_f32(func_2(vec2<i32>(-1i, u_input.b), u_input.d.x)).x, -1000f) * vec3<f32>(-217f, global0.x, -516f))));
    let var_2 = vec2<i32>(~_wgslsmith_div_i32(-26755i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -6964i, 7045i, var_1), -vec4<i32>(u_input.b, -2147483647i, var_1, -8962i))), firstTrailingBit(u_input.b));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(814f, var_0.a, -1000f), vec3<f32>(global0.x, -843f, -1074f)))))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(375f, global0.x, var_0.a)))))));
    return var_0;
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2) -> f32 {
    var var_0 = _wgslsmith_dot_vec2_i32(-_wgslsmith_add_vec2_i32(~max(vec2<i32>(-1i, -2147483647i), vec2<i32>(-1i, arg_0)), vec2<i32>(firstLeadingBit(u_input.b), -u_input.b)), reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0, _wgslsmith_mod_i32(-19175i, 1i)), vec2<i32>(0i, -1i >> (u_input.c.x % 32u)), -reverseBits(vec2<i32>(1i, 13148i)))));
    var var_1 = arg_2;
    let var_2 = Struct_3(~abs(arg_1.a));
    var var_3 = func_1((vec4<i32>(i32(-1i) * -2147483647i, _wgslsmith_mod_i32(2147483647i, arg_0), arg_0 << (16617u % 32u), 1i) << (~select(arg_1.a, var_2.a, vec4<bool>(true, true, true, false)) % vec4<u32>(32u))) << (_wgslsmith_div_vec4_u32(~var_2.a, ~_wgslsmith_mod_vec4_u32(var_2.a, vec4<u32>(arg_1.a.x, u_input.a, u_input.c.x, u_input.e))) % vec4<u32>(32u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, _wgslsmith_f_op_f32(-global0.x), arg_2.a)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(501f, -642f, 421f) + vec3<f32>(-1364f, arg_2.a, var_1.a))))))), 1u, vec3<bool>(true, true, true));
    var_0 = u_input.b;
    return -1309f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_f_op_f32(func_5(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(12261i, -38875i)), Struct_3(~vec4<u32>(4294967295u, u_input.e, 1u, 4294967295u)), func_4(func_1(vec4<i32>(u_input.b, u_input.b, 2737i, u_input.b), vec3<f32>(global0.x, global0.x, global0.x), u_input.d.x, vec3<bool>(true, false, false)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2(max(vec2<i32>(u_input.b, 1981i), vec2<i32>(-2147483647i, -27970i)) >> (~vec2<u32>(1u, 4294967295u) % vec2<u32>(32u)), _wgslsmith_mod_u32(u_input.a, ~u_input.a))).x));
}

