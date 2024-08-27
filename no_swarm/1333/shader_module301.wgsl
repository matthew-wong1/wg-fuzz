struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 801f;

var<private> global1: array<Struct_3, 13>;

var<private> global2: Struct_3 = Struct_3(672f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> i32 {
    global1 = array<Struct_3, 13>();
    var var_0 = vec2<bool>(!(all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), false)) || true), select(false, true, all(vec3<bool>(true, true, true))));
    var var_1 = Struct_1(_wgslsmith_sub_u32(10197u, u_input.c));
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1000f))))))));
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~(~var_1.a)), firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_sub_u32(var_1.a, 4294967295u), ~u_input.c)) & ~(4294967295u << (_wgslsmith_mult_u32(0u, var_1.a) % 32u))), 13u)];
    return _wgslsmith_mod_i32(-_wgslsmith_mod_i32(abs(~1i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-83338i, 24186i, -2147483647i, 0i), vec4<i32>(-6495i, -2147483647i, 2147483647i, 1i))), -(~_wgslsmith_div_i32(_wgslsmith_mod_i32(46186i, -1i), ~2147483647i)));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: bool, arg_3: vec3<u32>) -> Struct_2 {
    global0 = -848f;
    let var_0 = vec4<i32>(firstLeadingBit(-1i | _wgslsmith_add_i32(2147483647i, ~arg_1)), -1i, -11394i, func_3());
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(902f + _wgslsmith_f_op_f32(global2.a - global2.a)), _wgslsmith_f_op_f32(f32(-1f) * -413f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-277f, -291f) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-174f, -935f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(global2.a, -1286f)), -519f))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + -965f) - _wgslsmith_div_f32(-454f, _wgslsmith_f_op_f32(step(global2.a, global2.a)))), _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(max(769f, _wgslsmith_f_op_f32(f32(-1f) * -923f))), arg_0)))) + -421f);
    var var_3 = false;
    return Struct_2(Struct_1(1u), u_input.a.wy, Struct_1(14561u ^ ~(~u_input.a.x)), var_1);
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = func_2(true, _wgslsmith_clamp_i32(~2147483647i, ~_wgslsmith_div_i32(-19526i ^ arg_0.x, arg_0.x >> (1u % 32u)), _wgslsmith_clamp_i32(~(~2147483647i), max(arg_0.x | 2147483647i, ~(-29067i)), -55643i)), true, vec3<u32>(~_wgslsmith_sub_u32(_wgslsmith_add_u32(28358u, 0u), 5929u << (0u % 32u)), _wgslsmith_clamp_u32(u_input.a.x, ~(~4294967295u), abs(u_input.c)), 81631u));
    global1 = array<Struct_3, 13>();
    global1 = array<Struct_3, 13>();
    let var_1 = 6983i >> (select(_wgslsmith_mult_u32(_wgslsmith_div_u32(select(var_0.c.a, 96243u, true), var_0.b.x), _wgslsmith_clamp_u32(~28376u, min(22616u, 4294967295u), abs(var_0.c.a))), select(4294967295u, 1u, (u_input.a.x << (1u % 32u)) <= ~var_0.a.a), true) % 32u);
    var var_2 = vec3<bool>(-_wgslsmith_add_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), vec2<i32>(arg_0.x, var_1))) < (arg_0.x & _wgslsmith_div_i32(arg_0.x, reverseBits(15283i))), all(vec4<bool>(true, (12523i == var_1) == true, true, true)), any(vec2<bool>(~arg_0.x <= _wgslsmith_sub_i32(arg_0.x, arg_0.x), true)));
    return Struct_1(_wgslsmith_dot_vec3_u32(countOneBits(abs(_wgslsmith_mult_vec3_u32(u_input.a.wwy, u_input.a.zyx))), _wgslsmith_sub_vec3_u32(~(vec3<u32>(var_0.c.a, u_input.b, u_input.a.x) >> (u_input.a.xxz % vec3<u32>(32u))), vec3<u32>(41184u, 1u, u_input.a.x))));
}

fn func_4(arg_0: vec2<u32>, arg_1: u32, arg_2: bool, arg_3: Struct_2) -> Struct_3 {
    var var_0 = firstLeadingBit(-55074i);
    let var_1 = u_input.c;
    var var_2 = global1[_wgslsmith_index_u32(9808u, 13u)];
    global1 = array<Struct_3, 13>();
    var_0 = _wgslsmith_dot_vec4_i32(firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(0i, 0i, -2147483647i, 1i), ~vec4<i32>(-2147483647i, 1i, -2147483647i, 2147483647i))) << (~u_input.a % vec4<u32>(32u)), countOneBits(select(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -33066i, 1i, 33923i), vec4<i32>(1i, 1i, -44037i, 2147483647i))), select(~vec4<i32>(-16504i, -26398i, -1i, -11335i), select(vec4<i32>(-2147483647i, 60495i, -24433i, -8649i), vec4<i32>(2147483647i, 1i, 2147483647i, 74483i), arg_2), false), arg_2)));
    return global1[_wgslsmith_index_u32(arg_1, 13u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global2.a;
    global2 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c, ~abs(u_input.a.x)), 13u)];
    let var_0 = Struct_1(u_input.c);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -512f));
    var var_1 = !(!vec3<bool>(all(vec2<bool>(true, true)), 1i > firstTrailingBit(-40636i), !select(false, true, true)));
    global2 = Struct_3(677f);
    var var_2 = func_4(u_input.a.yy | u_input.a.wy, _wgslsmith_sub_u32(_wgslsmith_mod_u32(~(~1u), ~1u), min(_wgslsmith_mult_u32(select(u_input.a.x, u_input.c, var_1.x), u_input.c), u_input.c)), !var_1.x, Struct_2(func_1(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 35152i, -2147483647i), firstTrailingBit(vec3<i32>(-1i, 57398i, 2147483647i)))), u_input.a.zx, Struct_1(func_2(var_1.x, 1i, true, u_input.a.xxz | vec3<u32>(u_input.b, var_0.a, 4294967295u)).a.a), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2.a, global2.a))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-101f, global2.a) - vec2<f32>(global2.a, -107f))), vec2<f32>(_wgslsmith_f_op_f32(max(global2.a, global2.a)), _wgslsmith_f_op_f32(f32(-1f) * -1309f)))));
    let var_3 = Struct_3(func_2(!all(vec4<bool>(var_1.x, true, false, false)), 1i, !(!var_1.x && false), u_input.a.zxy).d.x);
    let var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1000f, 1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 829f) - _wgslsmith_div_f32(1817f, _wgslsmith_f_op_f32(var_2.a + global2.a)))), _wgslsmith_div_i32(1i, 1i), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4)), 339f));
}

