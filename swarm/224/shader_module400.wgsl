struct Struct_1 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    return arg_2;
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = Struct_1(_wgslsmith_add_u32(5184u, _wgslsmith_add_u32(~24356u, 0u) << (~u_input.b.x % 32u)), _wgslsmith_f_op_f32(f32(-1f) * -159f));
    let var_1 = var_0;
    let var_2 = false;
    let var_3 = abs(max(u_input.b.xyz, abs(abs(vec3<u32>(arg_0.a, 0u, 67092u)))));
    var var_4 = func_1(1000f, u_input.e, func_1(_wgslsmith_f_op_f32(max(1f, 1370f)), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(8586i, u_input.d, u_input.d, 27446i) << (vec4<u32>(51339u, var_0.a, var_3.x, 0u) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.d, u_input.e.x, -1i), -vec4<i32>(53322i, -35599i, -15985i, u_input.e.x)), -vec4<i32>(u_input.d, -1i, u_input.d, u_input.a.x)), func_1(arg_0.b, vec4<i32>(-1i) * -u_input.e, Struct_1(var_1.a, var_0.b))));
    return _wgslsmith_f_op_f32(ceil(arg_0.b)) == _wgslsmith_f_op_f32(-var_4.b);
}

fn func_2(arg_0: vec3<f32>, arg_1: i32) -> vec4<bool> {
    var var_0 = arg_1;
    return !vec4<bool>(func_3(func_1(_wgslsmith_f_op_f32(floor(1000f)), ~vec4<i32>(arg_1, u_input.a.x, 37297i, 0i), func_1(arg_0.x, vec4<i32>(arg_1, u_input.d, 2147483647i, 0i), Struct_1(u_input.c.x, 628f)))), true, true, true);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = arg_1.x;
    var var_1 = arg_1.x;
    var_1 = all(!(!vec3<bool>(var_0, var_0, true))) != var_0;
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_f32(-arg_0.b);
    return Struct_1(1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.b, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1854f, 1109f), _wgslsmith_f_op_f32(ceil(2538f)))))) - var_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(_wgslsmith_sub_vec3_i32(vec3<i32>(12437i, u_input.a.x, u_input.a.x) << (~u_input.b.wwx % vec3<u32>(32u)), -countOneBits(vec3<i32>(3140i, -70504i, u_input.e.x))) ^ u_input.e.zzy, u_input.e.zxw, true);
    let var_1 = max(u_input.d, min(-_wgslsmith_div_i32(36782i, 1i), i32(-1i) * -8907i));
    let var_2 = 3831i & ~abs(_wgslsmith_dot_vec4_i32(u_input.e, u_input.e) >> (u_input.c.x % 32u));
    let var_3 = func_4(func_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-112f)) * _wgslsmith_f_op_f32(657f + 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1514f + 899f) - 1f))), vec4<i32>(_wgslsmith_mod_i32(var_2, i32(-1i) * -57583i), abs(28159i), max(countOneBits(1i), -2147483647i), 1i), Struct_1(4294967295u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-368f, 1676f) - _wgslsmith_f_op_f32(floor(547f))))), vec2<bool>(all(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), false), func_2(vec3<f32>(-1335f, -449f, -902f), 29675i), true)), func_2(vec3<f32>(-285f, _wgslsmith_f_op_f32(select(-211f, -1810f, true)), 417f), var_2).x));
    var var_4 = var_3;
    var var_5 = false;
    let var_6 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

