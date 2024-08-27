struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23>;

var<private> global1: array<Struct_1, 17>;

var<private> global2: array<u32, 18>;

var<private> global3: i32 = -17797i;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec2<i32>, arg_3: i32) -> i32 {
    var var_0 = _wgslsmith_dot_vec4_i32(select(-vec4<i32>(-33528i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.x, 2147483647i, -1i), vec3<i32>(-28654i, arg_2.x, arg_3)), abs(51258i), arg_3), ~(~vec4<i32>(arg_0, 36324i, -23186i, arg_0)) ^ vec4<i32>(-3675i ^ arg_2.x, abs(arg_3), countOneBits(-46683i), arg_3), all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)))), vec4<i32>(-2867i, _wgslsmith_mod_i32(firstTrailingBit(-2147483647i), arg_3), max(abs(-53069i), _wgslsmith_add_i32(8960i, select(arg_0, arg_3, true))), arg_0));
    let var_1 = Struct_3(Struct_1(~vec4<u32>(1u, 0u, 39941u, global2[_wgslsmith_index_u32(u_input.a, 18u)]) << (~(~vec4<u32>(0u, u_input.a, 57983u, u_input.a)) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1559f, -179f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1993f, -203f) * vec2<f32>(116f, -1003f)), all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))))), -626f, ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 22895u), max(vec3<u32>(u_input.a, u_input.a, arg_1), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(48506u, 18u)], 18u)], 1u, arg_1)))), max(~vec4<u32>(countOneBits(u_input.a), abs(1u), 4294967295u, arg_1 | 55051u), vec4<u32>(~25394u, reverseBits(countOneBits(arg_1)), min(8472u, firstLeadingBit(1u)), _wgslsmith_sub_u32(1u, _wgslsmith_sub_u32(22428u, u_input.a)))), min(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(12765u, 1u, 61124u, arg_1), ~vec4<u32>(0u, arg_1, 19403u, u_input.a))), 1u), firstTrailingBit(~(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, arg_1, u_input.a, global2[_wgslsmith_index_u32(u_input.a, 18u)]), vec4<u32>(19964u, 84589u, global2[_wgslsmith_index_u32(arg_1, 18u)], 8604u), vec4<u32>(8796u, u_input.a, u_input.a, 4294967295u)) >> (~vec4<u32>(u_input.a, arg_1, global2[_wgslsmith_index_u32(u_input.a, 18u)], arg_1) % vec4<u32>(32u)))), global0[_wgslsmith_index_u32(arg_1, 23u)]);
    global2 = array<u32, 18>();
    let var_2 = !all(select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(all(vec3<bool>(false, false, true)), all(vec2<bool>(false, false)), var_1.e.b.b.x < 1049f), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))));
    var_0 = arg_0;
    return -35435i;
}

fn func_4(arg_0: i32, arg_1: vec4<f32>) -> f32 {
    global1 = array<Struct_1, 17>();
    return _wgslsmith_f_op_f32(-arg_1.x);
}

fn func_2(arg_0: i32, arg_1: vec3<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-300f + _wgslsmith_f_op_f32(f32(-1f) * -2318f)));
    var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_sub_i32(~func_3(select(arg_0, arg_0, arg_1.x), ~1u, -vec2<i32>(arg_0, 0i), 19634i), firstTrailingBit(20743i)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(434f, 1000f, -1000f, 298f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1550f, -318f, 1004f, -1832f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(574f, 682f, -649f, 1012f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1197f, -1055f, -1195f, -1275f))))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(1075f, 210f)), _wgslsmith_f_op_f32(-809f - -136f), _wgslsmith_f_op_f32(min(-105f, 112f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1005f, -781f, 425f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-153f, -565f, -648f)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(668f, -1000f, -2595f)) * vec3<f32>(-616f, -692f, _wgslsmith_f_op_f32(f32(-1f) * -140f))))));
    let var_2 = _wgslsmith_mod_u32(~0u, _wgslsmith_clamp_u32(~(_wgslsmith_add_u32(59967u, 9315u) >> (u_input.a % 32u)), min((10689u << (global2[_wgslsmith_index_u32(u_input.a, 18u)] % 32u)) >> (~global2[_wgslsmith_index_u32(0u, 18u)] % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(14904u, 18u)], 18u)], 18u)], u_input.a, 0u))), (4294967295u & (1u << (u_input.a % 32u))) ^ firstLeadingBit(firstLeadingBit(55743u))));
    global3 = _wgslsmith_sub_i32(arg_0 ^ abs(arg_0), arg_0);
    return true;
}

fn func_1(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_2, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = ~(~(~_wgslsmith_mult_vec2_u32(~arg_3.a.xz, arg_3.a.xw)));
    var var_1 = _wgslsmith_f_op_f32(110f - 197f);
    var_1 = -138f;
    global1 = array<Struct_1, 17>();
    let var_2 = arg_2.b.a.xz;
    return select(vec3<bool>(any(vec4<bool>(true, true, true, true)), func_2(min(~0i, ~arg_2.c.x), vec3<bool>(4508i <= arg_2.c.x, select(true, false, false), false)), !func_2(12474i, vec3<bool>(true, true, true))), select(vec3<bool>(select(true, any(vec2<bool>(true, false)), false), any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true)), arg_1 > _wgslsmith_div_f32(278f, 210f)), vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true))), !any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(~vec3<i32>(_wgslsmith_clamp_i32(select(26436i, -10018i, true), ~49837i, i32(-1i) * -48668i), -1i, ~1i), vec3<i32>(i32(-1i) * -3180i, reverseBits(~_wgslsmith_mult_i32(35665i, 1i)), -_wgslsmith_sub_i32(~(-1i), -1i)), select(!select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), all(vec4<bool>(true, false, false, true))), !vec3<bool>(true, true, select(false, false, false)), select(func_1(countOneBits(vec4<u32>(1u, 4294967295u, 29856u, global2[_wgslsmith_index_u32(29290u, 18u)])), _wgslsmith_f_op_f32(-564f - -2329f), global0[_wgslsmith_index_u32(select(1u, global2[_wgslsmith_index_u32(4294967295u, 18u)], true), 23u)], Struct_1(vec4<u32>(u_input.a, global2[_wgslsmith_index_u32(6460u, 18u)], 32452u, global2[_wgslsmith_index_u32(19089u, 18u)]), vec2<f32>(-369f, -1359f), -903f, 1u)), vec3<bool>(false, true, all(vec2<bool>(true, false))), true)));
    var var_1 = Struct_3(global1[_wgslsmith_index_u32(15516u, 17u)], ~(~(~(~vec4<u32>(u_input.a, global2[_wgslsmith_index_u32(132958u, 18u)], 4294967295u, 0u)))), global2[_wgslsmith_index_u32(u_input.a, 18u)], max(vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a), ~vec3<u32>(1u, global2[_wgslsmith_index_u32(65953u, 18u)], 4294967295u)), 0u, ~5368u, 5012u), vec4<u32>(_wgslsmith_div_u32(74798u, _wgslsmith_dot_vec3_u32(vec3<u32>(21611u, global2[_wgslsmith_index_u32(u_input.a, 18u)], 53161u), vec3<u32>(25255u, u_input.a, u_input.a))), _wgslsmith_dot_vec4_u32(~vec4<u32>(41208u, u_input.a, 0u, 0u), vec4<u32>(5208u, u_input.a, global2[_wgslsmith_index_u32(u_input.a, 18u)], 1u)), global2[_wgslsmith_index_u32(abs(~global2[_wgslsmith_index_u32(0u, 18u)]), 18u)], (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 18u)], 18u)] >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(35684u, 18u)], 18u)], 18u)], 18u)], 18u)] % 32u)) << (_wgslsmith_add_u32(global2[_wgslsmith_index_u32(0u, 18u)], 1u) % 32u))), global0[_wgslsmith_index_u32(min(_wgslsmith_mod_u32(u_input.a, u_input.a), 0u), 23u)]);
    global2 = array<u32, 18>();
    var var_2 = Struct_1(max(var_1.a.a ^ var_1.e.a.a, var_1.a.a), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -397f), _wgslsmith_f_op_f32(select(-139f, var_1.e.a.b.x, 474f < var_1.e.a.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.e.a.c))), ~(~(var_1.a.a.x << (80033u % 32u))));
    global2 = array<u32, 18>();
    var var_3 = Struct_3(Struct_1(firstTrailingBit((vec4<u32>(global2[_wgslsmith_index_u32(0u, 18u)], 69237u, 1u, var_1.a.d) >> (vec4<u32>(1u, 1u, global2[_wgslsmith_index_u32(1u, 18u)], 4294967295u) % vec4<u32>(32u))) | ~var_2.a), var_2.b, -604f, var_2.a.x & var_1.d.x), reverseBits(~var_2.a >> (abs(vec4<u32>(86267u, var_2.d, 1u, 4294967295u)) % vec4<u32>(32u))), 4294967295u, _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4519u, 8583u, u_input.a, u_input.a), vec4<u32>(1u, 0u, u_input.a, global2[_wgslsmith_index_u32(var_1.a.a.x, 18u)])) & vec4<u32>(5241u, var_1.b.x, u_input.a, 34266u), max(abs(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 18u)], 18u)], 1u, 1u, global2[_wgslsmith_index_u32(u_input.a, 18u)])), firstTrailingBit(vec4<u32>(var_1.b.x, 35946u, u_input.a, var_1.a.d))), _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(var_1.a.d, u_input.a, 51705u, u_input.a)), var_2.a)) ^ var_1.b, Struct_2(Struct_1(var_1.e.a.a, _wgslsmith_f_op_vec2_f32(var_2.b * _wgslsmith_f_op_vec2_f32(trunc(var_1.e.a.b))), var_2.c, 0u ^ (var_2.a.x | 30168u)), Struct_1(vec4<u32>(var_1.c, _wgslsmith_mult_u32(6184u, var_2.a.x), ~1u, 1u & u_input.a), vec2<f32>(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(1000f - var_1.a.c)), var_2.b.x, _wgslsmith_add_u32(global2[_wgslsmith_index_u32(~37356u, 18u)], ~2741u)), -vec4<i32>(58591i, reverseBits(-1i), 9921i, var_0.x & 14069i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.e.c.x, var_3.b.xxz, i32(-1i) * -2147483647i);
}

