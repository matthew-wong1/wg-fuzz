struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec4<u32>, 26> = array<vec4<u32>, 26>(vec4<u32>(4294967295u, 22452u, 1u, 0u), vec4<u32>(66160u, 29241u, 1u, 79630u), vec4<u32>(1u, 7564u, 1u, 37137u), vec4<u32>(34703u, 1u, 21970u, 1u), vec4<u32>(0u, 4294967295u, 4294967295u, 0u), vec4<u32>(1u, 4294967295u, 56876u, 55697u), vec4<u32>(4294967295u, 0u, 0u, 0u), vec4<u32>(1449u, 65669u, 86081u, 44394u), vec4<u32>(17246u, 14045u, 1u, 4294967295u), vec4<u32>(78065u, 4294967295u, 0u, 4294967295u), vec4<u32>(1u, 10597u, 25674u, 0u), vec4<u32>(1u, 46107u, 4294967295u, 2413u), vec4<u32>(4294967295u, 0u, 59764u, 0u), vec4<u32>(48673u, 4294967295u, 0u, 75066u), vec4<u32>(4294967295u, 7902u, 1u, 37073u), vec4<u32>(46071u, 52179u, 0u, 4294967295u), vec4<u32>(73520u, 456u, 1u, 0u), vec4<u32>(17251u, 0u, 47447u, 35975u), vec4<u32>(55432u, 1u, 27610u, 4294967295u), vec4<u32>(0u, 4294967295u, 0u, 33567u), vec4<u32>(46686u, 4294967295u, 1u, 4294967295u), vec4<u32>(3475u, 70694u, 1u, 41147u), vec4<u32>(39821u, 1u, 1u, 4294967295u), vec4<u32>(11075u, 2610u, 36055u, 20372u), vec4<u32>(1u, 40439u, 4294967295u, 68811u), vec4<u32>(53810u, 0u, 33770u, 29158u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> f32 {
    let var_0 = -451f;
    return -291f;
}

fn func_2() -> Struct_1 {
    let var_0 = 890f != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1340f - _wgslsmith_div_f32(-873f, _wgslsmith_f_op_f32(func_3(0u, Struct_1(u_input.c.x, -764f, u_input.c, 23965u), 2832f, Struct_1(80537u, 3245f, u_input.c, u_input.c.x)))))));
    global0 = var_0;
    var var_1 = var_0;
    var_1 = var_0;
    global1 = array<vec4<u32>, 26>();
    return Struct_1(_wgslsmith_mod_u32(u_input.c.x, u_input.c.x), _wgslsmith_f_op_f32(-329f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1391f, 1350f)))), vec2<u32>(~u_input.c.x, 4294967295u), 1u << (_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(65475u, 44277u, u_input.c.x, u_input.c.x), global1[_wgslsmith_index_u32(u_input.c.x, 26u)] >> (vec4<u32>(20959u, 0u, u_input.c.x, 1u) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_add_u32(u_input.c.x, u_input.c.x), u_input.c.x, u_input.c.x | 56789u, 4294967295u)) % 32u));
}

fn func_4(arg_0: Struct_1) -> u32 {
    global0 = (_wgslsmith_dot_vec3_i32(u_input.a, u_input.a) | firstTrailingBit(-u_input.a.x | (-2147483647i ^ u_input.a.x))) > 0i;
    global1 = array<vec4<u32>, 26>();
    global1 = array<vec4<u32>, 26>();
    let var_0 = arg_0;
    let var_1 = min(-_wgslsmith_dot_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, u_input.a.x), u_input.a.yy), -u_input.a.zx & _wgslsmith_div_vec2_i32(u_input.a.zz, u_input.a.xy)), 1i);
    return 4294967295u;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1((func_4(func_2()) | _wgslsmith_add_u32(19909u, min(2414u, 4294967295u))) ^ _wgslsmith_dot_vec2_u32(u_input.c, u_input.c), _wgslsmith_div_f32(-1618f, -378f), vec2<u32>(u_input.c.x, _wgslsmith_clamp_u32(u_input.c.x, 4294967295u, 29277u)), 0u);
    var var_1 = vec2<bool>(true, false);
    var var_2 = select(vec2<bool>(false, true), select(select(select(!vec2<bool>(false, var_1.x), select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, true), var_1.x), vec2<bool>(var_1.x, var_1.x)), !select(vec2<bool>(true, true), vec2<bool>(var_1.x, var_1.x), var_1.x), all(select(vec4<bool>(true, var_1.x, false, true), vec4<bool>(true, true, true, true), vec4<bool>(var_1.x, true, true, var_1.x)))), vec2<bool>(u_input.c.x >= ~var_0.d, select(var_1.x || var_1.x, all(vec3<bool>(true, var_1.x, var_1.x)), u_input.d == u_input.a.x)), vec2<bool>(true, select(any(vec4<bool>(var_1.x, var_1.x, true, true)), any(vec3<bool>(false, var_1.x, false)), !var_1.x))), (u_input.c.x << ((u_input.c.x >> (~4294967295u % 32u)) % 32u)) == var_0.a);
    var var_3 = var_0;
    var var_4 = var_0;
    return Struct_1(4294967295u << (_wgslsmith_mod_u32(_wgslsmith_clamp_u32(~var_0.c.x, func_4(var_0), u_input.c.x), ~select(var_3.d, u_input.c.x, false)) % 32u), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-434f + var_3.b)), vec2<u32>(4294967295u, var_3.a), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_4.a, u_input.c.x), abs(var_4.c)), 4294967295u) | _wgslsmith_dot_vec2_u32(u_input.c, max(abs(var_0.c), vec2<u32>(0u, var_3.a) >> (vec2<u32>(var_3.a, 0u) % vec2<u32>(32u)))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: f32) -> u32 {
    let var_0 = arg_3;
    global1 = array<vec4<u32>, 26>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, _wgslsmith_f_op_f32(var_0 - var_0), _wgslsmith_f_op_f32(f32(-1f) * -999f), arg_3)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.b * arg_0.b), _wgslsmith_f_op_f32(-541f * arg_0.b)), _wgslsmith_f_op_f32(arg_2.b * -974f))));
    var var_2 = countOneBits(countOneBits(-(~(~2147483647i))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2194f, _wgslsmith_f_op_f32(max(-2475f, arg_3)))) - var_1.yz));
    return _wgslsmith_add_u32(func_1().c.x ^ arg_2.d, 4294967295u) & _wgslsmith_sub_u32(u_input.c.x, ~arg_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(42410u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -738f) + _wgslsmith_div_f32(-773f, _wgslsmith_f_op_f32(sign(1825f)))), _wgslsmith_div_f32(-830f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(717f, -1504f)), _wgslsmith_f_op_f32(round(-1562f)), true)))), firstLeadingBit(u_input.c), ~(_wgslsmith_mod_u32(14231u, u_input.c.x) & func_5(Struct_1(u_input.c.x, 1588f, vec2<u32>(16678u, u_input.c.x), u_input.c.x), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 1i, u_input.a.x, u_input.b), vec4<i32>(-84204i, 0i, u_input.b, 17011i)), func_1(), _wgslsmith_f_op_f32(1000f * 736f))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, var_0.b) + vec2<f32>(var_0.b, var_0.b)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_0.b))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(535f, -600f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, -2321f))) - vec2<f32>(_wgslsmith_f_op_f32(-var_0.b), func_1().b)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.b), var_0.b) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, -1000f) * vec2<f32>(var_0.b, 372f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, -1057f))))));
    let var_2 = _wgslsmith_clamp_vec2_u32(firstTrailingBit(~func_2().c), _wgslsmith_div_vec2_u32(vec2<u32>(1u, func_2().d), ~vec2<u32>(var_0.d, func_2().d)), _wgslsmith_div_vec2_u32(var_0.c, select(abs(var_0.c), func_1().c, all(vec3<bool>(true, false, false)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(645f, 1512f), vec2<f32>(var_1.x, 1103f)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-309f, -939f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -1036f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(347f, var_0.b)))))))));
    let var_4 = u_input.a.xy;
    global1 = array<vec4<u32>, 26>();
    var var_5 = _wgslsmith_add_vec4_i32(countOneBits(~(-_wgslsmith_add_vec4_i32(vec4<i32>(var_4.x, var_4.x, -2147483647i, u_input.b), vec4<i32>(0i, var_4.x, -12769i, 1i)))), vec4<i32>(-firstTrailingBit(var_4.x), var_4.x, _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a.x, 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-13182i, u_input.d, -1i), u_input.a ^ vec3<i32>(var_4.x, u_input.a.x, u_input.a.x))), _wgslsmith_add_i32(_wgslsmith_div_i32(var_4.x, var_4.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-61288i, u_input.d, u_input.a.x, u_input.b) ^ vec4<i32>(-1i, 0i, var_4.x, var_4.x), vec4<i32>(u_input.a.x, -1168i, 30209i, 0i)))));
    var var_6 = func_1();
    var var_7 = ~(~select(~vec3<u32>(4294967295u, 11183u, 74100u) ^ firstTrailingBit(vec3<u32>(var_2.x, 24257u, var_0.c.x)), _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_6.a, var_0.c.x, var_0.d), vec3<u32>(u_input.c.x, 0u, 0u), vec3<u32>(4294967295u, var_6.d, var_6.a)), _wgslsmith_add_vec3_u32(vec3<u32>(35910u, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, 19331u, 1751u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, 1u, 56178u), vec3<u32>(4294967295u, var_6.d, var_0.c.x))), vec3<bool>(true, any(vec4<bool>(true, true, false, false)), false)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~func_1().a, func_4(func_1())));
}

