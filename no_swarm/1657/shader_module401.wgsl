struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 27>;

var<private> global1: array<Struct_1, 29>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    var var_0 = true;
    global1 = array<Struct_1, 29>();
    global1 = array<Struct_1, 29>();
    var var_1 = Struct_3(true);
    var var_2 = ~max(firstLeadingBit(vec3<u32>(1u, 1u, 1u)), ~(~abs(vec3<u32>(1u, 4294967295u, 0u))));
    return Struct_1(~(~(var_2.zx ^ var_2.yz) ^ ~(var_2.zy & vec2<u32>(0u, var_2.x))), vec2<i32>(~0i, ~u_input.a), vec4<bool>(var_1.a, arg_0.a, !(1u < (var_2.x & var_2.x)), var_1.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-849f, 2129f, -263f, -134f)), vec4<f32>(545f, 1015f, -1224f, 2126f))))));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = 4294967295u;
    global0 = array<vec4<u32>, 27>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1623f)) * _wgslsmith_f_op_f32(f32(-1f) * -1519f))) - -353f);
    let var_2 = true;
    global0 = array<vec4<u32>, 27>();
    return vec3<bool>(any(vec3<bool>(any(arg_2.a.zx), _wgslsmith_clamp_u32(63673u, 27404u, var_0) >= ~var_0, _wgslsmith_f_op_f32(-344f + -135f) <= _wgslsmith_f_op_f32(ceil(1959f)))), false, !func_1(Struct_3(select(var_2, arg_2.a.x, var_2))).c.x);
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<i32>) -> bool {
    var var_0 = vec2<u32>(1u, 1u);
    let var_1 = Struct_1(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, 0u), vec2<u32>(var_0.x, 4294967295u)), vec2<u32>(_wgslsmith_clamp_u32(73529u, 4294967295u, var_0.x), 4793u)), _wgslsmith_add_vec2_u32(~vec2<u32>(var_0.x, var_0.x), vec2<u32>(var_0.x, var_0.x)) >> (~_wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(4294967295u, var_0.x)) % vec2<u32>(32u))), -arg_2, vec4<bool>(-2498f == _wgslsmith_f_op_f32(-118f + _wgslsmith_f_op_f32(-arg_1)), all(select(vec2<bool>(arg_0.x, true), vec2<bool>(arg_0.x, arg_0.x), false)) && arg_0.x, !(any(arg_0) & arg_0.x), any(arg_0.yz)), vec4<f32>(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * 632f) * _wgslsmith_f_op_f32(floor(arg_1)))), arg_1, arg_1, arg_1));
    global0 = array<vec4<u32>, 27>();
    global1 = array<Struct_1, 29>();
    var_0 = var_1.a;
    return false;
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: vec3<bool>) -> vec4<u32> {
    var var_0 = reverseBits(_wgslsmith_dot_vec4_i32(~(-vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a)), ~(-(vec4<i32>(u_input.a, u_input.a, u_input.a, 34709i) | vec4<i32>(u_input.a, u_input.a, -13580i, -70471i)))));
    let var_1 = _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x * arg_2.x) * _wgslsmith_f_op_f32(f32(-1f) * -818f))) * arg_2.x));
    let var_2 = vec3<bool>(true, true, !arg_3.x);
    global1 = array<Struct_1, 29>();
    global0 = array<vec4<u32>, 27>();
    return firstTrailingBit(global0[_wgslsmith_index_u32(1u, 27u)] | ~(~firstTrailingBit(global0[_wgslsmith_index_u32(28611u, 27u)])));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> StorageBuffer {
    let var_0 = !vec3<bool>(arg_0.c.x & (false && func_1(Struct_3(arg_0.c.x)).c.x), arg_0.c.x, true);
    let var_1 = 575f;
    let var_2 = Struct_2(select(vec3<bool>(any(var_0), any(arg_0.c.yz), true), select(vec3<bool>(true, arg_0.b.x < arg_0.b.x, var_0.x), vec3<bool>(true, false, var_0.x), true), vec3<bool>(_wgslsmith_f_op_f32(-1157f - arg_0.d.x) > _wgslsmith_f_op_f32(abs(arg_1)), arg_0.c.x, false)), arg_0.d.yxy);
    var var_3 = _wgslsmith_mod_vec4_u32(func_5(func_4(func_3(arg_0.d.x, arg_0.c.x, var_2), _wgslsmith_f_op_f32(var_1 - 948f), arg_0.b) | false, Struct_3(all(arg_0.c.yw)), _wgslsmith_f_op_vec3_f32(-func_1(Struct_3(false)).d.xyy), vec3<bool>(var_0.x, !(u_input.a < 17548i), any(!var_2.a))), ~firstLeadingBit(firstLeadingBit(global0[_wgslsmith_index_u32(arg_0.a.x, 27u)]) | vec4<u32>(arg_0.a.x, 55202u, arg_0.a.x, arg_0.a.x)));
    global0 = array<vec4<u32>, 27>();
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(var_2.b * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.d.xyw)) + var_2.b)), func_5(!select(arg_0.c.x, false, false), Struct_3(true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1463f, var_1, var_1) * vec3<f32>(535f, var_2.b.x, -368f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d.x, -691f, 650f) - arg_0.d.wzx)), var_2.a).x >> (_wgslsmith_add_u32(~(~23346u), arg_0.a.x) % 32u), ~abs(abs(arg_0.b)), vec4<i32>(16453i, 1i, 19834i, reverseBits(-countOneBits(arg_0.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 29>();
    let x = u_input.a;
    s_output = func_2(func_1(Struct_3(select(all(vec2<bool>(false, false)), true, true))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-267f)), -1860f, true)) - func_1(Struct_3(true)).d.x))));
}

