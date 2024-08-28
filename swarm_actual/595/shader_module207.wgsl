struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 0u);

var<private> global1: array<vec2<i32>, 14> = array<vec2<i32>, 14>(vec2<i32>(14931i, 2147483647i), vec2<i32>(40284i, -47000i), vec2<i32>(-10475i, 1i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-1i, 9374i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(32701i, 1i), vec2<i32>(22744i, 0i), vec2<i32>(i32(-2147483648), 16090i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(0i, 0i), vec2<i32>(-36304i, 3711i), vec2<i32>(16210i, i32(-2147483648)), vec2<i32>(2147483647i, -17735i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    global0 = vec2<u32>(_wgslsmith_mult_u32(global0.x, ~_wgslsmith_add_u32(~45367u, global0.x ^ arg_0.b.x)), global0.x & _wgslsmith_mod_u32(~u_input.d, 4294967295u));
    global1 = array<vec2<i32>, 14>();
    global1 = array<vec2<i32>, 14>();
    global0 = vec2<u32>(_wgslsmith_sub_u32(1u, ~global0.x), ~105280u);
    let var_0 = Struct_1(~countOneBits(_wgslsmith_clamp_vec4_u32(arg_0.b | vec4<u32>(u_input.c, global0.x, 86215u, 9935u), arg_0.b, abs(vec4<u32>(arg_0.a.x, global0.x, global0.x, global0.x)))), firstLeadingBit(countOneBits(abs(arg_0.a))), 35120i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-508f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(225f + 305f) + 247f))), arg_0.e);
    return ~max(arg_0.a.xxx, arg_0.a.zyw);
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = min(~_wgslsmith_clamp_vec3_u32(vec3<u32>(12930u & u_input.d, u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.c, global0.x), vec3<u32>(22448u, arg_0, arg_0))), vec3<u32>(u_input.c & u_input.d, 17111u, 77580u), _wgslsmith_add_vec3_u32(vec3<u32>(global0.x, 1u, arg_0), firstLeadingBit(vec3<u32>(arg_0, u_input.d, arg_0)))), max(func_3(Struct_1(vec4<u32>(64397u, 1u, arg_0, global0.x), vec4<u32>(u_input.d, 1u, 10781u, 4294967295u), u_input.b.x, -938f, true)) & vec3<u32>(0u, u_input.c << (4294967295u % 32u), ~arg_0), (select(vec3<u32>(arg_0, arg_0, global0.x), vec3<u32>(arg_0, global0.x, 0u), vec3<bool>(false, true, false)) | func_3(Struct_1(vec4<u32>(38656u, 1u, 1u, global0.x), vec4<u32>(158322u, 1u, u_input.d, 4294967295u), u_input.b.x, 1229f, false))) >> (~vec3<u32>(u_input.c, 3281u, global0.x) % vec3<u32>(32u))));
    var var_1 = Struct_1(select(firstTrailingBit(~vec4<u32>(52045u, u_input.c, u_input.c, 0u) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, global0.x, 7435u, 2713u), vec4<u32>(41133u, 21340u, 17951u, 7217u))), min(vec4<u32>(~arg_0, func_3(Struct_1(vec4<u32>(arg_0, 0u, 38042u, var_0.x), vec4<u32>(0u, 0u, var_0.x, var_0.x), u_input.b.x, 103f, true)).x, var_0.x, var_0.x & 0u), abs(vec4<u32>(arg_0, var_0.x, 2048u, 65702u)) >> (~vec4<u32>(1u, 4294967295u, 55782u, 63567u) % vec4<u32>(32u))), all(vec2<bool>(u_input.c > 4294967295u, true))), select(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 0u, 9724u, 4294967295u), vec4<u32>(4294967295u, global0.x, 39178u, arg_0) | vec4<u32>(14410u, global0.x, 102189u, var_0.x), abs(vec4<u32>(var_0.x, u_input.d, 4294967295u, 0u))), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(40609u, 24885u, global0.x, 11132u), vec4<u32>(0u, global0.x, 4650u, 4620u)), firstLeadingBit(vec4<u32>(var_0.x, arg_0, u_input.d, 4294967295u))), countOneBits(vec4<u32>(arg_0, 73u, 0u, global0.x) ^ vec4<u32>(global0.x, 12063u, 4294967295u, u_input.c))), vec4<bool>(-10150i >= firstLeadingBit(u_input.b.x), true, true, true)), u_input.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(594f)) * _wgslsmith_div_f32(455f, 432f)), false);
    global1 = array<vec2<i32>, 14>();
    var var_2 = Struct_1(var_1.a, var_1.a & _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.c, var_1.a.x, var_1.a.x, 1u), var_1.a), var_1.a), 37576i >> ((_wgslsmith_dot_vec4_u32(var_1.b, vec4<u32>(4294967295u, var_0.x, u_input.c, 4294967295u)) | ~0u) % 32u), 876f, true);
    global1 = array<vec2<i32>, 14>();
    return Struct_1(vec4<u32>(19363u, select(41265u, ~59472u << (0u % 32u), !var_1.e), var_1.b.x, u_input.d), vec4<u32>(19914u, var_0.x, 1u | ~var_1.b.x, 4294967295u), -var_2.c, _wgslsmith_f_op_f32(sign(1000f)), all(select(vec2<bool>(var_2.e, u_input.e.x != u_input.e.x), vec2<bool>(false == var_1.e, true), !select(vec2<bool>(true, true), vec2<bool>(var_1.e, var_2.e), vec2<bool>(var_1.e, var_2.e)))));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec3<f32>, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = ~(~(~(~max(vec4<u32>(67548u, global0.x, u_input.d, 1u), vec4<u32>(1u, global0.x, 25819u, 18651u)))));
    let var_1 = Struct_1(var_0, firstLeadingBit(vec4<u32>(0u | _wgslsmith_div_u32(global0.x, 69150u), min(_wgslsmith_add_u32(118718u, global0.x), 4294967295u), abs(~global0.x), countOneBits(1u))), 30457i, 363f, arg_0);
    var var_2 = func_2(var_1.a.x);
    var var_3 = select(!vec2<bool>(var_2.e | true, _wgslsmith_div_f32(var_2.d, 389f) > -265f), select(!select(select(vec2<bool>(false, arg_0), vec2<bool>(var_1.e, var_1.e), var_1.e), vec2<bool>(arg_0, var_2.e), vec2<bool>(true, true)), select(select(!vec2<bool>(arg_0, false), vec2<bool>(arg_0, var_1.e), !vec2<bool>(false, var_1.e)), vec2<bool>(func_2(4294967295u).e, true), all(vec2<bool>(arg_0, true))), !vec2<bool>(!var_2.e, arg_0)), false);
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(-264f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.d - arg_2.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(694f, var_1.d))))) * 371f), -372f, var_1.d);
    return var_1;
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> vec4<bool> {
    global0 = _wgslsmith_div_vec2_u32(min(~vec2<u32>(arg_1.b.x, 5223u), vec2<u32>(u_input.c, 1u) & _wgslsmith_mod_vec2_u32(vec2<u32>(49039u, 34893u), vec2<u32>(36887u, global0.x))) | vec2<u32>(4294967295u, ~func_2(63484u).a.x), arg_1.a.xz);
    global0 = max(arg_1.a.zw, ~(~(~arg_1.a.xx))) | (vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(arg_1.a.zy, arg_1.a.zz), arg_1.a.xz), arg_1.a.x) & vec2<u32>(_wgslsmith_sub_u32(38873u, ~u_input.d), 1u & u_input.d));
    var var_0 = select(!vec2<bool>(true, arg_0), select(select(select(vec2<bool>(true, true), vec2<bool>(arg_1.e, arg_1.e), vec2<bool>(arg_0, arg_1.e)), vec2<bool>(true, arg_0), vec2<bool>(!arg_0, all(vec4<bool>(arg_0, true, true, arg_1.e)))), select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(arg_0, true)), vec2<bool>(false, true), vec2<bool>(false, arg_0)), !select(vec2<bool>(arg_1.e, arg_0), vec2<bool>(true, arg_0), vec2<bool>(false, arg_0)), arg_1.d <= 304f), true), arg_0);
    var var_1 = global0.x;
    return select(vec4<bool>(global0.x >= 4294967295u, all(vec2<bool>(true, var_0.x)), var_0.x, arg_0), !vec4<bool>(all(vec3<bool>(true, true, true)), !(arg_1.d <= arg_1.d), true & var_0.x, arg_1.e), !select(!(!vec4<bool>(false, var_0.x, arg_1.e, true)), select(!vec4<bool>(arg_1.e, false, arg_1.e, true), vec4<bool>(var_0.x, var_0.x, false, arg_0), vec4<bool>(arg_0, arg_1.e, arg_1.e, var_0.x)), !(!vec4<bool>(arg_1.e, var_0.x, var_0.x, var_0.x))));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1) -> vec2<u32> {
    global1 = array<vec2<i32>, 14>();
    let var_0 = reverseBits(u_input.d);
    var var_1 = global1[_wgslsmith_index_u32(~arg_1.a.x, 14u)];
    global1 = array<vec2<i32>, 14>();
    return ~(vec2<u32>(global0.x, _wgslsmith_mult_u32(9327u, select(1u, 0u, arg_0.x))) << ((min(arg_1.b.yz << (vec2<u32>(var_0, global0.x) % vec2<u32>(32u)), arg_1.b.wx) & ~(~arg_1.a.yz)) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~(~(vec2<u32>(global0.x, 13606u) | ~vec2<u32>(global0.x, 52708u))));
    global0 = func_5(select(vec4<bool>(false, !any(vec3<bool>(false, false, true)), u_input.a.x <= -2147483647i, _wgslsmith_f_op_f32(step(2697f, 1096f)) > _wgslsmith_f_op_f32(1003f - 195f)), select(vec4<bool>(true, all(vec3<bool>(false, false, true)), any(vec2<bool>(true, false)), true), func_4(true, func_1(false, -14351i, vec3<f32>(-1000f, 1436f, 1566f), vec4<f32>(1866f, 1515f, -1000f, 1992f))), true), vec4<bool>(true, false, true, u_input.b.x > func_1(false, 0i, vec3<f32>(-357f, 1188f, -692f), vec4<f32>(553f, -799f, 1037f, -762f)).c)), func_1(func_1(!select(true, false, true), _wgslsmith_div_i32(17202i, _wgslsmith_add_i32(-1i, 2147483647i)), vec3<f32>(1f, 1f, 1f), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -429f), 826f, _wgslsmith_f_op_f32(-1000f + -599f), _wgslsmith_f_op_f32(f32(-1f) * -516f))).e, 50334i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-212f, -394f, -1503f), vec3<f32>(-861f, -1497f, -1226f), vec3<bool>(false, true, true))) + _wgslsmith_div_vec3_f32(vec3<f32>(-594f, 354f, -877f), vec3<f32>(-699f, 608f, 1529f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1203f, 440f, -288f, -906f) + vec4<f32>(-1228f, 1922f, -2318f, -997f))))));
    var var_0 = ~vec4<i32>(u_input.b.x, func_2(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.x, u_input.c), vec3<u32>(1034u, 0u, 74547u))).c, firstLeadingBit(-_wgslsmith_div_i32(u_input.b.x, u_input.e.x)), func_1(false, select(-u_input.e.x, ~2147483647i, all(vec4<bool>(true, true, false, false))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1008f, 1438f, -1000f) * vec3<f32>(-152f, -286f, -1284f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(666f, -371f, -1000f, -1330f), vec4<f32>(1179f, 1275f, -409f, -685f))))).c);
    let var_1 = ~(~global0.x >> (_wgslsmith_mod_u32(u_input.d, ~1u) % 32u));
    var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(47745i, 18047i, 2147483647i, var_0.x), ~vec4<i32>(firstLeadingBit(2766i), u_input.b.x, max(var_0.x, var_0.x), u_input.e.x)) ^ (vec4<i32>(2147483647i, -2147483647i, 21422i, abs(var_0.x)) & (-_wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, vec4<i32>(0i, 2147483647i, u_input.a.x, -1i)) | reverseBits(vec4<i32>(u_input.e.x, -34858i, u_input.b.x, var_0.x))));
    var var_2 = 13623u;
    let var_3 = (vec4<i32>(-1i, ~(-16770i), _wgslsmith_dot_vec3_i32(u_input.a.zxz, _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, var_0.x, 11980i), vec3<i32>(-13201i, 32874i, -29779i))), _wgslsmith_mult_i32(_wgslsmith_sub_i32(1i, -8910i), -1i)) ^ u_input.a) & _wgslsmith_mult_vec4_i32(-u_input.a, u_input.a);
    var var_4 = false;
    var var_5 = vec4<i32>(i32(-1i) * -var_0.x, ~firstLeadingBit(reverseBits(firstTrailingBit(var_0.x))), -u_input.e.x, (abs(u_input.a.x) << (~max(15581u, u_input.c) % 32u)) >> (37391u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_1);
}

