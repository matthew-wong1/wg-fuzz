struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>) -> i32 {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(1270f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-601f + 584f)))), _wgslsmith_f_op_f32(abs(-346f)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -193f) - 1f) * _wgslsmith_f_op_f32(-408f + -140f))), -1000f);
    let var_1 = !vec2<bool>(!(!all(vec4<bool>(true, false, false, false))), true);
    var var_2 = ~select(vec2<u32>(_wgslsmith_add_u32(max(u_input.a.x, 4294967295u), _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), ~45967u & arg_0.a), firstTrailingBit(firstLeadingBit(abs(vec2<u32>(51676u, arg_0.a)))), select(var_1, var_1, true));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, -111f))));
    var var_4 = _wgslsmith_add_vec3_u32(~select(vec3<u32>(34905u, ~24093u, 4814u), ~min(vec3<u32>(7167u, 70040u, u_input.d.x), vec3<u32>(0u, u_input.d.x, arg_2.x)), vec3<bool>(var_1.x & var_1.x, any(vec3<bool>(var_1.x, true, var_1.x)), var_1.x)), abs(vec3<u32>(1u, u_input.d.x, ~arg_2.x)));
    return -2147483647i;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = Struct_2(u_input.b, vec3<bool>(true, true, true), arg_0);
    var_0 = Struct_2(~var_0.a, select(var_0.b, !var_0.b, true), Struct_1(arg_1));
    let var_1 = Struct_2(max(abs(_wgslsmith_add_i32(i32(-1i) * -2147483647i, func_3(arg_0, 10331i, vec2<u32>(129908u, arg_0.a)))), _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.c, -37929i), u_input.e.x) >> (~(~0u) % 32u)), select(var_0.b, !vec3<bool>(all(var_0.b.xz), var_0.b.x | arg_2, var_0.b.x), !(u_input.e.x == -21324i)), Struct_1(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(arg_3, vec4<u32>(4294967295u, 31101u, 59088u, arg_1)), var_0.c.a)));
    let var_2 = !vec2<bool>(var_0.c.a > var_0.c.a, true);
    let var_3 = 187f;
    return var_1;
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = vec4<f32>(1f, 1f, 1f, 1f);
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(198f, _wgslsmith_f_op_f32(118f * -1396f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) + -100f), -101f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1361f * -210f)), _wgslsmith_f_op_f32(-497f - var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -232f))));
    return func_2(func_2(func_2(func_2(Struct_1(u_input.a.x), select(35236u, arg_0.c.a, arg_0.b.x), select(false, true, arg_0.b.x), ~vec4<u32>(4294967295u, 4294967295u, 74934u, 17125u)).c, 22982u, _wgslsmith_f_op_f32(select(1051f, 525f, arg_0.b.x)) >= 522f, ~abs(u_input.a)).c, 36403u, arg_0.b.x, u_input.a).c, countOneBits(46289u), !all(arg_0.b.zz), _wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(abs(4294967295u), firstLeadingBit(5545u), _wgslsmith_add_u32(u_input.d.x, u_input.d.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c.a, arg_0.c.a, arg_0.c.a, arg_0.c.a), vec4<u32>(arg_0.c.a, arg_0.c.a, u_input.d.x, 4294967295u)))) << (~firstTrailingBit(vec4<u32>(0u, 1u, u_input.d.x, 0u)) % vec4<u32>(32u)));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = u_input.c;
    var var_1 = func_4(func_2(Struct_1(arg_0), arg_0 & ~abs(4294967295u), 267f <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-390f)), 1f)), vec4<u32>(arg_0, arg_0, 0u, ~(~0u))));
    let var_2 = vec3<u32>(34588u >> (arg_0 % 32u), 20294u, abs(_wgslsmith_add_u32(countOneBits(abs(45685u)), ~max(arg_0, 1u))));
    var_0 = u_input.c;
    let var_3 = -298f;
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(false, _wgslsmith_mod_u32(9369u, _wgslsmith_mult_u32(38859u, 1u)) > ~(u_input.d.x & 6171u), all(select(func_1(37763u, Struct_1(u_input.d.x)), func_1(0u, Struct_1(68220u)), false))), func_1(u_input.a.x, Struct_1(u_input.d.x)), !(!(!func_4(Struct_2(u_input.b, vec3<bool>(false, true, true), Struct_1(4294967295u))).b)));
    let var_1 = func_2(Struct_1(1u), u_input.a.x & 1u, false, _wgslsmith_clamp_vec4_u32(~_wgslsmith_mod_vec4_u32(~u_input.a, countOneBits(vec4<u32>(0u, u_input.a.x, u_input.d.x, u_input.a.x))), ~u_input.a, _wgslsmith_mod_vec4_u32(vec4<u32>(func_4(Struct_2(u_input.e.x, vec3<bool>(true, false, true), Struct_1(4294967295u))).c.a, 4294967295u, ~u_input.a.x, 3694u), vec4<u32>(~u_input.d.x, max(4294967295u, u_input.a.x), u_input.d.x, u_input.a.x)))).c;
    let var_2 = ~0u;
    let var_3 = Struct_2(-58774i, !func_2(var_1, func_2(var_1, 3636u, var_0.x, vec4<u32>(54097u, 1u, var_2, var_1.a)).c.a ^ abs(4294967295u), (var_0.x != false) && true, _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(var_1.a, 28176u, 0u, 36201u)), ~vec4<u32>(u_input.d.x, var_2, var_2, 43410u))).b, func_2(var_1, var_1.a, true, ~vec4<u32>(~var_2, ~1u, _wgslsmith_sub_u32(0u, var_1.a), ~var_1.a)).c);
    var_0 = var_3.b;
    let var_4 = func_4(func_4(var_3)).c.a;
    let var_5 = func_4(var_3).c;
    var var_6 = func_4(Struct_2(-13902i, func_4(var_3).b, var_3.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -391f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1225f * 498f), _wgslsmith_f_op_f32(f32(-1f) * -1648f), true))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-110f, 161f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-806f, 280f))) + vec2<f32>(1f, 1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1807f))) + _wgslsmith_f_op_f32(sign(1f))), 4294967295u, vec4<u32>(72118u, func_2(Struct_1(1u), 53841u, var_6.c.a > ~4294967295u, _wgslsmith_mod_vec4_u32(~vec4<u32>(var_4, var_1.a, 5361u, 1u), u_input.a << (vec4<u32>(var_6.c.a, var_5.a, 4294967295u, 18703u) % vec4<u32>(32u)))).c.a, 0u, func_4(Struct_2(var_6.a << (var_6.c.a % 32u), vec3<bool>(true, var_3.b.x, false), Struct_1(var_3.c.a))).c.a), countOneBits(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(var_3.a, var_6.a, u_input.e.x, var_3.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_6.a, -479i, var_3.a, -1i), vec4<i32>(-1i, var_3.a, var_6.a, var_3.a), vec4<i32>(var_6.a, u_input.e.x, var_3.a, u_input.c))), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_3.a, u_input.c, u_input.c, u_input.e.x) & vec4<i32>(-1794i, 0i, -22282i, 28853i), vec4<i32>(-27620i, -22156i, 2147483647i, 1i) | vec4<i32>(1i, var_6.a, 1i, -42461i), -vec4<i32>(var_3.a, var_3.a, var_3.a, u_input.c)))));
}

