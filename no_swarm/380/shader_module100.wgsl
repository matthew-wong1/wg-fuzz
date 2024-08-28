struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct Struct_5 {
    a: i32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(4294967295u, 4294967295u), 1u, i32(-2147483648), vec4<bool>(false, false, false, true));

var<private> global1: Struct_2;

var<private> global2: f32 = 1316f;

var<private> global3: array<bool, 24>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2) -> f32 {
    global0 = Struct_1(vec2<u32>(countOneBits(u_input.d), 54895u), _wgslsmith_dot_vec3_u32(abs(~vec3<u32>(arg_0.a.b.a.x, u_input.d, arg_0.a.a.b)), abs(vec3<u32>(47802u, arg_1.a.b, 14199u) ^ vec3<u32>(36375u, arg_0.a.b.b, global1.a.b)) | max(reverseBits(vec3<u32>(global0.a.x, arg_0.a.a.b, 4294967295u)), firstLeadingBit(vec3<u32>(1u, arg_1.d.a.x, global0.b)))), firstLeadingBit(-2147483647i), global0.d);
    let var_0 = _wgslsmith_f_op_f32(max(arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.b)))));
    var var_1 = Struct_1(min(~(vec2<u32>(34428u, u_input.d) | (arg_1.b.a ^ arg_0.a.a.a)), vec2<u32>(global1.d.b, global1.a.a.x) ^ max(arg_0.a.a.a, global1.b.a)), abs(countOneBits(~countOneBits(4294967295u))), -(~2147483647i), !arg_1.a.d);
    global0 = global1.a;
    var var_2 = arg_0.b;
    return var_0;
}

fn func_2() -> Struct_2 {
    global1 = Struct_2(Struct_1(vec2<u32>(min(abs(u_input.d), global1.b.a.x), firstLeadingBit(~0u)), u_input.d, 1i, vec4<bool>(!(global0.c > -29968i), true, true, _wgslsmith_f_op_f32(func_3(Struct_4(Struct_2(Struct_1(vec2<u32>(36953u, global1.a.a.x), 85652u, 58011i, global1.a.d), Struct_1(vec2<u32>(global1.b.a.x, 0u), global1.a.b, -35368i, vec4<bool>(false, false, true, global0.d.x)), global1.c, Struct_1(vec2<u32>(u_input.d, 1u), global0.a.x, 0i, vec4<bool>(true, global1.d.d.x, false, global0.d.x)), global1.a.c), -1066f), Struct_2(global1.b, global1.b, vec4<i32>(-2147483647i, global0.c, 2147483647i, 8588i), global1.b, 1i))) < -793f)), Struct_1(reverseBits(global0.a), global1.a.a.x, 12261i, vec4<bool>(false, global1.d.a.x == ~45089u, global1.b.d.x, global1.d.d.x)), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 45962i, -22424i, u_input.c.x), global1.c), global1.c, ~global1.c), vec4<i32>(-45180i, global1.a.c, 22218i, _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.c.x, 12524i), _wgslsmith_add_i32(-2147483647i, global1.d.c)))), Struct_1(vec2<u32>(u_input.d, ~1u), 4294967295u, _wgslsmith_sub_i32(-countOneBits(25484i), 1i), global0.d), 1i << (0u % 32u));
    global0 = Struct_1(~global1.d.a, ~23353u, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(firstLeadingBit(10849i), 42232i), _wgslsmith_mod_i32(0i, global0.c), i32(-1i) * -94226i, abs(-67933i)), global1.c), vec4<bool>(true, global0.d.x, true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(312f)), _wgslsmith_f_op_f32(step(718f, -498f)))) <= _wgslsmith_f_op_f32(max(192f, _wgslsmith_f_op_f32(1625f - 1340f)))));
    let var_0 = ~countOneBits(vec2<i32>(~(-22147i), 7487i));
    global0 = Struct_1(global0.a, _wgslsmith_div_u32(_wgslsmith_sub_u32(global0.a.x, ~global0.b), ~44255u), var_0.x, global1.d.d);
    let var_1 = Struct_5(_wgslsmith_div_i32(1i << (_wgslsmith_div_u32(~21849u, ~global1.a.b) % 32u), 0i), firstTrailingBit(vec4<i32>(-47718i, _wgslsmith_dot_vec3_i32(vec3<i32>(11570i, -6493i, 13022i), vec3<i32>(global0.c, 39715i, -1i) | vec3<i32>(global1.b.c, -8114i, var_0.x)), reverseBits(_wgslsmith_sub_i32(-2147483647i, -1i)), _wgslsmith_mult_i32(global1.a.c, i32(-1i) * -9135i))));
    return Struct_2(Struct_1(global1.d.a, global0.a.x, var_0.x, !global1.d.d), Struct_1(~global1.a.a, 1u, -9533i, global0.d), max(~vec4<i32>(global1.b.c | -8286i, 58250i, global0.c, global1.d.c), ~var_1.b), Struct_1(global1.a.a, 1u, u_input.b, vec4<bool>(global0.c >= 1i, any(global0.d.yyy), true, global0.d.x)), global1.e);
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_5) -> i32 {
    let var_0 = u_input.d;
    var var_1 = 0u;
    var var_2 = arg_2.b;
    let var_3 = global0.a;
    let var_4 = func_2();
    return firstLeadingBit(_wgslsmith_sub_i32(var_2.x, arg_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global1.d.a, (~17274u ^ _wgslsmith_mod_u32(1668u, global1.a.b ^ 0u)) | abs(~global0.b), -func_1(vec4<f32>(-1137f, -1278f, 1516f, 2156f), 938f, Struct_5(9768i, vec4<i32>(-2147483647i, -2147483647i, -43162i, -1i))) << (u_input.d % 32u), vec4<bool>(any(select(!vec3<bool>(false, false, global3[_wgslsmith_index_u32(u_input.d, 24u)]), global1.a.d.xyy, global0.d.x)), any(select(global1.a.d.zyw, func_2().b.d.ywy, select(global3[_wgslsmith_index_u32(u_input.d, 24u)], global3[_wgslsmith_index_u32(u_input.d, 24u)], global1.a.d.x))), all(select(global0.d.zx, func_2().b.d.zx, global0.d.x && true)), true));
    var var_0 = _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.d, u_input.d), global0.b), global1.a.a.x), _wgslsmith_sub_u32(abs(104390u >> (global0.b % 32u)), ~4294967295u));
    global0 = Struct_1(firstTrailingBit(select(abs(~global0.a), vec2<u32>(1u >> (1u % 32u), 0u ^ u_input.d), vec2<bool>(true, !global0.d.x))), ~0u, global0.c, select(global1.a.d, global1.b.d, true));
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1265f, _wgslsmith_f_op_f32(f32(-1f) * -766f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-788f))))), -1990f)));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-939f, var_1.x)))))), _wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(var_1.x * var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(f32(-1f) * -1438f))));
    global3 = array<bool, 24>();
    var var_3 = Struct_2(global1.a, Struct_1(~(~vec2<u32>(40601u, 0u)) | vec2<u32>(~122327u, _wgslsmith_sub_u32(39295u, global0.a.x)), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d, u_input.d, global0.a.x, 1u), vec4<u32>(global1.d.a.x, u_input.d, 43328u, 56586u)), reverseBits(48104u & global0.a.x)), _wgslsmith_mod_i32(global0.c, -21852i), global1.d.d), ~_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(-8877i, -1i, 28306i, global1.a.c)), _wgslsmith_mult_vec4_i32(vec4<i32>(global1.c.x, -9100i, global1.c.x, u_input.a), global1.c | global1.c)), global1.d, min(-(~(-13821i) & _wgslsmith_clamp_i32(u_input.c.x, 25977i, u_input.b)), -1i));
    var var_4 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-func_2().d.c, min(max(~global0.c, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.c, 2147483647i, -1i, 0i), global1.c)), _wgslsmith_sub_i32(-19886i, -1i) << (countOneBits(9464u) % 32u)), global1.e), -vec3<i32>(0i, _wgslsmith_dot_vec4_i32(global1.c, vec4<i32>(-2147483647i, u_input.b, 0i, global1.d.c) & vec4<i32>(-1547i, -1i, var_3.d.c, global1.d.c)), 2147483647i), u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1223f, var_1.x, _wgslsmith_f_op_f32(2106f + var_2.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 411f, var_1.x) - vec3<f32>(var_2.x, -1856f, var_2.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1608f, var_1.x, var_2.x)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(205f, var_2.x, var_2.x)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-619f, -797f, var_1.x) * vec3<f32>(1000f, var_2.x, var_1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1183f, var_1.x, -976f) * vec3<f32>(var_1.x, var_2.x, -1267f))))), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.c, global1.c.xww), u_input.b << (firstLeadingBit(~14830u) % 32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(var_2.x)), 1558f, var_1.x, -508f)), ~firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(1u, global0.a.x, 15019u, var_3.a.b), vec4<u32>(1u, 7442u, 0u, 1u))) >> (((_wgslsmith_div_vec4_u32(vec4<u32>(global0.a.x, var_3.a.a.x, global1.b.a.x, 1u), vec4<u32>(4294967295u, 0u, 6591u, 51757u)) << ((vec4<u32>(0u, global0.a.x, global1.b.a.x, 13312u) >> (vec4<u32>(u_input.d, 20758u, 0u, global1.b.a.x) % vec4<u32>(32u))) % vec4<u32>(32u))) ^ _wgslsmith_clamp_vec4_u32(~vec4<u32>(var_3.b.b, 1u, 4294967295u, u_input.d), ~vec4<u32>(4294967295u, 1u, global0.b, var_3.a.a.x), vec4<u32>(0u, global1.b.b, global0.b, global0.a.x) & vec4<u32>(34422u, global0.b, global0.a.x, 4294967295u))) % vec4<u32>(32u)));
}

