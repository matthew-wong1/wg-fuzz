struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<i32>,
    d: bool,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec2<f32>,
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec3<u32> {
    let var_0 = min(vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(vec4<i32>(arg_1, 17829i, 41360i, 16368i) | vec4<i32>(arg_0.e.x, 2147483647i, 2147483647i, u_input.b), firstLeadingBit(vec4<i32>(0i, u_input.a, arg_0.c.x, arg_1))), min(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, 0i, -7797i >> (arg_0.a % 32u), 0i), countOneBits(vec4<i32>(-41828i, -1i, -2147483647i, -20634i)) << ((vec4<u32>(arg_0.a, 4294967295u, arg_0.a, 116770u) & vec4<u32>(arg_0.a, 83795u, 14576u, 0u)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(2147483647i, 3917i, -2019i, arg_1)), vec4<i32>(arg_0.c.x, arg_0.c.x, -1i, 2147483647i), -vec4<i32>(-1i, u_input.b, u_input.b, 12286i))), _wgslsmith_div_vec4_i32(select(~vec4<i32>(arg_0.e.x, u_input.a, -2147483647i, -69804i), vec4<i32>(-30609i, u_input.a, 2147483647i, arg_1), select(vec4<bool>(arg_0.b, arg_0.b, arg_0.d, arg_0.d), vec4<bool>(false, arg_0.b, true, arg_0.b), vec4<bool>(false, false, true, arg_0.b))), vec4<i32>(u_input.a >> (arg_0.a % 32u), ~arg_1, ~(-8461i), _wgslsmith_mult_i32(arg_1, arg_0.e.x)))));
    var var_1 = abs(reverseBits(vec3<u32>(24101u, 50743u, _wgslsmith_add_u32(arg_0.a, select(0u, arg_0.a, false)))));
    var_1 = max(vec3<u32>(4294967295u & var_1.x, _wgslsmith_div_u32(1u, arg_0.a), ~arg_0.a), vec3<u32>(0u, ~select(85845u, arg_0.a, true), 86501u));
    let var_2 = -(~_wgslsmith_mod_vec3_i32(vec3<i32>(max(u_input.a, -58133i), u_input.b, _wgslsmith_div_i32(24033i, -7439i)), ~select(var_0.xyw, arg_0.e, false)));
    var var_3 = !(!vec4<bool>(true, !(!arg_0.b), all(!vec4<bool>(true, false, arg_0.d, arg_0.b)), arg_0.d));
    return _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(~countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.x, arg_0.a, 77815u), vec3<u32>(var_1.x, arg_0.a, 0u))), vec3<u32>(_wgslsmith_div_u32(arg_0.a, 1u) ^ 1u, _wgslsmith_clamp_u32(0u, arg_0.a, 14633u) & 45629u, 0u << (~var_1.x % 32u))), ~vec3<u32>(10258u, ~var_1.x >> (_wgslsmith_clamp_u32(67496u, arg_0.a, 0u) % 32u), abs(0u)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<u32>) -> u32 {
    var var_0 = arg_0;
    let var_1 = false;
    var_0 = vec3<bool>(!(min(4294967295u, arg_2.x) == 40247u) | !(!var_0.x), ((-2147483647i | _wgslsmith_mod_i32(2147483647i, u_input.a)) ^ min(-24264i, -47483i)) != _wgslsmith_div_i32(-10711i, -(u_input.b | u_input.b)), !var_0.x);
    var_0 = !vec3<bool>(-(arg_1.e.x | u_input.b) >= arg_1.e.x, true, true);
    var var_2 = var_1;
    return select(arg_2.x, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(select(~vec3<u32>(arg_1.a, arg_2.x, arg_2.x), arg_2, vec3<bool>(var_1, arg_0.x, true)), _wgslsmith_clamp_vec3_u32(~arg_2, ~vec3<u32>(arg_1.a, 50593u, 33640u), vec3<u32>(arg_2.x, arg_1.a, 4294967295u))), abs(arg_1.a)), true);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> vec3<i32> {
    var var_0 = min(vec4<u32>(func_4(vec3<bool>(!arg_1.b, arg_2.c.x >= arg_0.e.x, arg_0.b), Struct_1(reverseBits(4294967295u), !arg_1.d, ~arg_0.c, false, firstLeadingBit(vec3<i32>(arg_1.e.x, u_input.b, -2147483647i))), func_3(Struct_1(1u, arg_0.d, vec2<i32>(arg_0.c.x, arg_1.c.x), arg_1.d, arg_1.e), u_input.b)), arg_0.a, arg_3.x, _wgslsmith_mult_u32(abs(1u), _wgslsmith_clamp_u32(4294967295u, arg_0.a, ~arg_1.a))), firstTrailingBit(_wgslsmith_mult_vec4_u32(firstLeadingBit(~vec4<u32>(arg_2.a, 1u, 36894u, 4294967295u)), vec4<u32>(_wgslsmith_sub_u32(arg_0.a, 72732u), ~0u, ~1u, func_4(vec3<bool>(false, true, true), Struct_1(0u, false, vec2<i32>(arg_0.c.x, 28157i), false, vec3<i32>(arg_0.e.x, 27909i, arg_1.c.x)), arg_3)))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -758f) - _wgslsmith_f_op_f32(floor(-323f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-336f * -449f), 1f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(529f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)))))), 401f, -405f, _wgslsmith_f_op_f32(-119f * -1029f));
    var var_2 = arg_2;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(699f, var_1.x) * _wgslsmith_f_op_f32(var_1.x * var_1.x))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(var_1.x - var_1.x))))))));
    var_0 = ~_wgslsmith_mult_vec4_u32(firstLeadingBit(~(~vec4<u32>(var_2.a, 122677u, 48885u, arg_2.a))), vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 15938u), vec2<u32>(var_0.x, var_2.a)), ~(~8130u), arg_0.a, var_2.a));
    return firstLeadingBit(abs(reverseBits(vec3<i32>(_wgslsmith_dot_vec3_i32(var_2.e, vec3<i32>(-1i, 0i, 12921i)), 0i & var_2.e.x, _wgslsmith_clamp_i32(arg_1.e.x, var_2.e.x, u_input.b)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    return Struct_1(_wgslsmith_div_u32(_wgslsmith_mod_u32(firstTrailingBit(firstTrailingBit(68774u)), 42192u), 111922u | func_4(!vec3<bool>(arg_0.d, true, arg_1.b), arg_0, vec3<u32>(0u, arg_1.a, arg_2))), any(vec3<bool>(!(!arg_0.d), arg_0.c.x <= -arg_1.c.x, arg_0.b)), arg_1.c, select(true, false, false), ~(-(~vec3<i32>(arg_0.c.x, arg_1.e.x, u_input.b))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: i32) -> i32 {
    var var_0 = -_wgslsmith_mod_i32(1i >> (arg_1.x % 32u), u_input.a << (arg_1.x % 32u)) ^ -29696i;
    var_0 = u_input.a << (~(0u ^ arg_1.x) % 32u);
    var var_1 = func_5(Struct_1(~(~23533u) ^ _wgslsmith_sub_u32(max(14489u, arg_1.x), arg_1.x), true, _wgslsmith_mult_vec2_i32(-max(vec2<i32>(-1i, u_input.a), vec2<i32>(u_input.a, 1i)), ~(~vec2<i32>(u_input.a, 0i))), !(arg_0.x <= _wgslsmith_f_op_f32(f32(-1f) * -1147f)), _wgslsmith_clamp_vec3_i32(func_2(Struct_1(arg_1.x, true, vec2<i32>(-57530i, u_input.a), false, vec3<i32>(-2147483647i, arg_2, u_input.b)), Struct_1(arg_1.x, false, vec2<i32>(u_input.b, u_input.a), true, vec3<i32>(-36414i, arg_2, u_input.a)), Struct_1(arg_1.x, true, vec2<i32>(arg_2, arg_2), true, vec3<i32>(0i, -1i, arg_2)), select(vec3<u32>(1u, arg_1.x, arg_1.x), vec3<u32>(arg_1.x, 4294967295u, arg_1.x), vec3<bool>(false, false, true))), _wgslsmith_sub_vec3_i32(vec3<i32>(3421i, u_input.b, arg_2), vec3<i32>(6544i, 2147483647i, -37203i)) << (~vec3<u32>(arg_1.x, 231u, 20259u) % vec3<u32>(32u)), vec3<i32>(arg_2, arg_2, u_input.a))), Struct_1(~arg_1.x, true, vec2<i32>(~(1i >> (arg_1.x % 32u)), firstTrailingBit(reverseBits(u_input.a))), true, vec3<i32>(_wgslsmith_mod_i32(-2147483647i, -1i), countOneBits(u_input.a) >> (firstLeadingBit(arg_1.x) % 32u), countOneBits(_wgslsmith_sub_i32(-34514i, u_input.a)))), func_4(vec3<bool>(true, false, true), Struct_1(max(arg_1.x, ~arg_1.x), true, -vec2<i32>(69107i, 0i) & _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.a), vec2<i32>(9021i, u_input.a)), any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), select(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.b, arg_2), vec3<i32>(13050i, arg_2, 45361i)), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, arg_2, arg_2), vec3<i32>(-1i, u_input.a, -2147483647i)), vec3<bool>(true, true, true))), vec3<u32>(49872u >> (_wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(arg_1.x, arg_1.x)) % 32u), (4294967295u | arg_1.x) | 52448u, ~55336u)));
    var_1 = func_5(func_5(func_5(Struct_1(firstLeadingBit(1u), any(vec4<bool>(var_1.b, var_1.b, true, var_1.d)), var_1.e.xx, true, vec3<i32>(1i, var_1.e.x, 1i)), Struct_1(var_1.a, !var_1.d, _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, var_1.c.x), vec2<i32>(-12321i, arg_2)), var_1.d, _wgslsmith_sub_vec3_i32(vec3<i32>(13181i, u_input.b, 2147483647i), var_1.e)), _wgslsmith_mult_u32(4294967295u, ~arg_1.x)), func_5(func_5(Struct_1(arg_1.x, var_1.d, vec2<i32>(var_1.e.x, arg_2), false, vec3<i32>(34792i, 38490i, arg_2)), func_5(Struct_1(var_1.a, var_1.d, var_1.e.zx, false, vec3<i32>(arg_2, 0i, u_input.b)), Struct_1(arg_1.x, var_1.b, var_1.c, var_1.d, vec3<i32>(var_1.e.x, 93961i, var_1.e.x)), 4294967295u), arg_1.x), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 32021u, 77291u), vec3<u32>(arg_1.x, arg_1.x, arg_1.x)), true, _wgslsmith_add_vec2_i32(vec2<i32>(-68406i, u_input.b), var_1.e.xx), false, var_1.e), ~var_1.a), _wgslsmith_add_u32(arg_1.x, 4294967295u)), Struct_1(abs(15803u), all(!(!vec3<bool>(var_1.d, true, var_1.b))), reverseBits(vec2<i32>(max(27247i, u_input.b), arg_2 >> (arg_1.x % 32u))), false, min(firstTrailingBit(var_1.e), var_1.e ^ vec3<i32>(var_1.c.x, 1i, u_input.b)) >> (select(~vec3<u32>(0u, 39885u, arg_1.x), firstTrailingBit(vec3<u32>(var_1.a, var_1.a, var_1.a)), !vec3<bool>(var_1.b, true, var_1.b)) % vec3<u32>(32u))), ~41846u);
    var_0 = reverseBits(0i >> (func_5(func_5(Struct_1(3503u, var_1.d, vec2<i32>(17168i, var_1.c.x), false, var_1.e), func_5(Struct_1(var_1.a, true, var_1.c, var_1.d, var_1.e), Struct_1(4294967295u, false, vec2<i32>(0i, var_1.e.x), var_1.b, var_1.e), 1u), var_1.a), Struct_1(arg_1.x >> (11113u % 32u), all(vec2<bool>(var_1.d, false)), _wgslsmith_mod_vec2_i32(var_1.e.yy, vec2<i32>(-41931i, u_input.b)), false, vec3<i32>(arg_2, -1i, arg_2)), ~(~arg_1.x)).a % 32u));
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(1u, !(_wgslsmith_sub_u32(3326u, 1u) != _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(0u, 13260u, 4294967295u)), vec3<u32>(1u, 13609u, 19720u))), select(~_wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(26878i, -4532i)), _wgslsmith_mult_vec2_i32(vec2<i32>(5336i, u_input.a), vec2<i32>(-6290i, u_input.a))), _wgslsmith_sub_vec2_i32(abs(-vec2<i32>(u_input.b, -1i)), ~min(vec2<i32>(u_input.b, 1772i), vec2<i32>(u_input.b, u_input.b))), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(-34996i, u_input.b)), countOneBits(1i)) < _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.b, -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.b, u_input.a, 0i), vec4<i32>(43848i, -50994i, 2147483647i, u_input.a)))), false, vec3<i32>(~func_1(vec4<f32>(-365f, -1253f, 590f, -1305f), vec2<u32>(1u, 1u), _wgslsmith_clamp_i32(3731i, 2147483647i, u_input.b)), 1182i, ~u_input.b));
    var_0 = func_5(func_5(func_5(func_5(Struct_1(var_0.a, true, var_0.c, var_0.d, vec3<i32>(-1i, u_input.b, var_0.c.x)), func_5(Struct_1(1u, true, var_0.c, var_0.d, var_0.e), Struct_1(var_0.a, false, vec2<i32>(-2147483647i, u_input.a), var_0.b, var_0.e), 11026u), var_0.a), Struct_1(1u, var_0.d, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.a), var_0.c), all(vec3<bool>(true, true, false)), vec3<i32>(u_input.a, 2147483647i, u_input.a)), ~(~2604u)), func_5(func_5(Struct_1(4294967295u, false, vec2<i32>(var_0.c.x, u_input.a), true, vec3<i32>(var_0.c.x, u_input.a, var_0.e.x)), Struct_1(51353u, true, vec2<i32>(var_0.c.x, var_0.c.x), var_0.b, vec3<i32>(var_0.e.x, 0i, 66616i)), 0u), Struct_1(4981u ^ var_0.a, var_0.b, func_2(Struct_1(var_0.a, var_0.d, var_0.c, var_0.b, var_0.e), Struct_1(0u, var_0.b, var_0.c, false, var_0.e), Struct_1(4294967295u, true, vec2<i32>(48320i, 34262i), true, var_0.e), vec3<u32>(4294967295u, var_0.a, 45921u)).xy, var_0.d, _wgslsmith_sub_vec3_i32(var_0.e, vec3<i32>(var_0.e.x, u_input.b, 1i))), ~firstLeadingBit(1u)), ~0u), func_5(func_5(func_5(func_5(Struct_1(var_0.a, var_0.d, var_0.c, var_0.d, vec3<i32>(var_0.c.x, -12695i, u_input.a)), Struct_1(0u, var_0.b, var_0.c, true, var_0.e), var_0.a), Struct_1(4294967295u, var_0.d, vec2<i32>(9028i, -2147483647i), true, var_0.e), var_0.a), func_5(func_5(Struct_1(var_0.a, false, vec2<i32>(u_input.b, u_input.a), false, vec3<i32>(2147483647i, -2147483647i, -2147483647i)), Struct_1(var_0.a, true, var_0.e.xz, false, var_0.e), 10797u), Struct_1(var_0.a, var_0.b, vec2<i32>(var_0.e.x, -26177i), var_0.b, vec3<i32>(u_input.b, var_0.c.x, var_0.c.x)), _wgslsmith_mult_u32(4294967295u, var_0.a)), _wgslsmith_div_u32(~55783u, var_0.a | var_0.a)), func_5(func_5(func_5(Struct_1(1u, var_0.b, var_0.e.xz, false, vec3<i32>(var_0.c.x, u_input.b, var_0.c.x)), Struct_1(0u, false, vec2<i32>(2147483647i, u_input.b), var_0.d, var_0.e), 8591u), Struct_1(4294967295u, false, var_0.c, true, vec3<i32>(-30087i, -1i, -2147483647i)), var_0.a), Struct_1(9758u, func_5(Struct_1(var_0.a, var_0.d, vec2<i32>(var_0.e.x, u_input.b), var_0.b, vec3<i32>(u_input.a, var_0.c.x, 2147483647i)), Struct_1(22926u, var_0.b, vec2<i32>(0i, var_0.c.x), true, vec3<i32>(u_input.b, 8859i, 2147483647i)), var_0.a).d, select(vec2<i32>(u_input.a, var_0.e.x), var_0.e.xy, vec2<bool>(var_0.d, var_0.b)), all(vec2<bool>(true, true)), var_0.e & var_0.e), _wgslsmith_div_u32(var_0.a, var_0.a)), ~9334u), 4294967295u);
    var_0 = Struct_1(var_0.a, true, vec2<i32>(-var_0.e.x, _wgslsmith_clamp_i32(1i, 0i, max(var_0.c.x, -2147483647i)) ^ _wgslsmith_mod_i32(_wgslsmith_mult_i32(var_0.c.x, var_0.e.x), u_input.a >> (var_0.a % 32u))), !(func_2(Struct_1(5228u, var_0.b, var_0.e.xy, true, vec3<i32>(var_0.e.x, var_0.c.x, u_input.b)), Struct_1(var_0.a, var_0.d, var_0.c, var_0.d, vec3<i32>(-1i, -9723i, -1i)), Struct_1(123904u, false, var_0.c, var_0.b, var_0.e), firstTrailingBit(vec3<u32>(4294967295u, var_0.a, 1u))).x > -3328i), _wgslsmith_mod_vec3_i32(abs(_wgslsmith_mod_vec3_i32(var_0.e ^ vec3<i32>(u_input.a, u_input.a, -1i), abs(var_0.e))), reverseBits(-firstTrailingBit(var_0.e))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(524f, _wgslsmith_div_f32(553f, -541f), 826f, _wgslsmith_f_op_f32(-808f + 623f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 1698f, 1295f, 1243f), vec4<f32>(-255f, -2529f, -661f, -711f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-114f, -1240f, -1090f, 2602f) - vec4<f32>(-329f, 1027f, 664f, 1331f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1179f, 1043f, 1535f, -116f))) * vec4<f32>(1117f, -1316f, _wgslsmith_f_op_f32(f32(-1f) * -971f), _wgslsmith_div_f32(924f, -2239f)))));
    let var_2 = u_input.b == u_input.a;
    var var_3 = func_5(func_5(func_5(Struct_1(4092u, true == var_0.d, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, var_0.c.x), vec2<i32>(2147483647i, -22637i)), var_2 | var_0.b, var_0.e), Struct_1(14656u | var_0.a, var_0.b, var_0.c << (vec2<u32>(var_0.a, 8476u) % vec2<u32>(32u)), var_2, abs(vec3<i32>(var_0.c.x, -7162i, 26126i))), var_0.a), Struct_1(abs(max(var_0.a, var_0.a)), var_2, var_0.e.xz, all(vec4<bool>(true, true, var_2, false)) & true, ~var_0.e), 13524u), Struct_1(~_wgslsmith_mult_u32(~var_0.a, 1u), var_0.d, ~vec2<i32>(1i, func_2(Struct_1(var_0.a, var_2, var_0.c, true, var_0.e), Struct_1(var_0.a, true, var_0.c, var_2, vec3<i32>(1i, -2147483647i, var_0.c.x)), Struct_1(41477u, false, vec2<i32>(var_0.e.x, var_0.e.x), var_2, vec3<i32>(u_input.b, 1i, var_0.e.x)), vec3<u32>(0u, var_0.a, 1u)).x), false, vec3<i32>(var_0.e.x, reverseBits(_wgslsmith_add_i32(var_0.c.x, u_input.a)), ~2015i)), reverseBits(var_0.a));
    let var_4 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-107f * -1116f))), _wgslsmith_f_op_f32(f32(-1f) * -167f), _wgslsmith_f_op_f32(exp2(var_1.x))) + var_1)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(func_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(263f, var_4.x, var_4.x, -377f))), abs(_wgslsmith_div_vec2_u32(vec2<u32>(var_3.a, 1u), vec2<u32>(var_3.a, var_0.a))), ~1i), func_5(func_5(func_5(Struct_1(0u, var_0.b, vec2<i32>(var_3.e.x, 64783i), var_3.b, var_3.e), Struct_1(var_0.a, var_0.b, var_0.e.yy, true, var_3.e), 3887u), func_5(Struct_1(var_3.a, false, vec2<i32>(var_3.c.x, u_input.a), var_3.d, vec3<i32>(-6671i, var_3.e.x, 0i)), Struct_1(27263u, false, var_3.e.zx, true, vec3<i32>(u_input.b, u_input.b, -65974i)), 3074u), ~1u), func_5(func_5(Struct_1(31750u, var_0.b, var_0.c, false, vec3<i32>(11995i, -2147483647i, -25821i)), Struct_1(8335u, false, var_0.e.zz, var_0.b, vec3<i32>(u_input.a, var_0.c.x, var_0.c.x)), var_0.a), func_5(Struct_1(var_0.a, var_2, var_0.c, false, vec3<i32>(var_0.e.x, 46331i, var_3.e.x)), Struct_1(4294967295u, var_3.b, var_0.c, true, var_3.e), 63292u), ~var_0.a), reverseBits(var_3.a >> (var_0.a % 32u))).c.x), ~_wgslsmith_sub_u32(var_0.a, 1u), ~(-(~firstTrailingBit(vec4<i32>(var_0.c.x, u_input.b, var_0.e.x, -2147483647i)))), vec2<f32>(_wgslsmith_f_op_f32(-677f - var_4.x), -493f));
}

