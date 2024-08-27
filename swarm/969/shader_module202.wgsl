struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: i32,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 4>;

var<private> global1: vec4<i32>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global1 = select(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, global1.x, -9645i, 0i), -(~select(vec4<i32>(-1i, global1.x, u_input.a, -1i), vec4<i32>(u_input.a, -9026i, -23327i, global1.x), true))), arg_0.e, vec4<bool>(any(!select(vec3<bool>(true, false, false), vec3<bool>(arg_0.b, arg_0.b, false), vec3<bool>(arg_0.b, false, arg_0.d))), !(arg_0.a.x <= ~101062u), !any(select(vec3<bool>(arg_0.b, arg_0.b, false), vec3<bool>(false, true, arg_0.d), arg_0.d)), true));
    global0 = array<vec3<i32>, 4>();
    var var_0 = Struct_1(~_wgslsmith_mod_vec2_u32(arg_0.a, reverseBits(vec2<u32>(arg_0.a.x, 111654u))), true, arg_0.c, select(arg_0.d, arg_0.d, false), _wgslsmith_add_vec4_i32(-(vec4<i32>(0i, arg_0.e.x, arg_0.e.x, global1.x) ^ vec4<i32>(global1.x, arg_0.c, u_input.a, arg_0.e.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.c, u_input.a, u_input.a, arg_0.c), arg_0.e)) >> ((firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, arg_0.a.x, 21503u, 96462u), vec4<u32>(arg_0.a.x, arg_0.a.x, 63753u, arg_0.a.x), vec4<u32>(arg_0.a.x, 33223u, 23221u, arg_0.a.x))) & vec4<u32>(select(0u, arg_0.a.x, arg_0.b), select(arg_0.a.x, 60571u, true), _wgslsmith_mult_u32(73086u, arg_0.a.x), arg_0.a.x & arg_0.a.x)) % vec4<u32>(32u)));
    let var_1 = Struct_2(arg_0, all(vec3<bool>(all(select(vec4<bool>(true, false, true, false), vec4<bool>(var_0.d, true, true, arg_0.b), vec4<bool>(var_0.b, arg_0.b, arg_0.d, false))), var_0.b, false)), select(!(!select(vec3<bool>(arg_0.b, arg_0.d, arg_0.d), vec3<bool>(arg_0.d, true, false), vec3<bool>(var_0.b, var_0.b, true))), !select(vec3<bool>(var_0.b, false, arg_0.d), !vec3<bool>(var_0.d, true, false), select(vec3<bool>(var_0.b, false, arg_0.d), vec3<bool>(var_0.b, true, var_0.d), arg_0.d)), !(!select(vec3<bool>(true, false, true), vec3<bool>(arg_0.b, var_0.b, true), arg_0.d))));
    var_0 = Struct_1(~(~_wgslsmith_sub_vec2_u32(var_1.a.a, _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a.x, var_1.a.a.x), var_1.a.a))), !var_1.a.b, abs(var_1.a.c), (arg_0.a.x < _wgslsmith_sub_u32(var_1.a.a.x, var_1.a.a.x)) & true, vec4<i32>(arg_0.e.x, ~firstTrailingBit(-arg_0.e.x), -(~29260i) << (_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.a.a.x, arg_0.a.x, 21347u), vec3<u32>(118120u, var_0.a.x, arg_0.a.x), vec3<u32>(var_1.a.a.x, 36674u, 20104u)), ~vec3<u32>(6097u, var_0.a.x, arg_0.a.x)) % 32u), -_wgslsmith_clamp_i32(2147483647i, u_input.a, 40142i)));
    return arg_0.a.x;
}

fn func_2() -> bool {
    var var_0 = ~_wgslsmith_add_vec4_u32(~vec4<u32>(func_3(Struct_1(vec2<u32>(0u, 0u), true, u_input.a, false, vec4<i32>(-29796i, u_input.a, 4359i, u_input.a))), ~42132u, 1u, _wgslsmith_div_u32(46212u, 4294967295u)), ~(~select(vec4<u32>(4294967295u, 56952u, 1u, 101798u), vec4<u32>(4294967295u, 17109u, 28876u, 35282u), false)));
    let var_1 = var_0.x | func_3(Struct_1(var_0.zy, !any(vec2<bool>(true, true)), (-1i | u_input.a) >> (~var_0.x % 32u), true, _wgslsmith_mult_vec4_i32(abs(vec4<i32>(-2147483647i, u_input.a, global1.x, u_input.a)), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, global1.x, -1i, 1i), vec4<i32>(0i, global1.x, -5837i, u_input.a)))));
    let var_2 = Struct_2(Struct_1(vec2<u32>(~_wgslsmith_dot_vec2_u32(var_0.wx, vec2<u32>(var_0.x, 4807u)), ~_wgslsmith_mod_u32(4294967295u, var_1)), false, u_input.a, all(vec2<bool>(true, true)) && (0i < min(u_input.a, -63583i)), vec4<i32>(u_input.a, -34427i, _wgslsmith_add_i32(_wgslsmith_mult_i32(global1.x, global1.x), ~1i), _wgslsmith_clamp_i32(min(u_input.a, u_input.a), min(u_input.a, -1i), ~u_input.a))), ~(var_0.x ^ 1u) < (_wgslsmith_mod_u32(~var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_1, 9467u), var_0.wyz)) >> (1u % 32u)), select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec2<bool>(false, true)), true), !select(any(vec2<bool>(false, false)), false, true)));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1531f, -511f, 1292f), vec3<f32>(-273f, -981f, 1484f)) - vec3<f32>(178f, 1063f, 669f)) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-665f, 1000f, -931f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1749f, 1752f, 670f)), vec3<f32>(1f, 1f, 1f), true && var_2.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-195f, 1425f, 1265f) - vec3<f32>(744f, -1075f, -1618f))), !all(var_2.c)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, -251f, -1000f))))) - vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(310f, -1172f)), 1f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(428f - 2041f), _wgslsmith_f_op_f32(f32(-1f) * -244f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(207f, -245f, var_2.b)))))));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, var_3.x, var_3.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(850f, var_3.x, 2023f) - vec3<f32>(-348f, var_3.x, 1000f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_3.x, -249f, var_3.x))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_3.x, var_3.x, var_3.x))), -917f < var_3.x)))));
    return var_2.c.x || any(select(!select(vec4<bool>(true, var_2.a.d, var_2.b, var_2.c.x), vec4<bool>(var_2.a.b, true, var_2.a.d, var_2.c.x), vec4<bool>(false, var_2.b, true, false)), !(!vec4<bool>(var_2.c.x, false, true, true)), vec4<bool>(var_2.b, all(var_2.c), var_2.a.b, true)));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> vec3<f32> {
    let var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.a.x, 0u), _wgslsmith_mod_vec2_u32(arg_2.a, arg_1.a)), firstTrailingBit(vec2<u32>(arg_1.a.x, 0u)) | ~vec2<u32>(0u, 32330u)), countOneBits(75095u), 4695u, arg_1.a.x), vec4<u32>(_wgslsmith_clamp_u32(arg_1.a.x, ~(81702u << (arg_1.a.x % 32u)), arg_1.a.x), ~(~firstLeadingBit(59025u)), arg_1.a.x, _wgslsmith_clamp_u32(max(1u, 27555u), ~(~100785u), 4294967295u)));
    global0 = array<vec3<i32>, 4>();
    global1 = arg_1.e >> (var_0 % vec4<u32>(32u));
    var var_1 = arg_1.e.wy;
    global0 = array<vec3<i32>, 4>();
    return _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -725f), _wgslsmith_f_op_f32(f32(-1f) * -804f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(536f)) - -1464f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-951f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-468f, 461f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-892f * -373f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-138f + _wgslsmith_f_op_f32(f32(-1f) * -319f)))), any(arg_3)));
}

fn func_1() -> vec4<u32> {
    let var_0 = !vec2<bool>(_wgslsmith_clamp_i32(-global1.x, u_input.a, 15222i) == global1.x, (_wgslsmith_f_op_f32(step(-604f, -529f)) < 626f) & true);
    var var_1 = 25063u;
    let var_2 = _wgslsmith_clamp_i32(countOneBits(_wgslsmith_mult_i32(~2147483647i ^ global1.x, (u_input.a | u_input.a) ^ 1i)), -2571i, (_wgslsmith_add_i32(u_input.a, 0i) << (0u % 32u)) << (1u % 32u));
    var var_3 = _wgslsmith_mod_vec3_u32(~max(~vec3<u32>(28585u, 1u, 6032u) & select(vec3<u32>(4294967295u, 10012u, 17067u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<bool>(true, false, true)), ~vec3<u32>(29854u, 4294967295u, 25004u)), vec3<u32>(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 9694u, 62309u, 59332u), vec4<u32>(0u, 33765u, 0u, 0u))) >> (~1u % 32u), 1u, 1u));
    let var_4 = _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_mult_i32(-(_wgslsmith_add_i32(global1.x, global1.x) >> (var_3.x % 32u)), select(~1i, 0i, true | var_0.x)), Struct_1(vec2<u32>(17836u, var_3.x), func_2(), firstTrailingBit(var_2), !((var_3.x >> (4439u % 32u)) >= _wgslsmith_div_u32(var_3.x, var_3.x)), abs(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.a, -19889i, u_input.a) << (vec4<u32>(var_3.x, 0u, 0u, 45134u) % vec4<u32>(32u)), min(vec4<i32>(-1i, var_2, 0i, -17435i), vec4<i32>(-2147483647i, var_2, -1i, u_input.a))))), Struct_1(select(vec2<u32>(var_3.x, var_3.x), vec2<u32>(var_3.x, var_3.x), any(vec3<bool>(true, var_0.x, var_0.x))), !(!var_0.x), -(~0i), true, abs(vec4<i32>(3537i, 47864i ^ u_input.a, -var_2, ~u_input.a))), vec2<bool>(all(vec3<bool>(false, var_0.x, func_2())), true)));
    return select(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(~(vec4<u32>(var_3.x, 9003u, 1u, var_3.x) & vec4<u32>(var_3.x, var_3.x, 1u, var_3.x)), _wgslsmith_mult_vec4_u32(~vec4<u32>(49927u, 4294967295u, var_3.x, var_3.x), vec4<u32>(4294967295u, var_3.x, 1u, var_3.x) ^ vec4<u32>(2124u, var_3.x, 57739u, var_3.x))), firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(var_3.x, var_3.x, var_3.x, 0u) >> (vec4<u32>(68007u, var_3.x, 1u, var_3.x) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_3.x, var_3.x, 73183u, 0u), vec4<u32>(2069u, var_3.x, 1u, 0u), vec4<u32>(12947u, var_3.x, 26028u, 4294967295u)))), _wgslsmith_mult_vec4_u32(~firstTrailingBit(vec4<u32>(4294967295u, 4294967295u, var_3.x, var_3.x)), firstTrailingBit(vec4<u32>(0u, 77982u, 140197u, var_3.x)))), vec4<u32>(~func_3(Struct_1(vec2<u32>(var_3.x, 26479u), false, 0i, false, vec4<i32>(-2147483647i, -1i, var_2, -40350i))), 58692u, var_3.x, _wgslsmith_sub_u32(~_wgslsmith_add_u32(var_3.x, 1u), var_3.x)), vec4<bool>(var_0.x, var_0.x, false, (var_3.x << (_wgslsmith_sub_u32(35143u, var_3.x) % 32u)) > select(~813u, 4294967295u >> (var_3.x % 32u), var_4.x > 3192f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_mod_vec4_i32(~(~vec4<i32>(-1i, global1.x, -9346i, global1.x)), -countOneBits(vec4<i32>(1i, 25484i, 8732i, u_input.a))) << (firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), func_1())) % vec4<u32>(32u));
    var var_0 = Struct_2(Struct_1(vec2<u32>(1u, 1u), !(2147483647i < u_input.a), 2147483647i, true, ~(-vec4<i32>(u_input.a, u_input.a, 25143i, u_input.a))), select(false, u_input.a == _wgslsmith_mod_i32(1i >> (0u % 32u), -u_input.a), !(1u >= _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 64514u, 64700u), vec3<u32>(58995u, 1u, 0u)))), !(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false))));
    let var_1 = select(-abs(var_0.a.e & var_0.a.e), -countOneBits(min(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -2147483647i, 56182i, 8217i), var_0.a.e), vec4<i32>(var_0.a.c, u_input.a, -2147483647i, u_input.a))), true);
    var var_2 = var_0.a;
    var_2 = var_0.a;
    var var_3 = var_0.c;
    var var_4 = ~(-12740i);
    var_3 = !(!vec3<bool>(true || !var_0.a.d, all(vec4<bool>(false, var_2.b, true, true)), false));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-350f, -681f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_mult_i32(-49553i, 1i), var_0.a, var_0.a, select(vec2<bool>(var_0.b, var_0.c.x), var_3.yz, vec2<bool>(true, false)))).x, _wgslsmith_f_op_f32(sign(-792f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-446f, 763f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1225f - _wgslsmith_f_op_f32(step(1000f, 178f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2029f, 1385f), vec2<f32>(865f, -604f), var_2.b))))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, _wgslsmith_f_op_f32(max(-438f, 302f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1715f, -488f), vec2<f32>(-865f, -456f))), select(true, false, any(var_3.zz))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-637f, -1351f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-720f, -991f), vec2<f32>(1000f, -2326f), var_2.b))))))), _wgslsmith_add_u32(var_0.a.a.x, var_2.a.x), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(select(firstLeadingBit(vec3<u32>(1u, var_0.a.a.x, 46624u)), vec3<u32>(var_2.a.x, var_0.a.a.x, var_0.a.a.x), var_3.x), ~vec3<u32>(23550u, 4294967295u, var_0.a.a.x)), vec3<u32>(~1u, ~27279u, _wgslsmith_mod_u32(4294967295u, var_2.a.x)) >> (abs(reverseBits(vec3<u32>(27589u, 0u, 86119u))) % vec3<u32>(32u))));
}

