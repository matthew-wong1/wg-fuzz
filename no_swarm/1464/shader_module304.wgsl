struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 3>;

var<private> global1: u32;

var<private> global2: array<Struct_1, 24>;

var<private> global3: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(i32(-2147483648), 0u, Struct_1(vec4<u32>(44223u, 4294967295u, 4294967295u, 1u), 1273f, vec4<i32>(0i, 2147483647i, -22991i, 20159i), vec3<i32>(34821i, 1i, 0i)), 4294967295u), Struct_2(0i, 1u, Struct_1(vec4<u32>(4294967295u, 522u, 1u, 47687u), -710f, vec4<i32>(1i, 76413i, 2147483647i, -11659i), vec3<i32>(1i, i32(-2147483648), -42261i)), 1u), Struct_2(13657i, 59394u, Struct_1(vec4<u32>(117606u, 1u, 3790u, 13278u), -372f, vec4<i32>(1i, 8366i, -1i, 2147483647i), vec3<i32>(0i, -38058i, -30168i)), 0u), Struct_2(55495i, 61735u, Struct_1(vec4<u32>(5588u, 1u, 4294967295u, 156749u), -1000f, vec4<i32>(0i, 35332i, i32(-2147483648), 1i), vec3<i32>(0i, -23748i, 2147483647i)), 1u), Struct_2(6494i, 35856u, Struct_1(vec4<u32>(0u, 5057u, 1u, 111241u), 844f, vec4<i32>(i32(-2147483648), 2147483647i, 18376i, 2147483647i), vec3<i32>(2147483647i, 2147483647i, 5894i)), 1u), Struct_2(-76981i, 24780u, Struct_1(vec4<u32>(0u, 1u, 0u, 1u), 363f, vec4<i32>(-25526i, 1i, 1i, 1i), vec3<i32>(0i, 1i, 21336i)), 30513u), Struct_2(2147483647i, 45527u, Struct_1(vec4<u32>(1u, 1u, 1u, 91907u), 349f, vec4<i32>(2147483647i, 1i, -1i, -14690i), vec3<i32>(-2829i, 2147483647i, 0i)), 1u), Struct_2(1i, 1u, Struct_1(vec4<u32>(4858u, 0u, 1u, 0u), 1078f, vec4<i32>(i32(-2147483648), 22525i, 21878i, -1i), vec3<i32>(-1i, -33055i, -28658i)), 5204u), Struct_2(0i, 4294967295u, Struct_1(vec4<u32>(86309u, 1u, 0u, 11346u), 296f, vec4<i32>(-5819i, 1i, -1i, 2147483647i), vec3<i32>(0i, 11710i, 8516i)), 44400u), Struct_2(-85719i, 39490u, Struct_1(vec4<u32>(1u, 58571u, 24743u, 116264u), -612f, vec4<i32>(-8185i, 24020i, 13683i, 1400i), vec3<i32>(-31281i, -1i, 2147483647i)), 37195u), Struct_2(i32(-2147483648), 0u, Struct_1(vec4<u32>(57800u, 76256u, 1u, 1u), -724f, vec4<i32>(-55030i, -16161i, i32(-2147483648), 3738i), vec3<i32>(-32173i, i32(-2147483648), 2147483647i)), 77040u), Struct_2(1i, 25097u, Struct_1(vec4<u32>(1u, 16001u, 19478u, 36810u), -295f, vec4<i32>(1i, 1i, i32(-2147483648), -25527i), vec3<i32>(-1i, 23436i, 1i)), 4294967295u));

var<private> global4: array<u32, 7>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<u32> {
    var var_0 = -abs(-42916i);
    var var_1 = vec4<f32>(-1939f, 912f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-208f, 1f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -651f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1098f), _wgslsmith_f_op_f32(-119f + -418f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1078f) - _wgslsmith_f_op_f32(f32(-1f) * -819f))));
    return ~(~countOneBits(~vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)], 7u)], global4[_wgslsmith_index_u32(64063u, 7u)], 4294967295u, 11838u) << (vec4<u32>(4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 7u)], 7u)], global4[_wgslsmith_index_u32(4294967295u, 7u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(6698u, 7u)], 7u)]) % vec4<u32>(32u))));
}

fn func_2() -> i32 {
    let var_0 = Struct_3(Struct_2(u_input.a, 0u, Struct_1(_wgslsmith_clamp_vec4_u32(~vec4<u32>(42679u, 0u, global4[_wgslsmith_index_u32(1u, 7u)], 4294967295u), ~vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 7u)], 7u)], 7u)], 0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(29637u, 7u)], 7u)], global4[_wgslsmith_index_u32(4294967295u, 7u)]), _wgslsmith_div_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)], 7u)], 0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(13889u, 7u)], 7u)], 7u)], global4[_wgslsmith_index_u32(22699u, 7u)]), vec4<u32>(39155u, 628u, 4294967295u, global4[_wgslsmith_index_u32(56386u, 7u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -408f) - _wgslsmith_div_f32(-904f, -766f)), ~(vec4<i32>(0i, u_input.a, u_input.a, 1i) ^ vec4<i32>(u_input.a, -5281i, 5668i, -9435i)), vec3<i32>(u_input.a, u_input.a, u_input.a) & vec3<i32>(38900i, u_input.a, u_input.a)), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32((0u & select(17865u, 1u, true)) & _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(18844u, 1u, 4294967295u)), 7u)], 7u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-618f - _wgslsmith_f_op_f32(-878f * 1680f)) + -481f)), Struct_1(_wgslsmith_div_vec4_u32(select(vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(58376u, 7u)], 7u)], 17658u, global4[_wgslsmith_index_u32(1u, 7u)], 24759u) ^ vec4<u32>(4294967295u, 0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)], 7u)], 7u)], 0u), func_3(), vec4<bool>(false, true, true, true)), _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 7u)], 7u)], 7u)], 0u, 4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)])), countOneBits(vec4<u32>(47149u, 1u, 1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(6045u, 7u)], 7u)])))), 1f, -(~vec4<i32>(u_input.a, u_input.a, u_input.a, -34107i)), ~abs(~vec3<i32>(-43414i, 0i, u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(225f + 1370f) - _wgslsmith_f_op_f32(-466f * -1380f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) * _wgslsmith_f_op_f32(-2300f + 1000f)))));
    let var_1 = vec3<i32>(countOneBits(-var_0.c.d.x), ~var_0.c.d.x, _wgslsmith_mult_i32(1i, _wgslsmith_sub_i32(-2147483647i, -u_input.a)) >> (_wgslsmith_mult_u32(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(select(global4[_wgslsmith_index_u32(52500u, 7u)], 4344u, true), 1u), 7u)], 7247u) % 32u));
    global2 = array<Struct_1, 24>();
    let var_2 = Struct_1(vec4<u32>(var_0.a.b, 1u, 1u, 4294967295u), -162f, var_0.a.c.c, select(~(~var_1), vec3<i32>(_wgslsmith_mult_i32(17860i, u_input.a), u_input.a, _wgslsmith_mod_i32(-1i, u_input.a)), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, false, true), vec3<bool>(false, true, true))) << (~_wgslsmith_div_vec3_u32(abs(var_0.a.c.a.wzy), var_0.a.c.a.yxw) % vec3<u32>(32u)));
    let var_3 = 1u;
    return var_1.x;
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = vec2<bool>(23915i >= countOneBits(_wgslsmith_mod_i32(func_2(), _wgslsmith_clamp_i32(arg_0, -1i, -5598i))), any(vec3<bool>(true, false, all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true))))));
    let var_1 = vec3<i32>(arg_0 >> (_wgslsmith_sub_u32(~1u, _wgslsmith_mult_u32(global4[_wgslsmith_index_u32(0u, 7u)], 4294967295u)) % 32u), ~min(arg_0, arg_0), i32(-1i) * -14873i) | select(vec3<i32>(-13205i, ~u_input.a, 3325i), vec3<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -2147483647i, 1i), vec3<i32>(u_input.a, 2147483647i, arg_0)), ~(~u_input.a), arg_0), all(vec4<bool>(true, true, true, all(vec4<bool>(var_0.x, var_0.x, false, true)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(func_3().x, 3u)] + vec2<f32>(1f, -239f)), vec2<f32>(_wgslsmith_f_op_f32(round(1382f)), _wgslsmith_f_op_f32(f32(-1f) * -869f)), !var_0.x))));
    let var_3 = Struct_4(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(global4[_wgslsmith_index_u32(~4294967295u, 7u)], firstTrailingBit(global4[_wgslsmith_index_u32(4294967295u, 7u)])), 7u)], 12u)], global2[_wgslsmith_index_u32(_wgslsmith_add_u32(reverseBits(firstTrailingBit(1u)), ~global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 7u)], 7u)], global4[_wgslsmith_index_u32(0u, 7u)]), vec2<u32>(57598u, global4[_wgslsmith_index_u32(4294967295u, 7u)])), 7u)], 7u)]), 24u)]);
    var var_4 = var_0.x;
    return !var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<u32, 7>();
    let var_0 = ~global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, ~1u), 7u)];
    global4 = array<u32, 7>();
    var var_1 = func_1(u_input.a);
    var var_2 = _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.a, u_input.a, -14822i), _wgslsmith_mod_vec3_i32(~vec3<i32>(1i, 58860i, -1i), firstTrailingBit(vec3<i32>(u_input.a, -1i, 61226i)))), vec3<i32>(u_input.a, ~u_input.a, 0i) | abs(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, -2147483647i, -61586i), vec3<i32>(u_input.a, u_input.a, 2147483647i)))) << (vec3<u32>(~var_0, var_0, global4[_wgslsmith_index_u32(var_0, 7u)]) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1534f))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1227f, 553f)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~global4[_wgslsmith_index_u32(0u, 7u)], ~global4[_wgslsmith_index_u32(14560u, 7u)]), 3u)]))), 25679u, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(35003u, var_0, _wgslsmith_mod_u32(var_0, 0u), ~var_0), vec4<u32>(0u, abs(var_0), ~var_0, abs(var_0)), firstLeadingBit(vec4<u32>(8615u, 0u, 71809u, 41096u)) & vec4<u32>(var_0, global4[_wgslsmith_index_u32(0u, 7u)], 0u, var_0)));
}

