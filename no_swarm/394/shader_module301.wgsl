struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec2<bool>(true, false), i32(-2147483648), vec4<u32>(31371u, 1u, 0u, 8u)), Struct_1(vec2<bool>(true, true), -1i, vec4<u32>(4294967295u, 0u, 0u, 4364u)), Struct_1(vec2<bool>(false, false), 2147483647i, vec4<u32>(6357u, 64289u, 0u, 67765u)), Struct_1(vec2<bool>(false, false), 7905i, vec4<u32>(59690u, 8552u, 22185u, 0u)), Struct_1(vec2<bool>(false, true), -1i, vec4<u32>(4294967295u, 404u, 81864u, 91027u)), Struct_1(vec2<bool>(false, false), 1i, vec4<u32>(54189u, 1u, 1u, 25555u)), Struct_1(vec2<bool>(false, false), 2147483647i, vec4<u32>(60513u, 27832u, 4294967295u, 36068u)), Struct_1(vec2<bool>(true, true), 2147483647i, vec4<u32>(1u, 4294967295u, 68612u, 19668u)), Struct_1(vec2<bool>(true, true), 19172i, vec4<u32>(4294967295u, 38657u, 0u, 5294u)), Struct_1(vec2<bool>(true, false), -16582i, vec4<u32>(1u, 0u, 0u, 4294967295u)), Struct_1(vec2<bool>(false, false), i32(-2147483648), vec4<u32>(4294967295u, 41353u, 43574u, 0u)), Struct_1(vec2<bool>(false, false), -1i, vec4<u32>(15084u, 26608u, 4294967295u, 683u)), Struct_1(vec2<bool>(true, false), -28207i, vec4<u32>(0u, 0u, 7681u, 1u)), Struct_1(vec2<bool>(false, true), i32(-2147483648), vec4<u32>(37338u, 49277u, 4294967295u, 1u)), Struct_1(vec2<bool>(false, false), -28634i, vec4<u32>(4294967295u, 24887u, 12408u, 10931u)), Struct_1(vec2<bool>(true, false), -17888i, vec4<u32>(99518u, 15364u, 0u, 1u)), Struct_1(vec2<bool>(true, true), 19982i, vec4<u32>(1u, 28695u, 8419u, 56063u)), Struct_1(vec2<bool>(false, true), 33658i, vec4<u32>(14798u, 4294967295u, 4294967295u, 17864u)), Struct_1(vec2<bool>(true, true), i32(-2147483648), vec4<u32>(1u, 1u, 1u, 16067u)));

var<private> global2: u32;

var<private> global3: vec3<i32> = vec3<i32>(-40002i, i32(-2147483648), 33824i);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1) -> vec3<i32> {
    global2 = arg_0.x;
    let var_0 = ~(~_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, arg_1.b, -2147483647i, 18399i), vec4<i32>(global3.x, 2147483647i, global3.x, -42316i)), ~vec4<i32>(arg_1.b, -2147483647i, arg_1.b, global3.x), vec4<i32>(arg_1.b, -1i, arg_1.b, 1i) | vec4<i32>(2147483647i, arg_1.b, u_input.e, global3.x))) >> (~(~(~(vec4<u32>(1u, arg_0.x, 38380u, 59250u) & u_input.a))) % vec4<u32>(32u));
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(~var_0, var_0 ^ vec4<i32>(1i, -27483i, global3.x, arg_1.b)), ~1i, -(i32(-1i) * -23015i)), -firstLeadingBit(var_0.wyx)), firstTrailingBit(_wgslsmith_dot_vec3_i32(-(~vec3<i32>(u_input.e, 1i, -2147483647i)), ~firstTrailingBit(vec3<i32>(-79541i, -689i, 1i)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1107f))))) + 697f));
    let var_3 = ~(~arg_1.c.ww);
    return _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(var_0.wxz, reverseBits(vec3<i32>(var_1, arg_1.b, arg_1.b) << (vec3<u32>(u_input.a.x, u_input.a.x, 0u) % vec3<u32>(32u)))), _wgslsmith_div_vec3_i32(var_0.zzy, vec3<i32>(~var_1, -5933i & arg_1.b, var_0.x)));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = arg_0;
    let var_1 = all(!(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)))) & false;
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-784f, -1000f, -800f, 945f) - vec4<f32>(-1000f, 360f, -1000f, -1766f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(308f, 1000f, -1000f, 335f) - vec4<f32>(351f, -1000f, 1000f, -1106f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-222f, -1000f, -176f, 190f), vec4<f32>(-101f, -1573f, -371f, 742f))))))));
    global3 = -vec3<i32>(-1i, _wgslsmith_div_i32(u_input.b, u_input.e), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -11763i), -vec2<i32>(31452i, 0i))) ^ _wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(countOneBits(24362i), -60973i, ~1i)), select(vec3<i32>(_wgslsmith_add_i32(50489i, 1i), u_input.b, max(u_input.b, -2147483647i)), _wgslsmith_mod_vec3_i32(min(vec3<i32>(global3.x, global3.x, -2147483647i), vec3<i32>(0i, u_input.b, 20294i)), -vec3<i32>(6036i, global3.x, global3.x)), select(!vec3<bool>(true, var_1, false), select(vec3<bool>(var_1, false, true), vec3<bool>(var_1, var_1, false), false), vec3<bool>(var_1, true, true))));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1368f)))) + _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(select(1000f, 944f, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -823f))));
    return abs(~(~u_input.d));
}

fn func_2() -> i32 {
    var var_0 = 11460i;
    var_0 = _wgslsmith_dot_vec3_i32((min(vec3<i32>(2147483647i, global3.x, -15488i), vec3<i32>(0i, global3.x, global3.x)) & ~(~vec3<i32>(u_input.e, 1i, u_input.b))) << (~select(~u_input.a.wyy, vec3<u32>(0u, u_input.d, 86984u), all(vec4<bool>(false, true, true, true))) % vec3<u32>(32u)), -vec3<i32>(-1i, i32(-1i) * -global3.x, 1i));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(func_3(u_input.c.x), abs(abs(u_input.a.x) & 33772u)) ^ (1u >> ((~u_input.c.x & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.d, u_input.a.x) << (vec3<u32>(u_input.d, u_input.d, u_input.c.x) % vec3<u32>(32u)), u_input.a.wzz)) % 32u)), 24u)];
    var var_2 = _wgslsmith_clamp_vec2_u32(abs(u_input.c.zy), ~(~countOneBits(vec2<u32>(var_1.c.x, var_1.c.x)) << ((_wgslsmith_add_vec2_u32(u_input.c.yx, vec2<u32>(var_1.c.x, u_input.a.x)) >> (vec2<u32>(u_input.d, u_input.d) % vec2<u32>(32u))) % vec2<u32>(32u))), max(abs(~select(u_input.c.xy, vec2<u32>(u_input.a.x, 50726u), var_1.a.x)), ~u_input.a.wx));
    let var_3 = 38598i;
    return _wgslsmith_mod_i32(abs(var_1.b), ~(-u_input.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(_wgslsmith_mod_vec3_i32(vec3<i32>(max(-38457i, u_input.b), _wgslsmith_mod_i32(global3.x, -2147483647i), -2147483647i), func_1(vec2<u32>(1u, 15957u), Struct_1(vec2<bool>(false, false), 12462i, vec4<u32>(28111u, u_input.d, 54912u, 9814u))) & vec3<i32>(-3889i, -1i, 38004i)) >> (~vec3<u32>(1u, u_input.d, ~u_input.c.x) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(1i, ~(i32(-1i) * -1i), func_2()), firstTrailingBit(vec3<i32>(2092i << (u_input.d % 32u), _wgslsmith_div_i32(1i, global3.x), u_input.e))), select(vec3<bool>(!all(vec2<bool>(true, true)), any(select(vec2<bool>(true, true), vec2<bool>(true, false), false)), false), vec3<bool>(false, true, all(vec2<bool>(true, true))), true));
    global0 = array<Struct_1, 24>();
    global1 = array<Struct_1, 19>();
    var var_1 = (vec4<i32>(var_0.x & firstTrailingBit(u_input.b), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, 0i, -27751i), vec3<i32>(var_0.x, var_0.x, -10149i), vec3<i32>(var_0.x, global3.x, -51964i)), -vec3<i32>(0i, global3.x, global3.x)), -1i, reverseBits(u_input.e)) & ~_wgslsmith_add_vec4_i32(abs(vec4<i32>(0i, -20609i, var_0.x, 1i)), vec4<i32>(var_0.x, var_0.x, u_input.e, 0i) << (u_input.a % vec4<u32>(32u)))) ^ _wgslsmith_div_vec4_i32((vec4<i32>(global3.x, 0i, var_0.x, -2147483647i) ^ ~vec4<i32>(var_0.x, 31266i, 0i, -18432i)) & vec4<i32>(~global3.x, select(var_0.x, 1i, true), var_0.x | global3.x, -19039i), select(~max(vec4<i32>(var_0.x, 54857i, u_input.e, u_input.e), vec4<i32>(var_0.x, 2147483647i, u_input.e, 0i)), -select(vec4<i32>(u_input.e, 2147483647i, 1i, var_0.x), vec4<i32>(-1i, u_input.b, -7370i, u_input.e), vec4<bool>(true, true, true, true)), true));
    var_0 = ~vec3<i32>(-var_1.x, ~select(global3.x, var_1.x << (u_input.c.x % 32u), true), _wgslsmith_add_i32(var_0.x, -17884i));
    var_1 = vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(abs(global3.x), u_input.e, 1i) >> (_wgslsmith_div_u32(~0u, 39778u ^ u_input.c.x) % 32u), u_input.b), func_1(~abs(~vec2<u32>(u_input.c.x, u_input.d)), Struct_1(vec2<bool>(true, true), ~(-2147483647i), u_input.a)).x, _wgslsmith_dot_vec2_i32(~(-vec2<i32>(0i, -1i) & global3.xy), vec2<i32>(_wgslsmith_add_i32(-var_1.x, var_1.x), ~reverseBits(var_0.x))), max(-31692i, max(var_0.x << (~u_input.a.x % 32u), var_1.x)));
    let var_2 = Struct_2(Struct_1(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), -var_0.x ^ (abs(var_1.x) | ~33023i), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 78992u, 4294967295u), vec3<u32>(13513u, 0u, u_input.c.x)), abs(0u), 0u, 29506u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1469f, 125f, -422f, -487f) * _wgslsmith_div_vec4_f32(vec4<f32>(-690f, 355f, -455f, -1000f), vec4<f32>(-964f, 149f, 2120f, -503f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1694f, -1650f, -477f, 1699f), vec4<f32>(466f, -534f, 883f, 1628f)))))), -firstTrailingBit(reverseBits(firstLeadingBit(u_input.b))), 2147483647i & global3.x, ~u_input.c.x, _wgslsmith_add_u32(var_2.a.c.x, var_2.a.c.x) >> (_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.a.x, 4294967295u, 59223u >> (var_2.a.c.x % 32u)), ~var_2.a.c.x) % 32u));
}

