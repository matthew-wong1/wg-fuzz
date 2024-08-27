struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec2<u32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec3<u32>, arg_3: vec4<bool>) -> vec4<u32> {
    global0 = arg_0.a;
    var var_0 = arg_0.b.c;
    var var_1 = (vec4<u32>(reverseBits(~1u), ~reverseBits(4294967295u), firstLeadingBit(_wgslsmith_mult_u32(1u, arg_2.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.b, u_input.b), u_input.b)) & firstTrailingBit(abs(~vec4<u32>(9487u, arg_2.x, arg_0.b.c, 4294967295u)))) >> (_wgslsmith_mult_vec4_u32(~firstTrailingBit(min(u_input.b, vec4<u32>(global0.c, 68854u, 61447u, 4294967295u))), ~(~(~vec4<u32>(4294967295u, 4294967295u, arg_0.d.x, 1u)))) % vec4<u32>(32u));
    let var_2 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(abs(~global0.a.x), global0.a.x), ~min(firstLeadingBit(u_input.c), vec2<i32>(u_input.c.x, arg_0.e))), _wgslsmith_sub_i32(_wgslsmith_mod_i32(~(-u_input.d.x), 14579i), arg_0.b.a.x << (global0.c % 32u)), 1i, i32(-1i) * -1094i);
    var_0 = arg_0.d.x;
    return vec4<u32>((~arg_2.x ^ arg_0.a.c) | _wgslsmith_mult_u32(arg_2.x, 0u), 13960u, _wgslsmith_mult_u32(~var_1.x, abs(0u)), 1u) ^ (~vec4<u32>(firstLeadingBit(global0.c), ~0u, min(4280u, arg_0.b.c), _wgslsmith_div_u32(var_1.x, u_input.a.x)) >> (u_input.b % vec4<u32>(32u)));
}

fn func_2() -> bool {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(global0.b)), -1000f, _wgslsmith_f_op_f32(select(global0.b, _wgslsmith_f_op_f32(f32(-1f) * -432f), !(firstLeadingBit(u_input.a.x) > ~1u))));
    let var_1 = ~(~abs(func_3(Struct_2(Struct_1(u_input.c, -782f, global0.c), Struct_1(vec2<i32>(0i, global0.a.x), -670f, 36595u), false, u_input.b.wz, -2147483647i), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1440f, global0.b, var_0.x, global0.b) - vec4<f32>(-1000f, -1155f, -796f, -735f)), u_input.b.wyw, select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), false))));
    global0 = Struct_1(u_input.d, 895f, 20436u);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-893f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.b)))) + _wgslsmith_f_op_f32(max(663f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) * _wgslsmith_f_op_f32(trunc(1847f))))))));
    var var_3 = Struct_2(Struct_1(abs(~vec2<i32>(2147483647i, u_input.d.x) << (vec2<u32>(u_input.a.x, 4294967295u) % vec2<u32>(32u))), global0.b, u_input.a.x), Struct_1(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(58941i, 40871i, 2147483647i, u_input.c.x), vec4<i32>(0i, global0.a.x, u_input.c.x, -1i)), 13293i << (u_input.b.x % 32u)), -2147483647i), global0.b, select(~countOneBits(global0.c), firstTrailingBit(15689u), _wgslsmith_clamp_i32(-2147483647i, -1i, u_input.c.x) == ~u_input.d.x)), !(!select(true, true, true)) | any(vec3<bool>(true, all(vec2<bool>(false, true)), false)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.x, var_1.x) ^ firstTrailingBit(vec2<u32>(global0.c, u_input.b.x)), func_3(Struct_2(Struct_1(u_input.c, var_0.x, var_1.x), Struct_1(vec2<i32>(global0.a.x, -12716i), global0.b, global0.c), false, var_1.wx, u_input.d.x), vec4<f32>(var_0.x, var_0.x, -505f, -920f), u_input.b.yxy << (vec3<u32>(global0.c, 1u, global0.c) % vec3<u32>(32u)), vec4<bool>(false, false, false, false)).wz), ~(-(i32(-1i) * -2147483647i)) >> (var_1.x % 32u));
    return !(global0.b < _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_f32(min(679f, _wgslsmith_div_f32(var_0.x, var_0.x)))));
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = vec3<bool>(!(!(!func_2())), false, !(!all(vec3<bool>(true, true, true))));
    global0 = Struct_1(~abs(_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(-4728i, u_input.d.x)), firstTrailingBit(vec2<i32>(u_input.d.x, global0.a.x)), vec2<i32>(-2147483647i, -35094i))), _wgslsmith_f_op_f32(max(arg_0, 1399f)), _wgslsmith_mult_u32(~_wgslsmith_add_u32(_wgslsmith_div_u32(26279u, 23652u), ~global0.c), ~(~global0.c & ~39727u)));
    let var_1 = Struct_2(Struct_1(abs(u_input.d) & global0.a, _wgslsmith_f_op_f32(floor(arg_0)), _wgslsmith_div_u32(76885u, ~u_input.a.x)), Struct_1(vec2<i32>(~(~0i), -1i), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b - -678f)))), 0u), false, reverseBits(~u_input.a), 31387i);
    var var_2 = var_1.b;
    let var_3 = Struct_1(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, countOneBits(-2147483647i), global0.a.x, var_1.e ^ 1i), -(vec4<i32>(global0.a.x, u_input.d.x, -54575i, var_2.a.x) ^ vec4<i32>(-40950i, 2147483647i, var_2.a.x, var_2.a.x))), -2147483647i), _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(145f))), true)), ~4294967295u);
    return var_3.c;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<bool>) -> vec4<u32> {
    var var_0 = Struct_3(Struct_2(Struct_1((global0.a ^ vec2<i32>(22886i, u_input.d.x)) ^ vec2<i32>(u_input.c.x, u_input.d.x), global0.b, _wgslsmith_dot_vec4_u32(~vec4<u32>(global0.c, 1u, u_input.a.x, 1u), vec4<u32>(0u, arg_0.x, global0.c, u_input.b.x) >> (arg_0 % vec4<u32>(32u)))), Struct_1(global0.a, -1023f, ~(~u_input.b.x)), global0.c >= (684u ^ global0.c), countOneBits(vec2<u32>(_wgslsmith_mult_u32(5210u, 0u), ~0u)), _wgslsmith_dot_vec3_i32(min(vec3<i32>(u_input.c.x, u_input.c.x, u_input.d.x) | vec3<i32>(-27272i, global0.a.x, u_input.d.x), min(vec3<i32>(u_input.c.x, u_input.d.x, global0.a.x), vec3<i32>(-1i, u_input.d.x, global0.a.x))), _wgslsmith_mod_vec3_i32(vec3<i32>(-27659i, -1i, -2147483647i) >> (vec3<u32>(global0.c, 1u, u_input.a.x) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, 2147483647i, 35600i), vec3<i32>(global0.a.x, -1i, u_input.c.x))))), max(max(reverseBits(u_input.d.x), select(u_input.d.x, global0.a.x, any(arg_1.yz))), firstTrailingBit((i32(-1i) * -1885i) ^ min(u_input.c.x, u_input.d.x))), 4294967295u, arg_0.zzz, min(~u_input.b, ~(_wgslsmith_div_vec4_u32(arg_0, u_input.b) << (_wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(636u, 36719u, u_input.a.x, u_input.b.x)) % vec4<u32>(32u)))));
    let var_1 = u_input.d.x;
    global0 = Struct_1(-(~vec2<i32>(0i, var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2067f + var_0.a.b.b)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-103f)), -263f)) + 509f), 4294967295u);
    var_0 = Struct_3(var_0.a, _wgslsmith_mult_i32(firstLeadingBit(select(var_0.a.a.a.x, -12588i, global0.b >= global0.b)), firstTrailingBit(-2147483647i)), 36574u, arg_0.www, vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 10917u, var_0.e.x, 54252u) ^ vec4<u32>(u_input.a.x, 10215u, 1u, arg_0.x), vec4<u32>(global0.c, 48105u, 15952u, 76995u) ^ vec4<u32>(1u, 1u, 1u, global0.c)), select(global0.c, select(17109u, 1652u, true), true), u_input.a.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 49411u, 82930u), vec4<u32>(49503u, 0u, 21052u, global0.c))) << (_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(43782u, 4294967295u, arg_0.x, 0u), _wgslsmith_clamp_vec4_u32(var_0.e, vec4<u32>(53147u, global0.c, var_0.a.b.c, 46729u), var_0.e)), ~var_0.e) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -countOneBits(vec4<i32>(u_input.d.x, -2147483647i, u_input.c.x, -11051i)), max(-(~vec4<i32>(var_1, -25601i, u_input.d.x, -1i)), _wgslsmith_add_vec4_i32(vec4<i32>(-30966i, 0i, -8791i, -1i), vec4<i32>(6740i, -1i, 36702i, u_input.c.x)) ^ countOneBits(vec4<i32>(u_input.c.x, -4951i, var_0.b, 2147483647i)))) ^ (vec4<i32>(-1i, 9645i, 396i, firstLeadingBit(var_1) << (0u % 32u)) | select(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, var_1, 29308i, -2147483647i), vec4<i32>(u_input.d.x, var_0.a.e, -17455i, 11249i)) & vec4<i32>(14199i, -2147483647i, 1i, u_input.d.x), vec4<i32>(-1i, 2147483647i, -51853i, 1948i) ^ vec4<i32>(var_0.b, var_0.b, 0i, var_1), vec4<bool>(true, arg_1.x && var_0.a.c, func_2(), select(false, false, var_0.a.c))));
    return select(vec4<u32>(~(~(~arg_0.x)), ~(~43426u), reverseBits(u_input.b.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(global0.c, arg_0.x, u_input.a.x, 50230u), vec4<u32>(abs(u_input.b.x), abs(4294967295u), _wgslsmith_dot_vec4_u32(var_0.e, vec4<u32>(var_0.d.x, u_input.b.x, 36622u, 0u)), ~arg_0.x))), ~vec4<u32>(30687u, select(1u, reverseBits(var_0.d.x), arg_1.x), _wgslsmith_mod_u32(var_0.c, firstLeadingBit(global0.c)), _wgslsmith_div_u32(61534u, ~19700u)), (false | func_2()) == (false || !(true | var_0.a.c)));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = !select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(true, true)), (arg_0.x & arg_1.x) != 1u, false), false);
    return Struct_1(global0.a, _wgslsmith_div_f32(global0.b, global0.b), global0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(countOneBits(vec2<u32>(59735u, _wgslsmith_dot_vec3_u32(u_input.b.xwy, u_input.b.yzy) | 4294967295u)), select(func_4(vec4<u32>(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), ~u_input.a.x, func_1(global0.b), global0.c), vec4<bool>(global0.b != 601f, all(vec2<bool>(false, false)), any(vec4<bool>(true, false, true, false)), true)), u_input.b, false));
    global0 = Struct_1(u_input.c, _wgslsmith_f_op_f32(-global0.b), func_4(_wgslsmith_add_vec4_u32(u_input.b, firstLeadingBit(~u_input.b)), select(vec4<bool>(all(vec2<bool>(true, false)), true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))).x);
    global0 = func_5(u_input.a, ~u_input.b);
    global0 = Struct_1(global0.a, _wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(-global0.b)), 37967u);
    var var_0 = Struct_1(vec2<i32>(0i, 23949i), _wgslsmith_f_op_f32(max(508f, global0.b)), ~(0u << (~u_input.a.x % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, firstTrailingBit(global0.a >> (~min(vec2<u32>(var_0.c, global0.c), vec2<u32>(global0.c, var_0.c)) % vec2<u32>(32u))), 4294967295u >> (global0.c % 32u));
}

