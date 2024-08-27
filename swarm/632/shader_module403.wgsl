struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> vec4<u32> {
    var var_0 = 553f;
    return ~min(firstLeadingBit(min(~vec4<u32>(0u, 1u, 40407u, 75852u), vec4<u32>(1u, 1u, 1u, 1u))), vec4<u32>(1u, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(2253u, 42041u, 40307u, 11764u), vec4<u32>(1u, 20995u, 10981u, 1u))), 1u, _wgslsmith_mult_u32(28296u, 35652u) >> (0u % 32u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: vec2<bool>) -> u32 {
    let var_0 = Struct_1(vec4<u32>(1u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, 59681u, 0u), vec3<u32>(20616u, 0u, 0u), vec3<bool>(true, false, false)), ~vec3<u32>(1u, 52328u, 3350u)), 1u >> (func_2().x % 32u)), firstTrailingBit(1u), _wgslsmith_add_u32(4294967295u >> (countOneBits(10899u) % 32u), 102094u)), !(!vec4<bool>(arg_2.x || arg_0.x, arg_2.x || arg_2.x, arg_0.x, !arg_0.x)));
    var var_1 = Struct_1(~_wgslsmith_div_vec4_u32(~(~var_0.a), vec4<u32>(88526u, var_0.a.x, abs(0u), var_0.a.x)), var_0.b);
    var_1 = Struct_1(~vec4<u32>(~var_1.a.x, abs(var_0.a.x), ~(var_1.a.x & var_1.a.x), 10013u), !var_1.b);
    var var_2 = _wgslsmith_f_op_f32(ceil(-971f));
    var_1 = var_0;
    return ~max(~(~(var_1.a.x & var_0.a.x)), var_1.a.x);
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_mod_vec4_u32(func_2(), vec4<u32>(41462u, firstTrailingBit(func_3(vec2<bool>(true, false), vec2<f32>(504f, 810f), vec2<bool>(true, true))), max(arg_0 >> (arg_0 % 32u), 61629u), abs(max(arg_0, arg_0)))), vec4<bool>(_wgslsmith_div_i32(~u_input.b, u_input.c) > -2147483647i, true, true, false));
    let var_1 = var_0.b.x || all(vec3<bool>(false, all(select(var_0.b.ww, var_0.b.zx, false)), true));
    var var_2 = Struct_1(select(_wgslsmith_add_vec4_u32(func_2(), vec4<u32>(11511u, var_0.a.x, _wgslsmith_mod_u32(0u, var_0.a.x), var_0.a.x << (0u % 32u))), countOneBits(vec4<u32>(_wgslsmith_mult_u32(arg_0, arg_0), var_0.a.x ^ 4294967295u, _wgslsmith_mod_u32(var_0.a.x, var_0.a.x), 38894u)), var_0.b), select(select(vec4<bool>(!var_0.b.x, true, true, var_1), select(var_0.b, var_0.b, vec4<bool>(false, var_0.b.x, var_0.b.x, var_1)), select(true, var_1, all(vec4<bool>(false, true, true, var_0.b.x)))), !vec4<bool>(all(vec3<bool>(false, var_1, false)), !var_0.b.x, all(vec4<bool>(var_1, var_0.b.x, var_0.b.x, false)), false), !(!(var_0.b.x && var_0.b.x))));
    var_0 = Struct_1(select(abs(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_2.a.x, var_2.a.x, 1u), vec4<u32>(1u, arg_0, arg_0, arg_0)), ~vec4<u32>(103012u, 20320u, var_2.a.x, arg_0))), vec4<u32>(~arg_0, _wgslsmith_sub_u32(4294967295u, 59987u), ~5095u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, 0u), var_0.a.xy)) >> (~_wgslsmith_sub_vec4_u32(vec4<u32>(29229u, var_0.a.x, var_2.a.x, var_2.a.x), vec4<u32>(var_0.a.x, var_2.a.x, 4294967295u, var_2.a.x)) % vec4<u32>(32u)), 0u <= _wgslsmith_mult_u32(func_3(vec2<bool>(var_2.b.x, true), vec2<f32>(-1492f, 1336f), vec2<bool>(var_1, var_1)), var_0.a.x)), select(vec4<bool>(_wgslsmith_div_u32(var_0.a.x, arg_0) == 1u, !all(vec3<bool>(false, var_1, var_2.b.x)), true, true), !select(select(vec4<bool>(true, false, var_1, var_0.b.x), vec4<bool>(true, var_0.b.x, var_2.b.x, var_0.b.x), var_2.b.x), var_2.b, var_0.b), vec4<bool>(true || !var_2.b.x, _wgslsmith_clamp_i32(1i, u_input.c, -1i) == -u_input.b, !var_1, var_1)));
    let var_3 = Struct_1(~_wgslsmith_sub_vec4_u32(func_2(), vec4<u32>(var_2.a.x, _wgslsmith_dot_vec2_u32(var_0.a.xz, vec2<u32>(0u, 37064u)), var_0.a.x, _wgslsmith_mult_u32(1u, var_0.a.x))), !vec4<bool>(!any(var_0.b.yyy), any(select(var_0.b.xz, var_0.b.yw, false)), select(u_input.c == u_input.b, var_1, var_0.b.x), !var_1));
    return Struct_1(~var_3.a ^ vec4<u32>(0u, _wgslsmith_clamp_u32(var_3.a.x, 1u, 1u), ~abs(26608u), ~_wgslsmith_clamp_u32(var_0.a.x, arg_0, 1u)), vec4<bool>(all(select(!vec2<bool>(false, var_0.b.x), select(var_2.b.zy, vec2<bool>(true, var_1), vec2<bool>(var_3.b.x, false)), var_1)), countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-41856i, 59807i), vec2<i32>(u_input.b, 11545i))) != (u_input.b | 0i), (firstTrailingBit(var_3.a.x) ^ var_2.a.x) <= ~select(1u, arg_0, var_0.b.x), all(vec4<bool>(!var_3.b.x, !var_0.b.x, any(vec2<bool>(false, var_3.b.x)), true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_dot_vec2_u32(~(firstTrailingBit(vec2<u32>(64285u, 36334u)) & ~vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(~_wgslsmith_mod_u32(103743u, 1u), _wgslsmith_mod_u32(~1u, 1u))));
    let var_1 = select(var_0.b.zy, var_0.b.wx, var_0.b.x);
    let var_2 = _wgslsmith_clamp_u32(~firstTrailingBit(61851u), var_0.a.x, 4294967295u);
    var var_3 = Struct_1(~vec4<u32>(select(90697u, var_0.a.x, true), func_3(select(var_1, vec2<bool>(var_0.b.x, false), vec2<bool>(var_0.b.x, false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1895f, -1757f)), var_1), 5511u, func_1(~var_2).a.x), select(!var_0.b, func_1(~abs(36056u)).b, select(var_0.b, vec4<bool>(var_1.x, false, true, var_1.x), all(select(vec4<bool>(false, var_1.x, var_1.x, false), vec4<bool>(var_0.b.x, false, false, false), var_0.b)))));
    let var_4 = func_1(~4294967295u >> (~(~(var_2 << (14438u % 32u))) % 32u));
    var_3 = Struct_1(vec4<u32>(var_4.a.x, select(max(~var_4.a.x, _wgslsmith_div_u32(var_0.a.x, var_4.a.x)), var_0.a.x & _wgslsmith_mod_u32(85301u, 4294967295u), true), abs(var_4.a.x), 1u), !select(!var_4.b, vec4<bool>(true, false, var_0.b.x, true), true));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x, _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 1i, u_input.b, -23385i), vec4<i32>(u_input.b, 0i, -2147483647i, u_input.c)), ~(vec4<i32>(u_input.a, 50197i, 28182i, -2147483647i) << (var_4.a % vec4<u32>(32u)))), vec4<i32>(-1i) * -vec4<i32>(u_input.b, -1i, 600i, -60531i)), -(abs(min(vec4<i32>(3088i, u_input.b, u_input.b, 0i), vec4<i32>(u_input.a, u_input.c, u_input.c, u_input.a))) | -min(vec4<i32>(u_input.a, 34134i, -1i, u_input.b), vec4<i32>(u_input.b, u_input.b, 1i, u_input.b))), firstTrailingBit(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.b, -13989i, u_input.a) | vec4<i32>(u_input.c, u_input.a, u_input.b, u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(33890i, u_input.a, u_input.b, -37095i), vec4<i32>(-2147483647i, -7045i, u_input.b, u_input.c)))));
}

