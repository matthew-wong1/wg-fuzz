struct Struct_1 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> bool {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -519f)), _wgslsmith_f_op_f32(f32(-1f) * -341f));
    let var_1 = false;
    let var_2 = arg_0;
    let var_3 = vec4<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x + var_0.x)))) >= var_0.x, any(!select(!vec4<bool>(true, var_2.b, var_2.b, false), !vec4<bool>(var_1, true, true, false), var_2.a == 0u)), false);
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-346f, var_0.x));
    return var_2.b;
}

fn func_2() -> bool {
    let var_0 = Struct_1(_wgslsmith_add_u32(u_input.a.x, _wgslsmith_mult_u32(select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(58990u, u_input.a.x)), 15891u ^ u_input.b, true), 8342u >> ((4294967295u | u_input.a.x) % 32u))), true);
    var var_1 = select(_wgslsmith_div_vec3_i32(max(-_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, -1i, -1i), vec3<i32>(2558i, 23336i, 1i), vec3<i32>(1i, -1i, -27517i)), vec3<i32>(1i, 2147483647i, 23991i)), vec3<i32>(1i, ~(-1i), 0i)), vec3<i32>(select(_wgslsmith_clamp_i32(~(-1i), ~20036i, i32(-1i) * -35743i), ~(i32(-1i) * -28944i), !all(vec2<bool>(true, var_0.b))), 1i, ~22967i), func_3(var_0, ~vec4<u32>(u_input.b << (34061u % 32u), countOneBits(0u), ~u_input.a.x, var_0.a)));
    var var_2 = Struct_1(var_0.a, ((false && all(vec3<bool>(false, true, var_0.b))) && all(!vec3<bool>(true, var_0.b, var_0.b))) & !var_0.b);
    var var_3 = var_1.x;
    let var_4 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(round(1504f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(136f * 876f), 456f)), -703f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1022f)))))), vec4<f32>(1666f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(624f)), _wgslsmith_f_op_f32(f32(-1f) * -453f))) * _wgslsmith_f_op_f32(f32(-1f) * -334f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-366f)) - _wgslsmith_f_op_f32(select(-1105f, -425f, var_2.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(298f, 559f)) * -257f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -532f))))));
    return -_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(var_1.x, 2810i, -2147483647i, var_1.x), (vec4<i32>(-2147483647i, -17005i, -18460i, 1i) >> (vec4<u32>(4294967295u, 4294967295u, var_2.a, 0u) % vec4<u32>(32u))) | vec4<i32>(var_1.x, 0i, var_1.x, var_1.x)) >= var_1.x;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec2<i32> {
    let var_0 = Struct_1(max(abs(_wgslsmith_div_u32(arg_1.a << (4294967295u % 32u), 1u)), arg_1.a), false & (_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(254f, -1824f))) == 1f));
    var var_1 = all(!vec4<bool>(false, func_2(), all(select(vec2<bool>(true, true), arg_0.zx, arg_0.yx)), any(arg_0.yx)));
    var_1 = any(arg_0.zy) || !(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(102f)), -229f)) < -1265f);
    var_1 = func_3(var_0, _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, arg_2.a, 1u, 4294967295u), ~reverseBits(vec4<u32>(arg_2.a, u_input.a.x, 1u, 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_2.a, 4294967295u, arg_2.a, arg_2.a), ~vec4<u32>(arg_1.a, 1u, var_0.a, var_0.a))), countOneBits(~firstLeadingBit(vec4<u32>(var_0.a, u_input.a.x, 4294967295u, arg_2.a)))));
    let var_2 = vec4<i32>(30745i, 1805i, 1845i, ~select(-16579i, select(~1i, 1i, true), select(true, var_0.b, false) || false));
    return _wgslsmith_clamp_vec2_i32(~(~var_2.wz), vec2<i32>(17274i, -(i32(-1i) * -43421i)), vec2<i32>(-35693i, ~max(var_2.x, 1i))) >> ((select(~vec2<u32>(var_0.a, 4294967295u) | ~u_input.a.yy, vec2<u32>(u_input.b, arg_1.a) & vec2<u32>(arg_2.a, u_input.a.x), arg_1.b) & ~u_input.a.xx) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_u32(u_input.a.x, 1u, _wgslsmith_add_u32(~u_input.a.x, u_input.b & u_input.b));
    let var_1 = Struct_1(~abs(_wgslsmith_add_u32(57324u, firstLeadingBit(131957u))), -600f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(224f, _wgslsmith_f_op_f32(ceil(338f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1122f)))));
    var var_2 = vec4<u32>(~u_input.a.x, var_0, 70271u, var_0);
    var var_3 = _wgslsmith_clamp_vec3_u32(~min(countOneBits(u_input.a >> (vec3<u32>(var_1.a, 43628u, 4294967295u) % vec3<u32>(32u))), vec3<u32>(27366u, abs(4294967295u), ~39971u)), ~u_input.a, vec3<u32>(u_input.b, _wgslsmith_sub_u32(var_2.x, select(0u << (0u % 32u), ~15574u, any(vec3<bool>(true, false, var_1.b)))), abs(firstTrailingBit(var_1.a))));
    let var_4 = vec4<i32>(firstTrailingBit(1i) ^ (_wgslsmith_dot_vec2_i32(~vec2<i32>(23827i, -3884i), func_1(vec3<bool>(false, false, true), Struct_1(1u, var_1.b), Struct_1(0u, var_1.b))) ^ -17682i), firstTrailingBit(func_1(vec3<bool>(all(vec3<bool>(true, true, false)), any(vec4<bool>(var_1.b, var_1.b, false, true)), var_1.b), Struct_1(u_input.b, true), var_1).x), min(_wgslsmith_clamp_i32(-64878i, _wgslsmith_div_i32(15896i, -1i), ~(-48176i)), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2867i, -52944i, -2147483647i, -45066i), vec4<i32>(-42865i, 27463i, 1i, 0i), vec4<i32>(-2147483647i, 0i, 2147483647i, -2147483647i)), vec4<i32>(1i, 1i, 1i, 1i))) & (-_wgslsmith_div_i32(16851i, -1062i) | func_1(vec3<bool>(var_1.b, false, var_1.b), var_1, var_1).x), -34270i << (countOneBits(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(67218u, var_1.a, 24184u, u_input.b)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, var_3.x, 44672u, 26018u), vec4<u32>(var_1.a, 16977u, var_1.a, 0u)))) % 32u));
    var var_5 = firstLeadingBit(~vec3<u32>(63282u, 0u, _wgslsmith_div_u32(var_3.x, 0u))) >> (abs(max(~var_2.zzx, _wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(var_3.x, 0u, 62506u))) | ~min(vec3<u32>(0u, var_2.x, 0u), u_input.a)) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(step(-304f, 1641f)), _wgslsmith_f_op_f32(f32(-1f) * -959f), -1493f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1178f, 2117f, -1136f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -838f, -1433f))), !(!vec3<bool>(var_1.b, var_1.b, var_1.b)))))), -_wgslsmith_clamp_vec3_i32(abs(firstTrailingBit(var_4.zwx)), ~_wgslsmith_clamp_vec3_i32(var_4.xwz, var_4.zxy, var_4.wwx), _wgslsmith_mult_vec3_i32(-vec3<i32>(var_4.x, var_4.x, 0i), max(var_4.zxz, var_4.wxy))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(min(-327f, 239f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1186f), 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 1682f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f + -879f)))))), ~_wgslsmith_add_vec2_i32(var_4.xx << (reverseBits(u_input.a.zz) % vec2<u32>(32u)), ~countOneBits(var_4.yy)));
}

