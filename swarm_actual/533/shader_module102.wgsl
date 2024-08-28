struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> f32 {
    var var_0 = Struct_1(arg_1.c.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.d.b + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.b.x, arg_1.b, arg_1.d.b.x, 825f))))));
    var_0 = Struct_1(false, var_0.b);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.x + 340f), arg_1.d.b.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-675f)), _wgslsmith_f_op_f32(trunc(1827f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(213f, 285f))))));
}

fn func_3() -> u32 {
    var var_0 = -1i;
    let var_1 = ~_wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, min(7447i, u_input.d.x), 4997i | u_input.a.x), vec3<i32>(2147483647i << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 13499u, 1u), vec3<u32>(u_input.b, 0u, u_input.b)) % 32u), ~_wgslsmith_mult_i32(u_input.d.x, u_input.a.x), -u_input.a.x));
    var_0 = 36176i;
    let var_2 = Struct_3(Struct_2(vec3<u32>(9203u, 4294967295u, _wgslsmith_clamp_u32(~u_input.b, ~u_input.b, u_input.c & u_input.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-235f + _wgslsmith_div_f32(-963f, -294f)) + 763f), Struct_1(any(vec2<bool>(false, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-2068f, 435f, -481f, 159f))))), Struct_1(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(680f, -687f, -228f, -1385f))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1427f, -1000f, -1044f, 793f))))), Struct_2(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, max(u_input.b, u_input.c), ~1u), vec3<u32>(~5578u, min(1u, u_input.b), min(1u, u_input.c)), select(vec3<u32>(u_input.c, 89821u, u_input.b), vec3<u32>(16110u, u_input.c, u_input.c), vec3<bool>(true, false, true)) | vec3<u32>(u_input.c, 55071u, 0u)), _wgslsmith_f_op_f32(min(-1606f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-145f * 1753f)))), Struct_1(any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), true)), vec4<f32>(1f, 1f, 1f, 1f)), Struct_1(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-570f, -1363f, 1337f, -383f), vec4<f32>(-504f, 2489f, 302f, -128f), vec4<bool>(false, false, true, false))))), vec4<f32>(1f, 1f, 1f, 1f)), Struct_2(firstLeadingBit(abs(vec3<u32>(1u, 0u, 4294967295u))), -1010f, Struct_1(!any(vec2<bool>(true, false)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -138f), 331f, _wgslsmith_f_op_f32(f32(-1f) * -547f), -1485f)), Struct_1(all(vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-404f, -1000f, 1175f, -713f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(153f, 380f, 527f, -301f)), vec4<f32>(-236f, 183f, -219f, -870f), true)))));
    var_0 = _wgslsmith_mod_i32(var_1, max(~var_1 << (var_2.a.a.x % 32u), -38903i));
    return 1u;
}

fn func_1(arg_0: u32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -415f))) + _wgslsmith_f_op_f32(1664f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(u_input.a.x, Struct_2(vec3<u32>(arg_0, arg_0, 30535u), -1000f, Struct_1(true, vec4<f32>(-684f, -2466f, 110f, -337f)), Struct_1(false, vec4<f32>(559f, 1845f, 771f, 1000f)), vec4<f32>(1627f, -596f, 518f, -625f)))), _wgslsmith_f_op_f32(f32(-1f) * -1061f)))))));
    let var_1 = func_3();
    let var_2 = ~(~max(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(36220u, u_input.b, 0u, var_1), vec4<u32>(var_1, 30701u, 0u, u_input.c))), abs(select(vec4<u32>(1u, arg_0, var_1, 22097u), vec4<u32>(var_1, var_1, 18972u, 47054u), true))));
    var var_3 = all(!(!vec3<bool>(true, any(vec3<bool>(true, false, false)), true)));
    let var_4 = Struct_3(Struct_2(abs(firstTrailingBit(vec3<u32>(4294967295u, var_2.x, var_2.x))) | ~vec3<u32>(var_1, 12248u, 15372u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(526f * -1077f) + var_0)), Struct_1(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-209f, 1057f, var_0, -588f))))), Struct_1(true, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(951f, var_0, 1032f, var_0), vec4<f32>(var_0, var_0, -727f, 850f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -1000f, var_0, 1000f)) + vec4<f32>(var_0, -298f, var_0, 1876f)))), Struct_2(~(vec3<u32>(27650u, 4294967295u, 1u) >> (var_2.yzx % vec3<u32>(32u))), 971f, Struct_1(any(vec2<bool>(true, false)), vec4<f32>(_wgslsmith_f_op_f32(1013f * -396f), -491f, _wgslsmith_f_op_f32(select(-750f, var_0, true)), var_0)), Struct_1(select(true, true, any(vec3<bool>(false, false, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -706f, var_0, -473f) + vec4<f32>(-1179f, var_0, var_0, 589f)) - _wgslsmith_div_vec4_f32(vec4<f32>(var_0, var_0, var_0, 303f), vec4<f32>(1272f, 281f, 611f, -783f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -2546f, var_0, -350f) * vec4<f32>(979f, 264f, var_0, 326f))))), Struct_2(vec3<u32>(~_wgslsmith_add_u32(arg_0, 57370u), ~_wgslsmith_clamp_u32(55521u, 27604u, 30320u), var_2.x), -230f, Struct_1(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1394f, var_0, var_0, -1586f), vec4<f32>(-412f, -1535f, var_0, -1419f), vec4<bool>(true, true, false, true))))), Struct_1(false, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1636f, var_0, var_0, var_0), vec4<f32>(var_0, var_0, 158f, -144f), vec4<bool>(true, true, true, false))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1496f, -435f, -1000f, -830f) - vec4<f32>(var_0, 136f, -237f, -121f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-763f, 605f, _wgslsmith_f_op_f32(var_0 - var_0), _wgslsmith_f_op_f32(-138f - var_0)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1460f), -773f, _wgslsmith_f_op_f32(-var_0), -691f), false))));
    return vec4<bool>(1u != ~(~u_input.b), any(!(!vec4<bool>(true, var_4.c.c.a, var_4.a.c.a, var_4.a.d.a))) | (985f >= var_4.a.c.b.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1743f, _wgslsmith_f_op_f32(var_4.b.d.b.x + -972f))) > var_0, true && var_4.b.d.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(select(select(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, true, true), firstLeadingBit(u_input.c) != ~3075u), func_1(firstTrailingBit(~110892u)), true));
    var var_1 = u_input.d;
    var_0 = true;
    var_0 = true;
    let var_2 = Struct_1(abs(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(u_input.b, 0u)), vec2<u32>(u_input.c, 0u) | vec2<u32>(13315u, 33031u))) == ~4294967295u, vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-192f * -161f)))), _wgslsmith_f_op_f32(step(-578f, -303f)), _wgslsmith_f_op_f32(max(625f, 1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -481f)))));
    let var_3 = var_2.b.x;
    var_0 = !var_2.a;
    var_1 = max(~_wgslsmith_mod_vec4_i32(abs(vec4<i32>(-109979i, 18737i, var_1.x, 17173i)), select(u_input.d, _wgslsmith_mult_vec4_i32(u_input.d, u_input.d), !var_2.a)), max(-u_input.d, u_input.d));
    let var_4 = u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(-861f, select(_wgslsmith_dot_vec3_u32(vec3<u32>(3401u, u_input.c, 4294967295u), ~vec3<u32>(u_input.b, u_input.b, u_input.b)) & 4294967295u, u_input.b, true), max(vec4<i32>(firstLeadingBit(var_1.x) & (var_1.x << (19605u % 32u)), var_1.x, ~_wgslsmith_mod_i32(-5072i, u_input.a.x), min(-37322i, ~var_1.x)), u_input.d), _wgslsmith_f_op_f32(-1436f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1324f, 356f)) - -1631f)))));
}

