struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_2,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: i32;

var<private> global2: f32 = 598f;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4) -> vec4<bool> {
    global2 = 288f;
    let var_0 = -139f;
    var var_1 = true;
    var var_2 = -11317i;
    global1 = 1i;
    return select(vec4<bool>(select(true, select(any(vec2<bool>(arg_0.b.a.a, true)), false, !arg_0.b.a.a), false), false, true, arg_0.b.a.a & (arg_0.b.a.a | select(true, arg_0.b.a.a, arg_0.b.a.a))), vec4<bool>(!arg_0.b.a.a, any(select(select(vec4<bool>(true, arg_0.b.a.a, true, arg_0.b.a.a), vec4<bool>(true, true, false, true), arg_0.b.a.a), !vec4<bool>(arg_0.b.a.a, true, false, false), vec4<bool>(false, arg_0.b.a.a, arg_0.b.a.a, arg_0.b.a.a))), !(global0.x > arg_0.b.a.c), (all(vec3<bool>(false, arg_0.b.a.a, arg_0.b.a.a)) || true) || true), true);
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: bool) -> vec4<u32> {
    global2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-984f)), 1927f)))))));
    var var_0 = !select(select(!(!vec4<bool>(arg_2, false, arg_2, true)), vec4<bool>(true, true, true, true), func_3(Struct_4(vec4<f32>(-318f, -551f, -997f, 1665f), Struct_2(Struct_1(arg_2, vec4<i32>(-56887i, 2147483647i, arg_0, arg_0), -45135i, u_input.a.yy))))), select(!func_3(Struct_4(vec4<f32>(771f, -1000f, 680f, -1559f), Struct_2(Struct_1(arg_2, vec4<i32>(-1i, u_input.b.x, 1i, 0i), 2147483647i, u_input.a.yy)))), select(func_3(Struct_4(vec4<f32>(-597f, 263f, 836f, -280f), Struct_2(Struct_1(arg_2, vec4<i32>(arg_0, 1i, global0.x, u_input.b.x), global0.x, u_input.a.zy)))), vec4<bool>(arg_2, false, false, true), func_3(Struct_4(vec4<f32>(-276f, 631f, -391f, -973f), Struct_2(Struct_1(arg_2, vec4<i32>(2147483647i, 2147483647i, arg_0, 17530i), global0.x, vec2<i32>(2147483647i, global0.x)))))), !any(vec3<bool>(arg_2, true, false))), !select(!vec4<bool>(false, arg_2, arg_2, arg_2), vec4<bool>(arg_2, arg_2, true, true), select(vec4<bool>(arg_2, false, false, false), vec4<bool>(arg_2, arg_2, arg_2, true), false)));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_2 = 1u;
    var var_3 = _wgslsmith_clamp_i32(1i, 70775i, 0i);
    return _wgslsmith_clamp_vec4_u32(~max(vec4<u32>(var_2, 1u, 32927u, 0u), vec4<u32>(75132u, var_2, var_2, arg_1)) << (~(vec4<u32>(arg_1, var_2, arg_1, 0u) << (vec4<u32>(1u, var_2, 49488u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(12316u, var_2, var_2, var_2), vec4<u32>(arg_1, var_2, arg_1, var_2)), ~vec4<u32>(63563u, arg_1, 1u, 4294967295u)), select(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_1, 40303u, 1u, var_2), vec4<u32>(arg_1, var_2, var_2, arg_1)), vec4<u32>(~var_2, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1489u), vec2<u32>(arg_1, var_2)), 4294967295u, 9574u), vec4<bool>(false, all(var_0.zy), true, var_0.x))) & max(firstTrailingBit(vec4<u32>(firstLeadingBit(arg_1), 1u, firstLeadingBit(arg_1), ~0u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(arg_1, 1u, var_2, var_2) & ~vec4<u32>(arg_1, 1340u, 1u, 4294967295u), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(14025u, arg_1, 1u, 1u), vec4<u32>(arg_1, 42290u, var_2, var_2)), vec4<u32>(1u, 38362u, arg_1, var_2) ^ vec4<u32>(var_2, 1u, arg_1, var_2))));
}

fn func_1() -> i32 {
    global0 = _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, u_input.b.x, -7601i, abs(2147483647i)) >> ((countOneBits(vec4<u32>(1u, 49243u, 18782u, 4294967295u)) ^ func_2(global0.x, 0u, false)) % vec4<u32>(32u)), -(~select(vec4<i32>(6767i, u_input.a.x, global0.x, global0.x), vec4<i32>(1i, 0i, 2147483647i, 0i), vec4<bool>(true, false, false, true)))), ~(~_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, -1i, u_input.b.x, global0.x), vec4<i32>(0i, u_input.b.x, 15234i, global0.x)), firstTrailingBit(vec4<i32>(-57884i, -1i, -58764i, 17814i)))));
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -1233f);
    global2 = _wgslsmith_div_f32(1704f, -894f);
    var var_0 = Struct_3(Struct_1(func_3(Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(743f, 741f, 397f, -582f) - vec4<f32>(-1385f, -871f, -722f, 1000f)), Struct_2(Struct_1(true, vec4<i32>(u_input.b.x, global0.x, 1i, -2147483647i), global0.x, vec2<i32>(34607i, 35212i))))).x, vec4<i32>(63612i, 1i, global0.x & 0i, global0.x), global0.x, _wgslsmith_mod_vec2_i32(firstTrailingBit(global0.yx), u_input.a.zz) ^ abs(vec2<i32>(u_input.b.x, u_input.a.x))), _wgslsmith_mult_vec2_i32(vec2<i32>(global0.x, global0.x) ^ ~vec2<i32>(6909i, 25799i), global0.yw), Struct_2(Struct_1(select(false, true, false), _wgslsmith_sub_vec4_i32(-vec4<i32>(20221i, -30057i, -1i, -22817i), firstTrailingBit(vec4<i32>(-15699i, 1i, global0.x, u_input.b.x))), _wgslsmith_dot_vec2_i32(global0.yz, -vec2<i32>(0i, 17810i)), u_input.b.yx)), Struct_2(Struct_1(!any(vec4<bool>(true, true, true, false)), _wgslsmith_div_vec4_i32(min(vec4<i32>(17965i, u_input.a.x, global0.x, -1i), vec4<i32>(u_input.a.x, -2147483647i, 44648i, global0.x)), vec4<i32>(u_input.b.x, u_input.a.x, -40295i, 1i)), -2147483647i, -vec2<i32>(u_input.a.x, 0i))), Struct_1(true, select(-vec4<i32>(u_input.b.x, 1i, u_input.a.x, global0.x), max(firstTrailingBit(vec4<i32>(u_input.a.x, -1i, 2147483647i, 4128i)), reverseBits(vec4<i32>(-1i, global0.x, global0.x, -6559i))), vec4<bool>(true, true, true, true)), 25978i, firstLeadingBit(vec2<i32>(~u_input.b.x, u_input.a.x | 8350i))));
    global2 = -1066f;
    return firstTrailingBit(max(u_input.a.x, abs(i32(-1i) * -u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<u32>(0u, ~1u, max(~1u, ~25660u), ~(1u ^ _wgslsmith_clamp_u32(43788u, 0u, 0u)));
    global1 = _wgslsmith_mult_i32(func_1(), _wgslsmith_mod_i32(global0.x, min(global0.x ^ (global0.x | u_input.b.x), ~10276i << (~var_0.x % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(583f)), vec2<u32>(reverseBits(var_0.x), ~var_0.x), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i >> (var_0.x % 32u), -60396i), global0.xx) ^ vec2<i32>(global0.x, u_input.a.x), -1587f, 37685u);
}

