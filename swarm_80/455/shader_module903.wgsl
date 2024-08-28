struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    return Struct_2(Struct_1(arg_1.a));
}

fn func_1() -> Struct_2 {
    let var_0 = 135f;
    var var_1 = 1326f;
    var_1 = 194f;
    var_1 = _wgslsmith_f_op_f32(-var_0);
    var_1 = var_0;
    return func_2(max(i32(-1i) * -1i, 480i), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) * var_0))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<bool>(false, ~_wgslsmith_add_u32(~53054u, 7740u) <= _wgslsmith_mod_u32(_wgslsmith_add_u32(~u_input.a.x, u_input.a.x), u_input.a.x), global0.x);
    global0 = vec3<bool>(false, false, true);
    var var_0 = global0.x & (_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~u_input.a, ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_div_u32(u_input.a.x, 1u)) != (_wgslsmith_sub_u32(17651u, 4294967295u | u_input.a.x) << (4229u % 32u)));
    let var_1 = func_1();
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.a), -193f);
    let var_3 = u_input.a.xz;
    var var_4 = Struct_1(-180f);
    let var_5 = firstTrailingBit(vec4<i32>(10360i, u_input.e, _wgslsmith_dot_vec4_i32(~select(vec4<i32>(u_input.e, u_input.c, u_input.b.x, -2147483647i), vec4<i32>(u_input.b.x, 47427i, 1i, -78714i), vec4<bool>(global0.x, global0.x, false, global0.x)), vec4<i32>(abs(25446i), -11642i >> (u_input.a.x % 32u), u_input.d << (4294967295u % 32u), 2147483647i)), 2147483647i));
    let var_6 = _wgslsmith_f_op_f32(-548f * _wgslsmith_f_op_f32(var_2.x + func_1().a.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(921f, 794f, func_1().a.a, _wgslsmith_f_op_f32(-func_1().a.a))), vec3<i32>(-u_input.e, _wgslsmith_add_i32(~(-1i), -u_input.d), ~(~var_5.x)) | ~var_5.xxz, vec3<i32>(2147483647i, _wgslsmith_mult_i32(u_input.d, _wgslsmith_clamp_i32(2590i, 20145i, var_5.x)), ~u_input.b.x) << (~u_input.a % vec3<u32>(32u)), vec2<i32>(-1i) * -u_input.b);
}

