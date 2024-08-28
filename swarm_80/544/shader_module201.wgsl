struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<f32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: array<bool, 22> = array<bool, 22>(false, false, false, false, false, true, false, false, true, true, true, false, true, false, false, false, true, true, false, false, true, true);

var<private> global2: i32 = 2147483647i;

var<private> global3: array<u32, 10>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1) -> vec2<bool> {
    global0 = _wgslsmith_div_i32(0i, firstLeadingBit(-38657i));
    let var_0 = u_input.b >> (~vec3<u32>(~(~657u), ~arg_1.a, 1u) % vec3<u32>(32u));
    let var_1 = Struct_3(arg_0);
    let var_2 = -1739f;
    global2 = (i32(-1i) * -17275i) | _wgslsmith_dot_vec3_i32(~vec3<i32>(-33776i >> (arg_1.a % 32u), _wgslsmith_dot_vec3_i32(var_1.a, vec3<i32>(0i, u_input.c.x, -63521i)), reverseBits(var_1.a.x)), abs(vec3<i32>(arg_0.x, 1i, 0i)));
    return select(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(select(global1[_wgslsmith_index_u32(59895u, 22u)], global1[_wgslsmith_index_u32(10121u, 22u)], true), global1[_wgslsmith_index_u32(arg_1.a, 22u)]), global1[_wgslsmith_index_u32(select(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 75826u), var_0.yz), var_0.x, arg_1.a > var_0.x), 22u)]), !(!vec2<bool>(global1[_wgslsmith_index_u32(10701u, 22u)], true)), select(!vec2<bool>(global1[_wgslsmith_index_u32(arg_1.a, 22u)], true), select(vec2<bool>(global1[_wgslsmith_index_u32(76203u, 22u)], global1[_wgslsmith_index_u32(u_input.b.x, 22u)]), vec2<bool>(global1[_wgslsmith_index_u32(arg_1.a, 22u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 10u)], 22u)]), false), vec2<bool>(false, global1[_wgslsmith_index_u32(firstTrailingBit(11499u), 22u)]))), vec2<bool>(!(!global1[_wgslsmith_index_u32(arg_1.a, 22u)]), global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(arg_1.a, 10u)], 46492u) & 1u), 22u)]), false);
}

fn func_4(arg_0: vec2<bool>, arg_1: bool) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(460f, 1484f))))), _wgslsmith_f_op_f32(f32(-1f) * -1350f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1393f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -257f) + -1965f)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(314f, -1003f, var_0, _wgslsmith_f_op_f32(min(-1000f, 843f)))));
    global0 = -2147483647i;
    global0 = 2147483647i & u_input.c.x;
    var var_2 = -2147483647i;
    return func_3(vec3<i32>(countOneBits(2147483647i), u_input.c.x | min(-7332i, 1i), u_input.c.x), Struct_1(29415u));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<i32>) -> vec2<bool> {
    let var_0 = Struct_3(arg_1);
    var var_1 = Struct_3(vec3<i32>(~_wgslsmith_add_i32(19159i, arg_1.x), ~(-17953i), u_input.c.x) ^ vec3<i32>(countOneBits(var_0.a.x), u_input.c.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-33351i, -72305i, u_input.c.x), arg_1), var_0.a.x)));
    global3 = array<u32, 10>();
    var var_2 = arg_0.x;
    var var_3 = _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_1.a.x, ~select(7871i, var_1.a.x, global1[_wgslsmith_index_u32(124236u, 22u)]), var_1.a.x), var_0.a), var_0.a);
    return func_4(func_3(arg_1, Struct_1(_wgslsmith_clamp_u32(~1u, u_input.b.x >> (1u % 32u), 4294967295u))), global1[_wgslsmith_index_u32(70314u, 22u)]);
}

fn func_5(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: i32) -> bool {
    let var_0 = select(u_input.c.x, -40692i, true);
    global2 = 51256i;
    var var_1 = Struct_3(_wgslsmith_clamp_vec3_i32(-(~vec3<i32>(-1i, 1i, 6860i)), vec3<i32>(0i << (global3[_wgslsmith_index_u32(u_input.a.x, 10u)] % 32u), u_input.c.x, reverseBits(var_0)) & -vec3<i32>(1i, arg_3, 13759i), vec3<i32>(_wgslsmith_clamp_i32(1i, ~arg_3, _wgslsmith_add_i32(var_0, arg_3)), 1i, arg_3 << (select(global3[_wgslsmith_index_u32(1u, 10u)], global3[_wgslsmith_index_u32(arg_2.a, 10u)], arg_1.x) % 32u))));
    var var_2 = !vec2<bool>(global1[_wgslsmith_index_u32(abs(49100u), 22u)], true);
    global3 = array<u32, 10>();
    return arg_1.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    var var_0 = func_5(select(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-874f, -671f, -1094f, 1000f), vec4<f32>(244f, 437f, -1709f, 449f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(372f, -1354f, 1088f, -917f), vec4<f32>(120f, -416f, 530f, 795f)))), _wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), abs(vec3<i32>(0i, u_input.c.x, 2147483647i)))), !vec2<bool>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(2818u, 10u)], 10u)] << (arg_0.a % 32u), 22u)], true), true), !(!vec2<bool>(true, !global1[_wgslsmith_index_u32(0u, 22u)])), arg_0, max(1i, 2862i));
    var_0 = func_3(_wgslsmith_div_vec3_i32(~select(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, 0i, 15942i), vec3<i32>(-1i, u_input.c.x, -43354i)), -vec3<i32>(5991i, u_input.c.x, u_input.c.x), select(vec3<bool>(false, true, true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], false, false), false)), max(-firstTrailingBit(vec3<i32>(0i, -1i, u_input.c.x)), ~(~vec3<i32>(-42528i, u_input.c.x, u_input.c.x)))), arg_0).x;
    var var_1 = global3[_wgslsmith_index_u32(abs(~_wgslsmith_mult_u32(~(~23312u), arg_1.a)), 10u)];
    global0 = 9755i;
    global0 = u_input.c.x;
    return Struct_2(Struct_1(~0u), vec4<bool>(global1[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(arg_0.a, select(27345u, global3[_wgslsmith_index_u32(arg_1.a, 10u)], true)), 1u), 22u)], any(vec2<bool>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), 10u)], 22u)], true)), true, true & !global1[_wgslsmith_index_u32(max(29114u, u_input.b.x), 22u)]), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(126f * 710f))), -747f, -497f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(279f, _wgslsmith_div_f32(183f, -730f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-869f + 897f) - -363f))), select(select(vec3<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(30838u, 9415u), 22u)], func_4(vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 22u)]), false).x), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, global1[_wgslsmith_index_u32(arg_1.a, 22u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(12659u, 22u)], false)), vec3<bool>(true, global1[_wgslsmith_index_u32(arg_0.a, 22u)], false), false != global1[_wgslsmith_index_u32(u_input.a.x, 22u)]), any(!vec4<bool>(global1[_wgslsmith_index_u32(0u, 22u)], false, false, global1[_wgslsmith_index_u32(arg_1.a, 22u)]))), !select(select(vec3<bool>(global1[_wgslsmith_index_u32(11226u, 22u)], true, global1[_wgslsmith_index_u32(u_input.a.x, 22u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(49814u, 22u)], true), vec3<bool>(true, true, false)), select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 22u)], global1[_wgslsmith_index_u32(arg_1.a, 22u)], global1[_wgslsmith_index_u32(u_input.b.x, 22u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(11272u, 22u)], global1[_wgslsmith_index_u32(27585u, 22u)]), global1[_wgslsmith_index_u32(0u, 22u)]), vec3<bool>(global1[_wgslsmith_index_u32(arg_1.a, 22u)], global1[_wgslsmith_index_u32(arg_0.a, 22u)], global1[_wgslsmith_index_u32(arg_1.a, 22u)])), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1((_wgslsmith_add_u32(8093u, u_input.a.x) >> (_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(0u, 36147u, 47300u, 73685u)) % 32u)) << (firstLeadingBit(_wgslsmith_add_u32(u_input.b.x, 0u)) % 32u)), Struct_1(firstLeadingBit(~116042u)));
    let var_1 = Struct_3(~vec3<i32>(abs(u_input.c.x), 2147483647i, -u_input.c.x) << (u_input.b % vec3<u32>(32u)));
    let var_2 = !func_1(var_0.a, Struct_1(u_input.a.x)).b;
    global0 = 1i;
    let var_3 = u_input.b.yy;
    global0 = _wgslsmith_sub_i32(-32330i, _wgslsmith_dot_vec4_i32(firstTrailingBit(select(vec4<i32>(var_1.a.x, u_input.c.x, 0i, var_1.a.x) << (vec4<u32>(u_input.a.x, 0u, global3[_wgslsmith_index_u32(var_3.x, 10u)], global3[_wgslsmith_index_u32(30832u, 10u)]) % vec4<u32>(32u)), reverseBits(vec4<i32>(-2147483647i, var_1.a.x, var_1.a.x, 2147483647i)), func_1(var_0.a, var_0.a).b)), _wgslsmith_div_vec4_i32(abs(abs(vec4<i32>(var_1.a.x, -20104i, -26938i, 2147483647i))), vec4<i32>(-4964i, u_input.c.x, 40380i, u_input.c.x) << (u_input.a % vec4<u32>(32u)))));
    global2 = -firstLeadingBit(u_input.c.x);
    global3 = array<u32, 10>();
    global0 = -13233i;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec2_u32(~u_input.a.zw, vec2<u32>(1u, var_0.a.a) & vec2<u32>(4294967295u, 93683u), var_3) ^ var_3, ~(~(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.a, 38678u), u_input.b.xy) >> (~var_0.a.a % 32u))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.c.xzz, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, -857f, 671f) * var_0.c.yxz))))));
}

