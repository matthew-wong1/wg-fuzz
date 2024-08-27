struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<u32>,
    d: vec2<u32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(~(_wgslsmith_add_u32(1u, _wgslsmith_mult_u32(1u, 11362u)) & select(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4921u, 4294967295u, 46836u), vec3<u32>(46700u, 1108u, 28959u)), all(vec4<bool>(true, true, false, false)))), false, select(~vec4<u32>(select(1u, 4294967295u, false), countOneBits(4294967295u), ~41431u, _wgslsmith_dot_vec2_u32(vec2<u32>(23469u, 0u), vec2<u32>(4294967295u, 37344u))), vec4<u32>(80118u, 64012u, 66478u, firstLeadingBit(1u)), vec4<bool>(true, any(vec3<bool>(true, true, true)), true, false)), vec2<u32>(1u, 1u), -2147483647i);
    var_0 = Struct_1(max(_wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(var_0.a), _wgslsmith_mult_u32(var_0.a, 25499u)), abs(vec2<u32>(4294967295u, var_0.a))), _wgslsmith_dot_vec2_u32(var_0.c.yx, abs(~var_0.d))), var_0.b, ~firstTrailingBit(countOneBits(var_0.c)), var_0.c.yy, -(((u_input.b.x ^ var_0.e) | -var_0.e) ^ u_input.a));
    var var_1 = Struct_1(4998u, any(!select(vec2<bool>(true, var_0.b), !vec2<bool>(var_0.b, var_0.b), var_0.b == false)), abs(_wgslsmith_mult_vec4_u32(max(vec4<u32>(0u, 0u, 15819u, 15617u), select(vec4<u32>(24624u, var_0.d.x, var_0.c.x, var_0.a), vec4<u32>(29683u, 0u, var_0.a, var_0.c.x), vec4<bool>(var_0.b, true, var_0.b, false))), vec4<u32>(1u, firstTrailingBit(var_0.c.x), 8866u, firstLeadingBit(var_0.c.x)))), vec2<u32>(var_0.c.x, 1u), abs(-1i));
    var var_2 = vec2<bool>(var_0.b == !any(!vec2<bool>(false, var_0.b)), true);
    var_2 = select(!select(!vec2<bool>(var_0.b, var_1.b), select(!vec2<bool>(var_0.b, false), !vec2<bool>(false, var_1.b), select(vec2<bool>(true, true), vec2<bool>(false, var_2.x), vec2<bool>(true, false))), true), select(!vec2<bool>(true, var_1.b & true), select(select(!vec2<bool>(var_2.x, false), select(vec2<bool>(var_2.x, false), vec2<bool>(true, var_1.b), true), vec2<bool>(true, true)), vec2<bool>(true, var_0.b), false), all(!vec3<bool>(true, true, var_2.x))), !(!vec2<bool>(var_1.b, !var_1.b)));
    return _wgslsmith_add_u32(var_1.c.x, 1u);
}

fn func_2() -> vec2<i32> {
    var var_0 = Struct_1(select(countOneBits(select(8278u, 34201u, false)), reverseBits(~func_3()), true), all(vec4<bool>(true, true, true, true)), vec4<u32>(firstLeadingBit(_wgslsmith_mod_u32(1u, 1u)), _wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(46420u, 66892u), ~63315u) ^ _wgslsmith_div_u32(12702u, ~1u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(1u, 28217u, 31140u)), vec3<u32>(1u, 1u, 1u))), _wgslsmith_clamp_u32(_wgslsmith_div_u32(36118u, 112907u), 13253u, _wgslsmith_clamp_u32(66371u, 4294967295u, firstLeadingBit(1u)))), firstLeadingBit(select(vec2<u32>(1u, 1u), vec2<u32>(firstTrailingBit(10355u), ~21905u), vec2<bool>(select(false, true, false), false))), firstLeadingBit(-1i | abs(u_input.b.x & 1i)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(291f, 1054f))))), _wgslsmith_f_op_f32(-1717f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-648f)), 121f)))));
    var_0 = Struct_1(var_0.a, !var_0.b, countOneBits(vec4<u32>(~(~42884u), 11026u, _wgslsmith_dot_vec3_u32(vec3<u32>(11793u, 0u, var_0.d.x), vec3<u32>(16526u, var_0.c.x, var_0.d.x)), _wgslsmith_mult_u32(0u, 106532u))), var_0.d, -2147483647i);
    var var_2 = Struct_1(var_0.a, true, _wgslsmith_sub_vec4_u32(abs(~(vec4<u32>(var_0.d.x, var_0.c.x, var_0.d.x, 0u) | var_0.c)), min(_wgslsmith_clamp_vec4_u32(vec4<u32>(19981u, var_0.d.x, var_0.c.x, 2230u), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.a, 0u, 0u, 0u), var_0.c), var_0.c), select(vec4<u32>(var_0.a, 42984u, 70142u, var_0.a), countOneBits(var_0.c), vec4<bool>(false, false, var_0.b, false)))), ~vec2<u32>(abs(var_0.d.x), _wgslsmith_clamp_u32(1u, var_0.a, ~4294967295u)), -_wgslsmith_dot_vec2_i32(vec2<i32>(-u_input.b.x, select(u_input.b.x, -55367i, var_0.b)), select(vec2<i32>(-2147483647i, var_0.e), vec2<i32>(0i, var_0.e), !vec2<bool>(var_0.b, true))));
    var var_3 = Struct_1(1949u, all(vec3<bool>(select(var_0.e, var_2.e, var_2.b) < _wgslsmith_sub_i32(-7771i, u_input.a), all(select(vec4<bool>(false, false, var_2.b, var_2.b), vec4<bool>(false, false, false, false), false)), var_2.b)), var_2.c & var_2.c, _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(var_0.c.zz, vec2<u32>(_wgslsmith_div_u32(var_0.c.x, var_2.a), abs(var_0.c.x))), var_0.c.zx), var_0.e);
    return _wgslsmith_div_vec2_i32(vec2<i32>(var_3.e ^ -1i, abs(u_input.a) | var_0.e), ~_wgslsmith_add_vec2_i32(vec2<i32>(var_0.e, 2147483647i), u_input.b & u_input.b));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: i32, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(307f, _wgslsmith_f_op_f32(exp2(arg_1))))) * _wgslsmith_f_op_f32(arg_1 * arg_0)));
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(330f, _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(arg_0 * -224f))))));
    let var_2 = abs(select(~select(vec4<i32>(u_input.b.x, u_input.a, arg_3.x, 30387i) & vec4<i32>(-1i, arg_3.x, 1i, 0i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 2147483647i, arg_3.x, 0i), vec4<i32>(u_input.b.x, u_input.a, 2147483647i, 64552i)), 1i != u_input.a), vec4<i32>(max(-2974i, -u_input.b.x), u_input.a & _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.a, u_input.a)), arg_3.x, abs(~(-31521i))), true));
    var var_3 = Struct_1(~0u, all(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), vec4<u32>(reverseBits(30547u), countOneBits(_wgslsmith_dot_vec3_u32(select(vec3<u32>(10369u, 14203u, 22947u), vec3<u32>(100570u, 1u, 66994u), vec3<bool>(true, false, false)), vec3<u32>(4294967295u, 0u, 4294967295u))), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(25561u, 4294967295u, 0u), vec3<u32>(1u, 1u, 1u)), 1u), ~(~1u)), vec2<u32>(abs(~18195u) << (~func_3() % 32u), 4294967295u), ~(~func_2().x));
    var_3 = Struct_1(var_3.a >> (36802u % 32u), any(select(select(vec4<bool>(var_3.b, var_3.b, var_3.b, false), vec4<bool>(var_3.b, var_3.b, false, true), vec4<bool>(var_3.b, false, false, true)), !vec4<bool>(var_3.b, true, var_3.b, true), vec4<bool>(false, var_3.b, true, false))) && (~abs(var_3.c.x) > 4476u), _wgslsmith_mod_vec4_u32(firstTrailingBit(var_3.c & vec4<u32>(344u, 0u, 22256u, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_3.a, 4294967295u, var_3.c.x, 0u), vec4<u32>(var_3.d.x, var_3.a, var_3.a, 1u))) ^ ~abs(var_3.c), vec2<u32>((var_3.d.x >> (0u % 32u)) >> (~_wgslsmith_add_u32(0u, 0u) % 32u), _wgslsmith_add_u32(15721u, 21072u)), i32(-1i) * -25355i);
    return Struct_1(1u, var_3.b, ~var_3.c, firstTrailingBit(select(vec2<u32>(1u, 34998u), ~abs(vec2<u32>(1u, var_3.a)), false)), var_3.e);
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> vec2<f32> {
    var var_0 = -_wgslsmith_dot_vec2_i32(-reverseBits(u_input.b), ~(-u_input.b)) ^ -((-2147483647i << ((1u ^ arg_0.d.x) % 32u)) ^ -(~u_input.a));
    var_0 = firstLeadingBit(2147483647i);
    var var_1 = ~arg_0.e ^ u_input.b.x;
    let var_2 = _wgslsmith_f_op_f32(step(487f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1324f + -131f))));
    var_1 = func_2().x;
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(591f, _wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(765f, var_2))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-287f, var_2), vec2<f32>(515f, 339f), arg_0.b))))), any(!select(vec4<bool>(arg_0.b, false, arg_1, false), vec4<bool>(arg_1, false, arg_0.b, arg_1), vec4<bool>(false, arg_0.b, true, arg_0.b))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, var_2)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, -640f) + vec2<f32>(1115f, var_2))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, var_2)), _wgslsmith_div_vec2_f32(vec2<f32>(var_2, -557f), vec2<f32>(var_2, 1032f))))));
}

fn func_1() -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_5(func_4(_wgslsmith_f_op_f32(f32(-1f) * -307f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1141f * _wgslsmith_f_op_f32(1968f + 111f))), _wgslsmith_clamp_i32(max(u_input.a, -9828i) ^ 0i, _wgslsmith_mod_i32(17366i, u_input.b.x), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.b.x, u_input.a, 22881i, -9008i)), min(vec4<i32>(-10485i, u_input.a, 17641i, u_input.b.x), vec4<i32>(u_input.a, -17447i, 2147483647i, -1i)))), _wgslsmith_mult_vec2_i32(func_2(), select(vec2<i32>(3875i, u_input.a), u_input.b, false)) ^ vec2<i32>(0i, _wgslsmith_sub_i32(u_input.a, -18638i))), false));
    var var_1 = func_4(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -438f)), select(select(u_input.b.x, u_input.b.x, (var_0.x == 1533f) | all(vec3<bool>(false, false, true))), -2147483647i, true), u_input.b ^ -u_input.b);
    let var_2 = Struct_1(~((1u & func_3()) ^ func_4(var_0.x, var_0.x, -12246i, vec2<i32>(var_1.e, var_1.e)).c.x), var_1.a >= 0u, ~(vec4<u32>(_wgslsmith_mod_u32(var_1.d.x, var_1.a), _wgslsmith_clamp_u32(var_1.c.x, var_1.a, var_1.a), 0u, ~1u) ^ vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(23841u, var_1.a, 28328u, 47470u), vec4<u32>(var_1.a, 1u, 42709u, 1u)), 54200u, 0u << (var_1.d.x % 32u), var_1.d.x)), _wgslsmith_add_vec2_u32(max(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(11737u, var_1.a), vec2<u32>(var_1.d.x, var_1.c.x)), var_1.d ^ vec2<u32>(69055u, var_1.a)), ~firstTrailingBit(var_1.d)), select(_wgslsmith_mult_vec2_u32(var_1.d, abs(var_1.d)), vec2<u32>(~var_1.c.x, _wgslsmith_sub_u32(var_1.a, var_1.d.x)), all(vec4<bool>(var_1.b, true, var_1.b, var_1.b)))), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.a & u_input.b.x, u_input.b.x, u_input.b.x)), ~(vec3<i32>(u_input.a, u_input.b.x, -7036i) << ((vec3<u32>(1u, var_1.c.x, var_1.c.x) >> (vec3<u32>(var_1.c.x, var_1.d.x, var_1.d.x) % vec3<u32>(32u))) % vec3<u32>(32u)))));
    var_1 = var_2;
    let var_3 = !(!all(vec4<bool>(all(vec2<bool>(var_2.b, false)), var_2.b, true, var_1.b)));
    return !select(vec4<bool>(false & (var_1.b & var_3), var_2.b, var_3, all(select(vec3<bool>(var_2.b, var_2.b, false), vec3<bool>(false, false, var_1.b), vec3<bool>(var_2.b, true, true)))), select(!vec4<bool>(true, var_1.b, var_2.b, true), select(vec4<bool>(false, false, var_3, var_1.b), vec4<bool>(var_1.b, var_2.b, false, false), true), select(vec4<bool>(var_2.b, false, false, var_3), !vec4<bool>(var_2.b, var_3, true, true), var_2.b)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>((u_input.a < u_input.a) && true, false, true, false);
    var_0 = select(vec4<bool>(true, true, true, true), select(!(!(!vec4<bool>(var_0.x, var_0.x, false, var_0.x))), select(!vec4<bool>(true, false, var_0.x, var_0.x), func_1(), true), var_0.x), vec4<bool>(true, false, select(-279f > _wgslsmith_f_op_f32(step(-465f, -2199f)), var_0.x, func_4(1f, -2022f, countOneBits(-10968i), -vec2<i32>(2147483647i, 12215i)).b), true));
    let var_1 = _wgslsmith_add_i32(~(-(~(-82370i))), abs(firstTrailingBit(u_input.b.x)) << (func_3() % 32u));
    var_0 = select(select(func_1(), func_1(), func_1()), select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), !(!func_1()), func_1()), func_1().x);
    var var_2 = Struct_1(firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_sub_u32(firstTrailingBit(78195u), ~42587u), firstTrailingBit(23696u))), var_0.x, abs(vec4<u32>(~0u, _wgslsmith_dot_vec2_u32(select(vec2<u32>(64403u, 1u), vec2<u32>(51883u, 0u), var_0.wz), vec2<u32>(17624u, 1u)), 4294967295u, ~abs(0u))), vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(57499u, 1u, 87000u), abs(max(vec3<u32>(4294967295u, 4294967295u, 94731u), vec3<u32>(0u, 33707u, 6984u)))), abs(_wgslsmith_add_u32(1u, 1u))), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_2.a), -u_input.b.x | var_2.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-511f, _wgslsmith_f_op_f32(trunc(680f))) + 1f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1261f, -836f, 1828f)), vec3<f32>(_wgslsmith_f_op_f32(-574f + -421f), _wgslsmith_f_op_f32(floor(-1685f)), 926f)) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(2123f, -417f)), _wgslsmith_f_op_f32(ceil(-248f)), _wgslsmith_f_op_f32(f32(-1f) * -891f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(808f, -199f, -1586f), vec3<f32>(-716f, -958f, 399f), var_0.zwy)) - vec3<f32>(-304f, 1000f, 414f)))), -143f);
}

