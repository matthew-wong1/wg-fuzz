struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: i32,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> bool {
    global0 = array<i32, 26>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(165f + _wgslsmith_f_op_f32(f32(-1f) * -876f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 713f) + _wgslsmith_f_op_f32(abs(-1000f))), 504f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -125f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-219f, 840f, 348f, 1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(589f, -860f, -196f, 777f)))) + vec4<f32>(513f, -275f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(258f - -274f) * 1199f), _wgslsmith_f_op_f32(f32(-1f) * -949f))));
    var var_1 = Struct_1(12780u, abs(vec2<u32>(_wgslsmith_mult_u32(1u, 4294967295u), max(u_input.d.x, u_input.c.x))), ~vec3<u32>(select(~u_input.d.x, u_input.c.x, true), u_input.c.x, firstTrailingBit(u_input.c.x) ^ abs(77219u)), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(reverseBits(86712u), u_input.c.x << (u_input.c.x % 32u), 1u, 88439u << (u_input.c.x % 32u)), ~vec4<u32>(60138u, 55877u, 0u, 4294967295u)), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 122670u, u_input.c.x, 47948u), vec4<u32>(4294967295u, 1u, 1u, 1u)) & (vec4<u32>(0u, u_input.c.x, u_input.d.x, 1u) >> (vec4<u32>(30592u, u_input.c.x, 69674u, u_input.c.x) % vec4<u32>(32u))))));
    var var_2 = vec4<u32>(_wgslsmith_div_u32(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, 37180u, 4294967295u), vec4<u32>(1u, 1u, 52699u, 4294967295u))) & var_1.a, 1u, ~(~2232u), _wgslsmith_clamp_u32(firstTrailingBit(0u ^ var_1.d), ~u_input.c.x, 15518u) | 0u);
    let var_3 = Struct_5(var_1.a, Struct_1(var_1.a, _wgslsmith_clamp_vec2_u32(var_1.b, reverseBits(~u_input.c), _wgslsmith_mod_vec2_u32(vec2<u32>(var_2.x, 4294967295u), vec2<u32>(0u, u_input.d.x))), abs(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.c.x, var_1.b.x, var_2.x), var_2.yyw)), ~(~4294967295u)), Struct_3(global0[_wgslsmith_index_u32(u_input.d.x, 26u)], Struct_1(_wgslsmith_div_u32(22304u, ~var_1.a), u_input.c | abs(u_input.c), ~vec3<u32>(var_2.x, var_1.c.x, var_2.x), 0u), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1414f) + -1912f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.wyz)), u_input.a, ~0u)), Struct_3(-24677i, Struct_1(u_input.c.x, var_1.c.zz, select(~var_2.yyx, vec3<u32>(0u, 0u, 0u) & vec3<u32>(var_1.a, 28642u, var_1.a), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false))), ~_wgslsmith_mult_u32(0u, var_1.d)), Struct_2(var_0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -1000f))), i32(-1i) * -2147483647i, 0u)));
    return max(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.b.zz, u_input.b.xx, vec2<i32>(2147483647i, var_3.c.c.c)), max(reverseBits(u_input.b.ww), -vec2<i32>(3i, u_input.b.x))), ~(~2147483647i)) > select(~global0[_wgslsmith_index_u32(~var_3.a, 26u)], ~(-31947i), false);
}

fn func_2(arg_0: vec4<bool>) -> Struct_3 {
    var var_0 = !vec3<bool>(true, arg_0.x, arg_0.x);
    var var_1 = Struct_4(true, -(47510i << (min(u_input.d.x, 0u) % 32u)));
    var_1 = Struct_4(func_3(), firstLeadingBit(38158i));
    var_0 = select(vec3<bool>(all(arg_0), any(var_0.zz), var_1.a), !(!select(!vec3<bool>(false, var_1.a, var_1.a), !arg_0.yyx, !var_1.a)), false);
    let var_2 = select(vec4<bool>(true, all(!vec3<bool>(var_0.x, false, true)), false, true), select(!vec4<bool>(false, any(vec3<bool>(arg_0.x, arg_0.x, false)), arg_0.x, select(arg_0.x, false, false)), !(!arg_0), select(!(!arg_0), vec4<bool>(var_0.x != var_0.x, true, var_0.x, all(vec3<bool>(var_1.a, false, false))), !arg_0)), !vec4<bool>(all(!arg_0), any(select(arg_0, vec4<bool>(var_1.a, var_1.a, false, var_1.a), arg_0.x)), false, true && (u_input.e >= -63712i)));
    return Struct_3(global0[_wgslsmith_index_u32(u_input.d.x, 26u)], Struct_1(4294967295u, u_input.c, ~vec3<u32>(select(u_input.d.x, u_input.c.x, false), _wgslsmith_sub_u32(u_input.c.x, 4294967295u), ~25554u), 4294967295u), Struct_2(-839f, vec3<f32>(-1095f, _wgslsmith_f_op_f32(1899f - _wgslsmith_f_op_f32(max(-1000f, 1531f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-889f - -1314f) + _wgslsmith_f_op_f32(f32(-1f) * -2071f))), var_1.b, u_input.d.x & ~_wgslsmith_mod_u32(2934u, u_input.c.x)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_5, arg_3: i32) -> Struct_3 {
    global0 = array<i32, 26>();
    let var_0 = Struct_4(true, _wgslsmith_add_i32(~(-u_input.a), i32(-1i) * -24440i));
    var var_1 = _wgslsmith_clamp_i32(~func_2(select(vec4<bool>(var_0.a, false, true, true), vec4<bool>(var_0.a, true, false, var_0.a), vec4<bool>(var_0.a, var_0.a, true, false))).c.c >> (~4294967295u % 32u), _wgslsmith_add_i32(global0[_wgslsmith_index_u32(u_input.c.x, 26u)], -(~min(35170i, arg_2.c.c.c))), _wgslsmith_clamp_i32(var_0.b, _wgslsmith_sub_i32(2106i, arg_1.a), 0i));
    var var_2 = Struct_3(func_2(select(!select(vec4<bool>(var_0.a, false, false, var_0.a), vec4<bool>(true, false, var_0.a, var_0.a), true), select(vec4<bool>(var_0.a, var_0.a, var_0.a, false), vec4<bool>(true, false, true, var_0.a), vec4<bool>(var_0.a, false, false, var_0.a)), select(!vec4<bool>(true, var_0.a, true, false), select(vec4<bool>(false, false, true, true), vec4<bool>(var_0.a, var_0.a, true, false), false), any(vec2<bool>(false, var_0.a))))).a, arg_1.b, func_2(vec4<bool>(!(4294967295u > u_input.d.x), !any(vec3<bool>(var_0.a, var_0.a, false)), var_0.a, !(true || var_0.a))).c);
    return func_2(select(select(vec4<bool>(all(vec3<bool>(false, var_0.a, var_0.a)), !var_0.a, true, all(vec4<bool>(var_0.a, false, var_0.a, true))), vec4<bool>(var_0.a | var_0.a, false, var_0.a, var_0.a || var_0.a), var_0.a), select(select(!vec4<bool>(true, var_0.a, var_0.a, false), vec4<bool>(true, true, var_0.a, false), !var_0.a), vec4<bool>(true, var_0.a, all(vec4<bool>(false, var_0.a, false, true)), false), !select(vec4<bool>(false, var_0.a, var_0.a, var_0.a), vec4<bool>(var_0.a, var_0.a, var_0.a, true), vec4<bool>(var_0.a, true, true, var_0.a))), vec4<bool>(true, !(!var_0.a), all(vec3<bool>(true, var_0.a, false)), true)));
}

fn func_5(arg_0: i32, arg_1: Struct_3) -> vec3<bool> {
    global0 = array<i32, 26>();
    global0 = array<i32, 26>();
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_1.c.a));
    var var_1 = arg_1.b;
    var var_2 = countOneBits(min(_wgslsmith_mult_i32(~global0[_wgslsmith_index_u32(arg_1.c.d, 26u)] & -2147483647i, reverseBits(u_input.e | 358i)), 0i));
    return vec3<bool>(true, false, any(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), false), vec4<bool>(true, false, true, false))));
}

fn func_6(arg_0: u32, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = max(~u_input.d.x, u_input.d.x);
    var var_1 = Struct_1(~_wgslsmith_div_u32(u_input.d.x, firstTrailingBit(23203u)), vec2<u32>(4294967295u, ~(~1u)), countOneBits(vec3<u32>(_wgslsmith_sub_u32(u_input.d.x, 38494u), 1u, 1u)), ~(~_wgslsmith_dot_vec2_u32(func_4(vec4<f32>(-258f, 694f, -870f, -629f), Struct_3(0i, Struct_1(80725u, u_input.d.xx, u_input.d, 0u), Struct_2(114f, vec3<f32>(171f, -482f, -308f), -38988i, 39365u)), Struct_5(0u, Struct_1(23070u, u_input.c, vec3<u32>(u_input.d.x, 0u, u_input.c.x), arg_0), Struct_3(u_input.e, Struct_1(u_input.c.x, u_input.d.xz, u_input.d, arg_0), Struct_2(-1476f, vec3<f32>(-182f, 446f, -530f), 22997i, 65450u)), Struct_3(global0[_wgslsmith_index_u32(u_input.c.x, 26u)], Struct_1(0u, vec2<u32>(arg_0, arg_0), vec3<u32>(u_input.d.x, 18168u, arg_0), 0u), Struct_2(-550f, vec3<f32>(-485f, 3166f, -1000f), global0[_wgslsmith_index_u32(arg_0, 26u)], 25868u))), global0[_wgslsmith_index_u32(arg_0, 26u)]).b.b, ~u_input.d.zy)));
    var var_2 = arg_1.yz;
    var_1 = Struct_1(~arg_0, _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(16031u, 45848u), vec2<u32>(99397u, var_1.d), vec2<u32>(abs(u_input.d.x), ~50700u)), reverseBits(~vec2<u32>(arg_0, 5656u))), ~(~u_input.d), u_input.c.x);
    let var_3 = global0[_wgslsmith_index_u32(~var_1.b.x, 26u)];
    return Struct_1(firstLeadingBit(firstLeadingBit(~u_input.d.x)) << (8703u % 32u), firstLeadingBit(var_1.b), ~(countOneBits(u_input.d ^ vec3<u32>(4294967295u, 1u, var_1.d)) << (vec3<u32>(select(3646u, 1u, false), _wgslsmith_clamp_u32(55810u, arg_0, 4294967295u), 1u & arg_0) % vec3<u32>(32u))), ~max(20705u, u_input.d.x));
}

fn func_1(arg_0: bool) -> vec3<i32> {
    var var_0 = func_6(countOneBits(1u), select(func_5(1i, func_4(vec4<f32>(1f, 1f, 1f, 1f), func_2(vec4<bool>(arg_0, arg_0, arg_0, false)), Struct_5(u_input.d.x, Struct_1(u_input.c.x, vec2<u32>(1u, u_input.d.x), u_input.d, u_input.c.x), Struct_3(u_input.e, Struct_1(u_input.c.x, vec2<u32>(0u, u_input.d.x), u_input.d, u_input.c.x), Struct_2(-535f, vec3<f32>(-1000f, -412f, -638f), u_input.e, 4294967295u)), Struct_3(10995i, Struct_1(25876u, vec2<u32>(58761u, u_input.c.x), vec3<u32>(u_input.c.x, u_input.d.x, 1u), u_input.d.x), Struct_2(-960f, vec3<f32>(-1770f, 504f, 384f), -7072i, 24178u))), -global0[_wgslsmith_index_u32(1u, 26u)])), func_5(1i, Struct_3(-23101i | u_input.b.x, Struct_1(u_input.c.x, vec2<u32>(0u, 4294967295u), u_input.d, u_input.d.x), func_4(vec4<f32>(-791f, 731f, 2180f, -335f), Struct_3(global0[_wgslsmith_index_u32(4294967295u, 26u)], Struct_1(36133u, vec2<u32>(0u, 1u), u_input.d, 36348u), Struct_2(-531f, vec3<f32>(352f, 1000f, -720f), 1i, 1u)), Struct_5(4294967295u, Struct_1(u_input.d.x, vec2<u32>(u_input.c.x, u_input.c.x), vec3<u32>(u_input.d.x, 0u, 4294967295u), u_input.d.x), Struct_3(2147483647i, Struct_1(4294967295u, vec2<u32>(70400u, 4294967295u), vec3<u32>(u_input.d.x, u_input.d.x, u_input.c.x), u_input.c.x), Struct_2(1355f, vec3<f32>(-109f, 150f, -1000f), -1i, 0u)), Struct_3(u_input.a, Struct_1(u_input.d.x, vec2<u32>(72068u, u_input.c.x), u_input.d, u_input.c.x), Struct_2(-1243f, vec3<f32>(-1586f, 687f, 1000f), -59400i, u_input.c.x))), 18818i).c)), 0u <= u_input.d.x));
    let var_1 = 35082u;
    return ~select(u_input.b.www, countOneBits(vec3<i32>(-26791i, global0[_wgslsmith_index_u32(var_0.c.x, 26u)], -global0[_wgslsmith_index_u32(u_input.c.x, 26u)])), select(true, false, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(true);
    var var_1 = func_5(-countOneBits(abs(~u_input.e)), Struct_3(min(firstLeadingBit(global0[_wgslsmith_index_u32(~u_input.d.x, 26u)]), 1i), Struct_1(u_input.d.x, abs(vec2<u32>(u_input.d.x, u_input.c.x)), select(vec3<u32>(4294967295u, 41553u, u_input.d.x), u_input.d, false) << (vec3<u32>(1u, u_input.c.x, 24706u) % vec3<u32>(32u)), ~(~1u)), func_2(vec4<bool>(false, true, false, false)).c)).zy;
    global0 = array<i32, 26>();
    let var_2 = true || var_1.x;
    let var_3 = !(!func_5(var_0.x, func_4(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1176f, 494f, -2838f, -1000f))), func_2(vec4<bool>(var_1.x, true, var_2, var_1.x)), Struct_5(u_input.d.x, Struct_1(u_input.d.x, vec2<u32>(5872u, u_input.d.x), vec3<u32>(0u, u_input.c.x, 79588u), 1u), Struct_3(global0[_wgslsmith_index_u32(4294967295u, 26u)], Struct_1(u_input.d.x, u_input.d.yz, vec3<u32>(17735u, 4294967295u, u_input.d.x), u_input.d.x), Struct_2(-792f, vec3<f32>(-1097f, 1259f, 748f), var_0.x, u_input.d.x)), Struct_3(global0[_wgslsmith_index_u32(u_input.d.x, 26u)], Struct_1(u_input.d.x, u_input.c, vec3<u32>(83428u, u_input.c.x, u_input.d.x), u_input.c.x), Struct_2(-1149f, vec3<f32>(384f, 167f, -571f), var_0.x, 56869u))), ~var_0.x)));
    let var_4 = _wgslsmith_dot_vec4_i32(min(-vec4<i32>(u_input.e, ~2147483647i, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(u_input.c.x, 26u)], -29501i), abs(var_0.x)), vec4<i32>(-abs(-2147483647i), _wgslsmith_mod_i32(i32(-1i) * -1i, ~1i), min(14455i, func_4(vec4<f32>(422f, -1007f, -1574f, 808f), Struct_3(-1i, Struct_1(u_input.c.x, vec2<u32>(1u, u_input.d.x), vec3<u32>(5387u, u_input.c.x, u_input.c.x), 4294967295u), Struct_2(-1000f, vec3<f32>(648f, -917f, -440f), var_0.x, 28355u)), Struct_5(u_input.c.x, Struct_1(4294967295u, vec2<u32>(u_input.d.x, u_input.d.x), u_input.d, u_input.d.x), Struct_3(var_0.x, Struct_1(4294967295u, vec2<u32>(u_input.d.x, 20294u), vec3<u32>(u_input.c.x, 43315u, u_input.c.x), u_input.c.x), Struct_2(-712f, vec3<f32>(130f, -1541f, -827f), 40735i, 0u)), Struct_3(2507i, Struct_1(u_input.c.x, vec2<u32>(u_input.c.x, 66457u), u_input.d, u_input.d.x), Struct_2(-312f, vec3<f32>(-275f, -507f, 713f), 15556i, 4294967295u))), u_input.b.x).a), select(var_0.x, var_0.x, !var_3.x))), vec4<i32>(var_0.x ^ -2147483647i, countOneBits(1i >> ((u_input.d.x ^ u_input.c.x) % 32u)), var_0.x, select(func_1(true).x, global0[_wgslsmith_index_u32(u_input.d.x, 26u)], true)));
    let var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1893f), _wgslsmith_f_op_f32(-func_2(vec4<bool>(false, false, false, false)).c.a)), vec2<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(trunc(600f))), _wgslsmith_f_op_f32(ceil(-2158f)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5, var_4, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_5.x), 933f, 1183f)) - vec3<f32>(799f, func_2(!vec4<bool>(var_2, var_1.x, false, var_3.x)).c.a, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(var_5.x + var_5.x)))));
}

