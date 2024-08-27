struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: u32, arg_3: vec3<u32>) -> bool {
    var var_0 = Struct_1(select(select(vec3<bool>(false, select(false, false, true), any(vec2<bool>(true, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false))), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false)), vec3<bool>(true, true, true), vec3<bool>(true, true, any(vec3<bool>(true, true, true)))), min(countOneBits(vec3<i32>(1i, 1i, 1i)), select(vec3<i32>(-6406i, 1i, _wgslsmith_mod_i32(41559i, 2147483647i)), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 0i, -30163i), vec3<i32>(32335i, 1i, 70118i)), vec3<i32>(0i, 0i, -21974i) << (u_input.a % vec3<u32>(32u))), vec3<bool>(true, any(vec2<bool>(false, true)), all(vec3<bool>(true, true, false))))));
    let var_1 = !(arg_2 <= 0u);
    let var_2 = Struct_1(select(vec3<bool>(!any(var_0.a.zy), var_0.a.x, true), vec3<bool>(all(vec4<bool>(false, var_1, var_1, var_1)), _wgslsmith_dot_vec2_i32(var_0.b.yz, var_0.b.yy) > var_0.b.x, any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, var_0.a.x, var_1, true)))), ~(~arg_1.x) == ~reverseBits(arg_2)), abs(abs(-vec3<i32>(var_0.b.x, var_0.b.x, var_0.b.x))) | select(vec3<i32>(_wgslsmith_sub_i32(var_0.b.x, -12004i), 1i, var_0.b.x), ~var_0.b, !select(var_0.a, var_0.a, true)));
    var var_3 = var_2;
    let var_4 = Struct_1(select(select(vec3<bool>(var_0.a.x, var_3.a.x, var_3.b.x != 31503i), !select(vec3<bool>(false, var_1, false), vec3<bool>(var_2.a.x, false, false), vec3<bool>(var_3.a.x, var_3.a.x, true)), true), select(var_0.a, !(!vec3<bool>(true, true, var_0.a.x)), select(var_2.a, select(vec3<bool>(false, false, true), vec3<bool>(false, var_0.a.x, var_3.a.x), var_2.a), true)), select(var_2.a, select(select(var_3.a, vec3<bool>(var_0.a.x, true, var_1), var_2.a.x), var_0.a, select(var_2.a, var_0.a, vec3<bool>(var_3.a.x, false, false))), !vec3<bool>(false, false, var_3.a.x))), -(vec3<i32>(var_0.b.x, var_2.b.x & var_3.b.x, 1i) << (u_input.a % vec3<u32>(32u))));
    return false || var_3.a.x;
}

fn func_2() -> vec2<u32> {
    let var_0 = Struct_1(vec3<bool>(all(vec3<bool>(true, true, true)), !any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false))), true), abs(vec3<i32>(1i, _wgslsmith_dot_vec3_i32(max(vec3<i32>(0i, -1i, 21485i), vec3<i32>(0i, -9337i, 73787i)), vec3<i32>(1i, 1i, 1i)), ~10202i)));
    let var_1 = !(!select(!select(var_0.a, var_0.a, var_0.a.x), select(!vec3<bool>(true, var_0.a.x, false), var_0.a, vec3<bool>(false, true, true)), select(vec3<bool>(var_0.a.x, var_0.a.x, false), vec3<bool>(true, var_0.a.x, true), vec3<bool>(false, true, var_0.a.x))));
    let var_2 = Struct_1(vec3<bool>(!all(!var_1), select(select(var_0.a.x, all(vec4<bool>(var_1.x, var_0.a.x, false, var_1.x)), !var_1.x), true, func_3(vec2<f32>(-460f, 309f), ~u_input.e, firstTrailingBit(u_input.d), ~u_input.a)), var_0.a.x), var_0.b);
    let var_3 = select(vec4<bool>(false | !any(vec2<bool>(var_0.a.x, false)), var_1.x, true, true), !select(!vec4<bool>(var_0.a.x, var_0.a.x, true, true), select(vec4<bool>(var_2.a.x, true, var_1.x, var_0.a.x), !vec4<bool>(var_1.x, var_1.x, false, false), select(vec4<bool>(false, true, true, var_2.a.x), vec4<bool>(true, var_1.x, true, true), true)), vec4<bool>(false, !var_0.a.x, false, all(var_1))), select(select(select(vec4<bool>(var_1.x, var_2.a.x, var_1.x, var_2.a.x), !vec4<bool>(var_2.a.x, var_1.x, var_2.a.x, var_0.a.x), select(vec4<bool>(false, false, var_2.a.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), false)), select(vec4<bool>(false, var_0.a.x, var_1.x, var_1.x), !vec4<bool>(var_0.a.x, var_1.x, var_0.a.x, var_0.a.x), !vec4<bool>(false, false, true, var_1.x)), false), select(!select(vec4<bool>(var_0.a.x, false, var_0.a.x, false), vec4<bool>(var_0.a.x, var_0.a.x, false, false), var_1.x), vec4<bool>(true, true, true, true), any(var_2.a)), vec4<bool>((var_1.x | false) | var_0.a.x, false, true, true)));
    let var_4 = Struct_1(vec3<bool>(var_3.x || var_0.a.x, true, var_1.x), vec3<i32>(~27071i, -(i32(-1i) * -1368i), firstLeadingBit(-var_0.b.x)));
    return _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, 8479u), u_input.e, ~(~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(29735u, 0u), vec2<u32>(4294967295u, 17656u)), ~53413u)));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<u32>) -> u32 {
    var var_0 = vec2<i32>(~2147483647i, _wgslsmith_div_i32(1i, reverseBits(_wgslsmith_mult_i32(i32(-1i) * -2147483647i, abs(1i)))));
    var_0 = -_wgslsmith_mult_vec2_i32(firstLeadingBit(firstTrailingBit(~vec2<i32>(41247i, var_0.x))), vec2<i32>(-1i) * -(vec2<i32>(-1i, 11020i) >> (arg_1 % vec2<u32>(32u))));
    var_0 = -_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.x, -(~var_0.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(-2147483647i, -38211i)) | -select(vec2<i32>(-2147483647i, 0i), vec2<i32>(var_0.x, -24819i), arg_0.xy), reverseBits(vec2<i32>(var_0.x, 2147483647i) ^ vec2<i32>(2147483647i, var_0.x)) ^ _wgslsmith_mult_vec2_i32(~vec2<i32>(var_0.x, var_0.x), vec2<i32>(var_0.x, var_0.x) ^ vec2<i32>(var_0.x, var_0.x)));
    var var_1 = Struct_1(select(select(select(!arg_0, select(arg_0, vec3<bool>(false, arg_0.x, arg_0.x), true), select(arg_0, arg_0, true)), vec3<bool>(all(vec2<bool>(true, false)), arg_0.x, !arg_0.x), arg_0), vec3<bool>(arg_0.x, false, true), arg_0), max(_wgslsmith_sub_vec3_i32((vec3<i32>(2147483647i, var_0.x, 27349i) | vec3<i32>(var_0.x, var_0.x, -1i)) >> (u_input.a % vec3<u32>(32u)), min(_wgslsmith_clamp_vec3_i32(vec3<i32>(-25752i, 1i, var_0.x), vec3<i32>(2147483647i, 43560i, -2147483647i), vec3<i32>(-2147483647i, var_0.x, var_0.x)), vec3<i32>(-80255i, var_0.x, var_0.x))), -_wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(var_0.x, var_0.x, var_0.x)), vec3<i32>(0i, 22817i, 2147483647i), vec3<i32>(-50343i, -6309i, -61287i) & vec3<i32>(0i, var_0.x, var_0.x))));
    var_0 = vec2<i32>(abs(max(2147483647i, firstLeadingBit(2147483647i))), -1i);
    return arg_1.x;
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: vec3<u32>, arg_3: vec2<bool>) -> i32 {
    var var_0 = ~(~(~1u));
    var_0 = func_4(vec3<bool>(true, all(select(vec4<bool>(arg_0, false, arg_3.x, arg_3.x), vec4<bool>(true, arg_0, true, true), false)), !(u_input.b > 9407u)), firstLeadingBit(func_2())) ^ select(~4294967295u, arg_2.x, 13848u > firstTrailingBit(arg_2.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(-arg_1.xy);
    var_0 = 1u;
    var var_2 = vec3<i32>(6721i, firstTrailingBit(-2147483647i), ~(~(~_wgslsmith_sub_i32(11413i, 0i))));
    return _wgslsmith_mult_i32(var_2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_2.x, var_2.x, var_2.x), firstLeadingBit(vec4<i32>(var_2.x, var_2.x, var_2.x, 0i))) << ((arg_2.x | u_input.d) % 32u)) | 0i;
}

fn func_5(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -944f) * _wgslsmith_f_op_f32(round(-261f))) * 487f))));
    let var_1 = vec3<i32>(_wgslsmith_add_i32(-62568i, -22682i), -(arg_2.b.x ^ reverseBits(firstTrailingBit(arg_0.x))), arg_2.b.x);
    return vec3<bool>(func_3(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-296f + 307f), _wgslsmith_f_op_f32(662f * 488f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, -1000f))))))), _wgslsmith_mult_vec2_u32(~(~vec2<u32>(28747u, u_input.b)), u_input.a.zy), _wgslsmith_mod_u32(~u_input.a.x, 29104u) >> (abs(u_input.a.x << (u_input.d % 32u)) % 32u), _wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(u_input.e.x, u_input.b, ~47403u), vec3<u32>(1u, u_input.a.x, 42211u) | ~u_input.a)), all(select(select(select(arg_1, arg_2.a, arg_1), select(vec3<bool>(false, false, arg_1.x), arg_2.a, arg_1.x), !arg_2.a), select(vec3<bool>(arg_1.x, false, false), vec3<bool>(false, false, arg_2.a.x), select(vec3<bool>(arg_1.x, arg_2.a.x, arg_2.a.x), vec3<bool>(true, false, true), vec3<bool>(false, arg_1.x, arg_1.x))), select(arg_1, select(arg_2.a, vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(false, arg_2.a.x, true)), !arg_1.x))), all(select(select(!vec3<bool>(true, arg_1.x, arg_1.x), select(vec3<bool>(arg_2.a.x, arg_1.x, arg_2.a.x), vec3<bool>(arg_1.x, arg_1.x, arg_2.a.x), true), any(vec3<bool>(true, true, false))), vec3<bool>(true, arg_1.x, true), 2147483647i > -arg_2.b.x)));
}

fn func_6(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = abs(~(~(vec4<u32>(u_input.b, u_input.d, 4294967295u, u_input.e.x) << (~vec4<u32>(115806u, 26476u, 82571u, 4294967295u) % vec4<u32>(32u)))));
    let var_2 = -805f;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_1(func_5(vec4<i32>(func_1(false, vec3<f32>(1924f, -1308f, 517f), u_input.a, vec2<bool>(true, false)), countOneBits(-2147483647i), min(0i, 1i), -1i << (u_input.d % 32u)), vec3<bool>(func_3(vec2<f32>(-1000f, 880f), vec2<u32>(82739u, u_input.b), 0u, vec3<u32>(4294967295u, 0u, u_input.e.x)), true, true), Struct_1(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, -2147483647i, 1i), vec3<i32>(-1i, -1i, 1i)))), vec3<i32>(firstTrailingBit(_wgslsmith_div_i32(-2147483647i, -29251i)), -(~(-9752i)), _wgslsmith_mod_i32(1i, -9154i))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, func_5(vec4<i32>(-14057i, 20586i, 0i, 2147483647i), vec3<bool>(false, true, true), Struct_1(vec3<bool>(false, false, false), vec3<i32>(-19347i, -87623i, -5268i))).x, true), vec4<bool>(true, true, true, true)), Struct_1(func_5(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), firstTrailingBit(vec4<i32>(-10189i, 1i, 1i, 56351i))), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<i32>(0i, 2147483647i, -27615i))), vec3<i32>(min(_wgslsmith_mult_i32(-1i, 1i), _wgslsmith_add_i32(0i, 0i)), 1i >> (_wgslsmith_add_u32(116213u, u_input.e.x) % 32u), _wgslsmith_dot_vec3_i32(min(vec3<i32>(-28561i, 15606i, -76062i), vec3<i32>(1i, -1i, -2147483647i)), countOneBits(vec3<i32>(-1i, -1i, 0i))))), Struct_1(!vec3<bool>(true, all(vec2<bool>(false, false)), true), _wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 27117i, 1i), vec3<i32>(-14616i, -2147483647i, 8385i))))));
    var_0 = func_6(func_6(Struct_1(vec3<bool>(false, !var_0.a.x, var_0.a.x), vec3<i32>(-50552i & var_0.b.x, max(var_0.b.x, var_0.b.x), 2147483647i)), select(vec4<bool>(!var_0.a.x, var_0.a.x, false, var_0.a.x | var_0.a.x), !(!vec4<bool>(false, false, var_0.a.x, var_0.a.x)), true), func_6(func_6(Struct_1(vec3<bool>(var_0.a.x, var_0.a.x, true), var_0.b), !vec4<bool>(true, var_0.a.x, true, var_0.a.x), func_6(Struct_1(var_0.a, var_0.b), vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x), Struct_1(vec3<bool>(var_0.a.x, true, var_0.a.x), var_0.b), Struct_1(var_0.a, var_0.b)), func_6(Struct_1(var_0.a, vec3<i32>(1i, 0i, var_0.b.x)), vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x), Struct_1(var_0.a, var_0.b), Struct_1(vec3<bool>(var_0.a.x, false, var_0.a.x), vec3<i32>(var_0.b.x, 2147483647i, var_0.b.x)))), !select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(true, var_0.a.x, true, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)), func_6(Struct_1(vec3<bool>(var_0.a.x, false, var_0.a.x), var_0.b), vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x), func_6(Struct_1(var_0.a, var_0.b), vec4<bool>(true, var_0.a.x, false, var_0.a.x), Struct_1(vec3<bool>(var_0.a.x, false, true), var_0.b), Struct_1(var_0.a, var_0.b)), func_6(Struct_1(vec3<bool>(var_0.a.x, false, true), vec3<i32>(-2147483647i, 52087i, var_0.b.x)), vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x), Struct_1(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), var_0.b), Struct_1(var_0.a, vec3<i32>(var_0.b.x, -1i, var_0.b.x)))), func_6(Struct_1(var_0.a, vec3<i32>(0i, 0i, var_0.b.x)), vec4<bool>(false, true, var_0.a.x, var_0.a.x), Struct_1(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<i32>(0i, 0i, var_0.b.x)), func_6(Struct_1(var_0.a, vec3<i32>(-40944i, var_0.b.x, var_0.b.x)), vec4<bool>(var_0.a.x, true, true, var_0.a.x), Struct_1(var_0.a, var_0.b), Struct_1(var_0.a, var_0.b)))), Struct_1(vec3<bool>(func_3(vec2<f32>(238f, 292f), u_input.e, u_input.c, u_input.a), var_0.b.x < var_0.b.x, true), vec3<i32>(-2147483647i, -1i, 29213i))), !vec4<bool>(var_0.a.x, true, !var_0.a.x, !all(vec4<bool>(var_0.a.x, false, var_0.a.x, true))), func_6(Struct_1(!(!var_0.a), vec3<i32>(var_0.b.x >> (u_input.b % 32u), -10453i, 960i)), select(!(!vec4<bool>(true, var_0.a.x, false, var_0.a.x)), select(vec4<bool>(var_0.a.x, true, true, var_0.a.x), !vec4<bool>(var_0.a.x, true, false, var_0.a.x), var_0.a.x), var_0.a.x), Struct_1(var_0.a, ~(-vec3<i32>(var_0.b.x, -30187i, 15499i))), Struct_1(vec3<bool>(false, any(var_0.a.xy), var_0.a.x || var_0.a.x), ~(-vec3<i32>(var_0.b.x, 2147483647i, var_0.b.x)))), func_6(func_6(Struct_1(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), ~var_0.b), vec4<bool>(false || var_0.a.x, !var_0.a.x, var_0.a.x, func_3(vec2<f32>(1000f, 533f), u_input.a.yx, 7308u, u_input.a)), func_6(Struct_1(var_0.a, var_0.b), select(vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x), vec4<bool>(true, false, false, false)), Struct_1(vec3<bool>(true, false, var_0.a.x), var_0.b), func_6(Struct_1(vec3<bool>(false, var_0.a.x, var_0.a.x), vec3<i32>(3709i, var_0.b.x, -41416i)), vec4<bool>(var_0.a.x, true, var_0.a.x, true), Struct_1(vec3<bool>(false, true, true), var_0.b), Struct_1(vec3<bool>(var_0.a.x, false, true), var_0.b))), Struct_1(select(var_0.a, var_0.a, var_0.a.x), vec3<i32>(var_0.b.x, 2147483647i, var_0.b.x) << (vec3<u32>(16328u, u_input.c, u_input.d) % vec3<u32>(32u)))), select(select(vec4<bool>(false, false, false, var_0.a.x), !vec4<bool>(var_0.a.x, true, var_0.a.x, true), true), vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x), true & !var_0.a.x), func_6(func_6(Struct_1(var_0.a, var_0.b), !vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x), func_6(Struct_1(vec3<bool>(true, false, false), var_0.b), vec4<bool>(false, var_0.a.x, var_0.a.x, true), Struct_1(vec3<bool>(var_0.a.x, false, false), var_0.b), Struct_1(var_0.a, vec3<i32>(-52776i, var_0.b.x, var_0.b.x))), Struct_1(vec3<bool>(false, var_0.a.x, var_0.a.x), var_0.b)), select(select(vec4<bool>(var_0.a.x, false, false, false), vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x), var_0.a.x), select(vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x), vec4<bool>(false, var_0.a.x, var_0.a.x, true), vec4<bool>(true, var_0.a.x, false, true)), vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x)), Struct_1(!vec3<bool>(true, var_0.a.x, var_0.a.x), firstTrailingBit(var_0.b)), func_6(Struct_1(var_0.a, vec3<i32>(2147483647i, var_0.b.x, 10133i)), vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x), func_6(Struct_1(var_0.a, var_0.b), vec4<bool>(false, var_0.a.x, false, var_0.a.x), Struct_1(vec3<bool>(var_0.a.x, false, var_0.a.x), var_0.b), Struct_1(var_0.a, vec3<i32>(var_0.b.x, var_0.b.x, -2147483647i))), Struct_1(vec3<bool>(var_0.a.x, false, true), var_0.b))), Struct_1(func_5(reverseBits(vec4<i32>(1i, var_0.b.x, 2147483647i, 1i)), vec3<bool>(var_0.a.x, true, var_0.a.x), func_6(Struct_1(vec3<bool>(true, true, false), var_0.b), vec4<bool>(false, false, var_0.a.x, var_0.a.x), Struct_1(var_0.a, var_0.b), Struct_1(var_0.a, vec3<i32>(-16422i, var_0.b.x, 2147483647i)))), var_0.b << (~u_input.a % vec3<u32>(32u)))));
    var_0 = func_6(func_6(func_6(func_6(Struct_1(var_0.a, vec3<i32>(-38901i, -12552i, var_0.b.x)), !vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, true), Struct_1(var_0.a, vec3<i32>(-3748i, var_0.b.x, var_0.b.x)), Struct_1(vec3<bool>(true, var_0.a.x, var_0.a.x), vec3<i32>(-8753i, var_0.b.x, 3565i))), !vec4<bool>(true, false, true, var_0.a.x), Struct_1(var_0.a, var_0.b), func_6(func_6(Struct_1(vec3<bool>(true, var_0.a.x, true), vec3<i32>(var_0.b.x, -35628i, -42272i)), vec4<bool>(false, var_0.a.x, false, var_0.a.x), Struct_1(var_0.a, var_0.b), Struct_1(var_0.a, vec3<i32>(1i, 42073i, 53188i))), vec4<bool>(false, false, false, var_0.a.x), func_6(Struct_1(vec3<bool>(var_0.a.x, false, var_0.a.x), var_0.b), vec4<bool>(false, false, var_0.a.x, var_0.a.x), Struct_1(var_0.a, var_0.b), Struct_1(var_0.a, var_0.b)), Struct_1(vec3<bool>(var_0.a.x, true, var_0.a.x), var_0.b))), select(!(!vec4<bool>(var_0.a.x, var_0.a.x, true, false)), vec4<bool>(func_3(vec2<f32>(-1690f, -640f), u_input.e, 1u, u_input.a), false, false, false), all(var_0.a)), func_6(Struct_1(select(vec3<bool>(true, false, var_0.a.x), vec3<bool>(true, false, var_0.a.x), var_0.a.x), vec3<i32>(26305i, var_0.b.x, -8717i)), vec4<bool>(true, true, any(vec3<bool>(false, true, true)), var_0.a.x), func_6(func_6(Struct_1(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<i32>(-2147483647i, var_0.b.x, -1i)), vec4<bool>(true, var_0.a.x, true, var_0.a.x), Struct_1(var_0.a, vec3<i32>(var_0.b.x, var_0.b.x, var_0.b.x)), Struct_1(vec3<bool>(true, var_0.a.x, false), var_0.b)), !vec4<bool>(false, var_0.a.x, false, false), Struct_1(var_0.a, var_0.b), Struct_1(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<i32>(1i, var_0.b.x, 1417i))), Struct_1(select(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<bool>(var_0.a.x, true, false), true), select(var_0.b, var_0.b, true))), func_6(func_6(func_6(Struct_1(vec3<bool>(var_0.a.x, true, false), var_0.b), vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x), Struct_1(vec3<bool>(var_0.a.x, false, var_0.a.x), var_0.b), Struct_1(vec3<bool>(var_0.a.x, var_0.a.x, false), var_0.b)), !vec4<bool>(true, true, var_0.a.x, var_0.a.x), Struct_1(var_0.a, var_0.b), Struct_1(var_0.a, vec3<i32>(var_0.b.x, var_0.b.x, var_0.b.x))), select(!vec4<bool>(var_0.a.x, false, false, true), select(vec4<bool>(true, true, false, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x), var_0.a.x), vec4<bool>(true, true, var_0.a.x, var_0.a.x)), func_6(func_6(Struct_1(var_0.a, vec3<i32>(var_0.b.x, 41869i, 5177i)), vec4<bool>(true, var_0.a.x, false, false), Struct_1(vec3<bool>(true, false, false), vec3<i32>(-55490i, var_0.b.x, var_0.b.x)), Struct_1(vec3<bool>(var_0.a.x, var_0.a.x, true), vec3<i32>(var_0.b.x, 299i, var_0.b.x))), select(vec4<bool>(var_0.a.x, true, true, var_0.a.x), vec4<bool>(var_0.a.x, true, var_0.a.x, false), vec4<bool>(false, var_0.a.x, true, true)), Struct_1(var_0.a, vec3<i32>(-2147483647i, var_0.b.x, var_0.b.x)), Struct_1(var_0.a, vec3<i32>(-1i, -1i, 2147483647i))), Struct_1(vec3<bool>(true, false, var_0.a.x), vec3<i32>(var_0.b.x, -1i, var_0.b.x)))), select(select(vec4<bool>(var_0.a.x | var_0.a.x, !var_0.a.x, var_0.a.x || false, !var_0.a.x), vec4<bool>(var_0.a.x, any(vec3<bool>(var_0.a.x, var_0.a.x, true)), true, func_3(vec2<f32>(-115f, 739f), u_input.e, u_input.d, vec3<u32>(15696u, u_input.d, u_input.a.x))), (6924u | u_input.a.x) < 1u), vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -177f) > _wgslsmith_f_op_f32(round(-587f)), var_0.a.x, false, var_0.a.x), vec4<bool>(true, all(vec4<bool>(false, true, var_0.a.x, var_0.a.x)), var_0.a.x, false)), Struct_1(select(!(!vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x)), vec3<bool>(var_0.a.x, var_0.a.x, true), select(var_0.a.x, true, 4294967295u == u_input.c)), var_0.b), func_6(Struct_1(vec3<bool>(!var_0.a.x, true, var_0.a.x), ~(-vec3<i32>(var_0.b.x, var_0.b.x, 32681i))), vec4<bool>(func_6(func_6(Struct_1(vec3<bool>(var_0.a.x, true, var_0.a.x), vec3<i32>(51936i, 44274i, var_0.b.x)), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false), Struct_1(vec3<bool>(false, true, var_0.a.x), var_0.b), Struct_1(vec3<bool>(false, var_0.a.x, var_0.a.x), vec3<i32>(var_0.b.x, var_0.b.x, var_0.b.x))), !vec4<bool>(false, var_0.a.x, var_0.a.x, false), Struct_1(var_0.a, var_0.b), Struct_1(vec3<bool>(true, false, var_0.a.x), var_0.b)).a.x, !func_6(Struct_1(vec3<bool>(false, var_0.a.x, true), vec3<i32>(0i, var_0.b.x, 48653i)), vec4<bool>(var_0.a.x, true, true, var_0.a.x), Struct_1(var_0.a, vec3<i32>(-2147483647i, 1i, var_0.b.x)), Struct_1(var_0.a, vec3<i32>(17501i, var_0.b.x, 13887i))).a.x, true && func_3(vec2<f32>(318f, -1728f), vec2<u32>(4294967295u, u_input.d), 1u, u_input.a), true), Struct_1(vec3<bool>(false, false, true), vec3<i32>(i32(-1i) * -39330i, -9461i, -13763i)), func_6(func_6(func_6(Struct_1(vec3<bool>(var_0.a.x, var_0.a.x, true), vec3<i32>(33864i, var_0.b.x, 0i)), vec4<bool>(true, var_0.a.x, var_0.a.x, true), Struct_1(var_0.a, vec3<i32>(-33930i, 30389i, var_0.b.x)), Struct_1(vec3<bool>(false, true, var_0.a.x), vec3<i32>(var_0.b.x, 2147483647i, 7717i))), !vec4<bool>(var_0.a.x, false, false, false), func_6(Struct_1(vec3<bool>(true, false, true), vec3<i32>(var_0.b.x, 2147483647i, 1i)), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), Struct_1(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<i32>(var_0.b.x, var_0.b.x, var_0.b.x)), Struct_1(var_0.a, vec3<i32>(var_0.b.x, var_0.b.x, var_0.b.x))), func_6(Struct_1(var_0.a, vec3<i32>(-29642i, var_0.b.x, 2147483647i)), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false), Struct_1(vec3<bool>(var_0.a.x, false, var_0.a.x), var_0.b), Struct_1(vec3<bool>(var_0.a.x, false, true), vec3<i32>(var_0.b.x, var_0.b.x, -39060i)))), vec4<bool>(var_0.a.x, var_0.a.x || false, !var_0.a.x, true), func_6(Struct_1(var_0.a, vec3<i32>(-1i, var_0.b.x, 22553i)), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), Struct_1(var_0.a, vec3<i32>(0i, 0i, -4761i)), Struct_1(vec3<bool>(var_0.a.x, false, var_0.a.x), var_0.b)), func_6(Struct_1(var_0.a, vec3<i32>(-809i, var_0.b.x, var_0.b.x)), !vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), Struct_1(var_0.a, vec3<i32>(var_0.b.x, var_0.b.x, var_0.b.x)), func_6(Struct_1(vec3<bool>(false, true, var_0.a.x), var_0.b), vec4<bool>(var_0.a.x, false, true, true), Struct_1(var_0.a, vec3<i32>(52076i, var_0.b.x, -2147483647i)), Struct_1(var_0.a, vec3<i32>(16918i, var_0.b.x, -2147483647i)))))));
    let var_1 = abs(vec3<u32>(~(u_input.b ^ u_input.e.x), u_input.d, _wgslsmith_sub_u32(_wgslsmith_div_u32(func_2().x, 1u), ~(~u_input.a.x))));
    var_0 = func_6(func_6(Struct_1(vec3<bool>(select(var_0.a.x, true, false), true, var_0.b.x != -13969i), vec3<i32>(var_0.b.x & -30645i, 26614i, min(-17899i, -21587i))), vec4<bool>(var_0.a.x, true, true, true), func_6(Struct_1(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), ~var_0.b), !vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, true), Struct_1(vec3<bool>(true, true, true), max(var_0.b, vec3<i32>(var_0.b.x, 54415i, var_0.b.x))), func_6(Struct_1(vec3<bool>(var_0.a.x, var_0.a.x, true), var_0.b), select(vec4<bool>(false, false, false, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x), vec4<bool>(false, var_0.a.x, false, var_0.a.x)), func_6(Struct_1(var_0.a, vec3<i32>(var_0.b.x, var_0.b.x, 31982i)), vec4<bool>(false, var_0.a.x, true, true), Struct_1(var_0.a, var_0.b), Struct_1(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<i32>(0i, var_0.b.x, -1i))), Struct_1(var_0.a, var_0.b))), Struct_1(!vec3<bool>(false, var_0.a.x, false), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.b.x, var_0.b.x, var_0.b.x), var_0.b))), !(!select(select(vec4<bool>(true, false, var_0.a.x, true), vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x), true), select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(false, true, var_0.a.x, var_0.a.x)), !var_0.a.x)), func_6(func_6(func_6(func_6(Struct_1(vec3<bool>(var_0.a.x, var_0.a.x, false), vec3<i32>(var_0.b.x, var_0.b.x, var_0.b.x)), vec4<bool>(var_0.a.x, false, true, true), Struct_1(var_0.a, var_0.b), Struct_1(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), var_0.b)), !vec4<bool>(true, var_0.a.x, false, var_0.a.x), func_6(Struct_1(var_0.a, var_0.b), vec4<bool>(var_0.a.x, true, var_0.a.x, true), Struct_1(var_0.a, vec3<i32>(var_0.b.x, var_0.b.x, 2147483647i)), Struct_1(vec3<bool>(true, true, true), vec3<i32>(var_0.b.x, -2147483647i, var_0.b.x))), func_6(Struct_1(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<i32>(0i, var_0.b.x, 62394i)), vec4<bool>(var_0.a.x, var_0.a.x, true, false), Struct_1(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<i32>(var_0.b.x, var_0.b.x, -2147483647i)), Struct_1(vec3<bool>(true, var_0.a.x, var_0.a.x), var_0.b))), select(vec4<bool>(true, true, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)), Struct_1(vec3<bool>(true, var_0.a.x, var_0.a.x), min(vec3<i32>(var_0.b.x, var_0.b.x, var_0.b.x), var_0.b)), Struct_1(var_0.a, vec3<i32>(var_0.b.x, var_0.b.x, var_0.b.x))), vec4<bool>(var_0.b.x >= var_0.b.x, var_0.a.x, true, countOneBits(var_0.b.x) <= var_0.b.x), Struct_1(vec3<bool>(var_0.b.x >= var_0.b.x, func_5(vec4<i32>(var_0.b.x, var_0.b.x, var_0.b.x, -2147483647i), var_0.a, Struct_1(vec3<bool>(false, var_0.a.x, var_0.a.x), vec3<i32>(var_0.b.x, -1726i, var_0.b.x))).x, true), select(vec3<i32>(38568i, -2147483647i, var_0.b.x), vec3<i32>(var_0.b.x, 0i, 32494i), true) & var_0.b), Struct_1(vec3<bool>(func_3(vec2<f32>(-1013f, -574f), vec2<u32>(4294967295u, u_input.b), 4294967295u, vec3<u32>(49791u, 45985u, 18727u)), all(var_0.a), true && var_0.a.x), abs(vec3<i32>(1i, var_0.b.x, 1i)))), func_6(Struct_1(vec3<bool>(true, true, !var_0.a.x), firstLeadingBit(var_0.b) | var_0.b), !vec4<bool>(var_0.a.x, false, var_0.a.x, !var_0.a.x), Struct_1(var_0.a, abs(vec3<i32>(var_0.b.x, var_0.b.x, 1i))), Struct_1(!var_0.a, -vec3<i32>(-23564i, var_0.b.x, -1i))));
    var var_2 = Struct_1(var_0.a, var_0.b << (u_input.a % vec3<u32>(32u)));
    let var_3 = Struct_1(!(!vec3<bool>(true, any(vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x)), true)), var_2.b);
    var_2 = Struct_1(!vec3<bool>(func_3(vec2<f32>(-1020f, 430f), _wgslsmith_mod_vec2_u32(var_1.xz, var_1.yy), countOneBits(4294967295u), var_1 & var_1), var_0.a.x, !all(var_2.a.xy)), _wgslsmith_div_vec3_i32(var_2.b, vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_3.b.x, var_3.b.x), vec2<i32>(-84002i, var_2.b.x)), reverseBits(_wgslsmith_mod_i32(-6907i, -2147483647i)), -(~var_3.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b);
}

