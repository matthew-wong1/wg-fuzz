struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: bool) -> vec3<u32> {
    let var_0 = Struct_1(1057f, -758f, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(205f, 1896f, 671f)))))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -243f), _wgslsmith_f_op_f32(min(623f, _wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1206f, var_0.a, _wgslsmith_f_op_f32(max(-224f, -612f)))))));
    let var_2 = vec2<u32>(~(~u_input.a), u_input.a);
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a))), _wgslsmith_f_op_f32(f32(-1f) * -356f)));
    var_1 = Struct_1(-913f, var_1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c)));
    return ~firstLeadingBit(~vec3<u32>(70452u, 1u, 63599u));
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(arg_0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, 674f))))) * _wgslsmith_f_op_vec3_f32(round(arg_0)))));
    var var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(~(~0u), max(1u, ~0u), 18252u), func_3(all(vec3<bool>(true, true, true))));
    var_1 = vec3<u32>(var_1.x, var_1.x, var_1.x);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x)))) * _wgslsmith_f_op_f32(abs(-1473f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(889f * var_0.x), 1775f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_0, var_0))) - arg_0) * vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f * -856f), var_0.x, all(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.x - var_0.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -147f))))));
    let var_3 = min(_wgslsmith_sub_vec3_i32(abs(-(~vec3<i32>(1227i, -2147483647i, -55053i))), _wgslsmith_mod_vec3_i32(vec3<i32>(select(0i, 722i, false), i32(-1i) * -3774i, 2147483647i), abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, -12865i, -1i), vec3<i32>(1i, -1i, 24944i))))), _wgslsmith_add_vec3_i32(~(-(~vec3<i32>(5547i, -13964i, 19944i))), vec3<i32>(-1i) * -vec3<i32>(-1i, 0i, -1i)));
    return Struct_1(-1933f, 263f, var_2.c);
}

fn func_1(arg_0: Struct_1) -> vec2<i32> {
    let var_0 = ~0u;
    let var_1 = func_2(arg_0.c);
    var var_2 = Struct_1(var_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.b))), var_1.c);
    let var_3 = arg_0;
    let var_4 = !all(vec2<bool>(select(all(vec3<bool>(true, true, false)), true, all(vec4<bool>(false, false, false, false))), select(true, false, var_2.c.x == -1538f)));
    return vec2<i32>(reverseBits(abs(-(-2147483647i << (u_input.a % 32u)))), firstLeadingBit(-2147483647i));
}

fn func_4(arg_0: i32, arg_1: i32) -> Struct_1 {
    let var_0 = 70922u;
    var var_1 = _wgslsmith_add_u32(_wgslsmith_clamp_u32(~firstTrailingBit(~var_0), ~(~1u), _wgslsmith_mult_u32(_wgslsmith_mult_u32(17388u & u_input.a, _wgslsmith_div_u32(4294967295u, var_0)), 1470u)), _wgslsmith_add_u32(_wgslsmith_mult_u32(abs(u_input.a), _wgslsmith_add_u32(27485u, u_input.a)), 0u));
    let var_2 = func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(456f, -449f, 1001f), vec3<f32>(-795f, 1491f, -1262f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(2004f, -626f, 639f))) * vec3<f32>(_wgslsmith_f_op_f32(1000f + -964f), 1000f, func_2(vec3<f32>(366f, 1709f, -1000f)).c.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-353f, -1291f, -249f), vec3<f32>(1887f, 1611f, -2414f))))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, -303f, 1714f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(127f, -806f, -1685f)))))));
    var var_3 = (firstLeadingBit(arg_0) == min(-arg_0, -(~(-19571i)))) && (var_2.a == var_2.c.x);
    var var_4 = firstTrailingBit(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(60352i, 2147483647i)), abs(vec2<i32>(arg_0, -31287i) | vec2<i32>(-17884i, 7860i))), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(363i, -2147483647i, arg_1), vec3<i32>(arg_1, arg_0, arg_1))), ~(~vec2<i32>(-2147483647i, arg_0)))));
    return func_2(var_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(max(-_wgslsmith_dot_vec4_i32(~vec4<i32>(0i, -3174i, 33815i, 33896i), -vec4<i32>(33680i, -1i, 10318i, -2147483647i)), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(586i, -1i), vec2<i32>(8586i, -2137i)), func_1(Struct_1(722f, 1670f, vec3<f32>(-1502f, -1000f, 190f)))) & _wgslsmith_div_i32(1i, ~0i)), 0i);
    let var_1 = func_4(1i, 2147483647i);
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-2147f))))), _wgslsmith_f_op_f32(exp2(var_1.b)), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.a, var_0.c.x))).c.x)));
    let var_3 = -_wgslsmith_mod_i32(1i, i32(-1i) * -3068i) << (_wgslsmith_dot_vec3_u32((select(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(36856u, u_input.a, u_input.a), vec3<bool>(true, true, false)) | ~vec3<u32>(u_input.a, u_input.a, 86119u)) << (min(reverseBits(vec3<u32>(1u, 4294967295u, 85081u)), min(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a))) % vec3<u32>(32u)), reverseBits(~vec3<u32>(36634u, 23729u, 66808u)) ^ abs(vec3<u32>(u_input.a, 0u, u_input.a))) % 32u);
    var var_4 = all(!(!select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true)), true)));
    var_2 = var_1.c;
    let var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.a, ~1u, 240u), ~(~41567i), vec2<u32>(44522u, u_input.a), _wgslsmith_f_op_f32(floor(-1397f)));
}

