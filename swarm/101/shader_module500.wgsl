struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<f32>) -> f32 {
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(arg_0.zw, _wgslsmith_f_op_vec2_f32(-arg_0.zw), true)), _wgslsmith_div_vec2_f32(vec2<f32>(1f, -1000f), arg_1.zx), true));
    let var_0 = 1u >= ~u_input.b.x;
    let var_1 = abs(firstTrailingBit(u_input.b.zy));
    var var_2 = var_0;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_1.yx))));
    return _wgslsmith_f_op_f32(729f * _wgslsmith_f_op_f32(floor(arg_1.x)));
}

fn func_2() -> vec2<f32> {
    var var_0 = Struct_1(vec4<bool>(all(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true)), true, all(select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))))));
    var var_1 = Struct_1(!var_0.a);
    let var_2 = Struct_2(Struct_1(select(!var_0.a, !select(vec4<bool>(var_1.a.x, false, false, false), vec4<bool>(true, false, var_1.a.x, true), var_1.a), vec4<bool>(true, false, false, false))), all(var_1.a));
    var_0 = Struct_1(select(var_1.a, select(!vec4<bool>(var_1.a.x, true, true, var_2.a.a.x), select(var_0.a, var_0.a, true), vec4<bool>(true, true, u_input.b.x <= u_input.c.x, all(var_0.a))), var_1.a));
    let var_3 = true;
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec4<f32>(global0.x, -115f, global0.x, 455f), vec3<f32>(671f, 684f, 408f))), _wgslsmith_f_op_f32(floor(global0.x))))), 927f);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> f32 {
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_2, -452f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_2, global0.x))))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, global0.x))))), vec2<f32>(arg_2, -1891f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-896f, global0.x) + vec2<f32>(1000f, 326f))))))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -938f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1374f, arg_2))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1841f, 1328f), vec2<f32>(-265f, arg_2))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1768f, 1000f) * vec2<f32>(-672f, global0.x))), true)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_2, global0.x)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-799f, global0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1034f, -466f)))))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(659f, -890f)), 1862f), _wgslsmith_f_op_f32(-1039f + -458f))) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.x, -953f)) + arg_2)))));
    let var_0 = -(~reverseBits(-vec4<i32>(742i, u_input.d.x, -1i, u_input.d.x)));
    return 854f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~0i;
    var var_1 = false & !any(vec3<bool>(true, true, true));
    let var_2 = ~_wgslsmith_sub_vec2_i32(u_input.d.xy, _wgslsmith_mult_vec2_i32(u_input.d.zy ^ vec2<i32>(var_0, var_0), -u_input.d.yx));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -1477f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(vec4<bool>(false, true, true, true)), false), Struct_1(vec4<bool>(true, false, true, false)), global0.x)), _wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(vec4<bool>(true, false, false, true)), false), Struct_1(vec4<bool>(false, false, true, false)), -435f))), vec2<f32>(_wgslsmith_f_op_f32(max(global0.x, global0.x)), _wgslsmith_f_op_f32(1052f * 1480f))))));
    var var_3 = _wgslsmith_div_i32(2147483647i, 54306i);
    var var_4 = 98741u;
    var_4 = 4294967295u;
    var_3 = _wgslsmith_mult_i32(-_wgslsmith_mod_i32(-14230i, _wgslsmith_add_i32(~var_2.x, u_input.d.x)), countOneBits(-2147483647i));
    var_3 = -64629i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~1u, u_input.a.x, 0u, ~(~u_input.c.x << (_wgslsmith_add_u32(67537u, 1u) % 32u))));
}

