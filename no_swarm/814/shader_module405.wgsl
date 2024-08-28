struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32> = array<u32, 32>(1u, 123786u, 4294967295u, 45179u, 0u, 27218u, 7096u, 4294967295u, 25029u, 1u, 4071u, 4294967295u, 61478u, 25243u, 0u, 51961u, 4294967295u, 0u, 0u, 0u, 592u, 0u, 1u, 23818u, 1u, 41387u, 56567u, 32953u, 1u, 41528u, 4294967295u, 65682u);

var<private> global1: array<i32, 25> = array<i32, 25>(-57977i, 1536i, -12529i, -43104i, 2177i, 2147483647i, 2147483647i, 7501i, -24548i, -1i, -29177i, 19435i, i32(-2147483648), 22453i, -1i, 1i, 2147483647i, 0i, -29701i, 32989i, 30864i, -1i, 19595i, 16841i, 19954i);

var<private> global2: array<Struct_1, 9>;

var<private> global3: Struct_2;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: u32, arg_1: f32) -> i32 {
    return 1i;
}

fn func_1(arg_0: Struct_5, arg_1: Struct_5) -> u32 {
    var var_0 = select(select(_wgslsmith_mult_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global3.a.a.x, 32u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.a.a.x, 32u)], 32u)], global3.b.x, 58555u), vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9613u, 32u)], 32u)], global3.a.a.x, 11531u)), ~abs(vec4<u32>(global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(global3.a.a.x, 32u)], 4294967295u, 27938u))), ~firstLeadingBit(~vec4<u32>(34552u, 1u, 9956u, 52890u)), select(global3.a.b.x, !(global0[_wgslsmith_index_u32(1u, 32u)] > 4294967295u), all(!vec4<bool>(global3.a.b.x, global3.a.b.x, global3.a.b.x, global3.a.b.x)))), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], 2805u, ~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(global3.b.x, 102006u), ~20558u, ~1u), 0u), select(!(!(!global3.a.b)), vec4<bool>(!(global3.a.b.x | true), global3.a.b.x, select(false, global3.a.b.x, !global3.a.b.x), true & global3.a.b.x), global3.a.b.x));
    var var_1 = ~_wgslsmith_clamp_i32(abs(func_2(~var_0.x, arg_1.a.x)), -_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2000i) ^ arg_0.b.yz, _wgslsmith_mod_vec2_i32(global3.c.zx, global3.c.yx)), _wgslsmith_add_i32(-2147483647i, ~(u_input.a.x ^ u_input.a.x)));
    let var_2 = Struct_4(global2[_wgslsmith_index_u32(global3.b.x, 9u)], _wgslsmith_f_op_f32(abs(-1000f)), global2[_wgslsmith_index_u32(global3.b.x, 9u)]);
    global3 = Struct_2(global3.a, ~vec3<u32>(49413u, global0[_wgslsmith_index_u32(0u, 32u)], var_0.x), _wgslsmith_add_vec4_i32(select(_wgslsmith_add_vec4_i32(global3.c, vec4<i32>(-26211i, u_input.a.x, -43424i, u_input.a.x)), vec4<i32>(arg_1.b.x, arg_1.b.x, -1i, global1[_wgslsmith_index_u32(4294967295u, 25u)]), !vec4<bool>(true, global3.a.b.x, true, true)), arg_1.b) | _wgslsmith_mult_vec4_i32(~global3.c ^ arg_0.b, -reverseBits(vec4<i32>(arg_0.b.x, -1i, u_input.a.x, arg_0.b.x))));
    let var_3 = global3.a;
    return 1u;
}

fn func_3(arg_0: vec4<bool>, arg_1: u32) -> Struct_4 {
    global0 = array<u32, 32>();
    let var_0 = _wgslsmith_f_op_f32(select(1285f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1053f - -104f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-627f - 568f)), arg_0.x)))), _wgslsmith_sub_i32(~(-7282i), select(1i, i32(-1i) * -34713i, arg_0.x)) <= u_input.a.x));
    return Struct_4(global3.a, _wgslsmith_f_op_f32(f32(-1f) * -579f), Struct_1(~firstTrailingBit(~vec2<u32>(global0[_wgslsmith_index_u32(41408u, 32u)], 87849u)), !select(global3.a.b, select(vec4<bool>(true, global3.a.b.x, true, arg_0.x), vec4<bool>(true, false, true, arg_0.x), true), global3.c.x != u_input.a.x)));
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: Struct_2) -> Struct_2 {
    global1 = array<i32, 25>();
    let var_0 = Struct_1(global3.a.a, arg_0.a.b);
    var var_1 = _wgslsmith_mod_u32(37918u, min(~13836u, func_1(Struct_5(vec2<f32>(-2354f, arg_1), vec4<i32>(arg_2.c.x, 0i, global3.c.x, 1i)), Struct_5(vec2<f32>(arg_1, arg_0.b), vec4<i32>(-2147483647i, u_input.a.x, arg_2.c.x, global1[_wgslsmith_index_u32(13833u, 25u)])))) | reverseBits(_wgslsmith_clamp_u32(12004u, arg_2.b.x, ~37984u)));
    var var_2 = false;
    global0 = array<u32, 32>();
    return Struct_2(Struct_1(_wgslsmith_mult_vec2_u32(var_0.a, ~max(arg_0.c.a, global3.b.zy)), !vec4<bool>(select(false, global3.a.b.x, arg_2.a.b.x), arg_0.b != 441f, arg_2.a.b.x & false, !arg_2.a.b.x)), countOneBits(~vec3<u32>(1u, arg_2.a.a.x, arg_2.a.a.x) ^ global3.b) | _wgslsmith_mod_vec3_u32(~(arg_2.b << (vec3<u32>(global3.a.a.x, 0u, 67683u) % vec3<u32>(32u))), ~vec3<u32>(19383u, arg_2.a.a.x, 4294967295u) << (~arg_2.b % vec3<u32>(32u))), firstTrailingBit(_wgslsmith_mod_vec4_i32(reverseBits(_wgslsmith_add_vec4_i32(global3.c, vec4<i32>(-6379i, 23206i, global1[_wgslsmith_index_u32(arg_0.a.a.x, 25u)], -24268i))), vec4<i32>(-25722i & global3.c.x, max(arg_2.c.x, -4020i), select(54434i, arg_2.c.x, false), -53247i ^ u_input.a.x))));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2) -> Struct_3 {
    var var_0 = ~global3.a.a.x;
    global2 = array<Struct_1, 9>();
    let var_1 = -1368f;
    let var_2 = _wgslsmith_f_op_f32(499f + _wgslsmith_f_op_f32(1379f * var_1));
    var var_3 = func_4(Struct_4(func_3(arg_1.a.b, ~4294967295u).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2)))), global3.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(788f * var_1), _wgslsmith_f_op_f32(-var_1)))), func_4(Struct_4(global3.a, _wgslsmith_f_op_f32(var_1 * var_1), func_4(Struct_4(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 32u)], 9u)], var_2, arg_1.a), var_2, arg_1).a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_2, -847f))), _wgslsmith_div_f32(var_1, var_1), all(arg_1.a.b.wy))), arg_1)).a;
    return Struct_3(countOneBits(vec4<u32>(1u ^ var_3.a.x, 1u, ~var_3.a.x, 4294967295u)), var_2, func_4(func_3(func_3(func_4(Struct_4(Struct_1(vec2<u32>(1u, 4294967295u), vec4<bool>(false, false, arg_1.a.b.x, var_3.b.x)), 1000f, Struct_1(vec2<u32>(var_3.a.x, 10031u), var_3.b)), var_1, Struct_2(Struct_1(vec2<u32>(arg_1.b.x, global3.a.a.x), vec4<bool>(false, true, false, arg_1.a.b.x)), global3.b, vec4<i32>(global3.c.x, u_input.a.x, global3.c.x, -11625i))).a.b, ~18317u).a.b, ~_wgslsmith_mod_u32(0u, 1u)), var_1, func_4(Struct_4(func_4(Struct_4(global3.a, -1285f, global2[_wgslsmith_index_u32(0u, 9u)]), -456f, Struct_2(Struct_1(vec2<u32>(77494u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1.b.x, 32u)], 32u)]), var_3.b), arg_1.b, vec4<i32>(1i, global3.c.x, 1i, 2147483647i))).a, _wgslsmith_f_op_f32(f32(-1f) * -973f), func_3(global3.a.b, 1u).a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1))), Struct_2(Struct_1(vec2<u32>(global3.a.a.x, global3.b.x), vec4<bool>(true, arg_1.a.b.x, false, global3.a.b.x)), ~arg_1.b, global3.c ^ vec4<i32>(-2147483647i, -2147483647i, arg_1.c.x, arg_1.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 25>();
    var var_0 = Struct_1(_wgslsmith_clamp_vec2_u32(global3.a.a, vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.b.x, 32u)], 32u)] << (4294967295u % 32u), 32u)], ~10054u) ^ firstLeadingBit(vec2<u32>(global0[_wgslsmith_index_u32(global3.a.a.x, 32u)], 136153u)), ~(_wgslsmith_mod_vec2_u32(global3.b.yz, vec2<u32>(31226u, 0u)) << ((global3.b.xx | vec2<u32>(global0[_wgslsmith_index_u32(6184u, 32u)], 17850u)) % vec2<u32>(32u)))), select(!vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 25u)] >= 1i, any(global3.a.b), global3.a.b.x, false), !(!(!vec4<bool>(global3.a.b.x, false, global3.a.b.x, global3.a.b.x))), vec4<bool>(_wgslsmith_mult_u32(global3.b.x, 10796u) >= 43670u, true & any(global3.a.b), true && (global3.a.a.x == global0[_wgslsmith_index_u32(1u, 32u)]), global3.a.b.x)));
    let var_1 = func_5(global3.c, func_4(func_3(select(vec4<bool>(false, false, global3.a.b.x, false), vec4<bool>(false, var_0.b.x, global3.a.b.x, global3.a.b.x), true), _wgslsmith_sub_u32(func_1(Struct_5(vec2<f32>(1000f, 970f), vec4<i32>(global1[_wgslsmith_index_u32(0u, 25u)], 6490i, global1[_wgslsmith_index_u32(16155u, 25u)], global3.c.x)), Struct_5(vec2<f32>(934f, 751f), vec4<i32>(global3.c.x, 0i, -47013i, global3.c.x))), global3.b.x ^ var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(-198f)))), Struct_2(global3.a, abs(global3.b) >> (_wgslsmith_clamp_vec3_u32(global3.b, vec3<u32>(111222u, var_0.a.x, 74985u), vec3<u32>(global3.a.a.x, 4294967295u, 73395u)) % vec3<u32>(32u)), abs(global3.c) >> (~vec4<u32>(25429u, global0[_wgslsmith_index_u32(17975u, 32u)], global3.a.a.x, global3.a.a.x) % vec4<u32>(32u)))));
    var var_2 = func_5(vec4<i32>(min(~0i, -2147483647i), _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(~firstTrailingBit(global0[_wgslsmith_index_u32(4294967295u, 32u)]), 25u)], ~global1[_wgslsmith_index_u32(countOneBits(46637u), 25u)]), -47062i, _wgslsmith_div_i32(3100i, -25927i)), func_4(Struct_4(Struct_1(countOneBits(vec2<u32>(global0[_wgslsmith_index_u32(global3.a.a.x, 32u)], 0u)), func_3(vec4<bool>(global3.a.b.x, global3.a.b.x, true, false), global0[_wgslsmith_index_u32(var_0.a.x, 32u)]).c.b), var_1.b, global2[_wgslsmith_index_u32(var_1.a.x >> (1u % 32u), 9u)]), _wgslsmith_div_f32(var_1.b, var_1.b), Struct_2(Struct_1(var_0.a, vec4<bool>(true, global3.a.b.x, var_1.c.a.b.x, false)), vec3<u32>(_wgslsmith_div_u32(19097u, var_1.c.a.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 67868u, 43343u, 29051u), var_1.a), 4294967295u), _wgslsmith_div_vec4_i32(global3.c, func_5(vec4<i32>(global3.c.x, 0i, global1[_wgslsmith_index_u32(62415u, 25u)], -2147483647i), Struct_2(Struct_1(var_1.a.wx, vec4<bool>(true, global3.a.b.x, var_1.c.a.b.x, global3.a.b.x)), var_1.c.b, vec4<i32>(u_input.a.x, 0i, u_input.a.x, global1[_wgslsmith_index_u32(0u, 25u)]))).c.c)))).c;
    var var_3 = Struct_4(Struct_1(_wgslsmith_sub_vec2_u32(firstLeadingBit(~vec2<u32>(var_2.a.a.x, 52215u)), var_1.a.xz), !(!global3.a.b)), 328f, Struct_1(firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, var_1.c.a.a.x) & vec2<u32>(var_0.a.x, 4294967295u), vec2<u32>(global0[_wgslsmith_index_u32(var_2.b.x, 32u)], global3.b.x))), var_2.a.b));
    let var_4 = _wgslsmith_clamp_vec4_u32(var_1.a, _wgslsmith_div_vec4_u32(vec4<u32>(~global3.b.x, ~(var_0.a.x << (44131u % 32u)), global0[_wgslsmith_index_u32(var_2.a.a.x, 32u)], var_0.a.x << (~var_2.a.a.x % 32u)), var_1.a), ~_wgslsmith_div_vec4_u32(var_1.a, var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.b, var_3.b)) * func_5(var_2.c, var_1.c).b), all(var_1.c.a.b))))), vec2<i32>(abs(_wgslsmith_add_i32(global3.c.x, -9556i)), func_2(~var_4.x, var_1.b)) & ((var_2.c.wx & select(var_2.c.yz, u_input.a, global3.a.b.yx)) >> (var_1.c.b.xy % vec2<u32>(32u))), min(abs(~var_4), select(vec4<u32>(2731u, 23296u, 88316u, global0[_wgslsmith_index_u32(global3.a.a.x, 32u)]), var_1.a >> (vec4<u32>(64930u, var_1.c.b.x, 86856u, 52281u) % vec4<u32>(32u)), !var_3.a.b)) | var_1.a, _wgslsmith_mult_vec4_i32(vec4<i32>(9982i, -min(2147483647i, 73613i), global1[_wgslsmith_index_u32(var_2.a.a.x, 25u)], ~_wgslsmith_dot_vec4_i32(var_2.c, vec4<i32>(u_input.a.x, global1[_wgslsmith_index_u32(50132u, 25u)], var_1.c.c.x, global3.c.x))), _wgslsmith_sub_vec4_i32(reverseBits(-vec4<i32>(var_2.c.x, u_input.a.x, -1i, 48345i)), select(global3.c << (var_1.a % vec4<u32>(32u)), var_1.c.c, false))), global3.c.zx);
}

