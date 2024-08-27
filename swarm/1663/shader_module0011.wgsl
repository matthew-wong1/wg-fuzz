struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<bool>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(279f, 798f);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> f32 {
    global0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.x, _wgslsmith_f_op_f32(-433f * 220f))));
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-376f))), -233f, _wgslsmith_f_op_f32(global0.x + -1300f), _wgslsmith_div_f32(-362f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_1 = firstLeadingBit(u_input.a & 2147483647i) << (u_input.e.x % 32u);
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-231f, var_0.x, _wgslsmith_f_op_f32(global0.x * -623f), global0.x) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, -332f, var_0.x, -699f)))))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(select(var_0.x, -370f, false)), _wgslsmith_f_op_f32(floor(var_0.x)), var_0.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(737f, -385f, var_0.x, global0.x) + vec4<f32>(global0.x, 852f, -1000f, -1878f)), vec4<f32>(804f, 1628f, -1562f, global0.x), all(vec2<bool>(false, true)))))))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(global0.x - 755f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-607f, 1362f))), var_0.x)));
    return _wgslsmith_f_op_f32(sign(global0.x));
}

fn func_2(arg_0: f32) -> f32 {
    global0 = vec2<f32>(global0.x, -1332f);
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-377f, _wgslsmith_f_op_f32(-130f + -450f), _wgslsmith_f_op_f32(2656f - global0.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, global0.x) + vec3<f32>(1103f, arg_0, 1889f))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-758f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(348f, arg_0))))));
    global0 = var_0.xy;
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-210f, var_0.x))));
    var var_2 = ~(_wgslsmith_dot_vec4_u32(max(u_input.e, u_input.e), ~firstTrailingBit(vec4<u32>(u_input.e.x, 22006u, u_input.e.x, 1u))) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, _wgslsmith_clamp_u32(43577u, 0u, u_input.e.x)), min(select(vec2<u32>(u_input.e.x, 32665u), vec2<u32>(30278u, u_input.e.x), false), min(vec2<u32>(35214u, u_input.e.x), vec2<u32>(u_input.e.x, u_input.e.x)))));
    return var_0.x;
}

fn func_1() -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(global0.x, 1319f)))), global0.x)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, _wgslsmith_div_f32(-883f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(257f, global0.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 291f))) + vec2<f32>(-971f, _wgslsmith_f_op_f32(145f + global0.x))) * vec2<f32>(_wgslsmith_f_op_f32(abs(-512f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(735f)) - _wgslsmith_div_f32(608f, global0.x)))));
    let var_2 = vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(min(reverseBits(8380u), firstLeadingBit(18818u)), u_input.e.x << (u_input.e.x % 32u), ~157953u ^ ~u_input.e.x, ~u_input.e.x), u_input.e), u_input.e.x, 103093u);
    let var_3 = Struct_2(select(select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), true), vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false))), vec4<bool>(any(vec3<bool>(false, true, false)), u_input.e.x != u_input.e.x, true, true), vec4<bool>(true, true, true, true)), !vec4<bool>(true, true, all(vec3<bool>(false, false, false)), false), false), !vec3<bool>(true, all(vec4<bool>(true, true, true, true)), !all(vec3<bool>(false, true, false))), var_1.x);
    var_0 = -2086f;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1 - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.x, var_3.c))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-global0.x)), vec2<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(-497f + -166f)))));
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(func_1()), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1773f, global0.x))), vec2<f32>(_wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_f_op_f32(ceil(207f)))))))));
    global0 = _wgslsmith_div_vec2_f32(var_0, vec2<f32>(var_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(-var_0.x))))));
    let var_1 = all(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), false))) & true;
    global0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1883f), -727f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_1()).x * global0.x)))));
    var var_2 = ~_wgslsmith_add_u32(~_wgslsmith_sub_u32(u_input.e.x | u_input.e.x, u_input.e.x), countOneBits(_wgslsmith_dot_vec4_u32(u_input.e, u_input.e) << (u_input.e.x % 32u)));
    var var_3 = ~u_input.e.x;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(trunc(-625f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-835f, global0.x) + var_0))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1()))));
    global0 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.e.xww, countOneBits(u_input.e.wzw) | ~u_input.e.wzw), u_input.e.xzy, u_input.e.zzy), 28479u, max(_wgslsmith_mult_vec3_i32(max(vec3<i32>(u_input.d, u_input.c.x, u_input.a), vec3<i32>(-6347i, u_input.c.x, 21889i)) | _wgslsmith_sub_vec3_i32(u_input.c, vec3<i32>(u_input.b, u_input.a, u_input.b)), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.c, u_input.c), ~vec3<i32>(-1i, u_input.a, 2147483647i))), vec3<i32>(firstLeadingBit(_wgslsmith_add_i32(-1i, -42700i)), u_input.d, countOneBits(_wgslsmith_div_i32(u_input.a, u_input.a)))));
}

