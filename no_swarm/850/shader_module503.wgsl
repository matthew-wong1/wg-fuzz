struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1400f, 81978u, vec3<u32>(73338u, 48509u, 0u));

var<private> global1: array<vec3<i32>, 11> = array<vec3<i32>, 11>(vec3<i32>(-39747i, 20519i, 0i), vec3<i32>(-3859i, 2147483647i, 32498i), vec3<i32>(37303i, -2313i, -16294i), vec3<i32>(5411i, -1834i, 1i), vec3<i32>(13149i, 2147483647i, -43469i), vec3<i32>(i32(-2147483648), 1i, -32901i), vec3<i32>(2147483647i, -14271i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -13608i, 10075i), vec3<i32>(-11760i, i32(-2147483648), 31998i), vec3<i32>(-23687i, 2147483647i, 0i), vec3<i32>(1i, 0i, 2147483647i));

var<private> global2: array<vec4<f32>, 13> = array<vec4<f32>, 13>(vec4<f32>(-749f, -1245f, -254f, 2941f), vec4<f32>(144f, 326f, 1000f, 1898f), vec4<f32>(-328f, -571f, -746f, 504f), vec4<f32>(172f, 1899f, -1273f, -823f), vec4<f32>(1048f, -620f, 1000f, 1479f), vec4<f32>(113f, 1005f, 2083f, -1005f), vec4<f32>(-112f, -1401f, -469f, 651f), vec4<f32>(254f, 1000f, 389f, 340f), vec4<f32>(-606f, -595f, -249f, 1000f), vec4<f32>(-835f, 375f, 1912f, -1010f), vec4<f32>(-271f, -1078f, 266f, 1035f), vec4<f32>(2435f, -310f, 190f, -581f), vec4<f32>(451f, 498f, 1472f, 1029f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, -472f, -2579f)))))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)) + _wgslsmith_f_op_f32(f32(-1f) * -2168f)), _wgslsmith_f_op_f32(select(global0.a, _wgslsmith_f_op_f32(-global0.a), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.a))))));
    let var_1 = arg_1;
    let var_2 = !(!(!(var_1.b > arg_1.b)) & (true && all(vec3<bool>(true, true, false))));
    let var_3 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, global0.a), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(-global0.a)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -829f)))), true | (~_wgslsmith_dot_vec4_u32(u_input.e, u_input.e) > ~global0.b)));
    let var_4 = arg_1;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)) - _wgslsmith_f_op_f32(var_4.a * _wgslsmith_f_op_f32(trunc(940f))));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -750f), _wgslsmith_f_op_f32(f32(-1f) * -970f)), 32555u, u_input.e.wzw << (select(vec3<u32>(14321u, u_input.b, _wgslsmith_mult_u32(global0.c.x, 73878u)), global0.c, all(select(vec4<bool>(true, false, false, arg_0), vec4<bool>(true, arg_0, false, arg_0), arg_0))) % vec3<u32>(32u)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -857f) - 446f))), ~abs(_wgslsmith_add_u32(~global0.b, 1u)), countOneBits(~min(vec3<u32>(1u, 53084u, u_input.e.x), vec3<u32>(u_input.b, u_input.b, u_input.e.x))));
    var_0 = Struct_1(var_1.a, reverseBits(firstTrailingBit(_wgslsmith_dot_vec4_u32(u_input.e, _wgslsmith_add_vec4_u32(vec4<u32>(29808u, var_0.c.x, 1u, 0u), u_input.e)))), var_1.c);
    let var_2 = Struct_1(1630f, _wgslsmith_mod_u32(_wgslsmith_div_u32(0u | _wgslsmith_sub_u32(global0.c.x, u_input.b), 19928u), ((29638u << (1u % 32u)) ^ (var_1.c.x << (var_1.b % 32u))) | 15483u), vec3<u32>(global0.b & abs(var_0.b), _wgslsmith_mult_u32(~global0.c.x, ~var_1.b), var_1.c.x) << (_wgslsmith_mult_vec3_u32(global0.c, global0.c) % vec3<u32>(32u)));
    var var_3 = u_input.d >> (vec4<u32>(var_0.c.x, _wgslsmith_add_u32(~min(u_input.b, 4611u), 61001u), ~(~(~var_2.b)), ~(min(10288u, 48020u) | (16847u | var_1.b))) % vec4<u32>(32u));
    return var_2;
}

fn func_1(arg_0: bool) -> bool {
    global1 = array<vec3<i32>, 11>();
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1337f, _wgslsmith_div_f32(217f, 245f))))));
    global2 = array<vec4<f32>, 13>();
    global1 = array<vec3<i32>, 11>();
    let var_1 = func_3(!(_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(global0.a + 304f)) < global0.a), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.a, var_0.x, global0.a))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-224f, var_0.x, var_0.x))))) - vec3<f32>(-1584f, -239f, _wgslsmith_f_op_f32(func_2(Struct_1(1000f, u_input.e.x, vec3<u32>(u_input.b, global0.c.x, u_input.e.x)), Struct_1(global0.a, 74150u, global0.c))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, global0.a) - vec3<f32>(global0.a, var_0.x, -271f)) + vec3<f32>(-615f, global0.a, -274f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, var_0.x, -689f))))));
    return _wgslsmith_f_op_f32(-416f * var_1.a) != 1271f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(vec2<bool>(true, true)) | func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, global0.a)) <= -1104f);
    global1 = array<vec3<i32>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(global0.a, max(~(u_input.e.x | 4294967295u), ~(~global0.b)) & 0u, _wgslsmith_f_op_f32(-2146f + global0.a), u_input.e.xyz);
}

