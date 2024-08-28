struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec2<i32>,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9>;

var<private> global1: vec2<u32>;

var<private> global2: array<vec4<bool>, 19> = array<vec4<bool>, 19>(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true));

var<private> global3: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(false, vec3<bool>(false, true, true), vec2<i32>(-40448i, 1i), vec3<f32>(-366f, 493f, 2019f), vec2<f32>(164f, -530f)), Struct_1(false, vec3<bool>(false, true, true), vec2<i32>(94272i, i32(-2147483648)), vec3<f32>(374f, 780f, -343f), vec2<f32>(556f, -1694f)), Struct_1(true, vec3<bool>(true, false, false), vec2<i32>(-1i, 2147483647i), vec3<f32>(-1185f, -438f, 801f), vec2<f32>(-2046f, 913f)), Struct_1(false, vec3<bool>(false, true, true), vec2<i32>(-50847i, i32(-2147483648)), vec3<f32>(1599f, -106f, 1581f), vec2<f32>(807f, 920f)), Struct_1(true, vec3<bool>(true, false, true), vec2<i32>(2147483647i, -4745i), vec3<f32>(1000f, 1853f, -1010f), vec2<f32>(159f, -543f)), Struct_1(false, vec3<bool>(false, true, true), vec2<i32>(6897i, 14748i), vec3<f32>(-1610f, 293f, 175f), vec2<f32>(-306f, 886f)), Struct_1(true, vec3<bool>(false, true, true), vec2<i32>(2147483647i, 12009i), vec3<f32>(368f, -1601f, 1000f), vec2<f32>(184f, -760f)), Struct_1(false, vec3<bool>(true, false, true), vec2<i32>(1i, 2147483647i), vec3<f32>(-1489f, 949f, -1000f), vec2<f32>(1152f, 621f)), Struct_1(false, vec3<bool>(true, true, true), vec2<i32>(-1i, i32(-2147483648)), vec3<f32>(198f, -654f, 547f), vec2<f32>(2028f, 702f)), Struct_1(false, vec3<bool>(false, false, true), vec2<i32>(2147483647i, 2147483647i), vec3<f32>(-378f, 1460f, -458f), vec2<f32>(1597f, -1283f)), Struct_1(false, vec3<bool>(true, true, false), vec2<i32>(-5859i, -31027i), vec3<f32>(-1000f, 711f, -1050f), vec2<f32>(349f, -967f)), Struct_1(true, vec3<bool>(true, true, true), vec2<i32>(0i, 27883i), vec3<f32>(-1000f, 733f, -2221f), vec2<f32>(-556f, -486f)), Struct_1(false, vec3<bool>(true, false, true), vec2<i32>(i32(-2147483648), 2147483647i), vec3<f32>(1641f, -2677f, 284f), vec2<f32>(1355f, -973f)), Struct_1(true, vec3<bool>(true, true, true), vec2<i32>(-1i, -31159i), vec3<f32>(-1000f, 1000f, -1758f), vec2<f32>(561f, -319f)), Struct_1(true, vec3<bool>(false, false, true), vec2<i32>(-32636i, -56471i), vec3<f32>(709f, 410f, 480f), vec2<f32>(-155f, 291f)), Struct_1(true, vec3<bool>(true, false, true), vec2<i32>(18364i, 1i), vec3<f32>(-1958f, -442f, -923f), vec2<f32>(379f, -306f)), Struct_1(false, vec3<bool>(false, false, false), vec2<i32>(1i, 5306i), vec3<f32>(-1421f, -307f, -1682f), vec2<f32>(1000f, -2014f)), Struct_1(false, vec3<bool>(false, true, false), vec2<i32>(1i, 0i), vec3<f32>(1960f, -349f, -1568f), vec2<f32>(-1527f, 1732f)), Struct_1(false, vec3<bool>(false, false, false), vec2<i32>(-4643i, i32(-2147483648)), vec3<f32>(-1623f, 679f, 110f), vec2<f32>(1459f, 1902f)), Struct_1(false, vec3<bool>(true, false, false), vec2<i32>(15801i, -21179i), vec3<f32>(-201f, 333f, -417f), vec2<f32>(1120f, -237f)), Struct_1(false, vec3<bool>(true, true, true), vec2<i32>(0i, i32(-2147483648)), vec3<f32>(1313f, -950f, 1839f), vec2<f32>(668f, -588f)));

var<private> global4: f32;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<u32>) -> i32 {
    let var_0 = select(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a.xzw, u_input.a.wyw, vec3<i32>(u_input.a.x, 18186i, u_input.a.x)), u_input.a.wzz ^ u_input.a.yzx)), min(firstLeadingBit(vec2<i32>(u_input.a.x, u_input.b)), _wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(-2147483647i, 0i)), abs(u_input.a.zy)))), u_input.a.zy, vec2<bool>(all(vec2<bool>(true, true)), true));
    let var_1 = Struct_3(!select(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), Struct_2(reverseBits(countOneBits(countOneBits(vec4<u32>(4294967295u, 54024u, u_input.c, 0u))))), ~(var_0.x | -(-911i & var_0.x)));
    global1 = firstLeadingBit(_wgslsmith_mod_vec2_u32(select(var_1.b.a.xz & vec2<u32>(4294967295u, arg_0.x), vec2<u32>(28370u, reverseBits(94178u)), vec2<bool>(false, !var_1.a.x)), ~_wgslsmith_mult_vec2_u32(u_input.d.yy, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, global1.x), var_1.b.a.wy))));
    let var_2 = !select(select(!select(vec3<bool>(var_1.a.x, false, var_1.a.x), vec3<bool>(true, var_1.a.x, var_1.a.x), vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x)), vec3<bool>(select(false, var_1.a.x, var_1.a.x), !var_1.a.x, true), vec3<bool>(any(vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x)), global0[_wgslsmith_index_u32(1u, 9u)] < -758f, true)), vec3<bool>(true, true, true), ~(~arg_0.x) >= var_1.b.a.x);
    var var_3 = 463f;
    return var_0.x;
}

fn func_4(arg_0: i32, arg_1: i32) -> i32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1105f, -1000f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(227f + _wgslsmith_f_op_f32(-1f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1.x >> (4294967295u % 32u), 9u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(4294967295u, 9u)], -479f, false)) - -1377f))))));
    var var_1 = Struct_4(_wgslsmith_mult_u32(max(11212u >> (global1.x % 32u), u_input.c), ~1u) ^ 633u);
    let var_2 = Struct_5(~(~(~vec4<u32>(4294967295u, 4294967295u, 1u, global1.x))), global1.x, max(_wgslsmith_mod_vec4_i32(~u_input.a & u_input.a, vec4<i32>(arg_0, _wgslsmith_add_i32(1i, -2147483647i), -u_input.b, u_input.b)), u_input.a));
    let var_3 = true;
    var_1 = Struct_4(global1.x);
    return -_wgslsmith_div_i32(~(~(-1i)), u_input.b);
}

fn func_2(arg_0: vec2<bool>) -> bool {
    let var_0 = func_4(func_3(vec2<u32>(u_input.d.x, u_input.d.x)), _wgslsmith_clamp_i32(~u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, 1457i), u_input.b, 0i), select(vec3<i32>(u_input.a.x, -2147483647i, u_input.b), u_input.a.ywx, arg_0.x) << (u_input.d % vec3<u32>(32u))), u_input.b));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)));
    var var_2 = vec3<bool>(arg_0.x, true, any(!vec2<bool>(u_input.b >= -61250i, true)));
    global1 = ~u_input.d.zy;
    var var_3 = firstTrailingBit(abs(~u_input.a.zy | _wgslsmith_div_vec2_i32(u_input.a.zz, vec2<i32>(u_input.a.x, 9220i) ^ u_input.a.wy)));
    return true;
}

fn func_5(arg_0: bool, arg_1: vec3<i32>, arg_2: vec2<f32>, arg_3: Struct_3) -> Struct_4 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(12981u, 9u)], global0[_wgslsmith_index_u32(1u, 9u)], 1000f, -832f) * vec4<f32>(global0[_wgslsmith_index_u32(global1.x, 9u)], 1080f, global0[_wgslsmith_index_u32(arg_3.b.a.x, 9u)], arg_2.x)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(211f, -280f, arg_2.x, -1000f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(global1.x, 9u)], -2246f, global0[_wgslsmith_index_u32(u_input.c, 9u)], 219f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, -185f, -410f, global0[_wgslsmith_index_u32(35218u, 9u)]))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.x, global0[_wgslsmith_index_u32(4294967295u, 9u)], -461f, arg_2.x))))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1158f, arg_2.x, arg_2.x, global0[_wgslsmith_index_u32(arg_3.b.a.x, 9u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(84212u, 9u)], arg_2.x, arg_2.x, arg_2.x))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -904f) + _wgslsmith_f_op_f32(arg_2.x - 1269f)), 375f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - 1458f), -331f), 890f), arg_3.a.x)));
    var var_1 = !(!(!select(select(vec3<bool>(arg_3.a.x, false, arg_3.a.x), vec3<bool>(true, false, arg_0), false), !vec3<bool>(true, arg_3.a.x, arg_0), true)));
    let var_2 = all(vec3<bool>(!arg_0, select(any(select(var_1.yx, vec2<bool>(arg_0, arg_0), var_1.yy)), var_1.x, var_1.x), true));
    return Struct_4(_wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(firstTrailingBit(global1.x), _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(59138u, 1u, 4294967295u)), 42633u), u_input.d.x), arg_3.b.a.x));
}

fn func_6(arg_0: i32, arg_1: Struct_4, arg_2: Struct_5, arg_3: u32) -> Struct_4 {
    global3 = array<Struct_1, 21>();
    let var_0 = 0i;
    global2 = array<vec4<bool>, 19>();
    let var_1 = 2147483647i;
    global2 = array<vec4<bool>, 19>();
    return func_5(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(49619i, arg_0, -7039i, -1i), vec4<i32>(-1i, arg_0, u_input.b, -28959i), vec4<i32>(u_input.a.x, u_input.b, 22879i, -2147483647i)), ~u_input.a), -var_0 >> (arg_2.a.x % 32u)) > abs(arg_2.c.x), _wgslsmith_add_vec3_i32(-firstTrailingBit(min(vec3<i32>(var_1, -19817i, 11738i), vec3<i32>(8777i, -14736i, u_input.b))), u_input.a.zxz), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1443f, -1430f) + vec2<f32>(global0[_wgslsmith_index_u32(global1.x, 9u)], global0[_wgslsmith_index_u32(global1.x, 9u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(arg_3, 9u)], global0[_wgslsmith_index_u32(global1.x, 9u)]))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(7328u, 9u)], global0[_wgslsmith_index_u32(85589u, 9u)]) - _wgslsmith_div_vec2_f32(vec2<f32>(-339f, 108f), vec2<f32>(-1000f, global0[_wgslsmith_index_u32(global1.x, 9u)]))), true)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-983f - -292f)), _wgslsmith_div_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(arg_1.a, 9u)], global0[_wgslsmith_index_u32(arg_2.a.x, 9u)]), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(arg_3, 9u)], global0[_wgslsmith_index_u32(arg_3, 9u)]))))), Struct_3(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), Struct_2(select(min(arg_2.a, arg_2.a), ~arg_2.a, vec4<bool>(false, false, true, true))), -2147483647i));
}

fn func_1() -> vec3<f32> {
    let var_0 = ~0u;
    global2 = array<vec4<bool>, 19>();
    var var_1 = -617f;
    global1 = select(vec2<u32>(~firstLeadingBit(4294967295u), u_input.d.x), ~(~u_input.d.xz), true);
    var var_2 = func_6(27108i | u_input.a.x, func_5(func_2(vec2<bool>(true, true)) && false, vec3<i32>(~(-48147i), ~u_input.a.x | func_3(vec2<u32>(global1.x, 4294967295u)), -firstLeadingBit(u_input.a.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(var_0, 9u)]))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~u_input.c, 9u)])), Struct_3(vec2<bool>(all(vec4<bool>(true, true, true, true)), true), Struct_2(vec4<u32>(u_input.d.x, var_0, global1.x, 0u) >> (vec4<u32>(var_0, 0u, 5691u, u_input.d.x) % vec4<u32>(32u))), _wgslsmith_clamp_i32(0i, _wgslsmith_mod_i32(8851i, 2147483647i), ~u_input.b))), Struct_5(vec4<u32>(u_input.d.x, 1u, 0u, abs(~1u)), u_input.d.x, vec4<i32>(u_input.a.x, (u_input.b & -2147483647i) & u_input.a.x, ~(~2147483647i), max(~33463i, _wgslsmith_div_i32(-1i, u_input.a.x)))), ~global1.x);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(110149u, 9u)], 895f, global0[_wgslsmith_index_u32(var_2.a, 9u)])))) + vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0, 9u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1.x, 9u)]), -940f))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(857f, 276f, global0[_wgslsmith_index_u32(var_0, 9u)]), vec3<f32>(global0[_wgslsmith_index_u32(var_2.a, 9u)], global0[_wgslsmith_index_u32(74402u, 9u)], 2031f)))))), vec3<f32>(_wgslsmith_div_f32(294f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(54605u, 9u)])), _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(firstTrailingBit(global1.x), 9u)], _wgslsmith_div_f32(-405f, -729f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(var_2.a, 9u)])))))));
}

fn func_7(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32, arg_3: vec3<f32>) -> Struct_2 {
    var var_0 = Struct_3(vec2<bool>(true, true), Struct_2(vec4<u32>(global1.x >> (2840u % 32u), _wgslsmith_div_u32(1u, reverseBits(arg_1.x)), arg_1.x, _wgslsmith_mult_u32(0u, 49334u & global1.x))), u_input.b);
    let var_1 = false | var_0.a.x;
    let var_2 = global2[_wgslsmith_index_u32(abs(select(global1.x, ~5289u, true)), 19u)];
    let var_3 = arg_0.d.yz;
    global3 = array<Struct_1, 21>();
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<bool>, 19>();
    global0 = array<f32, 9>();
    var var_0 = func_7(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.d.x, ~global1.x), 21u)], u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -590f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_1()), vec3<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 1u, 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(global1.x, global1.x, u_input.d.x, 29601u), vec4<u32>(1u, u_input.d.x, 1u, global1.x))), 9u)], 1809f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1101f)), _wgslsmith_f_op_f32(1138f - global0[_wgslsmith_index_u32(global1.x, 9u)]))), true)));
    global1 = _wgslsmith_mod_vec2_u32(max(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.c, 1u), var_0.a.x), abs(vec2<u32>(24806u, 79285u))), abs(vec2<u32>(var_0.a.x, _wgslsmith_clamp_u32(0u, 26560u, u_input.d.x)))), vec2<u32>(var_0.a.x, 0u));
    let var_1 = ~u_input.a.x;
    global2 = array<vec4<bool>, 19>();
    let var_2 = select(vec4<bool>(any(vec3<bool>(true, func_2(vec2<bool>(false, true)), true)), all(vec4<bool>(true, true, true, true)), true, true), vec4<bool>(-1000f >= global0[_wgslsmith_index_u32(8563u, 9u)], !any(vec2<bool>(true, true)), false, !all(vec2<bool>(true, true))), !global2[_wgslsmith_index_u32(firstLeadingBit(~(~u_input.d.x)), 19u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(384f, 1000f) - vec2<f32>(global0[_wgslsmith_index_u32(var_0.a.x, 9u)], global0[_wgslsmith_index_u32(u_input.d.x, 9u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(var_0.a.x, 9u)], global0[_wgslsmith_index_u32(var_0.a.x, 9u)]) * vec2<f32>(global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(global1.x, 9u)])))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 9u)], -113f) - vec2<f32>(-1000f, global0[_wgslsmith_index_u32(0u, 9u)]))))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1184f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 9u)] - 539f)))))), func_7(global3[_wgslsmith_index_u32(global1.x, 21u)], vec3<u32>(global1.x, 24651u, u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1517f, 1722f))))), vec3<f32>(global0[_wgslsmith_index_u32((u_input.d.x ^ global1.x) >> (max(32257u, var_0.a.x) % 32u), 9u)], _wgslsmith_f_op_vec3_f32(func_1()).x, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~5469u, 9u)] + _wgslsmith_f_op_f32(floor(506f))))).a.zzz);
}

