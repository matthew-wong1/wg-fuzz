struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: bool,
    d: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<i32, 13>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_4, arg_1: f32, arg_2: vec2<f32>) -> Struct_3 {
    global1 = array<i32, 13>();
    var var_0 = 26259i;
    let var_1 = !(1u < u_input.b);
    var var_2 = -10343i;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -938f);
    return Struct_3(arg_0.a, arg_0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(arg_1 + arg_1))) <= 1000f, ~(~vec4<u32>(global0.d.x, max(29705u, 1u), ~u_input.c.x, ~1u)));
}

fn func_3() -> vec2<u32> {
    let var_0 = func_2(Struct_4(func_2(Struct_4(~global0.d.x, vec2<u32>(u_input.c.x, u_input.c.x) ^ global0.d.ww, func_2(Struct_4(69071u, global0.d.xz, -39094i, -9977i, Struct_2(global0.b.a, global1[_wgslsmith_index_u32(u_input.b, 13u)])), -1342f, vec2<f32>(-164f, -356f)).b.b, _wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(global0.a, 13u)], global0.b.b), vec2<i32>(11528i, -1i)), func_2(Struct_4(u_input.c.x, vec2<u32>(u_input.c.x, 664u), 57411i, 0i, global0.b), 873f, vec2<f32>(-1000f, -534f)).b), -1000f, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1046f), _wgslsmith_f_op_f32(floor(570f)))).a, ~(~max(u_input.c, vec2<u32>(7082u, 47289u))), global0.b.b, countOneBits(countOneBits(global0.b.b)), Struct_2(vec3<bool>(global0.b.a.x || global0.b.a.x, !global0.c, global0.c), _wgslsmith_add_i32(func_2(Struct_4(u_input.b, vec2<u32>(global0.d.x, 14488u), global1[_wgslsmith_index_u32(32041u, 13u)], u_input.d, global0.b), -946f, vec2<f32>(-1538f, -1000f)).b.b, firstLeadingBit(global0.b.b)))), 1024f, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(225f, -1365f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-950f, 1465f) - _wgslsmith_div_vec2_f32(vec2<f32>(2123f, -1000f), vec2<f32>(333f, 1361f)))))));
    global1 = array<i32, 13>();
    global0 = Struct_3(var_0.d.x, func_2(Struct_4(14356u, u_input.c, ~(~global0.b.b), func_2(Struct_4(18917u, u_input.c, 2147483647i, var_0.b.b, global0.b), _wgslsmith_f_op_f32(408f - 1260f), vec2<f32>(747f, 1515f)).b.b, Struct_2(var_0.b.a, var_0.b.b)), 779f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1768f, 156f), vec2<f32>(-363f, 1166f), false)))))).b, var_0.b.a.x & any(!vec3<bool>(global0.c, false, var_0.c)), var_0.d);
    global1 = array<i32, 13>();
    global0 = var_0;
    return vec2<u32>(0u, ~1u);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: f32) -> vec2<u32> {
    global1 = array<i32, 13>();
    let var_0 = func_2(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-409f * -1511f)), arg_1);
    let var_1 = Struct_1(!(!vec4<bool>(true, false || global0.b.a.x, var_0.c, true)));
    global0 = var_0;
    var var_2 = abs(_wgslsmith_add_i32(-arg_0.x, -1i));
    return firstLeadingBit(func_3());
}

fn func_4(arg_0: Struct_4, arg_1: f32) -> StorageBuffer {
    let var_0 = global0.d.zww;
    global1 = array<i32, 13>();
    let var_1 = max(global1[_wgslsmith_index_u32(countOneBits(func_1(-vec2<i32>(u_input.d, global1[_wgslsmith_index_u32(arg_0.a, 13u)]), vec2<f32>(-2265f, arg_1), Struct_4(129471u, vec2<u32>(var_0.x, 12586u), global0.b.b & arg_0.d, 1i, func_2(arg_0, -692f, vec2<f32>(arg_1, arg_1)).b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-106f, 869f))))).x), 13u)], global0.b.b);
    global1 = array<i32, 13>();
    let var_2 = Struct_1(!vec4<bool>(true, global0.c, true, false));
    return StorageBuffer(_wgslsmith_sub_vec4_u32(global0.d, global0.d), vec4<i32>(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(var_1, var_1))), _wgslsmith_div_i32(~26080i, func_2(Struct_4(5965u, vec2<u32>(25340u, 1u), -1i, -2635i, arg_0.e), arg_1, vec2<f32>(arg_1, arg_1)).b.b), -firstTrailingBit(global1[_wgslsmith_index_u32(var_0.x, 13u)]), _wgslsmith_mult_i32(global0.b.b, _wgslsmith_add_i32(u_input.a, 61933i))) ^ -((vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(5396u, 13u)], var_1, 2147483647i) << (vec4<u32>(4294967295u, 20840u, 0u, 19943u) % vec4<u32>(32u))) << (vec4<u32>(arg_0.b.x, var_0.x, 79837u, arg_0.a) % vec4<u32>(32u))), 9915i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1, -1870f))) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(941f, arg_1)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-448f, arg_1), vec2<f32>(arg_1, 673f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(136f, arg_1) - vec2<f32>(-675f, 756f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) * vec2<f32>(1014f, arg_1))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_4(~global0.a, vec2<u32>(4294967295u, 3729u >> (0u % 32u)) & _wgslsmith_clamp_vec2_u32(func_1(vec2<i32>(-7977i, global0.b.b), vec2<f32>(-1000f, -682f), Struct_4(0u, u_input.c, -675i, -3369i, global0.b), -342f), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(4294967295u, 4294967295u)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, global0.d.x), vec2<u32>(global0.a, 30992u))), global0.b.b, firstLeadingBit(_wgslsmith_add_i32(global0.b.b, min(50235i, -2552i))), func_2(Struct_4(u_input.c.x, ~global0.d.xy, -2803i, _wgslsmith_div_i32(global0.b.b, u_input.a), global0.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1404f), _wgslsmith_f_op_f32(f32(-1f) * -664f)), vec2<f32>(_wgslsmith_f_op_f32(select(-1062f, 350f, global0.c)), 117f)).b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1100f, -174f, global0.c)) * _wgslsmith_f_op_f32(804f - 1068f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -683f) * _wgslsmith_f_op_f32(-1000f - -124f)))))));
}

