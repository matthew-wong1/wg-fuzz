struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_1,
    d: i32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_4,
    c: Struct_3,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<Struct_3, 30>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool) -> vec2<bool> {
    let var_0 = Struct_1(!arg_0 | true, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(331f, 1133f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(430f, -144f))))))), -899f, u_input.b.x & 35440u);
    var var_1 = var_0;
    var var_2 = Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, var_0.b.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(476f, var_1.c))), Struct_4(var_0, Struct_3(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -141f), u_input.a), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1040f, -103f))), _wgslsmith_f_op_vec2_f32(max(var_1.b, var_0.b)), arg_0 | var_0.a))), Struct_1(true, var_1.b, var_1.b.x, u_input.b.x), u_input.a << (~u_input.b.x % 32u)), global1[_wgslsmith_index_u32(~var_0.d, 30u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.x), var_0.b.x) <= _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(max(var_1.c, _wgslsmith_f_op_f32(abs(-1379f))))));
    let var_3 = var_2.b.b.a.b;
    var var_4 = _wgslsmith_sub_u32(countOneBits(1u), 4294967295u | u_input.b.x);
    return select(!vec2<bool>(false, !(true | var_0.a)), !vec2<bool>(var_2.b.c.a, (true | arg_0) || var_0.a), arg_0);
}

fn func_2(arg_0: Struct_4) -> vec2<bool> {
    var var_0 = arg_0;
    global0 = ~(~71587u);
    global1 = array<Struct_3, 30>();
    var var_1 = ~u_input.a;
    let var_2 = u_input.b.x >> (~arg_0.c.d % 32u);
    return vec2<bool>(max(-2147483647i, u_input.a) != 1i, any(!(!func_3(false))));
}

fn func_1(arg_0: vec3<f32>, arg_1: f32) -> vec3<f32> {
    let var_0 = vec3<bool>(true, !(_wgslsmith_f_op_f32(floor(arg_1)) > 503f) | !all(func_2(Struct_4(Struct_1(false, vec2<f32>(936f, 873f), arg_0.x, 1u), global1[_wgslsmith_index_u32(u_input.b.x, 30u)], Struct_1(false, vec2<f32>(-1321f, 1033f), arg_0.x, 16493u), 2147483647i))), false);
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-339f + arg_0.x), _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)), true));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-arg_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(293f + 1000f))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-514f)));
    var var_4 = vec2<i32>(_wgslsmith_dot_vec3_i32(-(vec3<i32>(u_input.a, 34029i, -25992i) | (vec3<i32>(-21011i, u_input.a, 16807i) >> (u_input.b % vec3<u32>(32u)))), vec3<i32>(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 2147483647i, -1i, u_input.a), vec4<i32>(15158i, u_input.a, -1i, u_input.a))), -u_input.a ^ -2147483647i, -1i)), u_input.a);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0 * _wgslsmith_f_op_vec3_f32(-vec3<f32>(745f, _wgslsmith_f_op_f32(f32(-1f) * -747f), var_1))) - _wgslsmith_f_op_vec3_f32(abs(arg_0)));
}

fn func_4(arg_0: vec3<f32>) -> Struct_3 {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.a, -35180i, 36460i), vec3<i32>(u_input.a, u_input.a, -19077i)), vec3<i32>(-10634i, firstLeadingBit(firstLeadingBit(u_input.a)), _wgslsmith_sub_i32(54634i, abs(2147483647i))) << (~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 71206u, u_input.b.x), u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 43248u, 0u, 31723u), vec4<u32>(u_input.b.x, 1u, 1u, 77316u)), _wgslsmith_mod_u32(71590u, u_input.b.x)) % vec3<u32>(32u)));
    let var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f))), Struct_4(Struct_1(false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_0.x) * arg_0.zz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, 1698f))), u_input.b.x), Struct_3(Struct_2(-969f, -1i | u_input.a), _wgslsmith_f_op_vec2_f32(arg_0.yy * _wgslsmith_f_op_vec2_f32(-arg_0.zz))), Struct_1(any(vec3<bool>(true, true, true)), arg_0.zy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), u_input.b.x), firstLeadingBit(4224i)), global1[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.b.xz, u_input.b.yx), 49852u, firstLeadingBit(23929u))), 30u)], true);
    var var_2 = vec2<bool>(true, true);
    var_2 = !vec2<bool>(!select(var_1.d, all(vec4<bool>(var_2.x, var_1.d, false, false)), false), true);
    var_0 = u_input.a;
    return global1[_wgslsmith_index_u32(~(var_1.b.c.d ^ _wgslsmith_mult_u32(u_input.b.x, select(16221u, 4294967295u, false) | u_input.b.x)), 30u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 30>();
    var var_0 = _wgslsmith_f_op_f32(-1231f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(597f))))));
    let var_1 = 355f;
    var var_2 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(vec3<f32>(_wgslsmith_f_op_f32(round(var_1)), var_1, _wgslsmith_f_op_f32(step(var_1, var_1))), var_1))));
    var var_3 = Struct_4(Struct_1(false, vec2<f32>(var_1, _wgslsmith_f_op_f32(f32(-1f) * -642f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_2.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.a * -1507f) - 1000f))), ~_wgslsmith_clamp_u32(1u, 1u & u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x))), global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(abs(~6209u), abs(_wgslsmith_sub_u32(u_input.b.x, 4294967295u))), 30u)], Struct_1(false, vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_2.a.a, 478f)), _wgslsmith_f_op_f32(-var_2.a.a))), _wgslsmith_f_op_f32(-1000f - -1764f)), _wgslsmith_f_op_f32(-var_2.a.a), reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.zy))), ~(-(u_input.a | ~(-2147483647i))));
    var_2 = func_4(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, 473f, -142f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(302f, var_2.a.a, var_1) + vec3<f32>(-753f, 142f, 215f))))))));
    var var_4 = any(!(!(!(!vec4<bool>(var_3.c.a, true, var_3.c.a, var_3.a.a)))));
    var_4 = any(vec2<bool>(true, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1323f + -490f), 61778i, 0u, firstTrailingBit(firstTrailingBit(vec3<i32>(var_3.b.a.b << (0u % 32u), 2147483647i, 1i))), select(max(var_3.a.d, min(var_3.c.d, 27992u)), 36896u, !(!var_3.c.a)) | min(1u, var_3.c.d));
}

