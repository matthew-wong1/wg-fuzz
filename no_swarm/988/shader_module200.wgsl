struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec2<i32>,
    d: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(vec4<i32>(-1i, -40985i, -36835i, 14625i), Struct_1(vec4<i32>(0i, -1659i, 2147483647i, 37407i), vec2<u32>(49783u, 4294967295u), vec4<f32>(1773f, -1068f, -1330f, -1743f), true, vec3<u32>(57296u, 37830u, 26029u)), vec2<i32>(1i, 2147483647i));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: u32) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(global0.b.c.x)), _wgslsmith_f_op_f32(min(-528f, _wgslsmith_f_op_f32(round(global0.b.c.x))))));
    let var_1 = _wgslsmith_div_u32(~global0.b.b.x, u_input.b);
    var var_2 = global0.c;
    var var_3 = Struct_2(Struct_1(global0.a & abs(-global0.a), vec2<u32>(_wgslsmith_mult_u32(~4294967295u, 1u), var_1), global0.b.c, true, arg_0.a), global0.b, Struct_1(_wgslsmith_sub_vec4_i32(~global0.a, ~vec4<i32>(var_2.x, -90016i, arg_0.d, -30997i)), vec2<u32>(0u, ~_wgslsmith_div_u32(1u, global0.b.e.x)), _wgslsmith_f_op_vec4_f32(max(global0.b.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(global0.b.c, vec4<f32>(-838f, 415f, global0.b.c.x, -451f)))))), any(arg_0.b.xz) | false, countOneBits(countOneBits(global0.b.e))), ~_wgslsmith_div_u32(1u, var_1), -min(27990i, _wgslsmith_clamp_i32(arg_0.d | var_2.x, i32(-1i) * -1i, _wgslsmith_add_i32(14781i, -18070i))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1608f))));
    return ~(select(var_3.b.b, reverseBits(select(vec2<u32>(4294967295u, 13909u), vec2<u32>(65223u, 1u), false)), var_3.b.d) ^ _wgslsmith_clamp_vec2_u32(var_3.b.e.yz, vec2<u32>(u_input.b, 0u), ~global0.b.e.yx << (var_3.a.b % vec2<u32>(32u))));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: Struct_2, arg_3: vec4<bool>) -> vec2<f32> {
    global0 = Struct_5(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(~global0.b.a, select(vec4<i32>(arg_1, -2147483647i, -36981i, 0i), vec4<i32>(26206i, 25648i, global0.c.x, -2147483647i) ^ vec4<i32>(33998i, global0.c.x, 31834i, arg_1), vec4<bool>(true, arg_3.x, false, false))), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, -2147483647i & arg_2.a.a.x, 20608i, arg_2.a.a.x), vec4<i32>(arg_2.e, ~(-29269i), arg_2.b.a.x, ~arg_2.b.a.x))), Struct_1(-vec4<i32>(global0.c.x, firstTrailingBit(-75284i), -3495i, -29575i >> (u_input.a % 32u)), ~vec2<u32>(arg_2.a.e.x, 1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.a.c), vec4<f32>(arg_2.a.c.x, arg_2.b.c.x, global0.b.c.x, arg_0)) + global0.b.c), (arg_2.e > (global0.a.x | 14205i)) || true, reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 4294967295u, global0.b.b.x), arg_2.b.e))), countOneBits(vec2<i32>(arg_2.c.a.x, global0.b.a.x) << (func_3(Struct_3(global0.b.e, vec3<bool>(false, true, true), vec2<i32>(global0.b.a.x, global0.a.x), -1i), vec4<u32>(global0.b.e.x, 0u, 0u, arg_2.c.b.x), 1u) % vec2<u32>(32u))) | -vec2<i32>(~global0.c.x, reverseBits(arg_2.e)));
    let var_0 = any(vec3<bool>(true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1303f, arg_0)))) > arg_0, !arg_3.x || arg_2.c.d));
    var var_1 = abs(~_wgslsmith_dot_vec3_u32(~arg_2.a.e, ~(~arg_2.a.e)));
    let var_2 = 32821i;
    let var_3 = var_2;
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-893f))) - arg_2.a.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0, -968f), _wgslsmith_div_f32(global0.b.c.x, 1902f), arg_3.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-747f, -825f))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: u32, arg_3: u32) -> Struct_1 {
    global0 = Struct_5(global0.a, Struct_1(vec4<i32>(select(global0.a.x << (56875u % 32u), ~global0.c.x, any(vec4<bool>(arg_1, arg_1, arg_1, false))), global0.b.a.x, abs(global0.c.x) >> (select(u_input.a, u_input.a, arg_1) % 32u), global0.a.x), _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a, 0u), ~(~global0.b.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-533f * arg_0.x), global0.b.c.x, _wgslsmith_f_op_f32(-global0.b.c.x))), true, global0.b.e), min(global0.c | global0.b.a.xw, -global0.b.a.ww));
    let var_0 = _wgslsmith_clamp_vec4_i32(global0.a, ~vec4<i32>(26818i, global0.c.x, -1i, global0.c.x), _wgslsmith_add_vec4_i32(global0.a, -abs(vec4<i32>(1i, global0.a.x, global0.b.a.x, 17999i))) << (vec4<u32>(_wgslsmith_add_u32(u_input.a, min(arg_2, arg_3)), 1u, _wgslsmith_mod_u32(u_input.a, 51292u), ~80885u) % vec4<u32>(32u)));
    global0 = Struct_5(~global0.b.a, Struct_1(-global0.a, ~global0.b.b, _wgslsmith_f_op_vec4_f32(-global0.b.c), true, _wgslsmith_add_vec3_u32(~global0.b.e, ~_wgslsmith_mod_vec3_u32(global0.b.e, vec3<u32>(1u, 69964u, arg_3)))), ~min(firstLeadingBit(vec2<i32>(var_0.x, 2147483647i) | vec2<i32>(global0.a.x, global0.a.x)), -countOneBits(var_0.wy)));
    let var_1 = max(1u, global0.b.b.x ^ select(reverseBits(4294967295u) << (arg_2 % 32u), arg_2, true));
    let var_2 = _wgslsmith_dot_vec4_u32(~(~countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(26788u, arg_2, var_1, 1u), vec4<u32>(1u, arg_2, arg_2, 8333u)))), _wgslsmith_add_vec4_u32(min(~vec4<u32>(arg_2, 14062u, 11336u, arg_3) << (~vec4<u32>(1u, var_1, 1u, 38372u) % vec4<u32>(32u)), vec4<u32>(30760u, abs(var_1), abs(0u), arg_3 << (arg_3 % 32u))), vec4<u32>(_wgslsmith_clamp_u32(reverseBits(1u), firstLeadingBit(u_input.a), abs(arg_3)), 14486u, 0u, ~countOneBits(u_input.b))));
    return Struct_1(vec4<i32>(11171i, global0.b.a.x, 39068i, 1i << (_wgslsmith_mod_u32(min(0u, arg_3), 0u) % 32u)), ~global0.b.e.xx | _wgslsmith_div_vec2_u32(~(~global0.b.e.yz), ~_wgslsmith_sub_vec2_u32(vec2<u32>(37251u, var_1), vec2<u32>(var_1, 69737u))), global0.b.c, true, global0.b.e);
}

fn func_1(arg_0: u32) -> vec2<i32> {
    var var_0 = Struct_4(global0.b.a.x, global0.b, Struct_2(global0.b, global0.b, global0.b, 31275u, -global0.b.a.x), Struct_1(global0.b.a, vec2<u32>(_wgslsmith_div_u32(1u, 1787u), abs(0u)) << (vec2<u32>(u_input.b, 26873u) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-global0.b.c), all(select(vec3<bool>(global0.b.d, true, false), vec3<bool>(false, false, global0.b.d), vec3<bool>(true, true, true))), vec3<u32>(global0.b.b.x, 1u, abs(global0.b.b.x))));
    let var_1 = global0.b.d;
    let var_2 = Struct_2(func_4(_wgslsmith_f_op_vec2_f32(func_2(1114f, -global0.b.a.x, var_0.c, select(vec4<bool>(false, global0.b.d, false, false), vec4<bool>(var_0.d.d, false, false, global0.b.d), true))), !any(!vec4<bool>(global0.b.d, global0.b.d, true, false)), _wgslsmith_div_u32(~28344u & firstTrailingBit(0u), _wgslsmith_add_u32(~arg_0, arg_0)), 1881u), Struct_1(vec4<i32>(_wgslsmith_mult_i32(func_4(vec2<f32>(global0.b.c.x, global0.b.c.x), global0.b.d, 40279u, 1u).a.x, global0.a.x), ~(i32(-1i) * -58622i), global0.b.a.x, firstTrailingBit(var_0.c.c.a.x)), global0.b.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(564f, _wgslsmith_f_op_f32(max(-230f, 1095f)), 1000f, _wgslsmith_f_op_f32(max(global0.b.c.x, -655f))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.b.c.x, -651f, -351f, var_0.d.c.x)))), var_0.d.d, ~vec3<u32>(global0.b.b.x, arg_0 & 0u, _wgslsmith_div_u32(1u, u_input.a))), var_0.d, reverseBits(~_wgslsmith_add_u32(34565u, arg_0)), _wgslsmith_div_i32(~var_0.b.a.x >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 66014u, var_0.b.b.x, 1u), vec4<u32>(u_input.b, arg_0, arg_0, 34852u)) % 32u), 1i));
    var var_3 = Struct_1(vec4<i32>(7738i, min(global0.a.x, -51312i), 1i, -1i), (select(vec2<u32>(global0.b.e.x, global0.b.b.x), select(var_0.d.b, var_2.c.b, false), !vec2<bool>(var_0.d.d, var_0.d.d)) | select(var_0.d.e.yx, func_3(Struct_3(global0.b.e, vec3<bool>(global0.b.d, false, var_0.d.d), var_2.c.a.ww, global0.c.x), vec4<u32>(var_2.d, var_2.a.b.x, arg_0, 25482u), 22002u), true)) & var_2.c.b, vec4<f32>(587f, 544f, var_0.d.c.x, func_4(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_f32(1919f * var_2.a.c.x), min(var_2.c.a.x, var_0.c.e), Struct_2(var_2.c, global0.b, var_2.b, 1u, -16652i), !vec4<bool>(var_0.c.c.d, global0.b.d, true, var_2.c.d))), firstTrailingBit(593u) >= _wgslsmith_sub_u32(arg_0, u_input.a), 82409u, min(_wgslsmith_sub_u32(u_input.b, arg_0), _wgslsmith_clamp_u32(1u, var_2.c.e.x, u_input.a))).c.x), !(!var_2.c.d), ~var_0.b.e);
    let var_4 = Struct_5(var_0.d.a, Struct_1(vec4<i32>(0i, 0i, var_0.c.c.a.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(2097u, 72701u, 0u), vec3<u32>(arg_0, var_3.b.x, u_input.a)) % 32u), var_2.a.a.x), vec2<u32>(~(global0.b.e.x & global0.b.e.x), _wgslsmith_dot_vec4_u32(select(vec4<u32>(var_2.a.e.x, 52122u, u_input.a, var_0.d.e.x), vec4<u32>(1u, u_input.b, 82831u, var_3.b.x), vec4<bool>(var_0.b.d, var_0.b.d, var_2.c.d, var_2.c.d)), ~vec4<u32>(35825u, arg_0, 36663u, var_2.a.b.x))), _wgslsmith_f_op_vec4_f32(trunc(var_0.d.c)), true, vec3<u32>(~25555u, 42221u, _wgslsmith_mult_u32(72279u, 1u) & (var_0.d.b.x << (4294967295u % 32u)))), vec2<i32>(11652i, max(1i, abs(var_2.b.a.x) & _wgslsmith_dot_vec3_i32(var_3.a.xxz, var_2.c.a.xww))));
    return _wgslsmith_mod_vec2_i32(~var_3.a.zw, vec2<i32>(var_0.d.a.x ^ var_3.a.x, ~(i32(-1i) * -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(func_1(~(~28973u)), global0.c), global0.b.a.yx, vec2<i32>(-global0.c.x, _wgslsmith_clamp_i32(_wgslsmith_div_i32(firstTrailingBit(-27977i), firstTrailingBit(global0.a.x)), func_1(~13341u).x, -48685i)));
    let var_1 = Struct_4(1i, Struct_1(vec4<i32>(abs(global0.b.a.x), _wgslsmith_dot_vec4_i32(-global0.b.a, -global0.a), var_0.x, 1i), ~_wgslsmith_mult_vec2_u32(global0.b.e.yx, vec2<u32>(1u, u_input.b)), vec4<f32>(global0.b.c.x, global0.b.c.x, _wgslsmith_f_op_vec2_f32(func_2(-1000f, -18743i, Struct_2(global0.b, global0.b, Struct_1(global0.a, vec2<u32>(13951u, 0u), global0.b.c, global0.b.d, global0.b.e), u_input.b, global0.a.x), !vec4<bool>(global0.b.d, true, global0.b.d, global0.b.d))).x, _wgslsmith_f_op_f32(step(global0.b.c.x, -379f))), global0.b.d, vec3<u32>(_wgslsmith_clamp_u32(global0.b.b.x, 51120u, 4294967295u), ~1u, countOneBits(abs(u_input.a)))), Struct_2(func_4(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_f32(ceil(1032f)), -2147483647i, Struct_2(Struct_1(global0.b.a, global0.b.e.yz, global0.b.c, true, global0.b.e), Struct_1(global0.a, vec2<u32>(22576u, 7040u), vec4<f32>(global0.b.c.x, global0.b.c.x, -675f, -351f), true, vec3<u32>(global0.b.b.x, u_input.a, 6559u)), global0.b, global0.b.b.x, global0.a.x), !vec4<bool>(true, true, global0.b.d, false))), global0.b.d, ~u_input.b, u_input.a), func_4(vec2<f32>(global0.b.c.x, global0.b.c.x), true, 1u, _wgslsmith_mult_u32(global0.b.e.x, _wgslsmith_div_u32(u_input.a, u_input.b))), global0.b, ~max(36630u, _wgslsmith_mod_u32(global0.b.b.x, 1u)), 1i), global0.b);
    global0 = Struct_5(vec4<i32>(-3955i, i32(-1i) * -9894i, 2147483647i, 60858i), Struct_1(abs(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.b.a.x, -5806i, -3963i, -22698i), global0.a)), ~vec2<u32>(countOneBits(u_input.a), 18025u), _wgslsmith_f_op_vec4_f32(global0.b.c - vec4<f32>(_wgslsmith_f_op_f32(floor(-331f)), -1351f, global0.b.c.x, _wgslsmith_f_op_f32(-global0.b.c.x))), _wgslsmith_f_op_f32(f32(-1f) * -393f) != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.d.c.x * var_1.d.c.x))), vec3<u32>(reverseBits(global0.b.b.x), 1u, ~global0.b.b.x | var_1.d.b.x)), vec2<i32>(var_1.a, _wgslsmith_add_i32(var_0.x, -77277i)));
    global0 = Struct_5(~(firstTrailingBit(global0.b.a) | (var_1.b.a & vec4<i32>(-41888i, global0.b.a.x, 0i, var_1.b.a.x))), func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b.c.wx) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-398f, global0.b.c.x)))))), false, ~u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.b.b.x >> (15443u % 32u), _wgslsmith_mod_u32(var_1.c.c.e.x, 8483u), u_input.a, 0u), abs(vec4<u32>(0u, global0.b.b.x, 0u, 52115u)) ^ ~vec4<u32>(0u, 1u, u_input.a, 137u))), min(~global0.c, vec2<i32>(abs(var_0.x), -var_0.x | var_1.a)));
    global0 = Struct_5(_wgslsmith_div_vec4_i32(global0.b.a, var_1.d.a), func_4(var_1.d.c.ww, false, 10059u, abs(u_input.b)), min(-(select(vec2<i32>(-2147483647i, var_1.c.c.a.x), global0.a.xz, vec2<bool>(false, true)) << ((global0.b.b >> (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u))), ~_wgslsmith_clamp_vec2_i32(global0.c, global0.a.zz, _wgslsmith_div_vec2_i32(vec2<i32>(var_0.x, var_1.a), var_0))));
    let var_2 = vec3<f32>(var_1.c.a.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.c.x) * _wgslsmith_f_op_f32(-1070f - _wgslsmith_f_op_f32(f32(-1f) * -636f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.b.c.x, global0.b.c.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1493f)), -606f)), func_4(vec2<f32>(var_1.b.c.x, _wgslsmith_f_op_vec2_f32(func_2(var_1.c.c.c.x, var_0.x, var_1.c, !vec4<bool>(global0.b.d, true, var_1.b.d, true))).x), !any(select(vec4<bool>(global0.b.d, true, true, global0.b.d), vec4<bool>(var_1.b.d, global0.b.d, global0.b.d, var_1.d.d), global0.b.d)), firstTrailingBit(~_wgslsmith_div_u32(4294967295u, 9946u)), ~_wgslsmith_mod_u32(var_1.d.e.x, u_input.b)).c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-791f + 1982f) - _wgslsmith_f_op_f32(-var_1.d.c.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global0.b.c.xy, global0.b.c.yz) - vec2<f32>(var_1.d.c.x, var_2.x)) - var_2.xz)), countOneBits(global0.b.e.x), ~_wgslsmith_div_vec2_u32(~global0.b.e.xz, _wgslsmith_clamp_vec2_u32(var_1.d.e.zy, abs(global0.b.e.yx), global0.b.e.zz)));
}

