struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1018f;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>) -> vec2<u32> {
    let var_0 = vec2<f32>(1908f, 1803f);
    var var_1 = ~(~reverseBits(~vec2<u32>(1u, 36285u)) ^ ~(abs(vec2<u32>(88775u, 25184u)) & select(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 12587u), false)));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - -490f), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.x, var_0.x))), var_1.x <= 4294967295u)));
    var_1 = _wgslsmith_mult_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(~var_1.x, 18436u & var_1.x), vec2<u32>(25322u, min(var_1.x, var_1.x))), _wgslsmith_add_vec2_u32(vec2<u32>(select(4294967295u << (var_1.x % 32u), 58551u, false), _wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, var_1.x), var_1.x >> (var_1.x % 32u))), firstLeadingBit(abs(vec2<u32>(36300u, 58345u)))));
    var var_2 = true;
    return vec2<u32>(abs(var_1.x), var_1.x);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> f32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1243f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - -1446f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(652f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1067f)))));
    var var_0 = Struct_1(arg_1.a, _wgslsmith_mult_vec2_u32(~vec2<u32>(1u, 13061u), arg_3.b), u_input.c);
    var_0 = arg_1;
    global0 = _wgslsmith_f_op_f32(-410f - _wgslsmith_f_op_f32(trunc(642f)));
    var var_1 = arg_3;
    return _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -172f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1211f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(805f))))));
}

fn func_2() -> vec4<i32> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_div_i32(u_input.b.x, 1i) << (1u % 32u), Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 1i, u_input.a, -2795i), vec4<i32>(u_input.c, 2147483647i, 0i, u_input.b.x)), firstTrailingBit(vec2<u32>(16160u, 83252u)), 17119i), i32(-1i) * -22914i, Struct_1(vec4<i32>(u_input.a, -1i, u_input.a, -11740i) >> (vec4<u32>(54205u, 0u, 34291u, 23931u) % vec4<u32>(32u)), func_3(vec4<i32>(1i, u_input.c, 24147i, -99466i)), ~u_input.b.x)))));
    global0 = _wgslsmith_f_op_f32(-1f);
    var var_0 = select(vec2<bool>(true, true), !select(!select(vec2<bool>(false, false), vec2<bool>(false, false), false), !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), true || all(vec2<bool>(true, false))), !(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), true)));
    var var_1 = ~(abs(-vec3<i32>(8920i, u_input.b.x, -33814i)) & (abs(vec3<i32>(u_input.c, -1i, -26750i)) ^ (vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x) & vec3<i32>(1i, u_input.c, -35778i)))) ^ countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(abs(-36656i), u_input.b.x, u_input.a), abs(vec3<i32>(-19881i, u_input.b.x, -2147483647i) | vec3<i32>(u_input.b.x, 19767i, u_input.c))));
    var_0 = vec2<bool>(!var_0.x | true, true & var_0.x);
    return (vec4<i32>(-1i) * -select(~vec4<i32>(u_input.a, var_1.x, -21348i, 17954i), vec4<i32>(var_1.x, u_input.b.x, u_input.a, var_1.x) >> (vec4<u32>(5013u, 4294967295u, 4294967295u, 1u) % vec4<u32>(32u)), !var_0.x)) << (~vec4<u32>(~41120u, ~10291u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(4294967295u, 23579u), 3634u), ~abs(5819u)) % vec4<u32>(32u));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<u32> {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1917f + _wgslsmith_f_op_f32(382f - 1195f)) * _wgslsmith_f_op_f32(1201f - _wgslsmith_f_op_f32(-473f - 1122f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -597f) - _wgslsmith_f_op_f32(min(1205f, 1313f))))) * 747f);
    var var_0 = Struct_1(vec4<i32>(~(-_wgslsmith_div_i32(arg_1.c, arg_2.a.x)), ~2964i, 544i, ~(abs(-2147483647i) | _wgslsmith_clamp_i32(arg_2.a.x, -17023i, arg_0.x))), _wgslsmith_mult_vec2_u32(~_wgslsmith_mult_vec2_u32(arg_1.b, arg_1.b), min(arg_1.b ^ arg_2.b, abs(arg_2.b))) >> (~(firstTrailingBit(vec2<u32>(arg_1.b.x, arg_1.b.x)) ^ reverseBits(vec2<u32>(23473u, arg_1.b.x))) % vec2<u32>(32u)), func_2().x);
    var var_1 = Struct_1(arg_0, ~vec2<u32>(firstLeadingBit(~arg_2.b.x), firstTrailingBit(~1u)), _wgslsmith_div_i32(select(i32(-1i) * -18217i, 8283i, true), _wgslsmith_mult_i32(var_0.a.x, u_input.b.x) << (~var_0.b.x % 32u)) << (~_wgslsmith_mult_u32(1u, 1u) % 32u));
    let var_2 = Struct_1(abs(var_0.a), _wgslsmith_sub_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 30671u), _wgslsmith_mult_vec2_u32(vec2<u32>(39360u, 73405u), arg_2.b)), var_0.b), arg_0.x);
    var_0 = Struct_1(arg_1.a, firstLeadingBit(abs(vec2<u32>(_wgslsmith_clamp_u32(1u, arg_1.b.x, var_0.b.x), var_2.b.x))), 0i);
    return _wgslsmith_div_vec4_u32(vec4<u32>(select(96516u, 4294967295u, all(vec2<bool>(false, false))), var_2.b.x, reverseBits(countOneBits(32099u)), var_0.b.x | 1u), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(var_0.b.x, arg_1.b.x, var_1.b.x, 0u), vec4<u32>(36916u, 4294967295u, var_2.b.x, 59461u) ^ vec4<u32>(1u, var_0.b.x, var_2.b.x, 6470u)), select(select(vec4<u32>(0u, var_2.b.x, arg_2.b.x, var_1.b.x), vec4<u32>(19701u, 4294967295u, arg_2.b.x, 4294967295u), vec4<bool>(false, false, true, false)), abs(vec4<u32>(56038u, 1u, var_0.b.x, arg_2.b.x)), vec4<bool>(true, false, false, true)))) | firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(countOneBits(33573u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.x, 14615u, arg_2.b.x, arg_1.b.x), vec4<u32>(var_1.b.x, 72916u, var_0.b.x, var_0.b.x)), var_0.b.x | 1u, ~arg_2.b.x), vec4<u32>(_wgslsmith_sub_u32(4294967295u, var_2.b.x), 25557u, select(var_0.b.x, 4294967295u, false), var_2.b.x)));
}

fn func_1() -> vec2<i32> {
    var var_0 = ~(-(~vec3<i32>(u_input.a, 2147483647i, 2147483647i) << (~vec3<u32>(8941u, 7332u, 44100u) % vec3<u32>(32u))));
    var var_1 = var_0.x <= (abs(max(_wgslsmith_clamp_i32(var_0.x, 2147483647i, 0i), i32(-1i) * -2091i)) >> (~47781u % 32u));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-350f * _wgslsmith_f_op_f32(f32(-1f) * -1861f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -269f), -1277f)))) <= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1429f, -1238f)) + -1881f))));
    var var_3 = 60994u;
    let var_4 = func_5(~(~(func_2() | (vec4<i32>(-33124i, 2147483647i, -14630i, -40769i) & vec4<i32>(-1i, -2204i, var_0.x, -25992i)))), Struct_1(abs(_wgslsmith_sub_vec4_i32(func_2(), countOneBits(vec4<i32>(u_input.a, -28370i, 0i, 32165i)))), vec2<u32>(0u, 1u), -25844i), Struct_1(firstTrailingBit(_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.c, 2147483647i, u_input.b.x, var_0.x), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, 0i, var_0.x, 0i), vec4<i32>(1i, -36802i, var_0.x, -2147483647i)))), vec2<u32>(~1u, 1u), u_input.b.x));
    return ~(-vec2<i32>(~u_input.c, -u_input.a) & firstLeadingBit(var_0.xz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = _wgslsmith_add_u32(reverseBits(firstLeadingBit(_wgslsmith_mod_u32(1u, ~46167u))), ~(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 50488u), vec2<u32>(54202u, 14711u))) << (~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 19227u), vec3<u32>(53052u, 4294967295u, 27666u)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b | u_input.b, var_1, abs(vec3<u32>(1u, ~var_1, 31937u)), -1000f, -2147483647i);
}

