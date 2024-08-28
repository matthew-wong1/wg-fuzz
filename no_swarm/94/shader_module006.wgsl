struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_2,
    d: vec3<i32>,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<i32, 15>;

var<private> global2: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec3<u32>(27759u, 0u, 1u), 6328u), Struct_1(vec3<u32>(1u, 39379u, 56928u), 59490u), Struct_1(vec3<u32>(27226u, 6010u, 610u), 4294967295u), Struct_1(vec3<u32>(0u, 7456u, 5424u), 48297u), Struct_1(vec3<u32>(25491u, 0u, 5971u), 68967u), Struct_1(vec3<u32>(41887u, 77713u, 6183u), 0u), Struct_1(vec3<u32>(0u, 1u, 51974u), 0u), Struct_1(vec3<u32>(4294967295u, 6454u, 3880u), 45950u), Struct_1(vec3<u32>(12146u, 29035u, 0u), 1048u), Struct_1(vec3<u32>(64304u, 4294967295u, 1u), 103582u), Struct_1(vec3<u32>(15269u, 46595u, 4294967295u), 1u), Struct_1(vec3<u32>(37343u, 8889u, 36546u), 1u), Struct_1(vec3<u32>(1u, 1u, 1u), 0u), Struct_1(vec3<u32>(25359u, 1u, 99056u), 0u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    let var_0 = global0.a;
    global2 = array<Struct_1, 14>();
    let var_1 = global0.a.b;
    global2 = array<Struct_1, 14>();
    global1 = array<i32, 15>();
    return true;
}

fn func_2(arg_0: vec4<f32>, arg_1: i32) -> Struct_2 {
    let var_0 = u_input.c;
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(arg_0 - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1561f * global0.a.b.c.x), _wgslsmith_f_op_f32(-727f * -920f), -1035f, -728f) + _wgslsmith_f_op_vec4_f32(arg_0 * _wgslsmith_f_op_vec4_f32(-arg_0))))));
    global2 = array<Struct_1, 14>();
    global2 = array<Struct_1, 14>();
    global1 = array<i32, 15>();
    return Struct_2(func_3(), Struct_1(vec3<u32>(43099u << (global0.a.b.b.a.x % 32u), u_input.a.x << (u_input.a.x % 32u), ~global0.a.b.d.a.x), ~_wgslsmith_mod_u32(u_input.a.x, ~global0.a.b.d.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(var_1.xwz, var_1.yyx), vec3<f32>(_wgslsmith_f_op_f32(arg_0.x - var_1.x), 475f, _wgslsmith_f_op_f32(arg_0.x * global0.a.c.c.x)), select(select(vec3<bool>(false, global0.a.b.a, global0.a.c.a), vec3<bool>(global0.a.b.a, global0.a.b.a, global0.a.b.a), true), select(vec3<bool>(true, false, false), vec3<bool>(true, global0.a.b.a, global0.a.b.a), global0.a.b.a), select(false, global0.a.c.a, false))))), global2[_wgslsmith_index_u32(21698u, 14u)]);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec3<i32>) -> bool {
    global0 = Struct_4(Struct_3(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.b.c.x, arg_1.c.x, false)) - _wgslsmith_f_op_f32(-arg_2.c.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.a.a.x)))), Struct_2(true, Struct_1(vec3<u32>(u_input.a.x, arg_0.c.d.b, u_input.a.x), select(0u, 4294967295u, true)), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_div_f32(arg_2.a.x, arg_1.c.x), -195f), Struct_1(~u_input.a.zyy, ~0u)), func_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1213f, arg_2.a.x, 1818f, arg_0.c.c.x)))), -_wgslsmith_div_i32(global0.b, 1i)), vec3<i32>(49978i, abs(arg_2.e), -1i), global1[_wgslsmith_index_u32(firstLeadingBit(arg_0.b.b.b), 15u)]), u_input.b.x);
    let var_0 = global0.a;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-572f, -1712f, -2447f, global0.a.c.c.x))))) * vec4<f32>(arg_1.c.x, 2459f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -785f) + _wgslsmith_f_op_f32(f32(-1f) * -524f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1546f * -1408f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1236f, -1116f, -381f, 596f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-533f, global0.a.b.c.x, var_0.b.c.x, var_0.c.c.x)))), true)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1595f, -1187f, 276f)), vec4<f32>(arg_0.c.c.x, arg_2.c.c.x, -967f, arg_1.c.x))))));
    return true;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_3) -> vec2<u32> {
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.a.c.c.x, -2180f, 192f, -1446f), vec4<f32>(252f, 113f, -520f, arg_3.a.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.b.c.x, -234f, global0.a.a.x, 199f), vec4<f32>(global0.a.b.c.x, 1706f, -1323f, 461f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.c.x, arg_2.b.c.x, 234f, -411f) - vec4<f32>(-1000f, global0.a.b.c.x, global0.a.b.c.x, 469f))))), u_input.c.x ^ global0.b).d;
    var var_1 = Struct_4(Struct_3(arg_2.b.c.yz, Struct_2(true, func_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.a.c.c.x, 1969f, 1352f, -2915f))), arg_3.e).d, vec3<f32>(_wgslsmith_f_op_f32(-arg_2.c.c.x), -1655f, _wgslsmith_f_op_f32(trunc(arg_2.b.c.x))), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.c.c.x, arg_3.c.c.x, global0.a.c.c.x, 1402f) - vec4<f32>(-711f, -842f, arg_3.c.c.x, -1192f)), u_input.c.x).d), arg_2.b, _wgslsmith_mult_vec3_i32(reverseBits(abs(u_input.c)), u_input.c), ~global1[_wgslsmith_index_u32((arg_1.a.x | arg_2.b.d.b) & arg_3.c.d.a.x, 15u)]), countOneBits(44154i) & reverseBits(global0.a.e));
    var var_2 = vec3<u32>(~(~(0u << (1u % 32u))) >> (arg_2.c.b.a.x % 32u), _wgslsmith_sub_u32(1u, ~_wgslsmith_mult_u32(1u, var_0.a.x)) ^ ~(~(9108u | var_0.a.x)), 4294967295u);
    var_2 = ~func_2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(min(921f, var_1.a.b.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -2640f), _wgslsmith_f_op_f32(sign(arg_2.c.c.x)), var_1.a.a.x))), -14277i).b.a;
    let var_3 = global0.a;
    return var_0.a.zx;
}

fn func_6(arg_0: Struct_3, arg_1: vec2<u32>) -> Struct_4 {
    global0 = Struct_4(arg_0, global1[_wgslsmith_index_u32(u_input.a.x, 15u)]);
    global1 = array<i32, 15>();
    let var_0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-global0.a.a.x), global0.a.c.c.x), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1040f, 1901f, -226f, 1283f)))), _wgslsmith_dot_vec4_i32(u_input.b, _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.e, -1i, u_input.c.x, u_input.b.x), max(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], global1[_wgslsmith_index_u32(0u, 15u)], 0i, -47547i), u_input.b)))), global0.a.c, _wgslsmith_add_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(global0.a.b.d.a.x, 15u)], global1[_wgslsmith_index_u32(global0.a.c.d.b, 15u)], -285i), vec3<i32>(global1[_wgslsmith_index_u32(arg_0.c.b.b, 15u)], arg_0.e, -1i)), arg_0.d), abs(_wgslsmith_dot_vec3_i32(-global0.a.d | _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.a.e, 1i, arg_0.d.x), vec3<i32>(21748i, -2147483647i, 4422i), vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 15u)], global0.a.e, 38638i)), vec3<i32>(max(global1[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(u_input.a.x, 15u)]), _wgslsmith_mod_i32(global0.b, 1i), 1i))));
    global1 = array<i32, 15>();
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.c.x, global0.a.c.c.x, -1297f, var_0.a.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.a.x, global0.a.b.c.x, 556f, arg_0.a.x) + vec4<f32>(var_0.a.x, -1425f, -1340f, arg_0.b.c.x))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.a.b.c.x, 1264f, arg_0.a.x, -744f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a.b.c.x, var_0.a.x, var_0.c.c.x, global0.a.a.x), vec4<f32>(347f, -488f, -1318f, var_0.b.c.x), vec4<bool>(var_0.c.a, global0.a.c.a, true, var_0.c.a))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-543f, -458f, arg_0.b.c.x, 1185f))))));
    return Struct_4(Struct_3(vec2<f32>(-291f, -562f), func_2(vec4<f32>(var_0.b.c.x, -702f, _wgslsmith_f_op_f32(arg_0.a.x * 1107f), 161f), reverseBits(u_input.c.x) | u_input.c.x), arg_0.c, arg_0.d, ~_wgslsmith_mult_i32(~6829i, global1[_wgslsmith_index_u32(var_0.b.b.b, 15u)] | -26072i)), -68599i);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2) -> f32 {
    global0 = func_6(global0.a, func_5(vec4<bool>(func_4(global0.a, func_2(vec4<f32>(828f, 1000f, arg_1.c.x, 491f), u_input.c.x), global0.a, reverseBits(vec3<i32>(arg_0.x, 0i, -69095i))), global0.a.b.a, any(!vec3<bool>(arg_1.a, global0.a.c.a, true)), true), arg_1.b, global0.a, Struct_3(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(-1145f, arg_1.c.x), global0.a.a))), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(300f, arg_1.c.x, -392f, -1272f) * vec4<f32>(-666f, global0.a.c.c.x, -633f, arg_1.c.x)), -24628i), global0.a.b, ~u_input.b.yyy & ~u_input.c, -2147483647i)));
    global0 = Struct_4(Struct_3(global0.a.a, Struct_2(true, func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.a.x, global0.a.a.x, global0.a.a.x, -1001f)), arg_0.x).d, _wgslsmith_f_op_vec3_f32(global0.a.b.c + _wgslsmith_f_op_vec3_f32(ceil(global0.a.b.c))), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.a.x, global0.a.b.c.x, -1855f, 184f) - vec4<f32>(-124f, 381f, 882f, -1688f)), arg_0.x).b), func_6(Struct_3(_wgslsmith_f_op_vec2_f32(arg_1.c.yx + vec2<f32>(arg_1.c.x, -321f)), global0.a.c, func_2(vec4<f32>(-514f, -529f, global0.a.c.c.x, arg_1.c.x), 28336i), _wgslsmith_mod_vec3_i32(vec3<i32>(21282i, 8941i, arg_0.x), u_input.b.yyy), global1[_wgslsmith_index_u32(firstLeadingBit(arg_1.d.a.x), 15u)]), func_6(global0.a, global0.a.b.b.a.yx).a.b.d.a.xz).a.b, global0.a.d, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-u_input.b.x, arg_0.x << (4222u % 32u), global0.a.e), 57071i)), u_input.c.x);
    let var_0 = arg_1;
    let var_1 = !(((_wgslsmith_clamp_u32(var_0.b.b, arg_1.d.b, 0u) < global0.a.c.b.a.x) && (global0.a.c.c.x >= -1197f)) || false);
    let var_2 = func_6(Struct_3(func_2(vec4<f32>(_wgslsmith_f_op_f32(arg_1.c.x - var_0.c.x), _wgslsmith_f_op_f32(ceil(246f)), 1171f, arg_1.c.x), firstLeadingBit(~global0.b)).c.xx, global0.a.b, Struct_2(func_2(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.c.x, arg_1.c.x, global0.a.a.x, global0.a.b.c.x), vec4<f32>(arg_1.c.x, global0.a.c.c.x, global0.a.a.x, 1228f)), 14291i).a, func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.x, var_0.c.x, arg_1.c.x, var_0.c.x)), -33883i).d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(872f, -938f, var_0.c.x), var_0.c)), Struct_1(min(vec3<u32>(global0.a.c.b.b, 1u, var_0.b.a.x), global0.a.b.d.a), 4294967295u)), vec3<i32>(firstLeadingBit(_wgslsmith_sub_i32(-12971i, global1[_wgslsmith_index_u32(var_0.d.b, 15u)])), ~global0.b, ~(global0.b << (u_input.a.x % 32u))), global0.b), vec2<u32>(83457u, var_0.b.b)).a.b;
    return _wgslsmith_f_op_f32(-var_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(1000f, global0.a.c.c.x), 885f) + -339f)));
    let var_1 = global0.a.c.b;
    let var_2 = _wgslsmith_add_vec3_i32(-vec3<i32>(u_input.c.x, global0.b, global1[_wgslsmith_index_u32(var_1.a.x, 15u)]) << (global0.a.b.d.a % vec3<u32>(32u)), ~global0.a.d >> (min(vec3<u32>(u_input.a.x, var_1.b, 69070u), vec3<u32>(global0.a.c.b.a.x, 0u, u_input.a.x) | vec3<u32>(var_1.b, 62798u, u_input.a.x)) % vec3<u32>(32u))) << (u_input.a.xzy % vec3<u32>(32u));
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(abs(vec2<i32>(-14437i, var_2.x)), global0.a.b))));
    let var_3 = Struct_1(global0.a.b.d.a, ~var_1.a.x >> (4294967295u % 32u));
    let var_4 = var_3.b;
    global1 = array<i32, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_1(vec2<i32>(-1i, 1i), global0.a.c)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1589f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.a.b.c.x + global0.a.b.c.x), -632f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.a.a.x * _wgslsmith_f_op_f32(global0.a.c.c.x + -1222f))))), max(u_input.a, vec4<u32>(6519u, ~(6475u & var_4), 27551u, 29919u)), select(u_input.b, -vec4<i32>(u_input.c.x, u_input.c.x, global1[_wgslsmith_index_u32(global0.a.c.b.a.x, 15u)], var_2.x) & countOneBits(u_input.b), select(vec4<bool>(true, global0.a.c.a, false, global0.a.b.a), !vec4<bool>(global0.a.b.a, global0.a.c.a, false, global0.a.c.a), false)) ^ u_input.b, vec2<u32>(~4294967295u, 49595u));
}

