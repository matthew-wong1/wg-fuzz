struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<u32>,
    c: vec4<f32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29>;

var<private> global1: vec2<u32> = vec2<u32>(1u, 22024u);

var<private> global2: array<vec2<f32>, 25> = array<vec2<f32>, 25>(vec2<f32>(905f, -1207f), vec2<f32>(2000f, 997f), vec2<f32>(-1138f, 575f), vec2<f32>(636f, 1000f), vec2<f32>(-265f, -272f), vec2<f32>(-1456f, 120f), vec2<f32>(-814f, -752f), vec2<f32>(-1055f, 990f), vec2<f32>(2592f, 1044f), vec2<f32>(1627f, -741f), vec2<f32>(866f, 1787f), vec2<f32>(510f, -1000f), vec2<f32>(-1387f, -765f), vec2<f32>(-187f, -837f), vec2<f32>(-696f, -715f), vec2<f32>(-1423f, 102f), vec2<f32>(-448f, 439f), vec2<f32>(296f, 1488f), vec2<f32>(-806f, 475f), vec2<f32>(-1524f, 1122f), vec2<f32>(-678f, -813f), vec2<f32>(-606f, 1000f), vec2<f32>(1330f, 391f), vec2<f32>(-1950f, -1526f), vec2<f32>(-276f, -1258f));

var<private> global3: vec4<u32> = vec4<u32>(4294967295u, 1u, 125149u, 4294967295u);

var<private> global4: array<Struct_3, 18>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_1) -> u32 {
    global3 = _wgslsmith_mod_vec4_u32(vec4<u32>(abs(1u), min(~abs(global1.x), 1u), max(~global1.x ^ u_input.b, 117884u), ~u_input.d.x), _wgslsmith_mult_vec4_u32(countOneBits(_wgslsmith_mult_vec4_u32(~u_input.d, u_input.d)), vec4<u32>(u_input.a, global1.x, max(arg_2.b, global1.x) & ~global1.x, u_input.b)));
    let var_0 = vec2<bool>(!arg_2.c, arg_2.c);
    var var_1 = Struct_2(arg_2, ~vec3<u32>(_wgslsmith_mod_u32(u_input.d.x, global3.x), ~arg_2.b, _wgslsmith_div_u32(global1.x, u_input.c.x)) >> (_wgslsmith_clamp_vec3_u32(max(~u_input.d.zyx, ~vec3<u32>(44836u, u_input.c.x, global3.x)), max(vec3<u32>(0u, u_input.a, 0u), vec3<u32>(4294967295u, global3.x, global1.x)), vec3<u32>(global1.x & 4294967295u, u_input.d.x, u_input.c.x)) % vec3<u32>(32u)), arg_2, arg_2, arg_2);
    var var_2 = var_0;
    var_2 = !vec2<bool>(arg_2.c, all(vec3<bool>(arg_1.c, arg_1.b > arg_1.a, true | arg_1.c)));
    return 1u;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_5(Struct_4(Struct_2(Struct_1(abs(128940u), _wgslsmith_dot_vec3_u32(vec3<u32>(3846u, 10750u, 0u), u_input.d.xzw), true, -77022i), vec3<u32>(u_input.a << (30039u % 32u), _wgslsmith_div_u32(30490u, 13787u), ~u_input.a), Struct_1(_wgslsmith_clamp_u32(4294967295u, global3.x, u_input.d.x), 54142u, true, -73025i), Struct_1(_wgslsmith_div_u32(global3.x, 1u), global3.x | 0u, all(vec3<bool>(true, false, true)), ~(-1i)), Struct_1(0u << (global1.x % 32u), func_3(vec4<i32>(0i, 0i, 0i, -28467i), global4[_wgslsmith_index_u32(global3.x, 18u)], Struct_1(global3.x, global1.x, true, -2147483647i)), false, 42224i)), global4[_wgslsmith_index_u32(16547u, 18u)]), min(_wgslsmith_add_vec2_u32(vec2<u32>(~global1.x, 0u), _wgslsmith_sub_vec2_u32(vec2<u32>(global1.x, 106029u), firstLeadingBit(vec2<u32>(global3.x, global1.x)))), _wgslsmith_div_vec2_u32(abs(vec2<u32>(55998u, global3.x)), global3.yz)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(595f, 209f, 536f, 515f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(964f, 1552f, -316f, -210f))))), ~min(41263i, max(~0i, 1i)));
    global2 = array<vec2<f32>, 25>();
    let var_1 = -440f;
    var var_2 = Struct_1(0u, global1.x, all(select(!select(vec3<bool>(var_0.a.a.a.c, var_0.a.a.c.c, var_0.a.b.c), vec3<bool>(false, var_0.a.b.c, true), var_0.a.b.c), vec3<bool>(all(vec3<bool>(var_0.a.b.c, true, var_0.a.b.c)), var_1 > var_0.c.x, var_0.a.b.c), true)), var_0.d);
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.c.x)) - -1315f) + -146f), _wgslsmith_f_op_f32(f32(-1f) * -1782f), -1953f));
    return var_0.a.a;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec2<u32>, arg_3: u32) -> bool {
    var var_0 = Struct_1(~arg_1.a.a.a, func_2().e.b ^ 4294967295u, !all(vec3<bool>(arg_1.a.d.b == 4294967295u, true, func_2().a.c)), -1i ^ ~arg_0.d.d);
    var var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(firstLeadingBit(u_input.d.yx), vec2<u32>(abs(32105u), u_input.d.x)), vec2<u32>(1u, ~(~(arg_1.a.c.b << (1u % 32u)))));
    var_1 = arg_2.x;
    let var_2 = all(vec4<bool>(all(select(!vec4<bool>(var_0.c, arg_1.b.c, true, true), vec4<bool>(var_0.c, arg_0.e.c, false, arg_0.e.c), select(vec4<bool>(false, arg_1.b.c, false, true), vec4<bool>(false, true, true, var_0.c), false))), ~1u > ~firstTrailingBit(arg_1.a.d.a), !arg_0.e.c, false));
    var var_3 = !select(select(!vec2<bool>(true, arg_0.e.c), !vec2<bool>(arg_0.e.c, var_0.c), select(true, false, true)), vec2<bool>(!(!arg_0.a.c), ~global1.x != select(470u, 4294967295u, var_2)), !(_wgslsmith_f_op_f32(trunc(-923f)) > _wgslsmith_f_op_f32(f32(-1f) * -512f)));
    return true;
}

fn func_1() -> f32 {
    global0 = array<Struct_2, 29>();
    let var_0 = !select(vec3<bool>(true, func_4(func_2(), Struct_4(Struct_2(Struct_1(0u, u_input.d.x, false, -1i), vec3<u32>(global1.x, u_input.d.x, 9075u), Struct_1(0u, global1.x, true, -1i), Struct_1(1u, global1.x, true, -74835i), Struct_1(u_input.d.x, global3.x, false, -1040i)), Struct_3(-30391i, -44734i, false)), vec2<u32>(global3.x, u_input.c.x), ~global3.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-19159i, 24390i, 25205i, 40724i), vec4<i32>(11000i, -2147483647i, 58940i, -45621i)) < 10202i), vec3<bool>(true, true, true), vec3<bool>(true, true, true));
    var var_1 = firstTrailingBit(vec4<i32>(_wgslsmith_clamp_i32(-firstLeadingBit(21874i), i32(-1i) * -24325i, _wgslsmith_dot_vec4_i32(vec4<i32>(908i, 25510i, -11438i, 20177i), -vec4<i32>(19366i, -43028i, -8584i, 1i))), countOneBits(-(~8132i)), max(-12191i, -2147483647i), -(~(-8718i))));
    var var_2 = global4[_wgslsmith_index_u32(min(u_input.b, u_input.d.x), 18u)];
    var_2 = global4[_wgslsmith_index_u32(0u, 18u)];
    return _wgslsmith_f_op_f32(sign(-1742f));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: vec4<f32>, arg_3: u32) -> Struct_5 {
    var var_0 = Struct_5(Struct_4(func_2(), Struct_3(max(select(-2147483647i, -1i, true), _wgslsmith_mult_i32(0i, 1i)), i32(-1i) * -21999i, true)), vec2<u32>(~_wgslsmith_div_u32(~26679u, 1u), reverseBits(max(arg_1.x << (arg_3 % 32u), 4294967295u))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1440f, -1109f, 1000f, arg_2.x), vec4<f32>(arg_2.x, -1000f, -1296f, arg_0.x), true)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 145f, arg_0.x, 274f))))), 23951i);
    let var_1 = -18326i;
    var_0 = Struct_5(Struct_4(Struct_2(Struct_1(global3.x, 1u, true, 0i), ~vec3<u32>(0u, u_input.c.x, 1u), var_0.a.a.a, var_0.a.a.a, Struct_1(56226u, global3.x >> (1u % 32u), var_0.a.a.a.c, ~var_1)), global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 0u, 0u, u_input.c.x), vec4<u32>(u_input.c.x, global3.x, u_input.a, global1.x)), 18u)]), countOneBits(arg_1), var_0.c, ~(firstLeadingBit(24403i) ^ var_1));
    global2 = array<vec2<f32>, 25>();
    var var_2 = abs(abs(-select(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1, var_0.a.a.d.d, var_1, 1i), vec4<i32>(var_1, var_0.d, -39665i, 9965i)), firstTrailingBit(vec4<i32>(var_1, var_1, 2147483647i, -59673i)), select(vec4<bool>(var_0.a.b.c, true, true, var_0.a.b.c), vec4<bool>(false, true, true, true), vec4<bool>(true, true, var_0.a.a.d.c, var_0.a.b.c)))));
    return Struct_5(Struct_4(func_2(), global4[_wgslsmith_index_u32(~34034u, 18u)]), vec2<u32>(var_0.b.x, ~30366u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(753f, var_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, arg_0.x)), 660f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-arg_2.x))))), 1i);
}

fn func_6(arg_0: i32, arg_1: Struct_5, arg_2: Struct_4) -> vec2<i32> {
    var var_0 = ~(~(-(vec2<i32>(-2147483647i, 0i) >> (arg_2.a.b.xx % vec2<u32>(32u)))));
    let var_1 = _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(6147i, ~arg_0) >> (arg_2.a.b.xx % vec2<u32>(32u)), ~(-min(vec2<i32>(0i, arg_0), vec2<i32>(-2147483647i, var_0.x)))), vec2<i32>(-1i) * -(firstTrailingBit(vec2<i32>(arg_1.a.a.d.d, arg_2.b.b)) << ((global3.yw >> (global3.yx % vec2<u32>(32u))) % vec2<u32>(32u))));
    global4 = array<Struct_3, 18>();
    global4 = array<Struct_3, 18>();
    global1 = vec2<u32>(4294967295u, 37013u);
    return vec2<i32>(-min(~1i, i32(-1i) * -arg_0), ~24722i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec2_i32(func_6(1i << (~(global1.x ^ 18860u) % 32u), func_5(global2[_wgslsmith_index_u32(global3.x, 25u)], global3.xw, vec4<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(f32(-1f) * -1180f), _wgslsmith_f_op_f32(f32(-1f) * -121f), _wgslsmith_f_op_f32(-1176f - -125f)), u_input.d.x), func_5(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(398f, 1452f), vec2<f32>(344f, -322f), true)))), abs(~vec2<u32>(1u, 1u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(485f, 1000f, 1537f, -707f), vec4<f32>(-1501f, 1225f, 246f, 1485f), true)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-176f, -1437f, -760f, 559f))), _wgslsmith_sub_u32(u_input.d.x | 4294967295u, u_input.a & global1.x)).a), _wgslsmith_div_vec2_i32(firstLeadingBit(-vec2<i32>(1i, -20045i)), ~(-vec2<i32>(-11767i, -18250i))) >> (~(~_wgslsmith_sub_vec2_u32(u_input.c, vec2<u32>(14575u, 1u))) % vec2<u32>(32u)));
    let var_1 = -vec2<i32>(var_0.x, func_2().a.d);
    var var_2 = func_5(global2[_wgslsmith_index_u32(u_input.a, 25u)], _wgslsmith_mod_vec2_u32(vec2<u32>(~func_3(vec4<i32>(17565i, 7703i, var_0.x, var_0.x), global4[_wgslsmith_index_u32(1u, 18u)], Struct_1(82591u, u_input.b, false, var_0.x)), global1.x), ~countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(19939u, global3.x), global3.wx))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(705f, 246f, 781f, -330f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(758f, 576f, -962f, -1974f)))))), global1.x).a.a.c;
    let var_3 = global4[_wgslsmith_index_u32(0u, 18u)];
    var var_4 = ~vec4<i32>(1i, -2147483647i, ~var_2.d, ~(_wgslsmith_add_i32(-1i, -1i) ^ _wgslsmith_add_i32(-2147483647i, var_0.x)));
    var var_5 = func_5(_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(~7064u, 25u)]), u_input.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1571f, -1124f, -202f, 672f) + vec4<f32>(1480f, -263f, -215f, -2361f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-754f, -1047f, 1512f, -627f))), true))))), firstTrailingBit(~func_3(~vec4<i32>(var_4.x, var_2.d, var_2.d, var_0.x), global4[_wgslsmith_index_u32(1u, 18u)], func_5(vec2<f32>(-1231f, -1000f), vec2<u32>(global1.x, 4294967295u), vec4<f32>(-621f, -1041f, 354f, -142f), 55337u).a.a.a))).d;
    let var_6 = 81183u;
    var_2 = func_5(global2[_wgslsmith_index_u32(func_5(_wgslsmith_div_vec2_f32(vec2<f32>(510f, -1918f), _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, u_input.b), 25u)])), countOneBits(~(~u_input.c)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-1621f - 2109f), _wgslsmith_f_op_f32(f32(-1f) * -992f), _wgslsmith_f_op_f32(f32(-1f) * -1125f), -163f), vec4<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-241f * 1282f), _wgslsmith_f_op_f32(941f - 568f), _wgslsmith_f_op_f32(528f + 977f)))), u_input.d.x).a.a.c.b, 25u)], ~global3.zw, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1731f, -444f, -1293f, 974f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-149f, 543f, 1210f, 1000f), vec4<f32>(-586f, -3568f, 239f, 2035f))))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1340f), -881f, func_5(vec2<f32>(213f, -879f), vec2<u32>(57896u, 1u), vec4<f32>(-109f, 1715f, 1014f, 433f), 17053u).c.x, -378f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-212f, _wgslsmith_f_op_f32(367f + 297f), _wgslsmith_f_op_f32(f32(-1f) * -243f), _wgslsmith_f_op_f32(max(1206f, 1233f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1261f, -1560f, -1000f, -255f) - vec4<f32>(-334f, 1974f, -722f, -485f)))))), vec4<bool>(false, var_3.c, true, !any(vec2<bool>(var_2.c, false))))), 1u).a.a.c;
    global0 = array<Struct_2, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~global3.x, ~global1.x, _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.b, 0u) | 2454u, 3409u)), global3.x, var_0.x, var_1);
}

