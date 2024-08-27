struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: vec4<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec2<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 14> = array<vec3<f32>, 14>(vec3<f32>(177f, 604f, -215f), vec3<f32>(1499f, -504f, -2107f), vec3<f32>(1194f, 1000f, -656f), vec3<f32>(885f, -435f, -1000f), vec3<f32>(-1027f, 899f, -962f), vec3<f32>(-471f, -897f, 864f), vec3<f32>(-2542f, 580f, -412f), vec3<f32>(-124f, -283f, 469f), vec3<f32>(758f, -115f, 1210f), vec3<f32>(-692f, -493f, -330f), vec3<f32>(1201f, -730f, 1157f), vec3<f32>(1429f, 2121f, 353f), vec3<f32>(-448f, 436f, -1000f), vec3<f32>(-1642f, -259f, -218f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    global0 = array<vec3<f32>, 14>();
    global0 = array<vec3<f32>, 14>();
    var var_0 = !(!vec2<bool>(true, !all(vec3<bool>(false, true, false))));
    var var_1 = firstTrailingBit(max(~select(u_input.a, u_input.a, vec4<bool>(false, var_0.x, var_0.x, true)) & max(vec4<i32>(u_input.a.x, u_input.a.x, 18475i, u_input.a.x), u_input.a), abs(vec4<i32>(i32(-1i) * -26680i, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x), -u_input.a.x, -28583i))));
    var var_2 = -vec4<i32>(-u_input.a.x, 0i, var_1.x, _wgslsmith_div_i32(8966i, ~(~(-64648i))));
    return !(!(!select(select(vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), false), !vec4<bool>(var_0.x, true, false, false), u_input.a.x > u_input.a.x)));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_mod_u32(u_input.b.x, 1u), any(vec2<bool>(true, true)), u_input.a.x < _wgslsmith_sub_i32(firstTrailingBit(1362i), _wgslsmith_mod_i32(2147483647i, 2147483647i)), func_3(), u_input.a.yyx);
    var var_1 = true;
    let var_2 = vec2<bool>(true, !(!(min(var_0.e.x, u_input.a.x) >= ~6861i)));
    var var_3 = u_input.a.x;
    global0 = array<vec3<f32>, 14>();
    return Struct_3(~max(4294967295u, firstLeadingBit(u_input.b.x)) == _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(var_0.a, var_0.a, var_0.a), 1u, 53163u, u_input.b.x), _wgslsmith_add_vec4_u32(max(vec4<u32>(94145u, 1750u, 33119u, var_0.a), vec4<u32>(26478u, var_0.a, var_0.a, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a, 0u, u_input.b.x, var_0.a), vec4<u32>(var_0.a, 0u, 64626u, var_0.a)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global0[_wgslsmith_index_u32(32603u, 14u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1036f, -512f, -2051f))))), global0[_wgslsmith_index_u32(0u, 14u)])), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, ~(-71973i), -32698i, ~var_0.e.x), vec4<i32>(var_0.e.x, countOneBits(20115i), 33894i, u_input.a.x | 0i)), ~_wgslsmith_mod_i32(2147483647i, -2147483647i) | (firstTrailingBit(var_0.e.x) >> (var_0.a % 32u)), _wgslsmith_div_i32(-15816i, var_0.e.x) & var_0.e.x), abs(_wgslsmith_mod_u32(u_input.b.x, _wgslsmith_add_u32(countOneBits(u_input.b.x), 8997u))), select(var_0.e.x, ~(-24021i), false));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_5, arg_2: bool, arg_3: Struct_5) -> Struct_2 {
    global0 = array<vec3<f32>, 14>();
    var var_0 = abs(~_wgslsmith_add_vec4_u32(min(vec4<u32>(u_input.b.x, 1u, arg_0.d, 4294967295u), vec4<u32>(arg_1.c.a, u_input.b.x, 91523u, u_input.b.x)), select(vec4<u32>(arg_3.c.a, 0u, 30638u, 119785u), vec4<u32>(26152u, arg_0.d, 1u, arg_3.c.a), arg_2)) ^ firstLeadingBit(~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.c.a, 1u, u_input.b.x, 35765u), vec4<u32>(1u, 4294967295u, 15181u, arg_3.c.a), vec4<u32>(u_input.b.x, arg_1.c.a, 46273u, arg_1.c.a))));
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(arg_3.b.x, _wgslsmith_f_op_f32(max(1567f, arg_3.b.x)), !arg_1.c.b)), -1186f) + _wgslsmith_f_op_vec2_f32(-arg_1.b)), _wgslsmith_f_op_vec2_f32(arg_1.b - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), arg_0.b.xz))));
    var var_2 = arg_3.b.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -904f));
    let var_3 = vec3<f32>(-285f, 1104f, _wgslsmith_f_op_f32(arg_1.b.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x * -281f) - _wgslsmith_f_op_f32(floor(-2434f)))));
    return Struct_2(arg_1.c, var_1.x, arg_3.c.d.xw);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_4) -> Struct_3 {
    global0 = array<vec3<f32>, 14>();
    var var_0 = arg_0.b;
    global0 = array<vec3<f32>, 14>();
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) * -234f);
    var var_1 = arg_0.a.d.xwz;
    return func_2();
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_3) -> Struct_2 {
    global0 = array<vec3<f32>, 14>();
    let var_0 = func_2().a;
    var var_1 = func_4(func_2(), Struct_5(max(~vec4<i32>(1i, -1i, -13715i, 1i), _wgslsmith_add_vec4_i32(-vec4<i32>(227i, u_input.a.x, arg_1.c.x, -2147483647i), vec4<i32>(u_input.a.x, -10224i, arg_1.c.x, arg_1.e))), vec2<f32>(-137f, _wgslsmith_f_op_f32(-arg_1.b.x)), func_4(func_5(func_4(Struct_3(false, global0[_wgslsmith_index_u32(arg_0.x, 14u)], vec3<i32>(arg_1.c.x, arg_1.e, 49530i), 4294967295u, arg_1.c.x), Struct_5(u_input.a, arg_1.b.zx, Struct_1(1u, true, false, vec4<bool>(true, arg_1.a, true, var_0), u_input.a.wwz)), arg_1.a, Struct_5(vec4<i32>(31987i, arg_1.e, 0i, u_input.a.x), arg_1.b.zx, Struct_1(arg_1.d, false, arg_1.a, vec4<bool>(true, var_0, false, false), vec3<i32>(2147483647i, 0i, arg_1.e)))), func_4(Struct_3(arg_1.a, global0[_wgslsmith_index_u32(u_input.b.x, 14u)], vec3<i32>(1i, arg_1.c.x, u_input.a.x), arg_1.d, u_input.a.x), Struct_5(vec4<i32>(-1i, u_input.a.x, u_input.a.x, arg_1.e), vec2<f32>(arg_1.b.x, -1000f), Struct_1(arg_1.d, var_0, var_0, vec4<bool>(true, var_0, true, var_0), vec3<i32>(u_input.a.x, 26041i, 7204i))), var_0, Struct_5(vec4<i32>(arg_1.e, u_input.a.x, u_input.a.x, 17785i), vec2<f32>(arg_1.b.x, arg_1.b.x), Struct_1(0u, arg_1.a, arg_1.a, vec4<bool>(true, var_0, arg_1.a, true), arg_1.c))).a.d, Struct_4(vec4<i32>(arg_1.e, -10534i, u_input.a.x, 17588i))), Struct_5(vec4<i32>(-2147483647i, -9224i, 2147483647i, arg_1.e), arg_1.b.zz, func_4(arg_1, Struct_5(vec4<i32>(arg_1.e, 9754i, u_input.a.x, -8519i), vec2<f32>(-1128f, arg_1.b.x), Struct_1(1427u, arg_1.a, var_0, vec4<bool>(false, arg_1.a, false, false), vec3<i32>(arg_1.e, arg_1.e, -7441i))), false, Struct_5(u_input.a, arg_1.b.xy, Struct_1(36291u, var_0, arg_1.a, vec4<bool>(true, false, true, true), arg_1.c))).a), true, Struct_5(_wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(-1i, u_input.a.x, u_input.a.x, -1i)), vec2<f32>(692f, 362f), Struct_1(25939u, false, false, vec4<bool>(arg_1.a, false, true, true), u_input.a.yzw))).a), var_0, Struct_5(-_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(u_input.a, u_input.a), u_input.a ^ vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 0i)), arg_1.b.yz, Struct_1(arg_0.x, !arg_1.a, select(func_3().x, all(vec2<bool>(false, arg_1.a)), arg_1.a), !func_3(), select(arg_1.c, min(u_input.a.zxx, u_input.a.yyz), !vec3<bool>(true, var_0, var_0))))).a;
    let var_2 = func_2().a;
    global0 = array<vec3<f32>, 14>();
    return func_4(Struct_3(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.x, 4294967295u, arg_0.x), arg_0), arg_0) > ~6432u, vec3<f32>(arg_1.b.x, arg_1.b.x, 626f), firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_1.e), u_input.a.yw), var_1.e.x, 0i)), func_5(func_4(Struct_3(var_1.d.x, global0[_wgslsmith_index_u32(u_input.b.x, 14u)], arg_1.c, arg_1.d, arg_1.c.x), Struct_5(u_input.a, arg_1.b.yy, Struct_1(59044u, arg_1.a, false, vec4<bool>(arg_1.a, var_0, true, var_0), vec3<i32>(-14358i, var_1.e.x, arg_1.e))), true, Struct_5(u_input.a, vec2<f32>(arg_1.b.x, arg_1.b.x), Struct_1(arg_1.d, arg_1.a, false, var_1.d, var_1.e))), !vec4<bool>(var_1.c, arg_1.a, true, var_1.c), Struct_4(vec4<i32>(13545i, -2147483647i, 68273i, -1i))).d, ~(~(arg_1.e << (53510u % 32u)))), Struct_5(u_input.a, arg_1.b.xx, Struct_1(~(u_input.b.x | 1u), !var_2, true, var_1.d, _wgslsmith_div_vec3_i32(arg_1.c, _wgslsmith_mult_vec3_i32(arg_1.c, vec3<i32>(-52324i, -1i, u_input.a.x))))), var_0, Struct_5(vec4<i32>(func_4(arg_1, Struct_5(u_input.a, arg_1.b.yy, Struct_1(var_1.a, true, true, vec4<bool>(true, true, true, true), var_1.e)), arg_1.a, Struct_5(u_input.a, vec2<f32>(arg_1.b.x, -822f), Struct_1(arg_1.d, true, var_1.d.x, var_1.d, vec3<i32>(1i, -1i, -8865i)))).a.e.x, -1097i, ~_wgslsmith_div_i32(u_input.a.x, 2147483647i), _wgslsmith_mult_i32(~var_1.e.x, -34599i)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1070f, arg_1.b.x) + vec2<f32>(1636f, arg_1.b.x))))), func_4(arg_1, Struct_5(vec4<i32>(-43732i, u_input.a.x, 0i, 57881i), _wgslsmith_f_op_vec2_f32(arg_1.b.xy - vec2<f32>(190f, arg_1.b.x)), func_4(arg_1, Struct_5(vec4<i32>(-9779i, u_input.a.x, var_1.e.x, 0i), vec2<f32>(arg_1.b.x, -478f), Struct_1(arg_0.x, true, var_0, var_1.d, vec3<i32>(1i, u_input.a.x, var_1.e.x))), false, Struct_5(u_input.a, vec2<f32>(arg_1.b.x, 277f), Struct_1(arg_1.d, var_2, true, var_1.d, vec3<i32>(21159i, 3614i, arg_1.e)))).a), false, Struct_5(u_input.a ^ u_input.a, arg_1.b.zx, Struct_1(arg_1.d, var_2, false, var_1.d, arg_1.c))).a));
}

fn func_1() -> i32 {
    global0 = array<vec3<f32>, 14>();
    let var_0 = func_6(~vec3<u32>(_wgslsmith_add_u32(u_input.b.x, 0u), 20235u, _wgslsmith_sub_u32(u_input.b.x, 41794u)) << (~_wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, u_input.b.x, 12379u), firstTrailingBit(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x))) % vec3<u32>(32u)), func_5(func_4(func_2(), Struct_5(u_input.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-114f, 394f)), Struct_1(u_input.b.x, false, true, vec4<bool>(false, true, true, true), vec3<i32>(u_input.a.x, u_input.a.x, -21722i))), any(func_3()), Struct_5(_wgslsmith_mod_vec4_i32(vec4<i32>(64896i, -2147483647i, u_input.a.x, u_input.a.x), u_input.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1182f, -1000f)), Struct_1(85224u, true, true, vec4<bool>(false, true, false, true), vec3<i32>(31364i, u_input.a.x, -23174i)))), func_4(Struct_3(true, global0[_wgslsmith_index_u32(abs(1u), 14u)], vec3<i32>(1i, u_input.a.x, u_input.a.x), _wgslsmith_add_u32(u_input.b.x, 2567u), u_input.a.x), Struct_5(abs(vec4<i32>(-1i, u_input.a.x, 2147483647i, 0i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1665f) - vec2<f32>(-1096f, -1000f)), Struct_1(17267u, true, true, vec4<bool>(true, true, false, false), vec3<i32>(0i, u_input.a.x, 12003i))), _wgslsmith_sub_u32(25981u, 0u) != u_input.b.x, Struct_5(vec4<i32>(1i, u_input.a.x, 2147483647i, u_input.a.x) << (vec4<u32>(0u, u_input.b.x, 54963u, u_input.b.x) % vec4<u32>(32u)), vec2<f32>(1000f, -586f), Struct_1(0u, false, false, vec4<bool>(false, true, false, false), vec3<i32>(u_input.a.x, u_input.a.x, 3136i)))).a.d, Struct_4(~min(u_input.a, u_input.a))));
    let var_1 = func_6(firstLeadingBit(abs(_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, var_0.a.a, u_input.b.x), vec3<u32>(39888u, 4294967295u, 12617u) << (vec3<u32>(1u, u_input.b.x, 37763u) % vec3<u32>(32u))))), Struct_3(var_0.a.a > u_input.b.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.b, -357f))), _wgslsmith_f_op_f32(exp2(func_6(vec3<u32>(4294967295u, 0u, 17168u), Struct_3(var_0.c.x, vec3<f32>(1852f, var_0.b, 930f), vec3<i32>(var_0.a.e.x, var_0.a.e.x, -16006i), 18590u, var_0.a.e.x)).b)), _wgslsmith_f_op_f32(-var_0.b)), (-u_input.a.wxz ^ vec3<i32>(-2147483647i, u_input.a.x, -1i)) & vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.a.wxz, vec3<i32>(var_0.a.e.x, 0i, u_input.a.x)), _wgslsmith_add_i32(var_0.a.e.x, -47973i), 1i), ~40883u, -u_input.a.x));
    var var_2 = 13902u;
    let var_3 = Struct_5(~firstTrailingBit(reverseBits(vec4<i32>(var_0.a.e.x, 4943i, var_1.a.e.x, var_1.a.e.x))) ^ firstTrailingBit(vec4<i32>(var_1.a.e.x, 1i, var_1.a.e.x, i32(-1i) * -15416i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2107f, 575f) * vec2<f32>(387f, var_0.b))))), func_4(Struct_3(true, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(global0[_wgslsmith_index_u32(63400u, 14u)], vec3<f32>(1000f, var_0.b, var_1.b))))), func_2().c, max(40417u, 1u), -2147483647i), Struct_5(abs(~vec4<i32>(-2147483647i, 2147483647i, -6033i, var_0.a.e.x)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, -1391f)))), Struct_1(1u, u_input.a.x != u_input.a.x, var_1.a.b, func_3(), var_0.a.e)), var_1.a.d.x, Struct_5(u_input.a, _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b, 269f), vec2<f32>(1085f, -650f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1675f, 1000f))), func_4(func_2(), Struct_5(vec4<i32>(7602i, 2147483647i, -8661i, var_0.a.e.x), vec2<f32>(var_1.b, -1086f), var_1.a), false, Struct_5(vec4<i32>(2147483647i, -32097i, var_1.a.e.x, 2147483647i), vec2<f32>(var_1.b, var_1.b), var_1.a)).a)).a);
    return abs(28702i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 14>();
    let var_0 = _wgslsmith_div_i32(1i, -1i) & min(func_1(), func_5(func_6(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), vec3<u32>(29842u, 0u, 11964u)), func_5(Struct_2(Struct_1(u_input.b.x, false, false, vec4<bool>(true, false, false, true), u_input.a.xzw), -611f, vec2<bool>(false, false)), vec4<bool>(false, false, false, false), Struct_4(vec4<i32>(-40906i, u_input.a.x, u_input.a.x, 41377i)))), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true), Struct_4(u_input.a)).c.x);
    let var_1 = Struct_5(-u_input.a, func_5(Struct_2(func_6(_wgslsmith_mod_vec3_u32(vec3<u32>(33765u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 1u, u_input.b.x)), Struct_3(true, global0[_wgslsmith_index_u32(u_input.b.x, 14u)], vec3<i32>(0i, 1826i, -7886i), 0u, var_0)).a, _wgslsmith_f_op_f32(f32(-1f) * -2636f), select(vec2<bool>(false, true), func_6(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), Struct_3(false, global0[_wgslsmith_index_u32(41923u, 14u)], vec3<i32>(u_input.a.x, var_0, u_input.a.x), u_input.b.x, var_0)).c, true)), func_6(~vec3<u32>(3687u, u_input.b.x, u_input.b.x), func_2()).a.d, Struct_4(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -20139i, var_0, var_0), vec4<i32>(var_0, u_input.a.x, 0i, u_input.a.x)) | vec4<i32>(u_input.a.x, 10376i, 1i, var_0))).b.xy, Struct_1(40561u, func_6(~countOneBits(vec3<u32>(1u, 4294967295u, 80980u)), func_2()).a.d.x, !(all(vec3<bool>(false, false, false)) | func_5(Struct_2(Struct_1(u_input.b.x, true, true, vec4<bool>(true, false, true, false), u_input.a.xyw), -474f, vec2<bool>(false, false)), vec4<bool>(false, false, false, false), Struct_4(u_input.a)).a), !func_3(), _wgslsmith_mult_vec3_i32(-(vec3<i32>(11824i, u_input.a.x, var_0) ^ u_input.a.zxz), _wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.a.x, 34599i, -1i), u_input.a.zwy, u_input.a.xxy >> (vec3<u32>(u_input.b.x, 12153u, 1u) % vec3<u32>(32u))))));
    global0 = array<vec3<f32>, 14>();
    var var_2 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0, var_1.c.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -197f), _wgslsmith_f_op_f32(max(-682f, 358f))), var_1.b.x)), vec2<u32>(~var_1.c.a, _wgslsmith_dot_vec4_u32(firstTrailingBit(abs(vec4<u32>(1u, 46501u, 104327u, var_1.c.a))), vec4<u32>(~var_1.c.a, ~134212u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 16917u), vec2<u32>(29116u, var_1.c.a)), 1u))), abs(abs(var_1.c.e)));
}

