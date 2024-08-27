struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec4<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: f32,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_4,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21> = array<i32, 21>(i32(-2147483648), 2147483647i, -565i, 1i, -17880i, -10561i, -61612i, -16775i, i32(-2147483648), 10230i, 1i, i32(-2147483648), 2147483647i, -33459i, 2147483647i, 30712i, 0i, 1i, 17536i, -1i, 4233i);

var<private> global1: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(Struct_1(vec4<bool>(true, false, false, false), 4294967295u, vec4<u32>(31369u, 56522u, 4294967295u, 4294967295u), vec4<bool>(true, false, true, true)), vec3<i32>(1i, -11968i, 30617i), Struct_2(33918i, -278f, 332f, 2147483647i, 1255f), 0u), Struct_3(Struct_1(vec4<bool>(true, true, false, true), 0u, vec4<u32>(73614u, 0u, 44927u, 32425u), vec4<bool>(true, false, true, false)), vec3<i32>(i32(-2147483648), 24641i, -1i), Struct_2(1i, -813f, -495f, -1i, -864f), 4294967295u), Struct_3(Struct_1(vec4<bool>(false, false, false, true), 43482u, vec4<u32>(0u, 50959u, 8889u, 4294967295u), vec4<bool>(true, false, true, true)), vec3<i32>(-15906i, 48339i, 2147483647i), Struct_2(79595i, 1000f, -1000f, 30816i, -2607f), 0u), Struct_3(Struct_1(vec4<bool>(false, true, false, true), 0u, vec4<u32>(1u, 11400u, 35084u, 20527u), vec4<bool>(true, true, true, false)), vec3<i32>(60647i, 28586i, -1i), Struct_2(i32(-2147483648), 594f, -461f, -19070i, -889f), 1u), Struct_3(Struct_1(vec4<bool>(false, false, true, false), 18799u, vec4<u32>(43511u, 1u, 55651u, 5119u), vec4<bool>(false, true, false, false)), vec3<i32>(-17834i, 0i, 2147483647i), Struct_2(60950i, -794f, 883f, 1i, 213f), 25640u), Struct_3(Struct_1(vec4<bool>(false, false, true, false), 69944u, vec4<u32>(18106u, 11627u, 79853u, 39102u), vec4<bool>(false, false, true, true)), vec3<i32>(-7410i, 1855i, 56201i), Struct_2(i32(-2147483648), 1000f, -367f, 1i, -2223f), 7957u));

var<private> global2: bool;

var<private> global3: f32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_5, arg_2: Struct_2) -> bool {
    var var_0 = !vec4<bool>(any(vec3<bool>(true, true, true)), !any(vec4<bool>(true, true, true, true)), true, !(~global0[_wgslsmith_index_u32(u_input.a, 21u)] != arg_2.d));
    let var_1 = ~(arg_1.b.e.yy ^ (~vec2<u32>(14681u, 4294967295u) & arg_1.b.e.zz));
    let var_2 = global1[_wgslsmith_index_u32(u_input.a, 6u)];
    var var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 1069f)) - vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(792f - var_2.c.b))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.b.a.e, 1279f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-404f, -370f) * vec2<f32>(205f, -1503f))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1620f), arg_0))))));
    var var_4 = Struct_5(vec4<i32>(countOneBits(_wgslsmith_div_i32(i32(-1i) * -2147483647i, reverseBits(1i))), i32(-1i) * -32887i, -_wgslsmith_div_i32(select(1i, global0[_wgslsmith_index_u32(0u, 21u)], var_0.x), _wgslsmith_mod_i32(1i, -1i)), abs(_wgslsmith_div_i32(1i, ~arg_1.a.x))), arg_1.b, ~arg_1.b.d.x);
    return true;
}

fn func_2() -> vec4<i32> {
    var var_0 = 155f;
    let var_1 = Struct_3(Struct_1(vec4<bool>(true, true, true, any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false))), _wgslsmith_sub_u32(u_input.a, max(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 116069u), vec2<u32>(29639u, 4294967295u)), _wgslsmith_mod_u32(u_input.a, u_input.a))), _wgslsmith_add_vec4_u32(~(~vec4<u32>(0u, 4294967295u, 42311u, 0u)), firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a, 16171u, u_input.a), vec4<u32>(2831u, u_input.a, u_input.a, 42969u)))), vec4<bool>(select(all(vec2<bool>(true, false)), false, true), func_3(_wgslsmith_f_op_f32(f32(-1f) * -532f), Struct_5(vec4<i32>(-76978i, global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)], -2147483647i), Struct_4(Struct_2(global0[_wgslsmith_index_u32(u_input.a, 21u)], -1202f, 883f, global0[_wgslsmith_index_u32(4294967295u, 21u)], -868f), 546f, vec3<i32>(global0[_wgslsmith_index_u32(2324u, 21u)], global0[_wgslsmith_index_u32(34145u, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)]), vec3<u32>(70885u, 4294967295u, u_input.a), vec3<u32>(u_input.a, u_input.a, 1u)), 7u), Struct_2(global0[_wgslsmith_index_u32(u_input.a, 21u)], -200f, -1072f, global0[_wgslsmith_index_u32(u_input.a, 21u)], 257f)), all(vec2<bool>(true, false)), true)), vec3<i32>(-1i) * -(reverseBits(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)])) ^ vec3<i32>(-29980i, -1i, global0[_wgslsmith_index_u32(0u, 21u)])), Struct_2(-20903i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(1953f)), _wgslsmith_div_f32(-240f, 883f), u_input.a >= u_input.a))), _wgslsmith_f_op_f32(f32(-1f) * -1694f), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, ~18238u, _wgslsmith_sub_u32(1u, u_input.a)), firstLeadingBit(~vec3<u32>(3809u, 12116u, 0u))), 21u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1638f, -954f))))), u_input.a);
    var var_2 = Struct_4(Struct_2(global0[_wgslsmith_index_u32(~1u, 21u)], var_1.c.e, var_1.c.e, var_1.c.a, -899f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.b - _wgslsmith_f_op_f32(f32(-1f) * -1078f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c.e), _wgslsmith_f_op_f32(exp2(var_1.c.b))) * _wgslsmith_f_op_f32(f32(-1f) * -2004f))), vec3<i32>(global0[_wgslsmith_index_u32(var_1.a.b, 21u)], ~(-2147483647i), var_1.b.x) | vec3<i32>(countOneBits(17007i), -1i, -2147483647i), vec3<u32>(~4294967295u & _wgslsmith_dot_vec3_u32(min(var_1.a.c.xxy, var_1.a.c.zyx), ~var_1.a.c.ywx), countOneBits(15534u), _wgslsmith_div_u32(654u, u_input.a)), var_1.a.c.yzx);
    global1 = array<Struct_3, 6>();
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.a.e)));
    return ~abs(~(vec4<i32>(2147483647i, 1i, var_1.c.d, var_1.c.a) >> (vec4<u32>(46481u, var_2.d.x, 0u, u_input.a) % vec4<u32>(32u)))) & ~abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(7197u, 21u)], 0i, global0[_wgslsmith_index_u32(4294967295u, 21u)], -1i), vec4<i32>(var_1.c.d, -45132i, -1i, var_1.c.a), vec4<i32>(global0[_wgslsmith_index_u32(var_1.a.b, 21u)], var_1.c.d, global0[_wgslsmith_index_u32(var_1.d, 21u)], 0i)) ^ -vec4<i32>(27442i, var_2.c.x, -2147483647i, var_2.c.x));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: vec2<i32>) -> u32 {
    let var_0 = max(_wgslsmith_add_i32(arg_0.x, -42187i), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-52849i, global0[_wgslsmith_index_u32(u_input.a, 21u)], -30507i, global0[_wgslsmith_index_u32(u_input.a, 21u)])) >> ((vec4<u32>(43035u, u_input.a, 69727u, 4294967295u) << (vec4<u32>(0u, 5830u, u_input.a, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u)), countOneBits(vec4<i32>(-33985i, global0[_wgslsmith_index_u32(u_input.a, 21u)], 1i, global0[_wgslsmith_index_u32(39530u, 21u)]) << (vec4<u32>(1u, u_input.a, 24217u, u_input.a) % vec4<u32>(32u)))) | (-2147483647i >> ((_wgslsmith_add_u32(u_input.a, u_input.a) << (22008u % 32u)) % 32u)));
    var var_1 = select(func_2(), _wgslsmith_add_vec4_i32(vec4<i32>(1i, i32(-1i) * -1i, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 52492u), 21u)], ~global0[_wgslsmith_index_u32(49758u, 21u)] ^ 0i), func_2()), vec4<bool>(true, arg_1.x, arg_1.x, true));
    let var_2 = _wgslsmith_f_op_f32(max(-630f, 834f));
    let var_3 = !select(!vec3<bool>(arg_1.x, arg_1.x, any(vec4<bool>(true, arg_1.x, arg_1.x, false))), vec3<bool>(all(vec2<bool>(arg_1.x, false)), all(!vec3<bool>(false, arg_1.x, true)), false), !(!select(vec3<bool>(arg_1.x, true, true), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(false, arg_1.x, false))));
    let var_4 = Struct_2(firstLeadingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 1i, var_1.x, arg_0.x), vec4<i32>(var_1.x, 26256i, -49887i, var_0)), vec4<i32>(global0[_wgslsmith_index_u32(87u, 21u)], 0i, 0i, -66248i) << (vec4<u32>(u_input.a, 49791u, 0u, 4294967295u) % vec4<u32>(32u))) ^ 1i), _wgslsmith_f_op_f32(-1463f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) - -824f)), 233f, arg_2.x, var_2);
    return _wgslsmith_mod_u32(4294967295u, 62322u);
}

fn func_4(arg_0: i32, arg_1: vec4<u32>) -> Struct_2 {
    let var_0 = -vec2<i32>(global0[_wgslsmith_index_u32(50895u, 21u)], -2714i);
    global1 = array<Struct_3, 6>();
    global0 = array<i32, 21>();
    var var_1 = Struct_5(-abs(abs(vec4<i32>(global0[_wgslsmith_index_u32(arg_1.x, 21u)], 0i, var_0.x, -58543i))) & _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_add_i32(-25456i, -12196i), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, arg_1.x, arg_1.x), 21u)], -25523i, _wgslsmith_mult_i32(38441i, -4790i)), _wgslsmith_mod_vec4_i32(-vec4<i32>(var_0.x, 45793i, arg_0, 1i), vec4<i32>(var_0.x, global0[_wgslsmith_index_u32(13211u, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)], 1i))), Struct_4(Struct_2(abs(~1i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1888f))), 391f, _wgslsmith_add_i32(~global0[_wgslsmith_index_u32(8464u, 21u)], min(arg_0, arg_0)), _wgslsmith_f_op_f32(-648f * _wgslsmith_f_op_f32(555f + -1075f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(558f))), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(1i, -29814i, 2147483647i), vec3<i32>(~arg_0, var_0.x, -11470i)), select(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), arg_1.xwy, abs(vec3<u32>(u_input.a, u_input.a, 0u))), abs(arg_1.ywz), vec3<bool>(true, true, true)), _wgslsmith_add_vec3_u32(arg_1.yyw, select(vec3<u32>(39323u, u_input.a, 1u), arg_1.xxy, true))), _wgslsmith_div_u32(_wgslsmith_clamp_u32(arg_1.x, ~1u, select(u_input.a, 92652u, false) >> (u_input.a % 32u)), ~(~1u)));
    let var_2 = vec4<i32>(11281i, firstTrailingBit(_wgslsmith_div_i32(select(arg_0 & 1i, 1i, var_1.b.e.x <= var_1.b.e.x), -2147483647i)), _wgslsmith_dot_vec2_i32(var_0, ~vec2<i32>(18955i, 981i)), -6238i);
    return Struct_2(abs(24697i), _wgslsmith_f_op_f32(-var_1.b.a.b), 207f, -22885i, _wgslsmith_f_op_f32(-913f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-753f, _wgslsmith_f_op_f32(var_1.b.a.b + -856f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 6>();
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(~u_input.a, 21u)], global0[_wgslsmith_index_u32(~1u, 21u)]), vec2<i32>(-1i) * -vec2<i32>(26593i, -2147483647i)) & global0[_wgslsmith_index_u32(~u_input.a, 21u)];
    let var_1 = func_4(_wgslsmith_mult_i32(~_wgslsmith_sub_i32(_wgslsmith_sub_i32(-1i, global0[_wgslsmith_index_u32(u_input.a, 21u)]), -59628i), var_0), ((vec4<u32>(4294967295u, u_input.a, 77629u, 28485u) | _wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, 1u), vec4<u32>(u_input.a, 0u, u_input.a, 13957u))) >> (abs(vec4<u32>(u_input.a, 72888u, 32569u, 1u) << (vec4<u32>(u_input.a, u_input.a, 31961u, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u))) | vec4<u32>(28534u, func_1(vec2<i32>(671i, 2147483647i) ^ vec2<i32>(1i, var_0), vec2<bool>(false, true), min(vec2<i32>(var_0, global0[_wgslsmith_index_u32(u_input.a, 21u)]), vec2<i32>(1i, 1321i))), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(31127u, u_input.a, u_input.a, u_input.a), vec4<u32>(0u, u_input.a, u_input.a, u_input.a))), u_input.a));
    let var_2 = min(_wgslsmith_mult_vec4_u32(vec4<u32>(~1u, ~_wgslsmith_div_u32(u_input.a, 57351u), firstTrailingBit(9226u), func_1(vec2<i32>(1i, 1i), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, var_1.a), vec2<i32>(var_1.d, var_1.d)))), ~firstTrailingBit(vec4<u32>(u_input.a, 4294967295u, 4294967295u, 0u))), _wgslsmith_sub_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, u_input.a, 1u), vec4<u32>(1u, 21897u, 18504u, 1u)) | _wgslsmith_mult_vec4_u32(abs(vec4<u32>(u_input.a, 1u, 56723u, 37637u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), vec4<u32>(4294967295u, u_input.a, 14494u, u_input.a), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a))), reverseBits(firstTrailingBit(~vec4<u32>(65468u, u_input.a, u_input.a, 46867u)))));
    global1 = array<Struct_3, 6>();
    var var_3 = var_2.xw;
    var var_4 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, _wgslsmith_f_op_f32(-1416f + -200f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.e, var_1.c), vec2<f32>(1532f, var_1.b), false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1258f, var_1.b)), all(vec4<bool>(true, true, false, true)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1189f, var_1.b), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.c, var_1.e)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, -458f)) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(221f, var_1.b))))))));
    var var_5 = Struct_5(select(max(vec4<i32>(var_1.a, 32171i, var_0, var_1.d) ^ vec4<i32>(73658i, global0[_wgslsmith_index_u32(1u, 21u)], var_1.d, var_0), func_2()), ~(vec4<i32>(global0[_wgslsmith_index_u32(1u, 21u)], var_1.a, var_0, global0[_wgslsmith_index_u32(var_2.x, 21u)]) & vec4<i32>(var_0, 49396i, global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(var_3.x, 21u)])), true && func_3(var_4.x, Struct_5(vec4<i32>(25333i, -1i, var_1.a, 25019i), Struct_4(var_1, var_4.x, vec3<i32>(-2147483647i, var_0, 9154i), var_2.xyy, var_2.wyy), var_3.x), var_1)) | reverseBits(abs(firstTrailingBit(vec4<i32>(global0[_wgslsmith_index_u32(var_2.x, 21u)], 1i, 1011i, 1i)))), Struct_4(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1298f)) - 1401f), min(reverseBits(vec3<i32>(global0[_wgslsmith_index_u32(var_3.x, 21u)], -1i, -1i)) >> (var_2.zzx % vec3<u32>(32u)), vec3<i32>(~var_0, reverseBits(global0[_wgslsmith_index_u32(1u, 21u)]), _wgslsmith_add_i32(var_0, -1i))), vec3<u32>(u_input.a, ~37958u, 1u) | vec3<u32>(max(0u, 1u), 67124u, _wgslsmith_mult_u32(115538u, u_input.a)), _wgslsmith_sub_vec3_u32(~var_2.yxw, _wgslsmith_clamp_vec3_u32(max(var_2.zwx, vec3<u32>(var_3.x, u_input.a, var_3.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(43785u, 0u, 48323u), vec3<u32>(var_3.x, 11910u, 24631u)), vec3<u32>(var_3.x, 0u, 41032u)))), ~var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(f32(-1f) * -1479f), true)), _wgslsmith_f_op_f32(f32(-1f) * -1238f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.x, _wgslsmith_f_op_f32(step(var_4.x, var_5.b.a.b))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(464f, var_1.b)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.b.a.e, var_4.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(691f, var_5.b.b) - vec2<f32>(var_1.c, var_5.b.a.e)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_4.x, -1477f), vec2<f32>(var_5.b.a.c, 1143f), vec2<bool>(false, false)))))), var_0, var_5.b.b, _wgslsmith_div_f32(-1514f, var_5.b.a.b));
}

