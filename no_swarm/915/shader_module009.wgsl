struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 14> = array<i32, 14>(-34465i, 0i, 23159i, 0i, 61066i, i32(-2147483648), 8856i, i32(-2147483648), -20034i, 38491i, -1i, 1i, -1i, -1i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> f32 {
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global0.a))), global0.b);
    let var_0 = global0.a.yz;
    global1 = array<i32, 14>();
    let var_1 = arg_1;
    var var_2 = ~vec2<u32>(~_wgslsmith_clamp_u32(~u_input.d, ~35299u, 1u << (u_input.b.x % 32u)), countOneBits(~1u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x)))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(arg_1.a.x, _wgslsmith_f_op_f32(-1621f - 1349f))), -493f, arg_0.x) * global0.a), global0.b);
    var var_1 = arg_2;
    var var_2 = u_input.b.wz;
    var var_3 = vec3<bool>(any(select(vec4<bool>(true, global1[_wgslsmith_index_u32(44922u, 14u)] == -54854i, true, var_0.b), !(!vec4<bool>(arg_2.b, arg_2.b, false, true)), !vec4<bool>(arg_2.b, false, false, arg_1.b))), !any(vec2<bool>(false, true)), true);
    var_2 = ~countOneBits(vec2<u32>(0u, _wgslsmith_div_u32(1u, u_input.b.x)));
    return _wgslsmith_f_op_vec3_f32(arg_1.a - var_1.a);
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    global1 = array<i32, 14>();
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.a.x, 922f, global0.a.x, -265f))))), Struct_1(global0.a, any(select(vec4<bool>(false, true, global0.b, false), vec4<bool>(true, false, true, true), vec4<bool>(true, global0.b, global0.b, true)))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(func_2(false, Struct_1(vec3<f32>(551f, 570f, 1774f), global0.b))), -993f, _wgslsmith_f_op_f32(347f + 1193f)), global0.b))), true);
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-393f, global0.a.x, -396f, -284f), vec4<f32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x), true)), Struct_1(global0.a, true), Struct_1(vec3<f32>(-763f, -1363f, global0.a.x), true))) + vec3<f32>(_wgslsmith_f_op_f32(1407f - global0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -2201f)), _wgslsmith_f_op_vec3_f32(-global0.a), !vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.d, 14u)] != global1[_wgslsmith_index_u32(u_input.b.x, 14u)], true))));
    let var_1 = Struct_1(global0.a, global0.b);
    global1 = array<i32, 14>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.a - vec3<f32>(-839f, var_0.x, var_0.x)) - _wgslsmith_f_op_vec3_f32(-var_1.a))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(global0.a, global0.a)), _wgslsmith_f_op_vec3_f32(-global0.a)))), any(select(select(select(vec4<bool>(true, var_1.b, global0.b, true), vec4<bool>(true, var_1.b, false, false), global0.b), !vec4<bool>(true, var_1.b, global0.b, global0.b), select(vec4<bool>(var_1.b, false, true, var_1.b), vec4<bool>(false, true, true, var_1.b), vec4<bool>(global0.b, false, var_1.b, global0.b))), vec4<bool>(!var_1.b, all(vec2<bool>(global0.b, false)), true, false), true)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec3<bool>(false, !(!(!arg_0.b)), arg_1.b || any(vec4<bool>(true, true, true, true)));
    var var_1 = arg_0;
    let var_2 = arg_1;
    var var_3 = func_1(_wgslsmith_mult_vec3_i32(select(-vec3<i32>(global1[_wgslsmith_index_u32(42723u, 14u)], 15967i, 1i), -vec3<i32>(global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(0u, 14u)], -1i) | vec3<i32>(u_input.c.x, u_input.c.x, 56717i), !vec3<bool>(var_1.b, global0.b, true)), ~vec3<i32>(24924i, -2147483647i, abs(u_input.c.x))));
    let var_4 = 658f;
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-1757f - _wgslsmith_div_f32(var_4, _wgslsmith_div_f32(arg_0.a.x, 307f))), _wgslsmith_f_op_f32(1484f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(856f, -1609f)) + 1110f)), 1624f), ~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, 4294967295u), vec2<u32>(45974u, u_input.b.x), u_input.b.zy), ~u_input.b.zw), 14u)] > -12469i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 14>();
    global1 = array<i32, 14>();
    let var_0 = 34018i;
    global1 = array<i32, 14>();
    let var_1 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(572f * global0.a.x), 461f), _wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(ceil(global0.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.a.x, global0.a.x)), _wgslsmith_f_op_f32(global0.a.x + -1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global0.a), _wgslsmith_f_op_vec3_f32(global0.a - vec3<f32>(global0.a.x, -636f, 981f)))))), 2147483647i >= ~u_input.c.x);
    var var_2 = var_1;
    var_2 = func_4(func_1(vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_0, -2147483647i), _wgslsmith_mult_i32(0i, var_0), -2147483647i), i32(-1i) * -2147483647i, u_input.c.x)), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(0u, vec4<f32>(_wgslsmith_f_op_vec3_f32(func_3(vec4<f32>(var_2.a.x, _wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_vec3_f32(func_3(vec4<f32>(var_1.a.x, var_1.a.x, global0.a.x, var_2.a.x), var_1, var_1)).x, func_1(vec3<i32>(u_input.c.x, -1i, 9848i)).a.x), var_1, func_4(func_4(Struct_1(vec3<f32>(1420f, 837f, -337f), var_1.b), var_1), Struct_1(var_1.a, true)))).x, var_1.a.x, _wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1141f, -463f) - global0.a.x)), 238f), var_2.a.x);
}

