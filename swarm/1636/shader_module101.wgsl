struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec2<bool>,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<u32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: Struct_1 = Struct_1(vec3<bool>(false, false, false), 523f, vec2<bool>(false, false), vec3<f32>(1711f, 583f, 1476f), i32(-2147483648));

var<private> global2: array<vec4<f32>, 30>;

var<private> global3: array<vec4<i32>, 18>;

var<private> global4: array<vec3<f32>, 24>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> f32 {
    let var_0 = vec2<bool>(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-820f, -1461f))) >= _wgslsmith_f_op_f32(sign(global1.d.x)), !(!arg_0.c.x));
    return global1.b;
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global1.b, global1.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b, 162f) - global1.d.yy)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.d.xy), global1.d.zx)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(global1.d.xy, vec2<f32>(global1.b, global1.d.x), global1.c)))))), vec2<bool>(global1.a.x, any(vec4<bool>(global1.a.x, global1.a.x, true, global1.c.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(-3310f, 488f), vec2<f32>(global1.d.x, -2243f)))) + global1.d.xy))));
    var var_1 = min(global3[_wgslsmith_index_u32(u_input.d.x, 18u)] & global3[_wgslsmith_index_u32(~(~firstTrailingBit(u_input.a.x)), 18u)], -vec4<i32>(-14523i, -1i >> (global0.x % 32u), _wgslsmith_dot_vec4_i32(~vec4<i32>(-12386i, u_input.e, -10303i, u_input.e), ~global3[_wgslsmith_index_u32(25500u, 18u)]), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, global1.e, 8046i), vec3<i32>(-2147483647i, global1.e, -1i))));
    let var_2 = Struct_1(!(!(!vec3<bool>(false, global1.a.x, global1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(721f, global1.b), var_0.x)), vec2<bool>(!(min(u_input.b, u_input.c.x) > reverseBits(61543u)), all(!global1.a)), vec3<f32>(-742f, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * global1.d.x)), _wgslsmith_f_op_f32(max(global1.d.x, _wgslsmith_f_op_f32(f32(-1f) * -860f)))), (-(~u_input.e) << (_wgslsmith_dot_vec4_u32(u_input.c, u_input.c) % 32u)) ^ ~max(u_input.e >> (46114u % 32u), ~(-2147483647i)));
    var var_3 = firstLeadingBit(u_input.c);
    var var_4 = all(select(select(vec4<bool>(!global1.a.x, all(var_2.a), false, any(vec4<bool>(false, false, false, var_2.a.x))), select(select(vec4<bool>(var_2.a.x, false, false, false), vec4<bool>(global1.a.x, false, var_2.c.x, true), vec4<bool>(true, true, true, var_2.a.x)), !vec4<bool>(var_2.c.x, global1.c.x, false, true), select(vec4<bool>(global1.c.x, global1.c.x, true, false), vec4<bool>(true, false, true, true), true)), vec4<bool>(global1.c.x, !var_2.a.x, select(true, global1.a.x, true), true)), vec4<bool>(false, _wgslsmith_f_op_f32(round(-1202f)) < -1000f, !(var_2.b >= -1115f), !all(vec2<bool>(var_2.c.x, false))), !(!(!vec4<bool>(global1.c.x, false, var_2.c.x, false)))));
    return _wgslsmith_f_op_f32(-global1.b);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: bool, arg_3: f32) -> f32 {
    global2 = array<vec4<f32>, 30>();
    global4 = array<vec3<f32>, 24>();
    global3 = array<vec4<i32>, 18>();
    let var_0 = vec4<f32>(_wgslsmith_div_f32(global1.b, arg_0.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f * 1450f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(Struct_1(vec3<bool>(true, true, true), global1.d.x, global1.a.yz, vec3<f32>(372f, arg_0.x, -206f), u_input.e), global1.e)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(398f))), -1272f);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(func_3()), Struct_1(global1.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -104f))), vec2<bool>(any(vec3<bool>(true, global1.a.x, true)), false & any(vec4<bool>(false, false, global1.c.x, false))), var_0.xwz, arg_1.x), ~u_input.c, 0u);
    return _wgslsmith_f_op_f32(func_3());
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec3<f32>, 24>();
    global2 = array<vec4<f32>, 30>();
    let var_0 = vec4<f32>(_wgslsmith_div_f32(global1.d.x, _wgslsmith_div_f32(-930f, _wgslsmith_f_op_f32(func_1(Struct_1(global1.a, global1.b, vec2<bool>(global1.c.x, true), global1.d, u_input.e), 208i)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(global1.d.zz - _wgslsmith_f_op_vec2_f32(sign(global1.d.zy))), _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(u_input.e, u_input.e, global1.e)), vec3<i32>(1896i, -1i, global1.e), vec3<i32>(68400i, -13933i, global1.e) & vec3<i32>(u_input.e, global1.e, -12027i)), true, _wgslsmith_f_op_f32(global1.d.x - -459f))))), -599f, _wgslsmith_f_op_f32(func_2(global1.d.xy, vec3<i32>(~global1.e >> (_wgslsmith_div_u32(global0.x, u_input.a.x) % 32u), u_input.e, ~u_input.e), !global1.a.x, -1027f)));
    let var_1 = ~vec2<u32>(~_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), ~u_input.b) >> (global0.xz % vec2<u32>(32u));
    global1 = Struct_1(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-2195f)))) * _wgslsmith_div_f32(_wgslsmith_div_f32(-564f, var_0.x), 1034f)) + 1f), !vec2<bool>(true, global1.c.x), global1.d, 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(global1.d.yx, global1.b);
}

