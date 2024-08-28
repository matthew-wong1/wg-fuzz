struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<f32>,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec2<i32>,
    c: Struct_1,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> u32 {
    var var_0 = -476f;
    var_0 = _wgslsmith_f_op_f32(-1755f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - arg_0.x) * _wgslsmith_f_op_f32(-635f + -341f))))));
    let var_1 = arg_0;
    var var_2 = !(arg_3.a >= arg_1.a);
    var var_3 = Struct_1(~arg_3.a, abs(u_input.c.yw | vec2<i32>(reverseBits(31857i), u_input.c.x)), countOneBits(vec3<i32>(_wgslsmith_mod_i32(u_input.c.x, arg_2.x), ~min(arg_3.b.x, 2147483647i), -43293i)));
    return _wgslsmith_div_u32(arg_1.a, ~(~4294967295u));
}

fn func_2() -> i32 {
    let var_0 = Struct_2(Struct_1(~(func_3(vec3<f32>(-1000f, 855f, 1000f), Struct_1(4294967295u, vec2<i32>(u_input.a.x, u_input.c.x), vec3<i32>(-68730i, u_input.b, u_input.d.x)), u_input.c, Struct_1(61505u, vec2<i32>(u_input.b, -2147483647i), u_input.c.xzw)) & 10579u), -_wgslsmith_div_vec2_i32(-vec2<i32>(u_input.c.x, u_input.d.x), abs(u_input.c.yz)), vec3<i32>(1i & abs(u_input.d.x), 0i, -(~u_input.d.x))), 315f, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f))), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(firstLeadingBit(37944u), ~35220u)), (true & !any(vec4<bool>(false, true, false, true))) & true);
    var var_1 = var_0.a;
    var_1 = Struct_1(4294967295u, vec2<i32>(77844i, -15580i), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.c.x, var_0.a.b.x, 23928i, 0i)) | u_input.d.x, -var_0.a.b.x), 2147483647i, u_input.d.x));
    var var_2 = vec2<f32>(-443f, 185f);
    var var_3 = Struct_1(var_1.a, _wgslsmith_mod_vec2_i32(var_0.a.c.zz, var_1.c.zy), ~u_input.d);
    return _wgslsmith_clamp_i32(-_wgslsmith_mod_i32(var_3.b.x, -13797i), var_1.c.x, (var_0.a.b.x ^ _wgslsmith_dot_vec3_i32(countOneBits(u_input.d), var_3.c)) ^ _wgslsmith_div_i32(35111i, abs(var_3.b.x)));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: i32) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(85148u, 51085u, 1u), vec3<u32>(44358u, 66555u, 51169u)) | 1u, firstLeadingBit(_wgslsmith_sub_u32(4294967295u, 4294967295u))), u_input.d.zz, ~reverseBits(vec3<i32>(-2147483647i, arg_2, -31343i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), -189f, any(vec3<bool>(true, false, true)))) * 982f)), vec3<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -789f), _wgslsmith_f_op_f32(arg_0 + -466f)), ~(~abs(abs(0u))), true);
    var_0 = Struct_2(var_0.a, _wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(sign(arg_0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(var_0.c - var_0.c), _wgslsmith_f_op_vec3_f32(-var_0.c)))), ~(~(~18280u)) << (_wgslsmith_dot_vec3_u32(~vec3<u32>(67556u, 1u, 4294967295u), vec3<u32>(1u, var_0.a.a >> (var_0.a.a % 32u), ~4294967295u)) % 32u), true);
    let var_1 = vec3<bool>(-370f != var_0.c.x, true, var_0.e);
    var var_2 = var_1.yz;
    return Struct_2(Struct_1(1u, vec2<i32>(var_0.a.c.x, -39807i), ~_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.a.b.x, arg_1, var_0.a.b.x), var_0.a.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-332f)), -189f), var_0.c, 0u, var_2.x);
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = vec4<i32>(firstTrailingBit(-37335i), -u_input.a.x, ~(-(~u_input.c.x)), -(~u_input.d.x));
    var_0 = _wgslsmith_div_vec4_i32(-u_input.a, min(vec4<i32>(26648i, firstLeadingBit(-u_input.d.x), _wgslsmith_mult_i32(u_input.a.x, var_0.x) & -2147483647i, ~_wgslsmith_mod_i32(-11215i, 23108i)), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(772i, var_0.x), ~var_0.x), abs(1i), -9141i, _wgslsmith_add_i32(~u_input.d.x, 19430i))));
    let var_1 = func_4(1302f, abs(_wgslsmith_clamp_i32(var_0.x, func_2(), ~var_0.x)) << (max(0u, reverseBits(18170u >> (0u % 32u))) % 32u), u_input.b);
    var var_2 = Struct_4(func_4(_wgslsmith_div_f32(var_1.c.x, _wgslsmith_div_f32(func_4(-419f, var_1.a.c.x, -55924i).c.x, _wgslsmith_f_op_f32(round(356f)))), u_input.d.x, var_0.x).d, ~select(_wgslsmith_clamp_vec2_i32(reverseBits(var_0.yz), _wgslsmith_mod_vec2_i32(var_0.zw, vec2<i32>(u_input.c.x, u_input.d.x)), vec2<i32>(var_1.a.b.x, u_input.d.x)), var_1.a.b, select(false, true, true)), var_1.a, reverseBits(_wgslsmith_mod_vec3_u32(~vec3<u32>(var_1.a.a, 37327u, var_1.d), abs(~vec3<u32>(28274u, var_1.a.a, 0u)))));
    var_0 = -(~(-select(firstTrailingBit(u_input.a), -u_input.a, !vec4<bool>(true, arg_0.x, true, true))));
    return Struct_1(~(~firstLeadingBit(~0u)), var_2.c.b, var_0.zyy);
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> f32 {
    let var_0 = -525f;
    let var_1 = Struct_3(u_input.a, arg_2.a);
    var var_2 = Struct_4(abs(10762u), _wgslsmith_add_vec2_i32((vec2<i32>(-1i) * -u_input.c.zx) & u_input.a.wz, -((vec2<i32>(2147483647i, arg_2.a.c.x) >> (vec2<u32>(arg_2.a.a, arg_0.a) % vec2<u32>(32u))) & -vec2<i32>(arg_2.a.b.x, u_input.b))), func_4(791f, var_1.a.x, abs(~0i) ^ _wgslsmith_add_i32(arg_2.a.c.x, _wgslsmith_div_i32(66698i, arg_0.c.x))).a, vec3<u32>(1u, select(arg_0.a, arg_0.a, any(!vec3<bool>(true, arg_1, arg_1))), arg_2.d & select(arg_0.a << (var_1.b.a % 32u), _wgslsmith_add_u32(arg_0.a, arg_0.a), true)));
    var_2 = Struct_4(~(~(~func_3(vec3<f32>(-794f, var_0, var_0), Struct_1(arg_2.d, vec2<i32>(var_1.b.c.x, var_1.a.x), arg_0.c), var_1.a, var_1.b))), ~_wgslsmith_mult_vec2_i32(-vec2<i32>(var_1.a.x, -9873i), vec2<i32>(arg_0.c.x, -1i)) | abs(vec2<i32>(1i, var_2.c.c.x)), func_4(arg_2.b, u_input.c.x, 36481i).a, select(~(_wgslsmith_add_vec3_u32(var_2.d, var_2.d) ^ var_2.d), vec3<u32>(~min(43592u, 24029u), abs(_wgslsmith_dot_vec3_u32(var_2.d, var_2.d)), ~(var_2.c.a << (1u % 32u))), all(select(vec2<bool>(arg_1, false), vec2<bool>(true, arg_2.e), true)) & (true | any(vec2<bool>(arg_2.e, true)))));
    var_2 = Struct_4(1u, var_2.b, func_4(arg_2.c.x, select(u_input.d.x, _wgslsmith_dot_vec4_i32(var_1.a, var_1.a ^ var_1.a), true), _wgslsmith_mod_i32(0i, max(var_2.b.x, _wgslsmith_sub_i32(arg_2.a.b.x, -89600i)))).a, vec3<u32>(44505u, arg_0.a, var_1.b.a));
    return _wgslsmith_f_op_f32(ceil(1228f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_5(func_1(select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true))), !any(vec2<bool>(all(vec2<bool>(true, true)), false)), Struct_2(func_1(vec2<bool>(false, true)), 2335f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1104f, 1142f, 1137f))), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))))));
    var_0 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -102f))), 1451f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(737f)), 145f))));
    let var_1 = all(!vec2<bool>(!all(vec3<bool>(true, false, false)), false));
    let var_2 = func_2();
    let var_3 = vec2<bool>(var_1, false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_4(_wgslsmith_f_op_f32(floor(1716f)), u_input.b, 0i).c.x)), 2279f, _wgslsmith_f_op_f32(ceil(-350f)));
}

