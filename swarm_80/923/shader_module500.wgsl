struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: u32,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<f32>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: i32 = 10532i;

var<private> global2: i32 = 1i;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_3, arg_1: f32) -> vec2<i32> {
    global1 = -(-(u_input.a.x | (arg_0.e.e.x & -71915i)) ^ 24478i);
    let var_0 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.d, ~_wgslsmith_mult_u32(arg_0.e.c, 1u)), vec2<u32>(arg_0.b.a.c << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 83198u), vec2<u32>(arg_0.a.c, 4294967295u)) % 32u), 4294967295u));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(arg_0.c * arg_0.b.a.a), !(true || all(vec3<bool>(arg_0.a.b, arg_0.e.b, arg_0.e.b))), var_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.x, -743f)))), _wgslsmith_add_vec4_i32(arg_0.e.e, -(arg_0.b.a.e & arg_0.a.e))), -u_input.a.x);
    var var_2 = select(_wgslsmith_sub_vec4_u32(vec4<u32>(firstTrailingBit(var_0.x), abs(var_0.x), ~1u, var_0.x | var_1.a.c), ~vec4<u32>(arg_0.b.a.c, var_1.a.c, arg_0.a.c, arg_0.b.a.c) >> (vec4<u32>(arg_0.b.a.c, var_0.x, var_0.x, var_0.x) % vec4<u32>(32u))) & (~vec4<u32>(var_1.a.c, 1227u, var_1.a.c, var_1.a.c) << (~(~vec4<u32>(var_0.x, var_0.x, 1u, 48989u)) % vec4<u32>(32u))), vec4<u32>(select(31417u, 1u, true), var_0.x, ~1u, 1u) & _wgslsmith_mult_vec4_u32(abs(vec4<u32>(54329u, var_0.x, var_0.x, 56713u)), vec4<u32>(45203u, ~var_0.x, _wgslsmith_clamp_u32(0u, 1u, arg_0.e.c), ~42599u)), (true | all(vec2<bool>(arg_0.a.b, arg_0.a.b))) == all(vec4<bool>(true | var_1.a.b, true, false, all(vec3<bool>(var_1.a.b, arg_0.a.b, arg_0.b.a.b)))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.d.x), global0.x);
    return u_input.a.zx;
}

fn func_2() -> vec2<bool> {
    global2 = _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(_wgslsmith_add_i32(-u_input.a.x, -1i), u_input.a.x, 0i) | firstLeadingBit(vec3<i32>(1i, 1i, 1i)));
    var var_0 = ~5125u;
    let var_1 = -44565i;
    var var_2 = abs(firstTrailingBit(func_3(Struct_3(Struct_1(vec4<f32>(-415f, 353f, global0.x, 754f), true, 1u, vec2<f32>(global0.x, -895f), vec4<i32>(-2147483647i, 2147483647i, -28422i, var_1)), Struct_2(Struct_1(vec4<f32>(-1000f, 365f, global0.x, -834f), false, 2821u, vec2<f32>(global0.x, global0.x), vec4<i32>(u_input.a.x, 0i, var_1, var_1)), -2147483647i), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1479f, global0.x, global0.x, global0.x))), 1u, Struct_1(vec4<f32>(global0.x, global0.x, global0.x, 2353f), false, 80999u, vec2<f32>(1144f, -1355f), vec4<i32>(17351i, var_1, var_1, -20730i))), global0.x)));
    global1 = ~var_1;
    return vec2<bool>(true, true);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: u32, arg_3: bool) -> f32 {
    let var_0 = arg_1.a;
    let var_1 = false;
    let var_2 = arg_1;
    var var_3 = select(~(~min(vec2<u32>(82515u, 2935u), vec2<u32>(4294967295u, 0u)) & min(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.c, 73439u), vec2<u32>(var_0.c, 0u)), ~vec2<u32>(arg_1.a.c, 0u))), _wgslsmith_div_vec2_u32(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(54170u, arg_1.a.c), vec2<u32>(3974u, 4294967295u))), abs(~vec2<u32>(arg_1.a.c, arg_1.a.c)) ^ ((vec2<u32>(4294967295u, arg_2) ^ vec2<u32>(27847u, var_2.a.c)) >> (abs(vec2<u32>(93393u, 1u)) % vec2<u32>(32u)))), func_2());
    let var_4 = var_2;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.d.x, -2302f, true)), _wgslsmith_f_op_f32(var_2.a.d.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1256f, -2426f)))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: f32, arg_3: u32) -> f32 {
    global1 = 3836i;
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-476f - _wgslsmith_f_op_f32(exp2(arg_1.x))))), -679f, -1489f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(func_2(), Struct_2(Struct_1(vec4<f32>(-959f, arg_2, global0.x, global0.x), true, arg_3, vec2<f32>(-703f, -488f), vec4<i32>(2147483647i, u_input.a.x, 20255i, arg_0.x)), u_input.a.x), arg_3, true))))), true, reverseBits(~(~(~0u))), arg_1, vec4<i32>(u_input.a.x, arg_0.x, u_input.a.x, arg_0.x));
    var var_1 = 1u;
    let var_2 = _wgslsmith_dot_vec3_u32(reverseBits(_wgslsmith_div_vec3_u32(~max(vec3<u32>(var_0.c, arg_3, 0u), vec3<u32>(34933u, var_0.c, var_0.c)), ~vec3<u32>(arg_3, arg_3, arg_3) ^ ~vec3<u32>(6988u, var_0.c, 0u))), max(vec3<u32>(var_0.c, 26935u, ~min(1u, var_0.c)), vec3<u32>(_wgslsmith_div_u32(4294967295u, ~1u), ~arg_3, arg_3)));
    let var_3 = true;
    return _wgslsmith_f_op_f32(arg_2 * var_0.a.x);
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    let var_0 = arg_0;
    let var_1 = vec4<i32>((min(_wgslsmith_sub_i32(u_input.a.x, var_0.a.e.x), _wgslsmith_dot_vec3_i32(var_0.a.e.yyz, vec3<i32>(-36407i, 1i, arg_0.a.e.x))) << (_wgslsmith_div_u32(~arg_0.a.c, _wgslsmith_sub_u32(var_0.a.c, 5823u)) % 32u)) | 77264i, -(36647i << (_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.a.c, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.a.c, var_0.a.c), vec2<u32>(var_0.a.c, 69341u))) % 32u)), var_0.a.e.x >> (~(~var_0.a.c) % 32u), -min(-_wgslsmith_div_i32(2147483647i, var_0.b), min(arg_0.a.e.x, ~arg_0.b)));
    var var_2 = Struct_3(Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(arg_0.a.d.x - global0.x)), -1711f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(572f, -1645f, true)) * arg_0.a.d.x), -102f), var_0.a.b, arg_0.a.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.a.x, global0.x))), arg_0.a.e >> (vec4<u32>(countOneBits(arg_0.a.c), _wgslsmith_div_u32(arg_0.a.c, arg_0.a.c), ~var_0.a.c, var_0.a.c) % vec4<u32>(32u))), arg_0, arg_0.a.a, 4294967295u, var_0.a);
    var var_3 = _wgslsmith_dot_vec4_i32(-vec4<i32>(firstTrailingBit(~arg_0.b), u_input.a.x, _wgslsmith_div_i32(16175i, abs(var_2.a.e.x)), 46112i), vec4<i32>(_wgslsmith_dot_vec4_i32(arg_0.a.e, ~vec4<i32>(var_2.e.e.x, var_2.b.b, -1i, -2147483647i)), u_input.a.x, -19628i, -2147483647i));
    global2 = 52431i;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 17229i;
    global1 = 48749i;
    let var_0 = func_5(Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -732f), _wgslsmith_f_op_f32(func_1(u_input.a, vec2<f32>(637f, global0.x), global0.x, 4294967295u)), _wgslsmith_f_op_f32(func_4(vec2<bool>(true, false), Struct_2(Struct_1(vec4<f32>(global0.x, -521f, 267f, global0.x), false, 1u, vec2<f32>(2196f, 769f), vec4<i32>(-30754i, u_input.a.x, 2147483647i, u_input.a.x)), u_input.a.x), 2067u, true)), _wgslsmith_f_op_f32(f32(-1f) * -609f)), any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))), ~(~51002u), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1669f, 983f), vec2<f32>(global0.x, global0.x))))), reverseBits(vec4<i32>(u_input.a.x, 33608i, u_input.a.x, -29483i))), 69285i));
    let var_1 = _wgslsmith_f_op_f32(func_1(min(select(vec3<i32>(~(-1181i), -11573i, u_input.a.x), select(min(vec3<i32>(u_input.a.x, u_input.a.x, 15099i), vec3<i32>(27600i, var_0.b, 1i)), func_5(Struct_2(Struct_1(var_0.a.a, var_0.a.b, 108301u, vec2<f32>(-722f, -508f), vec4<i32>(var_0.a.e.x, u_input.a.x, -2147483647i, 30407i)), -31291i)).a.e.yyw, select(vec3<bool>(true, var_0.a.b, var_0.a.b), vec3<bool>(var_0.a.b, false, var_0.a.b), vec3<bool>(true, true, var_0.a.b))), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.c, 4294967295u), vec2<u32>(32783u, 55070u)) != ~var_0.a.c), select(vec3<i32>(var_0.a.e.x, _wgslsmith_div_i32(u_input.a.x, -19692i), u_input.a.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, 1i, -1i), _wgslsmith_add_vec3_i32(vec3<i32>(42199i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, var_0.a.e.x, 1i)), func_5(var_0).a.e.xzy), select(select(vec3<bool>(true, true, var_0.a.b), vec3<bool>(false, var_0.a.b, true), vec3<bool>(var_0.a.b, var_0.a.b, var_0.a.b)), !vec3<bool>(var_0.a.b, var_0.a.b, var_0.a.b), select(vec3<bool>(var_0.a.b, true, var_0.a.b), vec3<bool>(var_0.a.b, var_0.a.b, true), var_0.a.b)))), vec2<f32>(-344f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a.x) * global0.x) + _wgslsmith_f_op_f32(var_0.a.a.x + global0.x))), _wgslsmith_f_op_f32(105f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.a.x - -730f), global0.x)), abs(select(var_0.a.c, _wgslsmith_mult_u32(~var_0.a.c, _wgslsmith_mult_u32(var_0.a.c, var_0.a.c)), var_0.a.b))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -710f)), var_0.a.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, 393f) - var_0.a.a.yy), var_0.a.d))));
    let var_2 = Struct_3(var_0.a, var_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.a.x, _wgslsmith_f_op_f32(func_4(func_2(), var_0, ~var_0.a.c, true)), func_5(Struct_2(Struct_1(var_0.a.a, var_0.a.b, var_0.a.c, vec2<f32>(-519f, 837f), vec4<i32>(var_0.a.e.x, u_input.a.x, var_0.a.e.x, u_input.a.x)), var_0.a.e.x)).a.a.x, var_1) - vec4<f32>(var_1, -483f, _wgslsmith_f_op_f32(step(171f, var_1)), var_1)), 1386u, func_5(Struct_2(var_0.a, var_0.a.e.x)).a);
    let var_3 = u_input.a.x;
    var var_4 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_0.a.d)));
    global0 = vec2<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(vec2<bool>(var_0.a.b, var_0.a.b), var_0, var_0.a.c, var_2.e.b)), -189f))), _wgslsmith_f_op_f32(-var_2.b.a.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(4294967295u), select(_wgslsmith_sub_i32(~var_2.a.e.x, var_3), 0i, all(select(vec2<bool>(var_2.a.b, var_2.a.b), vec2<bool>(var_0.a.b, var_0.a.b), vec2<bool>(false, var_0.a.b)))) & ~_wgslsmith_div_i32(2147483647i, i32(-1i) * -16883i));
}

