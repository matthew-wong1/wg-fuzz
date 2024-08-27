struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_0.b))))), 611f) + 391f);
    global0 = -116f;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(arg_0.b)))) * arg_0.b);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2089f)));
    var var_0 = Struct_1(max(u_input.a, countOneBits(-19901i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(661f, arg_0.b, true)) - _wgslsmith_div_f32(-714f, arg_1.x)) + _wgslsmith_f_op_f32(f32(-1f) * -796f)) - arg_1.x), abs(arg_0.d), 1i, ~(-(vec4<i32>(-1i) * -vec4<i32>(5513i, arg_0.a, u_input.c, 10574i))));
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> f32 {
    global0 = arg_0.b;
    global0 = _wgslsmith_f_op_f32(exp2(arg_0.b));
    var var_0 = func_2(arg_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.b * arg_0.b))))));
    global0 = 1169f;
    let var_1 = var_0.e;
    return _wgslsmith_f_op_f32(exp2(var_0.b));
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(func_2(Struct_1(u_input.d, -185f, 14373i, arg_0.x, vec4<i32>(u_input.c, arg_0.x, u_input.b.x, -35520i)), vec2<f32>(263f, -386f)), reverseBits(vec2<u32>(1u, 1u))))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(120f)))))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-345f))))), -609f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-955f)))), _wgslsmith_f_op_f32(-357f * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(418f * 749f), -606f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-670f + 862f))), true))));
    var var_2 = ~(~1u);
    let var_3 = select(select(vec2<bool>(true, true), vec2<bool>(false, true), all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true))), !(!select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, false), any(vec3<bool>(false, true, true)))), true);
    var var_4 = select(!select(!(!vec3<bool>(false, var_3.x, var_3.x)), select(select(vec3<bool>(false, var_3.x, true), vec3<bool>(true, var_3.x, var_3.x), vec3<bool>(true, var_3.x, var_3.x)), vec3<bool>(var_3.x, false, var_3.x), u_input.a != u_input.a), true | any(vec4<bool>(false, var_3.x, true, false))), select(!vec3<bool>(true, !var_3.x, all(var_3)), !vec3<bool>(false, !var_3.x, true), var_3.x), vec3<bool>(!(!(u_input.c >= u_input.a)), true, var_3.x));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(abs(4294967295u), 41458u, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 58073u, 69189u, 35776u), vec4<u32>(0u, 15830u, 1u, 34419u))), abs(~474u)), min(~min(_wgslsmith_clamp_vec4_u32(vec4<u32>(34005u, 26951u, 4294967295u, 0u), vec4<u32>(39448u, 1u, 51657u, 9828u), vec4<u32>(4294967295u, 8440u, 62665u, 809u)), vec4<u32>(27366u, 4294967295u, 20239u, 10877u)), vec4<u32>(1u, 1u, 1u, 1u) | _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(4294967295u, 43177u, 26080u, 21886u), vec4<u32>(1u, 1u, 1u, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(_wgslsmith_mult_u32(~(~(~0u)), abs(~func_1(vec3<i32>(-6332i, u_input.c, u_input.a)))), ~_wgslsmith_add_u32(~(~1u), ~(~50719u)), firstLeadingBit(~(~0u)), ~0u);
    let var_1 = func_2(Struct_1(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, -9157i, -20193i, u_input.a), vec4<i32>(-2147483647i, 1i, u_input.c, -1i)), 1i) << (12131u % 32u), 146f, u_input.a, 1i, vec4<i32>(~_wgslsmith_sub_i32(u_input.b.x, 2147483647i), ~0i, u_input.c ^ (-2147483647i | u_input.b.x), ~(i32(-1i) * -32075i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 398f), vec2<f32>(-330f, 1397f), vec2<bool>(false, false)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-952f, -823f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-768f, -725f))))));
    let var_2 = func_2(func_2(func_2(var_1, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.b, var_1.b), vec2<f32>(var_1.b, -1252f)) + vec2<f32>(var_1.b, var_1.b))), vec2<f32>(623f, _wgslsmith_f_op_f32(f32(-1f) * -1349f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(634f, -3290f) + vec2<f32>(902f, 186f)))))));
    let var_3 = Struct_1(-(~2147483647i), _wgslsmith_div_f32(var_1.b, 134f), 0i, var_1.c, ~func_2(func_2(func_2(Struct_1(0i, var_2.b, var_2.e.x, 2147483647i, var_2.e), vec2<f32>(1611f, -460f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-701f, 808f) - vec2<f32>(955f, 437f))), vec2<f32>(_wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(sign(290f)))).e);
    let var_4 = func_2(var_1, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1515f, var_1.b), _wgslsmith_f_op_f32(floor(var_3.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-381f, -135f))))));
    var_0 = vec4<u32>(_wgslsmith_mult_u32(3679u, var_0.x), func_1(_wgslsmith_mult_vec3_i32(~(-var_3.e.wxy), vec3<i32>(~var_1.e.x, ~51822i, var_4.a ^ var_3.d))), _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_0.x, 25691u, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(8129u, var_0.x, var_0.x, var_0.x), vec4<u32>(21779u, var_0.x, var_0.x, var_0.x))), ~(vec4<u32>(var_0.x, var_0.x, 4294967295u, 0u) >> ((vec4<u32>(0u, 1u, var_0.x, 4294967295u) | vec4<u32>(var_0.x, 0u, var_0.x, 1u)) % vec4<u32>(32u)))), ~select(_wgslsmith_mult_u32(_wgslsmith_add_u32(var_0.x, 17524u), var_0.x), _wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(var_0.x, 63867u)), false));
    var var_5 = var_4;
    let var_6 = 2147483647i;
    var_0 = firstTrailingBit(~_wgslsmith_mod_vec4_u32(reverseBits(abs(vec4<u32>(22622u, 0u, 0u, var_0.x))), ~select(vec4<u32>(4294967295u, var_0.x, 4294967295u, 0u), vec4<u32>(12506u, 0u, 1u, 1u), true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_add_i32(19854i, abs(var_5.c)), var_3.a << (var_0.x % 32u)), _wgslsmith_mult_u32(652u, ~(~firstTrailingBit(var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-451f)) - _wgslsmith_f_op_f32(270f * 1064f)), _wgslsmith_f_op_f32(-981f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1794f, var_4.b, true)), _wgslsmith_f_op_f32(f32(-1f) * -190f))))), var_2.a);
}

