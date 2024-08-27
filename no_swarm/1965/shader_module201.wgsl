struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1058f - -1678f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1035f))))));
    var var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(select(_wgslsmith_mod_vec4_i32(vec4<i32>(8356i, arg_0, u_input.a, u_input.a), vec4<i32>(u_input.a, 0i, arg_0, 77164i)), -vec4<i32>(arg_0, u_input.a, -23522i, 41542i), select(u_input.a, -3250i, true) >= (u_input.a | 6906i)), ~vec4<i32>(reverseBits(u_input.a), -2147483647i, select(arg_0, 8564i, false), abs(2147483647i))), firstTrailingBit(firstLeadingBit(~(-vec4<i32>(-7151i, arg_0, arg_0, -12162i)))));
    let var_2 = vec3<i32>(_wgslsmith_div_i32(~1i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, -1i) | vec2<i32>(35946i, u_input.a), vec2<i32>(arg_0, u_input.a) ^ vec2<i32>(u_input.a, -1616i))), -54420i, ~(-(0i >> (u_input.b % 32u)))) << (_wgslsmith_sub_vec3_u32(vec3<u32>(reverseBits(_wgslsmith_mod_u32(1u, u_input.c)), 33461u, u_input.b), vec3<u32>(select(u_input.c, 4294967295u, true), ~firstLeadingBit(u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 25307u, u_input.b, 1u), ~vec4<u32>(u_input.c, 82015u, u_input.b, u_input.c)))) % vec3<u32>(32u));
    var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -338f)) + _wgslsmith_f_op_f32(f32(-1f) * -102f))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1000f)))))));
    var_1 = _wgslsmith_dot_vec3_i32(-(abs(var_2 << (vec3<u32>(u_input.b, u_input.c, u_input.b) % vec3<u32>(32u))) >> (~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 0u, 20071u), vec3<u32>(u_input.b, u_input.b, u_input.c)) % vec3<u32>(32u))), -var_2);
    return _wgslsmith_dot_vec4_u32(vec4<u32>(44748u, firstLeadingBit(4294967295u), _wgslsmith_div_u32(1u, 4294967295u), u_input.c), vec4<u32>(~1u, 0u, countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.b), vec3<u32>(4294967295u, 32660u, 99079u))), u_input.c << (0u % 32u))) ^ ((~(~40270u) | u_input.c) & u_input.b);
}

fn func_2(arg_0: vec4<i32>, arg_1: bool) -> Struct_1 {
    var var_0 = vec3<u32>(~(~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(51738u, 0u, 60174u), vec3<u32>(77966u, u_input.c, u_input.c)), vec3<u32>(u_input.c, 17564u, 0u))), select(_wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, ~59366u, ~u_input.c), _wgslsmith_sub_u32(_wgslsmith_mult_u32(20049u, u_input.b), ~u_input.b)), 4294967295u ^ ~func_3(-69545i), arg_1 & all(vec4<bool>(arg_1, true, arg_1, arg_1))), 1u);
    let var_1 = arg_0.x;
    var var_2 = !(!select(vec2<bool>(any(vec4<bool>(arg_1, arg_1, arg_1, arg_1)), true), select(select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, false), vec2<bool>(true, arg_1)), vec2<bool>(true, arg_1), vec2<bool>(true, true)), !all(vec3<bool>(true, true, true))));
    var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(9652u, u_input.c, _wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(var_0.zz, vec2<u32>(527u, 39170u)), vec2<u32>(90517u, _wgslsmith_clamp_u32(0u, 0u, var_0.x)))), select(firstLeadingBit(vec3<u32>(var_0.x, var_0.x, 4294967295u)), max(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, var_0.x, 12768u) << (vec3<u32>(0u, var_0.x, u_input.c) % vec3<u32>(32u)), abs(vec3<u32>(var_0.x, 39975u, u_input.c)), select(vec3<u32>(var_0.x, 53060u, u_input.b), vec3<u32>(var_0.x, 36598u, 18335u), var_2.x)), min(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, u_input.c, var_0.x), vec3<u32>(0u, 36220u, u_input.c)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, 37683u, var_0.x), vec3<u32>(84847u, 0u, u_input.b)))), !vec3<bool>(true, select(true, var_2.x, arg_1), all(vec2<bool>(false, arg_1)))), vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(11228u, reverseBits(75250u)), ~firstTrailingBit(36248u)), 4294967295u, 18117u));
    let var_3 = u_input.c;
    return Struct_1(abs(46845u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -780f)))), var_3, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1575f, 1000f, -440f, -271f) - vec4<f32>(1729f, -1199f, 218f, 260f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-495f, 250f, 962f, -1278f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(563f - -1634f), 1f, _wgslsmith_f_op_f32(f32(-1f) * -368f))))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec2<i32>) -> f32 {
    var var_0 = u_input.b;
    var var_1 = all(vec4<bool>(true, !all(vec2<bool>(true, true)) & ((i32(-1i) * -2147483647i) == ~arg_0), true, any(!select(vec2<bool>(false, true), vec2<bool>(true, true), false))));
    let var_2 = _wgslsmith_f_op_f32(round(-872f));
    var_1 = false;
    let var_3 = func_2(vec4<i32>(max(countOneBits(_wgslsmith_mult_i32(arg_0, arg_3.x)), -8992i), -(_wgslsmith_dot_vec3_i32(arg_2, arg_2) << (2569u % 32u)), _wgslsmith_div_i32(-2147483647i, ~_wgslsmith_mod_i32(arg_0, -2147483647i)), -1i), true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1339f));
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec2_i32(~_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(0i, u_input.a)), _wgslsmith_mult_vec2_i32(vec2<i32>(28611i, u_input.a), vec2<i32>(7674i, u_input.a))), _wgslsmith_mult_vec2_i32(vec2<i32>(~16614i, 1i), vec2<i32>(u_input.a, ~(-8458i)))) >> (vec2<u32>(~0u, 1u) % vec2<u32>(32u));
    var var_1 = Struct_1(~(~arg_1.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.d.x))))), ((1u & ~u_input.c) & u_input.c) | 57741u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.d) + _wgslsmith_f_op_vec4_f32(abs(arg_1.d))));
    let var_2 = Struct_1(u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-292f, -253f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x)))), 48692u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.d))), arg_1.d, !(!vec4<bool>(arg_0, true, arg_0, true)))));
    var var_3 = arg_1;
    let var_4 = arg_1;
    return Struct_1(1u, var_3.d.x, _wgslsmith_mult_u32(countOneBits(_wgslsmith_mod_u32(1u, u_input.c)), _wgslsmith_dot_vec2_u32(select(~vec2<u32>(7232u, 41380u), vec2<u32>(47816u, var_3.a), false), ~vec2<u32>(u_input.c, var_2.a))), vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_1.b)), var_4.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.d.x))) * -381f), var_3.d.x));
}

fn func_1() -> StorageBuffer {
    var var_0 = func_5(_wgslsmith_f_op_f32(step(673f, _wgslsmith_f_op_f32(453f - -2780f))) >= _wgslsmith_f_op_f32(func_4(u_input.a, func_2(-vec4<i32>(16264i, u_input.a, -26815i, u_input.a), true), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-3972i, -1i, -2147483647i)), -vec3<i32>(u_input.a, u_input.a, 2147483647i)), abs(-vec2<i32>(u_input.a, 2147483647i)))), func_2(vec4<i32>(~u_input.a, -978i, u_input.a, -2147483647i), !(~74048u <= u_input.b)));
    var_0 = Struct_1(u_input.c, var_0.b, _wgslsmith_mod_u32(3026u << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, 17602u) ^ vec2<u32>(0u, 1u), vec2<u32>(var_0.c, u_input.b) << (vec2<u32>(var_0.a, 4294967295u) % vec2<u32>(32u))) % 32u), var_0.a), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_0.d)) + vec4<f32>(var_0.b, var_0.b, var_0.b, 1516f))))));
    let var_1 = func_2(_wgslsmith_div_vec4_i32(abs(vec4<i32>(0i, -14217i, u_input.a, u_input.a) << (vec4<u32>(u_input.c, 4294967295u, u_input.c, 31778u) % vec4<u32>(32u))) & ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-65680i, 0i, u_input.a, 22951i), vec4<i32>(u_input.a, -4285i, 12725i, 0i), vec4<i32>(-1i, u_input.a, u_input.a, 1i)), min(vec4<i32>(0i, u_input.a, -2360i, u_input.a) ^ vec4<i32>(u_input.a, 0i, 0i, u_input.a), vec4<i32>(1i, u_input.a, u_input.a, u_input.a)) >> (min(vec4<u32>(70473u, 0u, 5757u, u_input.b), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 2264u, 24725u, var_0.a), vec4<u32>(0u, 17139u, 5659u, 0u))) % vec4<u32>(32u))), all(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, false), all(vec4<bool>(true, false, false, true)))) || any(vec3<bool>(true, true, true)));
    let var_2 = var_1;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.d.yzw * vec3<f32>(var_0.b, -2354f, -181f))), vec3<f32>(_wgslsmith_f_op_f32(select(var_0.b, 2058f, true)), var_1.d.x, _wgslsmith_f_op_f32(-var_2.b))), vec3<f32>(_wgslsmith_f_op_f32(step(-639f, _wgslsmith_f_op_f32(f32(-1f) * -1210f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_1.b)))), _wgslsmith_f_op_f32(ceil(447f))), vec3<bool>(select(var_1.a != 4294967295u, true, true), all(vec4<bool>(true, false, false, true)) | true, true))));
    return StorageBuffer(u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, 153f, var_1.b, -520f) - var_0.d), _wgslsmith_f_op_vec4_f32(-var_1.d))) * _wgslsmith_f_op_vec4_f32(-var_0.d))), 56848u, _wgslsmith_dot_vec3_u32(vec3<u32>(max(u_input.c, var_1.a), func_5(true, var_1).a, func_5(false, var_1).a), vec3<u32>(0u, _wgslsmith_div_u32(4294967295u, var_0.a), 62370u)) >> ((u_input.b >> (~firstTrailingBit(38335u) % 32u)) % 32u), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -483f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -617f) - _wgslsmith_f_op_f32(-var_3.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

