struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec2<f32>) -> vec3<bool> {
    let var_0 = Struct_1(select(!select(!vec3<bool>(arg_0, arg_0, true), select(vec3<bool>(arg_0, true, true), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, false)), true), vec3<bool>(u_input.a <= u_input.a, arg_0, true), vec3<bool>(true, arg_0, all(vec3<bool>(arg_0, arg_0, arg_0)) & false)), 24399u);
    let var_1 = _wgslsmith_dot_vec4_i32(~vec4<i32>(3304i, _wgslsmith_sub_i32(firstTrailingBit(u_input.a), ~(-2147483647i)), reverseBits(u_input.a), u_input.a), vec4<i32>(8556i, ~_wgslsmith_sub_i32(~u_input.a, u_input.a & u_input.a), u_input.a, u_input.a));
    let var_2 = Struct_1(!vec3<bool>(true, true, var_0.a.x), var_0.b);
    let var_3 = var_2;
    var var_4 = min(~select(~vec4<u32>(0u, var_0.b, var_2.b, var_0.b) >> (~vec4<u32>(var_2.b, 4294967295u, var_2.b, var_2.b) % vec4<u32>(32u)), firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.b, var_0.b, 10338u, var_2.b), vec4<u32>(1u, var_3.b, var_2.b, var_2.b))), _wgslsmith_f_op_f32(-arg_1.x) > arg_1.x), _wgslsmith_mult_vec4_u32(select(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(var_0.b, var_0.b, var_3.b, 1u)), ~vec4<u32>(var_3.b, 26774u, var_2.b, 43776u)), select(~vec4<u32>(4294967295u, var_3.b, var_0.b, 27914u), vec4<u32>(31374u, 0u, 1u, 0u), var_3.a.x != var_2.a.x), var_2.a.x), countOneBits(max(~vec4<u32>(var_0.b, 4294967295u, var_0.b, var_3.b), vec4<u32>(4294967295u, 0u, var_3.b, 29733u)))));
    return select(select(vec3<bool>(true, arg_0, true), !(!(!var_0.a)), true), vec3<bool>(false || (!var_2.a.x || false), all(vec2<bool>(false, true)), !var_2.a.x), any(select(vec4<bool>(any(var_0.a), all(vec3<bool>(true, var_3.a.x, var_3.a.x)), select(var_2.a.x, var_2.a.x, arg_0), var_0.a.x), select(vec4<bool>(false, var_0.a.x, var_2.a.x, true), select(vec4<bool>(false, var_0.a.x, false, arg_0), vec4<bool>(var_0.a.x, true, true, var_0.a.x), vec4<bool>(false, true, false, false)), !vec4<bool>(true, var_2.a.x, var_3.a.x, true)), !(!vec4<bool>(true, var_0.a.x, var_2.a.x, var_2.a.x)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: i32, arg_3: i32) -> Struct_1 {
    let var_0 = u_input.a;
    return Struct_1(!(!select(vec3<bool>(arg_0.a.x, arg_0.a.x, false), func_3(false, vec2<f32>(1485f, -1535f)), false)), 1u);
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> u32 {
    var var_0 = func_2(Struct_1(arg_2.a, arg_1), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(arg_3, arg_3)))), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -446f))), _wgslsmith_f_op_f32(f32(-1f) * -1644f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1019f, arg_3, -132f, -433f)))))), 6350i | u_input.a, 4859i);
    let var_1 = vec3<u32>(1627u, ~(~1u), _wgslsmith_sub_u32(14388u, arg_1));
    let var_2 = abs(_wgslsmith_mult_vec2_u32(var_1.yx, ~(~(~var_1.yx))));
    let var_3 = func_2(arg_2, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(132f, -471f, -870f, 264f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(883f, -280f, arg_3, arg_3) * vec4<f32>(881f, -307f, -957f, -318f))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(529f, arg_3, -1000f, arg_3)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1546f, 110f, arg_3, 1645f))))), vec4<f32>(1131f, -1931f, -1910f, _wgslsmith_f_op_f32(-arg_3)), vec4<bool>(true, arg_2.a.x, arg_2.a.x, arg_2.a.x && arg_2.a.x))), -1i, u_input.a);
    var_0 = Struct_1(func_3(!arg_2.a.x, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(725f, -1480f)))))))), var_2.x);
    return _wgslsmith_div_u32(countOneBits(~(abs(var_0.b) & 1u)), arg_2.b);
}

fn func_4(arg_0: bool, arg_1: vec2<u32>, arg_2: vec3<f32>, arg_3: vec2<f32>) -> vec4<u32> {
    var var_0 = -min(((vec4<i32>(u_input.a, -1i, u_input.a, u_input.a) ^ vec4<i32>(-1i, u_input.a, u_input.a, u_input.a)) & ~vec4<i32>(-2147483647i, 1i, -59044i, u_input.a)) | -_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, 62918i, u_input.a)), vec4<i32>(u_input.a, u_input.a, -41433i, select(66968i, -12749i, arg_0)) >> ((_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.x, 51868u, 4294967295u, 4294967295u), vec4<u32>(45916u, arg_1.x, 0u, arg_1.x), vec4<u32>(1u, arg_1.x, arg_1.x, arg_1.x)) | vec4<u32>(0u, 4294967295u, 1u, arg_1.x)) % vec4<u32>(32u)));
    var_0 = vec4<i32>(_wgslsmith_div_i32(0i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -10120i, var_0.x), vec3<i32>(u_input.a, u_input.a, var_0.x)), countOneBits(~u_input.a)) ^ u_input.a, -26535i, u_input.a, 4502i);
    var_0 = -(~((abs(vec4<i32>(1i, u_input.a, u_input.a, var_0.x)) << (_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 3951u), vec4<u32>(arg_1.x, 92270u, arg_1.x, 1u)) % vec4<u32>(32u))) & countOneBits(vec4<i32>(var_0.x, u_input.a, u_input.a, 2147483647i) << (vec4<u32>(1u, 99963u, 0u, 27889u) % vec4<u32>(32u)))));
    var_0 = _wgslsmith_div_vec4_i32(~_wgslsmith_sub_vec4_i32(~vec4<i32>(var_0.x, 2147483647i, u_input.a, u_input.a), firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(55706i, var_0.x, 0i, u_input.a), vec4<i32>(u_input.a, 36794i, -2147483647i, -2758i)))), _wgslsmith_add_vec4_i32(-firstLeadingBit(~vec4<i32>(u_input.a, var_0.x, var_0.x, var_0.x)), ~vec4<i32>(u_input.a & u_input.a, var_0.x, var_0.x, var_0.x)));
    var_0 = vec4<i32>(1i, -(~u_input.a), countOneBits(_wgslsmith_div_i32(var_0.x, var_0.x)), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(-19315i, -10195i, -2147483647i), -26096i, 1i, ~51410i), ~_wgslsmith_mod_vec4_i32(vec4<i32>(21716i, u_input.a, u_input.a, -1i), vec4<i32>(u_input.a, var_0.x, 2147483647i, var_0.x))), _wgslsmith_clamp_vec4_i32(~(-vec4<i32>(var_0.x, var_0.x, u_input.a, -9804i)), vec4<i32>(u_input.a, var_0.x, 34688i, var_0.x) << ((vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 61535u) | vec4<u32>(arg_1.x, 21104u, arg_1.x, 4294967295u)) % vec4<u32>(32u)), reverseBits(vec4<i32>(u_input.a, var_0.x, -6574i, 0i) >> (vec4<u32>(arg_1.x, 4294967295u, arg_1.x, 51550u) % vec4<u32>(32u))))));
    return vec4<u32>(func_2(Struct_1(vec3<bool>(arg_0, arg_0, arg_0), arg_1.x), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, arg_3.x, arg_2.x, arg_2.x) + vec4<f32>(368f, arg_2.x, arg_3.x, arg_2.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_3.x, -581f, -270f, arg_2.x))))), countOneBits(max(var_0.x, 17129i)), 19607i).b, _wgslsmith_sub_u32(max(~arg_1.x, 0u), 33427u), func_2(func_2(func_2(Struct_1(vec3<bool>(true, true, arg_0), 31572u), vec4<f32>(arg_2.x, arg_2.x, arg_3.x, -325f), u_input.a, var_0.x), vec4<f32>(1000f, 587f, arg_2.x, arg_3.x), 13633i, _wgslsmith_sub_i32(var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, -1000f, arg_3.x, -2557f)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_3.x, -225f, 1098f, arg_2.x)))), ~(-1i), -1i).b, func_1(var_0.xy, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 5513u, 31323u, arg_1.x), vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 10143u)) >> (25752u % 32u), Struct_1(func_3(arg_0, vec2<f32>(arg_2.x, 223f)), arg_1.x ^ arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1488f))) << (select(select(~(~vec4<u32>(4294967295u, 0u, 30995u, arg_1.x)), (vec4<u32>(6223u, 55942u, 67008u, 1u) >> (vec4<u32>(arg_1.x, arg_1.x, 0u, 96404u) % vec4<u32>(32u))) >> (_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 4294967295u)) % vec4<u32>(32u)), func_2(Struct_1(vec3<bool>(arg_0, false, arg_0), 4294967295u), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1162f, -131f, -1000f, -1028f) + vec4<f32>(arg_2.x, arg_3.x, arg_3.x, arg_3.x)), -17794i, var_0.x).a.x), ~vec4<u32>(arg_1.x, arg_1.x, ~arg_1.x, 0u), arg_0) % vec4<u32>(32u));
}

fn func_5(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(906f - 235f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(267f, 1222f))), -1946f)), vec3<bool>(true, any(vec2<bool>(true, true)), true)));
    var var_1 = -abs(~vec4<i32>(u_input.a, 2172i, 0i, -6856i) ^ vec4<i32>(-65509i | u_input.a, u_input.a, u_input.a >> (42014u % 32u), -u_input.a));
    var_1 = -countOneBits(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, var_1.x, 39793i, -33297i), abs(vec4<i32>(23016i, -35063i, -1i, u_input.a)), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 62678i, 23201i, u_input.a), vec4<i32>(u_input.a, -27548i, u_input.a, u_input.a))), vec4<i32>(countOneBits(u_input.a), -58605i, var_1.x, countOneBits(763i))));
    var var_2 = vec2<u32>(_wgslsmith_dot_vec2_u32(~max(arg_0.xz ^ vec2<u32>(arg_0.x, arg_0.x), arg_0.yw), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(0u, arg_0.x, 24412u), firstTrailingBit(7891u)), reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(58970u, arg_0.x), vec2<u32>(arg_0.x, 50696u))))), firstLeadingBit(arg_0.x));
    var var_3 = var_0.zz;
    return func_2(Struct_1(!vec3<bool>(true, all(vec3<bool>(true, true, true)), true), firstLeadingBit(arg_0.x) | select(var_2.x, ~78551u, false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(817f, _wgslsmith_f_op_f32(-var_3.x), var_3.x, _wgslsmith_f_op_f32(-var_3.x)))), u_input.a, ~(-1i));
}

fn func_6(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -468f) * _wgslsmith_f_op_f32(sign(-1000f))) - -1478f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, -847f)) + 1f) - -482f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-742f, -1000f) * _wgslsmith_f_op_f32(floor(1110f))) * _wgslsmith_f_op_f32(f32(-1f) * -1145f)))));
    let var_1 = arg_2;
    let var_2 = vec4<u32>(_wgslsmith_dot_vec3_u32(arg_0, arg_0), abs(arg_0.x), 1u, 1u);
    let var_3 = vec4<bool>(true, arg_2.a.x, arg_2.a.x, false);
    let var_4 = func_2(func_2(func_5(var_2), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1188f, var_0, 1000f, var_0) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0, 145f, var_0, var_0)))))), reverseBits(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.a, u_input.a), max(u_input.a, 36768i), 45208i)), i32(-1i) * -min(u_input.a, -25220i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1913f, var_0, var_0, var_0) + vec4<f32>(-1897f, var_0, 1000f, var_0)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(591f, 277f, -1000f, 479f) * vec4<f32>(var_0, -194f, 171f, var_0))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(558f, var_0, var_0, var_0))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1000f, -677f, var_0) * vec4<f32>(var_0, var_0, var_0, var_0))))), firstTrailingBit(22267i), ~(~(-1i)));
    return StorageBuffer(var_2, vec2<i32>(u_input.a, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(~_wgslsmith_mod_vec3_u32(abs(vec3<u32>(85324u, 43636u, 62284u) << (vec3<u32>(0u, 0u, 1u) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(11450u, 1u), vec2<u32>(15367u, 0u)), countOneBits(4294967295u), _wgslsmith_mult_u32(39731u, 53940u))), vec3<bool>(true, true, true), func_5(func_4(false, vec2<u32>(1u, func_1(vec2<i32>(u_input.a, -1i), 3335u, Struct_1(vec3<bool>(false, true, false), 0u), -152f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1303f, 1000f, 1377f)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(278f, 2270f))))));
}

