struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<f32>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_1(~vec3<u32>(u_input.a, min(global0.x, 1u) ^ ~4294967295u, countOneBits(firstTrailingBit(u_input.d))));
    let var_1 = Struct_2(~(min(_wgslsmith_dot_vec2_u32(vec2<u32>(24851u, var_0.a.x), global0.xx), ~1u) >> (u_input.a % 32u)), Struct_1(var_0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f - 695f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-111f - -354f)), 1615f, 1220f)), ~0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) + _wgslsmith_f_op_f32(-369f - _wgslsmith_f_op_f32(f32(-1f) * -745f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1284f) - _wgslsmith_f_op_f32(trunc(-430f))))));
    let var_2 = vec2<u32>(118638u, reverseBits(~_wgslsmith_div_u32(~17335u, var_0.a.x ^ 0u)));
    var var_3 = _wgslsmith_div_vec2_i32(max(abs(abs(vec2<i32>(-23654i, u_input.b) | vec2<i32>(u_input.b, -21624i))), vec2<i32>(1i, u_input.b)), vec2<i32>(abs(u_input.b), ~(-(i32(-1i) * -2147483647i))));
    let var_4 = Struct_2(var_0.a.x, var_1.b, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_1.c, var_1.c) + vec4<f32>(-336f, 1687f, var_1.c.x, var_1.c.x)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.c.x, 1080f, var_1.e, var_1.c.x)))), var_1.c), global0.x, _wgslsmith_f_op_f32(step(-489f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(2538f)))) * var_1.c.x))));
    return ~(~(~var_0.a));
}

fn func_2() -> bool {
    global0 = firstLeadingBit(countOneBits(reverseBits(func_3())));
    var var_0 = -_wgslsmith_sub_vec4_i32(vec4<i32>(~1i, u_input.b >> (~global0.x % 32u), ~(u_input.b | -1i), ~u_input.b), ~(-reverseBits(vec4<i32>(u_input.b, -1049i, u_input.b, u_input.b))));
    global0 = reverseBits(min(vec3<u32>(~(~global0.x), u_input.d, _wgslsmith_div_u32(global0.x, 1u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 47755u, global0.x), ~(~vec3<u32>(30777u, 0u, 0u)), vec3<u32>(7530u >> (global0.x % 32u), 1u, 0u))));
    let var_1 = Struct_2(34624u, Struct_1(select(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.x, 8829u, u_input.a) & vec3<u32>(global0.x, u_input.a, global0.x), ~vec3<u32>(global0.x, global0.x, 14592u)), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(42049u, 93271u, global0.x)), select(vec3<u32>(u_input.a, 4294967295u, 1u), vec3<u32>(global0.x, global0.x, global0.x), false)), select(true, true, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(671f))), 273f, _wgslsmith_f_op_f32(-1092f * -113f), _wgslsmith_f_op_f32(min(1350f, _wgslsmith_f_op_f32(min(1010f, -1522f))))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(593f, 746f, 199f, -1293f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-393f, 1499f, 220f, 527f))), vec4<f32>(124f, _wgslsmith_f_op_f32(f32(-1f) * -304f), _wgslsmith_div_f32(489f, 616f), _wgslsmith_f_op_f32(abs(401f)))))), 4294967295u, -1000f);
    let var_2 = ~_wgslsmith_div_i32(_wgslsmith_div_i32(abs(2147483647i), var_0.x), min(1i, 15176i)) == u_input.b;
    return !(!any(vec4<bool>(var_2, var_2 | var_2, var_2 || var_2, all(vec2<bool>(var_2, false)))));
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2, arg_3: i32) -> Struct_1 {
    global0 = vec3<u32>(firstLeadingBit(abs(~(global0.x | arg_2.a))), global0.x, ~global0.x);
    global0 = max(abs(select(vec3<u32>(0u, u_input.d, global0.x), vec3<u32>(8670u, u_input.a, arg_1.a), false) & ~vec3<u32>(arg_1.d, arg_2.b.a.x, u_input.c)) >> (min(min(~arg_1.b.a, vec3<u32>(u_input.d, 3791u, u_input.a)), arg_1.b.a) % vec3<u32>(32u)), arg_2.b.a);
    let var_0 = vec2<f32>(-937f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.e), _wgslsmith_f_op_f32(-arg_1.c.x)));
    global0 = vec3<u32>(u_input.d, global0.x, u_input.c);
    let var_1 = !(func_2() & any(vec4<bool>(true, true, true, arg_1.e <= -2224f)));
    return Struct_1(~(~arg_2.b.a));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = 62106u;
    var var_1 = vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_1.a.x, 1u, 60120u ^ u_input.a), vec4<u32>(~global0.x, global0.x, _wgslsmith_clamp_u32(1u, u_input.c, var_0), 1u)), _wgslsmith_dot_vec3_u32(min(arg_1.a, vec3<u32>(0u & u_input.a, _wgslsmith_dot_vec2_u32(global0.yx, arg_1.a.yz), _wgslsmith_clamp_u32(4294967295u, 2424u, u_input.c))), _wgslsmith_mod_vec3_u32(~arg_1.a, ~max(arg_1.a, arg_1.a))), u_input.c >> (1u % 32u), 0u);
    let var_2 = vec2<i32>(~_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1098i, 48595i, 28981i, -11801i), vec4<i32>(u_input.b, -41903i, u_input.b, u_input.b), vec4<i32>(u_input.b, -34865i, -31745i, -81i)), vec4<i32>(u_input.b, u_input.b, 0i, 0i)) | u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.b, 2147483647i), _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(0i, u_input.b), vec2<i32>(u_input.b, -1i)) >> (vec2<u32>(var_0, var_1.x) % vec2<u32>(32u)), -min(vec2<i32>(1i, u_input.b), vec2<i32>(u_input.b, u_input.b)), vec2<i32>(-2147483647i, 1i))));
    global0 = arg_1.a;
    let var_3 = _wgslsmith_f_op_f32(round(1f));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, var_3, -736f), vec3<f32>(var_3, var_3, var_3)), _wgslsmith_div_vec3_f32(vec3<f32>(-462f, var_3, 1000f), vec3<f32>(arg_0.x, arg_0.x, var_3))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(534f, var_3, -288f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, 445f))), ~global0.x == _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a.x, 4294967295u), vec2<u32>(1u, 8748u)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 563f, -1862f) + vec3<f32>(var_3, 647f, -2255f)), vec3<f32>(_wgslsmith_f_op_f32(-var_3), -1125f, _wgslsmith_f_op_f32(abs(-391f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(831f, arg_0.x, var_3), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, arg_0.x)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1196f, arg_0.x, 617f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(892f, -1059f, 414f) - vec3<f32>(802f, 1524f, 1099f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(469f, 1122f, 2423f)))))), !vec3<bool>(true, u_input.b >= u_input.b, all(vec4<bool>(false, true, false, true))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(242f, 1441f)))), func_1(_wgslsmith_div_i32(u_input.b, u_input.b), Struct_2(701u, Struct_1(vec3<u32>(global0.x, u_input.a, global0.x)), vec4<f32>(-583f, 709f, -108f, 752f), global0.x, -2061f), Struct_2(0u, Struct_1(vec3<u32>(global0.x, 0u, 4294967295u)), vec4<f32>(483f, -808f, 1609f, 1726f), 16496u, 1207f), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -50303i, 20562i, u_input.b), vec4<i32>(-14742i, u_input.b, u_input.b, -2147483647i))))))));
    global0 = vec3<u32>(global0.x, 26205u, _wgslsmith_dot_vec2_u32(max(vec2<u32>(global0.x, global0.x) | abs(vec2<u32>(u_input.a, global0.x)), firstTrailingBit(~vec2<u32>(global0.x, u_input.d))), vec2<u32>(u_input.a, ~select(30049u, u_input.c, false))));
    global0 = _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, ~(8787u & global0.x), ~(~u_input.a)), func_3()) & vec3<u32>(countOneBits(u_input.a), _wgslsmith_clamp_u32(firstTrailingBit(1u), select(_wgslsmith_sub_u32(4294967295u, 1u), 94811u, false), _wgslsmith_clamp_u32(u_input.d, min(55350u, 4294967295u), 34224u)), u_input.a);
    let var_1 = vec4<i32>(u_input.b, _wgslsmith_clamp_i32(-_wgslsmith_mod_i32(u_input.b, 26642i), 0i << (_wgslsmith_clamp_u32(u_input.d, 2617u, global0.x) % 32u), -1i), min(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, -5440i)), firstLeadingBit(1i)), i32(-1i) * -1961i) ^ -vec4<i32>(-u_input.b, u_input.b, 1368i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, 1i, u_input.b), vec4<i32>(u_input.b, 2913i, -2147483647i, u_input.b)) << (~global0.x % 32u));
    var var_2 = min(-var_1.xx, -vec2<i32>(_wgslsmith_dot_vec4_i32(-var_1, var_1 ^ vec4<i32>(var_1.x, var_1.x, u_input.b, var_1.x)), var_1.x));
    var var_3 = ((~(~vec4<u32>(global0.x, 23980u, 4294967295u, 1u)) | ~firstLeadingBit(vec4<u32>(global0.x, 26838u, global0.x, u_input.c))) & vec4<u32>(u_input.d, u_input.c, ~4294967295u, 0u)) << (max(~vec4<u32>(global0.x & 0u, ~10374u, 1u, reverseBits(18710u)), vec4<u32>(min(~u_input.c, max(27362u, 3199u)), min(global0.x, 0u) >> (~4294967295u % 32u), _wgslsmith_mod_u32(0u, u_input.d) << ((global0.x ^ u_input.c) % 32u), _wgslsmith_mod_u32(max(1u, 26202u), reverseBits(u_input.a)))) % vec4<u32>(32u));
    let var_4 = func_1(11284i, Struct_2(13777u, func_1(u_input.b, Struct_2(_wgslsmith_clamp_u32(4294967295u, 0u, 7808u), func_1(0i, Struct_2(u_input.d, Struct_1(var_3.yxw), vec4<f32>(var_0.x, 2046f, 926f, -598f), 4294967295u, 166f), Struct_2(var_3.x, Struct_1(vec3<u32>(u_input.a, u_input.c, 4294967295u)), vec4<f32>(var_0.x, 679f, var_0.x, 258f), var_3.x, -806f), 2147483647i), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, -812f, 138f, var_0.x))), ~20435u, var_0.x), Struct_2(abs(u_input.d), Struct_1(var_3.yxz), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, 2816f, -1458f, -748f))), u_input.a, _wgslsmith_f_op_vec3_f32(func_4(vec2<f32>(1000f, var_0.x), Struct_1(var_3.wyw))).x), -60696i), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -1146f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -696f, var_0.x) - vec4<f32>(-1000f, var_0.x, var_0.x, 1383f))), vec4<f32>(var_0.x, 446f, 390f, var_0.x)), ~countOneBits(func_3().x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -151f))) * var_0.x)), Struct_2(28520u, Struct_1(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_3.x, var_3.x, 4294967295u), var_3.wxz)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-340f, 1861f, var_0.x, -937f) + vec4<f32>(-1134f, -1000f, var_0.x, 1765f)))), countOneBits(~var_3.x), var_0.x), u_input.b);
    let var_5 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(25626u, vec3<u32>(firstLeadingBit(~(~var_4.a.x)), _wgslsmith_add_u32(4294967295u, u_input.a) << (_wgslsmith_mult_u32(1u, ~u_input.a) % 32u), _wgslsmith_div_u32(20905u, 1u)), -vec3<i32>(i32(-1i) * -15534i, var_1.x, var_2.x & -36570i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-415f, var_0.x, var_5)))))));
}

