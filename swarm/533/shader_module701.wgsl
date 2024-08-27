struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_3,
    d: bool,
    e: Struct_1,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 6>;

var<private> global1: vec4<i32>;

var<private> global2: array<vec2<u32>, 21>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>) -> u32 {
    global1 = vec4<i32>(35036i, min(u_input.b.x, u_input.a.x), _wgslsmith_mult_i32(u_input.b.x, _wgslsmith_mult_i32(u_input.a.x, global1.x)), -(~_wgslsmith_mod_i32(2147483647i, -68242i) & _wgslsmith_mult_i32(u_input.b.x, abs(global1.x))));
    global0 = array<vec2<i32>, 6>();
    let var_0 = Struct_5(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), true), select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), false), true), vec4<bool>(true, true, all(vec4<bool>(false, false, true, false)), false)));
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1552f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1096f * 782f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(trunc(-220f))))), 1291f), -50275i);
    global2 = array<vec2<u32>, 21>();
    return _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 60031u, 9261u, 1008u), vec4<u32>(4294967295u, 4294967295u, 33924u, 93089u)), ~_wgslsmith_sub_u32(5873u, 0u), 1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 7998u, 1u), vec4<u32>(32584u, 0u, 7013u, 54922u)))), ~_wgslsmith_clamp_u32(113825u, countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 6786u, 108591u), vec3<u32>(34408u, 0u, 1u))), select(1u, 0u, false) & 1u));
}

fn func_2() -> f32 {
    var var_0 = (_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(21053u, 106233u, 2938u), min(vec3<u32>(1u, 0u, 143812u), vec3<u32>(0u, 1u, 42669u))), vec3<u32>(1u, 1u, 1u)) & _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(29653u, 4294967295u, 62072u)), select(vec3<u32>(0u, 30118u, 1u), vec3<u32>(0u, 45033u, 4294967295u), true)), vec3<u32>(firstLeadingBit(37588u), 5650u, func_3(vec4<i32>(global1.x, 48487i, u_input.b.x, global1.x))))) << (min(vec3<u32>(1u, 1u, 1u), vec3<u32>(countOneBits(23797u), _wgslsmith_sub_u32(func_3(vec4<i32>(25035i, global1.x, -10356i, global1.x)), 88579u), firstTrailingBit(1u))) % vec3<u32>(32u));
    global0 = array<vec2<i32>, 6>();
    let var_1 = vec2<bool>(all(select(vec3<bool>(any(vec3<bool>(true, false, true)), all(vec2<bool>(false, true)), true), vec3<bool>(true, true, true), all(vec4<bool>(true, true, true, true)))), true);
    var var_2 = vec3<i32>(-16691i, min(firstLeadingBit(u_input.b.x), -66730i ^ (~(-1i) | -global1.x)), -_wgslsmith_sub_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(global1.x, u_input.b.x, global1.x, 34277i), reverseBits(vec4<i32>(u_input.a.x, global1.x, global1.x, -1i)))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -551f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-229f - 1f) + _wgslsmith_f_op_f32(-558f - _wgslsmith_f_op_f32(select(-1000f, -236f, true)))), -485f, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-592f - 1406f))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-475f)) - _wgslsmith_f_op_f32(2082f + -929f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-437f, -542f) + _wgslsmith_f_op_f32(f32(-1f) * -159f)), all(vec2<bool>(var_1.x, var_1.x))))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_3.x)));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: vec2<f32>, arg_3: Struct_4) -> u32 {
    let var_0 = Struct_4(arg_3.a, !select(select(vec4<bool>(false, arg_3.d, arg_1, false), !vec4<bool>(true, false, arg_1, false), false), arg_3.b, select(arg_3.b, select(arg_3.b, vec4<bool>(arg_3.b.x, arg_1, false, arg_1), false), 0u >= arg_3.c.d)), Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_3.e.a, vec3<f32>(arg_0, -1048f, 1195f))) + _wgslsmith_f_op_vec3_f32(-arg_3.c.a.a)), min(~u_input.b.x, global1.x << (4294967295u % 32u))), arg_0, 31616u, ~firstTrailingBit(4294967295u)), !arg_1, Struct_1(_wgslsmith_f_op_vec3_f32(-arg_3.e.a), i32(-1i) * -abs(89965i)));
    global1 = arg_3.a.c;
    let var_1 = Struct_5(select(!var_0.b, !vec4<bool>(any(var_0.b.xw), false, any(arg_3.b), !var_0.b.x), select(vec4<bool>(arg_3.a.b == 1101i, var_0.d && arg_3.d, var_0.d, var_0.c.d >= 1u), var_0.b, reverseBits(33992u) < _wgslsmith_dot_vec4_u32(vec4<u32>(29801u, var_0.c.c, arg_3.c.d, 0u), vec4<u32>(4294967295u, 78129u, 4294967295u, var_0.c.d)))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -662f)), ~(u_input.b.x ^ -1i), ~min(vec4<i32>(12432i, reverseBits(var_0.c.a.b), ~41304i, arg_3.a.b & global1.x), select(firstLeadingBit(vec4<i32>(0i, 83463i, 26622i, -2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-60409i, -2147483647i, var_0.c.a.b, u_input.b.x), vec4<i32>(2147483647i, -31134i, global1.x, u_input.b.x), vec4<i32>(15649i, -1i, global1.x, -2147483647i)), !arg_1)), Struct_1(arg_3.a.d.a, _wgslsmith_sub_i32(1i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-1i, arg_3.c.a.b), -u_input.a.x, -arg_3.e.b))));
    var var_3 = Struct_5(select(!(!var_0.b), select(vec4<bool>(true, !var_1.a.x, arg_3.b.x, any(vec3<bool>(arg_1, var_1.a.x, true))), arg_3.b, ~var_0.c.c <= arg_3.c.c), true));
    return var_0.c.d;
}

fn func_1() -> StorageBuffer {
    global0 = array<vec2<i32>, 6>();
    var var_0 = 4294967295u;
    global2 = array<vec2<u32>, 21>();
    let var_1 = vec3<bool>(false, !(func_4(_wgslsmith_f_op_f32(func_2()), true, vec2<f32>(-952f, 2678f), Struct_4(Struct_2(1144f, 1i, vec4<i32>(-1i, global1.x, 1i, -25337i), Struct_1(vec3<f32>(-1332f, -2652f, -2288f), 20910i)), vec4<bool>(false, false, false, true), Struct_3(Struct_1(vec3<f32>(-342f, 618f, 1647f), global1.x), 591f, 4294967295u, 1u), true, Struct_1(vec3<f32>(1259f, 386f, 362f), -2147483647i))) < _wgslsmith_sub_u32(~1u, 25516u)), any(select(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec3<bool>(all(vec2<bool>(false, true)), true, false), vec3<bool>(true, true, true))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(352f)));
    return StorageBuffer(firstTrailingBit(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(43310u, 58576u), func_4(-819f, false, vec2<f32>(-315f, 189f), Struct_4(Struct_2(-1035f, 2147483647i, vec4<i32>(-2147483647i, global1.x, 1075i, global1.x), Struct_1(vec3<f32>(-392f, -203f, 951f), -13121i)), vec4<bool>(var_1.x, false, false, var_1.x), Struct_3(Struct_1(vec3<f32>(1514f, -163f, 432f), -9865i), 134f, 33292u, 0u), true, Struct_1(vec3<f32>(2798f, -261f, 411f), u_input.b.x)))), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 38022u), _wgslsmith_add_vec2_u32(vec2<u32>(0u, 48932u), vec2<u32>(58864u, 0u))))), ~select(vec3<u32>(92874u, 1u, 30326u), countOneBits(vec3<u32>(35235u, 4294967295u, 44942u)), false) | abs(~select(vec3<u32>(52203u, 33256u, 1u), vec3<u32>(341u, 27938u, 25067u), var_1)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(2025f, 627f, -2483f) - vec3<f32>(452f, 784f, 1250f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(600f, -949f, -1053f), vec3<f32>(650f, -212f, 1291f))), var_1)), vec3<f32>(1f, 1f, 1f))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

