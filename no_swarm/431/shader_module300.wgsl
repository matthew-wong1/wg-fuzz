struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: vec3<u32>,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 14>;

var<private> global1: Struct_3;

var<private> global2: array<vec4<bool>, 22> = array<vec4<bool>, 22>(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32) -> u32 {
    global1 = Struct_3(_wgslsmith_div_vec3_f32(vec3<f32>(-1196f, global1.a.x, global1.d), vec3<f32>(global1.a.x, _wgslsmith_f_op_f32(-global1.e.d.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x * 1245f) - 1f))), -1i, firstLeadingBit(global1.c), 458f, global1.e);
    global1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1047f, global1.e.a, global1.a.x))))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.a))))), ~19056i, global1.c, -434f, global1.e);
    global2 = array<vec4<bool>, 22>();
    global2 = array<vec4<bool>, 22>();
    var var_0 = all(vec2<bool>(3028u > ~u_input.a, u_input.a < _wgslsmith_mult_u32(firstLeadingBit(0u), global1.c.x)));
    return 34841u;
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.e.d.a * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.e.d.a - global1.e.d.a) * vec4<f32>(1003f, 696f, global1.d, 894f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(926f, global1.d, arg_1.a.x, -527f)))));
    var var_1 = ~(~vec4<u32>(firstTrailingBit(72140u), ~global1.c.x, func_3(u_input.a), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.e.x, global1.c.x, 4294967295u), u_input.e.x, global1.c.x)));
    global2 = array<vec4<bool>, 22>();
    var_1 = countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(select(13170u << (1u % 32u), u_input.e.x, any(vec3<bool>(false, false, false))), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 4294967295u) >> (vec3<u32>(global1.c.x, global1.c.x, 31101u) % vec3<u32>(32u)), min(global1.c, global1.c)), u_input.a, ~1u), vec4<u32>(u_input.e.x, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.e.yy, vec2<u32>(64552u, global1.c.x)), _wgslsmith_div_vec2_u32(u_input.e.zy, vec2<u32>(1u, 4294967295u))), max(16619u, 1u) << (_wgslsmith_mod_u32(global1.c.x, var_1.x) % 32u), var_1.x)));
    global0 = array<vec4<i32>, 14>();
    return global1.e;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>) -> Struct_2 {
    return func_2(global1.b, Struct_1(global1.e.d.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global1.a.x, _wgslsmith_div_f32(-751f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, global1.d)))), global1.a.x, global1.e.d);
    global0 = array<vec4<i32>, 14>();
    var var_1 = func_1(Struct_2(var_0.b, 998f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.d)) - -1109f), global1.a.x)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(select(var_0.c, -1000f, false)), -1920f, _wgslsmith_f_op_f32(-global1.d), -887f))), reverseBits(vec4<u32>(45447u, ~_wgslsmith_clamp_u32(global1.c.x, u_input.a, global1.c.x), global1.c.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.a, 26347u, u_input.e.x), ~vec4<u32>(u_input.a, u_input.a, u_input.a, 50383u)))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-global1.e.c), 1823f, var_1.c, func_1(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * var_0.d.a.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(var_1.c)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.c * global1.a.x))), func_2(select(1i, global1.b, true), var_1.d).d), vec4<u32>(global1.c.x, _wgslsmith_sub_u32(global1.c.x ^ u_input.a, u_input.a), select(~u_input.e.x, ~1u, true), 1u)).d);
    var_1 = func_1(func_2(~(0i), var_1.d), vec4<u32>(~(10460u >> (_wgslsmith_mult_u32(u_input.a, 1u) % 32u)), u_input.a, min(0u << (abs(global1.c.x) % 32u), firstLeadingBit(~8558u)), global1.c.x));
    global2 = array<vec4<bool>, 22>();
    var var_3 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(~_wgslsmith_mult_u32(global1.c.x, u_input.a), 1u), global1.c.x) << (_wgslsmith_mult_u32(_wgslsmith_mod_u32(global1.c.x, 107527u), 1u) % 32u);
    let var_4 = !(!select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(false, true), vec2<bool>(false, false), true), any(select(vec2<bool>(false, false), vec2<bool>(true, true), true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.d.a.yzw * func_1(Struct_2(514f, 1553f, -2493f, var_0.d), vec4<u32>(global1.c.x, 0u, 23787u, 4294967295u) << (vec4<u32>(1u, global1.c.x, 4294967295u, u_input.e.x) % vec4<u32>(32u))).d.a.xwz)), (vec4<u32>(_wgslsmith_sub_u32(16364u, 579u), _wgslsmith_add_u32(global1.c.x, 1u), _wgslsmith_div_u32(0u, u_input.e.x), 4294967295u) << (vec4<u32>(0u, firstLeadingBit(0u), 0u, ~u_input.a) % vec4<u32>(32u))) | ~(~vec4<u32>(21855u, 72u, 1u, 16162u)), u_input.e.x, -(~(~(u_input.d & 42479i))));
}

