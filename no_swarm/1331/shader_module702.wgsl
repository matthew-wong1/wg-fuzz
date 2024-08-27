struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: f32,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 47985u;

var<private> global1: array<vec4<u32>, 18> = array<vec4<u32>, 18>(vec4<u32>(1u, 35244u, 38627u, 64847u), vec4<u32>(59171u, 17560u, 6357u, 1u), vec4<u32>(1u, 0u, 1u, 0u), vec4<u32>(16789u, 21352u, 78473u, 1u), vec4<u32>(0u, 1u, 0u, 0u), vec4<u32>(57684u, 4294967295u, 0u, 18518u), vec4<u32>(46728u, 0u, 1u, 1u), vec4<u32>(14825u, 4294967295u, 22772u, 7539u), vec4<u32>(2273u, 19465u, 1u, 4294967295u), vec4<u32>(23349u, 21539u, 1u, 27666u), vec4<u32>(74275u, 1u, 82635u, 0u), vec4<u32>(1u, 4294967295u, 0u, 6196u), vec4<u32>(0u, 4294967295u, 4294967295u, 1u), vec4<u32>(2741u, 8529u, 5326u, 1u), vec4<u32>(1u, 0u, 25999u, 55349u), vec4<u32>(34352u, 1u, 4294967295u, 1u), vec4<u32>(1u, 2667u, 17244u, 26767u), vec4<u32>(12599u, 4294967295u, 39291u, 4294967295u));

var<private> global2: Struct_1 = Struct_1(true, vec2<u32>(3303u, 42898u), 509f, 24922u, vec3<i32>(-1i, 2147483647i, -34420i));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> i32 {
    global1 = array<vec4<u32>, 18>();
    var var_0 = Struct_2(firstLeadingBit(abs(~arg_0.d)), u_input.b, arg_0, true);
    var var_1 = -arg_0.e | global2.e;
    global0 = global2.b.x;
    var var_2 = false | !(!(!global2.a || var_0.c.a));
    return -20429i;
}

fn func_2(arg_0: i32) -> Struct_1 {
    global2 = Struct_1(global2.a & (any(select(vec3<bool>(global2.a, global2.a, global2.a), vec3<bool>(global2.a, true, global2.a), false)) || true), vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(4198u, u_input.b), _wgslsmith_dot_vec3_u32(vec3<u32>(global2.d, 1u, u_input.b), vec3<u32>(133325u, 17195u, 4294967295u))), ~9923u) >> (reverseBits(vec2<u32>(~0u, ~global2.b.x)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c + -1000f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1069f)))) * _wgslsmith_f_op_f32(global2.c * 1000f)), global2.b.x, -vec3<i32>(func_3(Struct_1(true, vec2<u32>(global2.b.x, 47681u), 1007f, 0u, global2.e)), -arg_0, u_input.c));
    global1 = array<vec4<u32>, 18>();
    let var_0 = _wgslsmith_sub_i32(-26978i, u_input.c);
    let var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(-19908i, ~_wgslsmith_mult_i32(func_3(Struct_1(true, global2.b, -631f, u_input.b, global2.e)), select(arg_0, u_input.d, true)), i32(-1i) * -3614i, -global2.e.x), ~countOneBits(firstTrailingBit(reverseBits(vec4<i32>(-62582i, global2.e.x, 1i, -21031i)))));
    let var_2 = (~_wgslsmith_add_vec2_u32(global2.b ^ vec2<u32>(101320u, global2.d), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.e, global2.b.x), vec2<u32>(u_input.b, 39465u))) ^ ~(~(global2.b << (global2.b % vec2<u32>(32u))))) << (global2.b % vec2<u32>(32u));
    return Struct_1(true, max(~global2.b, ~(~(~global2.b))), 306f, max(0u, ~min(15411u << (u_input.e % 32u), 26765u)), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(global2.e.zy, vec2<i32>(0i, u_input.c)), _wgslsmith_add_i32(0i, -10447i)) >> (var_2.x % 32u), ~var_1.x, ~global2.e.x));
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> vec2<u32> {
    global1 = array<vec4<u32>, 18>();
    let var_0 = Struct_2(~reverseBits(1245u), ~89978u, func_2(-(abs(global2.e.x) >> (u_input.e % 32u))), (global2.e.x | -(global2.e.x >> (7268u % 32u))) >= _wgslsmith_dot_vec3_i32(global2.e, _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(global2.e, vec3<i32>(arg_0.c.e.x, u_input.a.x, 1i), global2.e), -global2.e)));
    global1 = array<vec4<u32>, 18>();
    global2 = Struct_1(global2.a, var_0.c.b, _wgslsmith_f_op_f32(global2.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-358f - 157f))), select(countOneBits(~u_input.e), ~_wgslsmith_mult_u32(u_input.e, 4294967295u), !select(!var_0.d, false, !arg_0.d)), vec3<i32>(_wgslsmith_clamp_i32(func_2(21946i).e.x, abs(-2147483647i), reverseBits(24754i)) | 2147483647i, -arg_0.c.e.x, -1i));
    var var_1 = false;
    return arg_0.c.b;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(true, ~(_wgslsmith_sub_vec2_u32(func_1(Struct_2(38078u, 92702u, Struct_1(false, vec2<u32>(global2.d, global2.b.x), global2.c, global2.d, global2.e), false), 59110u), vec2<u32>(u_input.e, u_input.b)) >> ((vec2<u32>(global2.b.x, u_input.e) ^ global2.b) % vec2<u32>(32u))), global2.c, global2.d >> ((0u << (global2.b.x % 32u)) % 32u), _wgslsmith_clamp_vec3_i32(global2.e ^ global2.e, min(abs(global2.e), -vec3<i32>(-1i, u_input.a.x, u_input.a.x) & -vec3<i32>(u_input.a.x, -4725i, -4261i)), vec3<i32>(-11279i, global2.e.x << (global2.b.x % 32u), u_input.a.x)));
    var var_0 = global2.a;
    let var_1 = ~func_3(Struct_1(global2.a, max(vec2<u32>(4294967295u, u_input.e), global2.b), _wgslsmith_f_op_f32(-2555f * global2.c), 0u | global2.b.x, reverseBits(vec3<i32>(global2.e.x, u_input.a.x, 21327i)))) | _wgslsmith_mod_i32(-_wgslsmith_add_i32(-2147483647i, select(-28118i, global2.e.x, global2.a)), (u_input.c & u_input.c) ^ 0i);
    let var_2 = !(!global2.a);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(round(1684f)), _wgslsmith_div_f32(global2.c, global2.c));
    let var_4 = Struct_1(global2.a, vec2<u32>(_wgslsmith_add_u32(~firstTrailingBit(4050u), max(~u_input.b, global2.b.x)), ~(~max(global2.b.x, u_input.e))), 1000f, global2.d, _wgslsmith_mult_vec3_i32(-vec3<i32>(i32(-1i) * -2147483647i, u_input.c, global2.e.x), abs(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1, -60398i, 28874i), vec3<i32>(var_1, u_input.a.x, -20752i))) >> (vec3<u32>(~4947u, _wgslsmith_dot_vec2_u32(global2.b, global2.b), _wgslsmith_dot_vec3_u32(vec3<u32>(global2.d, u_input.b, 31359u), vec3<u32>(global2.b.x, 0u, 1u))) % vec3<u32>(32u))));
    var var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1648f)), -270f, var_3.x, -499f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-global2.c), _wgslsmith_f_op_f32(-483f * 772f), _wgslsmith_f_op_f32(sign(var_3.x)), _wgslsmith_f_op_f32(-global2.c)), vec4<f32>(_wgslsmith_f_op_f32(abs(global2.c)), _wgslsmith_f_op_f32(-var_4.c), _wgslsmith_f_op_f32(215f * 143f), var_4.c), 214f < _wgslsmith_f_op_f32(round(-835f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-936f - 1486f), global2.c, 127f, _wgslsmith_f_op_f32(-var_3.x)))));
    var var_6 = func_2(~var_4.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_sub_u32(~countOneBits(135u), ~firstTrailingBit(57217u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1427f * var_4.c), func_2(var_4.e.x).c), 1000f, var_5.x, _wgslsmith_f_op_f32(-var_6.c))));
}

