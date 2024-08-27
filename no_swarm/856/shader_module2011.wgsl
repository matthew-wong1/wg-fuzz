struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_3) -> Struct_1 {
    global0 = array<Struct_2, 24>();
    var var_0 = arg_1.a.c.a.x;
    global0 = array<Struct_2, 24>();
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c, -217f, 428f, arg_1.c)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(341f, arg_1.d, -777f, -401f) + vec4<f32>(arg_1.c, arg_1.d, -740f, 1201f)))))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1245f) * _wgslsmith_f_op_f32(trunc(arg_1.c))))), arg_1.c, _wgslsmith_f_op_f32(-1141f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(arg_1.d))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.c), arg_1.d)))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x))), var_1.x)) * -832f) > _wgslsmith_f_op_f32(248f + arg_1.d);
    return arg_1.b;
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: u32, arg_3: f32) -> vec2<f32> {
    var var_0 = (_wgslsmith_dot_vec3_u32(vec3<u32>(48057u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_2, 31035u, arg_2), vec4<u32>(4294967295u, 14485u, arg_2, 33666u)), arg_2), min(vec3<u32>(0u, 109492u, arg_2), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2, 101310u, arg_2), vec3<u32>(1u, arg_2, 6222u), vec3<u32>(4294967295u, 111882u, 41172u)))) ^ min(0u, ~arg_2)) == arg_2;
    var var_1 = u_input.b;
    let var_2 = vec2<bool>(true, false);
    let var_3 = global0[_wgslsmith_index_u32(~(~abs(_wgslsmith_add_u32(arg_2, _wgslsmith_dot_vec4_u32(vec4<u32>(80611u, arg_2, arg_2, 8956u), vec4<u32>(0u, arg_2, arg_2, 2765u))))), 24u)];
    let var_4 = _wgslsmith_add_i32(-35307i, _wgslsmith_dot_vec3_i32(u_input.a.zww, vec3<i32>(_wgslsmith_add_i32(var_3.a.a.x, -2147483647i), var_3.a.a.x, var_3.b.a.x)) << ((arg_2 >> (arg_2 % 32u)) % 32u));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(min(arg_3, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_3)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(181f, -1177f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_3, arg_3))))), any(select(arg_0.zz, vec2<bool>(false, var_2.x), vec2<bool>(false, var_2.x)))))));
}

fn func_2(arg_0: f32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_3(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), false), vec4<f32>(425f, -1322f, arg_0, 927f), ~1u, _wgslsmith_f_op_f32(step(arg_0, -2483f)))))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1077f), _wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-619f + arg_0))));
    var_0 = _wgslsmith_f_op_vec2_f32(func_3(vec4<bool>(true, false, true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, 1496f, var_0.x, arg_0), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, 1618f, 824f, 673f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, -119f, var_0.x, 446f), vec4<f32>(arg_0, -537f, -757f, arg_0))))), 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(513f, arg_0)))), var_0.x)) * _wgslsmith_f_op_f32(sign(arg_0)))));
    var var_1 = Struct_3(global0[_wgslsmith_index_u32(~firstLeadingBit(abs(1u)), 24u)], func_1(select(max(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(65825u, 36592u, 4294967295u, 58320u)), abs(firstTrailingBit(vec4<u32>(23840u, 4294967295u, 12757u, 1673u))), vec4<bool>(true, true, true, true)), Struct_3(Struct_2(Struct_1(u_input.a, 24506u, vec3<bool>(true, true, false)), func_1(vec4<u32>(4294967295u, 56988u, 11209u, 4294967295u), Struct_3(Struct_2(Struct_1(u_input.a, 0u, vec3<bool>(false, true, true)), Struct_1(vec4<i32>(11292i, -15210i, u_input.b, -6246i), 4114u, vec3<bool>(false, false, true)), Struct_1(u_input.a, 4294967295u, vec3<bool>(true, false, false)), vec4<bool>(false, false, false, false), Struct_1(u_input.a, 1u, vec3<bool>(true, true, false))), Struct_1(u_input.a, 4294967295u, vec3<bool>(false, false, true)), arg_0, 1891f, Struct_2(Struct_1(vec4<i32>(0i, u_input.a.x, 1i, 31047i), 4294967295u, vec3<bool>(true, true, false)), Struct_1(vec4<i32>(u_input.b, -1i, u_input.a.x, 1i), 1u, vec3<bool>(false, false, true)), Struct_1(vec4<i32>(29932i, -38426i, u_input.b, -47714i), 4294967295u, vec3<bool>(true, false, true)), vec4<bool>(false, false, true, false), Struct_1(u_input.a, 56655u, vec3<bool>(false, false, true))))), Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.b), 62205u, vec3<bool>(false, false, false)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true)), Struct_1(vec4<i32>(1i, u_input.a.x, u_input.b, u_input.b), 47865u, vec3<bool>(true, false, false))), Struct_1(firstLeadingBit(vec4<i32>(u_input.b, u_input.a.x, u_input.a.x, -1i)), 11091u, func_1(vec4<u32>(4294967295u, 10845u, 989u, 4269u), Struct_3(global0[_wgslsmith_index_u32(0u, 24u)], Struct_1(u_input.a, 0u, vec3<bool>(true, false, false)), -967f, -1000f, Struct_2(Struct_1(vec4<i32>(u_input.b, 0i, 2147483647i, 48496i), 4294967295u, vec3<bool>(false, true, false)), Struct_1(u_input.a, 1u, vec3<bool>(true, true, true)), Struct_1(vec4<i32>(u_input.b, u_input.b, u_input.a.x, 0i), 68456u, vec3<bool>(false, true, false)), vec4<bool>(true, false, true, true), Struct_1(vec4<i32>(u_input.b, -1i, 2147483647i, u_input.a.x), 1u, vec3<bool>(true, false, true))))).c), _wgslsmith_f_op_vec2_f32(func_3(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, var_0.x, arg_0, var_0.x) - vec4<f32>(var_0.x, -1999f, arg_0, -552f)), ~63365u, _wgslsmith_f_op_f32(-var_0.x))).x, arg_0, Struct_2(Struct_1(u_input.a, 4294967295u, vec3<bool>(true, true, true)), func_1(vec4<u32>(0u, 12696u, 0u, 127u), Struct_3(Struct_2(Struct_1(u_input.a, 4294967295u, vec3<bool>(false, false, true)), Struct_1(u_input.a, 111350u, vec3<bool>(true, true, true)), Struct_1(u_input.a, 0u, vec3<bool>(true, true, true)), vec4<bool>(true, false, false, false), Struct_1(u_input.a, 37090u, vec3<bool>(true, false, false))), Struct_1(vec4<i32>(-22246i, u_input.b, u_input.a.x, u_input.b), 4294967295u, vec3<bool>(false, false, true)), arg_0, arg_0, Struct_2(Struct_1(u_input.a, 1u, vec3<bool>(true, true, false)), Struct_1(vec4<i32>(-15562i, 1i, u_input.b, u_input.b), 24188u, vec3<bool>(false, true, false)), Struct_1(u_input.a, 4294967295u, vec3<bool>(false, false, true)), vec4<bool>(true, true, false, false), Struct_1(vec4<i32>(-2147483647i, u_input.b, u_input.b, -17778i), 4294967295u, vec3<bool>(true, false, false))))), func_1(vec4<u32>(29518u, 4294967295u, 9662u, 15715u), Struct_3(global0[_wgslsmith_index_u32(1u, 24u)], Struct_1(u_input.a, 4617u, vec3<bool>(true, false, true)), arg_0, var_0.x, Struct_2(Struct_1(u_input.a, 4145u, vec3<bool>(true, true, false)), Struct_1(vec4<i32>(2147483647i, u_input.b, u_input.a.x, u_input.b), 5535u, vec3<bool>(true, false, true)), Struct_1(u_input.a, 4294967295u, vec3<bool>(false, true, true)), vec4<bool>(true, true, true, false), Struct_1(vec4<i32>(-2147483647i, 1i, 2147483647i, u_input.b), 51023u, vec3<bool>(false, true, false))))), vec4<bool>(true, false, false, false), func_1(vec4<u32>(53607u, 0u, 28026u, 1u), Struct_3(global0[_wgslsmith_index_u32(108968u, 24u)], Struct_1(u_input.a, 0u, vec3<bool>(true, false, true)), 1000f, arg_0, Struct_2(Struct_1(u_input.a, 30100u, vec3<bool>(true, false, false)), Struct_1(u_input.a, 9182u, vec3<bool>(false, true, false)), Struct_1(u_input.a, 0u, vec3<bool>(false, false, true)), vec4<bool>(false, false, false, true), Struct_1(u_input.a, 44108u, vec3<bool>(true, false, false)))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(362f, -1229f)) + arg_0)), arg_0, global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(max(countOneBits(8842u), func_1(vec4<u32>(4294967295u, 60901u, 1u, 4294967295u), Struct_3(global0[_wgslsmith_index_u32(0u, 24u)], Struct_1(vec4<i32>(-10121i, u_input.b, u_input.a.x, u_input.a.x), 125142u, vec3<bool>(true, true, true)), var_0.x, var_0.x, global0[_wgslsmith_index_u32(32831u, 24u)])).b), reverseBits(1u)), 24u)]);
    let var_2 = Struct_3(Struct_2(var_1.a.b, Struct_1(var_1.a.e.a, 4294967295u, vec3<bool>(all(var_1.a.e.c), all(vec3<bool>(false, var_1.e.d.x, false)), var_1.b.c.x)), var_1.a.a, var_1.e.d, Struct_1(vec4<i32>(u_input.b, u_input.a.x, -15350i, reverseBits(var_1.a.c.a.x)), ~var_1.b.b, !(!vec3<bool>(true, var_1.e.e.c.x, var_1.e.d.x)))), var_1.a.c, _wgslsmith_f_op_f32(-1017f - _wgslsmith_f_op_f32(select(var_0.x, arg_0, (true | var_1.e.b.c.x) | false))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + var_0.x) + _wgslsmith_div_f32(642f, arg_0)), var_1.c))), Struct_2(var_1.e.c, var_1.a.b, var_1.a.e, select(!vec4<bool>(var_1.e.c.c.x, true, var_1.b.c.x, false), select(vec4<bool>(var_1.b.c.x, var_1.e.c.c.x, false, false), vec4<bool>(var_1.a.e.c.x, var_1.e.a.c.x, false, var_1.a.c.c.x), false), !(!var_1.a.d)), var_1.b));
    var var_3 = Struct_2(Struct_1(~var_2.a.e.a, 66638u, !(!(!var_1.b.c))), func_1(vec4<u32>(reverseBits(_wgslsmith_mod_u32(var_1.e.c.b, 4294967295u)), var_1.b.b, 1u, 1u), Struct_3(var_2.a, func_1(select(vec4<u32>(4294967295u, 54388u, var_1.e.e.b, 43317u), vec4<u32>(var_1.b.b, 8392u, 53300u, 0u), var_2.a.d), Struct_3(Struct_2(var_2.a.c, var_1.b, Struct_1(var_2.b.a, var_2.b.b, vec3<bool>(false, true, false)), vec4<bool>(var_1.b.c.x, var_1.a.e.c.x, true, var_1.a.c.c.x), Struct_1(var_2.b.a, var_1.b.b, vec3<bool>(true, true, true))), var_1.a.a, 1807f, -1252f, var_1.a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1.c, 2182f))), _wgslsmith_f_op_f32(trunc(-830f)), var_2.a)), var_2.e.c, var_1.e.d, var_1.a.c);
    return vec4<bool>(~47348u >= (min(var_2.a.b.b, min(var_1.a.b.b, var_2.a.c.b)) ^ ~abs(var_1.b.b)), !var_3.c.c.x && all(vec2<bool>(true, !var_2.a.a.c.x)), var_1.a.c.c.x, var_1.b.c.x);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<i32>) -> u32 {
    global0 = array<Struct_2, 24>();
    let var_0 = arg_0.b.c.x & (arg_0.d < arg_0.d);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(arg_0.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-523f * 1000f)) + _wgslsmith_div_f32(arg_0.d, _wgslsmith_div_f32(1078f, 109f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c - -853f) + arg_0.d))));
    var var_2 = arg_0.b;
    var_2 = arg_1;
    return ~var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_1(~vec4<i32>(min(u_input.a.x, 0i), _wgslsmith_add_i32(u_input.a.x, -2147483647i), select(-2147483647i, 2147483647i, false), u_input.b), ~(~_wgslsmith_mod_u32(4294967295u, 44558u)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)))), firstTrailingBit(~_wgslsmith_add_vec4_i32(firstTrailingBit(u_input.a), ~u_input.a)), !(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true))), 291f);
    let var_1 = Struct_1(u_input.a, firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, var_0.a.b) ^ ~var_0.a.b, 1u)), !vec3<bool>(var_0.c.x, var_0.a.c.x, select(var_0.a.c.x, false, var_0.d == -935f)));
    global0 = array<Struct_2, 24>();
    var var_2 = var_1.b;
    var var_3 = func_4(Struct_3(global0[_wgslsmith_index_u32(4294967295u, 24u)], Struct_1(~var_1.a | _wgslsmith_mod_vec4_i32(var_1.a, var_0.a.a), 0u, vec3<bool>(any(vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, var_0.c.x)), var_0.a.c.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2193f)), var_0.d, Struct_2(var_1, var_0.a, func_1(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a.b, 37359u, 11358u, 0u), vec4<u32>(var_0.a.b, var_0.a.b, var_0.a.b, var_1.b)), Struct_3(global0[_wgslsmith_index_u32(var_1.b, 24u)], var_0.a, -409f, var_0.d, Struct_2(var_0.a, var_0.a, var_1, vec4<bool>(var_1.c.x, true, true, var_0.c.x), var_0.a))), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1167f)), func_1(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_1.b, 1u, 1u), vec4<u32>(var_1.b, var_0.a.b, 21450u, 4294967295u)), Struct_3(Struct_2(var_1, var_0.a, Struct_1(vec4<i32>(var_0.a.a.x, 31571i, 53852i, 2147483647i), var_1.b, var_0.a.c), vec4<bool>(true, false, true, false), var_1), Struct_1(vec4<i32>(10973i, var_0.b.x, var_1.a.x, var_1.a.x), var_0.a.b, var_0.a.c), var_0.d, var_0.d, global0[_wgslsmith_index_u32(30248u, 24u)])))), Struct_1(firstTrailingBit(vec4<i32>(reverseBits(34212i), 1i, ~var_0.a.a.x, -22945i)), firstLeadingBit(reverseBits(abs(var_0.a.b))), select(vec3<bool>(true, true, any(vec2<bool>(true, false))), func_2(_wgslsmith_f_op_f32(f32(-1f) * -892f)).xww, var_0.a.c)), max(vec3<i32>(-1i, abs(var_0.b.x), var_0.b.x), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_add_i32(u_input.a.x, -1i), u_input.b, select(10288i, 2147483647i, true)), ~u_input.a.yzy)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d, ~(~firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.a.b, 6035u, 0u), vec3<u32>(var_0.a.b, 0u, var_0.a.b)))), ~var_1.b, _wgslsmith_f_op_vec2_f32(func_3(!select(!vec4<bool>(var_0.c.x, var_0.a.c.x, var_0.c.x, var_0.a.c.x), !vec4<bool>(false, var_1.c.x, var_1.c.x, false), var_0.a.b >= 0u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.d, -1004f, 1027f, var_0.d)))))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 54115u, 0u, var_0.a.b), vec4<u32>(4294967295u, 47274u, var_1.b, 3893u)) >> (0u % 32u), var_0.d)).x);
}

