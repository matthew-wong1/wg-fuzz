struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: bool, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1076f, 862f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-608f, 1000f))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1128f, 1253f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1625f, -1328f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-2798f, -520f), vec2<f32>(569f, 1000f))), vec2<f32>(-1149f, -252f))), true))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1262f, var_0.x), vec2<f32>(var_0.x, var_0.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(215f, var_0.x)), !vec2<bool>(arg_0, arg_0)))))));
    let var_1 = Struct_1(~max(u_input.b.x, 80758u));
    var var_2 = arg_1.x;
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 341f)))), -1020f);
    return var_1;
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), u_input.a.x, u_input.c.x);
    let var_1 = func_2(!((i32(-1i) * -var_0.x) <= (u_input.c.x & -13135i)), abs(reverseBits((u_input.b.zww ^ u_input.b.zyy) | abs(u_input.b.yww))));
    let var_2 = vec2<u32>(~_wgslsmith_clamp_u32(firstLeadingBit(11448u), var_1.a, ~firstTrailingBit(u_input.b.x)), _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b.yz, u_input.b.zy), vec2<u32>(48238u, var_1.a) | u_input.b.yy), ~(_wgslsmith_dot_vec2_u32(u_input.b.yy, u_input.b.yw) | 1u)));
    return func_2(u_input.c.x >= -27015i, _wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u >> (u_input.b.x % 32u), 5035u, firstTrailingBit(var_1.a)), ~_wgslsmith_sub_vec3_u32(u_input.b.wxy, vec3<u32>(var_2.x, 4294967295u, 1u))));
}

fn func_3() -> i32 {
    var var_0 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-868f, -1014f)) - 319f) > 112f);
    return firstLeadingBit(76455i) & u_input.a.x;
}

fn func_4(arg_0: i32) -> Struct_1 {
    let var_0 = func_2(all(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false)) && true, (u_input.b.zzy >> (u_input.b.yxx % vec3<u32>(32u))) ^ vec3<u32>(1u, abs(~15084u), reverseBits(u_input.b.x)));
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 2083f, -261f, -553f)))))), vec4<f32>(2094f, 752f, 1768f, _wgslsmith_f_op_f32(min(1133f, _wgslsmith_f_op_f32(round(-634f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(569f, 149f, -363f, -916f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-230f, -179f, 1207f, -2114f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2120f, 1000f, 1038f, 102f)))))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1207f, 1000f, -833f, 296f)))))));
    var var_2 = u_input.b;
    var_2 = u_input.b;
    let var_3 = Struct_1(_wgslsmith_mod_u32(max(_wgslsmith_div_u32(52829u, 4294967295u) >> (_wgslsmith_dot_vec2_u32(u_input.b.zw, vec2<u32>(19212u, 5738u)) % 32u), reverseBits(~var_0.a)), _wgslsmith_div_u32(~_wgslsmith_mod_u32(var_0.a, 0u), 92668u)));
    return var_0;
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = u_input.c.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(246f, -2194f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-205f * arg_0), -736f)), -829f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1144f), _wgslsmith_f_op_f32(floor(arg_0)), -1064f, 2051f))) + vec4<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(arg_0 + 819f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, arg_0) - _wgslsmith_f_op_f32(max(482f, arg_0))) * _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(round(arg_0)), true)))));
    var var_2 = _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(-var_1.x)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0))))));
    var var_3 = vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.b, _wgslsmith_add_vec4_u32(abs(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 39561u), vec4<u32>(2904u, 17375u, 12223u, arg_1.a))), u_input.b)), 0u);
    var var_4 = arg_1;
    return func_2(arg_1.a <= _wgslsmith_div_u32(~_wgslsmith_div_u32(18760u, 61522u), ~var_4.a), u_input.b.zxw);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !any(vec4<bool>(true & (28368i != u_input.c.x), all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true))), select(false, true, false) || true, -45927i == select(1i, u_input.a.x, false)));
    var var_1 = -2147483647i;
    var var_2 = func_1();
    var_2 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(562f + 896f), _wgslsmith_f_op_f32(floor(-600f)))))), func_4(_wgslsmith_div_i32(func_3(), -_wgslsmith_clamp_i32(-2147483647i, u_input.c.x, 2147483647i))));
    let var_3 = func_1();
    var var_4 = Struct_1(~(~var_3.a));
    var var_5 = var_3;
    let var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + -122f)));
    var var_7 = func_5(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_6 + -1213f))), 677f), _wgslsmith_f_op_f32(max(651f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_6 - 329f), _wgslsmith_f_op_f32(var_6 + -1434f)))))), var_3);
    let x = u_input.a;
    s_output = StorageBuffer(0i, vec4<i32>(2147483647i, reverseBits(_wgslsmith_div_i32(u_input.a.x, u_input.a.x) & -66009i), 39960i, (-u_input.c.x | 2147483647i) << (~_wgslsmith_clamp_u32(11443u, u_input.b.x, var_3.a) % 32u)), vec2<i32>(-u_input.c.x << (4294967295u % 32u), 5168i) ^ vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(16983i, u_input.a.x, u_input.c.x, u_input.a.x), vec4<i32>(u_input.c.x, u_input.c.x, 1i, 1i)), -_wgslsmith_dot_vec3_i32(vec3<i32>(34433i, 1i, u_input.a.x), u_input.c)), ~reverseBits(var_5.a), vec4<u32>(~(firstTrailingBit(4294967295u) ^ 1u), ~(~_wgslsmith_mult_u32(var_2.a, 17581u)), 0u, ~(~(~4294967295u))));
}

