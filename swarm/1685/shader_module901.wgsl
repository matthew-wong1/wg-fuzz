struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> vec4<bool> {
    var var_0 = arg_2.a.x;
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(599f, arg_0.a.x), -442f));
    var_0 = -361f;
    let var_1 = vec4<i32>(8940i, global0[_wgslsmith_index_u32(13793u, 26u)], ~(-_wgslsmith_dot_vec3_i32(vec3<i32>(-12995i, 2147483647i, global0[_wgslsmith_index_u32(0u, 26u)]), vec3<i32>(1i, global0[_wgslsmith_index_u32(u_input.a.x, 26u)], -23211i))), 16545i) & ~_wgslsmith_mod_vec4_i32(-select(vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 26u)], 1i, global0[_wgslsmith_index_u32(31383u, 26u)], 1i), vec4<i32>(-21373i, -73588i, -20276i, global0[_wgslsmith_index_u32(18156u, 26u)]), false), select(-vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 26u)], -2147483647i, global0[_wgslsmith_index_u32(u_input.b, 26u)], -10839i), _wgslsmith_add_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 26u)], global0[_wgslsmith_index_u32(u_input.b, 26u)], global0[_wgslsmith_index_u32(88357u, 26u)], 15683i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 26u)], 67840i, 5497i, global0[_wgslsmith_index_u32(1u, 26u)])), vec4<bool>(true, false, false, false)));
    var var_2 = Struct_3(!(!vec3<bool>(true, any(vec2<bool>(false, false)), true)), vec2<i32>(-1i, global0[_wgslsmith_index_u32(abs(u_input.b), 26u)]) << (((vec2<u32>(u_input.c, u_input.b) >> (u_input.a % vec2<u32>(32u))) << (_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 0u), select(vec2<u32>(u_input.a.x, u_input.b), vec2<u32>(u_input.c, u_input.b), true)) % vec2<u32>(32u))) % vec2<u32>(32u)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, arg_3, -1923f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(247f, 602f, arg_2.a.x))) * vec3<f32>(arg_1.c.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1416f), arg_1.a.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, 1011f, 1603f, -1765f) * vec4<f32>(-387f, arg_0.a.x, arg_0.a.x, -871f)) + _wgslsmith_div_vec4_f32(vec4<f32>(926f, arg_0.a.x, arg_2.a.x, 455f), vec4<f32>(-1521f, 293f, -270f, arg_1.a.x)))), vec4<f32>(arg_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -454f) * _wgslsmith_f_op_f32(1076f - 509f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.a.x))), _wgslsmith_f_op_f32(abs(-1000f)))));
    return vec4<bool>(all(!vec4<bool>(var_2.a.x, any(vec4<bool>(var_2.a.x, var_2.a.x, false, var_2.a.x)), !var_2.a.x, true)), true, true, _wgslsmith_add_i32(1i, _wgslsmith_div_i32(var_2.b.x, 1i)) < -var_2.b.x);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(global0[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(80706u, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)], 1i), firstTrailingBit(~vec4<i32>(-1i, -18773i, global0[_wgslsmith_index_u32(u_input.c, 26u)], global0[_wgslsmith_index_u32(u_input.a.x, 26u)])))) << (_wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.b, u_input.a.x, u_input.b, 4294967295u) | ~vec4<u32>(1u, u_input.c, u_input.a.x, u_input.c), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 1u, u_input.a.x, u_input.c), vec4<u32>(u_input.c, 19006u, 30778u, 4294967295u)), !func_3(Struct_4(arg_0.a), Struct_2(arg_1.xxw, Struct_1(vec3<f32>(1233f, arg_0.a.x, arg_1.x)), arg_0), arg_0, -882f)), ~vec4<u32>(select(u_input.c, 0u, false), u_input.a.x, 32872u & u_input.b, 0u)) % vec4<u32>(32u));
    let var_1 = -131f;
    global0 = array<i32, 26>();
    var var_2 = var_1;
    var_2 = -824f;
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> bool {
    var var_0 = u_input.a;
    let var_1 = firstLeadingBit(countOneBits(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.b, 1u, u_input.b), ~vec4<u32>(var_0.x, 29671u, var_0.x, u_input.a.x), vec4<u32>(96226u, u_input.a.x, 1u, var_0.x) | vec4<u32>(var_0.x, var_0.x, 0u, 13259u)), countOneBits(~vec4<u32>(9747u, 7334u, 33564u, u_input.a.x)), true)));
    var var_2 = var_1.x;
    var var_3 = arg_1;
    var_2 = abs(0u);
    return _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(abs(var_0.x), 26u)], _wgslsmith_div_i32(global0[_wgslsmith_index_u32(28963u, 26u)], -12457i) >> (countOneBits(31673u) % 32u), -global0[_wgslsmith_index_u32(0u, 26u)] >> (_wgslsmith_sub_u32(var_0.x, var_1.x) % 32u)), _wgslsmith_div_vec3_i32(vec3<i32>(max(global0[_wgslsmith_index_u32(var_0.x, 26u)], 1i), 1i, global0[_wgslsmith_index_u32(max(u_input.a.x, 4294967295u), 26u)]), vec3<i32>(abs(0i), global0[_wgslsmith_index_u32(4294967295u, 26u)] & 22950i, global0[_wgslsmith_index_u32(var_1.x, 26u)]))) > global0[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(u_input.b), 1u) >> (var_0.x % 32u), 26u)];
}

fn func_1(arg_0: vec2<i32>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(835f + _wgslsmith_div_f32(378f, 1324f)), 848f)));
    let var_1 = select(~vec4<u32>(1u, u_input.c, _wgslsmith_mult_u32(0u, 54179u), countOneBits(firstTrailingBit(u_input.a.x))), vec4<u32>(firstTrailingBit(firstLeadingBit(_wgslsmith_div_u32(u_input.c, u_input.b))), u_input.c, u_input.b, _wgslsmith_div_u32(4294967295u, select(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c), vec2<u32>(u_input.c, 10772u)), ~4294967295u, true))), !func_4(Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, var_0.x, var_0.x)))), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1551f, var_0.x, var_0.x) + vec3<f32>(-1401f, 1376f, var_0.x)), func_2(Struct_1(vec3<f32>(-698f, -445f, -558f)), vec4<f32>(-1150f, var_0.x, 509f, var_0.x)), Struct_1(vec3<f32>(var_0.x, -1791f, var_0.x)))));
    global0 = array<i32, 26>();
    var var_2 = _wgslsmith_mult_u32(56550u, _wgslsmith_dot_vec4_u32(var_1, ~(vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, var_1.x) >> (abs(vec4<u32>(u_input.c, u_input.b, var_1.x, var_1.x)) % vec4<u32>(32u)))));
    global0 = array<i32, 26>();
    return Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, 1442f, var_0.x))) + vec3<f32>(-1191f, var_0.x, var_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(max(vec2<i32>(countOneBits(-2147483647i), -(global0[_wgslsmith_index_u32(u_input.a.x, 26u)] ^ -27625i)), vec2<i32>(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(45750u, u_input.a.x), 26u)], -global0[_wgslsmith_index_u32(47755u, 26u)]), _wgslsmith_sub_i32(~global0[_wgslsmith_index_u32(u_input.c, 26u)], global0[_wgslsmith_index_u32(15925u, 26u)]))));
    var var_1 = Struct_3(!(!select(func_3(Struct_4(vec3<f32>(491f, -1118f, 1000f)), Struct_2(vec3<f32>(-348f, 535f, var_0.a.x), Struct_1(vec3<f32>(var_0.a.x, var_0.a.x, -1000f)), Struct_1(var_0.a)), Struct_1(vec3<f32>(var_0.a.x, var_0.a.x, -580f)), 858f).zxw, vec3<bool>(true, true, true), vec3<bool>(true, true, true))), -vec2<i32>(-_wgslsmith_mult_i32(21439i, 13665i), -select(-1878i, global0[_wgslsmith_index_u32(1u, 26u)], false)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(692f, var_0.a.x, 984f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.a.x, 977f, var_0.a.x, var_0.a.x)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(219f, var_0.a.x, -1117f, var_0.a.x)))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-111f)), _wgslsmith_f_op_f32(select(829f, var_0.a.x, false)), _wgslsmith_f_op_f32(f32(-1f) * -193f), -1209f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1470f, -860f, 314f, var_0.a.x), vec4<f32>(-923f, var_0.a.x, -622f, var_0.a.x)))))));
    global0 = array<i32, 26>();
    var_0 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_f_op_f32(round(850f)), 457f));
    let var_2 = Struct_3(vec3<bool>(true, !func_4(var_1.c, Struct_2(vec3<f32>(var_1.d.x, var_0.a.x, 719f), Struct_1(var_1.c.a), Struct_1(var_1.d.zyw))), var_1.a.x), -countOneBits(vec2<i32>(countOneBits(-27681i), 0i)), var_1.c, vec4<f32>(572f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-687f - var_1.c.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -843f)), var_0.a.x));
    var var_3 = -8036i;
    var var_4 = var_1.c;
    let var_5 = var_2.d;
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(0u, 26u)], var_0.a.x, select(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.b.x, global0[_wgslsmith_index_u32(u_input.c, 26u)], var_2.b.x, 1i), firstLeadingBit(vec4<i32>(12551i, global0[_wgslsmith_index_u32(u_input.a.x, 26u)], -2147483647i, 5868i)), -vec4<i32>(1i, global0[_wgslsmith_index_u32(45054u, 26u)], -2147483647i, 2147483647i)), firstLeadingBit(-vec4<i32>(var_1.b.x, -1i, 1i, -60609i))), firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.b.x, -4325i, var_1.b.x, 2147483647i), -vec4<i32>(var_1.b.x, global0[_wgslsmith_index_u32(57871u, 26u)], global0[_wgslsmith_index_u32(u_input.b, 26u)], var_1.b.x))), var_2.a.x), var_2.d);
}

