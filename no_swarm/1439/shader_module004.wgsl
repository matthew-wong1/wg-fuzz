struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<bool>(true, true, true, true), false, Struct_1(vec3<bool>(true, false, true), vec4<i32>(-1i, -15004i, 14105i, 24846i), vec2<u32>(4294967295u, 1u)), vec3<f32>(-963f, 535f, 652f), Struct_1(vec3<bool>(true, false, false), vec4<i32>(9268i, 2147483647i, 45237i, -27159i), vec2<u32>(1u, 15614u)));

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 24>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: u32) -> u32 {
    let var_0 = Struct_4(vec4<i32>(1i, _wgslsmith_clamp_i32(-3071i, _wgslsmith_div_i32(-2147483647i, 2147483647i), _wgslsmith_mult_i32(u_input.a.x, 19062i)), countOneBits(2147483647i), 1i), Struct_1(vec3<bool>(false, any(!global1.a), !global1.a.x != global1.a.x), select(firstLeadingBit(vec4<i32>(-61604i, u_input.a.x, global1.b.x, -2147483647i)) >> (vec4<u32>(33924u, arg_2, 36890u, global0.e.c.x) % vec4<u32>(32u)), global1.b, global0.a), vec2<u32>(~(~77933u), countOneBits(~0u))), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(4294967295u, global1.c.x, global0.e.c.x, 37259u)), vec4<u32>(global1.c.x, select(0u, 0u, false), select(4294967295u, 41099u, true), 0u)), _wgslsmith_div_vec4_u32(~vec4<u32>(0u, 36435u, 0u, 8217u) << (abs(vec4<u32>(global0.e.c.x, global1.c.x, 55590u, 28422u)) % vec4<u32>(32u)), vec4<u32>(1u, ~0u, 14159u, ~1u))));
    let var_1 = !global0.a;
    let var_2 = firstLeadingBit(abs(global0.c.b.x));
    let var_3 = var_0;
    global2 = array<Struct_1, 24>();
    return 0u;
}

fn func_2() -> bool {
    var var_0 = global0.e.b.x & ~_wgslsmith_dot_vec3_i32(-global1.b.wxz, vec3<i32>(2147483647i, global0.e.b.x, global1.b.x ^ global1.b.x));
    var var_1 = Struct_4(vec4<i32>(_wgslsmith_mod_i32(-(global0.c.b.x ^ -8654i), -41017i & u_input.a.x), _wgslsmith_sub_i32(-2147483647i, 0i), -2147483647i ^ global0.c.b.x, 2147483647i), Struct_1(global1.a, _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, 0i), _wgslsmith_div_vec4_i32(global1.b, vec4<i32>(2147483647i, 2147483647i, 3815i, -1i))), _wgslsmith_add_vec4_i32(vec4<i32>(-15296i, global0.e.b.x, u_input.a.x, global0.e.b.x) >> (vec4<u32>(global1.c.x, global0.e.c.x, global0.e.c.x, 0u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, -1i, global1.b.x, u_input.a.x), vec4<i32>(-13095i, -77695i, global1.b.x, -2147483647i)))), vec2<u32>(4294967295u, func_3(_wgslsmith_div_f32(-330f, 1679f), _wgslsmith_f_op_f32(2188f + 241f), firstLeadingBit(global1.c.x)))), ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(global1.c.x, 0u) | 47463u, _wgslsmith_div_u32(global1.c.x, 0u)));
    let var_2 = Struct_4(_wgslsmith_mod_vec4_i32(var_1.a, select(_wgslsmith_add_vec4_i32(global1.b, ~global0.c.b), global1.b, select(global0.a, global0.a, true))), Struct_1(vec3<bool>(var_1.b.a.x, _wgslsmith_f_op_f32(-global0.d.x) != 352f, false), var_1.a, select(_wgslsmith_add_vec2_u32(vec2<u32>(72718u, global0.c.c.x), ~vec2<u32>(global1.c.x, global0.e.c.x)), ~var_1.b.c, true)), 1u);
    global0 = Struct_3(vec4<bool>(false, any(global0.a), any(var_2.b.a), var_2.b.a.x), !any(vec4<bool>(false, true | global1.a.x, all(vec3<bool>(false, true, false)), all(vec3<bool>(global1.a.x, false, global0.c.a.x)))), Struct_1(var_2.b.a, (var_2.a ^ ~vec4<i32>(var_2.b.b.x, 0i, u_input.a.x, global0.c.b.x)) | select(~vec4<i32>(1i, 0i, -1i, -15096i), select(vec4<i32>(25099i, var_2.b.b.x, -2147483647i, var_1.b.b.x), global1.b, var_1.b.a.x), global0.e.a.x), vec2<u32>(~12904u, (0u | global0.e.c.x) << ((global0.c.c.x & 12245u) % 32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(437f, 650f, global0.d.x)))) - global0.d), var_1.b);
    let var_3 = ~var_1.b.b.x > _wgslsmith_mult_i32(global1.b.x << (64787u % 32u), 53294i);
    return var_1.b.a.x | !(!(firstTrailingBit(var_2.c) <= 45405u));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(!vec3<bool>(false || global1.a.x, global0.a.x, func_2()), vec4<i32>(global0.e.b.x, abs(-(~global0.e.b.x)), 12033i, -53676i), global1.c);
    var var_1 = !(global0.b & any(!global0.a)) & false;
    var_0 = global0.e;
    let var_2 = Struct_2(-34521i);
    var_1 = !any(select(select(global0.a, vec4<bool>(global1.a.x, false, true, false), !global0.a), select(!vec4<bool>(global0.a.x, global0.e.a.x, false, false), select(vec4<bool>(var_0.a.x, true, true, global0.b), vec4<bool>(true, true, true, false), global0.a), !global1.a.x), _wgslsmith_f_op_f32(ceil(1000f)) == _wgslsmith_f_op_f32(1258f * global0.d.x)));
    return global0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(vec4<i32>(u_input.a.x, abs(_wgslsmith_dot_vec4_i32(global1.b, global0.c.b) ^ select(0i, 8723i, true)), -12858i, -(min(u_input.a.x, global0.e.b.x) << (~1u % 32u))), func_1(), _wgslsmith_dot_vec4_u32(~(vec4<u32>(global0.e.c.x, 1u, 4294967295u, global1.c.x) >> (~vec4<u32>(4044u, global0.e.c.x, global1.c.x, 9196u) % vec4<u32>(32u))), firstLeadingBit(~vec4<u32>(global1.c.x, global1.c.x, global0.c.c.x, global0.c.c.x)) >> (_wgslsmith_div_vec4_u32(~vec4<u32>(37609u, global0.c.c.x, global1.c.x, global1.c.x), abs(vec4<u32>(global0.c.c.x, global0.c.c.x, 4294967295u, 54485u))) % vec4<u32>(32u))));
    var var_1 = _wgslsmith_f_op_f32(exp2(global0.d.x));
    var var_2 = firstLeadingBit(~var_0.b.c.x);
    var var_3 = Struct_3(!vec4<bool>(true, true, global0.d.x <= global0.d.x, !(global1.b.x != -22508i)), select(func_1().a.x, _wgslsmith_f_op_f32(round(-1093f)) <= global0.d.x, any(select(vec4<bool>(global1.a.x, var_0.b.a.x, global0.a.x, false), !vec4<bool>(false, true, global1.a.x, global0.b), var_0.b.a.x))), var_0.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(global0.d.x)), -998f, 129f) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-388f, -335f, global0.d.x))))), _wgslsmith_f_op_vec3_f32(global0.d + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-832f, global0.d.x, 1868f), vec3<f32>(-912f, global0.d.x, 907f)))))), Struct_1(vec3<bool>(_wgslsmith_f_op_f32(ceil(global0.d.x)) == _wgslsmith_f_op_f32(-global0.d.x), all(global0.a), !func_2()), vec4<i32>(~abs(global1.b.x), -78536i, -firstLeadingBit(global0.e.b.x), -29450i), _wgslsmith_sub_vec2_u32(countOneBits(global1.c) << (_wgslsmith_mult_vec2_u32(vec2<u32>(26310u, var_0.c), vec2<u32>(15928u, 14210u)) % vec2<u32>(32u)), abs(global1.c ^ var_0.b.c))));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1121f, global0.d.x, 609f)) * global0.d)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d.x, -1171f, -1168f) * var_3.d)) * global0.d);
    var var_5 = Struct_1(!global1.a, var_3.c.b, min(~global0.e.c, ~select(~var_3.e.c, _wgslsmith_clamp_vec2_u32(var_3.c.c, vec2<u32>(12412u, var_3.e.c.x), vec2<u32>(global1.c.x, global1.c.x)), var_3.c.a.yy)));
    var var_6 = vec3<u32>(reverseBits(firstLeadingBit(func_1().c.x)), var_0.b.c.x, 9526u);
    var var_7 = Struct_2(var_3.e.b.x);
    let var_8 = func_1().a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.e.b.x);
}

