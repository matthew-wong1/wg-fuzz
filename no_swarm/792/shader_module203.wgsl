struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_4;

var<private> global2: i32;

var<private> global3: u32 = 67455u;

var<private> global4: array<vec2<u32>, 27> = array<vec2<u32>, 27>(vec2<u32>(45178u, 8393u), vec2<u32>(1u, 4294967295u), vec2<u32>(11181u, 50333u), vec2<u32>(67663u, 104858u), vec2<u32>(1u, 4294967295u), vec2<u32>(48837u, 54958u), vec2<u32>(4294967295u, 54259u), vec2<u32>(18425u, 4294967295u), vec2<u32>(13253u, 17279u), vec2<u32>(1u, 28394u), vec2<u32>(4294967295u, 1u), vec2<u32>(10527u, 23813u), vec2<u32>(40u, 0u), vec2<u32>(5232u, 153u), vec2<u32>(4294967295u, 111u), vec2<u32>(1u, 54512u), vec2<u32>(1u, 1u), vec2<u32>(52906u, 4294967295u), vec2<u32>(34715u, 92066u), vec2<u32>(0u, 63824u), vec2<u32>(756u, 62605u), vec2<u32>(45182u, 1u), vec2<u32>(0u, 0u), vec2<u32>(77059u, 1u), vec2<u32>(77984u, 0u), vec2<u32>(51240u, 4294967295u), vec2<u32>(0u, 30910u));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: vec4<i32>) -> vec3<f32> {
    var var_0 = _wgslsmith_div_f32(global0.x, global0.x);
    global2 = -5526i;
    global0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1015f, _wgslsmith_f_op_f32(-809f - global1.b.b.c), global1.b.b.d) - vec3<f32>(810f, _wgslsmith_f_op_f32(f32(-1f) * -586f), -1782f)))), vec3<f32>(-1992f, 1107f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.b.b.d)) + 757f)))));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.b.d, 1129f, _wgslsmith_f_op_f32(min(-1049f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -976f), _wgslsmith_div_f32(-573f, 1313f))))));
}

fn func_2(arg_0: f32, arg_1: vec4<u32>) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_3(~(~u_input.b), global1.b.b.e, -vec4<i32>(0i, -26796i, 2147483647i, -41942i) | (vec4<i32>(global1.a.x, 1i, -15667i, u_input.a) | vec4<i32>(global1.b.b.b, -1i, global1.a.x, global1.a.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.b.c, _wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_div_f32(626f, -2749f)))))));
    return global1.b.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> Struct_5 {
    global2 = -arg_0.b;
    var var_0 = arg_1.b.e;
    global1 = Struct_4(_wgslsmith_clamp_vec3_i32(global1.a, min(_wgslsmith_mod_vec3_i32(global1.a, global1.a) << (_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, global1.b.b.e, arg_2.b.e), u_input.c) % vec3<u32>(32u)), vec3<i32>(-1i) * -vec3<i32>(global1.a.x, 61017i, -23155i)), select(_wgslsmith_add_vec3_i32(select(global1.a, vec3<i32>(1i, 0i, 1i), vec3<bool>(false, false, arg_1.b.a)), abs(vec3<i32>(u_input.a, -2147483647i, -1i))), vec3<i32>(12747i, 0i, global1.a.x) << (firstTrailingBit(vec3<u32>(global1.b.b.e, arg_2.b.e, 4294967295u)) % vec3<u32>(32u)), all(!vec3<bool>(global1.b.b.a, global1.b.b.a, false)))), global1.b);
    let var_1 = vec4<i32>(select((-u_input.a << (~arg_1.b.e % 32u)) >> (24712u % 32u), 0i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x))) != arg_0.d), 41620i, 0i, arg_0.b);
    return Struct_5(!vec3<bool>(true, arg_1.b.a, true));
}

fn func_1() -> Struct_4 {
    let var_0 = func_4(func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(472f - _wgslsmith_f_op_f32(global0.x * -908f)), _wgslsmith_f_op_f32(f32(-1f) * -531f))), u_input.d), global1.b, Struct_2(32961i, Struct_1(global1.b.b.a, ~(~(-15690i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + -665f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * -583f)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(global1.b.b.e, u_input.d.x, u_input.c.x), u_input.c))));
    let var_1 = 4294967295u;
    global1 = Struct_4((vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(66904i, global1.b.b.b, 1i), vec3<i32>(u_input.b.x, global1.b.a, u_input.b.x)), func_2(global0.x, u_input.d).b, 1i) ^ global1.a) & -_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -58834i, u_input.b.x), global1.a), global1.b);
    var var_2 = Struct_1(false, -19407i, global1.b.b.c, global1.b.b.c, ~func_2(_wgslsmith_f_op_f32(-global0.x), abs(_wgslsmith_clamp_vec4_u32(u_input.d, u_input.d, vec4<u32>(var_1, 0u, 66263u, 13634u)))).e);
    global3 = _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1, 35093u, 24557u, 16460u), vec4<u32>(82671u, global1.b.b.e, var_2.e, var_1))), abs(~u_input.d) & vec4<u32>(~4294967295u, global1.b.b.e, u_input.e.x, firstTrailingBit(9183u))), firstLeadingBit(global1.b.b.e));
    return Struct_4(_wgslsmith_mod_vec3_i32(global1.a, vec3<i32>(2147483647i, _wgslsmith_mult_i32(-1i, 1i), ~1019i)), global1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec2<u32>, 27>();
    global3 = 88949u;
    global1 = func_1();
    let var_0 = true;
    var var_1 = global1.b;
    var var_2 = -314f;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-global1.b.b.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-739f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.b.b.d + var_1.b.d), global1.b.b.d)) - -546f), _wgslsmith_f_op_f32(-var_1.b.c));
    var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2319f + global1.b.b.c), -755f))) - _wgslsmith_f_op_f32(f32(-1f) * -401f))));
    let x = u_input.a;
    s_output = StorageBuffer(-13320i, _wgslsmith_f_op_f32(f32(-1f) * -314f));
}

