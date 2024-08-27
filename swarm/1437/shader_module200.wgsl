struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: f32,
    d: vec4<i32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23>;

var<private> global1: Struct_5 = Struct_5(0i);

var<private> global2: array<f32, 11>;

var<private> global3: array<i32, 7> = array<i32, 7>(i32(-2147483648), 37053i, -4077i, i32(-2147483648), -1i, -1i, -29992i);

var<private> global4: array<vec2<bool>, 17>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_3(arg_1, Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(402f + _wgslsmith_f_op_f32(sign(-659f))))), select(_wgslsmith_clamp_vec2_u32(u_input.b.yx, u_input.b.zy, vec2<u32>(4294967295u, u_input.a.x)), u_input.b.yy, global4[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.b.x, u_input.b.x), 17u)]), ~u_input.a.yxy >> (abs(select(u_input.a.yzz, u_input.b, vec3<bool>(true, true, true))) % vec3<u32>(32u)), Struct_1(_wgslsmith_clamp_vec4_i32(arg_0.d, firstTrailingBit(vec4<i32>(global3[_wgslsmith_index_u32(73297u, 7u)], -1i, global1.a, arg_0.a.x)), vec4<i32>(-21687i, 0i, arg_0.a.x, -14656i)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(step(arg_0.c, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, 1u), 23u)])), _wgslsmith_f_op_f32(max(-1814f, _wgslsmith_f_op_f32(floor(arg_0.c)))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 23u)] - -483f), _wgslsmith_f_op_f32(-arg_0.c)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(min(arg_0.c, -1000f)), arg_0.c, _wgslsmith_f_op_f32(abs(798f)), -1414f))))));
    global2 = array<f32, 11>();
    var var_1 = arg_1.a;
    global1 = Struct_5(_wgslsmith_add_i32(_wgslsmith_add_i32(22725i, arg_1.a.x) | 9691i, _wgslsmith_mult_i32(firstTrailingBit(u_input.d.x), ~2147483647i) | arg_1.a.x));
    let var_2 = Struct_5(global3[_wgslsmith_index_u32(~firstTrailingBit(5911u), 7u)]);
    return ~1u;
}

fn func_2(arg_0: vec2<u32>, arg_1: u32) -> Struct_5 {
    let var_0 = vec4<u32>(56232u >> (func_3(Struct_4(~u_input.d, ~vec3<i32>(17382i, global3[_wgslsmith_index_u32(10014u, 7u)], global1.a), global2[_wgslsmith_index_u32(u_input.b.x, 11u)], ~vec4<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 7u)], global1.a, global1.a, global1.a)), Struct_1(vec4<i32>(global1.a, -2147483647i, 19861i, u_input.d.x))) % 32u), func_3(Struct_4(-vec3<i32>(-32364i, u_input.d.x, u_input.d.x), select(~vec3<i32>(31467i, global3[_wgslsmith_index_u32(4294967295u, 7u)], -21147i), vec3<i32>(-10440i, u_input.d.x, -2147483647i), all(vec3<bool>(true, true, false))), global2[_wgslsmith_index_u32(1u, 11u)], select(vec4<i32>(-1i, -32236i, 652i, global3[_wgslsmith_index_u32(u_input.a.x, 7u)]), ~vec4<i32>(global1.a, u_input.d.x, 0i, -2147483647i), true)), Struct_1(~vec4<i32>(u_input.d.x, u_input.d.x, -1i, 0i))), 4294967295u, arg_0.x);
    let var_1 = Struct_4(u_input.d, ~vec3<i32>(-24014i, _wgslsmith_mod_i32(u_input.d.x, 4757i), -46317i), _wgslsmith_div_f32(-807f, global2[_wgslsmith_index_u32(~85168u, 11u)]), vec4<i32>(global1.a, select(~countOneBits(0i), global3[_wgslsmith_index_u32(~u_input.a.x, 7u)] & global1.a, false), -1i, countOneBits(_wgslsmith_mult_i32(17965i & global3[_wgslsmith_index_u32(arg_1, 7u)], -27916i))));
    global0 = array<f32, 23>();
    global4 = array<vec2<bool>, 17>();
    global2 = array<f32, 11>();
    return Struct_5(~(~(~var_1.a.x) | (i32(-1i) * -37882i)));
}

fn func_4(arg_0: Struct_5, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: u32) -> Struct_1 {
    var var_0 = Struct_3(Struct_1(-(~vec4<i32>(arg_0.a, -975i, global3[_wgslsmith_index_u32(1u, 7u)], 8041i)) & min(-arg_2.a.a, firstLeadingBit(arg_2.b.d.a))), Struct_2(_wgslsmith_f_op_f32(max(-1565f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(26235u, 11u)]), _wgslsmith_f_op_f32(arg_2.c.x * global0[_wgslsmith_index_u32(arg_3, 23u)])))), u_input.a.zy, ~arg_1, arg_2.b.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(32404u, 23u)], -2749f, 566f)))))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 11u)]), _wgslsmith_f_op_f32(-arg_2.b.a)), global0[_wgslsmith_index_u32(~arg_3 & _wgslsmith_mod_u32(34497u, 4294967295u), 23u)], _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(arg_2.b.b.x << (0u % 32u), 11u)], 247f)), _wgslsmith_div_f32(arg_2.c.x, _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(0u, 11u)], -457f))))));
    global0 = array<f32, 23>();
    let var_1 = _wgslsmith_clamp_i32(1i, reverseBits(1i), 2147483647i);
    var var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(64917u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.b.c.x, 0u), vec2<u32>(arg_2.b.b.x, arg_1.x)), max(u_input.b.yy, vec2<u32>(1u, var_0.b.c.x))), _wgslsmith_add_vec2_u32(vec2<u32>(38736u, arg_1.x) << (vec2<u32>(arg_2.b.c.x, arg_2.b.b.x) % vec2<u32>(32u)), abs(u_input.a.xw)))), vec2<u32>(57416u, u_input.b.x));
    let var_3 = vec4<i32>(arg_0.a, ~var_0.a.a.x, 3577i, _wgslsmith_dot_vec3_i32(vec3<i32>(-25719i, _wgslsmith_div_i32(1i, -5686i), -_wgslsmith_sub_i32(var_1, 0i)), vec3<i32>(global1.a, select(~0i, -arg_2.a.a.x, true), -2147483647i)));
    return arg_2.b.d;
}

fn func_1(arg_0: vec4<bool>) -> vec4<i32> {
    var var_0 = ~u_input.d.zx ^ u_input.d.xz;
    var var_1 = 29631i;
    let var_2 = ~var_0.x;
    global4 = array<vec2<bool>, 17>();
    let var_3 = Struct_2(829f, ~_wgslsmith_mod_vec2_u32(~u_input.b.yy, u_input.a.zz), ~select(~u_input.c.yzx >> (~vec3<u32>(59933u, 4294967295u, u_input.c.x) % vec3<u32>(32u)), max(_wgslsmith_add_vec3_u32(u_input.a.yxx, vec3<u32>(u_input.a.x, 0u, u_input.b.x)), u_input.b), true), func_4(func_2(~(~u_input.b.zy), firstLeadingBit(12917u)), vec3<u32>(u_input.c.x, 1u, min(1u, u_input.c.x)), Struct_3(Struct_1(-vec4<i32>(var_2, 0i, var_0.x, -16263i)), Struct_2(global0[_wgslsmith_index_u32(~89446u, 23u)], u_input.c.wy, u_input.b, Struct_1(vec4<i32>(u_input.d.x, global1.a, var_2, var_2))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-205f, 144f, -382f, global2[_wgslsmith_index_u32(u_input.a.x, 11u)])))), 35079u));
    return func_4(Struct_5(-2147483647i), ~u_input.c.wyx, Struct_3(Struct_1(var_3.d.a), var_3, _wgslsmith_f_op_vec4_f32(vec4<f32>(603f, 1276f, _wgslsmith_f_op_f32(ceil(1401f)), _wgslsmith_f_op_f32(f32(-1f) * -847f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-836f, 2974f, global2[_wgslsmith_index_u32(var_3.b.x, 11u)], 1000f) * vec4<f32>(-822f, -1250f, var_3.a, global0[_wgslsmith_index_u32(79897u, 23u)]))))), u_input.b.x).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(global1.a, _wgslsmith_dot_vec4_i32(func_1(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), abs(_wgslsmith_add_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(u_input.b.x, 7u)], -1i, global3[_wgslsmith_index_u32(4294967295u, 7u)], -21670i), vec4<i32>(global1.a, global3[_wgslsmith_index_u32(u_input.b.x, 7u)], -2147483647i, 2147483647i)) >> (~vec4<u32>(u_input.c.x, u_input.b.x, u_input.c.x, u_input.a.x) % vec4<u32>(32u)))));
    let var_1 = Struct_3(Struct_1(firstLeadingBit((vec4<i32>(global3[_wgslsmith_index_u32(1u, 7u)], global3[_wgslsmith_index_u32(u_input.a.x, 7u)], -21251i, var_0.x) << (u_input.a % vec4<u32>(32u))) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -4556i, global1.a, 0i), vec4<i32>(21075i, var_0.x, global3[_wgslsmith_index_u32(u_input.a.x, 7u)], global3[_wgslsmith_index_u32(4294967295u, 7u)])))), Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~u_input.a << (u_input.c % vec4<u32>(32u)), vec4<u32>(abs(4294967295u), u_input.b.x, countOneBits(u_input.c.x), ~u_input.c.x)), 11u)], ~(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 2895u), u_input.c.yz)), _wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(70806u, 58388u, u_input.a.x)), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.c.zzz, vec3<u32>(u_input.a.x, 10805u, u_input.c.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(17859u, 29389u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 0u)))), func_4(func_2(vec2<u32>(4294967295u, 14056u), ~7985u), countOneBits(vec3<u32>(u_input.c.x, u_input.c.x, u_input.a.x)), Struct_3(func_4(Struct_5(-2147483647i), vec3<u32>(65638u, u_input.a.x, u_input.c.x), Struct_3(Struct_1(vec4<i32>(1i, var_0.x, global3[_wgslsmith_index_u32(u_input.b.x, 7u)], var_0.x)), Struct_2(-1409f, u_input.c.zy, u_input.a.yyx, Struct_1(vec4<i32>(u_input.d.x, global1.a, var_0.x, var_0.x))), vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], -176f, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 1534f)), 18760u), Struct_2(-2265f, u_input.a.zy, vec3<u32>(17453u, 4294967295u, u_input.a.x), Struct_1(vec4<i32>(var_0.x, u_input.d.x, 1i, 19200i))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-694f, global2[_wgslsmith_index_u32(u_input.c.x, 11u)], global2[_wgslsmith_index_u32(u_input.b.x, 11u)], -2911f))), firstLeadingBit(1u) & u_input.b.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-1186f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.c.x, 11u)]), global0[_wgslsmith_index_u32(firstTrailingBit(29316u), 23u)])), _wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(~u_input.b.x, 11u)], -1557f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(164f, global0[_wgslsmith_index_u32(u_input.c.x, 23u)], global2[_wgslsmith_index_u32(u_input.a.x, 11u)], 473f), vec4<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 11u)], 270f, global2[_wgslsmith_index_u32(35045u, 11u)], global0[_wgslsmith_index_u32(851u, 23u)])))))))));
    var var_2 = Struct_4(vec3<i32>(firstTrailingBit(_wgslsmith_mod_i32(-59044i, global1.a)), func_2(vec2<u32>(4294967295u, 1u), 0u).a | 59182i, abs(func_1(vec4<bool>(true, false, false, true)).x)), vec3<i32>(8347i, -22345i, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(global3[_wgslsmith_index_u32(1u, 7u)], global3[_wgslsmith_index_u32(69699u, 7u)]), ~var_0.x, _wgslsmith_add_i32(296i, global3[_wgslsmith_index_u32(var_1.b.c.x, 7u)])), u_input.d)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x * 113f))))), var_1.b.d.a);
    global2 = array<f32, 11>();
    var_2 = Struct_4(vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.d.zz, vec2<i32>(1i, global1.a)), 1i), -15653i, _wgslsmith_add_i32(var_2.b.x, -1i)), _wgslsmith_sub_i32(1i, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, ~var_1.b.b.x), 7u)]), global1.a), vec3<i32>(1i, max(-global3[_wgslsmith_index_u32(u_input.c.x, 7u)], _wgslsmith_sub_i32(-1i, 1i)) | ~(~2147483647i), 1i), _wgslsmith_div_f32(406f, 1000f), select(var_1.b.d.a, var_2.d, _wgslsmith_sub_u32(select(0u, u_input.c.x, true), 4294967295u << (var_1.b.c.x % 32u)) <= _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.c.x), vec4<u32>(u_input.c.x, 0u, u_input.c.x, 6712u))));
    let x = u_input.a;
    s_output = StorageBuffer(-countOneBits(-var_2.b), ~var_1.b.c.x | 1u);
}

