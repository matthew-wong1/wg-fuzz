struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1 = Struct_1(40143u, -1i, 4294967295u);

var<private> global2: array<Struct_1, 4>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = ~(~(~(~(vec2<u32>(4294967295u, 8636u) | vec2<u32>(global0.a.a, global0.a.a)))));
    var_0 = vec2<u32>(~var_0.x >> (select(countOneBits(~u_input.d), u_input.c, all(vec3<bool>(true, true, true)) || true) % 32u), ~(22246u << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, global1.c, global0.a.a, global1.c), vec4<u32>(681u, global0.a.a, 49146u, var_0.x)) % 32u)));
    global0 = Struct_2(Struct_1(firstLeadingBit(~(global1.c >> (39110u % 32u))), -2147483647i, 8058u));
    global0 = Struct_2(Struct_1(~global0.a.c, -20691i, reverseBits(31619u)));
    global1 = global0.a;
    return ~abs(global0.a.a | max(0u, max(var_0.x, 1u)));
}

fn func_2(arg_0: Struct_2) -> u32 {
    let var_0 = Struct_2(Struct_1(1u, -9061i, ~11730u));
    var var_1 = _wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.a.a, global0.a.c, global1.c, 6511u), ~vec4<u32>(1u, global0.a.c, global1.c, global1.c)), abs(4294967295u ^ _wgslsmith_mult_u32(global0.a.c, u_input.a))) != arg_0.a.c;
    var_1 = true;
    let var_2 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.a, reverseBits(global0.a.c), countOneBits(0u)), vec3<u32>(global1.a, func_3(global0.a.c <= arg_0.a.a), ~_wgslsmith_mult_u32(u_input.a, 59680u))), -_wgslsmith_mult_i32(1875i, global0.a.b), ~arg_0.a.a);
    global2 = array<Struct_1, 4>();
    return (_wgslsmith_dot_vec3_u32(min(vec3<u32>(var_2.c, 4294967295u, global0.a.a) | vec3<u32>(var_2.a, 109579u, 71291u), vec3<u32>(1623u, 30937u, 1u)), vec3<u32>(var_2.a, var_2.c, 4294967295u) << (_wgslsmith_mult_vec3_u32(vec3<u32>(0u, arg_0.a.a, var_0.a.c), vec3<u32>(0u, 90936u, var_0.a.a)) % vec3<u32>(32u))) ^ u_input.a) | (countOneBits(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global0.a.a, global0.a.a), vec2<u32>(var_2.c, 56901u)), abs(vec2<u32>(0u, 24323u)))) & abs(102209u));
}

fn func_4(arg_0: Struct_2) -> vec3<f32> {
    global2 = array<Struct_1, 4>();
    var var_0 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(27559u, ~global1.c), 4u)]);
    let var_1 = arg_0;
    var var_2 = select(abs(_wgslsmith_add_vec3_u32(max(select(vec3<u32>(u_input.d, 28655u, u_input.a), vec3<u32>(global0.a.c, global1.c, 7664u), false), _wgslsmith_sub_vec3_u32(vec3<u32>(44160u, 52858u, 31234u), vec3<u32>(global1.a, 66055u, global1.a))), _wgslsmith_sub_vec3_u32(vec3<u32>(global0.a.a, 4294967295u, var_0.a.c), vec3<u32>(var_1.a.c, 39197u, arg_0.a.a)))), abs(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(0u, arg_0.a.a), var_1.a.c | global0.a.a), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4040u, 33874u, global1.c), vec3<u32>(u_input.c, 4294967295u, arg_0.a.c)), firstTrailingBit(~var_0.a.a))), !(!vec3<bool>(false, true, any(vec4<bool>(true, true, false, true)))));
    global1 = arg_0.a;
    return vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1685f))))), -1140f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1289f + 1765f), -763f, true))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-499f, 410f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-207f, 157f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1062f + 1107f)))) * -506f));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(Struct_2(Struct_1(global0.a.a, 13180i, func_2(Struct_2(Struct_1(29935u, global1.b, 19746u))))))));
    let var_1 = global0.a;
    var var_2 = var_0.xz;
    global2 = array<Struct_1, 4>();
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(round(503f)), var_0.x);
    return Struct_2(Struct_1(1u, _wgslsmith_div_i32(2147483647i, 1i), ~_wgslsmith_clamp_u32(global1.a >> (global0.a.a % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 4294967295u, global1.a), vec3<u32>(0u, 1u, u_input.d)), ~u_input.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(0u, u_input.b, _wgslsmith_mod_u32(countOneBits(_wgslsmith_clamp_u32(max(u_input.c, u_input.a), ~u_input.a, global1.c)), global0.a.c));
    global0 = func_1();
    let var_1 = vec2<u32>(~119907u, ~0u) | countOneBits(~abs(vec2<u32>(43729u, global0.a.a) << (vec2<u32>(global0.a.c, 4142u) % vec2<u32>(32u))));
    let var_2 = ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(~global0.a.c, _wgslsmith_add_u32(global0.a.c, var_1.x), global0.a.a, 30623u & global1.a), ~vec4<u32>(7987u, 0u, var_0.c, 41852u)));
    global2 = array<Struct_1, 4>();
    global1 = func_1().a;
    var var_3 = any(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false)), true)), !select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, _wgslsmith_sub_u32(var_1.x, u_input.c) < ~global1.a, all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false)), true)));
    var_3 = all(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, false), false), (u_input.b != 2147483647i) && false));
    var var_4 = _wgslsmith_div_i32(_wgslsmith_mult_i32(-global1.b, global0.a.b), global1.b | ~select(global1.b, 1i, true));
    let x = u_input.a;
    s_output = StorageBuffer((vec4<i32>(global0.a.b, ~global0.a.b, global0.a.b >> (1u % 32u), -2147483647i) << (abs(_wgslsmith_add_vec4_u32(vec4<u32>(33776u, 105660u, 41457u, 4294967295u), vec4<u32>(var_2.x, 4294967295u, var_0.a, 1u))) % vec4<u32>(32u))) | ~abs(-vec4<i32>(-1i, var_0.b, 34746i, -22049i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(-216f - -1732f), false)) + -716f), -(vec4<i32>(u_input.b, _wgslsmith_sub_i32(global1.b, -1i), firstTrailingBit(global0.a.b), -1i) >> (var_2 % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-304f * -1000f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(2351f, 1000f) * -277f))));
}

