struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: f32,
    d: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
    c: vec2<i32>,
    d: f32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 4> = array<vec2<bool>, 4>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    let var_0 = global0[_wgslsmith_index_u32(u_input.c, 4u)];
    global0 = array<vec2<bool>, 4>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-717f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-149f + _wgslsmith_f_op_f32(f32(-1f) * -186f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2480f)))))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x)))))));
    var var_2 = var_1.x;
    return any(select(select(vec3<bool>(true, false, var_0.x), select(!vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, true, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x)), !var_0.x | false), vec3<bool>(var_0.x, _wgslsmith_f_op_f32(select(-1119f, 337f, true)) >= -303f, all(vec4<bool>(var_0.x, var_0.x, true, var_0.x))), var_0.x));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>) -> bool {
    global0 = array<vec2<bool>, 4>();
    var var_0 = vec2<f32>(1f, 1f);
    let var_1 = !(!func_3()) && !arg_0;
    global0 = array<vec2<bool>, 4>();
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -717f), _wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1563f, -275f, var_0.x)))), _wgslsmith_add_u32(_wgslsmith_clamp_u32(27310u, ~1963u, ~1u), u_input.c), _wgslsmith_div_vec3_i32(select(vec3<i32>(u_input.d.x, 15299i, u_input.d.x), vec3<i32>(u_input.d.x, -2147483647i, u_input.d.x), var_1), vec3<i32>(u_input.d.x, -7500i, u_input.d.x)) ^ ~(-u_input.d)), 2503f);
    return all(global0[_wgslsmith_index_u32(select(19594u, ~2493u, false), 4u)]);
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: u32, arg_3: f32) -> Struct_1 {
    let var_0 = ~u_input.b;
    global0 = array<vec2<bool>, 4>();
    global0 = array<vec2<bool>, 4>();
    let var_1 = arg_0;
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, -335f, 1010f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-962f, 935f, -887f) - vec3<f32>(arg_3, 1435f, arg_3)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1146f, -1210f, 590f)))))), var_0.x, vec3<i32>(0i, ~_wgslsmith_clamp_i32(u_input.d.x, u_input.d.x, -1i), 2147483647i)), _wgslsmith_f_op_f32(f32(-1f) * -312f));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.a.a))))), _wgslsmith_mult_u32(min(4294967295u, ~var_0.x), var_2.a.b), ~(abs(vec3<i32>(var_2.a.c.x, -1i, u_input.d.x)) | vec3<i32>(u_input.d.x, _wgslsmith_mod_i32(u_input.d.x, 20240i), u_input.d.x)));
}

fn func_1() -> u32 {
    global0 = array<vec2<bool>, 4>();
    let var_0 = Struct_4(~u_input.d.yz, func_4(any(vec3<bool>(true, func_2(true, vec2<bool>(false, false)), any(vec2<bool>(false, false)))), select(select(select(vec2<bool>(true, false), global0[_wgslsmith_index_u32(u_input.b.x, 4u)], false), select(global0[_wgslsmith_index_u32(1u, 4u)], vec2<bool>(true, false), false), global0[_wgslsmith_index_u32(u_input.b.x, 4u)]), select(global0[_wgslsmith_index_u32(0u, 4u)], select(global0[_wgslsmith_index_u32(u_input.a, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)], false), true), any(vec3<bool>(false, true, true)) || true), _wgslsmith_sub_u32(17771u ^ u_input.c, abs(_wgslsmith_clamp_u32(119566u, u_input.b.x, u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -790f) * -1477f)), -1111f, Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(644f, -198f, 840f) * vec3<f32>(-283f, -2002f, 397f))), u_input.a, u_input.d << (u_input.b.xyw % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -961f) + _wgslsmith_f_op_f32(trunc(-1322f))))));
    let var_1 = u_input.a;
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(step(var_0.d.a.a.x, -494f)), 750f, var_0.d.b), vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.a.x), _wgslsmith_f_op_f32(251f + var_0.c), _wgslsmith_f_op_f32(floor(var_0.c))))), select(48163u, _wgslsmith_dot_vec2_u32(~u_input.b.yz, _wgslsmith_add_vec2_u32(u_input.b.xz, u_input.b.yw)), !any(global0[_wgslsmith_index_u32(var_0.b.b, 4u)])), abs(firstLeadingBit(_wgslsmith_div_vec3_i32(u_input.d, vec3<i32>(1i, 2147483647i, -1i))))), true, Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.d.b, -183f, var_0.c)))))), var_0.b.b, -var_0.b.c));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-518f, 1654f, -725f, var_2.a.a.x), vec4<f32>(206f, var_2.c.a.x, -628f, var_2.a.a.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1720f, 1219f, var_0.b.a.x, 603f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.a.x, var_0.c, -939f, var_2.a.a.x)))));
    return _wgslsmith_sub_u32(161688u, 42117u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true))) & any(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false))));
    let var_1 = ~(~(~select(vec2<u32>(u_input.b.x, u_input.a) | vec2<u32>(u_input.a, u_input.c), u_input.b.xx & vec2<u32>(51788u, 4294967295u), false)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(func_1(), firstLeadingBit(u_input.b.x)), 4294967295u & _wgslsmith_clamp_u32(var_1.x, u_input.a, 1722u));
}

