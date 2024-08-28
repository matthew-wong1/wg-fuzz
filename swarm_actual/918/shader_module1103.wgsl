struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(firstTrailingBit(~u_input.c), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.c, 100733u, 4294967295u, u_input.c)), vec4<u32>(u_input.c, 0u, u_input.c, 4294967295u)), 1u, 42515u & u_input.c), ~vec4<u32>(abs(0u), u_input.c >> (4294967295u % 32u), select(4294967295u, u_input.c, false), 4294967295u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-236f, 1112f, 103f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(192f, -730f, -396f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-532f, -1272f, 518f))))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1174f, _wgslsmith_f_op_f32(min(-2551f, _wgslsmith_f_op_f32(round(1212f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(211f, 362f) * _wgslsmith_f_op_f32(-1547f + -2210f))))));
    var var_2 = 26299i;
    var var_3 = _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(abs(vec3<i32>(1i, -u_input.a, _wgslsmith_div_i32(u_input.a, -2147483647i))), ~u_input.b), vec3<i32>(5918i, select(1i, u_input.b.x ^ -97i, true), 1i) ^ vec3<i32>(-50518i, _wgslsmith_clamp_i32(1i, u_input.a & -2147483647i, 21385i), _wgslsmith_add_i32(u_input.b.x >> (u_input.c % 32u), u_input.b.x ^ 20271i)));
    var_1 = vec3<f32>(-950f, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f)))));
    return 4294967295u;
}

fn func_2() -> u32 {
    let var_0 = vec4<u32>(u_input.c, _wgslsmith_div_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, u_input.c), ~vec2<u32>(u_input.c, 4294967295u))), 0u), ~u_input.c, func_3());
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-787f, 1635f, -300f) - vec3<f32>(1000f, 437f, 1485f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(805f, -510f, 957f) + vec3<f32>(-1476f, -340f, -1286f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-403f, -1750f, -1459f) - vec3<f32>(-660f, -110f, 789f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(694f, -727f, 136f) - vec3<f32>(-1497f, 1017f, -717f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(749f, -862f, -673f))));
    let var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_1.xy), _wgslsmith_f_op_vec2_f32(-var_1.yy)));
    let var_3 = Struct_1(var_0);
    let var_4 = Struct_1(select(~abs(vec4<u32>(var_0.x, 18162u, 14790u, u_input.c)), var_3.a, true));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(13678u, var_0.x, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_4.a.x, 27266u), select(var_3.a.xy, abs(vec2<u32>(14723u, u_input.c)), true))), _wgslsmith_div_vec4_u32(max(var_4.a, min(vec4<u32>(var_3.a.x, var_3.a.x, u_input.c, var_4.a.x), vec4<u32>(var_4.a.x, var_3.a.x, var_4.a.x, 18431u)) >> (vec4<u32>(43621u, 4294967295u, 79143u, 43888u) % vec4<u32>(32u))), reverseBits(var_0)));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1) -> u32 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.x))), 702f, -2025f, _wgslsmith_f_op_f32(trunc(arg_0.x))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1245f, arg_0.x, -247f, arg_0.x), vec4<f32>(2428f, -269f, arg_0.x, -448f))))))));
    let var_2 = 29653u;
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -652f, 612f, -2368f));
    let var_3 = arg_1;
    return _wgslsmith_clamp_u32(22413u, var_3.a.x, ~min(var_3.a.x, var_2));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(u_input.c, 42827u) >> ((func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1242f, 357f, 1363f), vec3<f32>(-275f, -371f, 851f)))), Struct_1(~vec4<u32>(37832u, 54194u, 46550u, u_input.c))) << (1u % 32u)) % 32u);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2260f) * -1000f);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2014f))), 248f)));
    let var_3 = ~45044u;
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-528f, 1156f, -140f) * vec3<f32>(178f, -1499f, 683f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_2.x, -833f) - vec3<f32>(var_2.x, 1731f, 342f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1495f, var_2.x, var_1) - vec3<f32>(1515f, var_2.x, 296f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, _wgslsmith_f_op_f32(f32(-1f) * -1083f), _wgslsmith_f_op_f32(-var_1)) * vec3<f32>(_wgslsmith_div_f32(633f, -174f), var_1, var_1))));
    let var_4 = vec2<bool>(true, true);
    var var_5 = !any(vec4<bool>(!(true & var_4.x), true, true | !var_4.x, all(var_4)));
    let var_6 = var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(91520u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 699f, 409f, -1080f) * vec4<f32>(174f, var_2.x, var_2.x, var_1))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 613f, -208f, var_1)) * _wgslsmith_div_vec4_f32(vec4<f32>(var_1, -141f, var_2.x, 727f), vec4<f32>(var_2.x, -1000f, var_1, var_2.x))), all(vec4<bool>(var_4.x, var_4.x, var_6, false))))), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(firstTrailingBit(-2147483647i), select(-46493i, 1i, false), 0i, ~u_input.b.x), vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(u_input.a, -26498i, 0i)), select(26223i, 16723i, var_4.x), 1i, u_input.a)), vec4<i32>(0i, _wgslsmith_mult_i32(u_input.a, u_input.b.x), 2147483647i, _wgslsmith_mod_i32(1i, u_input.b.x))), u_input.a);
}

