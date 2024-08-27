struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: f32;

var<private> global2: array<vec3<bool>, 29> = array<vec3<bool>, 29>(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true));

var<private> global3: array<Struct_5, 15>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_5, arg_1: Struct_2) -> vec3<bool> {
    let var_0 = -(i32(-1i) * -852i);
    let var_1 = Struct_5(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.a.x, _wgslsmith_f_op_f32(-arg_0.a.x), false)), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x * 1773f) - _wgslsmith_f_op_f32(select(arg_0.a.x, -720f, global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-211f)) + 1270f) + _wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_0.a.x, 536f)), arg_0.a.x)));
    global3 = array<Struct_5, 15>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(min(arg_0.a.x, arg_0.a.x))))));
    global3 = array<Struct_5, 15>();
    return select(select(select(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(u_input.c, u_input.c)), 29u)], select(!vec3<bool>(global0.x, true, global0.x), global2[_wgslsmith_index_u32(u_input.c & 35079u, 29u)], !global0.x), select(global2[_wgslsmith_index_u32(5953u, 29u)], !vec3<bool>(true, global0.x, true), vec3<bool>(true, global0.x, false))), !vec3<bool>(true, all(vec2<bool>(true, true)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x - var_1.a.x) + _wgslsmith_f_op_f32(-var_1.a.x)) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.a.x)))), global2[_wgslsmith_index_u32(~select(~u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(10321u, u_input.c, 1u) | vec3<u32>(34872u, 1u, u_input.c), ~vec3<u32>(46750u, u_input.c, u_input.c)), var_1.a.x < _wgslsmith_f_op_f32(f32(-1f) * -1664f)), 29u)], vec3<bool>(global0.x, global0.x, select(u_input.d.x, arg_1.b.x, true) != ~_wgslsmith_div_i32(u_input.a.x, u_input.a.x)));
}

fn func_2(arg_0: vec2<u32>, arg_1: f32) -> bool {
    var var_0 = -414f;
    let var_1 = vec2<u32>(4294967295u, 0u);
    var var_2 = func_3(Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1490f, arg_1, arg_1, 480f)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_1, -964f, -1008f, 336f), vec4<f32>(arg_1, 1000f, arg_1, 1017f))))), Struct_2(-select(abs(u_input.b), abs(vec2<i32>(14117i, 2147483647i)), select(vec2<bool>(true, global0.x), vec2<bool>(true, false), true)), u_input.b));
    global3 = array<Struct_5, 15>();
    global0 = !select(!func_3(Struct_5(vec4<f32>(arg_1, -947f, -260f, arg_1)), Struct_2(vec2<i32>(2147483647i, -8051i), u_input.a)).xz, vec2<bool>(true, global0.x), !any(select(vec4<bool>(true, global0.x, var_2.x, global0.x), vec4<bool>(global0.x, true, var_2.x, false), false)));
    return false;
}

fn func_1() -> Struct_2 {
    var var_0 = reverseBits(u_input.c);
    global0 = vec2<bool>((abs(u_input.b.x) <= u_input.b.x) && true, false);
    global2 = array<vec3<bool>, 29>();
    let var_1 = func_2(min(~vec2<u32>(14179u, u_input.c), firstTrailingBit(vec2<u32>(1u, 86145u) | vec2<u32>(u_input.c, u_input.c))) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_div_u32(70512u, 27644u), firstLeadingBit(u_input.c)), _wgslsmith_add_vec2_u32(vec2<u32>(66431u, 35137u), vec2<u32>(1u, 1u)) << (vec2<u32>(u_input.c, 32009u) % vec2<u32>(32u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f))))));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-472f)) + _wgslsmith_div_f32(-107f, 613f))))));
    return Struct_2(_wgslsmith_add_vec2_i32(firstLeadingBit(u_input.b & vec2<i32>(2147483647i, 42145i)), abs(countOneBits(u_input.a))) & u_input.a, abs(_wgslsmith_add_vec2_i32(-u_input.b, u_input.b | u_input.a)) & -vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, u_input.b.x), u_input.a), u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global3 = array<Struct_5, 15>();
    var var_1 = Struct_4(abs((vec4<i32>(-1i) * -vec4<i32>(-31156i, u_input.b.x, u_input.a.x, 51813i)) & vec4<i32>(firstTrailingBit(-2147483647i), 1i, var_0.b.x, _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, u_input.a.x)))));
    let var_2 = any(vec4<bool>(!global0.x, all(vec3<bool>(global0.x, u_input.b.x <= u_input.a.x, true)), false, !global0.x));
    let var_3 = u_input.b;
    global1 = -1197f;
    var var_4 = -21805i;
    var_0 = Struct_2(-u_input.d.yz | vec2<i32>(_wgslsmith_add_i32(var_0.b.x, u_input.a.x | var_0.a.x), -1i), firstLeadingBit(~abs(vec2<i32>(u_input.a.x, var_1.a.x))));
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_mod_i32(abs(u_input.d.x), _wgslsmith_clamp_i32(var_0.b.x, var_0.b.x, var_1.a.x)) >> (1u % 32u), i32(-1i) * -(36897i >> (u_input.c % 32u)), -1i, select(_wgslsmith_mod_i32(var_0.b.x, -2147483647i), -21274i, false)), _wgslsmith_mult_i32(firstLeadingBit((-23505i ^ u_input.a.x) ^ u_input.d.x), var_0.a.x), 61419u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(-493f)), _wgslsmith_f_op_f32(f32(-1f) * -437f))));
}

