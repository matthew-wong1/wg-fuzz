struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: u32, arg_3: vec3<i32>) -> vec4<i32> {
    let var_0 = ~_wgslsmith_mult_vec4_u32(~vec4<u32>(~33669u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 34501u, u_input.b), vec3<u32>(4294967295u, 29418u, arg_1)), 28322u << (1u % 32u), arg_2), ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2, 1u, 1u, 1u), vec4<u32>(0u, 0u, arg_1, u_input.a)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -666f)), _wgslsmith_f_op_f32(f32(-1f) * -651f))))));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -355f);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -591f)));
    var var_3 = ~arg_3;
    return vec4<i32>(abs(_wgslsmith_mod_i32(_wgslsmith_add_i32(-u_input.c, min(arg_0, arg_0)), -firstTrailingBit(arg_0))), 21307i, -39443i, arg_3.x);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(max(vec2<u32>(~41055u, u_input.a), vec2<u32>(26176u, _wgslsmith_div_u32(u_input.b, u_input.a))), vec2<u32>(abs(1u) ^ countOneBits(u_input.b), ~1u)), ~firstLeadingBit(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(9818u, u_input.b, u_input.b), vec3<u32>(u_input.b, 1u, u_input.a)), 1350u)));
    let var_1 = Struct_1(u_input.e, u_input.e, vec4<i32>(~_wgslsmith_dot_vec4_i32(arg_3.c, vec4<i32>(arg_1.b.x, u_input.e.x, 1i, 0i)), arg_1.b.x, ~((8505i >> (var_0.x % 32u)) >> (abs(83724u) % 32u)), -u_input.c));
    return Struct_1(vec2<i32>(u_input.d.x, 0i) | arg_3.a, arg_3.c.xy, select(vec4<i32>(2147483647i, arg_2.a.x, (arg_2.c.x << (1u % 32u)) << (u_input.b % 32u), -(i32(-1i) * -10069i)), _wgslsmith_clamp_vec4_i32(arg_3.c, arg_0, _wgslsmith_div_vec4_i32(~arg_2.c, ~vec4<i32>(arg_2.a.x, arg_1.c.x, var_1.a.x, u_input.e.x))), false));
}

fn func_4(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = _wgslsmith_div_i32(0i, select(2147483647i, arg_0.c.x, any(vec2<bool>(true, true))) << (_wgslsmith_mod_u32(u_input.b, 71163u) % 32u));
    var var_1 = select(_wgslsmith_sub_vec2_u32(select(~min(vec2<u32>(59954u, u_input.a), vec2<u32>(0u, 0u)), countOneBits(max(vec2<u32>(u_input.b, 1u), vec2<u32>(4294967295u, u_input.a))), vec2<bool>(false, true)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 1u), ~vec2<u32>(u_input.b, 19913u))), _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.a, 4294967295u)), vec2<u32>(4294967295u, 1u) << (vec2<u32>(u_input.a, 32716u) % vec2<u32>(32u))) & vec2<u32>(countOneBits(1u), abs(19568u)), ~abs(~vec2<u32>(u_input.a, 26208u))), vec2<bool>(true, true));
    var var_2 = vec2<bool>(min(u_input.c, min(func_3(arg_0.c, arg_0, arg_0, Struct_1(u_input.e, arg_0.a, vec4<i32>(-2570i, -4832i, -25935i, -2147483647i))).c.x, -2147483647i)) <= -(13551i | func_2(u_input.d.x, u_input.b, var_1.x, arg_0.c.wyy).x), true);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-647f, 622f))), 437f)) + _wgslsmith_f_op_f32(1138f - _wgslsmith_f_op_f32(629f * 1567f)));
    let var_4 = func_3(max(~vec4<i32>(_wgslsmith_mod_i32(u_input.d.x, 0i), ~(-30196i), _wgslsmith_mult_i32(2147483647i, -1i), 1i), vec4<i32>(u_input.d.x, ~34233i, u_input.d.x, arg_0.c.x) ^ arg_0.c), Struct_1(~u_input.d, u_input.d, func_2(-arg_0.b.x, 4294967295u, min(~74833u, _wgslsmith_mult_u32(var_1.x, 87703u)), arg_0.c.yzy)), arg_0, func_3(arg_0.c, func_3(countOneBits(-vec4<i32>(arg_0.a.x, -12907i, arg_0.a.x, arg_0.b.x)), func_3(-vec4<i32>(u_input.c, arg_0.b.x, 0i, u_input.c), arg_0, arg_0, Struct_1(vec2<i32>(-17543i, u_input.e.x), u_input.d, vec4<i32>(20351i, 20116i, u_input.d.x, arg_0.b.x))), func_3(select(arg_0.c, arg_0.c, vec4<bool>(var_2.x, false, var_2.x, var_2.x)), arg_0, arg_0, func_3(vec4<i32>(-1i, arg_0.c.x, -22334i, 62258i), arg_0, arg_0, arg_0)), Struct_1(-vec2<i32>(arg_0.c.x, -2147483647i), -arg_0.a, max(vec4<i32>(-33235i, arg_0.b.x, 29333i, 0i), vec4<i32>(54115i, -1i, arg_0.c.x, 39925i)))), arg_0, Struct_1(vec2<i32>(_wgslsmith_sub_i32(1i, u_input.e.x), u_input.c & u_input.c), -arg_0.b, vec4<i32>(reverseBits(arg_0.b.x), reverseBits(0i), u_input.c, max(24861i, arg_0.b.x)))));
    return _wgslsmith_div_vec2_i32(-var_4.a, vec2<i32>(_wgslsmith_dot_vec3_i32((vec3<i32>(arg_0.c.x, -1i, arg_0.a.x) | vec3<i32>(1i, arg_0.a.x, 0i)) >> (vec3<u32>(u_input.a, 1u, u_input.b) % vec3<u32>(32u)), ~var_4.c.xzw), reverseBits(~u_input.e.x << ((u_input.a << (32520u % 32u)) % 32u))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(423f)), _wgslsmith_div_f32(150f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-306f, _wgslsmith_f_op_f32(trunc(1000f))))))), all(vec2<bool>(true, !any(vec4<bool>(true, true, true, true))))));
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> vec3<i32> {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_div_u32(~(~(u_input.b & u_input.b)), u_input.b) >> (u_input.b % 32u);
    var_0 = func_5(Struct_1(func_4(func_3(func_2(arg_1.x, 54898u, 4294967295u, vec3<i32>(arg_1.x, u_input.d.x, 0i)), arg_0, Struct_1(vec2<i32>(var_0.b.x, arg_1.x), arg_0.c.yy, var_0.c), Struct_1(arg_1.zw, vec2<i32>(1i, -1i), vec4<i32>(u_input.e.x, -32876i, arg_1.x, 2868i)))), vec2<i32>(arg_1.x, select(-var_0.b.x, func_4(arg_0).x, select(true, false, false))), max(vec4<i32>(1i, ~27446i, 2084i, arg_1.x), ~arg_0.c)), arg_0);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-874f * 926f))) + -616f))));
    let var_3 = arg_0.b;
    return var_0.c.yzy;
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: i32, arg_3: vec2<bool>) -> Struct_1 {
    return func_3(arg_1.c, func_3(~(~arg_1.c), func_5(arg_1, Struct_1(func_4(Struct_1(u_input.d, arg_1.c.yw, vec4<i32>(29076i, arg_2, arg_2, 48223i))), arg_1.a, min(arg_1.c, arg_1.c))), func_5(func_5(func_3(vec4<i32>(0i, arg_1.c.x, arg_1.c.x, arg_2), arg_1, Struct_1(vec2<i32>(arg_2, u_input.e.x), vec2<i32>(arg_1.a.x, -15871i), arg_1.c), Struct_1(vec2<i32>(arg_1.b.x, arg_1.b.x), u_input.d, vec4<i32>(arg_2, arg_2, -38822i, 0i))), Struct_1(vec2<i32>(2147483647i, arg_1.c.x), vec2<i32>(-2147483647i, u_input.d.x), arg_1.c)), arg_1), arg_1), func_5(arg_1, func_5(func_5(Struct_1(vec2<i32>(-8080i, arg_1.a.x), arg_1.b, vec4<i32>(0i, 1i, arg_1.a.x, arg_2)), Struct_1(u_input.d, arg_1.b, arg_1.c)), func_3(arg_1.c, Struct_1(vec2<i32>(arg_2, u_input.e.x), vec2<i32>(u_input.c, 4258i), vec4<i32>(arg_2, arg_1.c.x, arg_2, -9276i)), Struct_1(vec2<i32>(3275i, -1i), vec2<i32>(arg_1.a.x, 2147483647i), vec4<i32>(-39590i, u_input.d.x, 1i, arg_2)), arg_1))), func_3(firstLeadingBit(func_2(1i, ~48953u, 1u, select(arg_1.c.wxy, vec3<i32>(2147483647i, 2147483647i, -26103i), vec3<bool>(false, true, true)))), func_3(~_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.b.x, 13299i, -2147483647i, -29739i), vec4<i32>(19124i, arg_1.a.x, -2147483647i, u_input.c)), arg_1, Struct_1(vec2<i32>(-26413i, arg_2), reverseBits(u_input.d), vec4<i32>(0i, 46905i, 29320i, u_input.e.x) ^ vec4<i32>(arg_2, arg_2, 8755i, 1i)), Struct_1(vec2<i32>(arg_1.b.x, 66452i), -arg_1.a, -vec4<i32>(-71827i, arg_2, arg_2, u_input.c))), func_5(func_5(func_5(arg_1, Struct_1(vec2<i32>(2147483647i, 0i), arg_1.b, arg_1.c)), Struct_1(arg_1.b, vec2<i32>(45345i, arg_1.b.x), arg_1.c)), arg_1), Struct_1(-(~vec2<i32>(-2147483647i, arg_2)), u_input.e, vec4<i32>(6899i, u_input.c, arg_1.c.x, _wgslsmith_sub_i32(-47571i, arg_2)))));
}

fn func_7(arg_0: Struct_1) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1271f * -988f), _wgslsmith_f_op_f32(ceil(-872f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-560f, 1534f), vec2<f32>(-1760f, -1000f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(290f, -792f) - vec2<f32>(-295f, -224f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(700f, 433f) * vec2<f32>(-1716f, -1139f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 828f)) - vec2<f32>(1618f, 1294f))))));
    let var_1 = func_3(arg_0.c, arg_0, arg_0, arg_0);
    var var_2 = any(select(select(vec4<bool>(all(vec4<bool>(true, true, false, false)), true, true, any(vec3<bool>(false, false, true))), vec4<bool>(true, true, true, true), any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)))), vec4<bool>(!all(vec3<bool>(false, false, true)), !select(false, true, true), true, var_0.x <= _wgslsmith_f_op_f32(step(414f, -373f))), !select(var_0.x < 1826f, true, all(vec3<bool>(false, false, true)))));
    var_2 = false;
    var_2 = true || any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true));
    return StorageBuffer(firstLeadingBit(u_input.a), _wgslsmith_add_vec2_u32(abs(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 85913u), vec2<u32>(0u, u_input.b)) & select(vec2<u32>(u_input.a, u_input.b), vec2<u32>(u_input.a, u_input.b), vec2<bool>(true, false))), vec2<u32>(~(~u_input.a), ~u_input.a)), vec3<u32>(~4294967295u, u_input.a, u_input.a) << (~(~(vec3<u32>(u_input.a, u_input.a, 1u) | vec3<u32>(u_input.a, u_input.a, 0u))) % vec3<u32>(32u)), var_0.x, vec2<i32>(_wgslsmith_dot_vec2_i32(-u_input.e ^ vec2<i32>(u_input.e.x, var_1.c.x), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, -61443i), vec2<i32>(0i, -860i))), -14276i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1f;
    let x = u_input.a;
    s_output = func_7(func_6(vec2<u32>(abs(_wgslsmith_mod_u32(10154u, u_input.b)), _wgslsmith_add_u32(max(1u, u_input.a), 55624u)), Struct_1(u_input.e ^ u_input.d, _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, u_input.d.x), vec2<i32>(u_input.c, 2147483647i) << (vec2<u32>(0u, 33285u) % vec2<u32>(32u))), abs(vec4<i32>(u_input.c, 2147483647i, -57690i, u_input.d.x)) & ~vec4<i32>(u_input.c, u_input.c, -8729i, u_input.d.x)), _wgslsmith_dot_vec3_i32(reverseBits(-vec3<i32>(u_input.c, u_input.d.x, u_input.e.x)), func_1(Struct_1(u_input.e, u_input.e, vec4<i32>(-9632i, u_input.e.x, 1i, -23750i)), vec4<i32>(u_input.d.x, u_input.e.x, u_input.e.x, u_input.c)) ^ -vec3<i32>(u_input.d.x, u_input.c, -1i)), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))));
}

