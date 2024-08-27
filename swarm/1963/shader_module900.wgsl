struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: vec2<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: vec2<bool>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1() -> i32 {
    var var_0 = vec4<i32>(_wgslsmith_dot_vec3_i32(-(-vec3<i32>(-2147483647i, u_input.c, -2147483647i) & -vec3<i32>(-27441i, u_input.c, u_input.c)), vec3<i32>(-u_input.c, reverseBits(24959i | u_input.c), ~min(5118i, u_input.c))), _wgslsmith_mod_i32(2147483647i, 2147483647i), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(18029i, 55483i, 0i, 46744i) ^ vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), countOneBits(vec4<i32>(u_input.c, 0i, 2147483647i, 9552i))) | ((u_input.c | u_input.c) ^ _wgslsmith_mult_i32(-1738i, -16498i)), u_input.c, u_input.c), u_input.c);
    let var_1 = _wgslsmith_sub_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, var_0.x, u_input.c, u_input.c), -vec4<i32>(var_0.x, -54879i, var_0.x, 34281i)), ~(vec4<i32>(-1i) * -vec4<i32>(1i, -2147483647i, 4571i, -10387i))) | vec4<i32>(~u_input.c, 3651i, var_0.x, -_wgslsmith_mod_i32(_wgslsmith_div_i32(-33796i, u_input.c), -44342i));
    var var_2 = global1.x;
    var var_3 = 1412f;
    var var_4 = 1i;
    return _wgslsmith_div_i32(var_0.x, ~_wgslsmith_mod_i32(var_0.x, -(~1i)));
}

fn func_2() -> Struct_4 {
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    return Struct_4(~(~reverseBits(vec4<u32>(u_input.b.x, u_input.b.x, 3401u, u_input.b.x))));
}

fn func_3(arg_0: i32) -> u32 {
    global1 = vec2<bool>(all(!vec4<bool>(true, select(global1.x, global1.x, false), true, global1.x)), true || any(vec4<bool>(true, true, true, all(vec4<bool>(global1.x, true, global1.x, true)))));
    var var_0 = u_input.a;
    var_0 = u_input.a;
    var_0 = ~u_input.a;
    global0 = array<Struct_1, 9>();
    return 44692u;
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: f32) -> StorageBuffer {
    let var_0 = 62130u;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1016f, -986f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(231f)), 443f, false))) - 542f);
    let var_2 = Struct_1(~firstLeadingBit(~reverseBits(var_0)), abs(firstTrailingBit(-_wgslsmith_mod_vec4_i32(vec4<i32>(-32735i, u_input.c, 24501i, u_input.c), vec4<i32>(u_input.c, -47784i, -2147483647i, 0i)))), vec2<i32>(1i, -1i), 36545u, abs(_wgslsmith_sub_u32(u_input.a, arg_1)));
    let var_3 = vec4<u32>(~(~abs(var_0) << ((~0u >> (var_0 % 32u)) % 32u)), ~_wgslsmith_div_u32(firstTrailingBit(_wgslsmith_div_u32(u_input.b.x, arg_1)), 4294967295u), (1u ^ arg_1) ^ _wgslsmith_add_u32(8952u, 1u), 1u);
    let var_4 = global0[_wgslsmith_index_u32(~(~4294967295u), 9u)];
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-937f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_div_f32(arg_2, var_1))))), var_1, ~(min(~u_input.b, max(var_3.yzy, var_3.wwx)) >> (reverseBits(vec3<u32>(1u, var_2.e, arg_1) ^ vec3<u32>(arg_0.a.x, 54503u, var_2.d)) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !vec2<bool>(true, (firstTrailingBit(u_input.a) << (4294967295u % 32u)) > u_input.a);
    let var_0 = _wgslsmith_div_i32(abs(_wgslsmith_add_i32(u_input.c, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -1i, u_input.c), vec3<i32>(8907i, u_input.c, u_input.c)))), ~firstLeadingBit(select(u_input.c, 1787i, true) ^ -16259i));
    let var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(-752i, u_input.c), vec2<i32>(-4166i, firstTrailingBit(func_1())));
    global1 = !vec2<bool>(!all(vec2<bool>(global1.x, false)), global1.x);
    var var_2 = firstTrailingBit(firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(func_1(), _wgslsmith_mult_i32(0i, var_1), ~var_1), ~vec3<i32>(-3092i, u_input.c, u_input.c) | vec3<i32>(25166i, -1i, 14349i))));
    var var_3 = Struct_1(u_input.a, _wgslsmith_sub_vec4_i32(countOneBits(firstTrailingBit(vec4<i32>(20535i, 1i, var_1, 1i) >> (vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.a) % vec4<u32>(32u)))), min(_wgslsmith_add_vec4_i32(vec4<i32>(var_1, u_input.c, var_0, -15573i), vec4<i32>(-89873i, 980i, -1i, 39936i) << (vec4<u32>(u_input.b.x, u_input.b.x, u_input.a, 87208u) % vec4<u32>(32u))), select(vec4<i32>(7553i, -10024i, -1i, var_1) << (vec4<u32>(34402u, u_input.a, u_input.b.x, u_input.a) % vec4<u32>(32u)), vec4<i32>(var_1, 14825i, var_1, var_1) ^ vec4<i32>(-10488i, 7656i, var_0, 1i), true))), _wgslsmith_sub_vec2_i32(-_wgslsmith_mod_vec2_i32(var_2.zy & var_2.xz, -vec2<i32>(2147483647i, var_1)), var_2.xx), _wgslsmith_div_u32(1u, min(~u_input.a, (1u & u_input.b.x) | ~u_input.b.x)), ~(~firstTrailingBit(u_input.b.x)));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1435f, 492f, 521f)) - vec3<f32>(471f, -2150f, 462f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(271f, -200f, 833f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-632f, -483f, 1620f) - vec3<f32>(358f, -2395f, -1963f)) + vec3<f32>(-766f, -1124f, 120f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(292f, -1000f, 1883f))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-263f, 1511f, 1180f)))))));
    var var_5 = ~min(vec2<u32>(~u_input.a, _wgslsmith_mod_u32(4294967295u, 60620u)) | u_input.b.xy, u_input.b.zy ^ vec2<u32>(var_3.e, var_3.e));
    let x = u_input.a;
    s_output = func_4(func_2(), _wgslsmith_dot_vec2_u32(vec2<u32>(34095u, ~func_3(2147483647i)), reverseBits(countOneBits(vec2<u32>(1u, var_3.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1014f, -176f))));
}

