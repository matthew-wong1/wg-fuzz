struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1249f;

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(434f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: i32, arg_3: Struct_1) -> bool {
    global2 = Struct_1(-638f);
    global0 = global2.a;
    var var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(arg_3.a)));
    var var_1 = arg_3;
    let var_2 = arg_3;
    return true;
}

fn func_3(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = arg_0.x;
    global0 = global2.a;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.a))))));
    let var_2 = -vec2<i32>(-(select(u_input.d.x, 5214i, false) << (0u % 32u)), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, 99204i, u_input.c.x, -54305i), abs(vec4<i32>(u_input.d.x, u_input.d.x, u_input.a, u_input.c.x))) & u_input.c.x);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(1111f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(871f, 535f, true)) - _wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(min(var_1.a, -1596f))))));
    return Struct_1(156f);
}

fn func_1() -> f32 {
    var var_0 = ~vec2<u32>(~u_input.e, 21252u);
    var var_1 = func_3(vec2<bool>(false, func_2(-2147483647i, firstTrailingBit(~23054u), 30737i, Struct_1(_wgslsmith_div_f32(-1601f, global1.a)))));
    var var_2 = vec4<bool>(false, !all(vec2<bool>(true, true)), select(-488f < global2.a, select(true, true, u_input.e != var_0.x) && ((u_input.c.x >= u_input.a) & func_2(u_input.c.x, 4294967295u, -2147483647i, Struct_1(-254f))), func_2(29571i, _wgslsmith_mod_u32(min(var_0.x, 0u), _wgslsmith_add_u32(var_0.x, u_input.e)), u_input.c.x, func_3(select(vec2<bool>(true, true), vec2<bool>(false, true), false)))), false);
    global1 = Struct_1(-499f);
    let var_3 = 103f;
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - -1479f));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.d, vec2<i32>(-1i, -2147483647i), vec2<i32>(-42937i, 12350i)), vec2<i32>(0i, u_input.d.x))), ~(~vec3<u32>(25477u, ~59791u, 4294967295u)), vec3<f32>(global2.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a, global2.a)))), func_3(vec2<bool>(true, all(vec4<bool>(true, false, false, true)))).a));
}

