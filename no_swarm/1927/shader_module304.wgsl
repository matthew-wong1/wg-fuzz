struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: vec3<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec2<f32>(291f, -358f), Struct_1(vec3<i32>(-1i, -16036i, -1i), -13079i, -135f, false, -1270f));

var<private> global1: bool;

var<private> global2: Struct_3 = Struct_3(Struct_2(55961i, vec4<i32>(-3625i, -9770i, -6508i, -21360i), false, i32(-2147483648)), vec2<u32>(0u, 36513u));

var<private> global3: array<Struct_2, 32>;

var<private> global4: Struct_4 = Struct_4(vec2<f32>(739f, -326f), Struct_1(vec3<i32>(0i, -3276i, 0i), i32(-2147483648), -132f, true, -2213f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: vec4<bool>) -> i32 {
    let var_0 = _wgslsmith_add_u32(global2.b.x & _wgslsmith_clamp_u32(33175u, abs(~43090u), global2.b.x), 1u);
    let var_1 = var_0;
    var var_2 = vec4<u32>(~abs(firstLeadingBit(var_0)), 86909u, ~(~u_input.e), countOneBits(global2.b.x));
    return 1i;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: Struct_4, arg_3: vec2<bool>) -> bool {
    let var_0 = Struct_3(global2.a, ~_wgslsmith_sub_vec2_u32(vec2<u32>(10767u, 4601u), vec2<u32>(global2.b.x, 39662u)));
    let var_1 = Struct_2(firstLeadingBit(firstTrailingBit(8096i)), abs(vec4<i32>(global4.b.b, ~1i, global4.b.a.x, u_input.a)), select((global2.a.a | global0.b.b) | func_3(var_0.a.d, vec2<f32>(global0.b.c, -317f), vec4<bool>(arg_1.x, arg_1.x, false, var_0.a.c)), select(-1i, ~u_input.a, !var_0.a.c), any(vec4<bool>(false, arg_3.x, arg_0.x, arg_1.x))) > (_wgslsmith_add_i32(1i, _wgslsmith_mult_i32(2147483647i, var_0.a.b.x)) ^ ~(-global4.b.a.x)), arg_2.b.b);
    var var_2 = firstTrailingBit(vec3<i32>(_wgslsmith_clamp_i32(~(i32(-1i) * -2147483647i), global4.b.a.x, -global4.b.b), u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 11017i), ~arg_2.b.a.yz)));
    var_2 = firstTrailingBit(_wgslsmith_mult_vec3_i32(select(select(arg_2.b.a, global0.b.a, false) >> (~vec3<u32>(2407u, global2.b.x, u_input.d) % vec3<u32>(32u)), var_1.b.xwz, _wgslsmith_f_op_f32(-global4.b.e) >= _wgslsmith_f_op_f32(-208f - arg_2.b.c)), _wgslsmith_mult_vec3_i32(vec3<i32>(min(global0.b.b, global0.b.a.x), _wgslsmith_div_i32(var_0.a.b.x, var_2.x), ~global2.a.b.x), -vec3<i32>(2147483647i, u_input.a, -21446i))));
    return (i32(-1i) * -1i) <= (i32(-1i) * -global2.a.b.x);
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: bool) -> f32 {
    let var_0 = Struct_3(Struct_2(reverseBits(_wgslsmith_sub_i32(-1i >> (global2.b.x % 32u), arg_0.a | 61424i)), vec4<i32>(arg_0.a ^ -50238i, firstTrailingBit(~(-1i)), firstLeadingBit(-53368i), ~_wgslsmith_clamp_i32(-1i, -12317i, u_input.a)), !(!global2.a.c), i32(-1i) * -abs(2147483647i)), min(firstLeadingBit(~reverseBits(global2.b)), ~(~abs(global2.b))));
    let var_1 = countOneBits(_wgslsmith_div_vec2_i32(abs(global0.b.a.xz), vec2<i32>(_wgslsmith_dot_vec4_i32(global2.a.b >> (vec4<u32>(41394u, 1u, 56702u, u_input.d) % vec4<u32>(32u)), -vec4<i32>(global4.b.a.x, 2147483647i, 0i, -2147483647i)), _wgslsmith_mod_i32(global0.b.b, var_0.a.d))));
    var var_2 = Struct_4(_wgslsmith_div_vec2_f32(global4.a, global0.a), Struct_1(_wgslsmith_mult_vec3_i32(~(-vec3<i32>(var_1.x, var_0.a.d, 36418i)), reverseBits(min(global2.a.b.www, vec3<i32>(-1i, var_1.x, 1i)))), ~global2.a.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1431f - 567f), _wgslsmith_div_f32(global0.b.e, global0.a.x), false && (global0.b.b > 0i))), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-409f - -1012f), 729f)) - global4.b.c)));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.a)) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1009f - 204f), _wgslsmith_f_op_f32(-global4.b.e))), global4.b.c), 1315f));
    var var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-130f * _wgslsmith_f_op_f32(min(var_3.x, _wgslsmith_f_op_f32(abs(-1079f)))))), var_3.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global4.b.e, 798f))));
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: i32, arg_3: f32) -> vec3<u32> {
    let var_0 = Struct_1(global0.b.a, ~_wgslsmith_add_i32(0i, global2.a.b.x & 12398i), 188f, (2147483647i << (global2.b.x % 32u)) <= arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(Struct_2(17171i, vec4<i32>(global0.b.b, -19915i, 2147483647i, u_input.a), global0.b.d, -353i), func_2(vec3<bool>(false, arg_1.c, false), vec3<bool>(true, true, true), Struct_4(global0.a, global4.b), vec2<bool>(global0.b.d, global0.b.d)), false)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global4.a.x, -1340f, global0.b.d)))))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1898f, _wgslsmith_f_op_f32(global4.b.c * global0.b.e)))))));
    global2 = Struct_3(Struct_2(-16099i << (u_input.b % 32u), (vec4<i32>(35897i, 1i, -1i, u_input.a) & vec4<i32>(arg_1.a, -9i, -1i, arg_2)) >> ((vec4<u32>(4294967295u, u_input.c, u_input.b, global2.b.x) | countOneBits(vec4<u32>(66729u, 0u, 4294967295u, u_input.d))) % vec4<u32>(32u)), true, var_0.a.x), vec2<u32>(~0u, global2.b.x));
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 0u), 32u)];
    let var_2 = var_0;
    return ~_wgslsmith_div_vec3_u32(~vec3<u32>(max(u_input.b, 0u), 29270u, 0u), ~_wgslsmith_sub_vec3_u32(min(vec3<u32>(4294967295u, 70425u, global2.b.x), vec3<u32>(1u, u_input.d, 80754u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, global2.b.x, 0u), vec3<u32>(global2.b.x, 1u, 0u))));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: vec4<i32>) -> f32 {
    let var_0 = !global4.b.d;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.a.x))) + -535f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = false | (_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(877f + _wgslsmith_f_op_f32(-global0.a.x)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_1(-27833i, Struct_2(-65908i, vec4<i32>(-13688i, global0.b.a.x, global0.b.a.x, -2147483647i), true, global0.b.a.x), global2.a.b.x, -1109f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-975f, global4.a.x, 2432f, -1238f) * vec4<f32>(2848f, global0.b.e, global0.a.x, global0.a.x)), Struct_2(global4.b.b, global2.a.b, global2.a.c, -21765i), vec4<i32>(global2.a.b.x, 0i, global4.b.a.x, global2.a.d)))));
    global0 = Struct_4(global0.a, Struct_1(vec3<i32>(~select(u_input.a, -77283i, global4.b.d), 19956i, 0i), u_input.a, global4.b.c, !(!global4.b.d), global4.a.x));
    var var_0 = -_wgslsmith_add_vec3_i32(select(_wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(global0.b.b, global0.b.a.x, global0.b.b)), global0.b.a & global0.b.a), (global0.b.a << (vec3<u32>(global2.b.x, global2.b.x, u_input.e) % vec3<u32>(32u))) >> (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 78395u, 37984u), vec3<u32>(133268u, 4294967295u, u_input.b)) % vec3<u32>(32u)), vec3<bool>(true, true, true)), global2.a.b.xwz);
    var var_1 = 1i;
    let var_2 = abs(global2.a.b.zy);
    var_0 = select(~_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(global4.b.a | vec3<i32>(-34049i, global4.b.a.x, var_0.x), -vec3<i32>(global4.b.b, var_0.x, -1i), global0.b.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(global4.b.a.x, 1i, -39413i) & global2.a.b.zww, -global0.b.a, countOneBits(global0.b.a)), _wgslsmith_div_vec3_i32(global0.b.a, -vec3<i32>(-31250i, 3419i, global4.b.b))), global2.a.b.xxz, !select(all(!vec4<bool>(global4.b.d, false, global2.a.c, global0.b.d)), !(global0.b.d && global4.b.d), true));
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(exp2(global0.a)), global4.b);
    let var_3 = global0.b.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_4(Struct_2(u_input.a, global2.a.b, !select(global2.a.c, true, global4.b.d), global2.a.b.x), global2.b.x > _wgslsmith_add_u32(global2.b.x | global2.b.x, 9595u), any(!select(vec2<bool>(false, global2.a.c), vec2<bool>(global0.b.d, true), vec2<bool>(global0.b.d, global0.b.d))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.b.e, _wgslsmith_f_op_f32(func_5(vec3<u32>(global2.b.x, 21841u, global2.b.x), vec4<f32>(779f, global0.a.x, global4.a.x, -799f), Struct_2(u_input.a, global2.a.b, global4.b.d, u_input.a), vec4<i32>(1i, u_input.a, 51242i, -35186i))), global4.a.x, -359f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(231f + 206f), -122f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-753f)) - _wgslsmith_f_op_f32(-global0.b.c))), firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 4294967295u, u_input.c) >> (vec3<u32>(4294967295u, global2.b.x, u_input.e) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global2.b.x, 9741u, 3597u), vec3<u32>(u_input.e, 1u, 4294967295u)), vec3<u32>(global2.b.x, 21170u, u_input.e), ~vec3<u32>(global2.b.x, 1u, 4294967295u)))), _wgslsmith_add_vec3_u32(~(~(~vec3<u32>(21081u, 119313u, 1u))), _wgslsmith_sub_vec3_u32(~abs(vec3<u32>(0u, 4294967295u, u_input.c)), select(firstLeadingBit(vec3<u32>(42981u, global2.b.x, 14262u)), ~vec3<u32>(global2.b.x, 1u, global2.b.x), true))));
}

