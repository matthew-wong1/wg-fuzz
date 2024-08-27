struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 12> = array<vec2<bool>, 12>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global1: u32 = 49590u;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> bool {
    global0 = array<vec2<bool>, 12>();
    global0 = array<vec2<bool>, 12>();
    global1 = 1u;
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(174f)) * arg_0.a), arg_0.b, -1i);
    var_0 = Struct_1(738f, var_0.b, arg_0.c);
    return true;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: bool) -> vec3<f32> {
    let var_0 = _wgslsmith_add_u32(_wgslsmith_add_u32(~u_input.a, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(1u ^ u_input.a), 4294967295u, _wgslsmith_div_u32(60037u, countOneBits(u_input.a))), (select(vec3<u32>(0u, 46661u, 4294967295u), vec3<u32>(0u, u_input.a, u_input.a), arg_1.x) & vec3<u32>(28310u, u_input.a, u_input.a)) << (~_wgslsmith_sub_vec3_u32(vec3<u32>(11764u, u_input.a, 17265u), vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u))));
    global1 = 0u;
    var var_1 = Struct_1(-287f, ~_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-11338i, 25102i, 2147483647i, 1i), vec4<i32>(2147483647i, 71749i, -2147483647i, -2147483647i)), -vec4<i32>(1i, 1i, 56082i, 80630i))), -(~(-2147483647i) << (0u % 32u)));
    global1 = ~abs(~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(var_0, u_input.a, u_input.a, 13363u)), vec4<u32>(4294967295u, 4294967295u, u_input.a, u_input.a)));
    global1 = u_input.a;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(489f, arg_0.x, arg_0.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -942f, arg_0.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(188f, 718f, arg_0.x)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-884f, _wgslsmith_f_op_f32(arg_0.x - var_1.a), _wgslsmith_div_f32(2264f, var_1.a)))), vec3<bool>(false, false, arg_1.x))));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32) -> vec3<f32> {
    let var_0 = arg_1.c == -_wgslsmith_mult_i32(3989i, _wgslsmith_div_i32(arg_1.c, countOneBits(-11157i)));
    global0 = array<vec2<bool>, 12>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(arg_0.xz, select(vec3<bool>(!var_0, !var_0, func_3(arg_1)), select(vec3<bool>(var_0, var_0, var_0), !vec3<bool>(true, var_0, var_0), vec3<bool>(true, true, false)), vec3<bool>(var_0, !var_0, true)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 0u), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.a), vec3<u32>(u_input.a, 61589u, 1u))) >= _wgslsmith_mod_u32(37918u, ~26265u))) + vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(123f + arg_0.x) - arg_0.x) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -932f)))), -261f));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = min(min(~vec4<u32>(u_input.a, 1u, 4294967295u, 4294967295u), ~select(vec4<u32>(38761u, u_input.a, u_input.a, 0u), vec4<u32>(arg_1.x, u_input.a, arg_1.x, 1u), true)) & _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, 4294967295u, 81222u, u_input.a), vec4<u32>(arg_1.x, u_input.a, arg_1.x, 4294967295u)), ~vec4<u32>(arg_1.x, 35426u, arg_1.x, 47165u)), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a, 117210u, 23037u), vec4<u32>(arg_1.x, u_input.a, 1u, arg_1.x)))));
    let var_1 = Struct_1(arg_0.a, _wgslsmith_mult_i32(arg_0.c, _wgslsmith_add_i32(arg_0.b, reverseBits(arg_0.b))), ~(-arg_0.c) & 0i);
    var var_2 = _wgslsmith_f_op_vec3_f32(func_2(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.a))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(698f, -1221f)))), 396f, _wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(step(var_1.a, -1081f)))), var_1, _wgslsmith_f_op_f32(f32(-1f) * -1132f)));
    global1 = reverseBits(var_0.x) << (u_input.a % 32u);
    var var_3 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.a, -1301f, var_2.x)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-425f, -716f, var_2.x, -184f) * vec4<f32>(1371f, 1000f, 1112f, arg_0.a)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(184f, var_1.a, 511f, arg_0.a) * vec4<f32>(1000f, arg_0.a, var_2.x, 1738f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1616f, var_2.x, 803f, var_2.x)))), var_1, var_1.a)).x, _wgslsmith_div_i32(1i, -1035i), ~(-26903i));
}

fn func_5(arg_0: Struct_1) -> i32 {
    var var_0 = Struct_1(-684f, arg_0.c, arg_0.b);
    let var_1 = func_1(func_1(Struct_1(arg_0.a, select(~arg_0.b, _wgslsmith_add_i32(var_0.c, var_0.c), any(vec4<bool>(false, false, false, true))), -2147483647i << (_wgslsmith_add_u32(u_input.a, 1u) % 32u)), abs(_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(1u, 4294967295u, u_input.a)), vec3<u32>(u_input.a, u_input.a, u_input.a), ~vec3<u32>(u_input.a, 41264u, u_input.a)))), _wgslsmith_sub_vec3_u32(vec3<u32>(~0u, 0u, u_input.a), ~vec3<u32>(u_input.a, ~u_input.a, u_input.a)));
    global0 = array<vec2<bool>, 12>();
    var var_2 = reverseBits(u_input.a);
    var var_3 = ~(~(_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(1u, u_input.a, u_input.a, u_input.a)), vec4<u32>(116305u, 73019u, u_input.a, 4294967295u)) >> (~(~vec4<u32>(0u, 35724u, u_input.a, 0u)) % vec4<u32>(32u))));
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(1i);
    global0 = array<vec2<bool>, 12>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1013f)))), var_0, func_5(func_1(Struct_1(-727f, var_0, var_0), vec3<u32>(select(u_input.a, 40335u, false), 13839u, _wgslsmith_add_u32(u_input.a, 0u)))));
    var_1 = func_1(func_1(Struct_1(-391f, 1i, 2147483647i), firstTrailingBit(max(~vec3<u32>(u_input.a, 4294967295u, u_input.a), ~vec3<u32>(4294967295u, 4294967295u, u_input.a)))), vec3<u32>(1u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a, _wgslsmith_sub_u32(73694u, u_input.a)), reverseBits(abs(4294967295u))), _wgslsmith_sub_u32(0u, _wgslsmith_add_u32(u_input.a, u_input.a))));
    let var_2 = func_1(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -965f), -56735i, ~select(var_1.b, -14196i, true)), ~firstLeadingBit(select(vec3<u32>(u_input.a, 1u, u_input.a) & vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(u_input.a, u_input.a, 1u), vec3<bool>(false, true, false))));
    global0 = array<vec2<bool>, 12>();
    var_1 = func_1(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1130f)), var_0, _wgslsmith_clamp_i32(0i, countOneBits(var_0), 2147483647i)), vec3<u32>(~1u, u_input.a | firstTrailingBit(~5640u), u_input.a));
    var_1 = var_2;
    let var_3 = ~firstLeadingBit(var_0);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(trunc(2395f)), _wgslsmith_f_op_f32(var_1.a * -1396f), func_1(var_2, vec3<u32>(u_input.a, u_input.a, 0u)).a)), func_1(var_2, _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, 29933u, 49710u), abs(vec3<u32>(72056u, 82923u, 4294967295u)))), -1194f)).x, vec4<i32>(_wgslsmith_mult_i32(-14444i, -20337i), ~(~4726i) & (~var_2.b >> (_wgslsmith_clamp_u32(4294967295u, u_input.a, u_input.a) % 32u)), -2147483647i, -2147483647i), _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_1.a)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_1.a)))), vec3<bool>(true, true, true), max(func_1(Struct_1(var_2.a, var_3, -1516i), vec3<u32>(4294967295u, 41627u, 94617u)).b, _wgslsmith_clamp_i32(-38387i, var_1.c, 1524i)) < -func_5(Struct_1(223f, -77340i, var_2.b)))).x);
}

