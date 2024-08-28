struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: bool,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23> = array<f32, 23>(1079f, -1763f, 476f, 224f, -1126f, -1000f, 866f, -1000f, 538f, 1181f, 722f, 1379f, -556f, 519f, 383f, 281f, -1000f, -1262f, -693f, 1195f, -1604f, 1336f, 1544f);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool) -> i32 {
    let var_0 = u_input.a.zz;
    var var_1 = Struct_2(-1i, Struct_1(select(var_0, ~var_0, select(vec2<bool>(arg_0.x, arg_0.x), select(vec2<bool>(arg_1, false), arg_0.xx, false), false)), _wgslsmith_mult_vec4_i32(min(vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, 28821i), vec4<i32>(1i, 2147483647i, -1i, u_input.b.x)), -abs(vec4<i32>(u_input.b.x, -1i, -16754i, -2147483647i))), -2147483647i >> (~_wgslsmith_add_u32(var_0.x, 42032u) % 32u), select(select(vec4<bool>(arg_1, arg_1, true, arg_1), arg_0, !arg_0), vec4<bool>(arg_0.x, true, arg_1, arg_1), select(select(arg_0, vec4<bool>(true, arg_0.x, arg_1, false), arg_0), select(arg_0, vec4<bool>(false, arg_0.x, false, arg_0.x), arg_0), !arg_0)), countOneBits(_wgslsmith_mult_vec4_i32(~vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, 2147483647i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)))), Struct_1(vec2<u32>(min(abs(u_input.a.x), 1u), u_input.a.x), vec4<i32>(~u_input.b.x, 18746i, _wgslsmith_mod_i32(u_input.b.x, u_input.b.x), _wgslsmith_clamp_i32(min(-36781i, u_input.b.x), -21335i, u_input.b.x)), reverseBits(firstTrailingBit(max(-2147483647i, 1i))), vec4<bool>(true, false == (-13193i <= u_input.b.x), all(arg_0.wx), arg_1), _wgslsmith_add_vec4_i32(abs(-vec4<i32>(u_input.b.x, 1i, u_input.b.x, -1i)), vec4<i32>(_wgslsmith_mod_i32(1i, u_input.b.x), 1i, -2147483647i, 2147483647i))));
    return 40334i;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, arg_1.a.x), 23u)], -1566f, global0[_wgslsmith_index_u32(~24703u, 23u)]))));
    global0 = array<f32, 23>();
    let var_1 = vec4<f32>(-1390f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(4294967295u, 23u)])))) + 1772f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-189f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(98032u, u_input.a.x), 23u)] * -101f), arg_2.b.d.x))), -528f);
    var var_2 = arg_2;
    var var_3 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(max(~24452u, ~u_input.a.x), ~_wgslsmith_mod_u32(12951u, 93912u)), 23u)]);
    return ~firstTrailingBit(~countOneBits(max(vec3<u32>(1u, arg_2.b.a.x, arg_0.a.x), vec3<u32>(1u, u_input.a.x, u_input.a.x))));
}

fn func_2() -> Struct_3 {
    global0 = array<f32, 23>();
    return Struct_3(func_4(Struct_1(~vec2<u32>(u_input.a.x, 64492u), firstTrailingBit(~vec4<i32>(u_input.b.x, -1i, -46017i, -15241i)), -1i, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true)), ~(vec4<i32>(18188i, u_input.b.x, u_input.b.x, u_input.b.x) & vec4<i32>(u_input.b.x, -9406i, u_input.b.x, -37250i))), Struct_1(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, 8343u), u_input.a.zw, u_input.a.zz), -vec4<i32>(1i, 1i, u_input.b.x, u_input.b.x), u_input.b.x, vec4<bool>(true, true, true, true), vec4<i32>(-u_input.b.x, func_3(vec4<bool>(true, true, false, true), false), u_input.b.x, _wgslsmith_mult_i32(0i, u_input.b.x))), Struct_2(~u_input.b.x, Struct_1(vec2<u32>(u_input.a.x, 1u), min(vec4<i32>(0i, -1i, 39824i, -27946i), vec4<i32>(u_input.b.x, u_input.b.x, -8758i, u_input.b.x)), ~u_input.b.x, vec4<bool>(true, true, true, true), -vec4<i32>(-2147483647i, -2147483647i, -22341i, 2147483647i)), Struct_1(u_input.a.zz, _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), 14532i, vec4<bool>(false, false, false, true), countOneBits(vec4<i32>(u_input.b.x, -28211i, u_input.b.x, u_input.b.x))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)]) + _wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 23u)], -284f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -579f) - _wgslsmith_f_op_f32(532f * -400f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)]) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(1u, 23u)]))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-568f, global0[_wgslsmith_index_u32(15385u, 23u)]))))), Struct_1(~u_input.a.zw, ~vec4<i32>(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), ~2147483647i, ~u_input.b.x, ~u_input.b.x), _wgslsmith_div_i32(-2823i, u_input.b.x), vec4<bool>(u_input.b.x == firstLeadingBit(-61416i), any(vec2<bool>(true, true)), true, true), _wgslsmith_mod_vec4_i32(~(vec4<i32>(44398i, u_input.b.x, -20183i, u_input.b.x) << (vec4<u32>(25279u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), vec4<i32>(2147483647i, 0i, u_input.b.x, u_input.b.x))));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_2) -> bool {
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    var var_0 = func_2();
    var_0 = func_2();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(select(select(-25907i, u_input.b.x, false) < _wgslsmith_mult_i32(27819i, -1i), !func_1(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 490f, global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), Struct_3(u_input.a.yyw, vec2<f32>(506f, global0[_wgslsmith_index_u32(0u, 23u)]), Struct_1(vec2<u32>(u_input.a.x, u_input.a.x), vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, -1i), 0i, vec4<bool>(false, false, true, true), vec4<i32>(-33270i, -22939i, 19600i, u_input.b.x))), Struct_3(u_input.a.zzw, vec2<f32>(-857f, global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), Struct_1(u_input.a.zy, vec4<i32>(u_input.b.x, 2147483647i, 1i, -2147483647i), 41637i, vec4<bool>(true, true, false, true), vec4<i32>(30i, -2147483647i, u_input.b.x, u_input.b.x))), Struct_2(u_input.b.x, Struct_1(u_input.a.ww, vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, -1i), 2226i, vec4<bool>(true, false, true, false), vec4<i32>(2147483647i, u_input.b.x, 0i, u_input.b.x)), Struct_1(u_input.a.xw, vec4<i32>(u_input.b.x, 6280i, -2147483647i, 0i), u_input.b.x, vec4<bool>(true, false, false, true), vec4<i32>(-5429i, -45840i, 1i, u_input.b.x)))), false) && !(!all(vec2<bool>(false, false))), !select(all(vec2<bool>(false, false)), true, true), !func_2().c.d.x, !any(vec2<bool>(any(vec3<bool>(false, true, true)), true)));
    let var_1 = !vec2<bool>(all(var_0.yzx), u_input.a.x <= (u_input.a.x << (u_input.a.x % 32u)));
    var var_2 = vec4<u32>(~_wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(4294967295u, 26049u, u_input.a.x, 11807u)), ~_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 33539u))), max(_wgslsmith_div_u32(1u, ~(u_input.a.x << (12846u % 32u))), func_2().c.a.x), 20651u, _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(62636u, 1u, 4294967295u, u_input.a.x) >> ((u_input.a | u_input.a) % vec4<u32>(32u)))));
    let var_3 = Struct_3(vec3<u32>(var_2.x, var_2.x, u_input.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-683f, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(64984u, u_input.a.x, var_2.x, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 59419u, 0u), vec4<u32>(var_2.x, 0u, 45915u, 0u))), 23u)]) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1270f, global0[_wgslsmith_index_u32(u_input.a.x, 23u)]))))), func_2().c);
    var var_4 = !(!vec4<bool>(!var_1.x, true, any(select(var_0.xxy, vec3<bool>(var_3.c.d.x, var_1.x, false), var_0.x)), true));
    var var_5 = Struct_4(max(vec3<i32>(countOneBits(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x)), var_3.c.b.x, -1i), -_wgslsmith_add_vec3_i32(select(vec3<i32>(u_input.b.x, 0i, 7401i), var_3.c.e.zyy, var_4.wwx), reverseBits(var_3.c.e.wyx))), var_3.c.d.x, ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, reverseBits(var_3.c.a.x), var_3.a.x), func_2().a));
    var_0 = select(vec4<bool>(!(!(var_2.x == 32578u)), true, !any(vec3<bool>(var_1.x, var_0.x, var_3.c.d.x)), var_3.b.x >= _wgslsmith_f_op_f32(f32(-1f) * -1655f)), func_2().c.d, func_2().c.d.x);
    var_2 = _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.x, 57689u, u_input.a.x, 1u), u_input.a), u_input.a) | vec4<u32>(1u, min(41825u, 21736u), var_3.a.x, 4294967295u), u_input.a);
    let var_6 = min(vec3<u32>(16883u, 18875u, 1u), vec3<u32>(~(~max(886u, var_2.x)), 44131u | _wgslsmith_sub_u32(~4294967295u, select(0u, var_2.x, true)), _wgslsmith_add_u32(u_input.a.x & ~29465u, 10275u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(0u, 23u)]))), _wgslsmith_f_op_f32(f32(-1f) * -1046f), global0[_wgslsmith_index_u32(0u, 23u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.b.x, var_3.b.x, -863f, global0[_wgslsmith_index_u32(1u, 23u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(14718u, 23u)], -2173f, -1376f) + vec4<f32>(var_3.b.x, global0[_wgslsmith_index_u32(var_5.c.x, 23u)], -287f, 1567f)), !var_3.c.d))))), vec3<f32>(global0[_wgslsmith_index_u32(~(~var_6.x), 23u)], _wgslsmith_f_op_f32(-var_3.b.x), -1170f), ~((abs(vec2<u32>(var_6.x, u_input.a.x)) | max(vec2<u32>(1u, 1u), vec2<u32>(88009u, 54781u))) << (var_5.c.yz % vec2<u32>(32u))));
}

