struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<i32>) -> u32 {
    let var_0 = true;
    return _wgslsmith_mult_u32(~u_input.a.x, abs(0u ^ firstLeadingBit(u_input.a.x)));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_div_f32(2112f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-773f + -217f)))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1752f))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(603f)))) * -182f));
    var var_2 = min(u_input.a.x, ~78468u) << (_wgslsmith_clamp_u32(~u_input.a.x, _wgslsmith_div_u32(max(u_input.a.x, countOneBits(u_input.a.x)), ~u_input.a.x & u_input.a.x), 4294967295u) % 32u);
    var_2 = _wgslsmith_add_u32(0u, func_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-576f, -1715f, -465f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(867f, 193f, 610f)))), vec3<f32>(1f, 1f, 1f), !vec3<bool>(var_0, false, false))), Struct_1(vec2<bool>(var_0, var_0 | var_0)), vec2<i32>(i32(-1i) * -u_input.b, 2147483647i)));
    let var_3 = 1f;
    return (var_0 | all(vec2<bool>(any(vec4<bool>(var_0, var_0, true, false)), true))) || true;
}

fn func_4(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = false;
    var var_1 = 916f;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1960f)) - 236f);
    var_1 = -705f;
    let var_2 = Struct_1(!arg_0.yy);
    return var_2;
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = func_4(!vec4<bool>(!all(vec3<bool>(true, true, false)), any(vec3<bool>(true, true, false)), func_2(), u_input.c > (-40115i >> (u_input.a.x % 32u))));
    var var_1 = Struct_1(var_0.a);
    var_1 = var_0;
    var_1 = Struct_1(!var_0.a);
    var_1 = Struct_1(var_0.a);
    return Struct_1(var_1.a);
}

fn func_5(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = arg_2;
    var_0 = arg_2;
    var_0 = func_4(select(!(!select(vec4<bool>(var_0.a.x, var_0.a.x, false, arg_0.x), vec4<bool>(arg_0.x, var_0.a.x, true, arg_2.a.x), arg_0.x)), arg_0, vec4<bool>(!func_1(0u).a.x, !arg_0.x, var_0.a.x && true, arg_0.x)));
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, -2330f, 987f, 669f)))))), vec4<f32>(813f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-763f, 1212f) * _wgslsmith_f_op_f32(f32(-1f) * -626f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1366f, 380f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1000f)))) - -662f))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -799f))))), var_1.x, _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(ceil(-1000f)))), -1514f);
    return select(select(!arg_0.wz, func_1(5914u).a, false), !vec2<bool>(!arg_0.x, u_input.c <= u_input.c), arg_0.zy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_5(!vec4<bool>(true, false, true, all(vec2<bool>(false, true))), u_input.a.x, func_1(~4212u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 0i, 21572i, -8072i) >> (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), vec4<i32>(u_input.b, 39067i, 53322i, u_input.c)), min(countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(6893i, -1i, u_input.b, 5523i), vec4<i32>(u_input.b, u_input.c, 33993i, 35959i))), countOneBits(-vec4<i32>(u_input.b, 1i, -29953i, 2147483647i)))), abs(min(~u_input.b, select(u_input.c, 67996i, all(var_0.a)))), _wgslsmith_sub_u32(39255u, u_input.a.x));
}

