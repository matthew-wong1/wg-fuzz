struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: vec3<bool>) -> u32 {
    var var_0 = Struct_1(u_input.a.x, -308f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-596f * 1000f), _wgslsmith_f_op_f32(sign(-790f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(556f, -910f)), _wgslsmith_div_vec2_f32(vec2<f32>(-2425f, -1000f), vec2<f32>(1359f, -1526f)))))), 1000f);
    var var_1 = vec3<i32>(countOneBits(countOneBits(countOneBits(arg_0))), ~(2147483647i & arg_0), -29428i);
    var_1 = _wgslsmith_mult_vec3_i32(min(countOneBits(vec3<i32>(var_1.x, var_1.x, firstTrailingBit(-1i))), vec3<i32>(select(39178i, var_1.x, true), firstTrailingBit(45654i), arg_0) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a, 1863u, 1u) << (vec3<u32>(var_0.a, 12311u, 4294967295u) % vec3<u32>(32u)), vec3<u32>(0u, u_input.a.x, u_input.b.x)) % vec3<u32>(32u))), -abs(~countOneBits(vec3<i32>(5548i, arg_0, -34780i))));
    var_0 = Struct_1(_wgslsmith_mult_u32(32381u, ~_wgslsmith_mult_u32(u_input.a.x & var_0.a, abs(3556u))), -102f, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.c + vec2<f32>(var_0.d, var_0.b)) * var_0.c)))), _wgslsmith_f_op_f32(f32(-1f) * -1302f));
    var_1 = -vec3<i32>(~(i32(-1i) * -2147483647i), ~var_1.x, firstLeadingBit(~firstTrailingBit(var_1.x)));
    return _wgslsmith_add_u32(abs(var_0.a), u_input.b.x);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec2<bool>, arg_3: f32) -> f32 {
    let var_0 = arg_2.x;
    let var_1 = -620f;
    let var_2 = Struct_1(~func_3(_wgslsmith_mod_i32(-12487i, 45345i), !vec3<bool>(true, var_0, true)) >> (arg_0.a % 32u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(527f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-152f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1))))))), _wgslsmith_f_op_vec2_f32(arg_0.c + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(var_1)), _wgslsmith_f_op_f32(round(arg_3))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(arg_0.c)), arg_0.c)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(897f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d * -1477f) - _wgslsmith_f_op_f32(f32(-1f) * -1101f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1205f))))));
    let var_3 = vec2<i32>(_wgslsmith_mod_i32(~abs(1i), 1i), firstTrailingBit(1i));
    let var_4 = u_input.b;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-501f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.b * var_2.c.x), var_2.c.x))) - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1, arg_3), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1), arg_3, arg_2.x))))));
}

fn func_1(arg_0: bool, arg_1: f32) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(Struct_1(12232u, arg_1, vec2<f32>(arg_1, arg_1), arg_1), u_input.b.xww, vec2<bool>(true, arg_0), arg_1)), _wgslsmith_f_op_f32(abs(arg_1)))))));
    var var_1 = vec2<bool>(!arg_0 || !(!arg_0), any(select(!select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), false), !(!vec2<bool>(false, arg_0)), vec2<bool>(true, true))));
    var var_2 = Struct_1(100031u, arg_1, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0)), 1000f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, _wgslsmith_f_op_f32(-arg_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(max(u_input.b.x, u_input.a.x), _wgslsmith_f_op_f32(sign(-327f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -562f) * vec2<f32>(-422f, arg_1)), arg_1), vec3<u32>(86173u, 12245u, 0u) >> (firstTrailingBit(vec3<u32>(40834u, 4294967295u, u_input.b.x)) % vec3<u32>(32u)), vec2<bool>(-284f <= var_0, var_1.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1)))))));
    let var_3 = Struct_1(94913u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.c.x))), var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * 408f)));
    var var_4 = max(abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(20785i, -37157i)), vec2<i32>(-19236i, -7185i), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -4706i), vec2<i32>(-1i, -71633i))), vec2<i32>(1i, 1i))), vec2<i32>(-1i) * -(~vec2<i32>(1i, 1i)));
    return firstLeadingBit((vec2<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.b.xy, u_input.b.wz)) << (u_input.a % vec2<u32>(32u))) >> (reverseBits(u_input.a) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (vec2<u32>(1u, u_input.b.x) & ~vec2<u32>(~u_input.a.x, ~31074u)) & func_1(true, _wgslsmith_f_op_f32(select(-1000f, 249f, true)));
    var var_1 = true;
    var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(abs(min(-2147483647i, 0i)), firstLeadingBit(_wgslsmith_mult_i32(-1i, -30541i)), 14523i), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(-41263i, 1i, 1i), -vec3<i32>(1i, -31677i, 9779i))) <= select(1i, 24074i, false);
    var_1 = ~var_0.x == ~select(_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.b.x, u_input.a.x), func_1(true, 1299f).x), 67524u, false);
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1124f)), _wgslsmith_f_op_f32(-276f - 396f)) != _wgslsmith_f_op_f32(-_wgslsmith_div_f32(237f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-375f, -984f)))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-12963i << (min(firstTrailingBit(u_input.a.x), ~22811u) % 32u)), vec4<f32>(_wgslsmith_f_op_f32(min(-1900f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(142f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(2509f, -546f)))), _wgslsmith_f_op_f32(abs(-1711f)), -1121f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -503f, 1708f, 1308f) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(401f, -375f, -1207f, -296f)))) + vec4<f32>(_wgslsmith_f_op_f32(round(-565f)), -753f, -1431f, -1217f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-194f - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(792f, 448f), 185f))) * 1f));
}

