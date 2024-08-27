struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: bool,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-916f, vec3<bool>(false, false, true), true, i32(-2147483648), true);

var<private> global1: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(1919f, vec3<bool>(true, true, true), true, i32(-2147483648), false), Struct_1(205f, vec3<bool>(true, true, true), false, 0i, false), Struct_1(302f, vec3<bool>(true, true, false), true, 19301i, false), Struct_1(-1341f, vec3<bool>(false, false, false), false, -30382i, false), Struct_1(276f, vec3<bool>(false, true, true), true, 13819i, true), Struct_1(150f, vec3<bool>(false, true, false), true, 1i, true), Struct_1(744f, vec3<bool>(false, true, false), false, -14587i, false), Struct_1(-1000f, vec3<bool>(true, true, true), true, i32(-2147483648), true), Struct_1(-411f, vec3<bool>(false, false, false), false, 61277i, false), Struct_1(-1620f, vec3<bool>(true, true, false), false, i32(-2147483648), true));

var<private> global2: Struct_2;

var<private> global3: array<i32, 14>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_2, arg_3: vec4<u32>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(667f + global0.a)))))));
    var var_1 = abs(_wgslsmith_sub_vec3_u32(min(~(arg_2.a << (u_input.a % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(~vec3<u32>(global2.a.x, 31772u, 4294967295u), ~vec3<u32>(1u, arg_2.a.x, 65755u))), arg_2.a));
    var_1 = vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~var_1.x, abs(44825u), ~arg_3.x, ~1u) >> (~_wgslsmith_div_vec4_u32(arg_3, arg_3) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(~arg_3, _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 45575u, arg_2.a.x, 4294967295u), ~arg_3))), var_1.x, _wgslsmith_add_u32(0u, _wgslsmith_clamp_u32(2630u, var_1.x, 1u)));
    var var_2 = Struct_2(_wgslsmith_mult_vec3_u32(arg_3.yzz, vec3<u32>(u_input.e, ~min(0u, 116199u), min(global2.a.x, _wgslsmith_div_u32(29041u, 1u)))), global1[_wgslsmith_index_u32(firstLeadingBit(firstTrailingBit(_wgslsmith_clamp_u32(1u, 4294967295u, 0u)) | ~0u), 10u)]);
    let var_3 = true;
    return select(select(!global2.b.b, !global2.b.b, !(!select(true, var_2.b.e, true))), !var_2.b.b, !vec3<bool>(true, false, global2.b.d <= _wgslsmith_dot_vec3_i32(vec3<i32>(28917i, -55144i, 2147483647i), vec3<i32>(global0.d, global2.b.d, var_2.b.d))));
}

fn func_2() -> vec3<u32> {
    global0 = Struct_1(global2.b.a, global2.b.b, false, ~0i, true);
    var var_0 = Struct_2(global2.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), !select(global2.b.b, select(global0.b, vec3<bool>(false, true, global0.e), vec3<bool>(global2.b.c, false, false)), vec3<bool>(global2.b.b.x, false, true)), global2.b.c, global0.d, global0.e));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.a - _wgslsmith_f_op_f32(-1000f - 1000f)))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a)), select(global0.b, select(global0.b, select(global0.b, select(vec3<bool>(true, var_0.b.b.x, var_0.b.e), global0.b, global2.b.b.x), func_3(false, -6271i, Struct_2(vec3<u32>(4294967295u, 0u, global2.a.x), Struct_1(var_0.b.a, vec3<bool>(true, false, true), false, 0i, global0.c)), vec4<u32>(1889u, 31512u, u_input.e, 4294967295u))), !global0.b), global2.b.b), false, firstLeadingBit(abs(global0.d)), all(!global2.b.b.zy));
    global0 = global1[_wgslsmith_index_u32(select(u_input.a.x, 1u, global0.c), 10u)];
    return vec3<u32>(56234u, 1u, ~(~10081u));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: vec4<i32>, arg_3: bool) -> f32 {
    var var_0 = Struct_2(~vec3<u32>(_wgslsmith_add_u32(~4294967295u, 42171u), min(_wgslsmith_dot_vec2_u32(u_input.a.xx, global2.a.zx), 1u), 32661u), global2.b);
    let var_1 = firstTrailingBit(26716i);
    let var_2 = Struct_2(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(var_0.a, func_2()), ~(~var_0.a)) << (_wgslsmith_clamp_vec3_u32(min(u_input.a, var_0.a), abs(_wgslsmith_add_vec3_u32(global2.a, u_input.a)), ~select(vec3<u32>(1u, var_0.a.x, var_0.a.x), u_input.a, var_0.b.b)) % vec3<u32>(32u)), global2.b);
    let var_3 = !vec4<bool>(true, all(global0.b), arg_1.x, arg_3);
    var var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-997f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(436f)) + 1726f)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -136f), _wgslsmith_f_op_f32(642f + _wgslsmith_f_op_f32(-global2.b.a))))));
    return -3207f;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    global1 = array<Struct_1, 10>();
    var var_0 = Struct_1(1000f, select(select(vec3<bool>(!arg_0.c, 6992u == arg_3.a.x, global0.b.x), !(!global2.b.b), arg_0.b), arg_2.b, arg_3.a.x != firstLeadingBit(~arg_3.a.x)), true, ~_wgslsmith_sub_i32(~firstLeadingBit(arg_2.d), ~select(1i, -2147483647i, true)), any(select(select(!vec4<bool>(arg_2.e, false, arg_2.b.x, arg_2.b.x), vec4<bool>(true, global0.e, false, global2.b.b.x), !vec4<bool>(arg_0.e, global2.b.b.x, arg_3.b.c, true)), vec4<bool>(global2.b.c, arg_3.b.b.x, false, true), any(!arg_3.b.b))));
    let var_1 = u_input.c.zy;
    var var_2 = vec2<bool>(false, false);
    global1 = array<Struct_1, 10>();
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(Struct_1(_wgslsmith_f_op_f32(1243f - global0.a), global2.b.b, any(vec2<bool>(global2.b.b.x, any(vec2<bool>(global2.b.c, global2.b.c)))), reverseBits(_wgslsmith_sub_i32(1i | global0.d, i32(-1i) * -23875i)), global0.c), !select(vec3<bool>(global2.b.c || false, false, global0.b.x || global2.b.e), vec3<bool>(!global2.b.e, any(vec4<bool>(false, true, true, global0.c)), true), vec3<bool>(global2.b.c, true, true)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<u32>(0u, 33987u, 1u), vec3<bool>(true, true, true), ~vec4<i32>(1i, u_input.d, global0.d, global0.d), true || global2.b.c))), vec3<bool>(select(global0.b.x, true, any(vec3<bool>(global0.e, global2.b.b.x, true))), !global2.b.c, false), true, 1i, any(!global0.b)), Struct_2(vec3<u32>(_wgslsmith_sub_u32(abs(global2.a.x), ~u_input.e), func_2().x, 860u), Struct_1(global2.b.a, global0.b, all(!vec3<bool>(global0.e, global0.b.x, global2.b.b.x)), -_wgslsmith_add_i32(u_input.d, 44545i), global0.c)));
    var var_0 = u_input.a.x;
    let var_1 = global2.b;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * global0.a);
    let var_3 = Struct_2(vec3<u32>(69294u | _wgslsmith_div_u32(firstLeadingBit(87102u), u_input.a.x), func_2().x, 1u), global1[_wgslsmith_index_u32(u_input.a.x, 10u)]);
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_3.b.a, var_1.a, 729f), vec3<f32>(-895f, global0.a, global0.a))))), vec3<f32>(-583f, global0.a, 1622f)))));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a * var_3.b.a) - global2.b.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(firstLeadingBit(-u_input.c.zx), min(firstLeadingBit(u_input.b.zx), -u_input.c.zx), ~firstTrailingBit(vec2<i32>(global0.d, -48319i))), _wgslsmith_mod_vec2_i32(vec2<i32>(-11609i, 2132i) >> (var_3.a.zy % vec2<u32>(32u)), vec2<i32>(1i, -global2.b.d)), select(~vec2<i32>(-1i, global3[_wgslsmith_index_u32(1u, 14u)]), -vec2<i32>(global0.d, global2.b.d), _wgslsmith_f_op_f32(func_1(vec3<u32>(4294967295u, u_input.e, var_3.a.x), var_3.b.b, vec4<i32>(-1i, u_input.b.x, u_input.b.x, global3[_wgslsmith_index_u32(75752u, 14u)]), global2.b.e)) <= _wgslsmith_f_op_f32(floor(-275f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_3.b.a, -698f, var_3.b.a)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.a, global0.a, var_3.b.a)))))), _wgslsmith_f_op_vec2_f32(-var_4.xx), _wgslsmith_mod_vec4_u32(min(vec4<u32>(~var_3.a.x, 1279u, 0u, func_4(Struct_1(369f, global2.b.b, true, u_input.c.x, true), vec3<bool>(var_1.e, global0.b.x, false), global2.b, Struct_2(vec3<u32>(95370u, var_3.a.x, 1u), Struct_1(var_4.x, var_1.b, global2.b.e, -1462i, global2.b.c))).a.x), firstLeadingBit(~vec4<u32>(var_3.a.x, global2.a.x, 0u, 41208u))), select(~firstTrailingBit(vec4<u32>(global2.a.x, var_3.a.x, 433u, 1u)), vec4<u32>(u_input.a.x, 1u, var_3.a.x, ~u_input.a.x), false)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1f, var_1.a), var_1.a)));
}

