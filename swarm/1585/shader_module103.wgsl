struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<f32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 27>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = true;
    let var_1 = ~_wgslsmith_add_u32(6144u, 1u);
    return 1000f;
}

fn func_3(arg_0: vec3<bool>, arg_1: u32) -> vec4<u32> {
    let var_0 = Struct_2(vec2<f32>(1410f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1971f), _wgslsmith_div_f32(883f, 490f)) * _wgslsmith_f_op_f32(sign(-253f)))), Struct_1(2147483647i, 1f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(1380f)), _wgslsmith_f_op_f32(sign(-608f)), _wgslsmith_f_op_f32(round(-191f)))), arg_0.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-525f, 306f, -1623f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-150f, -813f, 403f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(269f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -101f)), 668f)), vec2<bool>(arg_0.x, true));
    global0 = array<vec4<f32>, 27>();
    global0 = array<vec4<f32>, 27>();
    let var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.b.b))), 685f, var_0.a.x), countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, u_input.c, 1i, var_0.b.a), vec4<i32>(-1i, -2147483647i, var_0.b.a, 0i))) >> (_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(22246u, u_input.d.x, 1u, 25054u)), firstTrailingBit(abs(vec4<u32>(0u, arg_1, arg_1, arg_1))), vec4<u32>(15530u, _wgslsmith_div_u32(53238u, 37362u), _wgslsmith_sub_u32(arg_1, 0u), arg_1)) % vec4<u32>(32u)), vec3<u32>(0u, countOneBits(arg_1), _wgslsmith_sub_u32(~arg_1, ~61614u)) >> (u_input.d % vec3<u32>(32u)), var_0);
    global0 = array<vec4<f32>, 27>();
    return ~vec4<u32>(select(~arg_1 & _wgslsmith_dot_vec3_u32(var_1.c, var_1.c), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(73913u, 26679u, 0u, 0u), vec4<u32>(u_input.d.x, u_input.d.x, 22085u, arg_1)), vec4<u32>(arg_1, 1u, var_1.c.x, u_input.d.x)), -23539i >= u_input.c), ~u_input.b, arg_1, ~1u);
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: f32) -> vec2<i32> {
    global0 = array<vec4<f32>, 27>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2, 799f, 943f), vec3<f32>(1640f, -1325f, arg_2), true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1339f, arg_0.a.x, arg_2) + vec3<f32>(-762f, arg_2, arg_2))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.d.b.c, vec3<f32>(arg_0.a.x, arg_2, arg_2)))))), vec4<i32>(arg_0.b.x, arg_0.b.x, 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.d.b.a, 0i, 28623i), ~arg_0.b.yww) >> (1u % 32u)), vec3<u32>(_wgslsmith_mult_u32(arg_0.c.x, _wgslsmith_div_u32(arg_0.c.x, u_input.b) << (1u % 32u)), 4294967295u, _wgslsmith_div_u32(4294967295u, ~59966u) & _wgslsmith_dot_vec4_u32(func_3(vec3<bool>(false, arg_1, arg_0.d.b.d), arg_0.c.x), vec4<u32>(19137u, arg_0.c.x, u_input.d.x, arg_0.c.x))), Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d.c.x, arg_2)), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.d.b.b), 241f))), Struct_1(-280i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), arg_0.d.b.c, false), _wgslsmith_f_op_vec3_f32(arg_0.d.c + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a) - _wgslsmith_f_op_vec3_f32(select(arg_0.d.c, vec3<f32>(arg_0.d.b.b, arg_0.a.x, arg_0.a.x), vec3<bool>(arg_1, false, arg_1))))), vec2<bool>(arg_0.d.d.x, arg_0.d.d.x)));
    var_0 = arg_0;
    let var_1 = arg_0;
    var var_2 = var_0.d;
    return _wgslsmith_sub_vec2_i32(vec2<i32>(1i, abs(_wgslsmith_div_i32(_wgslsmith_add_i32(-23675i, -1i), reverseBits(-39089i)))), ~(~(vec2<i32>(17298i, -2147483647i) ^ arg_0.b.yz)) >> ((vec2<u32>(var_1.c.x, ~var_0.c.x) | var_0.c.xy) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 27>();
    global0 = array<vec4<f32>, 27>();
    let var_0 = ~1u;
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1079f)), _wgslsmith_f_op_f32(trunc(-1004f)))), _wgslsmith_f_op_f32(f32(-1f) * -2218f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-728f))))))), ~firstLeadingBit(vec4<i32>(select(u_input.a, 42729i, false), u_input.a, u_input.c, -34981i)), _wgslsmith_mod_vec3_u32(u_input.d, u_input.d), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(267f, 181f) - vec2<f32>(1635f, -1491f)) * vec2<f32>(362f, 1313f))), Struct_1(-2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-769f * 1000f)), vec3<f32>(_wgslsmith_f_op_f32(-862f * 267f), _wgslsmith_div_f32(1556f, 1505f), -1077f), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(36267i, u_input.a)) < abs(2147483647i)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -274f) * _wgslsmith_f_op_f32(f32(-1f) * -407f)), 137f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1086f + 1555f))), vec2<bool>(false, true)));
    let var_2 = Struct_1(u_input.a, 545f, var_1.d.c, !var_1.d.b.d);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1719f + var_2.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(reverseBits(4294967295u))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_2.c.x)))) + var_2.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.c.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1252f - var_1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(950f, var_1.a.x)) - var_2.c.x), -1000f), firstTrailingBit(-(var_1.b.xz & func_2(Struct_3(var_1.a, var_1.b, vec3<u32>(var_0, 2617u, var_1.c.x), Struct_2(var_1.a.xx, var_2, vec3<f32>(775f, var_2.c.x, var_2.b), vec2<bool>(var_1.d.d.x, var_1.d.b.d))), var_2.d, var_2.b))), ~(~(-var_1.b.wy)) ^ firstTrailingBit(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b.x, var_2.a), vec2<i32>(-4581i, -2147483647i)), min(u_input.a, 1i))));
}

