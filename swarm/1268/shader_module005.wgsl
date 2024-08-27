struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec3<bool>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: f32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: i32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: bool) -> u32 {
    global0 = Struct_2(global0.a, select(vec3<bool>(true, global0.b.x, true), select(vec3<bool>(all(vec3<bool>(global0.b.x, false, false)), global0.b.x || global0.b.x, true), !global0.b, !select(global0.b, global0.b, vec3<bool>(false, true, arg_0))), global0.b));
    global1 = -30615i;
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1280f, -593f, 516f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-782f, 101f, -1115f), vec3<f32>(1118f, -329f, 205f)) + vec3<f32>(632f, 525f, -175f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(237f, -1018f, -1000f) + vec3<f32>(142f, -145f, 704f))), !global0.b))))));
    return global0.a;
}

fn func_3(arg_0: i32, arg_1: vec2<bool>) -> i32 {
    var var_0 = Struct_5(vec2<f32>(1f, 1f), reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, 1i, arg_0), vec4<i32>(23762i, 1i, arg_0, u_input.b.x))), vec3<i32>(u_input.b.x, 1i, -u_input.a), vec3<i32>(-u_input.b.x, -1i, -7513i))));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-386f, 409f, var_0.a.x, -640f))) * vec4<f32>(-852f, var_0.a.x, var_0.a.x, var_0.a.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, -452f, -1271f, var_0.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)))) * vec4<f32>(var_0.a.x, 707f, -882f, 680f))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-127f + -931f), -275f, _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(round(806f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(756f * var_0.a.x) * _wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, 164f, _wgslsmith_f_op_f32(min(-912f, 1357f)), var_0.a.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 378f, -1000f, var_0.a.x)))))), vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -573f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * _wgslsmith_f_op_f32(-122f - -248f)), true, any(global0.b), select(false, true, false))));
    let var_2 = var_1.x;
    var var_3 = ~(~vec3<u32>(min(global0.a & global0.a, global0.a), _wgslsmith_mod_u32(global0.a, global0.a), 1u));
    let var_4 = -48990i;
    return arg_0 << (global0.a % 32u);
}

fn func_2() -> Struct_2 {
    global1 = -1i;
    global0 = Struct_2(1u, !(!global0.b));
    let var_0 = 1i;
    let var_1 = Struct_3(vec2<u32>(~global0.a, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(global0.a, ~global0.a, _wgslsmith_add_u32(0u, 49652u)), 1u)), _wgslsmith_mult_vec4_i32(~(-(~vec4<i32>(var_0, 17847i, -2147483647i, 0i))), ~vec4<i32>(func_3(-27863i, global0.b.yx), max(var_0, var_0), 47538i, -u_input.b.x)), Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(min(6837u, global0.a), 4294967295u, firstTrailingBit(0u)), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(89626u, 70329u, 4294967295u), vec3<u32>(0u, global0.a, 0u)), _wgslsmith_add_vec3_u32(vec3<u32>(global0.a, global0.a, 1u), vec3<u32>(global0.a, 1u, 17375u)))), global0.b));
    let var_2 = vec4<u32>(~(var_1.a.x >> (~0u % 32u)), 1u, _wgslsmith_mod_u32(global0.a, ~13029u), select(_wgslsmith_div_u32(_wgslsmith_add_u32(50821u, global0.a) >> (0u % 32u), 1u), _wgslsmith_dot_vec4_u32(~vec4<u32>(68438u, 24037u, 76437u, 4294967295u) << (countOneBits(vec4<u32>(var_1.a.x, 4294967295u, 5515u, global0.a)) % vec4<u32>(32u)), select(vec4<u32>(global0.a, var_1.a.x, var_1.c.a, global0.a) | vec4<u32>(global0.a, 16517u, 41567u, var_1.c.a), vec4<u32>(44027u, var_1.a.x, global0.a, 27174u), vec4<bool>(true, true, var_1.c.b.x, true))), select(true, !global0.b.x, true)));
    return Struct_2(104463u, var_1.c.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!global0.b.x);
    var_0 = (2147483647i >> ((func_1(global0.b.x) & 26873u) % 32u)) < -u_input.b.x;
    global0 = func_2();
    let var_1 = -38735i;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(256f, -630f, 133f) + vec3<f32>(-1000f, 1000f, -1299f)) + _wgslsmith_div_vec3_f32(vec3<f32>(733f, -310f, 2030f), vec3<f32>(-555f, 1420f, -1000f))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -816f), -1291f, 1135f)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2034f) * _wgslsmith_f_op_f32(f32(-1f) * -612f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -990f), _wgslsmith_f_op_f32(max(3442f, -1000f)))), _wgslsmith_f_op_f32(step(1000f, _wgslsmith_div_f32(-342f, 599f)))), select(!global0.b, vec3<bool>(true, true, true), select(global0.b.x, true, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(387f)) + _wgslsmith_f_op_f32(f32(-1f) * -592f)) * -1590f) >= 1033f, func_2().b, abs(~4294967295u) >> (global0.a % 32u), u_input.a);
    global1 = -42944i;
    let var_3 = Struct_3(vec2<u32>(max(max(abs(4294967295u), firstLeadingBit(4294967295u)), var_2.d), var_2.d), vec4<i32>(abs(_wgslsmith_mod_i32(u_input.b.x, ~(-2147483647i))), var_1, 2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, -12350i), var_2.e, max(u_input.b.x, var_1)), u_input.b)), Struct_2(_wgslsmith_mod_u32(1u, 48416u) >> (~_wgslsmith_mult_u32(var_2.d, 4294967295u) % 32u), global0.b));
    let var_4 = vec3<i32>(75844i, 1i, -_wgslsmith_mult_i32(-1i, 0i));
    var var_5 = _wgslsmith_dot_vec2_u32(var_3.a, ~max(~var_3.a, ~(var_3.a | vec2<u32>(94694u, 55830u))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-(var_3.b | vec4<i32>(var_4.x, u_input.a, var_1, 32516i)) << (firstTrailingBit(~vec4<u32>(var_2.d, global0.a, var_3.a.x, 75278u)) % vec4<u32>(32u))), ~reverseBits(abs(vec4<u32>(4294967295u, 90534u, 16404u, 38980u)) & ~vec4<u32>(global0.a, 1u, global0.a, 4294967295u)));
}

