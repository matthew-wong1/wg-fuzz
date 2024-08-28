struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: bool, arg_3: vec2<bool>) -> vec2<u32> {
    var var_0 = arg_0.a.x;
    global0 = array<Struct_1, 9>();
    var var_1 = all(!(!(!vec4<bool>(false, false, arg_3.x, arg_2))));
    let var_2 = ~vec4<i32>(arg_0.c.a.x, -(~arg_0.c.a.x << (~1u % 32u)), -1131i, arg_0.c.b.x >> (_wgslsmith_dot_vec4_u32(~arg_0.a, vec4<u32>(u_input.a, 1u, u_input.b, u_input.b)) % 32u));
    let var_3 = arg_0.c;
    return vec2<u32>(~_wgslsmith_add_u32(~arg_0.a.x << (u_input.b % 32u), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(arg_0.a, vec4<u32>(u_input.b, 0u, u_input.a, arg_0.a.x)), 43950u & u_input.a)), arg_0.a.x ^ abs(countOneBits(~arg_0.a.x)));
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: u32) -> u32 {
    let var_0 = 27259u;
    var var_1 = Struct_1(countOneBits(~(arg_2.c.b & vec2<i32>(arg_2.c.a.x, arg_2.c.b.x))), arg_2.c.a);
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~0u, _wgslsmith_div_u32((1u ^ ~arg_3) << (var_0 % 32u), firstLeadingBit(_wgslsmith_mult_u32(arg_1.x, 65087u))), func_2(arg_2, 1f, arg_0, !select(select(vec2<bool>(true, arg_2.b), vec2<bool>(true, arg_2.b), vec2<bool>(arg_0, true)), !vec2<bool>(arg_0, false), true)).x), 9u)];
    let var_3 = !select(select(vec4<bool>(true, !arg_2.b, any(vec3<bool>(arg_0, arg_0, arg_2.b)), arg_0), select(vec4<bool>(arg_0, arg_0, false, true), !vec4<bool>(true, arg_0, arg_0, false), false), vec4<bool>(arg_2.b | true, arg_0, arg_2.b || arg_2.b, 34062u != u_input.a)), vec4<bool>(arg_0, max(0i, 19642i) <= _wgslsmith_add_i32(var_2.b.x, 2147483647i), !arg_2.b, true), vec4<bool>(!(true == arg_2.b), !all(vec2<bool>(arg_0, arg_0)), all(vec3<bool>(arg_0, arg_0, true)) != true, arg_2.b));
    var var_4 = select((firstTrailingBit(var_1.b) ^ vec2<i32>(1i, 62596i)) | reverseBits(~var_2.b), var_2.b, !(!select(select(var_3.xz, var_3.zw, arg_0), !vec2<bool>(true, arg_2.b), !var_3.x)));
    return ~(~arg_3) & ~arg_1.x;
}

fn func_4(arg_0: f32, arg_1: vec2<i32>, arg_2: f32, arg_3: Struct_3) -> Struct_2 {
    return Struct_2(false, ~u_input.b ^ ~u_input.a, abs(~firstTrailingBit(_wgslsmith_add_u32(1u, 25933u))));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: vec3<i32>) -> f32 {
    let var_0 = func_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1418f))))), (arg_3.xx & ~arg_3.xx) << (~abs(func_2(Struct_3(vec4<u32>(u_input.b, u_input.a, 4294967295u, u_input.a), true, global0[_wgslsmith_index_u32(37272u, 9u)]), 1279f, arg_0, vec2<bool>(arg_0, false))) % vec2<u32>(32u)), _wgslsmith_f_op_f32(abs(-1540f)), Struct_3(vec4<u32>(85u, u_input.a, 4294967295u, _wgslsmith_mult_u32(func_3(false, vec3<u32>(u_input.a, u_input.b, u_input.a), Struct_3(vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.a), arg_0, global0[_wgslsmith_index_u32(23850u, 9u)]), 0u), 4294967295u >> (u_input.a % 32u))), arg_0, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(func_3(true, _wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.b, u_input.b), vec3<u32>(37704u, 4294967295u, u_input.b)), Struct_3(vec4<u32>(4294967295u, 0u, u_input.b, 26817u), false, Struct_1(vec2<i32>(arg_2.a.x, 26612i), vec2<i32>(1i, 0i))), u_input.b), 4294967295u, min(14457u << (0u % 32u), ~u_input.a)), 9u)]));
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-156f + _wgslsmith_div_f32(-463f, _wgslsmith_div_f32(956f, 1017f))), -173f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -773f)), -1925f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -425f) - 965f) - _wgslsmith_f_op_f32(-610f + _wgslsmith_f_op_f32(floor(253f))))));
    return _wgslsmith_f_op_f32(var_1.x - var_1.x);
}

fn func_5(arg_0: vec4<f32>, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = vec2<bool>((u_input.a <= u_input.a) == (reverseBits(~(-1i)) == abs(-arg_1.x)), any(!vec3<bool>(true, any(vec3<bool>(false, false, true)), true)));
    let var_1 = func_2(Struct_3(vec4<u32>(max(select(u_input.b, 1u, var_0.x), u_input.a), _wgslsmith_add_u32(4465u, u_input.a), ~(0u & u_input.a), 67068u), !(u_input.a == u_input.b) | select(false, true, true), global0[_wgslsmith_index_u32(u_input.a, 9u)]), 554f, ((_wgslsmith_sub_i32(arg_1.x, arg_1.x) << (128332u % 32u)) <= -1i) && (_wgslsmith_dot_vec4_u32(vec4<u32>(1484u, u_input.a, 0u, u_input.b), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.b, 1u, u_input.b), vec4<u32>(u_input.a, u_input.a, 1u, u_input.a))) != ~(~u_input.a)), !(!(!select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, var_0.x), var_0.x))));
    var var_2 = !any(select(vec2<bool>(var_0.x && false, all(vec2<bool>(var_0.x, false))), vec2<bool>(!var_0.x, false != var_0.x), var_0.x));
    var var_3 = 25056i >> ((~var_1.x & 0u) % 32u);
    var_3 = i32(-1i) * -2147483647i;
    return global0[_wgslsmith_index_u32(27348u, 9u)];
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 278f, -942f), vec3<f32>(-459f, 197f, -1374f), true))))))))));
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    var var_1 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -1476f, var_0.x)) - vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), var_0.x, _wgslsmith_f_op_f32(var_0.x * 993f), _wgslsmith_f_op_f32(552f + 202f)))), -vec2<i32>(_wgslsmith_mult_i32(-6462i, i32(-1i) * -52817i), 31393i));
    var_1 = global0[_wgslsmith_index_u32(16794u, 9u)];
    return global0[_wgslsmith_index_u32(abs(27283u), 9u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 9>();
    var var_0 = _wgslsmith_f_op_f32(ceil(-1522f));
    let var_1 = ~_wgslsmith_div_u32(_wgslsmith_div_u32(firstLeadingBit(~u_input.a), select(u_input.a, u_input.a, any(vec2<bool>(false, false)))), 1u);
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1154f, _wgslsmith_f_op_f32(f32(-1f) * -751f)))))));
    var var_3 = func_6(func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, var_2.x, -522f, var_2.x), vec4<f32>(489f, var_2.x, var_2.x, 966f))) + vec4<f32>(var_2.x, _wgslsmith_f_op_f32(func_1(true, 2147483647i, Struct_1(vec2<i32>(17789i, 28274i), vec2<i32>(60833i, 0i)), vec3<i32>(-2147483647i, 121i, 5260i))), -1040f, 516f)), vec2<i32>(_wgslsmith_sub_i32(-1i, _wgslsmith_add_i32(7708i, 1i)), reverseBits(38816i))));
    var_3 = Struct_1(var_3.a, vec2<i32>(var_3.a.x ^ ~firstTrailingBit(var_3.a.x), var_3.a.x));
    var var_4 = Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(42067i, ~1i, -var_3.b.x), _wgslsmith_add_i32(-53495i, i32(-1i) * -2147483647i)), vec2<i32>(1i, ~var_3.b.x)), vec2<i32>(1i, func_6(global0[_wgslsmith_index_u32(~45128u, 9u)]).a.x >> (_wgslsmith_mult_u32(firstTrailingBit(u_input.b), 1u) % 32u)));
    let var_5 = ~vec4<i32>(-_wgslsmith_sub_i32(-var_4.a.x, 46192i), ~var_3.a.x, 1i, abs(-23818i));
    var_4 = Struct_1(vec2<i32>(-var_5.x, abs(1i)), reverseBits(vec2<i32>(-46859i, var_5.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(_wgslsmith_mod_u32(~var_1, func_2(Struct_3(vec4<u32>(0u, 111971u, 1u, 0u), true, global0[_wgslsmith_index_u32(49222u, 9u)]), var_2.x, true, vec2<bool>(true, true)).x), firstLeadingBit(_wgslsmith_mult_u32(38670u, var_1))), var_2, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1733f + var_2.x)))), -578f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(132f))) - _wgslsmith_f_op_f32(1f - var_2.x))), var_1);
}

