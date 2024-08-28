struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec3<i32>,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_3(!(!vec4<bool>(true, 24048u == u_input.d, true, false)), _wgslsmith_mult_vec3_i32(u_input.c >> (vec3<u32>(83136u, select(u_input.b, u_input.b, true), ~u_input.b) % vec3<u32>(32u)), u_input.a), ~(-firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.c.x, u_input.c.x), vec4<i32>(-1i, u_input.c.x, 6959i, u_input.a.x)))));
    var var_1 = ~_wgslsmith_div_u32(firstLeadingBit(~u_input.b), abs(firstTrailingBit(select(38112u, 104630u, var_0.a.x))));
    var_1 = ~54511u;
    var_1 = _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~select(vec3<u32>(0u, u_input.d, 9723u), vec3<u32>(u_input.d, u_input.d, 0u), var_0.a.x), ~max(vec3<u32>(73328u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.d))), 111254u) << (abs(u_input.b ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(43204u, u_input.d, 34737u, u_input.d), ~vec4<u32>(25278u, u_input.b, u_input.b, 27718u))) % 32u);
    var var_2 = _wgslsmith_f_op_f32(-709f + _wgslsmith_f_op_f32(-421f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-743f)))));
    return !select(!select(select(var_0.a.zw, vec2<bool>(var_0.a.x, true), var_0.a.x), var_0.a.yx, vec2<bool>(var_0.a.x, true)), !(!select(var_0.a.ww, vec2<bool>(true, var_0.a.x), var_0.a.yw)), vec2<bool>(false, var_0.a.x));
}

fn func_2() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(269f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2336f * 957f)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2369f, -826f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-656f, -1586f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1325f, 1930f))), func_3()))));
    let var_1 = vec4<bool>(true, true, select(all(vec4<bool>(true, true, true, true)), true, false != !(u_input.a.x < 2147483647i)), any(vec4<bool>(any(vec3<bool>(true, true, true)), true, func_3().x, all(vec4<bool>(true, true, true, true)))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(sign(-719f))))), vec2<f32>(1f, _wgslsmith_f_op_f32(-864f + _wgslsmith_f_op_f32(f32(-1f) * -851f))))) * vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(561f + var_0.x), _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(trunc(var_0.x)))))), _wgslsmith_f_op_f32(-161f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(562f * 1242f)))));
    var var_2 = u_input.b;
    var var_3 = ~(~vec3<i32>(firstLeadingBit(u_input.c.x), u_input.c.x | u_input.a.x, u_input.a.x) << ((min(vec3<u32>(16840u, 15067u, u_input.d), countOneBits(vec3<u32>(u_input.b, 341u, 21573u))) >> (firstLeadingBit(select(vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<u32>(23954u, u_input.b, 36311u), var_1.x)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    return var_1.zw;
}

fn func_1(arg_0: u32) -> Struct_3 {
    var var_0 = Struct_2(Struct_1(select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), func_2(), vec2<bool>(true, true)), vec2<bool>(all(vec2<bool>(false, true)), all(vec4<bool>(true, true, false, false))), vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(199f, -1117f), vec2<f32>(213f, 1667f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-232f, -2001f), vec2<f32>(280f, 485f))))))), u_input.c.x), Struct_1(select(func_2(), vec2<bool>(true, select(true, false, true)), arg_0 >= ~15605u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1299f), 653f)), 1i >> (1u % 32u)), !any(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false))), ~u_input.a.x);
    var_0 = Struct_2(Struct_1(!(!var_0.a.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.b.b.x, var_0.b.b.x), var_0.b.b)), _wgslsmith_f_op_vec2_f32(var_0.a.b * vec2<f32>(144f, 1057f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b.b))), -1i), var_0.a, -443f <= var_0.b.b.x, -(~(~1294i)));
    var var_1 = Struct_3(select(!(!vec4<bool>(false, false, false, var_0.c)), !(!select(vec4<bool>(false, false, true, var_0.a.a.x), vec4<bool>(true, var_0.c, true, var_0.b.a.x), true)), var_0.a.a.x), ~u_input.a, abs(abs(~vec4<i32>(var_0.d, -14107i, -7015i, u_input.c.x))));
    let var_2 = Struct_3(vec4<bool>(all(func_2()) || !var_1.a.x, func_2().x, var_0.b.a.x, !var_1.a.x), u_input.c, vec4<i32>(~(var_0.d | 2147483647i), _wgslsmith_mod_i32(var_1.c.x | -2147483647i, u_input.a.x & var_1.b.x), countOneBits(0i), _wgslsmith_div_i32(abs(var_1.c.x), _wgslsmith_sub_i32(var_1.b.x, var_1.b.x))) ^ _wgslsmith_div_vec4_i32(var_1.c, select(_wgslsmith_clamp_vec4_i32(var_1.c, vec4<i32>(u_input.a.x, 46505i, -47949i, 18007i), vec4<i32>(-132i, u_input.c.x, -24268i, var_0.b.c)), ~var_1.c, true)));
    var var_3 = any(vec4<bool>(var_1.a.x, ~(~45747u) != min(arg_0, min(u_input.b, 58615u)), false, var_1.a.x));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~(~u_input.d));
    let var_1 = Struct_2(Struct_1(var_0.a.xx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1289f, -532f), vec2<f32>(2037f, 1276f))), vec2<f32>(121f, 705f), !var_0.a.zx)) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1487f, -1047f), vec2<f32>(444f, -398f)))))), 4035i), Struct_1(vec2<bool>(!(!var_0.a.x), true), vec2<f32>(581f, _wgslsmith_div_f32(1457f, 1091f)), func_1(~13265u).b.x), true, ~u_input.a.x);
    let var_2 = var_1.b.c;
    let var_3 = -61716i;
    var var_4 = var_1.d;
    var var_5 = _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(~firstLeadingBit(vec3<u32>(u_input.b, u_input.b, 4294967295u)), ~reverseBits(vec3<u32>(3414u, u_input.d, 68500u))), vec3<u32>(70442u, _wgslsmith_div_u32(95480u, u_input.b) | _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(u_input.b, u_input.d, u_input.d)), _wgslsmith_div_u32(~98860u, 71653u))), ~vec3<u32>(~4294967295u, u_input.b, u_input.b ^ 35299u));
    let var_6 = _wgslsmith_div_i32(-_wgslsmith_add_i32(-(~var_0.c.x), var_1.d), var_0.c.x);
    var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(select(~vec3<u32>(4294967295u, abs(0u), u_input.d), vec3<u32>(u_input.b >> (~16062u % 32u), u_input.b, select(countOneBits(85007u), 1u, var_0.a.x)), select(vec3<bool>(true, true, var_1.a.a.x & true), func_1(_wgslsmith_div_u32(0u, u_input.b)).a.wyx, var_0.a.wyz)), reverseBits(~vec3<u32>(4294967295u, max(u_input.d, u_input.d), firstLeadingBit(u_input.b))), vec2<f32>(var_1.a.b.x, var_1.a.b.x), 22905u);
}

