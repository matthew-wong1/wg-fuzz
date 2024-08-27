struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<f32>,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec3<i32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: vec3<bool>) -> f32 {
    var var_0 = select(arg_2.yz, !vec2<bool>(arg_2.x, true), vec2<bool>(arg_2.x, true));
    let var_1 = Struct_2(~1u, -42783i, Struct_1(841f, false, arg_1.x, vec4<u32>(42312u, _wgslsmith_dot_vec3_u32(~vec3<u32>(12170u, 4294967295u, 1u), vec3<u32>(39688u, 73036u, 0u)), ~1u, 26973u), false), -(_wgslsmith_mod_i32(~345i, u_input.a.x ^ -2147483647i) << (abs(4294967295u) % 32u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.a) - 642f), 208f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.a, -242f) * vec2<f32>(198f, -754f))))));
    var var_3 = ~var_1.c.d.x;
    let var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1958f, var_1.c.a, var_1.c.a, var_1.c.a)) - vec4<f32>(var_1.c.a, 1621f, 994f, 228f)) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.a, -1306f, -1466f, -1809f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, -769f, var_1.c.a) * vec4<f32>(580f, var_1.c.a, var_1.c.a, -242f))))), var_1.c.e));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-690f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_1.c.a, -318f)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1262f))))))));
}

fn func_2(arg_0: vec4<i32>) -> vec4<i32> {
    var var_0 = ~arg_0;
    let var_1 = select(vec4<bool>(true, true, !(all(vec4<bool>(false, false, true, true)) & true), true), vec4<bool>(false, _wgslsmith_f_op_f32(-639f + -607f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-783f)) - _wgslsmith_f_op_f32(func_3(vec3<i32>(1i, var_0.x, -43835i), vec4<i32>(var_0.x, u_input.a.x, 0i, -30227i), vec3<bool>(false, false, false)))), !any(vec2<bool>(true, false)) | !any(vec4<bool>(true, false, false, false)), true), -1i > (max(1i, ~var_0.x) & u_input.a.x));
    var_0 = vec4<i32>(reverseBits(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(arg_0.xz, var_0.xx), 1i)) | ~_wgslsmith_dot_vec4_i32(arg_0, abs(vec4<i32>(-46161i, var_0.x, u_input.a.x, 1i))), -2147483647i, ~u_input.a.x, countOneBits(u_input.a.x));
    var_0 = arg_0;
    let var_2 = Struct_4(Struct_2(~countOneBits(~32584u), u_input.a.x, Struct_1(1000f, true, abs(arg_0.x), _wgslsmith_mod_vec4_u32(vec4<u32>(17364u, 36678u, 2350u, 4294967295u), ~vec4<u32>(37051u, 55880u, 0u, 9393u)), true), _wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, -22182i, arg_0.x), u_input.a, arg_0.yxw)), -abs(vec3<i32>(0i, arg_0.x, arg_0.x)))), false, ~(~vec3<i32>(_wgslsmith_add_i32(1i, u_input.a.x), max(var_0.x, 2147483647i), countOneBits(var_0.x))));
    return firstLeadingBit(~_wgslsmith_sub_vec4_i32(vec4<i32>(-arg_0.x, arg_0.x, ~1i, i32(-1i) * -9305i), firstLeadingBit(~vec4<i32>(1i, 1020i, var_2.a.b, arg_0.x))));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: bool) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-arg_1))), false, _wgslsmith_mod_i32(-2307i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-1i, 8310i, u_input.a.x, u_input.a.x), func_2(select(vec4<i32>(u_input.a.x, arg_0.x, 2147483647i, arg_0.x), vec4<i32>(21841i, arg_0.x, u_input.a.x, -28816i), vec4<bool>(arg_2, true, arg_2, arg_2))))), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), countOneBits(vec4<u32>(70312u, 28239u, 13017u, 1u))), 1u, ~(~14243u), 0u)), true);
    var_0 = Struct_1(arg_1, all(select(select(select(vec4<bool>(false, true, arg_2, true), vec4<bool>(arg_2, false, var_0.e, var_0.b), vec4<bool>(var_0.e, false, false, var_0.e)), select(vec4<bool>(arg_2, var_0.e, false, var_0.b), vec4<bool>(false, arg_2, false, arg_2), vec4<bool>(false, true, true, true)), !vec4<bool>(true, var_0.b, false, arg_2)), select(select(vec4<bool>(arg_2, var_0.e, var_0.b, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, arg_2, arg_2)), vec4<bool>(var_0.e, false, var_0.b, false), arg_2), all(select(vec2<bool>(var_0.e, var_0.b), vec2<bool>(var_0.b, false), vec2<bool>(arg_2, true))))), 51775i, ~vec4<u32>(var_0.d.x, ~1u, _wgslsmith_sub_u32(select(var_0.d.x, var_0.d.x, arg_2), _wgslsmith_sub_u32(43082u, 1u)), var_0.d.x), any(!vec3<bool>(var_0.e, arg_2, true)));
    var var_1 = Struct_2(abs(_wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(61359u, 8400u), var_0.d.zw), reverseBits(var_0.d.x))), var_0.c, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<i32>(2147483647i, -2147483647i, arg_0.x), vec4<i32>(71703i, -1i, 2147483647i, 0i), !vec3<bool>(true, var_0.b, var_0.b)))), (-1226f < _wgslsmith_f_op_f32(-var_0.a)) & var_0.e, firstTrailingBit(arg_0.x), _wgslsmith_mult_vec4_u32(firstTrailingBit(~vec4<u32>(162725u, var_0.d.x, 64914u, var_0.d.x)), vec4<u32>(var_0.d.x, _wgslsmith_dot_vec2_u32(var_0.d.yw, vec2<u32>(38636u, 1u)), ~var_0.d.x, ~var_0.d.x)), countOneBits(var_0.d.x | 4294967295u) != 35251u), -u_input.a.x);
    var_1 = Struct_2(~abs(var_1.a), -abs(-var_1.b), Struct_1(_wgslsmith_f_op_f32(-1215f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.a - var_0.a)))), var_1.c.e, _wgslsmith_sub_i32(1i, var_1.c.c), var_1.c.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2491f) - _wgslsmith_f_op_f32(-arg_1)) != arg_1), 0i);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(707f, -296f))), 1f)))), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), vec3<f32>(_wgslsmith_f_op_f32(1045f * _wgslsmith_f_op_f32(f32(-1f) * -962f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(347f)), _wgslsmith_f_op_f32(789f * -887f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), 206f, false)))), -882f))));
    var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))), var_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x)))) * vec3<f32>(_wgslsmith_f_op_f32(-1003f + -489f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -518f), var_0.x, true)), _wgslsmith_f_op_f32(func_1(~u_input.a, _wgslsmith_f_op_f32(func_3(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(-1i, u_input.a.x, 1i, 58099i), vec3<bool>(false, true, false))), true))))));
    let var_1 = vec4<i32>(func_2(~(~(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 0i) & vec4<i32>(-6328i, 1i, 2147483647i, 3240i)))).x, _wgslsmith_clamp_i32(i32(-1i) * -777i, -9781i & _wgslsmith_dot_vec2_i32(~vec2<i32>(-22408i, 1i), u_input.a.yy), 1i), u_input.a.x & abs(-1i ^ -u_input.a.x), u_input.a.x);
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, var_0.x, var_0.x))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 540f) * vec3<f32>(var_0.x, 624f, var_0.x))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(249f, -1371f, var_0.x)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-943f, var_0.x, 312f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1596f, 222f, -1000f)))))), select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), all(vec2<bool>(true, false))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
    let var_2 = Struct_4(Struct_2(1u, -(~62767i), Struct_1(_wgslsmith_f_op_f32(max(var_0.x, 1f)), true, -_wgslsmith_mod_i32(0i, u_input.a.x), _wgslsmith_clamp_vec4_u32(max(vec4<u32>(4294967295u, 97299u, 104522u, 1u), vec4<u32>(4294967295u, 4294967295u, 85046u, 1u)), countOneBits(vec4<u32>(62326u, 21955u, 0u, 0u)), ~vec4<u32>(33972u, 58006u, 64282u, 1u)), false), i32(-1i) * -var_1.x), select(var_1.x == -29423i, _wgslsmith_f_op_f32(func_3(u_input.a, vec4<i32>(var_1.x, -2147483647i, 4524i, 1i), vec3<bool>(false, false, false))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -350f) - _wgslsmith_f_op_f32(var_0.x + var_0.x)), true), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))));
}

