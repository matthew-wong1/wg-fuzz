struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: u32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: bool,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25> = array<bool, 25>(true, true, false, true, true, true, false, false, false, true, true, false, false, false, false, false, false, false, true, true, true, false, true, false, false);

var<private> global1: i32 = 1i;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3) -> vec3<f32> {
    let var_0 = _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(-_wgslsmith_mod_vec3_i32(arg_0.a | vec3<i32>(u_input.a, arg_0.a.x, arg_0.a.x), vec3<i32>(-2147483647i, u_input.a, -52488i)), (vec3<i32>(u_input.a, arg_0.a.x, -20060i) >> (arg_1.b % vec3<u32>(32u))) | ~(-arg_0.a)), _wgslsmith_sub_vec3_i32(arg_0.a, ~select(arg_0.a, vec3<i32>(-1i, arg_0.a.x, arg_0.a.x), vec3<bool>(global0[_wgslsmith_index_u32(arg_1.b.x, 25u)], false, global0[_wgslsmith_index_u32(arg_1.b.x, 25u)]))) | vec3<i32>(21989i, ~min(arg_0.a.x, 3197i), 0i));
    var var_1 = vec4<u32>(u_input.c.x, arg_1.b.x, arg_1.b.x, u_input.c.x);
    var var_2 = Struct_5(vec4<bool>(!global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(29508u, 1u, var_1.x), vec3<u32>(u_input.d, var_1.x, 0u) ^ u_input.c), 25u)], any(!(!vec4<bool>(false, true, global0[_wgslsmith_index_u32(0u, 25u)], true))), all(!vec3<bool>(global0[_wgslsmith_index_u32(var_1.x, 25u)], global0[_wgslsmith_index_u32(arg_1.b.x, 25u)], global0[_wgslsmith_index_u32(u_input.b.x, 25u)])) && global0[_wgslsmith_index_u32(var_1.x, 25u)], false), !(false || global0[_wgslsmith_index_u32(~32012u, 25u)]), Struct_2(arg_0.a), var_1.x);
    var_2 = Struct_5(var_2.a, !(!((u_input.b.x <= 14152u) && true)), arg_0, ~1u);
    global0 = array<bool, 25>();
    return arg_1.c;
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = vec4<u32>(~max(1u, 4294967295u ^ u_input.c.x), _wgslsmith_sub_u32(u_input.b.x, u_input.c.x), 4294967295u, u_input.d);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -644f))), u_input.e ^ u_input.e, _wgslsmith_f_op_vec3_f32(func_3(Struct_2(~vec3<i32>(arg_0, -28170i, arg_0) ^ ~vec3<i32>(-47801i, -1i, -1i)), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -706f), u_input.c, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f))), Struct_1(1f)))), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1242f - 1244f))))));
    var var_2 = u_input.c.x;
    global1 = -2655i;
    global1 = _wgslsmith_dot_vec4_i32(vec4<i32>(select(arg_0, arg_0, true), arg_0, ~u_input.a, arg_0), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, arg_0, ~abs(arg_0), arg_0), vec4<i32>(u_input.a << (15989u % 32u), abs(u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, arg_0), vec2<i32>(14993i, 12472i)), -u_input.a) >> (vec4<u32>(u_input.e.x, ~var_1.b.x, ~u_input.e.x, _wgslsmith_div_u32(4294967295u, u_input.b.x)) % vec4<u32>(32u))));
    return 4294967295u;
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: f32, arg_3: Struct_2) -> i32 {
    global1 = 2147483647i;
    global0 = array<bool, 25>();
    let var_0 = arg_3;
    var var_1 = Struct_4(arg_1, vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 25u)], true), _wgslsmith_mod_u32(~(~(~72369u)), _wgslsmith_add_u32(1u, ~(~u_input.e.x))));
    let var_2 = Struct_4(vec3<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, 0i, u_input.a, 0i), vec4<i32>(-6665i, 0i, -1i, 2147483647i) >> (vec4<u32>(u_input.b.x, var_1.c, u_input.e.x, 115572u) % vec4<u32>(32u))) >= 35760i, any(!vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 25u)], true, arg_1.x)), ~_wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(var_1.c, var_1.c, u_input.b.x)) >= ~43658u), arg_1, max(_wgslsmith_sub_u32(u_input.e.x, reverseBits(var_1.c)), ~0u));
    return -abs(_wgslsmith_dot_vec3_i32(-vec3<i32>(-2861i, 23994i, u_input.a), arg_3.a << (u_input.c % vec3<u32>(32u))) << (u_input.b.x % 32u));
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = 17268u;
    global1 = func_4(false, vec3<bool>(!((u_input.a > u_input.a) && true), global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d ^ u_input.d, func_2(-u_input.a)), 25u)]), _wgslsmith_f_op_f32(-1f), Struct_2(vec3<i32>(21027i, firstLeadingBit(firstLeadingBit(2144i)), 2147483647i)));
    global1 = 1i;
    var var_1 = u_input.a;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1870f), _wgslsmith_f_op_vec3_f32(func_3(Struct_2(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, -61313i), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, 58621i, u_input.a), vec3<i32>(2147483647i, 2992i, 0i)))), Struct_3(824f, u_input.e, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(293f, 1474f, -1537f)))), Struct_1(_wgslsmith_f_op_f32(-794f + -1671f))))).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(808f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(624f)))))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(1f - -1065f)));
    return 35445u;
}

fn func_5(arg_0: u32, arg_1: Struct_5, arg_2: Struct_1, arg_3: Struct_4) -> StorageBuffer {
    let var_0 = (firstTrailingBit(19416u) >= ~_wgslsmith_mult_u32(arg_0 >> (u_input.d % 32u), arg_3.c)) | (!any(select(arg_1.a.xw, arg_3.b.yx, arg_3.a.x)) & any(!arg_1.a));
    var var_1 = countOneBits(u_input.c.x);
    var var_2 = Struct_3(arg_2.a, ~(~_wgslsmith_clamp_vec3_u32(min(vec3<u32>(4294967295u, u_input.e.x, u_input.b.x), u_input.e), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, arg_3.c, arg_1.d), u_input.e), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.d, arg_1.d, 1860u), vec3<u32>(arg_3.c, u_input.c.x, arg_3.c)))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.a * arg_2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a + arg_2.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-140f + 119f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.a))))), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-580f, 752f)))))));
    global1 = arg_1.c.a.x;
    var var_3 = Struct_3(-298f, vec3<u32>(arg_0, (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 39740u, arg_1.d, var_2.b.x), vec4<u32>(61873u, 0u, var_2.b.x, var_2.b.x)) >> (1u % 32u)) ^ ~u_input.d, countOneBits(_wgslsmith_mult_u32(0u, 0u))), var_2.c, var_2.d);
    return StorageBuffer(_wgslsmith_mult_u32(4294967295u, ~(~4294967295u) << (arg_1.d % 32u)), arg_1.c.a.yx, ~(~_wgslsmith_div_i32(max(-5163i, u_input.a), _wgslsmith_div_i32(u_input.a, arg_1.c.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1600f)) + _wgslsmith_f_op_f32(f32(-1f) * -534f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-546f * -1000f), -330f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-839f + -569f))), -762f, 1398f));
    global1 = i32(-1i) * -1363i;
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    let var_1 = vec3<f32>(-221f, _wgslsmith_f_op_f32(-var_0.x), -1847f);
    let x = u_input.a;
    s_output = func_5(func_1(u_input.b.x), Struct_5(select(!(!vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 25u)], false, true)), vec4<bool>(all(vec4<bool>(true, true, global0[_wgslsmith_index_u32(1u, 25u)], false)), any(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 25u)], global0[_wgslsmith_index_u32(u_input.b.x, 25u)], global0[_wgslsmith_index_u32(50833u, 25u)])), any(vec3<bool>(global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(u_input.e.x, 25u)], global0[_wgslsmith_index_u32(u_input.d, 25u)])), !global0[_wgslsmith_index_u32(u_input.d, 25u)]), !global0[_wgslsmith_index_u32(select(u_input.b.x, u_input.d, false), 25u)]), any(!select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 25u)], global0[_wgslsmith_index_u32(u_input.b.x, 25u)], global0[_wgslsmith_index_u32(u_input.b.x, 25u)]), vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.d, 25u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 25u)], true))), Struct_2(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(0i, 1i, 2147483647i), false), vec3<i32>(2467i, -12167i, -1i), _wgslsmith_mult_vec3_i32(vec3<i32>(25192i, u_input.a, u_input.a), vec3<i32>(u_input.a, -1i, u_input.a)))), _wgslsmith_clamp_u32(~1u, 23392u, 65553u)), Struct_1(var_1.x), Struct_4(!select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 25u)], true, false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 25u)], global0[_wgslsmith_index_u32(u_input.c.x, 25u)], global0[_wgslsmith_index_u32(11329u, 25u)]), global0[_wgslsmith_index_u32(u_input.e.x, 25u)]), !vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 25u)], true), vec3<bool>(true, true, true)), !(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 25u)], global0[_wgslsmith_index_u32(10636u, 25u)], false)), countOneBits(~_wgslsmith_mult_u32(u_input.b.x, u_input.c.x))));
}

