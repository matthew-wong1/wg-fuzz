struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: u32,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: f32,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: vec2<bool>,
    d: vec3<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec4<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1000f, -2018f);

var<private> global1: array<i32, 18>;

var<private> global2: array<Struct_5, 18>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - -1000f) - -1235f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)), arg_1.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-856f, arg_3.b)))), _wgslsmith_f_op_f32(-571f * -849f)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1591f, _wgslsmith_f_op_f32(f32(-1f) * -114f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(761f, arg_3.b), vec2<f32>(1096f, -1099f)))))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(global0.x)), -600f, arg_1.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1012f, -124f), 206f))));
    var var_2 = Struct_4(_wgslsmith_mod_u32(1u, ~(~u_input.b << (1u % 32u))), 79757i, firstTrailingBit(vec3<i32>(global1[_wgslsmith_index_u32(u_input.b, 18u)], countOneBits(-25021i), arg_0.a.a)), select(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b & 0u, 0u, ~u_input.b), vec3<u32>(u_input.b, ~u_input.b, ~u_input.b)), _wgslsmith_mult_vec3_u32(select(~vec3<u32>(32261u, u_input.b, u_input.b), select(vec3<u32>(u_input.b, 39357u, 1752u), vec3<u32>(1u, u_input.b, u_input.b), arg_1.x), vec3<bool>(false, true, arg_1.x)), ~vec3<u32>(0u, 46651u, u_input.b)), arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.b)))))));
    let var_3 = true;
    global1 = array<i32, 18>();
    return var_2.c;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<f32>) -> vec2<i32> {
    var var_0 = vec2<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(abs(~13258i), ~(~2147483647i)), u_input.c), abs(-3435i));
    var var_1 = max(max(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(0u, 18u)], -1i, 1i), vec3<i32>(u_input.c, 0i, 44106i)), func_3(Struct_2(Struct_1(global1[_wgslsmith_index_u32(0u, 18u)], global0.x), 944f), vec2<bool>(true, false), Struct_2(Struct_1(var_0.x, 124f), -1000f), Struct_1(2147483647i, -922f))) | ((vec3<i32>(-27451i, 65786i, -2147483647i) << (vec3<u32>(1u, u_input.b, 37779u) % vec3<u32>(32u))) ^ ~vec3<i32>(2147483647i, 1i, -18428i)), vec3<i32>(max(u_input.a, u_input.c), _wgslsmith_sub_i32(-55570i, 25600i), _wgslsmith_mod_i32(~2147483647i, _wgslsmith_div_i32(u_input.a, 14830i)))), abs(-vec3<i32>(-34577i, u_input.a, u_input.a)));
    var_1 = (vec3<i32>(~u_input.c | 0i, i32(-1i) * -var_1.x, global1[_wgslsmith_index_u32(arg_0.x, 18u)]) ^ -select(~vec3<i32>(-77937i, -1i, u_input.c), countOneBits(vec3<i32>(var_1.x, -12182i, var_1.x)), false)) | reverseBits(-vec3<i32>(1i, -u_input.c, var_1.x));
    let var_2 = max(vec3<u32>(u_input.b | 22848u, _wgslsmith_clamp_u32(max(~0u, 4294967295u >> (u_input.b % 32u)), _wgslsmith_clamp_u32(43526u, reverseBits(u_input.b), 0u), 4294967295u), u_input.b), arg_0.zwx);
    var var_3 = Struct_2(Struct_1(var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-471f + global0.x)), _wgslsmith_f_op_f32(-arg_1.x))), arg_1.x);
    return ~reverseBits(abs(var_1.zx));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2) -> Struct_3 {
    var var_0 = global1[_wgslsmith_index_u32(38674u, 18u)] << (abs(_wgslsmith_mod_u32(47024u, u_input.b)) % 32u);
    var_0 = u_input.c | -_wgslsmith_mod_i32(-abs(global1[_wgslsmith_index_u32(u_input.b, 18u)]), _wgslsmith_mod_i32(-arg_0.x, max(u_input.a, u_input.a)));
    let var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(~(~(-arg_1.a.a)), 31853i | ~(-u_input.a), _wgslsmith_div_i32(_wgslsmith_div_i32(max(arg_0.x, arg_0.x), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, 3522u), 18u)]), _wgslsmith_mod_i32(-50419i, u_input.a) | -arg_1.a.a)), vec3<i32>(~arg_0.x, 2147483647i & abs(~global1[_wgslsmith_index_u32(62089u, 18u)]), _wgslsmith_dot_vec4_i32(vec4<i32>(min(u_input.a, 79795i), arg_0.x, -2147483647i, ~(-3584i)), ~(vec4<i32>(u_input.a, 0i, u_input.a, global1[_wgslsmith_index_u32(1u, 18u)]) >> (vec4<u32>(1u, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u))))));
    let var_2 = Struct_4(_wgslsmith_clamp_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(94072u, 31540u, 1u, 1u), vec4<u32>(u_input.b, 0u, u_input.b, 4294967295u))), ~(~firstTrailingBit(u_input.b)), 0u), -(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.c, 2147483647i, 17954i)), select(var_1, vec3<i32>(arg_1.a.a, var_1.x, arg_0.x), vec3<bool>(false, false, true))) ^ arg_0.x), -vec3<i32>(-41030i, 4569i, 31856i), vec3<u32>(u_input.b, ~(~u_input.b << (0u % 32u)), 76627u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)));
    var var_3 = Struct_3(false, var_1.xz, abs(reverseBits(min(17367u, u_input.b | u_input.b))), select(vec3<bool>(true, all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), true)), true), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), any(vec4<bool>(false, true, false, false))), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), true)), !vec3<bool>(11416i == u_input.c, var_2.d.x < var_2.a, any(vec3<bool>(true, false, false)))), arg_1.a);
    return Struct_3(all(!var_3.d) != var_3.d.x, abs(_wgslsmith_div_vec2_i32(~vec2<i32>(global1[_wgslsmith_index_u32(20544u, 18u)], var_1.x), vec2<i32>(abs(arg_1.a.a), u_input.a))), 4294967295u, var_3.d, Struct_1(~max(_wgslsmith_add_i32(-2147483647i, arg_0.x), -19054i >> (var_3.c % 32u)), arg_1.b));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(0u & _wgslsmith_add_u32(_wgslsmith_clamp_u32(~1u, 0u, 0u), countOneBits(func_4(arg_1.b ^ arg_1.b, arg_0).c)), 18u)];
    let var_1 = var_0.e.a;
    global1 = array<i32, 18>();
    var var_2 = Struct_4(_wgslsmith_dot_vec4_u32(firstTrailingBit(select(max(vec4<u32>(52377u, 4294967295u, arg_1.c, 1u), vec4<u32>(15387u, 12976u, 96073u, 35624u)), firstLeadingBit(vec4<u32>(var_0.a, 4294967295u, var_0.a, 1u)), vec4<bool>(arg_1.a, true, true, true))), vec4<u32>(~_wgslsmith_clamp_u32(arg_1.c, 20947u, var_0.a), var_0.a, 1u, var_0.a)), var_0.e.a.a, select(reverseBits(vec3<i32>(-arg_1.e.a, var_1.a, _wgslsmith_div_i32(2147483647i, -1i))), vec3<i32>(func_2(vec4<u32>(0u, 4294967295u, u_input.b, var_0.a), vec2<f32>(var_1.b, -1000f)).x, _wgslsmith_div_i32(global1[_wgslsmith_index_u32(163052u, 18u)], 18339i), -238i) | _wgslsmith_div_vec3_i32(-vec3<i32>(arg_0.a.a, global1[_wgslsmith_index_u32(var_0.a, 18u)], arg_0.a.a), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.e.a, var_0.e.a.a, u_input.a), vec3<i32>(-1i, 11969i, arg_1.b.x))), arg_1.d), select(~_wgslsmith_div_vec3_u32(min(vec3<u32>(1765u, arg_1.c, u_input.b), vec3<u32>(98331u, 4294967295u, 0u)), vec3<u32>(var_0.a, arg_1.c, arg_1.c)), vec3<u32>(var_0.a, firstLeadingBit(_wgslsmith_div_u32(1u, 1824u)), ~firstLeadingBit(0u)), var_0.b), arg_1.e.b);
    global1 = array<i32, 18>();
    return _wgslsmith_dot_vec3_u32(select(vec3<u32>(~5212u, countOneBits(var_2.a), (25568u ^ u_input.b) >> ((u_input.b | 4294967295u) % 32u)), select(_wgslsmith_clamp_vec3_u32(var_2.d, var_2.d, vec3<u32>(var_0.a, 4294967295u, arg_1.c)), vec3<u32>(35314u, reverseBits(1u), 28901u), (var_0.d.x & true) | arg_1.a), false), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_div_u32(arg_1.c ^ 0u, 0u), var_0.a, max(firstTrailingBit(var_2.a), arg_1.c)), ~select(countOneBits(var_2.d), _wgslsmith_mod_vec3_u32(var_2.d, var_2.d), func_4(vec2<i32>(23276i, 1i), Struct_2(arg_1.e, -1183f)).a)));
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_4, arg_3: vec2<i32>) -> i32 {
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-305f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -686f))))));
    let var_0 = func_5(Struct_2(Struct_1(1i, _wgslsmith_f_op_f32(-1409f * -1935f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1774f * global0.x)))), func_4(~func_2(abs(vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(509f, arg_2.e))), Struct_2(Struct_1(0i, _wgslsmith_div_f32(global0.x, 1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -260f))))));
    global1 = array<i32, 18>();
    var var_1 = arg_1;
    return u_input.c;
}

fn func_6(arg_0: Struct_5, arg_1: i32, arg_2: f32) -> Struct_2 {
    var var_0 = select(arg_0.c, func_4(vec2<i32>(-2147483647i, -1i), Struct_2(Struct_1(global1[_wgslsmith_index_u32(23874u, 18u)], _wgslsmith_div_f32(-1000f, arg_0.e.a.b)), _wgslsmith_f_op_f32(arg_2 * -880f))).d.xx, vec2<bool>(true, !arg_0.b || true));
    global1 = array<i32, 18>();
    let var_1 = -reverseBits(vec3<i32>(14250i, ~func_1(vec4<bool>(true, true, true, var_0.x), u_input.b, Struct_4(0u, -69260i, vec3<i32>(4433i, 25769i, 51764i), vec3<u32>(arg_0.a, u_input.b, 4294967295u), -2503f), vec2<i32>(-2147483647i, 31067i)), _wgslsmith_dot_vec2_i32(~vec2<i32>(0i, -7784i), _wgslsmith_div_vec2_i32(vec2<i32>(arg_1, arg_0.e.a.a), vec2<i32>(14933i, 14645i)))));
    var var_2 = arg_0.e;
    global0 = vec2<f32>(_wgslsmith_div_f32(arg_0.e.a.b, 2623f), global0.x);
    return arg_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, u_input.b, u_input.b ^ 1u), vec3<u32>(30465u, _wgslsmith_mult_u32(u_input.b, u_input.b), ~1u)), 18u)], firstTrailingBit(u_input.a | _wgslsmith_sub_i32(-45234i, func_1(vec4<bool>(true, true, false, false), u_input.b, Struct_4(38460u, 37643i, vec3<i32>(-6404i, global1[_wgslsmith_index_u32(u_input.b, 18u)], -72119i), vec3<u32>(83282u, 65694u, u_input.b), global0.x), vec2<i32>(2147483647i, 2147483647i)))), _wgslsmith_div_f32(-1000f, global0.x));
    global2 = array<Struct_5, 18>();
    let var_1 = Struct_4(u_input.b, global1[_wgslsmith_index_u32(u_input.b, 18u)], -((firstTrailingBit(vec3<i32>(-23841i, 23708i, var_0.a.a)) << (select(vec3<u32>(1u, u_input.b, u_input.b), vec3<u32>(u_input.b, 101214u, 1u), true) % vec3<u32>(32u))) & (~vec3<i32>(var_0.a.a, u_input.c, global1[_wgslsmith_index_u32(u_input.b, 18u)]) ^ countOneBits(vec3<i32>(0i, global1[_wgslsmith_index_u32(1368u, 18u)], var_0.a.a)))), (_wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.b, 4294967295u), vec3<u32>(13187u, u_input.b, u_input.b)) & ~(vec3<u32>(u_input.b, u_input.b, 38872u) >> (vec3<u32>(4294967295u, u_input.b, u_input.b) % vec3<u32>(32u)))) ^ vec3<u32>(~1u, 15363u, u_input.b), _wgslsmith_f_op_f32(-global0.x));
    global2 = array<Struct_5, 18>();
    let var_2 = -_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(var_1.c, vec3<i32>(48779i, 1i, -1i) << (~vec3<u32>(u_input.b, var_1.d.x, 0u) % vec3<u32>(32u))), var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(~(~countOneBits(1u)) << (~(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 40536u, 3306u, 23979u), vec4<u32>(4294967295u, 4294967295u, var_1.a, 1u)) & ~var_1.d.x) % 32u), 18u)], global0.x, _wgslsmith_div_f32(var_1.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -389f), var_0.a.b)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(944f, -751f, -275f, 240f)) + vec4<f32>(var_1.e, -1035f, var_0.b, 310f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, var_1.e, var_0.a.b, global0.x) - vec4<f32>(global0.x, global0.x, 1980f, var_0.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1071f, 1418f, 1000f, var_1.e)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.e, -243f, -1000f, -471f)))), vec2<f32>(var_0.a.b, _wgslsmith_f_op_f32(sign(var_0.b))));
}

