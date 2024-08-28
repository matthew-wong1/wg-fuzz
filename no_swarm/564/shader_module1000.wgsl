struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2>;

var<private> global1: f32;

var<private> global2: vec4<u32>;

var<private> global3: array<u32, 22> = array<u32, 22>(610u, 14185u, 12724u, 1u, 4294967295u, 4294967295u, 3565u, 4294967295u, 11318u, 0u, 1u, 62073u, 0u, 14436u, 4294967295u, 18261u, 0u, 8832u, 116230u, 1u, 4294967295u, 4294967295u);

var<private> global4: array<Struct_1, 25>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec4<u32>) -> vec2<i32> {
    var var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-980f, 725f, global0[_wgslsmith_index_u32(u_input.a, 2u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(361f, global0[_wgslsmith_index_u32(arg_2.a, 2u)], 1641f) * vec3<f32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(57010u, 22u)], 2u)], 904f, 1423f))) - vec3<f32>(global0[_wgslsmith_index_u32(~0u, 2u)], _wgslsmith_f_op_f32(-558f * 1000f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 2u)])))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(12388u, 2u)])))))), false));
    global4 = array<Struct_1, 25>();
    let var_2 = Struct_1(~23088u);
    var var_3 = arg_0.a;
    return u_input.c;
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = select(vec3<bool>(!arg_1, true, !(!arg_1)), vec3<bool>(arg_1, arg_1, arg_1), true);
    global0 = array<f32, 2>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-328f * -329f));
    global3 = array<u32, 22>();
    global2 = ~(~(~(min(vec4<u32>(37170u, global2.x, u_input.a, global2.x), vec4<u32>(global2.x, 0u, global2.x, 0u)) >> (~vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(46211u, 22u)], 22u)], 4294967295u, u_input.a, 3207u) % vec4<u32>(32u)))));
    return global4[_wgslsmith_index_u32(global2.x, 25u)];
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global2 = vec4<u32>(~firstTrailingBit(412u), ~_wgslsmith_div_u32(global2.x, 75482u) | _wgslsmith_div_u32(1u, ~arg_1.x), ~((arg_3.a & arg_2.a) ^ 1u), _wgslsmith_dot_vec2_u32(~global2.zz & (arg_1.zz | arg_1.xz), ~arg_1.zw)) | arg_1;
    let var_0 = _wgslsmith_div_vec3_i32(u_input.d, u_input.d);
    global2 = ~arg_1;
    global3 = array<u32, 22>();
    var var_1 = max(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(-u_input.d, vec3<i32>(33750i, ~arg_0, u_input.c.x)), 1i), -2147483647i);
    return func_3(countOneBits(u_input.c ^ (_wgslsmith_div_vec2_i32(vec2<i32>(-1i, 60157i), var_0.xz) ^ (u_input.d.xy ^ var_0.zy))), !(!(true & any(vec3<bool>(true, true, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-556f, -856f, 1045f, global0[_wgslsmith_index_u32(4294967295u, 2u)])))))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> vec3<u32> {
    var var_0 = global4[_wgslsmith_index_u32(~(~select(~min(11925u, 1u), global2.x, any(select(vec2<bool>(true, false), vec2<bool>(false, true), false)))), 25u)];
    var var_1 = vec2<f32>(global0[_wgslsmith_index_u32(func_4(min(~(-58163i), -51251i), ~_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, arg_1.a, 24921u, global2.x), vec4<u32>(6945u, arg_0.a, 126887u, 13887u)), ~vec4<u32>(arg_1.a, global3[_wgslsmith_index_u32(arg_0.a, 22u)], global2.x, 4294967295u)), arg_0, Struct_1(~(~arg_1.a))).a, 2u)], global0[_wgslsmith_index_u32(max(~arg_0.a, ~(~global2.x)), 2u)]);
    var var_2 = global4[_wgslsmith_index_u32(4294967295u, 25u)];
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, var_1.x)) - _wgslsmith_f_op_f32(-var_1.x)) * -696f))), -721f);
    let var_3 = func_4(u_input.b, vec4<u32>(20107u, global2.x, ~u_input.a, 25236u), func_3(u_input.c, all(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1097f, 1000f, global0[_wgslsmith_index_u32(31592u, 2u)], -1432f), vec4<f32>(global0[_wgslsmith_index_u32(global2.x, 2u)], -734f, -1380f, 2026f)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0[_wgslsmith_index_u32(25062u, 2u)], -807f, -525f, global0[_wgslsmith_index_u32(66100u, 2u)]), _wgslsmith_div_vec4_f32(vec4<f32>(668f, 586f, global0[_wgslsmith_index_u32(var_2.a, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)]), vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)))))), Struct_1(~_wgslsmith_clamp_u32(3400u, abs(89523u), 1u)));
    return global2.zxz;
}

fn func_1(arg_0: vec4<bool>, arg_1: f32) -> u32 {
    let var_0 = func_5(Struct_1(76296u), func_4(2147483647i, vec4<u32>(4294967295u, ~u_input.a, ~1u, _wgslsmith_div_u32(10922u, global3[_wgslsmith_index_u32(70955u, 22u)])), Struct_1(52218u), func_3(-func_2(Struct_1(global2.x), 47448u, Struct_1(1u), vec4<u32>(u_input.a, global3[_wgslsmith_index_u32(u_input.a, 22u)], 43257u, 48589u)), ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 22u)], 22u)] >= ~74515u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 22u)], 2u)], -223f, arg_1, global0[_wgslsmith_index_u32(4294967295u, 2u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, 730f, 372f)), true)))), firstTrailingBit(reverseBits(~_wgslsmith_clamp_i32(u_input.c.x, u_input.d.x, 11650i))), ~(~(i32(-1i) * -29895i)));
    global3 = array<u32, 22>();
    let var_1 = global2.wwx;
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(53277u, 2u)])), _wgslsmith_f_op_f32(floor(418f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global2.x, 2u)]))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1478f * 390f))), arg_1, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1832f * 1016f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(26368u, 2u)])) - -1000f))));
    let var_3 = var_0.x;
    return func_3(u_input.c, arg_0.x, vec4<f32>(-110f, _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1294f, 1414f, false)), _wgslsmith_f_op_f32(exp2(var_2.x))))), global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(6146u, 0u, global3[_wgslsmith_index_u32(89232u, 22u)], 4536u), vec4<u32>(global2.x, u_input.a, 4294967295u, 4294967295u)), ~vec4<u32>(0u, global3[_wgslsmith_index_u32(1u, 22u)], 4294967295u, var_3)) << (8414u % 32u), 22u)], 2u)], 268f)).a;
}

fn func_6(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global3 = array<u32, 22>();
    global0 = array<f32, 2>();
    let var_0 = _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(11793u, 2u)]));
    var var_1 = Struct_1(arg_0.a);
    global4 = array<Struct_1, 25>();
    return _wgslsmith_f_op_f32(547f * var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -665f;
    var var_0 = _wgslsmith_f_op_f32(func_6(Struct_1(1u), (u_input.d >> (global2.zyz % vec3<u32>(32u))) >> (vec3<u32>(select(func_1(vec4<bool>(true, false, false, false), global0[_wgslsmith_index_u32(0u, 2u)]), u_input.a, true), 5347u >> (reverseBits(global2.x) % 32u), ~u_input.a) % vec3<u32>(32u)), Struct_1(10943u), Struct_1(_wgslsmith_mod_u32(~(~26415u), 1u))));
    global1 = global0[_wgslsmith_index_u32(u_input.a, 2u)];
    var var_1 = ~select(~vec4<u32>(u_input.a, _wgslsmith_div_u32(u_input.a, u_input.a), _wgslsmith_sub_u32(global2.x, 0u), u_input.a), vec4<u32>(1u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(global2.yzy, vec3<u32>(u_input.a, global2.x, 4294967295u)), 36252u), ~64033u, _wgslsmith_add_u32(min(global2.x, 20910u), reverseBits(global3[_wgslsmith_index_u32(62776u, 22u)]))), vec4<bool>(select(43411i, u_input.e, true) < -18947i, !(4186i != u_input.e), !(2147483647i < u_input.d.x), false));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 2u)]), global0[_wgslsmith_index_u32(0u, 2u)]), 502f)) > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1501f - -535f) + 894f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(414f, 555f))));
    var var_3 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(592f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(172f, global0[_wgslsmith_index_u32(global2.x, 2u)]))), global0[_wgslsmith_index_u32(func_4(-25067i, vec4<u32>(var_1.x, u_input.a, 4294967295u, u_input.a), global4[_wgslsmith_index_u32(0u, 25u)], global4[_wgslsmith_index_u32(29897u, 25u)]).a | func_1(vec4<bool>(false, false, true, false), global0[_wgslsmith_index_u32(var_1.x, 2u)]), 2u)])), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_1.x, 2u)] * -342f), _wgslsmith_f_op_f32(round(-414f))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(global2.x, 2u)])) + _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(1u, 2u)]))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-121f, 812f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_dot_vec2_u32(~var_1.xx, ~vec2<u32>(global3[_wgslsmith_index_u32(global2.x, 22u)], var_1.x)), ~_wgslsmith_div_u32(33068u, var_1.x), 11255u, _wgslsmith_mult_u32(global2.x, u_input.a)) >> (vec4<u32>(select(~58099u, _wgslsmith_dot_vec2_u32(var_1.zy, vec2<u32>(7397u, 18392u)), any(vec2<bool>(false, false))), func_5(Struct_1(global2.x), global4[_wgslsmith_index_u32(var_1.x, 25u)], 1i, _wgslsmith_add_i32(u_input.c.x, u_input.b)).x, 114108u, _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(171u, 22u)], 4294967295u) & reverseBits(var_1.x)) % vec4<u32>(32u)), 6054u, u_input.d);
}

