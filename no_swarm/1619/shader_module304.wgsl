struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 14>;

var<private> global1: Struct_2;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> f32 {
    global0 = array<Struct_4, 14>();
    global0 = array<Struct_4, 14>();
    var var_0 = 1619f;
    var var_1 = abs(countOneBits(firstTrailingBit(vec3<i32>(u_input.a.x, -1548i, u_input.b.x)) ^ vec3<i32>(u_input.a.x, 0i, u_input.b.x)) | u_input.a.wyw);
    global1 = Struct_2(_wgslsmith_f_op_f32(arg_1.a + 1000f), !vec3<bool>(firstLeadingBit(34181i) < u_input.b.x, !(!arg_1.b.x), max(1i, var_1.x) == abs(u_input.a.x)));
    return arg_0;
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: u32) -> i32 {
    var var_0 = u_input.a.wxx;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.a)) - _wgslsmith_f_op_f32(665f * -2061f))))));
    var var_2 = ~u_input.e.yx;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -387f), global1.b);
    var_0 = ~firstLeadingBit(reverseBits(_wgslsmith_add_vec3_i32(u_input.a.wzx, u_input.a.xxw)));
    return var_0.x;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: i32) -> Struct_2 {
    let var_0 = ~(~vec4<u32>(~u_input.c, ~u_input.e.x, 15880u, u_input.e.x) ^ ~abs(max(vec4<u32>(4294967295u, 26997u, 4294967295u, u_input.c), vec4<u32>(78867u, u_input.d, u_input.d, u_input.e.x))));
    let var_1 = abs(vec2<u32>(0u, u_input.e.x));
    global1 = Struct_2(_wgslsmith_f_op_f32(func_2(arg_1.x, Struct_2(_wgslsmith_f_op_f32(sign(736f)), !vec3<bool>(global1.b.x, true, true)))), vec3<bool>(all(!(!vec3<bool>(global1.b.x, global1.b.x, true))), all(!global1.b), false));
    var var_2 = ~_wgslsmith_mult_i32(u_input.b.x, _wgslsmith_sub_i32(select(arg_0.x, ~55088i, true), ~_wgslsmith_add_i32(-60766i, arg_0.x)));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(global1.a - -258f), !global1.b);
    return Struct_2(1243f, select(vec3<bool>(all(select(vec4<bool>(true, global1.b.x, true, true), vec4<bool>(true, true, true, false), vec4<bool>(var_3.b.x, global1.b.x, var_3.b.x, global1.b.x))), true, !var_3.b.x), !global1.b, global1.b));
}

fn func_1(arg_0: i32) -> vec2<i32> {
    let var_0 = 4294967295u;
    global1 = func_4(firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.a & vec4<i32>(0i, 1i, -2147483647i, 21519i), -u_input.a), _wgslsmith_sub_i32(u_input.b.x, ~arg_0), reverseBits(arg_0))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-429f, 575f, -298f))), vec3<f32>(global1.a, _wgslsmith_f_op_f32(func_2(global1.a, Struct_2(global1.a, global1.b))), _wgslsmith_div_f32(1066f, 1187f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, 1507f, -747f))))), abs(_wgslsmith_add_i32(abs(-arg_0), min(~u_input.a.x, func_3(vec4<u32>(u_input.d, 68051u, 0u, 4294967295u), global1.b, var_0)))));
    var var_1 = true;
    let var_2 = _wgslsmith_sub_i32(-firstTrailingBit((u_input.b.x >> (0u % 32u)) >> (var_0 % 32u)), u_input.b.x);
    var_1 = true & any(!select(vec3<bool>(false, false, global1.b.x), global1.b, global1.b.x));
    return -_wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.b.x, _wgslsmith_add_i32(u_input.a.x, var_2)), vec2<i32>(u_input.b.x, u_input.b.x));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: bool, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = ~u_input.e.x & 1u;
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-arg_3.x)), !(!func_4(u_input.a.yyx, vec3<f32>(global1.a, 1233f, global1.a), arg_0.x).b)), true, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, 2274f, global1.a, 638f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(func_4(u_input.a.yyz, vec3<f32>(global1.a, global1.a, arg_3.x), u_input.a.x).a, -1072f, _wgslsmith_f_op_f32(global1.a + global1.a), _wgslsmith_f_op_f32(1511f - arg_3.x)) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.a, arg_3.x, -1000f, arg_3.x)))))))), Struct_1(~(~_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, u_input.c), vec3<u32>(39790u, u_input.e.x, u_input.c))), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_1.x), ~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.x, 1u), vec2<u32>(arg_1.x, 76705u))), arg_1, -u_input.a, func_4(abs(~u_input.a.wwy), _wgslsmith_f_op_vec3_f32(-vec3<f32>(102f, 1422f, 732f)), u_input.a.x).b));
    var var_2 = ~u_input.e.xz;
    global1 = var_1.a;
    let var_3 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1572f, _wgslsmith_f_op_f32(global1.a - 807f), -557f)));
    return var_1.d;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    var var_0 = !vec4<bool>(func_5(~(-vec2<i32>(-1i, -1i)), ~abs(vec3<u32>(u_input.c, u_input.c, 4294967295u)), arg_0.e.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(2427f, 1128f, 1109f))))).e.x, func_5(u_input.a.ww, countOneBits(_wgslsmith_div_vec3_u32(arg_0.a, u_input.e)), func_4(-u_input.a.xyz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-782f, -1000f, 520f)), _wgslsmith_dot_vec2_i32(u_input.a.yw, arg_0.d.ww)).b.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.a, arg_1.a, 1374f), vec3<f32>(arg_1.a, 1118f, -1929f), vec3<bool>(false, true, arg_0.e.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-477f, -1082f, 130f) + vec3<f32>(1425f, global1.a, global1.a)))).e.x, !arg_1.b.x, arg_1.b.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-511f, _wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(-global1.a)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a), arg_1.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -908f), arg_1.a))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(global1.a * 1782f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.a))), 191f))));
    let var_2 = vec3<u32>(u_input.d, 21354u, _wgslsmith_div_u32(u_input.d, 50092u) ^ _wgslsmith_add_u32(_wgslsmith_sub_u32(~u_input.c, ~arg_0.c.x), ~countOneBits(4294967295u)));
    let var_3 = func_4(-_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), 0i, _wgslsmith_mod_i32(arg_0.d.x, arg_0.d.x)), firstLeadingBit(~u_input.a.ywx), u_input.a.yyx), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(step(global1.a, var_1.x)), arg_1)), _wgslsmith_f_op_f32(global1.a + var_1.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(-var_1.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1293f, -1784f, -1938f) * _wgslsmith_div_vec3_f32(vec3<f32>(-667f, 600f, -160f), vec3<f32>(-577f, global1.a, arg_1.a))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_1))))), 51740i);
    var var_4 = _wgslsmith_dot_vec2_u32(~(~(_wgslsmith_clamp_vec2_u32(vec2<u32>(13559u, 4294967295u), vec2<u32>(4294967295u, var_2.x), u_input.e.yx) | var_2.zx)), ~u_input.e.zz);
    return func_4(arg_0.d.yzz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, arg_1.a, _wgslsmith_f_op_f32(-arg_1.a))), 10602i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_6(func_5(func_1(abs(42474i)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, _wgslsmith_div_u32(u_input.d, 62577u), _wgslsmith_add_u32(0u, u_input.e.x)), abs(countOneBits(u_input.e))), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2529f, global1.a, global1.a)) - vec3<f32>(global1.a, 353f, 884f)) - vec3<f32>(global1.a, 188f, _wgslsmith_f_op_f32(1310f * -1010f)))), func_4(vec3<i32>(_wgslsmith_div_i32(u_input.b.x, ~(-2147483647i)), func_5(u_input.b, vec3<u32>(u_input.c, 0u, u_input.d) >> (u_input.e % vec3<u32>(32u)), !global1.b.x, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.a, global1.a, global1.a)))).d.x, select(-6619i, func_5(vec2<i32>(-72218i, u_input.a.x), u_input.e, true, vec3<f32>(global1.a, global1.a, 1387f)).d.x, !global1.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1.a * global1.a), -990f, -679f)), 29862i));
    global1 = Struct_2(770f, vec3<bool>(false, global1.b.x, !func_4(vec3<i32>(-1i, 2147483647i, u_input.a.x), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(108f, global1.a, 346f), vec3<f32>(global1.a, 1518f, 1758f))), u_input.b.x).b.x));
    var var_0 = firstLeadingBit(~func_3(vec4<u32>(2629u, u_input.c, 4294967295u, u_input.c) ^ vec4<u32>(4294967295u, 7636u, u_input.d, 16548u), vec3<bool>(true, true, false), abs(u_input.e.x ^ 0u)));
    var var_1 = ~((u_input.e.x >> (~(~u_input.c) % 32u)) << ((_wgslsmith_mult_u32(~u_input.d, ~9908u) & _wgslsmith_mod_u32(u_input.e.x, ~4294967295u)) % 32u));
    let var_2 = vec4<f32>(597f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(func_6(Struct_1(vec3<u32>(9570u, 0u, 4294967295u), 56056u, vec3<u32>(4294967295u, u_input.c, u_input.d), vec4<i32>(9877i, -41849i, -6463i, -1591i), vec3<bool>(global1.b.x, global1.b.x, global1.b.x)), Struct_2(-372f, global1.b)).a)) + global1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(935f - -616f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1695f, -1169f)) * -665f)))), global1.a);
    let var_3 = ~u_input.a.x;
    let var_4 = func_5(_wgslsmith_add_vec2_i32(firstLeadingBit(u_input.a.zz), vec2<i32>(-1i, -_wgslsmith_clamp_i32(u_input.a.x, 47267i, -63960i))), reverseBits(u_input.e), global1.b.x & all(!global1.b), var_2.wwz);
    global0 = array<Struct_4, 14>();
    let var_5 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(func_5(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(var_4.d.x, -44281i), reverseBits(-49861i)), vec2<i32>(-2147483647i, -2147483647i) ^ vec2<i32>(-43081i, u_input.b.x)), u_input.e, var_4.e.x, _wgslsmith_f_op_vec3_f32(-var_2.zzw)).a, select(vec3<u32>(_wgslsmith_add_u32(1u, var_4.b), var_4.c.x, _wgslsmith_sub_u32(max(48108u, var_4.b), 0u)), var_4.c, (var_4.e.x != true) | ((var_4.b < u_input.e.x) || false))), 14u)];
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_4.a.x, var_4.c.x, u_input.e.x, 39246u), vec4<u32>(39402u, var_4.a.x, 0u, 43051u)), max(min(vec4<u32>(u_input.c, u_input.e.x, var_4.a.x, u_input.d), vec4<u32>(0u, 78780u, var_4.b, var_4.a.x)), select(vec4<u32>(32338u, 0u, 68503u, 0u), vec4<u32>(67327u, 1u, var_4.b, var_4.c.x), true))));
}

