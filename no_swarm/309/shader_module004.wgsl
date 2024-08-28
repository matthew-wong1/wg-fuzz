struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 8>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_f32(step(1896f, _wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.b))))));
    let var_1 = Struct_1(vec3<bool>(!any(global0[_wgslsmith_index_u32(6303u, 8u)]) && true, false, false), vec2<i32>(-32615i, ~(i32(-1i) * -u_input.b.x)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.b * var_0)))), _wgslsmith_f_op_f32(var_0 * arg_0.b), _wgslsmith_f_op_f32(f32(-1f) * -2114f), _wgslsmith_f_op_f32(select(var_0, arg_0.b, true))));
    var var_2 = var_1.c.zx;
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    let var_0 = !vec2<bool>(func_3(arg_0), any(arg_1.a));
    global0 = array<vec3<bool>, 8>();
    global0 = array<vec3<bool>, 8>();
    global0 = array<vec3<bool>, 8>();
    var var_1 = true;
    return arg_1;
}

fn func_1(arg_0: bool, arg_1: u32) -> Struct_1 {
    global0 = array<vec3<bool>, 8>();
    let var_0 = func_2(Struct_2(firstLeadingBit(arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-798f * -472f), -847f)) + 1681f)), Struct_1(vec3<bool>(true, any(vec4<bool>(true, arg_0, true, true)), !any(vec4<bool>(false, true, arg_0, arg_0))), _wgslsmith_mod_vec2_i32(u_input.b.zz, ~u_input.b.xx), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -663f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1263f)) - _wgslsmith_f_op_f32(sign(-705f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2454f)), 124f)));
    global0 = array<vec3<bool>, 8>();
    return func_2(Struct_2(select(~4294967295u, arg_1, var_0.a.x), _wgslsmith_f_op_f32(step(167f, var_0.c.x))), Struct_1(vec3<bool>(!var_0.a.x, !any(vec3<bool>(var_0.a.x, false, false)), func_3(Struct_2(6144u, var_0.c.x))), ~countOneBits(~vec2<i32>(51643i, -1i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1260f, -615f, var_0.c.x, 128f))) * _wgslsmith_f_op_vec4_f32(-func_2(Struct_2(u_input.d, var_0.c.x), Struct_1(vec3<bool>(var_0.a.x, arg_0, false), vec2<i32>(2147483647i, var_0.b.x), var_0.c)).c))));
}

fn func_4(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_1) -> vec2<u32> {
    var var_0 = -1i;
    let var_1 = func_1(min(arg_2.b.x, arg_2.b.x) == -(~(~(-87029i))), _wgslsmith_div_u32(u_input.c.x, abs(select(18132u, u_input.d, false)) & (abs(u_input.a.x) & 0u)));
    let var_2 = u_input.b.x;
    let var_3 = !select(!select(!vec4<bool>(true, false, false, var_1.a.x), vec4<bool>(arg_2.a.x, arg_2.a.x, var_1.a.x, arg_2.a.x), !vec4<bool>(var_1.a.x, var_1.a.x, true, arg_2.a.x)), !vec4<bool>(var_1.a.x | false, var_1.a.x, !arg_2.a.x, var_1.a.x), any(vec2<bool>(!var_1.a.x, arg_2.a.x)));
    var var_4 = all(select(vec3<bool>(any(arg_2.a) | var_3.x, select(!var_1.a.x, var_1.a.x, any(var_1.a.zy)), firstLeadingBit(arg_1) < firstTrailingBit(arg_2.b.x)), vec3<bool>(var_1.a.x, ~u_input.e < _wgslsmith_clamp_u32(u_input.a.x, 74727u, 9879u), true), !arg_2.a));
    return ~u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 8>();
    var var_0 = !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, !all(vec3<bool>(true, true, false)), select(true, false, true)), any(vec4<bool>(true, true, true, true)));
    let var_1 = _wgslsmith_add_vec2_u32(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, -346f, -1667f))))), u_input.b.x, func_1(true, 1u)), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(u_input.c.x, 1u)), u_input.a));
    var var_2 = func_1(true, _wgslsmith_add_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, u_input.e, u_input.d), vec3<u32>(0u, u_input.e, u_input.e)), ~u_input.e), max(var_1.x, firstTrailingBit(~var_1.x)))).a.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, -960f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1023f))));
}

