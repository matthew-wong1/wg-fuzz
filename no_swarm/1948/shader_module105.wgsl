struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-782f, -1146f);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1() -> vec4<i32> {
    var var_0 = vec2<bool>(true, true);
    let var_1 = !vec4<bool>(false, any(!vec3<bool>(var_0.x, true, true)), !select(true, var_0.x, 88957u <= u_input.c.x), !(!(!var_0.x)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x));
    var_0 = !(!select(var_1.zx, !vec2<bool>(var_1.x, false), var_1.yw));
    var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    return _wgslsmith_add_vec4_i32(~(-(~vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.b))) | -vec4<i32>(~(-2147483647i), ~u_input.b, u_input.a.x | 11087i, u_input.a.x), _wgslsmith_clamp_vec4_i32(-(u_input.a << (abs(u_input.c) % vec4<u32>(32u))), vec4<i32>(1i, 48809i, u_input.a.x, 0i >> (countOneBits(905u) % 32u)), -(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, -278i) & ~vec4<i32>(u_input.a.x, 0i, 2147483647i, 4281i))));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>, arg_2: i32, arg_3: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(616f, -1409f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.x - 427f))), 388f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, arg_3) - _wgslsmith_f_op_f32(-584f - global0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_3)) + 582f)), 1420f, 805f), vec3<bool>(all(vec3<bool>(true, true, true)), true, false)));
    global0 = _wgslsmith_div_vec2_f32(var_0.yx, vec2<f32>(-519f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1179f + _wgslsmith_div_f32(global0.x, global0.x)))));
    return 1i;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: vec3<u32>) -> vec2<f32> {
    global0 = vec2<f32>(256f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) + _wgslsmith_f_op_f32(global0.x + 885f)));
    var var_0 = vec3<i32>(2147483647i, 2147483647i, arg_0);
    let var_1 = arg_2;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-639f, -1517f) - vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.a))), arg_2.a)));
    let var_2 = ~(~var_1.b.wyz);
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a, 416f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.a, 1092f), vec2<f32>(-113f, arg_2.a), false)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)))))));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> vec2<f32> {
    global0 = vec2<f32>(arg_0, global0.x);
    let var_0 = arg_1;
    global0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_add_i32(_wgslsmith_clamp_i32(arg_1.b.x, -28073i, arg_1.b.x), func_3(u_input.c.x, u_input.c.yw, 25909i, arg_0)), -1042f, Struct_1(-921f, u_input.a & vec4<i32>(2147483647i, arg_1.b.x, 27776i, -4311i), !vec3<bool>(true, true, var_0.c.x)), u_input.c.xwy)) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) * _wgslsmith_f_op_f32(f32(-1f) * -577f)), global0.x)), vec2<f32>(696f, _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_div_i32(reverseBits(u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(-7114i, arg_1.b.x), u_input.a.xz)), 1200f, var_0, u_input.c.xxx)).x)));
    global0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1685f, global0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, -974f) * vec2<f32>(-883f, arg_0)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -971f)))))));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(global0.x)))), _wgslsmith_f_op_f32(min(var_0.a, global0.x))))));
    return _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1177f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_2(global0.x, Struct_1(_wgslsmith_f_op_f32(abs(global0.x)), func_1(), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true)), true))));
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_vec2_f32(func_2(995f, Struct_1(global0.x, vec4<i32>(u_input.b, -28778i, u_input.a.x, -42734i), vec3<bool>(true, true, true)), (u_input.c.x >> (29476u % 32u)) < 1u)).x, _wgslsmith_f_op_f32(f32(-1f) * -289f)));
    var var_0 = vec4<u32>(u_input.c.x, 4294967295u, ~u_input.c.x, 4294967295u);
    global0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(548f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(653f)) - global0.x)))));
    let var_1 = 1000f;
    let x = u_input.a;
    s_output = StorageBuffer(540f, _wgslsmith_f_op_f32(var_1 + -1027f), -firstTrailingBit(abs(~u_input.b)));
}

