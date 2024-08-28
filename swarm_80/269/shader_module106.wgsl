struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> f32 {
    let var_0 = ~vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(50142u, 19121u, 1u, 1u), vec4<u32>(u_input.a.x, 1u, 1u, 1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x), vec4<u32>(10995u, u_input.a.x, 0u, u_input.a.x))), u_input.a.x), ~43679u, u_input.a.x);
    global0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -924f), global0.c, global0.a);
    global0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -3109f), _wgslsmith_f_op_f32(global0.a + -216f)))), -1029f)), _wgslsmith_f_op_f32(global0.a * 954f), -277f);
    global0 = Struct_1(2046f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-662f)), _wgslsmith_div_f32(global0.c, global0.c))), _wgslsmith_f_op_f32(global0.c * -1000f));
    global0 = Struct_1(_wgslsmith_f_op_f32(step(263f, global0.c)), _wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -689f)), global0.c, true))), global0.c);
    return _wgslsmith_f_op_f32(round(global0.b));
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(_wgslsmith_div_f32(global0.a, global0.c), _wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c - -613f) - -504f))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.a - global0.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0.a)), _wgslsmith_f_op_f32(func_3()))))));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-904f)), _wgslsmith_f_op_f32(-global0.a))), _wgslsmith_f_op_f32(floor(1892f)), -1726f);
    var var_1 = Struct_1(global0.c, var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.c))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global0.b, -917f), _wgslsmith_f_op_f32(global0.a + 414f))), global0.c))));
    var var_2 = _wgslsmith_mod_i32(21530i, _wgslsmith_div_i32(-48544i, 1i));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(trunc(639f)), -421f, var_1.b);
    return var_3;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = arg_0;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))), 1520f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1036f)), -1050f)));
    global0 = Struct_1(_wgslsmith_f_op_f32(arg_3.b + _wgslsmith_f_op_f32(func_3())), var_0.b, _wgslsmith_f_op_f32(1242f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -400f)))));
    global0 = Struct_1(_wgslsmith_f_op_f32(round(-264f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1185f * _wgslsmith_f_op_f32(-global0.b))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(f32(-1f) * -1401f)))));
    var var_2 = func_2();
    return !any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)))) | false;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: f32) -> f32 {
    let var_0 = Struct_1(-1701f, -902f, 692f);
    global0 = arg_1;
    var var_1 = func_4(func_2(), -(~vec3<i32>(-10880i, u_input.c, 0i) | -abs(vec3<i32>(17209i, 0i, arg_2.x))), var_0, func_2());
    let var_2 = any(!vec4<bool>(true, true, true, all(vec4<bool>(false, false, false, true)) != true));
    var var_3 = arg_2;
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(select(-104f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-729f, global0.b))) - _wgslsmith_f_op_f32(f32(-1f) * -186f)), true)), global0.b, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var_1 = Struct_1(456f, global0.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(vec2<f32>(_wgslsmith_f_op_f32(1754f * 176f), _wgslsmith_div_f32(863f, global0.a)), Struct_1(var_1.b, global0.b, -696f), abs(vec2<i32>(-2147483647i, -2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(864f * var_1.b) * _wgslsmith_f_op_f32(step(486f, -513f))))))));
    global0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2151f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.c * _wgslsmith_f_op_f32(trunc(var_1.c))))) - _wgslsmith_f_op_f32(-global0.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))));
    let var_2 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(u_input.b, _wgslsmith_dot_vec3_i32(~vec3<i32>(25341i, u_input.b, 2569i), vec3<i32>(-1i, -3226i, u_input.c))), u_input.c), -vec2<i32>(u_input.b, u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a ^ abs(vec3<u32>(u_input.a.x, _wgslsmith_mod_u32(var_0, u_input.a.x), ~1u)), countOneBits(u_input.b));
}

