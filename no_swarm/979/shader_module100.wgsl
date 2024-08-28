struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<f32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> u32 {
    var var_0 = (u_input.b >> (_wgslsmith_mult_u32(global0.a, 4294967295u) % 32u)) << (((_wgslsmith_add_u32(18269u, 73430u) | min(u_input.a, _wgslsmith_add_u32(14928u, 0u))) >> (1u % 32u)) % 32u);
    var_0 = -26715i;
    let var_1 = _wgslsmith_mod_u32(u_input.a, _wgslsmith_div_u32(global0.a, _wgslsmith_add_u32(global0.a, global0.a)));
    let var_2 = global0.a < global0.a;
    let var_3 = Struct_2(Struct_1(select(var_1, u_input.e.x, false)), u_input.e, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1416f)), 1276f, _wgslsmith_div_f32(238f, _wgslsmith_f_op_f32(-1000f - 377f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1235f)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-622f)), _wgslsmith_f_op_f32(-729f + 1076f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-128f)), -1365f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -969f) + _wgslsmith_f_op_f32(min(1000f, -358f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(402f))))), 7446u);
    return (30746u ^ global0.a) | 6332u;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2) -> vec2<u32> {
    let var_0 = true;
    var var_1 = arg_1;
    var_1 = arg_1;
    global0 = var_1.a;
    var var_2 = Struct_1(var_1.a.a);
    return vec2<u32>(1u, firstTrailingBit(abs(func_3())));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: i32, arg_3: Struct_1) -> bool {
    let var_0 = (vec2<u32>(~(33903u << (global0.a % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.a, 32387u, 15110u), vec3<u32>(global0.a, 0u, 38756u))) << (u_input.e.xx % vec2<u32>(32u))) << (min(reverseBits(select(_wgslsmith_div_vec2_u32(u_input.e.xx, u_input.e.zy), func_2(vec4<i32>(u_input.b, u_input.b, 50987i, 33454i), Struct_2(arg_3, vec3<u32>(global0.a, arg_3.a, 11151u), vec4<f32>(arg_0.x, arg_0.x, 1541f, 1000f), 35388u)), true)), u_input.e.xz) % vec2<u32>(32u));
    return !arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~global0.a;
    var var_0 = select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true & all(vec2<bool>(false, false)), func_1(vec2<f32>(663f, 808f), vec3<bool>(true, false, true), u_input.c.x, Struct_1(19052u)) | false), vec2<bool>(func_1(_wgslsmith_div_vec2_f32(vec2<f32>(-763f, 225f), vec2<f32>(-554f, -1142f)), vec3<bool>(false, true, false), u_input.c.x & u_input.b, Struct_1(u_input.d)), true)), select(!select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), true), vec2<bool>(_wgslsmith_sub_u32(21392u, u_input.d) == global0.a, any(select(vec2<bool>(false, true), vec2<bool>(true, false), false))), !(!all(vec4<bool>(true, true, true, true)))), !select(vec2<bool>(u_input.c.x > 2147483647i, any(vec3<bool>(false, true, true))), vec2<bool>(true, true), ~69743u <= _wgslsmith_clamp_u32(global0.a, 17790u, 0u)));
    var var_1 = u_input.b;
    var var_2 = -abs(firstLeadingBit(vec2<i32>(0i, 1i)) & _wgslsmith_mod_vec2_i32(u_input.c, u_input.c)) << (~u_input.e.zx % vec2<u32>(32u));
    global1 = firstLeadingBit(firstLeadingBit(~(~52141u)));
    let var_3 = ~1u;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-485f, -1036f, true)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4, var_4, 367f, -643f))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4, 562f, -476f, -1708f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-757f, var_4, 173f, 2027f) * vec4<f32>(var_4, var_4, -2679f, var_4)))))), var_4);
}

