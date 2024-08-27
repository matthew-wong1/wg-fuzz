struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

var<private> global1: array<vec4<u32>, 21>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> bool {
    return 2216u <= u_input.b.x;
}

fn func_2() -> u32 {
    global0 = vec3<bool>(!global0.x, all(vec2<bool>(func_3(!global0.x, Struct_1(-326f, u_input.a, vec3<f32>(-560f, 1891f, 1000f), global0.x)), all(vec3<bool>(global0.x, false, false)))), false);
    global1 = array<vec4<u32>, 21>();
    let var_0 = Struct_2(!select(select(!vec2<bool>(false, global0.x), select(global0.xz, vec2<bool>(true, global0.x), false), true), select(select(global0.yx, global0.zx, global0.x), vec2<bool>(true, global0.x), global0.zz), all(vec2<bool>(global0.x, global0.x)) | !global0.x), _wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1948u, u_input.b.x, 12909u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.c.x, u_input.c.x) << (u_input.b % vec3<u32>(32u)), vec3<u32>(u_input.b.x, 41461u, 4294967295u))), 21u)], _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(abs(u_input.c), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, 0u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.a, 67904u, 1u))), select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 30035u, u_input.c.x, u_input.b.x), vec4<u32>(4294967295u, u_input.a, 7035u, 14003u)), global1[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 21u)], global0.x), global1[_wgslsmith_index_u32(u_input.a, 21u)])));
    var var_1 = vec4<bool>(true, !var_0.a.x, any(var_0.a), var_0.a.x);
    var_1 = !(!(!vec4<bool>(true, true, true || var_0.a.x, true)));
    return abs(~(~24116u));
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_3(any(!(!(!vec3<bool>(false, global0.x, true)))), Struct_2(!(!global0.zz), 1u));
    let var_1 = u_input.c;
    var var_2 = true;
    global0 = select(vec3<bool>(!((u_input.c.x >> (0u % 32u)) > func_2()), (_wgslsmith_f_op_f32(step(-623f, 1417f)) >= -1098f) || !select(var_0.b.a.x, true, global0.x), !(var_0.b.a.x & func_3(true, Struct_1(-396f, var_0.b.b, vec3<f32>(-396f, 473f, -578f), false)))), vec3<bool>(var_0.b.a.x, select(true, true, 1u >= var_0.b.b), all(select(!vec3<bool>(global0.x, true, var_0.a), select(vec3<bool>(false, false, true), vec3<bool>(global0.x, false, false), var_0.b.a.x), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false)))), any(vec3<bool>(var_0.a, global0.x, var_0.a)));
    global0 = !(!select(!vec3<bool>(global0.x, var_0.a, false), vec3<bool>(any(vec4<bool>(var_0.a, global0.x, false, global0.x)), global0.x, var_0.b.a.x), any(!vec2<bool>(global0.x, false))));
    return Struct_3(u_input.e >= min(-_wgslsmith_dot_vec3_i32(vec3<i32>(8724i, u_input.d, -1i), vec3<i32>(-1i, u_input.d, u_input.e)), u_input.e), Struct_2(vec2<bool>(true, global0.x), ~1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(909f)), _wgslsmith_f_op_f32(-358f * -1018f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1091f * -521f) - -1055f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(808f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec2<u32>(~u_input.b.x, u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(595f - -211f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-210f, 144f) * _wgslsmith_f_op_f32(400f - -361f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-861f * _wgslsmith_f_op_f32(f32(-1f) * -792f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-566f, 801f, true)), _wgslsmith_f_op_f32(f32(-1f) * -397f))))));
}

