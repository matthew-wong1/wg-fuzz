struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: f32) -> Struct_2 {
    var var_0 = arg_0;
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(135f, _wgslsmith_f_op_f32(-arg_0))) + _wgslsmith_f_op_f32(461f * _wgslsmith_f_op_f32(min(-310f, arg_0)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(335f - 1022f), _wgslsmith_f_op_f32(round(arg_0)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0 + -256f))))), _wgslsmith_f_op_f32(f32(-1f) * -282f), select(true, false, false) || true));
    var_0 = 1337f;
    var var_1 = u_input.a.x;
    var var_2 = _wgslsmith_sub_vec4_i32(~(~_wgslsmith_sub_vec4_i32(vec4<i32>(-84088i, u_input.c, u_input.c, 1i), vec4<i32>(5937i, u_input.c, -2147483647i, u_input.c))) & _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, u_input.c, _wgslsmith_add_i32(u_input.c, u_input.c), -1i), abs(vec4<i32>(u_input.c, -52812i, -1i, 2147483647i)), vec4<i32>(_wgslsmith_add_i32(1i, u_input.c), u_input.c, u_input.c | u_input.c, u_input.c)), select(vec4<i32>(_wgslsmith_add_i32(u_input.c, u_input.c), max(u_input.c, -60979i), u_input.c, u_input.c), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, ~(-1370i), 2147483647i, abs(0i)), vec4<i32>(u_input.c, _wgslsmith_clamp_i32(30003i, u_input.c, -2147483647i), u_input.c, -50834i & u_input.c)), any(vec4<bool>(true, true, true, true))));
    return Struct_2(vec3<bool>(true, true, true), true);
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = arg_0.a.x;
    var var_1 = arg_0;
    let var_2 = ~30435i & (u_input.c | u_input.c);
    var var_3 = firstTrailingBit(countOneBits(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(0i, var_2, var_2, var_2), vec4<i32>(var_2, u_input.c, 13014i, -18103i) << (vec4<u32>(49084u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), ~(vec4<i32>(u_input.c, 0i, -2147483647i, -2147483647i) << (vec4<u32>(u_input.a.x, u_input.b.x, 1523u, 1u) % vec4<u32>(32u))))));
    var_0 = !(arg_0.b && true);
    return u_input.c;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2) -> vec2<f32> {
    let var_0 = _wgslsmith_clamp_vec4_i32(~(vec4<i32>(-1i) * -(~vec4<i32>(-2147483647i, u_input.c, u_input.c, u_input.c))), firstTrailingBit(countOneBits(vec4<i32>(-u_input.c, u_input.c >> (100759u % 32u), -30028i >> (u_input.a.x % 32u), u_input.c))), vec4<i32>(max(min(1i, u_input.c), func_3(arg_1)), countOneBits(~_wgslsmith_mod_i32(u_input.c, u_input.c)), select(1i, -1i, all(vec3<bool>(false, arg_1.b, arg_1.a.x))), 100i));
    var var_1 = arg_1;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-145f, _wgslsmith_f_op_f32(-1001f + _wgslsmith_div_f32(1354f, 1000f)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-106f)) - _wgslsmith_f_op_f32(854f * 1214f)), 702f)))));
    var_2 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - var_2.x) - _wgslsmith_f_op_f32(-807f * var_2.x))), _wgslsmith_f_op_f32(-var_2.x))));
    var var_3 = u_input.b.zxw;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.x, var_2.x)))))) * vec2<f32>(var_2.x, -298f));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = Struct_1(select(_wgslsmith_mult_u32(arg_2.c, u_input.a.x), ~4294967295u, arg_0), vec2<f32>(_wgslsmith_f_op_f32(arg_2.b.x + arg_2.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -112f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.d.x)) - _wgslsmith_f_op_f32(arg_2.b.x + 1000f)))), 0u, arg_2.d);
    var var_1 = true | (true || !arg_0);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(var_0.d.x + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-506f, 2340f) + arg_2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(149f)))))), arg_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.x * -160f)))));
    let var_3 = ~85937u;
    let var_4 = !(!select(vec2<bool>(!arg_0, true), !func_1(-1183f).a.zx, !vec2<bool>(true, arg_0)));
    return vec3<bool>(false, (var_3 >> (~u_input.b.x % 32u)) >= arg_2.c, !select(false, all(vec4<bool>(false, true, arg_0, var_4.x)), var_4.x) || true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(!vec3<bool>(true, false, _wgslsmith_f_op_f32(step(482f, 834f)) != _wgslsmith_f_op_f32(f32(-1f) * -688f)), true);
    var var_1 = func_1(858f);
    var var_2 = Struct_2(func_4(false, 46015u, Struct_1(78808u, _wgslsmith_f_op_vec2_f32(func_2(select(var_0.a.xy, var_0.a.yz, true), func_1(576f))), countOneBits(4294967295u) << (1u % 32u), _wgslsmith_f_op_vec4_f32(vec4<f32>(495f, 1118f, 656f, -806f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(329f, 427f, 804f, 970f))))), var_1.a.x);
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -817f)));
    var_0 = Struct_2(var_2.a, !(!(func_1(-1061f).a.x && true)));
    let var_4 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(4294967295u, firstTrailingBit(firstLeadingBit(abs(4294967295u))), u_input.a.x));
}

