struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 21>;

var<private> global1: Struct_3;

var<private> global2: Struct_4 = Struct_4(vec4<u32>(0u, 4294967295u, 1u, 0u), true);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: f32) -> i32 {
    let var_0 = 253f;
    let var_1 = vec4<u32>(~arg_0.b.a, ~(~0u), _wgslsmith_dot_vec2_u32(select(~vec2<u32>(1u, u_input.b) ^ ~vec2<u32>(global1.c.a, global2.a.x), firstTrailingBit(~vec2<u32>(arg_0.b.a, global2.a.x)), !select(vec2<bool>(false, false), vec2<bool>(global2.b, global2.b), vec2<bool>(false, false))), ~(~vec2<u32>(1u, 45230u))), 1u);
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1, _wgslsmith_div_f32(arg_1, -558f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(460f, var_0) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1747f, arg_1), vec2<f32>(-366f, -1164f)))) - vec2<f32>(1000f, _wgslsmith_f_op_f32(max(arg_1, 1712f))))), true));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_2.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.x))))));
    let var_4 = 4936i;
    return -8536i;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32, arg_3: vec4<u32>) -> Struct_3 {
    global0 = array<Struct_4, 21>();
    var var_0 = min(~min(_wgslsmith_div_i32(u_input.a, func_3(Struct_3(global2.a.x, Struct_1(global1.a), Struct_1(arg_2)), 1097f)), 25474i), ~u_input.c.x);
    var var_1 = _wgslsmith_f_op_f32(max(-855f, _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(ceil(arg_0.x)))));
    var_1 = arg_0.x;
    global0 = array<Struct_4, 21>();
    return Struct_3(_wgslsmith_mult_u32(arg_3.x, ~(~arg_1.a) & arg_1.a), Struct_1(0u), global1.c);
}

fn func_1(arg_0: bool) -> bool {
    var var_0 = func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1736f), -944f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-263f + -2127f) - _wgslsmith_f_op_f32(-313f + 585f)), _wgslsmith_f_op_f32(step(210f, -914f)))), global1.b, _wgslsmith_mod_u32(_wgslsmith_mult_u32(global2.a.x, ~(~78633u)), _wgslsmith_div_u32(0u, 17325u ^ ~u_input.b)), ~vec4<u32>(~_wgslsmith_add_u32(global2.a.x, global1.a), ~1u, global1.b.a, global2.a.x));
    global2 = Struct_4(global2.a, global2.b);
    let var_1 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1017f, 394f, 1000f, -1000f), vec4<f32>(-129f, -1121f, 1249f, 793f)))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(800f, -426f, -558f, 1043f) * _wgslsmith_div_vec4_f32(vec4<f32>(910f, -279f, 201f, -1195f), vec4<f32>(-487f, 786f, 1852f, -701f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1255f, -1252f, -418f, -413f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1027f, 920f, -160f, 350f) * vec4<f32>(-1000f, -1839f, -567f, -1238f)))))), Struct_1(_wgslsmith_mult_u32(global1.c.a, firstTrailingBit(~16281u))), ~u_input.b, ~vec4<u32>((u_input.b & u_input.b) >> (~4294967295u % 32u), 15884u, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.a.x, 107756u, 27002u, 1u), vec4<u32>(51466u, u_input.b, global1.c.a, u_input.b)), 4294967295u));
    let var_2 = countOneBits(_wgslsmith_dot_vec3_u32(firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(73648u, 4294967295u, global1.a), vec3<u32>(var_1.a, global1.b.a, 14194u))) << (vec3<u32>(global2.a.x, max(var_1.c.a, global2.a.x), ~122918u) % vec3<u32>(32u)), global2.a.xzz));
    var var_3 = !vec4<bool>((~global1.c.a >= countOneBits(var_1.c.a)) & !(true || global2.b), select(global2.b, var_0.c.a > (global2.a.x ^ var_2), global2.b & global2.b), true, 69954i != -u_input.c.x);
    return !(!arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    global0 = array<Struct_4, 21>();
    var var_1 = select(!(!vec4<bool>(global2.b, all(vec4<bool>(global2.b, global2.b, global2.b, global2.b)), func_1(true), true)), vec4<bool>(global2.b, true, any(!vec2<bool>(global2.b, global2.b)) || (_wgslsmith_f_op_f32(select(-189f, -318f, global2.b)) != _wgslsmith_f_op_f32(round(-510f))), global2.b), true);
    var var_2 = any(select(vec2<bool>(any(select(vec2<bool>(var_1.x, true), var_1.yx, var_1.x)), any(!vec4<bool>(var_1.x, global2.b, false, var_1.x))), var_1.wx, !(!var_1.zy)));
    global2 = global0[_wgslsmith_index_u32(select(select(~(~4294967295u), ~1u >> (~func_2(vec4<f32>(-158f, -702f, 788f, -711f), global1.c, u_input.b, global2.a).c.a % 32u), global2.b), select(_wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(global2.a, vec4<u32>(4438u, global2.a.x, 1794u, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.b, 4294967295u, 4294967295u), ~global2.a)), global2.a.x, min(-var_0.x, var_0.x) <= -var_0.x), all(!select(vec3<bool>(false, var_1.x, false), var_1.ywy, global2.b))), 21u)];
    let x = u_input.a;
    s_output = StorageBuffer(select(1u, countOneBits(u_input.b), func_1(var_1.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-485f)))))));
}

