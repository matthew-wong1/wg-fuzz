struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: vec4<bool>,
    e: i32,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<bool>,
    d: vec3<u32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 8>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: vec2<bool>) -> f32 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1000f)), arg_1.x, true)), -1474f, _wgslsmith_f_op_f32(577f * _wgslsmith_div_f32(arg_0, -1105f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(arg_1.x, 735f, false))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 870f, 1031f, arg_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-429f, arg_0, arg_1.x, arg_0))) + vec4<f32>(arg_0, arg_1.x, 933f, 1934f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1147f, 277f, arg_0, -1000f)), vec4<f32>(668f, _wgslsmith_f_op_f32(step(arg_1.x, 724f)), _wgslsmith_f_op_f32(step(arg_1.x, arg_0)), _wgslsmith_div_f32(arg_1.x, -234f))))));
    var var_1 = arg_1.x;
    return -1552f;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: bool) -> f32 {
    global0 = array<Struct_4, 8>();
    var var_0 = u_input.c.x;
    let var_1 = vec2<u32>(_wgslsmith_clamp_u32(arg_2.a, ~firstTrailingBit(arg_2.a) & 49192u, countOneBits(~countOneBits(0u))), u_input.b.x & _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b, ~vec3<u32>(0u, 1u, 28660u)), vec3<u32>(_wgslsmith_mod_u32(u_input.b.x, 1u), arg_2.a & u_input.b.x, arg_2.a)));
    var var_2 = reverseBits(min(-vec3<i32>(arg_2.b, arg_2.b, u_input.c.x), countOneBits(arg_2.d)) << (u_input.b % vec3<u32>(32u)));
    var var_3 = false;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_div_vec2_f32(vec2<f32>(-1972f, 741f), arg_0.xz), select(!arg_2.c.c, vec2<bool>(true, arg_2.c.c.x), 453f >= arg_0.x)))))));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: u32) -> vec2<bool> {
    global0 = array<Struct_4, 8>();
    let var_0 = vec2<bool>(true, true);
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -406f), 1812f))))));
    var var_2 = var_0;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-739f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec4_f32(vec4<f32>(1105f, 1677f, 1378f, -422f), vec4<f32>(-930f, -368f, 395f, 1000f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-363f, -366f, 641f, 1130f))), arg_1.a, true)))));
    return !vec2<bool>(any(select(!arg_1.d.wx, !vec2<bool>(true, arg_1.d.x), var_2.x)), ~1i < u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    let var_1 = Struct_5(!vec3<bool>(any(func_1(vec4<bool>(false, true, true, true), Struct_3(Struct_2(0u, 21285i, Struct_1(vec2<i32>(var_0, -1i), var_0, vec2<bool>(true, true)), vec3<i32>(0i, -65049i, u_input.c.x)), Struct_2(u_input.b.x, 1i, Struct_1(u_input.c, -15669i, vec2<bool>(false, true)), vec3<i32>(u_input.c.x, u_input.c.x, 64017i)), true, vec4<bool>(false, true, false, false), var_0), 4294967295u)), true, true), Struct_1(firstLeadingBit(select(u_input.c, u_input.c, vec2<bool>(false, true)) | (vec2<i32>(-2147483647i, 1i) << (u_input.b.zx % vec2<u32>(32u)))), -18808i, vec2<bool>(!func_1(vec4<bool>(true, false, true, false), Struct_3(Struct_2(u_input.b.x, u_input.a, Struct_1(vec2<i32>(-37222i, 2147483647i), -1i, vec2<bool>(false, true)), vec3<i32>(u_input.c.x, 0i, 0i)), Struct_2(u_input.b.x, var_0, Struct_1(vec2<i32>(-30748i, u_input.c.x), u_input.a, vec2<bool>(false, false)), vec3<i32>(-80141i, var_0, 2147483647i)), false, vec4<bool>(true, true, false, true), var_0), 4294967295u).x, false)), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(false, false, true, true), true), any(vec3<bool>(true, false, false))), ~(~u_input.b), select(!select(vec2<bool>(false, true), vec2<bool>(true, true), true), !select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), func_1(vec4<bool>(true, false, false, true), Struct_3(Struct_2(4294967295u, 1583i, Struct_1(u_input.c, -2147483647i, vec2<bool>(false, false)), vec3<i32>(var_0, u_input.a, u_input.a)), Struct_2(u_input.b.x, var_0, Struct_1(vec2<i32>(var_0, var_0), u_input.a, vec2<bool>(true, true)), vec3<i32>(var_0, var_0, u_input.c.x)), false, vec4<bool>(true, true, false, false), var_0), 22983u), true), vec2<bool>(true, true)));
    let var_2 = Struct_2(~var_1.d.x, var_0, Struct_1(vec2<i32>(-1i << (0u % 32u), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c.x, -1i, var_1.b.a.x, 2147483647i), vec4<i32>(var_1.b.a.x, 7503i, 839i, var_0) << (vec4<u32>(65900u, u_input.b.x, 1u, 72029u) % vec4<u32>(32u)))), 0i, vec2<bool>(any(select(var_1.c, var_1.c, var_1.c)), var_0 < var_0)), countOneBits(~abs(vec3<i32>(-1i, var_0, var_0) | vec3<i32>(1i, -2147483647i, -2147483647i))));
    global0 = array<Struct_4, 8>();
    let var_3 = var_1;
    global0 = array<Struct_4, 8>();
    var var_4 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(365f, -1000f, -611f, 1434f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(165f, -107f, -411f, 627f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(2623f, 1000f, 104f, 1522f) - vec4<f32>(644f, -912f, -1430f, -559f)), var_2, var_3.b.c.x))))), 283f);
}

