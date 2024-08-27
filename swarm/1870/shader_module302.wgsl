struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<i32>,
    d: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7>;

var<private> global1: i32;

var<private> global2: array<Struct_2, 10>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: u32, arg_1: vec4<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.c, 0u, _wgslsmith_mod_u32(~30464u, u_input.a.x)), ~_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, u_input.c, arg_0), vec4<u32>(48699u, 108849u, u_input.c, 37097u)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(82195u, 0u, 0u, 0u))), ~vec4<u32>(54540u, arg_0, u_input.a.x, arg_0) & vec4<u32>(0u, u_input.c, 47491u, u_input.a.x)));
    return global2[_wgslsmith_index_u32(~4294967295u, 10u)];
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(5948u, 7u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.b.c, _wgslsmith_f_op_f32(f32(-1f) * -461f), var_0.b.b.c))))));
    var var_2 = Struct_3(Struct_2(var_0.b.a, func_1(~1u >> (min(var_0.d, 6497u) % 32u), vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.b.c), func_1(21058u, vec4<f32>(-1000f, -907f, var_0.b.b.c, 477f)).b.c, _wgslsmith_f_op_f32(max(var_1.x, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1591f))).b, !(!select(vec2<bool>(false, var_0.a.b.b), var_0.a.c, var_0.a.c))), func_1(_wgslsmith_mod_u32(_wgslsmith_div_u32(min(u_input.a.x, u_input.a.x), ~u_input.c), u_input.a.x), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(548f, 332f, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, var_0.b.b.c, var_1.x, 1061f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.b.c, var_0.b.b.c, var_1.x, var_1.x))))), vec3<i32>(-(~49764i | u_input.b), firstLeadingBit(max(var_0.a.b.a.x & u_input.d, _wgslsmith_dot_vec3_i32(var_0.c, vec3<i32>(-2147483647i, -2147483647i, 2147483647i)))), select(var_0.c.x, -var_0.c.x, arg_0)), _wgslsmith_dot_vec4_u32(vec4<u32>(min(u_input.a.x, 22750u) & countOneBits(86729u), firstLeadingBit(var_0.d), 51991u, var_0.d), vec4<u32>(1u, u_input.a.x, 0u, 0u)));
    var var_3 = Struct_4(func_1(_wgslsmith_dot_vec2_u32(~(~u_input.a), _wgslsmith_div_vec2_u32(countOneBits(u_input.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, var_2.d), u_input.a, vec2<u32>(0u, 31528u)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-374f, -893f, 1654f, -2439f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1395f, 301f, var_2.a.b.c, 347f) * vec4<f32>(var_2.a.b.c, var_0.b.b.c, var_2.a.b.c, var_2.b.b.c)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-522f, var_2.a.b.c, var_0.b.b.c, var_1.x), vec4<f32>(var_2.b.b.c, var_0.a.b.c, var_2.b.b.c, var_1.x)))))))).b, var_1, -(vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(var_0.c, vec3<i32>(var_0.b.b.a.x, 44266i, var_0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.b.c + _wgslsmith_f_op_f32(-632f + 1867f))));
    var var_4 = global0[_wgslsmith_index_u32(4294967295u, 7u)];
    return -1885f;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.c, -2628f)) + vec2<f32>(1100f, arg_0.b.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1378f, 1212f) + vec2<f32>(-1252f, arg_0.b.c)))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-187f, _wgslsmith_f_op_f32(arg_1.c * arg_0.b.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1079f, -424f))), !select(vec2<bool>(true, false), vec2<bool>(false, true), arg_1.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.c, arg_0.b.c), vec2<f32>(595f, arg_1.c))))))));
    let var_1 = 56674u & firstLeadingBit(firstLeadingBit(~min(0u, u_input.c)));
    global1 = ~(-_wgslsmith_sub_i32(~arg_1.a.x, u_input.b) | (i32(-1i) * -1i));
    var var_2 = vec3<bool>(arg_1.b && false, true != any(!select(vec4<bool>(arg_1.b, arg_0.b.b, false, arg_1.b), vec4<bool>(arg_1.b, arg_1.b, true, true), false)), !arg_0.b.b);
    var var_3 = Struct_4(arg_0.b, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(func_1(firstTrailingBit(27511u), _wgslsmith_f_op_vec4_f32(vec4<f32>(-688f, var_0.x, -1423f, 677f) * vec4<f32>(-802f, 815f, -1088f, arg_1.c))).b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-137f))), -168f))), vec3<i32>(arg_1.a.x, arg_0.b.a.x, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_1.a.x, 0i, 2147483647i, u_input.d)), select(vec4<i32>(arg_0.b.a.x, arg_0.b.a.x, arg_0.b.a.x, 2147483647i), vec4<i32>(u_input.b, 12163i, arg_0.b.a.x, 14207i), vec4<bool>(true, var_2.x, var_2.x, true))) << (firstTrailingBit(~27441u) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1f, var_0.x)))));
    return func_1(var_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(true)), _wgslsmith_f_op_f32(arg_1.c - var_0.x), var_3.d, _wgslsmith_f_op_f32(min(arg_1.c, arg_0.b.c)))))).b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 7>();
    let var_0 = func_2(func_1(u_input.a.x, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(273f, 1757f, -348f, 234f))))), func_1(_wgslsmith_div_u32(18392u, u_input.a.x), vec4<f32>(_wgslsmith_f_op_f32(abs(-890f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-644f - 124f), _wgslsmith_f_op_f32(-891f * 944f))), _wgslsmith_div_f32(-1912f, _wgslsmith_div_f32(360f, -1365f)), -366f)).b);
    global0 = array<Struct_3, 7>();
    global2 = array<Struct_2, 10>();
    global0 = array<Struct_3, 7>();
    var var_1 = (var_0.b || all(!vec3<bool>(var_0.b, var_0.b, true))) | !any(!(!vec2<bool>(var_0.b, var_0.b)));
    var var_2 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -(i32(-1i) * -64342i), reverseBits(~(~(~2147483647i))), 1u, countOneBits(min(26256i, var_0.a.x)) ^ -1i, u_input.a);
}

