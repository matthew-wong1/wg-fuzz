struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: f32,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: Struct_1,
    d: f32,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> Struct_5 {
    let var_0 = _wgslsmith_div_f32(708f, 993f);
    return Struct_5(true);
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: bool) -> f32 {
    global0 = array<Struct_2, 23>();
    let var_0 = u_input.b;
    let var_1 = func_1();
    var var_2 = u_input.a;
    let var_3 = ~(u_input.b.x << ((max(min(25103u, 34096u), firstLeadingBit(var_0.x)) << (_wgslsmith_clamp_u32(~4294967295u, _wgslsmith_add_u32(0u, 1u), max(u_input.b.x, 4294967295u)) % 32u)) % 32u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(386f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, arg_0))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_5, arg_2: Struct_2, arg_3: vec4<f32>) -> vec4<f32> {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0.a, select(arg_2.a, u_input.b.x, false), false))), -1140f, 724f), arg_3.xzy);
    global0 = array<Struct_2, 23>();
    global0 = array<Struct_2, 23>();
    global0 = array<Struct_2, 23>();
    let var_1 = -vec4<i32>(abs(u_input.a | (i32(-1i) * -1i)), -2147483647i, 2147483647i, u_input.a);
    return arg_3;
}

fn func_4(arg_0: vec4<f32>, arg_1: bool) -> vec3<bool> {
    var var_0 = arg_0.x;
    global0 = array<Struct_2, 23>();
    global0 = array<Struct_2, 23>();
    var_0 = _wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, any(!select(!vec2<bool>(false, arg_1), select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, true), false), select(vec2<bool>(true, arg_1), vec2<bool>(false, false), arg_1)))));
    let var_1 = _wgslsmith_f_op_f32(-271f - _wgslsmith_f_op_f32(-153f + arg_0.x));
    return select(vec3<bool>(func_1().a, ~reverseBits(u_input.b.x) >= firstTrailingBit(select(u_input.b.x, u_input.b.x, true)), arg_1 | func_1().a), vec3<bool>(true, arg_1, all(!select(vec2<bool>(true, arg_1), vec2<bool>(false, arg_1), true))), select(!(!select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(false, false, true), false)), select(!vec3<bool>(arg_1, arg_1, arg_1), !vec3<bool>(false, arg_1, arg_1), vec3<bool>(false, any(vec2<bool>(arg_1, false)), true)), select(vec3<bool>(true, true, true), select(!vec3<bool>(false, arg_1, arg_1), select(vec3<bool>(arg_1, arg_1, true), vec3<bool>(arg_1, arg_1, arg_1), arg_1), !vec3<bool>(arg_1, arg_1, true)), vec3<bool>(false, arg_1, any(vec4<bool>(arg_1, true, true, false))))));
}

fn func_5(arg_0: vec2<u32>, arg_1: u32, arg_2: vec3<bool>, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_3(true, u_input.a, _wgslsmith_f_op_f32(-723f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-486f, 1190f) * 1955f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1579f)))), _wgslsmith_clamp_vec4_u32(vec4<u32>(60793u, _wgslsmith_div_u32(arg_3, u_input.b.x), 1u, arg_1), ~_wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(arg_1, u_input.b.x, u_input.b.x, 1u)), select(u_input.b, _wgslsmith_mod_vec4_u32(u_input.b, u_input.b), arg_2.x)), vec2<f32>(1190f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1239f + -123f)))))));
    global0 = array<Struct_2, 23>();
    var var_1 = var_0;
    var var_2 = var_0.d.x;
    var var_3 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec4_f32(func_2(Struct_1(var_0.e.x), func_1(), global0[_wgslsmith_index_u32(1u, 23u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.e.x, 164f, var_0.c, var_0.c)))).x)), var_1.c, _wgslsmith_f_op_f32(var_1.e.x * 455f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c, -1146f, 101f, var_1.e.x) * vec4<f32>(var_0.c, var_0.c, var_0.c, var_1.c)) - vec4<f32>(var_1.e.x, 530f, -1000f, -1439f))), var_0.e.x < 868f), Struct_1(var_1.c), var_0.e.x);
    return var_3.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec2<u32>(u_input.b.x, abs(_wgslsmith_mod_u32(~u_input.b.x, u_input.b.x ^ 4294967295u))), ~4294967295u, select(func_4(_wgslsmith_f_op_vec4_f32(func_2(Struct_1(-945f), func_1(), global0[_wgslsmith_index_u32(14138u, 23u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(2264f, -946f, 288f, 514f)))), any(vec3<bool>(false, true, false)) | any(vec3<bool>(true, true, false))), select(vec3<bool>(true, all(vec3<bool>(false, false, true)), true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), all(vec2<bool>(true, false))), !func_4(vec4<f32>(-282f, 131f, -1198f, -1784f), false)), vec3<bool>(true, true, false)), 1u);
    var var_1 = true;
    var var_2 = u_input.b.yy;
    global0 = array<Struct_2, 23>();
    global0 = array<Struct_2, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1097f, 101f, 652f)))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.a)), _wgslsmith_f_op_f32(var_0.a - var_0.a), _wgslsmith_f_op_f32(-var_0.a)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.a + 1604f), var_0.a)))), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, u_input.a, u_input.a) ^ vec3<i32>(-2147483647i, u_input.a, abs(u_input.a)), abs(select(vec3<i32>(u_input.a, -2147483647i, -2147483647i), -vec3<i32>(u_input.a, -26587i, u_input.a), select(false, false, false)))));
}

