struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: f32,
    d: i32,
    e: vec2<i32>,
}

struct Struct_5 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 9>;

var<private> global1: array<vec2<f32>, 19> = array<vec2<f32>, 19>(vec2<f32>(1541f, -221f), vec2<f32>(1595f, 635f), vec2<f32>(-2342f, 148f), vec2<f32>(488f, -920f), vec2<f32>(1382f, -795f), vec2<f32>(-1634f, -396f), vec2<f32>(-231f, 1205f), vec2<f32>(1000f, -1013f), vec2<f32>(-1936f, 1226f), vec2<f32>(-1000f, -976f), vec2<f32>(-1657f, -409f), vec2<f32>(1978f, 1304f), vec2<f32>(396f, -335f), vec2<f32>(875f, -306f), vec2<f32>(-792f, 1196f), vec2<f32>(-1169f, -131f), vec2<f32>(1736f, 1263f), vec2<f32>(970f, -1399f), vec2<f32>(-197f, -451f));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> u32 {
    let var_0 = !vec2<bool>(any(select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, false), vec2<bool>(true, true))), true);
    var var_1 = vec3<bool>(select(select(!var_0.x, true, var_0.x), true, all(vec2<bool>(true, all(vec4<bool>(var_0.x, false, var_0.x, var_0.x))))), var_0.x, all(!var_0));
    var var_2 = Struct_3(abs(0u), vec2<u32>(countOneBits(22925u), ~abs(~1u)), _wgslsmith_sub_vec3_i32(u_input.d.yzz << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), vec3<i32>(u_input.c, 0i ^ u_input.d.x, -1i)), ~(-vec2<i32>(8349i, select(u_input.c, 167i, var_1.x))));
    let var_3 = ~vec2<u32>(var_2.b.x, 36320u ^ var_2.b.x);
    let var_4 = false;
    return select(0u, ~_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(49815u, 4294967295u), ~var_2.a), var_2.a), false);
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_5) -> Struct_4 {
    let var_0 = vec4<u32>(~(~(~4294967295u)), max(~1u, 1u), func_3(), reverseBits(~1u));
    global0 = array<Struct_5, 9>();
    let var_1 = Struct_3(abs(~func_3()), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(~var_0.xx << (vec2<u32>(0u, 0u) % vec2<u32>(32u)), firstTrailingBit(_wgslsmith_clamp_vec2_u32(var_0.zy, vec2<u32>(35213u, 0u), vec2<u32>(var_0.x, 0u)))), var_0.wy), vec3<i32>(~_wgslsmith_clamp_i32(arg_1 ^ -8896i, min(1189i, arg_3.a), 37208i), 0i | ~arg_3.a, arg_1), -u_input.d.xy);
    var var_2 = firstLeadingBit(~(~abs(var_1.c.xy))) ^ abs(-_wgslsmith_sub_vec2_i32(select(vec2<i32>(-2161i, 0i), vec2<i32>(arg_1, 1i), vec2<bool>(false, false)), min(var_1.d, var_1.d)));
    var var_3 = Struct_1(vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(var_1.c, var_1.c), -25302i, -34663i ^ arg_1) | 1i, -arg_1, 1389i), select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), true), _wgslsmith_div_i32(var_1.d.x, 0i) <= _wgslsmith_clamp_i32(var_1.d.x, var_2.x, arg_3.a)), vec4<bool>(select(true, all(vec3<bool>(true, false, false)), true), false, true, true), all(vec4<bool>(true, true, false, true))), firstLeadingBit(select(~(~u_input.a), -(35953i << (var_0.x % 32u)), !(arg_3.b > 281f))));
    return Struct_4(var_1, var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + arg_0.x), -_wgslsmith_mult_i32(_wgslsmith_mult_i32(firstLeadingBit(-77041i), ~(-7277i)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_3.a, -19850i, -14641i), vec4<i32>(arg_1, -20223i, var_2.x, 2147483647i)) >> (var_1.a % 32u)), vec2<i32>(-1i) * -(~_wgslsmith_mult_vec2_i32(var_1.d, u_input.d.zz)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4) -> Struct_3 {
    let var_0 = func_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1.c), arg_1.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-804f, -990f, false)), 419f) + global1[_wgslsmith_index_u32(~firstLeadingBit(arg_0.a), 19u)]))), 0i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(815f, -1059f, 526f, -646f))))))), Struct_5(_wgslsmith_clamp_i32(u_input.a, func_2(global1[_wgslsmith_index_u32(arg_1.b.a, 19u)], -9039i, vec4<f32>(1348f, -434f, 764f, 876f), global0[_wgslsmith_index_u32(arg_1.b.b.x, 9u)]).a.d.x ^ u_input.b, 1i), arg_1.c));
    global1 = array<vec2<f32>, 19>();
    global0 = array<Struct_5, 9>();
    let var_1 = var_0.a;
    var var_2 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.c, func_2(global1[_wgslsmith_index_u32(4294967295u, 19u)], arg_1.d, vec4<f32>(var_0.c, arg_1.c, arg_1.c, arg_1.c), global0[_wgslsmith_index_u32(var_0.b.a, 9u)]).c), _wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(~arg_1.b.b.x, 19u)] - _wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(22930u, 19u)] * global1[_wgslsmith_index_u32(var_1.a, 19u)]))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(-188f)), _wgslsmith_f_op_f32(432f - var_0.c)))), var_0.a.c.x >> (_wgslsmith_dot_vec2_u32(arg_1.b.b, _wgslsmith_mod_vec2_u32(vec2<u32>(32753u, arg_1.b.a), vec2<u32>(var_1.a, 41045u)) & var_0.b.b) % 32u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c, 706f, -176f, arg_1.c)) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.c, var_0.c, 862f, 1072f), vec4<f32>(var_0.c, 1227f, arg_1.c, 1244f))))), vec4<f32>(_wgslsmith_f_op_f32(-404f + _wgslsmith_f_op_f32(-arg_1.c)), -158f, _wgslsmith_f_op_f32(max(-497f, _wgslsmith_div_f32(987f, arg_1.c))), 1134f)), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(arg_1.b.b.x, 1u), arg_0.a), abs(10060u)), 9u)]).b;
    return var_0.a;
}

fn func_5(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: vec3<bool>, arg_3: vec2<u32>) -> Struct_2 {
    global0 = array<Struct_5, 9>();
    var var_0 = 37396i;
    let var_1 = func_2(global1[_wgslsmith_index_u32(~arg_0.a.a, 19u)], func_4(Struct_2(_wgslsmith_dot_vec2_u32(~vec2<u32>(14747u, arg_0.a.a), vec2<u32>(4294967295u, 4294967295u) >> (vec2<u32>(arg_3.x, 39289u) % vec2<u32>(32u)))), arg_0).c.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, -1000f, -1000f, arg_0.c) + vec4<f32>(arg_0.c, arg_0.c, 313f, 1535f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-543f, arg_0.c, 453f, arg_0.c))))))), global0[_wgslsmith_index_u32(max(0u, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(51226u, 0u), arg_3))), 9u)]);
    let var_2 = Struct_2(84642u);
    var var_3 = u_input.d.zyw;
    return var_2;
}

fn func_1() -> vec2<u32> {
    global0 = array<Struct_5, 9>();
    var var_0 = func_5(Struct_4(func_4(Struct_2(1u), func_2(global1[_wgslsmith_index_u32(~74321u, 19u)], firstLeadingBit(1i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(566f, -384f, -621f, 319f)), Struct_5(u_input.c, -455f))), func_4(Struct_2(1u), Struct_4(func_2(global1[_wgslsmith_index_u32(0u, 19u)], u_input.d.x, vec4<f32>(617f, 1003f, 1273f, -1220f), Struct_5(u_input.b, -577f)).b, Struct_3(77056u, vec2<u32>(4294967295u, 5696u), vec3<i32>(5797i, -22415i, u_input.c), u_input.d.wz), -1816f, 1i, u_input.d.yx)), _wgslsmith_f_op_f32(f32(-1f) * -1484f), abs(firstLeadingBit(2147483647i) ^ u_input.b), vec2<i32>(-2147483647i, firstTrailingBit(u_input.c)) | -u_input.d.xw), select(vec4<bool>(false, all(vec3<bool>(true, false, true)) || all(vec2<bool>(true, true)), true, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true)), func_4(Struct_2(5368u), Struct_4(Struct_3(1u, vec2<u32>(0u, 95991u), vec3<i32>(u_input.d.x, u_input.d.x, 10643i), u_input.d.zx), Struct_3(1u, vec2<u32>(18798u, 18595u), u_input.d.zww, vec2<i32>(u_input.b, u_input.c)), 513f, -50094i, vec2<i32>(u_input.d.x, -24706i))).d.x < firstLeadingBit(_wgslsmith_mod_i32(u_input.b, u_input.a))), vec3<bool>(true, true, func_2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(992f, 1636f), vec2<f32>(1737f, 1947f))), u_input.d.x | 33003i, _wgslsmith_div_vec4_f32(vec4<f32>(880f, 1574f, -1494f, 453f), vec4<f32>(1411f, 1130f, 2653f, 2176f)), global0[_wgslsmith_index_u32(~82955u, 9u)]).d == abs(_wgslsmith_mult_i32(2147483647i, 1i))), abs(min(~(~vec2<u32>(41288u, 0u)), ~abs(vec2<u32>(4294967295u, 39141u)))));
    var var_1 = ~countOneBits(1u);
    let var_2 = u_input.d.x;
    var var_3 = vec2<u32>(var_0.a, _wgslsmith_dot_vec2_u32(countOneBits(firstLeadingBit(select(vec2<u32>(1u, 415u), vec2<u32>(var_0.a, 24320u), true))), ~(~vec2<u32>(1314u, var_0.a)) << (vec2<u32>(_wgslsmith_mod_u32(1u, var_0.a), ~var_0.a) % vec2<u32>(32u))));
    return ~vec2<u32>(var_0.a, ~_wgslsmith_add_u32(1u, var_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_u32(19557u, 0u);
    var var_1 = _wgslsmith_add_u32(~var_0, var_0);
    global1 = array<vec2<f32>, 19>();
    let var_2 = Struct_3(0u, vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(34437u, var_0, 4294967295u), vec3<u32>(var_0, _wgslsmith_mod_u32(0u, var_0), 4294967295u)), _wgslsmith_add_u32(_wgslsmith_div_u32(~12951u, var_0), firstTrailingBit(reverseBits(var_0)))), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-1i, u_input.c), -abs(u_input.c), 2147483647i), u_input.d.yyw, firstTrailingBit(-(u_input.d.ywx | vec3<i32>(u_input.a, u_input.a, 0i)))), -u_input.d.zw);
    global0 = array<Struct_5, 9>();
    var var_3 = u_input.a;
    var_3 = u_input.d.x;
    global0 = array<Struct_5, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(368f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(456f * 1692f)), -908f)), vec4<i32>(110066i, var_2.c.x, select(-(1i >> (var_2.a % 32u)), u_input.d.x, all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true))), -2147483647i), func_1(), u_input.d.yyz);
}

