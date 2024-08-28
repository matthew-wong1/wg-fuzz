struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

var<private> global1: array<bool, 4> = array<bool, 4>(false, true, true, false);

var<private> global2: f32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    global0 = array<Struct_1, 10>();
    global2 = -1110f;
    global2 = 1629f;
    global0 = array<Struct_1, 10>();
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -1024f);
    return u_input.b.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = true;
    let var_1 = ~2147483647i;
    global2 = 394f;
    var var_2 = var_0;
    let var_3 = Struct_1(-1467f, _wgslsmith_dot_vec2_i32(-vec2<i32>(1i, arg_1.c), -(vec2<i32>(u_input.a.x, 50186i) << (vec2<u32>(64176u, 10687u) % vec2<u32>(32u)))) == -709i, ~_wgslsmith_div_i32(_wgslsmith_sub_i32(var_1, var_1), arg_0.x) << (1u % 32u), vec2<u32>(arg_1.e.x, func_3(u_input.b.wxy)), u_input.b.yzw);
    return Struct_1(arg_1.a, u_input.a.x < _wgslsmith_sub_i32(arg_2.x ^ 1i, arg_1.c), select(i32(-1i) * -_wgslsmith_dot_vec3_i32(arg_0, arg_0), _wgslsmith_mult_i32(2147483647i, -(~(-1i))), (_wgslsmith_f_op_f32(floor(-191f)) != -846f) & !(var_0 || true)), _wgslsmith_clamp_vec2_u32(arg_1.d, _wgslsmith_mult_vec2_u32(~vec2<u32>(2133u, 4294967295u), ~arg_1.d), arg_1.e.xx), vec3<u32>(32039u, 51037u | ~(~arg_1.e.x), ~(~7986u | var_3.e.x)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = func_2(vec3<i32>(~abs(min(0i, arg_3.c)), 1i, _wgslsmith_dot_vec3_i32(abs(-vec3<i32>(arg_3.c, u_input.a.x, 2147483647i)), _wgslsmith_sub_vec3_i32(-vec3<i32>(arg_0.c, -1i, 0i), min(vec3<i32>(arg_3.c, 0i, -52922i), vec3<i32>(arg_1.c, u_input.a.x, arg_1.c))))), func_2(vec3<i32>(firstTrailingBit(i32(-1i) * -14285i), i32(-1i) * -arg_3.c, firstLeadingBit(-11886i)), func_2(countOneBits(vec3<i32>(-1i, -23290i, -30711i) ^ vec3<i32>(-42545i, -4893i, arg_0.c)), arg_0, vec4<i32>(-22041i, u_input.a.x, -262i, 2147483647i) ^ vec4<i32>(-2923i, -46300i, 17941i, 53283i)), _wgslsmith_add_vec4_i32(vec4<i32>(arg_1.c, u_input.a.x, 1i, u_input.a.x), ~_wgslsmith_add_vec4_i32(vec4<i32>(arg_3.c, 0i, arg_3.c, arg_1.c), vec4<i32>(arg_1.c, arg_0.c, arg_3.c, arg_1.c)))), min(vec4<i32>(-1465i << (~arg_1.d.x % 32u), _wgslsmith_sub_i32(_wgslsmith_add_i32(-39874i, u_input.a.x), ~26370i), ~(~9i), -2147483647i), _wgslsmith_mult_vec4_i32(-vec4<i32>(37284i, u_input.a.x, u_input.a.x, arg_1.c), min(vec4<i32>(u_input.a.x, arg_0.c, 1i, 2147483647i), vec4<i32>(1i, arg_1.c, -2147483647i, arg_3.c))) ^ -(~vec4<i32>(-1i, u_input.a.x, arg_3.c, arg_3.c))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a));
    var var_1 = ~func_2(vec3<i32>(-arg_1.c, u_input.a.x, -u_input.a.x), arg_1, select(vec4<i32>(arg_0.c, var_0.c, arg_1.c, 56197i), _wgslsmith_div_vec4_i32(vec4<i32>(arg_0.c, 45839i, arg_3.c, 0i), vec4<i32>(arg_1.c, arg_1.c, u_input.a.x, 1i)), vec4<bool>(false, global1[_wgslsmith_index_u32(21480u, 4u)], arg_1.b, true))).c ^ ~10958i;
    var var_2 = func_2(firstLeadingBit(_wgslsmith_sub_vec3_i32(~vec3<i32>(7347i, 13795i, arg_1.c), ~vec3<i32>(1i, -2147483647i, arg_0.c))), arg_0, _wgslsmith_div_vec4_i32(-_wgslsmith_mod_vec4_i32(max(vec4<i32>(arg_3.c, var_0.c, -2147483647i, var_0.c), vec4<i32>(arg_3.c, -2147483647i, -1i, arg_0.c)), vec4<i32>(2147483647i, 29599i, 1i, 3653i)), _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(0i, -1i, -2615i, var_0.c)), -vec4<i32>(arg_3.c, -606i, var_0.c, -1i)) << ((vec4<u32>(14761u, 4294967295u, arg_2.x, 0u) & (u_input.b ^ vec4<u32>(arg_1.e.x, 74164u, 1u, 13339u))) % vec4<u32>(32u))));
    let var_3 = ~countOneBits(u_input.b);
    return reverseBits(_wgslsmith_sub_vec3_u32(arg_3.e, arg_0.e));
}

fn func_1(arg_0: bool, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_sub_u32(~4294967295u, _wgslsmith_dot_vec3_u32(func_4(global0[_wgslsmith_index_u32(2281u, 10u)], func_2(arg_1.wyz, Struct_1(-1157f, false, u_input.a.x, u_input.b.xx, u_input.b.wyx), vec4<i32>(0i, arg_1.x, 0i, -2147483647i) >> (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u))), u_input.b.wy, Struct_1(_wgslsmith_div_f32(-486f, 1000f), true, u_input.a.x & u_input.a.x, countOneBits(vec2<u32>(u_input.b.x, u_input.b.x)), ~u_input.b.xyw)), ~vec3<u32>(1u, func_3(vec3<u32>(u_input.b.x, 1u, u_input.b.x)), ~u_input.b.x)));
    global2 = -615f;
    global2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -109f)))));
    global2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(step(1544f, -1239f))))));
    var_0 = 25040u;
    return global0[_wgslsmith_index_u32(~abs(func_3(vec3<u32>(_wgslsmith_mod_u32(1u, u_input.b.x), ~u_input.b.x, ~2047u))), 10u)];
}

fn func_5(arg_0: Struct_1) -> u32 {
    var var_0 = func_1(!global1[_wgslsmith_index_u32(arg_0.d.x, 4u)], vec4<i32>(-(-39782i << (_wgslsmith_mod_u32(63380u, u_input.b.x) % 32u)), arg_0.c, u_input.a.x ^ 26343i, ~u_input.a.x));
    var var_1 = countOneBits(_wgslsmith_mult_i32(~min(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.c, -32157i, var_0.c), vec3<i32>(var_0.c, -31739i, -17073i))), 2147483647i));
    var_1 = 26936i;
    var var_2 = Struct_1(arg_0.a, var_0.b, 1i, ~_wgslsmith_mult_vec2_u32(vec2<u32>(18222u, u_input.b.x), vec2<u32>(1u, 1516u) ^ vec2<u32>(arg_0.e.x, var_0.d.x)) & vec2<u32>(~4294967295u << (_wgslsmith_div_u32(8777u, 34860u) % 32u), ~var_0.e.x), vec3<u32>(14823u >> (1u % 32u), firstTrailingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, 92672u, 1u), u_input.b.xzy)), func_1(any(!vec2<bool>(false, arg_0.b)), abs(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -36786i, arg_0.c, u_input.a.x), vec4<i32>(-2147483647i, var_0.c, var_0.c, var_0.c)))).e.x));
    let var_3 = Struct_1(-1637f, true, var_0.c, vec2<u32>(func_1(true == all(vec4<bool>(global1[_wgslsmith_index_u32(var_2.d.x, 4u)], true, global1[_wgslsmith_index_u32(32919u, 4u)], true)), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(var_0.c, arg_0.c, -27031i, 5906i)), vec4<i32>(var_0.c, u_input.a.x, arg_0.c, var_2.c), vec4<i32>(-25886i, var_2.c, arg_0.c, arg_0.c) & vec4<i32>(var_0.c, -2147483647i, 2147483647i, var_2.c))).e.x, var_2.e.x), ~(~u_input.b.yxz));
    return arg_0.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -146f), _wgslsmith_f_op_f32(ceil(-971f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1126f + -266f), _wgslsmith_f_op_f32(-1811f + -425f))))), -1000f)), true, u_input.a.x, ~u_input.b.yx >> (vec2<u32>(u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, ~40534u)) % vec2<u32>(32u)), min(vec3<u32>(func_5(func_1(true, vec4<i32>(1i, u_input.a.x, 48973i, -18470i))), _wgslsmith_sub_u32(~u_input.b.x, _wgslsmith_sub_u32(60102u, u_input.b.x)), u_input.b.x), u_input.b.xxw ^ u_input.b.xyy));
    var var_1 = min(var_0.d.x, 1494u);
    var var_2 = func_1(var_0.b, -_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(1619i, 11487i, 869i, u_input.a.x), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.c, 2128i, -2147483647i, u_input.a.x), vec4<i32>(13382i, u_input.a.x, u_input.a.x, var_0.c)), firstLeadingBit(vec4<i32>(0i, var_0.c, -1341i, u_input.a.x))), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-14063i, -4773i, u_input.a.x, -76764i), vec4<i32>(var_0.c, u_input.a.x, -55584i, 2147483647i)), -vec4<i32>(2849i, u_input.a.x, var_0.c, 3713i)))).e.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.a, var_0.a, var_0.a) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.a, 1441f, 1755f))) - vec4<f32>(_wgslsmith_f_op_f32(var_0.a + -529f), var_0.a, _wgslsmith_f_op_f32(-var_0.a), var_0.a))));
    global1 = array<bool, 4>();
    var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(736f, 736f, 159f, 325f))))), vec4<f32>(_wgslsmith_f_op_f32(select(193f, var_3.x, any(vec2<bool>(global1[_wgslsmith_index_u32(1u, 4u)], false)))), -788f, _wgslsmith_f_op_f32(abs(-1653f)), _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(1000f * -1493f)))));
    global0 = array<Struct_1, 10>();
    global0 = array<Struct_1, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_3.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, -298f))))), 14997u, var_0.a, max(~firstLeadingBit(var_0.e.x), var_0.e.x & 142248u));
}

