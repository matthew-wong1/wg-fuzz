struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec2<u32>,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct Struct_4 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<bool>;

var<private> global2: f32;

var<private> global3: vec3<bool>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2270f)))));
    global0 = abs(19793i);
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(424f * var_0)));
    var var_2 = 4294967295u;
    var_1 = var_0;
    return ~vec4<u32>(~19737u, _wgslsmith_mult_u32(~_wgslsmith_clamp_u32(1633u, 30271u, 1u), 33297u), 1u, _wgslsmith_add_u32(79268u, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 25312u, 95778u, 118817u), vec4<u32>(0u, 1085u, 191u, 26757u))));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(18466u, 58501u, arg_1.c.x, arg_1.c.x), vec4<u32>(4294967295u, ~0u, 78838u, arg_1.c.x)) | vec4<u32>(arg_1.c.x, _wgslsmith_mult_u32(abs(arg_1.c.x), _wgslsmith_sub_u32(arg_1.c.x, 88547u)), ~1u, 61472u), firstTrailingBit(~vec4<u32>(~arg_1.c.x, arg_1.c.x, ~34107u, 13998u)), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.c.x, 4294967295u, 97202u, 41480u), vec4<u32>(arg_1.c.x, 5317u, arg_1.c.x, arg_1.c.x)), func_3(), ~vec4<u32>(arg_1.c.x, arg_1.c.x, 6318u, 45174u)), abs(~vec4<u32>(39398u, 17183u, arg_1.c.x, arg_1.c.x))) >> (~_wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 72265u, 21878u, arg_1.c.x), min(vec4<u32>(arg_1.c.x, arg_1.c.x, 24814u, 69285u), vec4<u32>(arg_1.c.x, arg_1.c.x, arg_1.c.x, arg_1.c.x))) % vec4<u32>(32u)));
    let var_1 = vec3<u32>(_wgslsmith_mult_u32(var_0.x, _wgslsmith_dot_vec3_u32(~var_0.zwy, ~var_0.yyz)), _wgslsmith_sub_u32(~firstLeadingBit(0u), ~arg_1.c.x), ~_wgslsmith_dot_vec2_u32(~var_0.wy << (vec2<u32>(4294967295u, var_0.x) % vec2<u32>(32u)), vec2<u32>(var_0.x, 4025u) << (firstLeadingBit(vec2<u32>(arg_1.c.x, 27743u)) % vec2<u32>(32u))));
    var var_2 = vec4<i32>(0i, ~(~(~(~1i))), u_input.a, _wgslsmith_add_i32(-1i, -2147483647i));
    var var_3 = ~(~(~_wgslsmith_mod_u32(82315u, 17686u) | var_1.x));
    var var_4 = vec4<u32>(var_0.x, 0u, var_1.x, _wgslsmith_div_u32(~(~_wgslsmith_sub_u32(108085u, var_0.x)), arg_1.c.x));
    return _wgslsmith_add_u32(var_0.x, var_1.x) & ~(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, var_0.x, 53856u, var_4.x), var_0), _wgslsmith_add_vec4_u32(vec4<u32>(46094u, var_1.x, var_1.x, var_1.x), var_0)) & min(~var_0.x, select(0u, 73099u, true)));
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: u32) -> f32 {
    var var_0 = _wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_2, ~1u, firstLeadingBit(arg_0)), ~(~17696u)), _wgslsmith_mult_u32(arg_0, countOneBits(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 34304u), vec2<u32>(11142u, 37922u)), 1u))));
    global2 = arg_1.x;
    var var_1 = vec3<u32>(_wgslsmith_div_u32(select(func_2(u_input.a, Struct_1(vec4<i32>(1i, 2147483647i, u_input.a, 0i), global1.x, vec2<u32>(arg_2, arg_2), arg_1.x, global1.yx)), arg_0, true) | arg_0, _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(arg_2, arg_2), ~1u), _wgslsmith_div_u32(arg_0, _wgslsmith_sub_u32(arg_2, arg_2)))), ~(~(min(arg_2, arg_0) | func_2(u_input.a, Struct_1(vec4<i32>(-1i, u_input.a, u_input.a, 38752i), false, vec2<u32>(0u, arg_2), -342f, vec2<bool>(global3.x, true))))), reverseBits(arg_2));
    var var_2 = Struct_5(1u, Struct_2(Struct_1(~vec4<i32>(u_input.a, -43985i, u_input.a, 82984i), any(vec2<bool>(global1.x, global3.x)), ~min(vec2<u32>(0u, var_1.x), vec2<u32>(arg_0, arg_0)), _wgslsmith_f_op_f32(trunc(226f)), vec2<bool>(!global3.x, false)), firstLeadingBit(u_input.a & _wgslsmith_div_i32(11048i, -2147483647i)), _wgslsmith_mult_vec2_i32(vec2<i32>(21595i, _wgslsmith_dot_vec3_i32(vec3<i32>(-39489i, u_input.a, -1i), vec3<i32>(-1508i, -2147483647i, u_input.a))), vec2<i32>(~u_input.a, 1i)), _wgslsmith_mod_u32(47307u, ~(~arg_2))), Struct_1(vec4<i32>(-3735i, 34580i, u_input.a << (firstTrailingBit(28858u) % 32u), u_input.a), true, ~var_1.zy, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))), global3.xy));
    var_0 = _wgslsmith_mult_u32(var_2.a, ~_wgslsmith_div_u32(arg_2, 1u));
    return -273f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-996f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(37017u, vec4<f32>(-1451f, 303f, -1212f, -418f), 0u)) + _wgslsmith_f_op_f32(-1000f - -601f)) - _wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(1225f, 103f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-880f, 956f))))));
    let var_1 = 1000f;
    global3 = global1.zxw;
    var var_2 = vec3<f32>(var_1, var_0, _wgslsmith_f_op_f32(-var_1));
    global0 = max(-2147483647i, u_input.a);
    global2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1348f, var_2.x))) - _wgslsmith_f_op_f32(round(var_2.x))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-138f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_0)), _wgslsmith_f_op_f32(-var_0)))));
    global0 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(-303f, 4294967295u, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, 548f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0))), _wgslsmith_div_f32(1630f, _wgslsmith_f_op_f32(-var_2.x))))), ~vec3<u32>(1u, 1u, 1u), vec2<u32>(select(9510u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(56334u, 30510u) >> (vec2<u32>(0u, 0u) % vec2<u32>(32u))), !all(global1.yzy)), 45205u));
}

