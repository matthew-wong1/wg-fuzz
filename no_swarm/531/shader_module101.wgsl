struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec3<bool>) -> vec2<bool> {
    let var_0 = -2285f;
    let var_1 = Struct_1(vec3<bool>(arg_0.x, true, true), -vec3<i32>(8044i, u_input.c >> (u_input.b.x % 32u), ~_wgslsmith_add_i32(u_input.c, u_input.d.x)), u_input.e);
    return select(vec2<bool>(false, all(!var_1.a.xx)), vec2<bool>(arg_0.x, arg_0.x), !vec2<bool>(!var_1.a.x && false, true));
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = min(-2147483647i, arg_0.b.x) >> (~arg_0.c.x % 32u);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(432f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1175f - 486f)) - _wgslsmith_div_f32(134f, _wgslsmith_f_op_f32(step(-1688f, -433f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1419f), -1769f)));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-170f * -1434f) - -805f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-914f, 672f))))), -937f);
    let var_2 = ~_wgslsmith_clamp_vec4_i32(reverseBits(countOneBits(~vec4<i32>(-27410i, -57607i, -20467i, 34074i))), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(arg_0.b, arg_0.b), -u_input.c, -arg_0.b.x, ~arg_0.b.x), -vec4<i32>(172i, -34633i, arg_0.b.x, 0i)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x), select(vec2<i32>(arg_0.b.x, u_input.d.x), vec2<i32>(arg_0.b.x, arg_0.b.x), vec2<bool>(true, arg_0.a.x))), 0i, 2147483647i, 89666i));
    var var_3 = vec4<bool>(arg_0.a.x, false, 12053u >= arg_0.c.x, any(arg_0.a.xy));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -935f), _wgslsmith_f_op_f32(sign(-457f)), 1507f, 1f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(476f, -326f, 263f, -803f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-211f, 1429f, 425f, -826f))), vec4<f32>(-213f, 1019f, -380f, -1855f))), !vec4<bool>(arg_0.a.x, var_3.x, true, arg_0.a.x))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(-531f * 2207f), _wgslsmith_div_f32(432f, -157f), _wgslsmith_f_op_f32(1343f + 1947f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, 1f, 1f, 1f))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-194f, -465f, -2020f, -411f)))))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<f32>) -> f32 {
    var var_0 = firstLeadingBit(min(min(_wgslsmith_sub_i32(u_input.d.x, u_input.d.x), u_input.c ^ u_input.c), abs(_wgslsmith_mod_i32(56856i, u_input.c))) & ~1i);
    let var_1 = -u_input.c;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1205f + arg_1.x)) - arg_1.x)));
    var var_3 = select(~(~firstTrailingBit(vec2<i32>(-2147483647i, u_input.c))), _wgslsmith_sub_vec2_i32(firstTrailingBit(u_input.d), ~u_input.d), arg_0.x | any(vec4<bool>(all(vec3<bool>(arg_0.x, arg_0.x, true)), any(vec4<bool>(arg_0.x, false, false, true)), arg_0.x, false && arg_0.x)));
    var var_4 = _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 0u), (min(vec2<u32>(24252u, 1u), vec2<u32>(0u, 4294967295u) | u_input.b) << (countOneBits(_wgslsmith_clamp_vec2_u32(u_input.a, u_input.b, vec2<u32>(57143u, u_input.e.x))) % vec2<u32>(32u))) ^ (vec2<u32>(countOneBits(56352u), firstTrailingBit(u_input.a.x)) ^ vec2<u32>(~0u, ~38321u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) - _wgslsmith_f_op_f32(1108f + 814f))), var_2)) - _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(arg_1.x - var_2)));
}

fn func_1() -> f32 {
    let var_0 = vec2<u32>(14437u, 1u);
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c ^ -35387i, -11318i), vec2<i32>(i32(-1i) * -(i32(-1i) * -1i), -_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-35371i, 2147483647i, u_input.d.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, u_input.c, -5111i), vec3<i32>(u_input.d.x, 2147483647i, u_input.c)))));
    let var_2 = Struct_1(vec3<bool>(true, false, true & any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false))), vec3<i32>(-1i) * -(~vec3<i32>(-1i, -2147483647i, u_input.c)), vec4<u32>(1u, ~abs(~u_input.b.x), u_input.a.x, _wgslsmith_div_u32(~_wgslsmith_div_u32(var_0.x, 11044u), 67562u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(239f * _wgslsmith_f_op_f32(func_4(func_2(vec3<bool>(var_2.a.x, false, true)), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(var_2.a, var_2.b, var_2.c))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<bool>(false, false, true), firstLeadingBit(abs(firstLeadingBit(vec3<i32>(1i, -52006i, 2147483647i) >> (vec3<u32>(u_input.a.x, u_input.e.x, 0u) % vec3<u32>(32u))))), ~(~(u_input.e ^ (u_input.e << (vec4<u32>(u_input.e.x, 13243u, u_input.b.x, u_input.a.x) % vec4<u32>(32u))))));
    let var_1 = vec2<i32>(_wgslsmith_dot_vec2_i32(-select(vec2<i32>(u_input.c, var_0.b.x), vec2<i32>(-2907i, u_input.c), vec2<bool>(true, true)), ~(~var_0.b.zx)), u_input.c);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(150f, _wgslsmith_f_op_f32(f32(-1f) * -991f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1326f * 644f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(2341f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(534f)) + _wgslsmith_f_op_f32(-752f * 1414f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-605f)))))));
    var var_3 = var_0.c.x;
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1615f))) + -1458f)), _wgslsmith_f_op_f32(f32(-1f) * -559f), -1000f, var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(var_2.x)))), vec4<i32>(0i, _wgslsmith_mult_i32(abs(abs(var_0.b.x)), u_input.d.x), _wgslsmith_mult_i32(18163i, -(~31330i)), countOneBits(~(~2147483647i))), vec2<u32>(var_0.c.x, ~var_0.c.x));
}

