struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: Struct_2,
    d: i32,
    e: vec3<u32>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29> = array<f32, 29>(1304f, -1049f, -378f, -735f, 535f, -1122f, -723f, -984f, -1929f, 249f, 653f, -160f, 816f, 547f, -1244f, -1533f, 287f, -201f, 1192f, -106f, -1000f, -266f, 335f, -734f, 155f, -313f, -565f, -869f, -393f);

var<private> global1: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(vec3<u32>(39165u, 4294967295u, 35260u), false, Struct_2(Struct_1(105863u, vec4<u32>(4294967295u, 4294967295u, 35178u, 0u)), vec4<u32>(58244u, 24328u, 0u, 4294967295u), vec3<u32>(4294967295u, 0u, 4294967295u), 11160u), 2147483647i, vec3<u32>(1u, 12371u, 4294967295u)), Struct_3(vec3<u32>(52305u, 1u, 15989u), true, Struct_2(Struct_1(0u, vec4<u32>(1u, 0u, 4294967295u, 13160u)), vec4<u32>(1u, 1u, 92295u, 65931u), vec3<u32>(0u, 9552u, 26303u), 1u), 5041i, vec3<u32>(20402u, 1u, 34373u)), Struct_3(vec3<u32>(5789u, 32778u, 4294967295u), false, Struct_2(Struct_1(93663u, vec4<u32>(33410u, 4294967295u, 8827u, 1u)), vec4<u32>(1u, 10099u, 22535u, 1u), vec3<u32>(34787u, 5867u, 16480u), 0u), 1i, vec3<u32>(4294967295u, 60402u, 42487u)), Struct_3(vec3<u32>(0u, 2825u, 4294967295u), false, Struct_2(Struct_1(1u, vec4<u32>(32158u, 56090u, 24328u, 35404u)), vec4<u32>(4294967295u, 10964u, 61659u, 0u), vec3<u32>(80467u, 4294967295u, 35237u), 0u), 125i, vec3<u32>(17491u, 24878u, 36658u)), Struct_3(vec3<u32>(0u, 1u, 77177u), false, Struct_2(Struct_1(87102u, vec4<u32>(37699u, 39219u, 63610u, 35898u)), vec4<u32>(133513u, 1u, 1u, 64069u), vec3<u32>(4294967295u, 0u, 73100u), 37816u), 1i, vec3<u32>(4294967295u, 0u, 58238u)), Struct_3(vec3<u32>(32354u, 1u, 23027u), false, Struct_2(Struct_1(1u, vec4<u32>(8416u, 29816u, 2741u, 35811u)), vec4<u32>(1u, 72338u, 75598u, 72879u), vec3<u32>(10091u, 4294967295u, 23209u), 25249u), 1i, vec3<u32>(4294967295u, 12922u, 7218u)), Struct_3(vec3<u32>(42342u, 44071u, 19450u), true, Struct_2(Struct_1(66514u, vec4<u32>(40836u, 29572u, 71492u, 15152u)), vec4<u32>(9523u, 10397u, 58731u, 2888u), vec3<u32>(37359u, 0u, 1u), 1u), 45055i, vec3<u32>(55133u, 7509u, 0u)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: i32) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1177f, global0[_wgslsmith_index_u32(u_input.a.x, 29u)], global0[_wgslsmith_index_u32(u_input.a.x, 29u)]), vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 29u)], -379f, 337f)))))));
}

fn func_2() -> vec4<bool> {
    let var_0 = -12329i;
    global0 = array<f32, 29>();
    global0 = array<f32, 29>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-324f, global0[_wgslsmith_index_u32(u_input.a.x, 29u)], -1006f) * vec3<f32>(-469f, -2530f, 108f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)], 448f) * _wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(45415u, 29u)], 463f, global0[_wgslsmith_index_u32(u_input.a.x, 29u)]), vec3<f32>(-900f, global0[_wgslsmith_index_u32(u_input.a.x, 29u)], -1600f))), false)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(false, -1i, var_0))), _wgslsmith_div_vec3_f32(vec3<f32>(1000f, global0[_wgslsmith_index_u32(u_input.a.x, 29u)], global0[_wgslsmith_index_u32(7429u, 29u)]), vec3<f32>(global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(3686u, 29u)], global0[_wgslsmith_index_u32(u_input.a.x, 29u)])), true))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-650f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1386f))), -1139f) + vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1354f)))), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(~u_input.a.x, 29u)])), 1423f)));
    let var_2 = -909f;
    return !vec4<bool>(true, u_input.a.x > u_input.a.x, false | all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), true);
}

fn func_1(arg_0: i32, arg_1: Struct_5, arg_2: Struct_1, arg_3: i32) -> vec2<bool> {
    let var_0 = !vec2<bool>(all(func_2()), false);
    return select(var_0, var_0, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_clamp_i32(0i, ~(-(~0i)), _wgslsmith_dot_vec2_i32(abs(-vec2<i32>(-23366i, 13613i)), select(-vec2<i32>(1i, 43954i), -vec2<i32>(0i, 36392i), func_1(-23735i, Struct_5(Struct_1(48549u, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u))), Struct_1(47303u, vec4<u32>(8320u, u_input.a.x, u_input.a.x, u_input.a.x)), 28378i)))));
    let var_1 = vec3<i32>(_wgslsmith_div_i32(var_0.a, ~(~var_0.a)), 4710i, _wgslsmith_sub_i32(-2147483647i, firstLeadingBit(_wgslsmith_mult_i32(-55072i, var_0.a)) << ((~u_input.a.x << (u_input.a.x % 32u)) % 32u)));
    let var_2 = firstTrailingBit(~_wgslsmith_add_vec2_u32(u_input.a | u_input.a, u_input.a)) | (vec2<u32>(25665u, ~1u) ^ ~u_input.a);
    var var_3 = _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a ^ _wgslsmith_sub_i32(var_1.x, var_0.a << (6307u % 32u)), _wgslsmith_dot_vec3_i32(var_1, vec3<i32>(var_0.a, var_1.x, -23469i)) << (_wgslsmith_div_u32(~var_2.x, var_2.x) % 32u), var_1.x, _wgslsmith_div_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_0.a), vec2<i32>(45059i, -1i)), var_0.a)), max(firstTrailingBit(vec4<i32>(var_1.x, 0i, var_0.a, 22832i) >> (~vec4<u32>(u_input.a.x, u_input.a.x, var_2.x, 0u) % vec4<u32>(32u))), ~vec4<i32>(var_0.a, ~(-33520i), ~(-34765i), _wgslsmith_add_i32(var_1.x, var_0.a))));
    let var_4 = var_3.ywx;
    let var_5 = select(var_2.x, ~4294967295u, all(select(vec4<bool>(true, true, func_2().x, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true))));
    global0 = array<f32, 29>();
    var var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 29u)]) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1153f + -629f))) + global0[_wgslsmith_index_u32(~(~(~(4294967295u & u_input.a.x))), 29u)]);
    let var_7 = Struct_2(Struct_1(~_wgslsmith_mod_u32(var_5, max(var_2.x, u_input.a.x)), ~max(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.x, 40194u, var_2.x, u_input.a.x), vec4<u32>(38279u, var_2.x, u_input.a.x, 1u), vec4<u32>(u_input.a.x, var_5, 0u, 74328u)), firstTrailingBit(vec4<u32>(1u, 8538u, 0u, 0u)))), ~firstLeadingBit(~(~vec4<u32>(u_input.a.x, 26916u, u_input.a.x, var_2.x))), vec3<u32>(max(var_5, min(42415u, 1u)), 27597u, 31709u) ^ ~(~(vec3<u32>(27645u, 4294967295u, 17713u) & vec3<u32>(4294967295u, u_input.a.x, 0u))), var_5);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_7.b.x, 29u)], -1523f) - _wgslsmith_f_op_f32(-2707f + global0[_wgslsmith_index_u32(21498u, 29u)])), 443f, global0[_wgslsmith_index_u32(var_7.b.x, 29u)], -702f))), var_7.a.b.x, abs(firstTrailingBit(var_7.a.b.www)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_5, 29u)] + -463f), _wgslsmith_f_op_vec3_f32(func_3(false, var_1.x, var_3.x)).x) - _wgslsmith_f_op_f32(-1827f - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 29u)] + global0[_wgslsmith_index_u32(var_7.c.x, 29u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(79518u, 29u)]))), -28359i);
}

