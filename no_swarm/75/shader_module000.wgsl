struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11>;

var<private> global1: f32;

var<private> global2: Struct_2;

var<private> global3: f32;

var<private> global4: array<f32, 4> = array<f32, 4>(1000f, -490f, 218f, 755f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: vec3<u32>) -> vec2<u32> {
    var var_0 = ~abs(global0[_wgslsmith_index_u32(countOneBits(~73202u), 11u)]);
    let var_1 = Struct_2(_wgslsmith_add_u32(~u_input.b.x, arg_0) > _wgslsmith_sub_u32(min(select(50689u, u_input.c.x, global2.a), ~0u), _wgslsmith_dot_vec2_u32(u_input.a.zz, _wgslsmith_div_vec2_u32(global2.c.a, u_input.c))), !any(select(!vec2<bool>(global2.b, false), vec2<bool>(true, true), false)), global2.c);
    var var_2 = var_1;
    let var_3 = min(-abs(countOneBits(vec3<i32>(global2.c.c.x, var_2.c.c.x, -1i)) << (min(vec3<u32>(81647u, global2.c.b.x, arg_1.x), global2.c.b.zzw) % vec3<u32>(32u))), select((reverseBits(var_2.c.c) << (vec3<u32>(var_2.c.b.x, 49645u, global2.c.a.x) % vec3<u32>(32u))) & select(vec3<i32>(-63242i, u_input.d, var_2.c.c.x), -vec3<i32>(46395i, 23733i, var_1.c.c.x), vec3<bool>(global2.a, true, false)), min(vec3<i32>(firstLeadingBit(1i), 0i, 17533i), _wgslsmith_clamp_vec3_i32(var_2.c.c, ~var_2.c.c, ~vec3<i32>(16443i, global0[_wgslsmith_index_u32(global2.c.a.x, 11u)], -70130i))), true));
    var_0 = var_1.c.c.x;
    return var_2.c.a;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>) -> vec2<bool> {
    var var_0 = global2.c;
    global1 = 1963f;
    let var_1 = arg_0.c;
    global4 = array<f32, 4>();
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(~1u, 4u)]))));
    return select(select(!(!(!vec2<bool>(false, arg_0.b))), !(!select(vec2<bool>(arg_0.a, global2.a), vec2<bool>(global2.a, false), vec2<bool>(global2.b, arg_0.a))), !select(!vec2<bool>(arg_0.a, false), vec2<bool>(arg_0.a, true), vec2<bool>(true, global2.a))), vec2<bool>(global2.c.b.x == 12142u, arg_0.b), 2147483647i == (2147483647i ^ -_wgslsmith_mod_i32(0i, global2.c.c.x)));
}

fn func_2(arg_0: Struct_5, arg_1: bool, arg_2: u32, arg_3: vec3<bool>) -> f32 {
    let var_0 = select(!arg_3.yy, func_4(Struct_2(any(arg_3.yz), global2.c.c.x < _wgslsmith_sub_i32(arg_0.a.c.x, 3312i), Struct_1(_wgslsmith_mult_vec2_u32(global2.c.b.wx, vec2<u32>(1u, 1u)), select(arg_0.a.b, global2.c.b, false), -global2.c.c)), abs(func_3(_wgslsmith_add_u32(u_input.a.x, arg_0.a.b.x), ~u_input.b))), false);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1363f));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-303f + _wgslsmith_f_op_f32(select(global4[_wgslsmith_index_u32(arg_2, 4u)], _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(global2.c.a.x, 4u)] - global4[_wgslsmith_index_u32(global2.c.b.x, 4u)]))), (global4[_wgslsmith_index_u32(u_input.c.x, 4u)] <= global4[_wgslsmith_index_u32(0u, 4u)]) | true)))));
    var var_2 = Struct_3(Struct_1(global2.c.a, ~select(min(vec4<u32>(global2.c.a.x, 37499u, 81782u, 1u), vec4<u32>(global2.c.b.x, global2.c.a.x, global2.c.a.x, 92095u)), min(vec4<u32>(1u, 1u, arg_0.a.a.x, arg_0.a.a.x), vec4<u32>(37183u, arg_2, 102028u, 82308u)), true), _wgslsmith_mult_vec3_i32(arg_0.a.c, reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, -95679i, 0i), vec3<i32>(global2.c.c.x, u_input.d, 14952i))))), vec4<u32>(67223u, arg_0.a.b.x, arg_2, ~4294967295u), Struct_2(true, any(vec3<bool>(var_0.x, global2.b, arg_3.x)), Struct_1(vec2<u32>(1u << (arg_2 % 32u), _wgslsmith_div_u32(arg_2, arg_2)), vec4<u32>(~54001u, 4294967295u, arg_2, 1u), vec3<i32>(1i, _wgslsmith_add_i32(global0[_wgslsmith_index_u32(arg_2, 11u)], u_input.d), global0[_wgslsmith_index_u32(abs(global2.c.a.x), 11u)]))));
    var_2 = Struct_3(global2.c, _wgslsmith_div_vec4_u32(select(~(global2.c.b >> (global2.c.b % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(~global2.c.b, global2.c.b), !select(vec4<bool>(false, var_0.x, arg_1, arg_1), vec4<bool>(false, global2.b, true, false), vec4<bool>(false, arg_3.x, arg_1, arg_1))), arg_0.a.b), var_2.c);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(865f + 840f), -1000f))) - _wgslsmith_f_op_f32(-var_1));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: Struct_4, arg_3: i32) -> Struct_2 {
    let var_0 = select(firstLeadingBit(global2.c.c.xx), vec2<i32>(arg_3 ^ 0i, abs(-1i)), func_4(Struct_2(true, all(!vec2<bool>(global2.a, global2.b)), Struct_1(vec2<u32>(global2.c.b.x, 1u) << (arg_2.a.c.a % vec2<u32>(32u)), ~arg_2.a.c.b, arg_2.a.c.c)), global2.c.a));
    let var_1 = global2.c.a.x << (min(~0u, 1u & min(global2.c.b.x, 11923u)) % 32u);
    let var_2 = vec4<u32>(~u_input.c.x, ~global2.c.b.x, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(arg_2.a.c.a, _wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(arg_2.a.c.b.x, var_1)), vec2<u32>(1u, arg_2.a.c.a.x))), vec2<u32>(reverseBits(_wgslsmith_mult_u32(0u, 0u)), var_1)), ~abs(_wgslsmith_clamp_u32(63347u, ~u_input.a.x, global2.c.a.x)));
    global4 = array<f32, 4>();
    global4 = array<f32, 4>();
    return arg_2.a;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(arg_1.x, 4u)] - _wgslsmith_f_op_f32(trunc(1744f))));
    let var_1 = -1354f;
    var var_2 = Struct_3(global2.c, abs(~global2.c.b), func_5(vec3<f32>(1030f, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(Struct_5(global2.c), global2.b, global2.c.a.x, vec3<bool>(global2.b, false, true)))))), abs(-max(vec4<i32>(global0[_wgslsmith_index_u32(1u, 11u)], u_input.d, global2.c.c.x, -1i), vec4<i32>(2147483647i, global2.c.c.x, global2.c.c.x, u_input.d))), Struct_4(Struct_2(true, !global2.b, Struct_1(vec2<u32>(7202u, 2306u), vec4<u32>(79825u, 4294967295u, 1u, 74550u), global2.c.c))), countOneBits(_wgslsmith_add_i32(-2147483647i, _wgslsmith_add_i32(2147483647i, global2.c.c.x)))));
    var var_3 = _wgslsmith_add_vec4_u32(firstTrailingBit(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 4294967295u, arg_0.x, 24828u) ^ var_2.a.b, global2.c.b))), vec4<u32>(global2.c.a.x, arg_1.x, ~var_2.a.b.x, arg_0.x) ^ vec4<u32>(~_wgslsmith_mod_u32(5692u, 92721u), ~(~21464u), ~84631u >> (arg_1.x % 32u), var_2.b.x & arg_0.x));
    global2 = Struct_2(global2.b, true, Struct_1(vec2<u32>(abs(~var_2.c.c.b.x), ~var_2.c.c.b.x), vec4<u32>(~arg_1.x, min(~0u, 30512u), _wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_0.x, 35858u, 1u, arg_0.x), vec4<u32>(64706u, var_2.a.a.x, arg_0.x, 73596u), global2.a), var_2.c.c.b), _wgslsmith_dot_vec4_u32(vec4<u32>(global2.c.b.x, 70585u, 14854u, 78177u), vec4<u32>(49756u, 8376u, var_3.x, global2.c.a.x))), var_2.c.c.c));
    return _wgslsmith_f_op_f32(f32(-1f) * -318f);
}

fn func_6(arg_0: u32, arg_1: vec2<bool>, arg_2: f32) -> Struct_1 {
    let var_0 = global2.c.b;
    var var_1 = !global2.b;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1154f);
    var var_3 = 1i;
    var_3 = _wgslsmith_mod_i32(11889i, reverseBits(global2.c.c.x)) << (select(~_wgslsmith_mod_u32(global2.c.a.x, firstLeadingBit(1u)), arg_0, !all(select(vec3<bool>(arg_1.x, arg_1.x, global2.b), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(global2.b, global2.a, arg_1.x)))) % 32u);
    return func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_2 * arg_2), -260f, _wgslsmith_f_op_f32(-var_2.x))) * vec3<f32>(-1000f, global4[_wgslsmith_index_u32(32294u, 4u)], arg_2)), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(1i, 1i, global2.c.c.x, global0[_wgslsmith_index_u32(u_input.c.x, 11u)]), vec4<i32>(35670i, global0[_wgslsmith_index_u32(1u, 11u)], global2.c.c.x, global2.c.c.x)), global0[_wgslsmith_index_u32(27785u, 11u)]), i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(global2.c.c.x, global0[_wgslsmith_index_u32(2209u, 11u)], global0[_wgslsmith_index_u32(arg_0, 11u)], global2.c.c.x), vec4<i32>(-4353i, global2.c.c.x, global0[_wgslsmith_index_u32(54819u, 11u)], global0[_wgslsmith_index_u32(global2.c.b.x, 11u)])), firstLeadingBit(-(i32(-1i) * -2147483647i)), _wgslsmith_dot_vec4_i32(firstLeadingBit(~vec4<i32>(u_input.d, 2147483647i, 1i, u_input.d)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, global0[_wgslsmith_index_u32(u_input.a.x, 11u)], -63245i, 2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-15348i, 8701i, u_input.d, global2.c.c.x), vec4<i32>(-2147483647i, u_input.d, global0[_wgslsmith_index_u32(31268u, 11u)], global2.c.c.x), vec4<i32>(u_input.d, global0[_wgslsmith_index_u32(41866u, 11u)], global2.c.c.x, global2.c.c.x))))), Struct_4(func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1667f, -509f, -779f), vec3<f32>(-534f, -780f, var_2.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -1231f, -528f))), vec4<i32>(min(global2.c.c.x, -37475i), global0[_wgslsmith_index_u32(~4294967295u, 11u)], _wgslsmith_add_i32(2147483647i, global2.c.c.x), _wgslsmith_mult_i32(-50083i, global0[_wgslsmith_index_u32(42135u, 11u)])), Struct_4(func_5(vec3<f32>(-1359f, -583f, 1359f), vec4<i32>(global2.c.c.x, global2.c.c.x, global2.c.c.x, 60120i), Struct_4(Struct_2(true, arg_1.x, Struct_1(global2.c.b.xy, global2.c.b, global2.c.c))), global2.c.c.x)), ~_wgslsmith_add_i32(0i, -1i))), ~firstLeadingBit(-1i | _wgslsmith_mult_i32(20837i, global0[_wgslsmith_index_u32(4294967295u, 11u)]))).c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 11>();
    global1 = -883f;
    let var_0 = !(!(!vec3<bool>(all(vec2<bool>(global2.b, global2.b)), any(vec2<bool>(true, global2.a)), global2.a)));
    global2 = Struct_2(!(u_input.d > (_wgslsmith_mod_i32(1i, global2.c.c.x) << (u_input.b.x % 32u))), true, func_6((u_input.a.x >> (global2.c.a.x % 32u)) << (abs(4294967295u) % 32u), !(!var_0.zy), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -125f), _wgslsmith_f_op_f32(func_1(~global2.c.b, global2.c.b.zzw, _wgslsmith_f_op_f32(ceil(1786f)))))));
    global3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_5(global2.c), all(vec3<bool>(var_0.x, global2.b, var_0.x)), func_3(global2.c.b.x, vec3<u32>(global2.c.b.x, u_input.b.x, 56285u)).x, !vec3<bool>(var_0.x, true, true))), -175f) * 1040f), _wgslsmith_f_op_f32(-168f * _wgslsmith_f_op_f32(-113f * 166f))));
    let var_1 = _wgslsmith_f_op_f32(round(global4[_wgslsmith_index_u32(global2.c.b.x, 4u)]));
    let var_2 = u_input.d;
    var var_3 = vec4<bool>(global2.b, var_0.x, var_0.x, any(var_0));
    let x = u_input.a;
    s_output = StorageBuffer(abs(countOneBits(global0[_wgslsmith_index_u32(1u, 11u)])), -func_6(global2.c.a.x, select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(var_0.x, var_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))).c, _wgslsmith_f_op_f32(round(1000f)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, global2.c.a.x, ~u_input.a.x, 52089u), vec4<u32>(0u << (u_input.a.x % 32u), 3356u, _wgslsmith_clamp_u32(global2.c.b.x, u_input.c.x, 40541u), u_input.c.x), vec4<u32>(8770u, global2.c.a.x, 0u, global2.c.b.x)), countOneBits(~global2.c.a.x));
}

