struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
    d: f32,
    e: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: Struct_3,
    d: i32,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = Struct_3(Struct_2(arg_3.a, vec3<u32>(42997u, 67323u, arg_2.b.x)));
    return select(vec4<bool>(true, true, true, true), vec4<bool>(!(all(vec2<bool>(false, true)) & true), select(true, true, !any(vec2<bool>(true, false))), true, any(vec2<bool>(any(vec4<bool>(true, false, true, false)), false))), false);
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: bool, arg_3: vec3<f32>) -> i32 {
    let var_0 = 1f;
    let var_1 = vec4<f32>(-537f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) * arg_3.x), _wgslsmith_f_op_f32(-1161f - 551f), var_0);
    let var_2 = vec4<bool>(true, true, arg_2, any(!(!vec2<bool>(false, arg_2))) || !any(func_3(vec4<u32>(u_input.d.x, u_input.a, 1u, 3896u), vec4<u32>(u_input.a, 50607u, u_input.d.x, 64197u), Struct_1(u_input.c.x, u_input.d, u_input.a, u_input.c), Struct_2(Struct_1(u_input.c.x, vec2<u32>(u_input.a, u_input.b), 4518u, u_input.c), vec3<u32>(u_input.d.x, u_input.a, u_input.a)))));
    var var_3 = !any(vec2<bool>(any(var_2.ywz), var_2.x & true));
    let var_4 = var_0;
    return u_input.c.x;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = Struct_2(Struct_1(max(abs(~u_input.c.x), arg_0.x), reverseBits(vec2<u32>(u_input.b, arg_1.e.a.a.c) & (u_input.d << (vec2<u32>(arg_1.a.b.x, arg_2.b.x) % vec2<u32>(32u)))), _wgslsmith_add_u32(2304u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_2.c, u_input.b, 65307u), _wgslsmith_add_vec4_u32(vec4<u32>(arg_2.b.x, u_input.b, 6809u, 21863u), vec4<u32>(arg_2.b.x, 49337u, arg_2.c, 20533u)))), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(min(vec3<i32>(u_input.c.x, 1i, 0i), arg_2.d), u_input.c), ~vec3<i32>(arg_0.x, u_input.c.x, 1i) ^ -vec3<i32>(u_input.c.x, arg_2.a, u_input.c.x))), select(arg_1.c.a.b, arg_1.c.a.b, false));
    return _wgslsmith_add_vec4_i32(vec4<i32>(-6376i, u_input.c.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-43976i, arg_1.c.a.a.d.x, -55233i, -32506i), vec4<i32>(-2147483647i, 0i, u_input.c.x, -9876i)), -vec4<i32>(arg_2.d.x, -2147483647i, -19556i, arg_0.x)), 17982i), reverseBits(-1i)), ~(~abs(vec4<i32>(33646i, -1i, arg_0.x, var_0.a.d.x))));
}

fn func_1() -> bool {
    let var_0 = -func_4(vec3<i32>(~func_2(vec3<f32>(-1177f, -2748f, 124f), false, false, vec3<f32>(2171f, -151f, 602f)), ~(-32036i), -19538i), Struct_5(Struct_2(Struct_1(-15179i, vec2<u32>(u_input.d.x, u_input.a), 30544u, u_input.c), select(vec3<u32>(u_input.d.x, u_input.a, 76300u), vec3<u32>(3936u, u_input.b, 25950u), false)), true, Struct_3(Struct_2(Struct_1(0i, vec2<u32>(24354u, u_input.d.x), u_input.a, vec3<i32>(-2147483647i, -1i, 26827i)), vec3<u32>(u_input.b, u_input.d.x, u_input.b))), 16225i, Struct_3(Struct_2(Struct_1(u_input.c.x, u_input.d, 37980u, u_input.c), vec3<u32>(u_input.a, u_input.b, 31415u)))), Struct_1(u_input.c.x, _wgslsmith_mod_vec2_u32(reverseBits(u_input.d), u_input.d), ~countOneBits(1u), countOneBits(_wgslsmith_add_vec3_i32(u_input.c, u_input.c))));
    let var_1 = Struct_2(Struct_1(-countOneBits(-18264i & u_input.c.x), max(u_input.d, select(u_input.d, u_input.d, vec2<bool>(true, true))) << (~abs(vec2<u32>(17492u, 22211u)) % vec2<u32>(32u)), u_input.d.x, vec3<i32>(~func_4(vec3<i32>(-31225i, -46389i, -2147483647i), Struct_5(Struct_2(Struct_1(u_input.c.x, u_input.d, 6723u, vec3<i32>(u_input.c.x, -1i, u_input.c.x)), vec3<u32>(4294967295u, u_input.b, 51343u)), true, Struct_3(Struct_2(Struct_1(2147483647i, vec2<u32>(4294967295u, 1u), u_input.d.x, u_input.c), vec3<u32>(38881u, 4294967295u, u_input.b))), -105420i, Struct_3(Struct_2(Struct_1(var_0.x, u_input.d, u_input.d.x, vec3<i32>(28672i, -25477i, -1i)), vec3<u32>(u_input.b, u_input.d.x, u_input.b)))), Struct_1(1i, u_input.d, 17597u, vec3<i32>(34818i, 1i, u_input.c.x))).x, select(u_input.c.x, -56313i, false) | ~var_0.x, 1i)), ~vec3<u32>(~u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 1u, u_input.a, u_input.d.x), vec4<u32>(74387u, u_input.a, 0u, 4294967295u)) ^ u_input.b, firstLeadingBit(u_input.b)));
    var var_2 = all(func_3(abs(~vec4<u32>(4294967295u, u_input.b, u_input.b, 1u)) | firstTrailingBit(vec4<u32>(var_1.a.c, 4294967295u, 0u, 129007u)), ~vec4<u32>(u_input.b, var_1.b.x, reverseBits(u_input.b), u_input.b), var_1.a, Struct_2(var_1.a, vec3<u32>(var_1.a.b.x, _wgslsmith_mult_u32(25013u, 44756u), u_input.b))).ywx);
    let var_3 = select(_wgslsmith_mod_i32(max(i32(-1i) * -36708i, var_1.a.d.x), -(_wgslsmith_dot_vec3_i32(var_1.a.d, var_1.a.d) & 1i)), var_1.a.a, true);
    let var_4 = Struct_3(Struct_2(Struct_1(var_0.x, u_input.d, reverseBits(59269u) << (_wgslsmith_div_u32(var_1.b.x, 7041u) % 32u), vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(6597i, var_1.a.d.x, -959i)), _wgslsmith_mod_i32(-2147483647i, u_input.c.x), var_3)), select(var_1.b, ~vec3<u32>(var_1.b.x, 58232u, u_input.d.x) | ~var_1.b, true)));
    return (all(func_3(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, var_4.a.a.b.x, var_1.a.c, 0u), vec4<u32>(805u, 112013u, var_4.a.b.x, 66193u)), vec4<u32>(var_4.a.a.c, 1u, 0u, u_input.a), Struct_1(-2147483647i, u_input.d, 0u, u_input.c), Struct_2(Struct_1(var_4.a.a.d.x, vec2<u32>(var_1.a.c, var_4.a.b.x), var_1.a.c, vec3<i32>(var_3, var_4.a.a.a, var_1.a.a)), var_4.a.b)).zz) || any(vec2<bool>(true, true))) || any(vec2<bool>(true, true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a;
    global0 = 0u;
    var var_0 = !func_1();
    var var_1 = !(u_input.c.x <= u_input.c.x);
    global0 = u_input.d.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-911f + _wgslsmith_f_op_f32(-535f - 1103f)), _wgslsmith_f_op_f32(-3147f - -470f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-399f, -483f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1001f, 1673f) + vec2<f32>(2404f, 514f)), vec2<f32>(-1381f, 1639f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1508f, 200f) * vec2<f32>(1198f, -346f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-686f, -818f)))))), !select(!select(vec2<bool>(true, false), vec2<bool>(false, true), true), select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), func_3(vec4<u32>(u_input.d.x, u_input.d.x, 0u, u_input.a), vec4<u32>(12947u, 0u, 17208u, 4294967295u), Struct_1(28682i, u_input.d, 4294967295u, vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), Struct_2(Struct_1(-36153i, u_input.d, u_input.d.x, vec3<i32>(u_input.c.x, -29415i, u_input.c.x)), vec3<u32>(u_input.b, 0u, u_input.d.x))).xx, vec2<bool>(true, true)), vec2<bool>(true, any(vec3<bool>(false, true, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_div_f32(-272f, 803f), var_2.x, 1027f), u_input.c.yy);
}

