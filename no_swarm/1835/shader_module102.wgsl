struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_1) -> i32 {
    var var_0 = 1u;
    var_0 = ~u_input.a.x;
    var var_1 = -(~_wgslsmith_add_vec2_i32(vec2<i32>(74498i, _wgslsmith_div_i32(arg_3.c.x, arg_3.c.x)), reverseBits(_wgslsmith_clamp_vec2_i32(arg_3.c.yw, arg_3.c.yw, vec2<i32>(arg_3.c.x, arg_3.c.x)))));
    var_0 = _wgslsmith_dot_vec4_u32(arg_3.e | min(arg_3.e, vec4<u32>(arg_3.e.x, 45535u, 84518u, 8306u)), ~vec4<u32>(_wgslsmith_mult_u32(arg_0, u_input.a.x), 63652u, ~50818u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.e.x, u_input.a.x, arg_0, 4294967295u), vec4<u32>(u_input.a.x, 4294967295u, 0u, 148165u)))) & arg_3.d.x;
    var_0 = ~_wgslsmith_sub_u32(u_input.a.x, 4294967295u);
    return -3183i;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> vec4<u32> {
    let var_0 = arg_1;
    var var_1 = Struct_1(select(vec3<bool>(!any(vec4<bool>(false, arg_1.a.x, true, true)), true, !(arg_1.c.x > -1i)), !vec3<bool>(true, var_0.a.x, !var_0.a.x), var_0.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -577f)))), _wgslsmith_div_f32(1124f, var_0.b))), vec4<i32>(-1i) * -vec4<i32>(-449i, ~var_0.c.x, arg_1.c.x, func_3(u_input.a.x, 532f, vec4<bool>(true, arg_1.a.x, false, true), var_0)), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(reverseBits(arg_1.d), vec3<u32>(0u, arg_2, 1u)), arg_1.d) ^ var_0.e.xwy, select(_wgslsmith_clamp_vec4_u32(arg_1.e, vec4<u32>(30233u, 4294967295u, 20293u, 24968u), select(arg_1.e, vec4<u32>(u_input.a.x, u_input.a.x, arg_1.d.x, var_0.d.x), true)) | select(vec4<u32>(var_0.d.x, arg_2, var_0.d.x, 62075u), var_0.e, arg_1.a.x), vec4<u32>(1u, 36150u, 1u & var_0.d.x, u_input.a.x), all(!select(vec4<bool>(true, false, arg_1.a.x, false), vec4<bool>(true, true, var_0.a.x, arg_1.a.x), vec4<bool>(false, var_0.a.x, false, var_0.a.x)))));
    let var_2 = Struct_1(vec3<bool>(true | (true & all(vec4<bool>(var_1.a.x, var_0.a.x, false, false))), true, !(_wgslsmith_f_op_f32(select(var_1.b, arg_1.b, true)) < _wgslsmith_div_f32(var_1.b, -941f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * var_0.b), var_1.c, var_1.e.wzz & abs(~_wgslsmith_add_vec3_u32(var_1.e.xzw, vec3<u32>(var_0.d.x, 1u, u_input.a.x))), _wgslsmith_clamp_vec4_u32(arg_1.e, vec4<u32>(firstTrailingBit(u_input.a.x), arg_2, ~arg_2, 36292u), vec4<u32>(u_input.a.x, (var_1.e.x ^ u_input.a.x) & _wgslsmith_clamp_u32(u_input.a.x, 0u, 23094u), ~_wgslsmith_dot_vec3_u32(arg_1.e.zwx, vec3<u32>(0u, arg_1.d.x, 4294967295u)), 12021u)));
    var_1 = Struct_1(vec3<bool>((firstLeadingBit(0u) << (1u % 32u)) <= _wgslsmith_mod_u32(var_1.d.x << (40658u % 32u), var_2.e.x), var_2.a.x, !(select(var_0.d.x, u_input.a.x, true) >= 63807u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -776f))), var_2.c, _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, ~_wgslsmith_div_u32(var_2.d.x, 15173u)), firstLeadingBit(_wgslsmith_clamp_vec3_u32(~var_0.d, _wgslsmith_div_vec3_u32(vec3<u32>(15626u, arg_1.e.x, 1u), vec3<u32>(var_1.d.x, arg_1.e.x, u_input.a.x)), vec3<u32>(38154u, 71362u, arg_1.e.x) & u_input.a))), ~var_2.e);
    var var_3 = vec4<i32>(~arg_0, -(1126i & ~(~arg_1.c.x)), arg_1.c.x, ~(abs(_wgslsmith_sub_i32(var_1.c.x, 2147483647i)) & abs(firstTrailingBit(-2147483647i))));
    return vec4<u32>(arg_1.e.x >> (arg_2 % 32u), reverseBits(countOneBits(_wgslsmith_dot_vec2_u32(var_0.d.yz, vec2<u32>(var_0.d.x, 42453u)))), reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.e.x, _wgslsmith_mult_u32(0u, 92115u)), max(vec2<u32>(var_0.d.x, 87082u), _wgslsmith_mult_vec2_u32(var_0.e.xx, vec2<u32>(var_0.d.x, var_1.e.x))))), var_2.e.x);
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_1(!select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), 1249f <= _wgslsmith_f_op_f32(min(-1332f, arg_0))), _wgslsmith_f_op_f32(-arg_0), vec4<i32>(min(~35558i, _wgslsmith_mod_i32(-1i, -398i)), -41767i, 34741i, ~1i), vec3<u32>(_wgslsmith_div_u32(~35816u, 61277u), 1u, ~u_input.a.x), func_2(-1i, Struct_1(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), arg_0, reverseBits(vec4<i32>(1i, 1i, 1i, 1i)), u_input.a, ~(vec4<u32>(u_input.a.x, 1u, 78418u, u_input.a.x) << (vec4<u32>(31811u, 84804u, u_input.a.x, 22906u) % vec4<u32>(32u)))), u_input.a.x));
    var var_1 = _wgslsmith_f_op_f32(round(-1077f));
    var_0 = Struct_1(select(var_0.a, !vec3<bool>(false, var_0.a.x, false), any(!vec4<bool>(false, var_0.a.x, true, var_0.a.x))), 517f, (vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(vec4<i32>(0i, var_0.c.x, 0i, var_0.c.x), vec4<i32>(-4452i, var_0.c.x, 1i, 0i))) & vec4<i32>(-2147483647i, 0i, var_0.c.x, func_3(var_0.e.x, arg_0, vec4<bool>(var_0.a.x, true, true, var_0.a.x), Struct_1(vec3<bool>(var_0.a.x, false, false), var_0.b, var_0.c, vec3<u32>(19782u, u_input.a.x, u_input.a.x), var_0.e)) ^ ~var_0.c.x), select(func_2(1i, Struct_1(!vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), _wgslsmith_f_op_f32(round(var_0.b)), var_0.c, ~vec3<u32>(4294967295u, 1u, 4294967295u), var_0.e >> (vec4<u32>(u_input.a.x, u_input.a.x, 23849u, var_0.e.x) % vec4<u32>(32u))), ~(~var_0.e.x)).ywy, var_0.d, !(true == all(var_0.a))), var_0.e);
    var var_2 = _wgslsmith_clamp_u32(u_input.a.x & 0u, firstLeadingBit(_wgslsmith_sub_u32(~var_0.e.x, max(var_0.e.x, u_input.a.x))), ~abs(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.e.x, 3785u, 16769u, 9297u), vec4<u32>(34555u, var_0.e.x, 67511u, var_0.d.x)))));
    var_0 = Struct_1(vec3<bool>(any(var_0.a.zx), all(vec3<bool>(all(vec2<bool>(var_0.a.x, var_0.a.x)), !var_0.a.x, any(var_0.a))), var_0.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(211f))) * _wgslsmith_f_op_f32(sign(var_0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-770f + -156f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b + 955f), _wgslsmith_f_op_f32(f32(-1f) * -1340f))))), var_0.c, var_0.e.zyx, firstTrailingBit(func_2(abs(countOneBits(var_0.c.x)), Struct_1(select(var_0.a, vec3<bool>(true, var_0.a.x, false), vec3<bool>(true, var_0.a.x, true)), _wgslsmith_f_op_f32(var_0.b - var_0.b), var_0.c, _wgslsmith_clamp_vec3_u32(u_input.a, var_0.d, u_input.a), firstLeadingBit(var_0.e)), _wgslsmith_add_u32(u_input.a.x, var_0.d.x | u_input.a.x))));
    return Struct_1(vec3<bool>(!(!var_0.a.x), var_0.a.x, var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b)))), -vec4<i32>(_wgslsmith_clamp_i32(~(-11959i), _wgslsmith_dot_vec4_i32(var_0.c, vec4<i32>(-2147483647i, -15175i, -2147483647i, var_0.c.x)), var_0.c.x), -2147483647i, 8092i, -2147483647i), _wgslsmith_div_vec3_u32(abs(firstTrailingBit(u_input.a)), max(u_input.a, _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(var_0.d, var_0.d, vec3<u32>(var_0.e.x, 0u, 4294967295u)), vec3<u32>(u_input.a.x, 94578u, 107801u)))), vec4<u32>(abs(4294967295u), ~1u, var_0.d.x, ~(~4294967295u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = true;
    var var_1 = !(!vec2<bool>(arg_0.a.x, all(select(vec4<bool>(true, arg_3.a.x, true, true), vec4<bool>(true, false, true, arg_3.a.x), arg_3.a.x))));
    var_1 = select(!func_1(func_1(_wgslsmith_f_op_f32(-405f - arg_3.b)).b).a.yz, vec2<bool>(arg_2.a.x, !(29707i > arg_0.c.x) || all(select(arg_2.a.yy, arg_0.a.zz, false))), !(!arg_2.a.zz));
    let var_2 = firstLeadingBit(_wgslsmith_div_u32(min(arg_0.e.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, arg_3.d.x, 21760u, arg_0.d.x), abs(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))), countOneBits(firstLeadingBit(6064u))));
    return Struct_1(func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), arg_3.b))).a, -1747f, arg_3.c, arg_3.d, arg_2.e);
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> StorageBuffer {
    var var_0 = vec4<i32>(2147483647i, -abs(countOneBits(_wgslsmith_add_i32(arg_0.c.x, 1i))), arg_0.c.x, -arg_0.c.x);
    let var_1 = func_1(_wgslsmith_f_op_f32(f32(-1f) * -1609f));
    var_0 = -vec4<i32>(32813i, var_1.c.x, ~var_1.c.x, _wgslsmith_mult_i32(var_0.x | arg_0.c.x, 2147483647i)) | firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(var_0.x, arg_0.c.x), arg_0.c.x, ~17546i, func_4(arg_0, vec3<f32>(176f, -123f, var_1.b), var_1, arg_0).c.x), var_1.c));
    var var_2 = func_4(func_4(Struct_1(func_1(arg_1).a, 1327f, _wgslsmith_div_vec4_i32(var_1.c, var_1.c) & arg_0.c, max(vec3<u32>(78134u, var_1.d.x, 567u), ~u_input.a), vec4<u32>(arg_0.d.x, countOneBits(4294967295u), 81984u, u_input.a.x | 66568u)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, -1131f))))), var_1, func_1(_wgslsmith_f_op_f32(-func_1(arg_0.b).b))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, arg_1, var_1.b) - vec3<f32>(250f, arg_1, 1000f)))) * vec3<f32>(var_1.b, _wgslsmith_f_op_f32(floor(1927f)), arg_0.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1, arg_1, 376f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-354f, 2592f, arg_0.b))))))), var_1, var_1);
    var var_3 = _wgslsmith_f_op_f32(var_2.b * arg_0.b);
    return StorageBuffer(abs(var_2.c.x) ^ ~func_4(var_1, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 1087f, var_2.b) + vec3<f32>(756f, 310f, var_1.b)), Struct_1(vec3<bool>(var_1.a.x, true, false), 677f, vec4<i32>(var_2.c.x, arg_0.c.x, arg_0.c.x, var_0.x), vec3<u32>(4294967295u, 0u, var_1.d.x), var_2.e), arg_0).c.x, 1i, -1688f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = select(-vec3<i32>(-4662i, 56027i, 0i << (0u % 32u)) & ((abs(vec3<i32>(-24013i, 0i, 1i)) << (~u_input.a % vec3<u32>(32u))) << (~_wgslsmith_div_vec3_u32(u_input.a, u_input.a) % vec3<u32>(32u))), vec3<i32>(24065i, ~(-12449i), -2147483647i), true);
    var_1 = -(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(40891i, var_1.x, -18857i), vec3<i32>(var_1.x, 52893i, 42592i)), vec3<i32>(i32(-1i) * -1i, -1i, -2147483647i)) >> (u_input.a % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = func_5(func_4(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(626f * -2662f) - _wgslsmith_f_op_f32(-1994f * -1256f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-417f, 995f, -1600f))), vec3<f32>(_wgslsmith_div_f32(594f, 284f), -684f, _wgslsmith_f_op_f32(min(673f, -301f))))), func_1(_wgslsmith_f_op_f32(-833f + _wgslsmith_f_op_f32(-2153f + -1000f))), func_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-204f)))))), 1533f);
}

