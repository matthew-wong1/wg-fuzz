struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec3<bool>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: u32,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32) -> i32 {
    let var_0 = !select(vec3<bool>(any(vec4<bool>(true, true, true, true)), -69326i > _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -35570i, 0i, 25442i), vec4<i32>(-1i, 2147483647i, 8182i, 2147483647i)), false), vec3<bool>(true, true, true), true);
    var var_1 = vec3<u32>(~(~(reverseBits(6985u) << (max(u_input.a, u_input.a) % 32u))), u_input.a, u_input.a);
    var var_2 = Struct_1(~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.x, 1u, u_input.a, var_1.x), vec4<u32>(12057u, var_1.x, u_input.a, var_1.x))), vec3<bool>(all(!vec4<bool>(false, true, true, var_0.x)) || all(vec2<bool>(true, true)), true, true), !select(vec3<bool>(true, true, var_0.x | false), select(vec3<bool>(var_0.x, var_0.x, true), var_0, var_0), var_0.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1171f)) - -778f), _wgslsmith_f_op_f32(min(-174f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))))), _wgslsmith_clamp_vec4_u32(~(vec4<u32>(var_1.x, 4294967295u, var_1.x, 0u) & abs(vec4<u32>(4294967295u, 47714u, u_input.a, var_1.x))), abs(vec4<u32>(4294967295u, u_input.a >> (1u % 32u), firstLeadingBit(var_1.x), 0u)), abs(max(vec4<u32>(u_input.a, var_1.x, u_input.a, u_input.a) | vec4<u32>(43706u, 26854u, 1u, u_input.a), _wgslsmith_mult_vec4_u32(vec4<u32>(127988u, 0u, var_1.x, u_input.a), vec4<u32>(u_input.a, 18135u, var_1.x, var_1.x))))));
    var_1 = _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(firstTrailingBit(_wgslsmith_sub_u32(3765u, var_2.a)), firstLeadingBit(1u), ~(~37406u)), vec3<u32>(var_2.a, 0u, reverseBits(abs(13885u))), vec3<u32>(60018u, var_2.a, select(12609u, var_1.x, !var_2.b.x))), select(~vec3<u32>(16508u, 1u, var_2.e.x) >> (var_2.e.xxy % vec3<u32>(32u)), reverseBits(firstLeadingBit(var_2.e.zyz)), !select(var_2.c, vec3<bool>(false, false, true), var_0.x)) & vec3<u32>(0u, abs(var_2.e.x), _wgslsmith_dot_vec4_u32(var_2.e, vec4<u32>(73860u, var_2.a, 17277u, 0u)) ^ 1953u));
    var_2 = Struct_1(u_input.a, vec3<bool>(true, var_0.x, true), vec3<bool>(select(!(var_0.x | var_2.c.x), !var_2.b.x, true), var_2.c.x, true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.d), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_2.d, _wgslsmith_f_op_f32(-1064f - 1429f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -559f) + _wgslsmith_f_op_f32(653f * -667f)))))), var_2.e);
    return 2147483647i;
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: u32) -> Struct_1 {
    var var_0 = arg_1.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(276f, 1420f, 1436f, -902f)))))));
    var_0 = -arg_1.x;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x))), min(func_3(_wgslsmith_f_op_f32(f32(-1f) * -1183f)), arg_1.x) << ((arg_2 ^ arg_0) % 32u), ~arg_0, Struct_1(22286u, vec3<bool>(true, any(vec3<bool>(false, true, true)), !any(vec4<bool>(false, false, true, true))), !vec3<bool>(true, any(vec2<bool>(false, false)), false), _wgslsmith_f_op_f32(round(var_1.x)), ~firstLeadingBit(vec4<u32>(0u, arg_0, 66319u, arg_2))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, 225f, true))), 1000f, _wgslsmith_f_op_f32(min(1919f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x - -223f), _wgslsmith_f_op_f32(abs(var_1.x))))), _wgslsmith_f_op_f32(sign(var_1.x))));
    var_0 = var_2.b;
    return var_2.d;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d, 346f, arg_0.d) + vec3<f32>(1021f, arg_0.d, arg_0.d)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d, 1424f, -873f))))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d, 934f, arg_0.d))))));
    let var_1 = select(!vec4<bool>(true, arg_0.b.x, true, func_2(47568u, _wgslsmith_div_vec3_i32(vec3<i32>(14601i, 0i, -41738i), vec3<i32>(-2147483647i, -20956i, 22065i)), u_input.a).b.x), vec4<bool>(false, arg_0.c.x, false, (_wgslsmith_dot_vec3_u32(arg_0.e.zyx, vec3<u32>(arg_0.a, arg_0.a, arg_0.a)) | 4294967295u) > max(_wgslsmith_div_u32(arg_0.a, arg_0.a), arg_0.e.x)), _wgslsmith_mod_i32(1i, -1i) < _wgslsmith_mult_i32(firstTrailingBit(2147483647i >> (1u % 32u)), ~max(-1i, -17634i)));
    var var_2 = -14137i;
    var_2 = max(~3429i, i32(-1i) * -2147483647i);
    let var_3 = ~countOneBits(_wgslsmith_mod_vec3_i32(-select(vec3<i32>(-12972i, -2147483647i, -121628i), vec3<i32>(0i, 31133i, -14307i), var_1.x), ~vec3<i32>(-41224i, 20237i, -2147483647i)));
    return func_2(~min(~select(u_input.a, 4294967295u, arg_0.b.x), u_input.a), var_3, ~(~select(4294967295u, ~41668u, func_2(arg_0.e.x, vec3<i32>(var_3.x, -1i, 2147483647i), 4294967295u).c.x)));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> vec2<bool> {
    let var_0 = 1f;
    var var_1 = Struct_2(func_4(func_2(min(reverseBits(10491u), ~0u), -vec3<i32>(2147483647i, 7531i, -1i), ~_wgslsmith_sub_u32(arg_0.a, arg_0.e.x))), arg_0, Struct_1(4294967295u, vec3<bool>(!(arg_1 & true), arg_1, any(!vec4<bool>(true, true, arg_0.c.x, arg_1))), arg_0.b, _wgslsmith_f_op_f32(floor(arg_0.d)), vec4<u32>(arg_0.a, ~4294967295u, _wgslsmith_add_u32(max(11875u, u_input.a), _wgslsmith_dot_vec3_u32(arg_0.e.wyx, vec3<u32>(u_input.a, 4294967295u, 1u))), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(arg_0.e.xwy, vec3<u32>(u_input.a, 1u, 1u)), u_input.a))), _wgslsmith_f_op_f32(f32(-1f) * -352f), !arg_0.b);
    var var_2 = select(reverseBits(select(~vec4<i32>(21793i, -2147483647i, -70328i, -77998i), vec4<i32>(-1i, 317i, 20712i, 14312i), false)) << ((arg_0.e << (vec4<u32>(49505u, _wgslsmith_div_u32(u_input.a, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(117454u, 44454u, u_input.a), vec3<u32>(9673u, 5026u, 0u)), u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(-13437i, i32(-1i) * -1i, -8584i, 2798i), min(vec4<i32>(-18203i, 0i, -2147483647i, -23602i) << (arg_0.e % vec4<u32>(32u)), ~vec4<i32>(18006i, 37172i, -14105i, -1i)), vec4<i32>(1i, 1i, 1i, 1i)), arg_0.c.x);
    let var_3 = Struct_5(vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.d * var_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d)), -113f));
    let var_4 = Struct_2(Struct_1(_wgslsmith_sub_u32(~firstTrailingBit(0u), var_1.c.a), vec3<bool>(arg_0.b.x, select(var_2.x, 1i, arg_0.c.x) > -20142i, _wgslsmith_dot_vec4_u32(vec4<u32>(5048u, var_1.b.e.x, 7754u, 15115u), arg_0.e) > _wgslsmith_add_u32(1u, var_1.b.e.x)), func_2(1u, firstLeadingBit(vec3<i32>(-2147483647i, -2147483647i, -2147483647i)) ^ (vec3<i32>(var_2.x, 0i, var_2.x) | var_2.zyz), 4294967295u).c, -1000f, ~abs(vec4<u32>(4294967295u, arg_0.e.x, var_1.a.e.x, 4294967295u))), Struct_1(arg_0.e.x, arg_0.c, !(!arg_0.c), _wgslsmith_f_op_f32(-var_1.d), abs(vec4<u32>(func_4(var_1.a).e.x, _wgslsmith_div_u32(u_input.a, var_1.c.e.x), 4294967295u, min(7389u, 1397u)))), func_4(Struct_1(u_input.a, select(func_2(0u, var_2.zxy, var_1.a.a).c, vec3<bool>(arg_1, true, arg_1), arg_1 || arg_1), vec3<bool>(true, all(vec3<bool>(true, true, true)), arg_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.d * var_3.a.x) * _wgslsmith_f_op_f32(abs(var_1.c.d))), ~(~vec4<u32>(1u, u_input.a, arg_0.a, var_1.b.a)))), 1f, !(!vec3<bool>(arg_0.b.x, arg_0.b.x, any(vec4<bool>(var_1.a.b.x, arg_0.b.x, var_1.c.b.x, var_1.b.c.x)))));
    return !vec2<bool>(var_4.e.x, all(!(!vec4<bool>(true, var_1.e.x, var_4.c.c.x, var_1.a.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_1(Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 16305u, u_input.a, 1u), vec4<u32>(u_input.a, 2791u, 4294967295u, u_input.a)), vec3<bool>(false, select(true, false, true), true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), true), 556f, _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)), ~vec4<u32>(3053u, u_input.a, u_input.a, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 45131u, 4334u, u_input.a), vec4<u32>(1u, u_input.a, u_input.a, 4294967295u)))), true);
    var var_1 = -1i;
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-367f * 256f)), _wgslsmith_f_op_f32(f32(-1f) * -199f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(1u, vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), -753f, vec4<u32>(u_input.a, 44200u, u_input.a, 4294967295u))).d - -1092f))), var_0.x));
    let var_3 = ~(~4294967295u);
    var var_4 = 0u;
    let var_5 = -918f;
    var_4 = 4294967295u;
    let var_6 = Struct_5(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5, -1737f, 1258f, -206f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

