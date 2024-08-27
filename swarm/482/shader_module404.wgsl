struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_4, arg_1: vec3<bool>) -> Struct_2 {
    global0 = 1u >= arg_0.a.b.d;
    let var_0 = arg_0.a.b;
    var var_1 = Struct_5(arg_0.a.b.e.xyz);
    global0 = false;
    global0 = true;
    return var_0;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_2) -> Struct_4 {
    let var_0 = Struct_3(696f, arg_3, func_2(Struct_4(Struct_3(_wgslsmith_div_f32(453f, -650f), Struct_2(vec4<u32>(0u, 54441u, arg_3.a.x, 76257u), arg_1, 1i, 52370u, vec4<i32>(14865i, u_input.a, u_input.a, u_input.c)), func_2(Struct_4(Struct_3(1692f, Struct_2(arg_3.a, vec4<i32>(u_input.c, arg_1.x, arg_1.x, 39970i), -4174i, u_input.d, vec4<i32>(u_input.a, u_input.c, arg_3.e.x, arg_3.e.x)), arg_3), vec2<f32>(261f, -203f)), vec3<bool>(arg_2, true, false))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(558f, -398f)))), vec3<bool>(false, true && !arg_2, false)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_0.a)), _wgslsmith_f_op_f32(var_0.a * 1713f)))) - var_0.a));
    var var_2 = var_0.b.a;
    let var_3 = _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(var_0.b.e.wxw, ~(~(~vec3<i32>(arg_3.c, -6590i, 1483i)))), ~select(vec3<i32>(arg_3.e.x, u_input.c, arg_3.c) & firstTrailingBit(var_0.b.e.zzz), _wgslsmith_clamp_vec3_i32(abs(var_0.b.e.wzw), firstTrailingBit(vec3<i32>(1i, u_input.c, u_input.c)), ~vec3<i32>(2147483647i, -1i, var_0.c.c)), true));
    let var_4 = _wgslsmith_clamp_i32(-min(-1i, arg_1.x), ~7604i, 2147483647i);
    return Struct_4(var_0, vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.a), var_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -1226f)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_3) -> bool {
    global0 = all(vec3<bool>(false, true, true)) || (select(false, select(true, true, true), true) && true);
    global0 = true;
    let var_0 = Struct_2(_wgslsmith_mod_vec4_u32(vec4<u32>(~(~arg_0.a.c.d), countOneBits(arg_3.b.a.x), ~arg_3.b.a.x, 4294967295u), ~firstLeadingBit(select(u_input.e, vec4<u32>(1u, 7045u, 87895u, u_input.e.x), true))), ~vec4<i32>(10576i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.c.c, u_input.c, arg_1.a.b.c, u_input.a), arg_1.a.b.b), ~(-42816i), arg_1.a.c.b.x) >> (vec4<u32>(16613u, ~_wgslsmith_mod_u32(arg_0.a.c.d, arg_1.a.c.d), ~4294967295u << (1u % 32u), ~u_input.e.x) % vec4<u32>(32u)), arg_0.a.c.c, 1u, arg_3.c.b);
    global0 = false;
    var var_1 = Struct_2(vec4<u32>(~firstTrailingBit(0u), 15772u, ~_wgslsmith_dot_vec3_u32(u_input.e.wyy, arg_0.a.b.a.wyw) << ((_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d, 27608u, 59421u), var_0.a.xwz) >> (~arg_0.a.c.d % 32u)) % 32u), ~reverseBits(18735u)), min(firstLeadingBit(var_0.e), select(var_0.e, ~_wgslsmith_mod_vec4_i32(vec4<i32>(-24551i, 0i, 0i, 0i), arg_0.a.b.b), select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true))))), ~arg_3.b.c, 1u, min(arg_3.b.e, _wgslsmith_add_vec4_i32(-var_0.e, _wgslsmith_div_vec4_i32(arg_0.a.b.b, abs(vec4<i32>(arg_1.a.c.c, var_0.c, -14754i, -21368i))))));
    return true;
}

fn func_1() -> bool {
    global0 = 1u >= (u_input.d << (u_input.e.x % 32u));
    global0 = any(!vec3<bool>(all(vec3<bool>(false, false, true)), true, true));
    global0 = !(func_4(func_3(u_input.e.zw, vec4<i32>(u_input.c, u_input.a, -29164i, 19232i), true, func_2(Struct_4(Struct_3(-1476f, Struct_2(u_input.e, vec4<i32>(u_input.c, 1i, 1i, u_input.c), u_input.c, 0u, vec4<i32>(u_input.c, 2147483647i, u_input.a, 1i)), Struct_2(u_input.e, vec4<i32>(-33013i, u_input.a, u_input.b, 1i), u_input.b, 4294967295u, vec4<i32>(-24096i, -41585i, u_input.b, u_input.a))), vec2<f32>(-1524f, -549f)), vec3<bool>(false, true, false))), func_3(select(vec2<u32>(38854u, 40091u), vec2<u32>(48323u, 1924u), true), abs(vec4<i32>(-1i, -15766i, u_input.a, 17051i)), true, Struct_2(vec4<u32>(45746u, u_input.d, 4294967295u, 12744u), vec4<i32>(u_input.c, u_input.a, u_input.c, 1i), u_input.c, 0u, vec4<i32>(-35347i, 2147483647i, -2147483647i, u_input.c))), Struct_1(-1000f), func_3(~vec2<u32>(u_input.e.x, u_input.d), -vec4<i32>(-25355i, u_input.b, u_input.a, -73179i), true, func_3(vec2<u32>(0u, u_input.e.x), vec4<i32>(13040i, 0i, -2147483647i, u_input.a), false, Struct_2(vec4<u32>(u_input.e.x, 1u, 2143u, 1u), vec4<i32>(u_input.b, -2147483647i, u_input.a, 1i), u_input.c, 11733u, vec4<i32>(-2147483647i, u_input.b, u_input.b, 0i))).a.b).a) & false);
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1676f)) * _wgslsmith_f_op_f32(-720f - 1303f))), any(vec4<bool>(true, true, true, true)))) + 1262f);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(func_3(vec2<u32>(u_input.e.x, u_input.d), vec4<i32>(u_input.c, u_input.a, -45576i, -1i), false, Struct_2(vec4<u32>(u_input.e.x, 4294967295u, 1u, 1u), vec4<i32>(0i, -43501i, 1i, -1i), u_input.a, 4294967295u, vec4<i32>(u_input.c, 2147483647i, u_input.c, 0i))).a.a, _wgslsmith_f_op_f32(1419f - 1073f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(185f)) * 1043f), true)))), _wgslsmith_f_op_f32(sign(-815f)));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = 1i | select(u_input.b, i32(-1i) * -2147483647i, true);
    let var_1 = u_input.e.x;
    let var_2 = u_input.c;
    var_0 = _wgslsmith_clamp_i32(-26706i, i32(-1i) * -_wgslsmith_div_i32(-4277i, 1i), select(reverseBits(var_2), -1i, true));
    var var_3 = -1065f;
    var var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(1312f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1220f - 2080f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(196f, _wgslsmith_f_op_f32(f32(-1f) * -417f))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1789f + 1335f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(814f - -1456f))), _wgslsmith_f_op_f32(floor(1169f))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(_wgslsmith_sub_i32(i32(-1i) * -1i, ~u_input.b), 4033i), abs(_wgslsmith_sub_u32(select(32301u, var_1, true), ~var_1) << (~47753u % 32u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(135f)), -510f, true)));
}

