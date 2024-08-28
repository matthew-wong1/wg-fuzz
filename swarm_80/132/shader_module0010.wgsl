struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec4<f32>,
    d: u32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec4<f32> = vec4<f32>(-728f, -335f, -1529f, -1061f);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec4<f32> {
    global1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(809f * 464f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -695f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(1114f)), _wgslsmith_f_op_f32(max(386f, 971f)), false))) - _wgslsmith_f_op_f32(sign(global1.x))), -1856f, global1.x);
    let var_0 = firstLeadingBit(u_input.b);
    global0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global1.wx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1055f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1529f, 1000f), vec2<f32>(1268f, 559f), vec2<bool>(true, true))))), _wgslsmith_f_op_vec2_f32(-global1.xw)));
    let var_1 = reverseBits(abs(~(~min(vec4<u32>(var_0, 123309u, 25621u, u_input.b), vec4<u32>(u_input.a.x, 4919u, u_input.b, 0u)))));
    let var_2 = select(vec3<bool>(true, true, all(vec4<bool>(true, true, true, true))), vec3<bool>(all(!select(vec2<bool>(true, false), vec2<bool>(true, true), true)), true, true), vec3<bool>(false, true, any(vec4<bool>(true, true, true, true))));
    return _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.x)))), _wgslsmith_f_op_f32(exp2(global0.x)), global0.x, -1000f)));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> f32 {
    global1 = _wgslsmith_f_op_vec4_f32(func_3());
    var var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 0u, 16892u), reverseBits(~vec3<u32>(u_input.a.x, 486u, u_input.c)) ^ _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, u_input.c, 4294967295u), vec3<u32>(10452u, u_input.c, u_input.a.x)), ~vec3<u32>(24705u, u_input.c, 27487u), select(vec3<u32>(u_input.a.x, 60402u, u_input.b), vec3<u32>(u_input.c, u_input.b, 83764u), false) ^ _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.c))));
    var var_1 = arg_1.a;
    global0 = vec2<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(abs(arg_1.a))), arg_1.a);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-861f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-730f + global1.x)))) - 750f)));
}

fn func_1(arg_0: vec2<bool>) -> bool {
    let var_0 = reverseBits(1843u);
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global1.xwx)) - vec3<f32>(-228f, -185f, global0.x)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1354f, _wgslsmith_f_op_f32(func_2(0i, Struct_1(global1.x)))), select(!vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), true))))));
    let var_2 = Struct_4(vec3<u32>(76211u, u_input.a.x, u_input.b), vec4<bool>((true & any(vec4<bool>(arg_0.x, false, arg_0.x, true))) | true, !arg_0.x, arg_0.x, select(!arg_0.x || any(vec3<bool>(false, arg_0.x, true)), !any(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), false)), Struct_1(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_vec4_f32(func_3()).x)));
    var var_3 = Struct_5(44782i, u_input.a);
    global0 = vec2<f32>(_wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + global1.x) + -2308f));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    let var_1 = Struct_2(Struct_1(-242f), _wgslsmith_sub_u32(u_input.a.x, 1u));
    let var_2 = vec2<f32>(1182f, _wgslsmith_div_f32(2130f, 1000f));
    var var_3 = _wgslsmith_f_op_f32(-global0.x);
    var var_4 = Struct_3(true, func_1(vec2<bool>(!any(vec4<bool>(true, true, false, false)), true)), vec4<f32>(876f, _wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_f_op_f32(select(var_1.a.a, global0.x, !all(vec2<bool>(true, false)))), global1.x), abs(~var_1.b));
    let var_5 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~var_5, max(854i, var_5), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_5, var_5), vec2<i32>(-35921i, 1i)), vec2<i32>(1i, var_5) >> (vec2<u32>(1u, var_1.b) % vec2<u32>(32u)))) ^ -_wgslsmith_add_vec3_i32(vec3<i32>(-51376i, -1i, var_5) ^ vec3<i32>(15046i, -32727i, var_5), vec3<i32>(var_5, 0i, var_5)), _wgslsmith_f_op_vec4_f32(func_3()).xx, ~vec4<u32>(~var_1.b, ~var_4.d, 1u, _wgslsmith_add_u32(u_input.b, 1u)) | vec4<u32>(var_4.d, firstTrailingBit(firstTrailingBit(0u)), _wgslsmith_div_u32(firstTrailingBit(49069u), abs(var_4.d)), _wgslsmith_clamp_u32(abs(var_4.d), 1u, select(4294967295u, 0u, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1048f))), _wgslsmith_add_vec3_i32(select(_wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(40635i, var_5, var_5)), vec3<i32>(var_5, var_5, var_5), select(vec3<i32>(var_5, var_5, var_5), vec3<i32>(-2147483647i, var_5, -1i), var_4.a)), -max(vec3<i32>(53939i, 1i, var_5), vec3<i32>(14872i, var_5, var_5)), false), abs(-(vec3<i32>(var_5, 20901i, var_5) ^ vec3<i32>(-2147483647i, 1i, var_5)))));
}

