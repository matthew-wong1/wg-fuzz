struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: vec2<f32>,
    e: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-9541i, -52753i, 0i, -1i);

var<private> global1: array<vec3<i32>, 12> = array<vec3<i32>, 12>(vec3<i32>(1i, -1i, 2147483647i), vec3<i32>(37473i, -17096i, -44264i), vec3<i32>(80392i, -1i, -18980i), vec3<i32>(1i, i32(-2147483648), 2147483647i), vec3<i32>(i32(-2147483648), 1i, 1i), vec3<i32>(-49938i, 1i, 18503i), vec3<i32>(3287i, 0i, 2147483647i), vec3<i32>(1i, -23262i, 1i), vec3<i32>(-1i, 2147483647i, 2147483647i), vec3<i32>(-20910i, 10399i, 12702i), vec3<i32>(-31516i, 8643i, -20977i), vec3<i32>(-26252i, -1i, 1185i));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<bool>) -> i32 {
    var var_0 = abs(_wgslsmith_mult_i32(~(~abs(1i)), u_input.e));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -432f);
    global1 = array<vec3<i32>, 12>();
    var_0 = ~min(2147483647i, firstLeadingBit(_wgslsmith_mod_i32(38257i, -global0.x)));
    var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(174f * 870f), _wgslsmith_f_op_f32(sign(-221f)), true)) - _wgslsmith_f_op_f32(select(-188f, 739f, true))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-831f))))));
    return global0.x;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_4, arg_2: bool) -> f32 {
    global0 = vec4<i32>(global0.x, func_3(vec2<bool>(arg_2, any(arg_1.a))), -u_input.e, -24572i) << (vec4<u32>(~arg_0.b, ~(~(arg_0.b ^ 1u)), arg_0.b, arg_0.b >> (16140u % 32u)) % vec4<u32>(32u));
    global0 = _wgslsmith_sub_vec4_i32(min(vec4<i32>(~3713i, ~(-2147483647i), ~36136i, -u_input.d) >> (select(~vec4<u32>(0u, u_input.c, 24598u, arg_0.b), u_input.b, false != arg_2) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(~(-vec4<i32>(7716i, global0.x, global0.x, -2147483647i)), vec4<i32>(global0.x, -1i, global0.x, 0i) >> (u_input.b % vec4<u32>(32u)))), _wgslsmith_clamp_vec4_i32(firstTrailingBit(reverseBits(vec4<i32>(global0.x, 12128i, 1i, -1i))) >> (min(_wgslsmith_sub_vec4_u32(vec4<u32>(9116u, 13836u, u_input.b.x, 4294967295u), vec4<u32>(1u, arg_0.b, u_input.a, u_input.b.x)), u_input.b) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_sub_i32(20328i, global0.x), 35661i, u_input.d, u_input.d), -(~(-vec4<i32>(global0.x, -1i, -2147483647i, global0.x)))));
    var var_0 = arg_1;
    global0 = abs(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(global0.x, u_input.d, global0.x, global0.x), -vec4<i32>(global0.x, 2147483647i, global0.x, 1i)), -(~vec4<i32>(2147483647i, u_input.d, -2147483647i, u_input.d))), 45859i, -(~(~global0.x)), -_wgslsmith_mult_i32(u_input.d, u_input.e ^ -2147483647i)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1714f, arg_1.b, 466f, -975f)))), vec4<f32>(_wgslsmith_f_op_f32(round(1956f)), arg_1.b, _wgslsmith_f_op_f32(-arg_0.d.x), arg_0.a)) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.d.x)) - var_0.b), _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-523f - 1396f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b))))));
    return 1121f;
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_2, arg_3: bool) -> u32 {
    var var_0 = all(vec3<bool>(arg_3, true, false));
    var var_1 = reverseBits(firstLeadingBit(~(~abs(u_input.b.xxw))));
    var var_2 = Struct_4(vec4<bool>(false, arg_3, all(vec4<bool>(var_1.x == 16015u, all(vec3<bool>(arg_3, arg_3, arg_3)), !arg_3, true)), true & (false & arg_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1606f * 364f))) + _wgslsmith_f_op_f32(sign(arg_2.a))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1501f + 1463f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.b, 312f)) + var_2.b), 515f))), arg_2.a);
    var_2 = Struct_4(var_2.a, _wgslsmith_f_op_f32(f32(-1f) * -103f));
    return 1u;
}

fn func_1() -> bool {
    global1 = array<vec3<i32>, 12>();
    global1 = array<vec3<i32>, 12>();
    var var_0 = vec4<u32>(u_input.c, ~min(1u, u_input.b.x), u_input.a, u_input.c);
    var var_1 = func_4(0u, i32(-1i) * -94545i, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_3(-1264f, 14923u, vec2<f32>(634f, -1000f), vec2<f32>(2748f, 2300f), false), Struct_4(vec4<bool>(true, false, true, true), 796f), true)))), !(!all(vec2<bool>(true, true))));
    global0 = vec4<i32>(_wgslsmith_add_i32(firstLeadingBit(41963i | firstLeadingBit(u_input.e)), 2147483647i), select(~global0.x, _wgslsmith_clamp_i32(u_input.e, 17223i, 0i), true), global0.x, -u_input.e);
    return all(select(vec2<bool>(any(vec3<bool>(true, true, true)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(true, all(vec4<bool>(false, false, true, false)), all(vec4<bool>(true, false, true, true)))), select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), all(vec3<bool>(true, false, true))), all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), true)))));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec3<bool>) -> StorageBuffer {
    let var_0 = vec4<u32>(~(~0u), 1u, 135408u, u_input.c);
    global0 = vec4<i32>(-6433i, countOneBits(global0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, _wgslsmith_div_i32(-28817i, firstTrailingBit(41305i)), u_input.e), vec3<i32>(-global0.x, arg_0.x, ~u_input.e)), _wgslsmith_div_i32(~arg_0.x, _wgslsmith_clamp_i32(global0.x, 37041i, _wgslsmith_sub_i32(abs(0i), -50912i))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(211f - 2242f), _wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(var_0.x, _wgslsmith_mod_u32(var_0.x, 4294967295u)), _wgslsmith_div_u32(0u | u_input.b.x, 10458u)), ~reverseBits(1u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-651f + -785f))), 1f) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2301f, -641f) - _wgslsmith_f_op_f32(-506f * -642f)), _wgslsmith_f_op_f32(select(193f, _wgslsmith_f_op_f32(1000f - 634f), select(arg_1.x, arg_1.x, arg_1.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(655f, 721f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-522f, -1744f)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(741f, -1702f), vec2<f32>(118f, 2287f)))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(904f, 1000f))))), arg_1.x);
    var var_2 = !all(vec4<bool>(all(vec4<bool>(true, false, var_1.e, false)), false, false, all(arg_1.yx)));
    let var_3 = Struct_3(_wgslsmith_div_f32(153f, var_1.d.x), _wgslsmith_mod_u32(~min(var_1.b | u_input.a, 0u | var_1.b), var_0.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -838f), var_1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.x - var_1.a) - -914f)), var_1.d, arg_1.xz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.d.x, var_1.c.x), vec2<f32>(1987f, var_1.a))), func_1());
    return StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(750f))))), -1645f, _wgslsmith_f_op_f32(var_1.a + -1274f), _wgslsmith_f_op_f32(trunc(232f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_3(var_3.a, 0u, var_1.d, var_1.d, var_3.e), Struct_4(vec4<bool>(var_1.e, false, true, arg_1.x), -1221f), all(vec2<bool>(var_1.e, true)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_3.d.x))))), _wgslsmith_clamp_u32(var_3.b, ~1u, _wgslsmith_div_u32(var_1.b, ~35470u) ^ 32990u), var_3.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_3.d.x, -357f, var_1.a), vec3<f32>(var_3.a, var_3.a, 1366f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.x, -154f, var_1.c.x) * vec3<f32>(var_3.d.x, -907f, var_1.d.x))))) - vec3<f32>(-1942f, _wgslsmith_f_op_f32(exp2(var_3.a)), 1f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(global0.xz, vec3<bool>(func_1(), true, func_1() || all(vec4<bool>(true, true, true, true))));
}

