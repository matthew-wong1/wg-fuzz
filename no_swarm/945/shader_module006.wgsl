struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
    c: vec3<f32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25> = array<i32, 25>(2147483647i, -23026i, -32612i, 0i, 21440i, 1i, 20416i, 42280i, -1i, 29767i, 48408i, 2147483647i, 11449i, 1i, -37575i, 2147483647i, -84308i, 55636i, i32(-2147483648), 14921i, -58915i, 33830i, -38180i, 50462i, 1i);

var<private> global1: f32 = -1042f;

var<private> global2: array<i32, 28>;

var<private> global3: vec4<bool> = vec4<bool>(false, true, true, true);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: f32, arg_3: Struct_4) -> bool {
    let var_0 = 0i;
    var var_1 = _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(countOneBits(41574u ^ (_wgslsmith_sub_u32(u_input.a, u_input.c.x) & ~u_input.a)), 25u)], global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(4294967295u, 73525u, u_input.a) & abs(6268u), 28u)] ^ abs(-6019i));
    var var_2 = -_wgslsmith_add_i32(-6541i, i32(-1i) * -1i);
    global2 = array<i32, 28>();
    var_2 = 1i;
    return select(arg_3.a.x, 12711i, true) < (select(1i, -1i, all(!vec3<bool>(global3.x, false, global3.x))) & _wgslsmith_clamp_i32(~arg_3.a.x, abs(_wgslsmith_clamp_i32(0i, u_input.b.x, -28321i)), arg_3.a.x));
}

fn func_2() -> vec3<f32> {
    global1 = -1360f;
    global2 = array<i32, 28>();
    let var_0 = Struct_1(global3.x, u_input.b.zx, !(!global3.x), select(firstLeadingBit(-(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 25u)], -1i, -5170i) ^ vec3<i32>(u_input.b.x, global0[_wgslsmith_index_u32(1u, 25u)], 1803i))), vec3<i32>(_wgslsmith_mod_i32(-14968i, -2147483647i) >> ((4294967295u << (u_input.a % 32u)) % 32u), ~6236i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, 13607i, global0[_wgslsmith_index_u32(1u, 25u)], -6619i), vec4<i32>(0i, u_input.b.x, u_input.b.x, 56924i)), vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(u_input.a, 28u)], global0[_wgslsmith_index_u32(u_input.c.x, 25u)], global0[_wgslsmith_index_u32(u_input.c.x, 25u)]))), vec3<bool>(!func_3(2147483647i, 27795u, 1462f, Struct_4(vec2<i32>(global0[_wgslsmith_index_u32(1577u, 25u)], global0[_wgslsmith_index_u32(0u, 25u)]), global3.x, vec3<f32>(1043f, -923f, 1000f), vec4<bool>(global3.x, false, true, global3.x))), true, !(!global3.x))));
    var var_1 = var_0.c;
    var var_2 = ~min(~u_input.c.x, 30921u);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(123f * 1033f) + _wgslsmith_f_op_f32(select(-298f, 607f, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1292f)), _wgslsmith_f_op_f32(floor(1632f))), 1f))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = arg_2.a.a;
    var var_1 = arg_2.a.a.d.x;
    var var_2 = Struct_4(vec2<i32>(-2147483647i, reverseBits(global2[_wgslsmith_index_u32(1u, 28u)])), arg_1.a, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_0))), !(!select(!vec4<bool>(arg_1.c, arg_1.c, var_0.a, var_0.c), vec4<bool>(true, false, arg_1.c, true), select(vec4<bool>(true, true, var_0.a, true), vec4<bool>(global3.x, arg_2.a.a.a, arg_1.c, true), vec4<bool>(true, true, global3.x, true)))));
    var var_3 = Struct_3(arg_2.a);
    var_2 = Struct_4(abs(select(vec2<i32>(arg_1.d.x | -20949i, -2147483647i), u_input.b.xx, arg_1.a & (u_input.c.x > u_input.c.x))), -_wgslsmith_mod_i32(-10958i, select(0i, -2616i, var_0.a)) <= min(-(~10481i), countOneBits(1i & var_3.a.a.d.x)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(arg_0.x + -821f), _wgslsmith_f_op_f32(-1333f * arg_0.x), _wgslsmith_f_op_f32(min(var_2.c.x, arg_0.x))))))), var_2.d);
    return var_3.a;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: vec2<f32>, arg_3: vec2<i32>) -> bool {
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()), vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(min(arg_1.x, arg_2.x)), arg_2.x))), Struct_1(func_3(-1i, _wgslsmith_div_u32(1u, u_input.c.x), 408f, Struct_4(u_input.b.yy, true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(619f, arg_1.x, 392f)), vec4<bool>(global3.x, global3.x, false, false))), -vec2<i32>(arg_3.x, 19421i), !global3.x, u_input.b), Struct_3(Struct_2(Struct_1(global3.x, -u_input.b.xy, all(vec4<bool>(true, global3.x, global3.x, false)), u_input.b), u_input.c)), vec2<bool>(!(_wgslsmith_dot_vec2_u32(u_input.c.xz, u_input.c.zz) != _wgslsmith_mod_u32(29236u, arg_0.x)), global3.x));
    var var_1 = select(~firstLeadingBit(vec4<i32>(max(global2[_wgslsmith_index_u32(4294967295u, 28u)], -23617i), 1i, var_0.a.b.x >> (var_0.b.x % 32u), abs(arg_3.x))), vec4<i32>(firstLeadingBit(reverseBits(0i)), -37942i, firstTrailingBit(~(~(-1i))), ~(-49409i)), global3.x);
    let var_2 = vec4<i32>(11268i, ~((arg_3.x ^ _wgslsmith_clamp_i32(0i, -1i, var_1.x)) ^ global2[_wgslsmith_index_u32(~arg_0.x, 28u)]), (arg_3.x | select(u_input.b.x, arg_3.x, true)) >> (_wgslsmith_mult_u32(arg_0.x, ~abs(u_input.c.x)) % 32u), -2147483647i);
    let var_3 = Struct_3(Struct_2(Struct_1(false, var_2.yy, func_3(_wgslsmith_add_i32(arg_3.x, var_2.x), countOneBits(0u), arg_2.x, Struct_4(var_1.xx, var_0.a.c, vec3<f32>(-1878f, arg_2.x, arg_2.x), vec4<bool>(global3.x, true, false, false))), u_input.b), ~vec3<u32>(var_0.b.x >> (u_input.c.x % 32u), ~1u, firstLeadingBit(u_input.a))));
    global0 = array<i32, 25>();
    return var_0.a.c;
}

fn func_5(arg_0: bool, arg_1: vec2<i32>, arg_2: i32, arg_3: vec4<bool>) -> vec4<f32> {
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1018f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1560f + 1210f) * 1689f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -435f) + _wgslsmith_f_op_f32(-2427f - -1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -2176f)));
    let var_0 = arg_3.yw;
    let var_1 = abs(u_input.c.x) <= u_input.c.x;
    global0 = array<i32, 25>();
    let var_2 = func_4(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-545f, 611f)) * _wgslsmith_f_op_vec3_f32(func_2()).x), -402f, any(arg_3.zx))), 1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(119f * -178f), _wgslsmith_f_op_f32(1004f + -436f)) * 1f)), func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1651f, -1099f, 171f))), vec3<f32>(742f, -1804f, _wgslsmith_f_op_f32(-856f + 1332f))), func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-588f, 169f, 375f) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1034f, 1548f, -456f), vec3<f32>(241f, 692f, 1276f)))), Struct_1(true, _wgslsmith_sub_vec2_i32(vec2<i32>(-56768i, -29984i), vec2<i32>(global0[_wgslsmith_index_u32(0u, 25u)], arg_2)), select(global3.x, arg_3.x, true), vec3<i32>(376i, u_input.b.x, 2147483647i) << (vec3<u32>(47217u, 0u, 4294967295u) % vec3<u32>(32u))), Struct_3(Struct_2(Struct_1(false, arg_1, false, u_input.b), vec3<u32>(27782u, 11307u, u_input.a))), select(vec2<bool>(var_1, arg_0), select(vec2<bool>(false, false), global3.zw, arg_3.zw), true)).a, Struct_3(func_4(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-901f, 1062f, -1715f), vec3<f32>(243f, 812f, 1354f))), func_4(vec3<f32>(418f, 359f, -350f), Struct_1(true, vec2<i32>(0i, u_input.b.x), true, u_input.b), Struct_3(Struct_2(Struct_1(false, vec2<i32>(arg_2, -2147483647i), global3.x, u_input.b), u_input.c)), arg_3.zw).a, Struct_3(Struct_2(Struct_1(true, u_input.b.zz, global3.x, vec3<i32>(global2[_wgslsmith_index_u32(8749u, 28u)], -16581i, global0[_wgslsmith_index_u32(u_input.c.x, 25u)])), vec3<u32>(u_input.c.x, u_input.a, u_input.a))), vec2<bool>(true, false))), select(var_0, select(!vec2<bool>(false, var_1), select(vec2<bool>(true, arg_0), vec2<bool>(arg_3.x, false), var_0), 58390i == global2[_wgslsmith_index_u32(75478u, 28u)]), vec2<bool>(true, true))).a, Struct_3(Struct_2(Struct_1(!var_1, vec2<i32>(0i, -7655i), false, _wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(global2[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(47378u, 25u)], -8977i))), u_input.c)), !vec2<bool>(_wgslsmith_mult_i32(-2147483647i, -1i) >= (arg_1.x | global0[_wgslsmith_index_u32(95251u, 25u)]), true));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-155f)), _wgslsmith_f_op_f32(step(802f, -567f))), -2879f, _wgslsmith_f_op_f32(-953f * 245f), _wgslsmith_f_op_f32(f32(-1f) * -2421f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -536f, -1539f, 626f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1217f, 1863f, 1211f, -455f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec4<bool>(!(true & global3.x), global3.x, global3.x, !global3.x);
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_5(u_input.a != (u_input.a >> (1u % 32u)), -u_input.b.zz, global2[_wgslsmith_index_u32(0u, 28u)], select(vec4<bool>(false, true, global3.x, func_1(u_input.c, vec2<f32>(-107f, -2231f), vec2<f32>(-508f, 614f), u_input.b.yy)), vec4<bool>(global3.x, all(vec4<bool>(global3.x, global3.x, global3.x, true)), global3.x, true), true)))));
    let var_1 = _wgslsmith_add_u32(u_input.a, ~(u_input.c.x >> (~(u_input.c.x << (u_input.a % 32u)) % 32u)));
    var var_2 = var_0.x;
    let var_3 = global3.yyy;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1318f) * var_0.x), _wgslsmith_f_op_f32(abs(var_0.x))) + _wgslsmith_div_f32(-2102f, _wgslsmith_f_op_f32(-1168f + 971f))) - 1000f);
    let var_4 = _wgslsmith_add_vec4_i32(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(reverseBits(1u), 28u)], global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 1u), 25u)], max(global0[_wgslsmith_index_u32(u_input.c.x, 25u)], u_input.b.x), ~u_input.b.x), ~(-vec4<i32>(2147483647i, -29832i, global2[_wgslsmith_index_u32(1u, 28u)], 45384i)))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, global0[_wgslsmith_index_u32(u_input.c.x, 25u)], 29697i >> (0u % 32u), abs(2147483647i)), vec4<i32>(func_4(var_0.zxw, Struct_1(global3.x, vec2<i32>(u_input.b.x, 13769i), var_3.x, u_input.b), Struct_3(Struct_2(Struct_1(false, vec2<i32>(-11633i, 2147483647i), global3.x, vec3<i32>(global2[_wgslsmith_index_u32(u_input.c.x, 28u)], global2[_wgslsmith_index_u32(var_1, 28u)], -21758i)), u_input.c)), var_3.xz).a.b.x, abs(global0[_wgslsmith_index_u32(u_input.c.x, 25u)]), -54895i, _wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(u_input.a, 25u)], -19473i, global2[_wgslsmith_index_u32(u_input.a, 28u)]), vec4<i32>(-43751i, 730i, 1i, global0[_wgslsmith_index_u32(var_1, 25u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(max(~vec2<i32>(firstTrailingBit(global0[_wgslsmith_index_u32(0u, 25u)]), _wgslsmith_div_i32(u_input.b.x, u_input.b.x)), _wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(var_4.x, global2[_wgslsmith_index_u32(9600u, 28u)])), u_input.b.zx)), _wgslsmith_f_op_vec4_f32(-var_0), min(vec4<u32>(u_input.a, 123263u, var_1, u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(firstLeadingBit(4940u), reverseBits(4294967295u), u_input.a | var_1, 0u), (vec4<u32>(var_1, var_1, 1u, u_input.c.x) | vec4<u32>(var_1, 0u, 0u, u_input.c.x)) ^ vec4<u32>(30432u, 33958u, 5053u, u_input.c.x))), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -371f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) * var_0.x))));
}

