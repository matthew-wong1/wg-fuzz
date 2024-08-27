struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-283f, 1641f)))) * -770f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-570f)))))));
    let var_1 = arg_0;
    var var_2 = var_0;
    let var_3 = ~(~(~abs(~u_input.c)));
    var_2 = var_0;
    return -1089f;
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: vec3<bool>) -> vec4<f32> {
    let var_0 = u_input.c.x >> ((12542u | u_input.c.x) % 32u);
    var var_1 = Struct_1(vec3<bool>(true, true, any(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(arg_2.x, arg_2.x, arg_2.x)))));
    var_1 = Struct_1(vec3<bool>(true, true, true));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(arg_0)), arg_0)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -474f);
    var var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(1i, _wgslsmith_mult_i32(44968i, u_input.a) ^ u_input.a, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b, 43309i), vec2<i32>(u_input.b, 7018i) >> (u_input.c % vec2<u32>(32u))) ^ 1i), vec3<i32>(1i >> (u_input.c.x % 32u), u_input.a, _wgslsmith_sub_i32(_wgslsmith_div_i32(0i, u_input.a) >> (_wgslsmith_div_u32(u_input.c.x, u_input.c.x) % 32u), u_input.a)));
    var_1 = select(-_wgslsmith_div_vec3_i32(vec3<i32>(-1i, u_input.b, 0i) ^ select(vec3<i32>(u_input.b, -1i, 2147483647i), vec3<i32>(u_input.a, 0i, u_input.a), false), _wgslsmith_div_vec3_i32(-vec3<i32>(var_1.x, -8849i, 0i), min(vec3<i32>(-5542i, -1i, var_1.x), vec3<i32>(u_input.a, 0i, var_1.x)))), firstTrailingBit(vec3<i32>(u_input.b << (abs(u_input.c.x) % 32u), _wgslsmith_div_i32(62972i, u_input.a), max(~u_input.a, -5257i))), any(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, all(arg_0.a.xz))));
    var var_2 = select(vec2<bool>(!arg_0.a.x, false), !select(select(arg_0.a.xy, select(vec2<bool>(true, arg_0.a.x), arg_0.a.zy, true), true), !arg_0.a.xz, !select(arg_0.a.yy, vec2<bool>(false, arg_0.a.x), arg_0.a.x)), false);
    let var_3 = arg_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0 - var_0)))) - _wgslsmith_f_op_f32(sign(305f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(false & all(vec2<bool>(true, true)), any(vec4<bool>(_wgslsmith_f_op_f32(floor(1677f)) < 251f, any(vec4<bool>(false, false, false, true)), true, select(true, any(vec3<bool>(true, false, true)), true))), true, true);
    let var_1 = u_input.c.x;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -891f);
    var_2 = _wgslsmith_f_op_f32(ceil(155f));
    var var_3 = -1000f;
    var_3 = -102f;
    let var_4 = _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2114f, -510f, 1000f, 317f), vec4<f32>(289f, -1433f, -391f, 467f), var_0))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(!vec3<bool>(var_0.x, true, var_0.x)))) * _wgslsmith_div_f32(-1366f, _wgslsmith_f_op_f32(-602f + -1000f))), vec3<bool>(!var_0.x, false, ~var_1 != ~_wgslsmith_add_u32(164287u, var_1))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(select(vec3<bool>(var_0.x, true, true), vec3<bool>(var_0.x, var_0.x, var_0.x), true)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(var_4.x)))), 292f))));
}

