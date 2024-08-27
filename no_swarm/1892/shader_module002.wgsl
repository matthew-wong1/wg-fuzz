struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 10> = array<vec2<u32>, 10>(vec2<u32>(8353u, 79879u), vec2<u32>(4294967295u, 6105u), vec2<u32>(65839u, 1u), vec2<u32>(37880u, 9784u), vec2<u32>(4294967295u, 1u), vec2<u32>(77506u, 0u), vec2<u32>(41752u, 4294967295u), vec2<u32>(93778u, 25456u), vec2<u32>(0u, 63448u), vec2<u32>(150588u, 10277u));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-379f, 923f, -962f)))) * vec3<f32>(919f, _wgslsmith_div_f32(249f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(abs(-1062f)))), max(vec4<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 1u, u_input.e.x, u_input.b.x), vec4<u32>(1u, u_input.c.x, 0u, 48433u)) >> (21651u % 32u), ~u_input.a.x, reverseBits(u_input.b.x)), u_input.c));
}

fn func_1() -> Struct_1 {
    global0 = array<vec2<u32>, 10>();
    global0 = array<vec2<u32>, 10>();
    global0 = array<vec2<u32>, 10>();
    global0 = array<vec2<u32>, 10>();
    global0 = array<vec2<u32>, 10>();
    return func_2();
}

fn func_3(arg_0: i32, arg_1: vec2<i32>) -> bool {
    let var_0 = Struct_1(vec3<f32>(1f, 1f, 1f), ~vec4<u32>(38045u, func_2().b.x, ~u_input.b.x, _wgslsmith_mult_u32(0u, u_input.b.x)) >> (u_input.c % vec4<u32>(32u)));
    let var_1 = select(!(!(!select(vec2<bool>(false, true), vec2<bool>(true, false), true))), select(!select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(any(vec2<bool>(false, true)) || (u_input.c.x <= 0u), true), any(vec3<bool>(true, true, true))), vec2<bool>(true, true));
    var var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(-(~(-arg_0)), arg_1.x), vec2<i32>(select(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, -3890i, arg_1.x, arg_1.x), vec4<i32>(-19652i, -24047i, arg_0, u_input.d.x)), ~2147483647i), (arg_1.x << (var_0.b.x % 32u)) | _wgslsmith_mult_i32(-1980i, arg_1.x), var_1.x), ~firstLeadingBit(-33105i)));
    global0 = array<vec2<u32>, 10>();
    var var_3 = -1i;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 10>();
    let var_0 = func_1();
    var var_1 = var_0;
    var var_2 = select(vec2<bool>(true, !func_3(~15605i, ~vec2<i32>(2147483647i, -4341i))), vec2<bool>(false, true), !func_3(_wgslsmith_add_i32(~43382i, 1i), -u_input.d));
    var_2 = vec2<bool>(!(var_1.b.x <= 6018u), all(!(!select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, var_2.x), false))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(964f, 224f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-2652f, var_1.a.x, _wgslsmith_f_op_vec3_f32(var_0.a + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_0.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, 1721f, -320f) - vec3<f32>(283f, var_1.a.x, var_0.a.x)))), vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -807f)))), min(u_input.d, abs(u_input.d)), _wgslsmith_mod_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), vec4<i32>(u_input.d.x, u_input.d.x, -63009i, u_input.d.x)), -_wgslsmith_mult_i32(~u_input.d.x, u_input.d.x)));
}

