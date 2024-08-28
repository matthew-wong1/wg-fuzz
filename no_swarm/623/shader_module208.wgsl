struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<i32>,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<i32>) -> u32 {
    var var_0 = Struct_3(Struct_1(false, 19628u, ~arg_0 ^ _wgslsmith_sub_vec3_i32(~arg_0, arg_0), !vec3<bool>(all(vec2<bool>(true, false)), true, true), true), vec4<i32>(48907i, 39718i, min(-select(u_input.d.x, arg_0.x, true), 0i), u_input.d.x));
    var_0 = Struct_3(var_0.a, abs(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.x, 21357i, -2270i, u_input.c), var_0.b), -(i32(-1i) * -34161i), 52847i, ~u_input.a.x)));
    var_0 = Struct_3(Struct_1(true, firstTrailingBit(firstTrailingBit(u_input.b)), -min(vec3<i32>(0i, 1i, arg_0.x), u_input.a), var_0.a.d, false), vec4<i32>(-1i, 2147483647i, _wgslsmith_add_i32(firstTrailingBit(i32(-1i) * -74748i), -2147483647i), reverseBits(u_input.d.x & 1i)));
    var var_1 = Struct_3(Struct_1(true, u_input.b, firstLeadingBit(u_input.a) & ~vec3<i32>(1i, -12965i, 1i), select(vec3<bool>(true, all(vec2<bool>(false, var_0.a.a)), var_0.a.e), select(vec3<bool>(var_0.a.a, var_0.a.e, true), vec3<bool>(var_0.a.d.x, var_0.a.a, var_0.a.e), false), false), select(true, var_0.a.d.x, var_0.a.a | any(var_0.a.d))), ~var_0.b);
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(383f, _wgslsmith_f_op_f32(-2097f - 554f), -1000f) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -510f, -1000f)))))))));
    return 1u;
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_1(true, _wgslsmith_div_u32(1u & (func_3(vec3<i32>(1i, u_input.c, u_input.c)) ^ (u_input.b >> (u_input.b % 32u))), ~1u), ~u_input.a, vec3<bool>(select(true, ~u_input.b <= ~4294967295u, false), true, true), true);
    return select(vec4<bool>(true, var_0.d.x, false, var_0.e), select(!vec4<bool>(var_0.a, true, var_0.e, select(false, var_0.e, false)), select(vec4<bool>(true, true, true, true), !vec4<bool>(true, var_0.a, true, var_0.a), select(select(vec4<bool>(var_0.d.x, var_0.d.x, false, false), vec4<bool>(false, var_0.d.x, false, false), var_0.d.x), select(vec4<bool>(true, true, true, var_0.e), vec4<bool>(true, var_0.a, var_0.e, true), vec4<bool>(false, var_0.a, false, var_0.d.x)), true)), !(!select(vec4<bool>(var_0.d.x, false, var_0.e, false), vec4<bool>(var_0.a, true, true, var_0.a), vec4<bool>(false, var_0.d.x, true, var_0.a)))), true);
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: vec2<u32>) -> f32 {
    var var_0 = Struct_1((-(~u_input.a.x) | -43875i) > -7477i, _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(1u, firstLeadingBit(0u))), firstTrailingBit(_wgslsmith_div_vec2_u32(arg_2, _wgslsmith_add_vec2_u32(vec2<u32>(7181u, u_input.b), vec2<u32>(arg_2.x, arg_2.x))))), ~u_input.a, select(arg_1, !vec3<bool>(arg_1.x, true, arg_1.x || true), (!arg_1.x & arg_1.x) | select(any(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), arg_1.x, arg_1.x)), true);
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-1613f - _wgslsmith_f_op_f32(max(arg_0, 1657f))) <= -1654f, countOneBits(_wgslsmith_mult_u32(0u, _wgslsmith_mod_u32(1u, arg_2.x))), ~u_input.a, vec3<bool>(arg_1.x, func_2().x, all(vec4<bool>(true, false, var_0.a, true))), any(arg_1)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, 41819i, 2147483647i, var_0.c.x) | vec4<i32>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x), ~max(vec4<i32>(2147483647i, -1i, var_0.c.x, 0i), vec4<i32>(u_input.d.x, var_0.c.x, var_0.c.x, -71426i))) | vec4<i32>(12883i, firstTrailingBit(select(-61233i, var_0.c.x, true)), 0i, -2147483647i));
    var_0 = Struct_1(!(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0))) >= _wgslsmith_f_op_f32(-arg_0)), abs(arg_2.x), vec3<i32>(-(~var_0.c.x), max(var_0.c.x, ~var_1.a.c.x), _wgslsmith_add_i32(var_1.a.c.x, _wgslsmith_sub_i32(var_1.b.x, -12883i) >> (arg_2.x % 32u))), var_0.d, !(_wgslsmith_f_op_f32(select(306f, _wgslsmith_f_op_f32(arg_0 - 885f), !var_0.a)) != _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(2210f, 945f)), arg_0))));
    let var_2 = _wgslsmith_dot_vec2_i32(u_input.a.xz, -reverseBits(u_input.a.yx << (vec2<u32>(4294967295u, var_1.a.b) % vec2<u32>(32u))));
    var var_3 = vec4<f32>(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(145f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-239f * 974f))))), arg_0, 1005f);
    return var_3.x;
}

fn func_1() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-333f)), _wgslsmith_f_op_f32(ceil(818f))), _wgslsmith_f_op_f32(f32(-1f) * -1802f)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1225f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(467f, 336f))) + 297f) * 1f);
    var var_1 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1347f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-733f, 439f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1319f - -957f) + _wgslsmith_f_op_f32(-708f - 562f)))), vec3<bool>(true, false, any(func_2()) | select(any(vec4<bool>(false, false, true, true)), all(vec2<bool>(false, true)), all(vec2<bool>(false, true)))), ~(~abs(~vec2<u32>(u_input.b, 102161u)))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -491f), _wgslsmith_f_op_f32(select(1176f, _wgslsmith_f_op_f32(f32(-1f) * -1984f), true)), func_2().x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(564f - 1124f) - -1000f) + -653f)));
    var_1 = _wgslsmith_f_op_f32(-841f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1281f, -1540f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(142f, -174f, true)), _wgslsmith_f_op_f32(floor(-1766f))) + 1f)));
    return vec2<u32>(45887u, abs(~_wgslsmith_sub_u32(~0u, abs(u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(min(~vec2<u32>(0u, 45602u), ~vec2<u32>(u_input.b, 16685u)) >> (~select(vec2<u32>(1304u, 37396u), vec2<u32>(4294967295u, 0u), false) % vec2<u32>(32u)), vec2<u32>(u_input.b, 1u)), firstLeadingBit(countOneBits(firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 26454u), vec2<u32>(u_input.b, 55456u), vec2<u32>(55314u, 72183u))))), ~(~(~(~vec2<u32>(1u, u_input.b)))));
    var_0 = vec2<u32>(~u_input.b, 63751u) | _wgslsmith_div_vec2_u32(firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(17950u, 25030u), vec2<u32>(u_input.b, 23524u)) & ~vec2<u32>(var_0.x, var_0.x)), ~func_1());
    var var_1 = true;
    var var_2 = 100f;
    var var_3 = Struct_1(true || (all(vec2<bool>(true, false)) && false), _wgslsmith_dot_vec4_u32(select(vec4<u32>(firstTrailingBit(u_input.b), 1u, u_input.b, func_1().x), _wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.b, u_input.b, 1u, var_0.x), vec4<u32>(1u, u_input.b, var_0.x, 4294967295u), vec4<bool>(true, false, true, false)), vec4<u32>(var_0.x, 1u, u_input.b, u_input.b)), false), _wgslsmith_sub_vec4_u32(~select(vec4<u32>(u_input.b, var_0.x, 31514u, 102698u), vec4<u32>(u_input.b, u_input.b, u_input.b, 5396u), vec4<bool>(true, true, false, false)), ~(vec4<u32>(17790u, 62599u, u_input.b, 1u) | vec4<u32>(4294967295u, 4294967295u, 4294967295u, var_0.x)))), vec3<i32>(1i, -8988i, u_input.c), !(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), all(!vec4<bool>(true, true, false, any(vec3<bool>(false, true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(1754f, _wgslsmith_mult_u32(~(~4294967295u << (~var_3.b % 32u)), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.b, var_0.x, var_0.x)) & (vec3<u32>(1u, var_0.x, var_3.b) >> (vec3<u32>(u_input.b, 4294967295u, 1u) % vec3<u32>(32u))), vec3<u32>(u_input.b, 4294967295u, u_input.b))), vec2<f32>(676f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-406f, -2192f, true)) + _wgslsmith_f_op_f32(1549f * 591f)), -1212f)), _wgslsmith_f_op_f32(-1205f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -412f))))), abs(vec3<i32>(i32(-1i) * -6676i, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(var_3.c.x, -3736i, var_3.c.x)), var_3.c), -countOneBits(var_3.c.x))));
}

