struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(0u, vec2<f32>(1000f, -967f), -1991f, 0u, false), 818f, vec4<bool>(false, true, false, true));

var<private> global1: array<vec4<f32>, 2>;

var<private> global2: array<Struct_2, 11>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: f32) -> bool {
    let var_0 = Struct_2(global0.a, global0.a.b.x, vec4<bool>(all(!vec3<bool>(true, global0.c.x, global0.c.x)), false, global0.a.e, global0.a.e));
    global1 = array<vec4<f32>, 2>();
    global2 = array<Struct_2, 11>();
    global1 = array<vec4<f32>, 2>();
    global2 = array<Struct_2, 11>();
    return true;
}

fn func_2(arg_0: u32, arg_1: vec4<bool>) -> Struct_2 {
    let var_0 = false;
    var var_1 = global0.c.yw;
    global0 = Struct_2(global0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b), -1991f), select(select(vec4<bool>(func_3(arg_0, -977f), any(vec3<bool>(false, false, false)), global0.c.x, arg_1.x), vec4<bool>(var_1.x, false, func_3(5645u, 556f), global0.a.e), _wgslsmith_add_u32(arg_0, global0.a.d) <= 4294967295u), arg_1, !select(select(vec4<bool>(false, false, true, false), vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), global0.c), !global0.c, arg_1)));
    return Struct_2(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(218f, global0.b), _wgslsmith_f_op_f32(exp2(global0.b))) + _wgslsmith_f_op_f32(-global0.b))), !(!vec4<bool>(-1i != u_input.a.x, select(false, var_0, false), var_0, global0.a.a != 1u)));
}

fn func_1(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<i32>, arg_3: u32) -> u32 {
    global1 = array<vec4<f32>, 2>();
    let var_0 = _wgslsmith_f_op_f32(max(1268f, -1075f));
    global2 = array<Struct_2, 11>();
    global0 = func_2(80874u, global0.c);
    global1 = array<vec4<f32>, 2>();
    return ~global0.a.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_u32(select(~vec4<u32>(global0.a.a, global0.a.d, _wgslsmith_add_u32(global0.a.a, 47297u), 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(global0.a.d, min(4294967295u, 16297u), func_1(global0.c.zzw, -327f, vec2<i32>(8365i, u_input.a.x), global0.a.d), max(20795u, global0.a.d)), ~select(vec4<u32>(global0.a.d, global0.a.d, global0.a.a, 4294967295u), vec4<u32>(global0.a.a, global0.a.a, global0.a.d, global0.a.d), global0.c.x)), global0.c), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(abs(vec4<u32>(34662u, global0.a.d, 1u, 1u) >> (vec4<u32>(global0.a.d, 4294967295u, 1u, global0.a.d) % vec4<u32>(32u))), ~(~vec4<u32>(1u, global0.a.a, 0u, 4294967295u))), ~vec4<u32>(global0.a.a, global0.a.a, 84076u, 0u) << (_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.a.a, 83430u, global0.a.a, global0.a.a), vec4<u32>(global0.a.d, 0u, global0.a.d, 4294967295u)), ~vec4<u32>(global0.a.a, global0.a.a, 3472u, 8151u), vec4<u32>(global0.a.a, 1u, global0.a.d, 19002u)) % vec4<u32>(32u))));
    global1 = array<vec4<f32>, 2>();
    global2 = array<Struct_2, 11>();
    let var_1 = _wgslsmith_div_vec3_i32(u_input.a.xxz, ((u_input.a.www | ~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)) << (vec3<u32>(~4294967295u, global0.a.a, global0.a.d) % vec3<u32>(32u))) >> (_wgslsmith_add_vec3_u32((vec3<u32>(37968u, global0.a.a, 0u) & vec3<u32>(0u, global0.a.d, 28615u)) | var_0.xzx, var_0.zzz) % vec3<u32>(32u)));
    global2 = array<Struct_2, 11>();
    global0 = Struct_2(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.b.x, global0.b)))), select(func_2(var_0.x, global0.c).c, !global0.c, true));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.b.x, firstTrailingBit(~var_0.wx));
}

