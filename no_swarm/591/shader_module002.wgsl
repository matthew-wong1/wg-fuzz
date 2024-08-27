struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: bool,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
    c: vec3<f32>,
    d: u32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29>;

var<private> global1: vec3<u32> = vec3<u32>(48001u, 4294967295u, 26482u);

var<private> global2: vec2<f32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> vec2<f32> {
    let var_0 = 0i;
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_0.d.x, global0[_wgslsmith_index_u32(9893u, 29u)])));
    let var_2 = -749f;
    let var_3 = all(vec4<bool>(false, arg_0.c, reverseBits(arg_0.a.x) <= -1i, arg_0.b)) & all(vec2<bool>(!(!arg_0.b), all(vec3<bool>(arg_0.c, arg_0.b, arg_0.b))));
    global1 = _wgslsmith_add_vec3_u32(firstTrailingBit(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(34684u, 36306u, 17436u), vec3<u32>(0u, 60315u, u_input.b), vec3<u32>(global1.x, u_input.b, 36621u)), abs(vec3<u32>(global1.x, u_input.b, 4294967295u))), ~abs(vec3<u32>(1u, 50061u, 0u)))), _wgslsmith_add_vec3_u32(vec3<u32>(max(3410u, global1.x), firstLeadingBit(global1.x) << (60927u % 32u), abs(~global1.x)), reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<u32>(1u, 1u, 4294967295u))) ^ (~vec3<u32>(1u, 35550u, u_input.b) | ~vec3<u32>(u_input.b, 4240u, u_input.b))));
    return arg_0.d.zz;
}

fn func_2(arg_0: Struct_3) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_3(arg_0, arg_0.a.x));
    global0 = array<f32, 29>();
    global0 = array<f32, 29>();
    var var_1 = Struct_4(vec4<u32>(24640u, firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1741u, global1.x), ~vec3<u32>(u_input.b, 22998u, u_input.b))), 1u, ~select(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(81511u, global1.x, 0u, global1.x), vec4<u32>(76573u, 16821u, 0u, 1u)), all(vec4<bool>(false, arg_0.c, arg_0.b, arg_0.c)))), arg_0.a.x, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(298f, -446f, 521f))), global1.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.d.zy))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d.x, -252f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1300f, var_0.x))))));
    var var_2 = 13748u;
    return Struct_3(arg_0.a, arg_0.c, true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.d, var_1.c)))));
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> vec2<f32> {
    let var_0 = select(select(select(vec3<bool>(select(arg_1.b, false, true), true, global2.x != global0[_wgslsmith_index_u32(u_input.b, 29u)]), vec3<bool>(!arg_0, true, true), !(!vec3<bool>(false, arg_1.c, false))), !select(select(vec3<bool>(false, false, true), vec3<bool>(arg_0, arg_1.c, arg_0), arg_0), vec3<bool>(arg_0, true, false), vec3<bool>(arg_1.c, true, false)), vec3<bool>(arg_0, !arg_1.c, all(select(vec2<bool>(true, arg_1.b), vec2<bool>(arg_0, true), vec2<bool>(false, true))))), !select(!vec3<bool>(arg_0, true, false), select(vec3<bool>(true, true, true), select(vec3<bool>(arg_1.c, arg_0, arg_0), vec3<bool>(true, true, true), true), !vec3<bool>(arg_1.b, arg_0, false)), u_input.b < u_input.b), !select(select(vec3<bool>(true, true, arg_0), select(vec3<bool>(arg_0, true, true), vec3<bool>(arg_0, arg_1.b, true), vec3<bool>(arg_1.c, false, arg_1.b)), all(vec4<bool>(false, arg_0, true, arg_0))), !select(vec3<bool>(arg_1.c, false, arg_0), vec3<bool>(false, true, true), vec3<bool>(arg_0, true, arg_1.c)), select(!vec3<bool>(arg_1.b, arg_1.b, false), vec3<bool>(true, false, true), select(vec3<bool>(false, arg_0, arg_1.c), vec3<bool>(true, false, false), arg_1.c))));
    let var_1 = _wgslsmith_f_op_f32(trunc(-163f));
    global1 = min(vec3<u32>(_wgslsmith_mod_u32(~u_input.b >> (~0u % 32u), ~abs(1u)), 66464u, 35650u), _wgslsmith_add_vec3_u32(select(firstLeadingBit(vec3<u32>(u_input.b, global1.x, 0u)), ~vec3<u32>(global1.x, 9452u, u_input.b), select(var_0, vec3<bool>(var_0.x, arg_1.c, arg_0), var_0)) & firstLeadingBit(select(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(38053u, 17016u, 0u), arg_0)), ~vec3<u32>(~u_input.b, _wgslsmith_mult_u32(16430u, global1.x), 4294967295u)));
    var var_2 = _wgslsmith_mod_vec3_u32(vec3<u32>(~_wgslsmith_clamp_u32(13523u, global1.x, 4294967295u), ~(50904u >> (global1.x % 32u)), global1.x), _wgslsmith_mult_vec3_u32(abs(~vec3<u32>(32790u, u_input.b, 4294967295u)), vec3<u32>(_wgslsmith_sub_u32(u_input.b, 19516u), u_input.b, ~4580u))) << (reverseBits(firstLeadingBit(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(u_input.b, 4294967295u, 0u)), ~vec3<u32>(u_input.b, 0u, u_input.b), ~vec3<u32>(30617u, u_input.b, 1u)))) % vec3<u32>(32u));
    var var_3 = Struct_2(Struct_1(min(vec2<i32>(~arg_1.a.x, i32(-1i) * -2147483647i), select(-vec2<i32>(u_input.a, -2147483647i), vec2<i32>(u_input.a, 2147483647i), !vec2<bool>(var_0.x, arg_1.c))), 85826i, select(vec2<bool>(any(vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.x), !var_0.zz, !select(vec2<bool>(arg_0, var_0.x), vec2<bool>(arg_1.c, false), var_0.zx))), ~_wgslsmith_mult_vec4_u32(abs(min(vec4<u32>(69921u, 63682u, 4294967295u, global1.x), vec4<u32>(4294967295u, var_2.x, var_2.x, var_2.x))), min(firstTrailingBit(vec4<u32>(0u, 4294967295u, 45761u, var_2.x)), countOneBits(vec4<u32>(24033u, global1.x, var_2.x, global1.x)))), -36195i);
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_1.d.xx), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2915f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(max(global2.x, 629f))))))));
}

fn func_1() -> vec3<bool> {
    global2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(countOneBits(u_input.b), 29u)], global2.x)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0[_wgslsmith_index_u32(global1.x, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)]))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(global1.x, 29u)], global2.x))), _wgslsmith_f_op_vec2_f32(func_4(true, func_2(Struct_3(vec2<i32>(1i, 59970i), true, false, vec3<f32>(global0[_wgslsmith_index_u32(global1.x, 29u)], global2.x, global0[_wgslsmith_index_u32(u_input.b, 29u)])))))), -617f >= _wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 29u)], _wgslsmith_f_op_f32(global2.x * -1787f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_2(Struct_3(vec2<i32>(1i, 2147483647i), false, true, vec3<f32>(-888f, -2583f, global0[_wgslsmith_index_u32(41083u, 29u)]))).d.x - _wgslsmith_f_op_f32(trunc(global2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(112152u, 29u)], -342f)) + _wgslsmith_f_op_f32(439f - -1777f)))), any(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false))) && false));
    global2 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), 929f)));
    var var_0 = ~global1.x;
    var var_1 = Struct_2(Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(-6944i, -1i), ~vec2<i32>(6565i, u_input.a)) ^ vec2<i32>(min(-28386i, -45332i), _wgslsmith_add_i32(2147483647i, u_input.a)), _wgslsmith_add_i32(u_input.a, 1i), vec2<bool>(true, true)), vec4<u32>(1u, 1757u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 26818u, 16034u, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, global1.x, 39131u, 1u), vec4<u32>(4294967295u, u_input.b, u_input.b, 1u))) << (18597u % 32u), (u_input.b & 1908u) ^ ~u_input.b), -7770i);
    let var_2 = Struct_2(Struct_1(vec2<i32>(_wgslsmith_sub_i32(abs(var_1.c), reverseBits(var_1.c)), ~(-2147483647i)), firstTrailingBit(0i), select(vec2<bool>(true, true), select(vec2<bool>(true, var_1.a.c.x), var_1.a.c, var_1.a.c), vec2<bool>(any(vec3<bool>(var_1.a.c.x, var_1.a.c.x, true)), true))), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(abs(global1.x), _wgslsmith_mod_u32(var_1.b.x, u_input.b), u_input.b << (u_input.b % 32u), ~1u), var_1.b, vec4<u32>(4294967295u, select(48665u, var_1.b.x, var_1.a.c.x), firstLeadingBit(var_1.b.x), ~var_1.b.x))), var_1.c);
    return vec3<bool>(all(vec3<bool>(~u_input.b != var_2.b.x, any(vec4<bool>(false, false, false, var_2.a.c.x)), var_1.a.c.x)), false, true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(abs(abs(~vec3<u32>(global1.x, 4294967295u, 4294967295u))) & ~(~vec3<u32>(u_input.b, 79917u, 15652u)), ~select(~firstLeadingBit(vec3<u32>(0u, 58156u, global1.x)), vec3<u32>(32957u, global1.x & 45700u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 0u, 1u), vec4<u32>(u_input.b, u_input.b, u_input.b, global1.x))), func_1()), vec3<bool>(true, all(vec4<bool>(true, true, true, true)), true));
    let var_0 = Struct_4(abs(_wgslsmith_mod_vec4_u32(~(vec4<u32>(u_input.b, u_input.b, global1.x, 10478u) >> (vec4<u32>(1u, u_input.b, global1.x, global1.x) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(u_input.b, 0u, 4294967295u, u_input.b)), max(vec4<u32>(0u, 5861u, 0u, 18481u), vec4<u32>(global1.x, u_input.b, u_input.b, global1.x))))), u_input.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-739f, _wgslsmith_f_op_vec2_f32(func_3(Struct_3(vec2<i32>(u_input.a, u_input.a), true, false, vec3<f32>(819f, global2.x, -273f)), 1i)).x, -434f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(1u, 29u)], _wgslsmith_f_op_vec2_f32(func_3(Struct_3(vec2<i32>(-14142i, 0i), true, true, vec3<f32>(-2010f, -2046f, global0[_wgslsmith_index_u32(16840u, 29u)])), 1i)).x, _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(global1.x, 29u)]))))), firstTrailingBit(11038u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0[_wgslsmith_index_u32(8462u, 29u)], 1451f)))))));
    var var_1 = vec3<u32>(~0u, 0u, 7682u);
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-129f - global2.x) - global2.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-313f, _wgslsmith_f_op_f32(527f * var_0.e.x))), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(205f + _wgslsmith_f_op_f32(f32(-1f) * -838f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(2588f, -519f, 597f, var_0.e.x) - vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 29u)], -1000f, 819f, var_0.c.x)))))));
    let var_3 = Struct_1(((select(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(var_0.b, 5802i), true) << (var_0.a.zz % vec2<u32>(32u))) >> (global1.yx % vec2<u32>(32u))) & (_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.b, 43711i) & vec2<i32>(var_0.b, u_input.a), vec2<i32>(-2147483647i, 0i) >> (var_0.a.yy % vec2<u32>(32u)), vec2<i32>(var_0.b, var_0.b)) ^ max(vec2<i32>(-6665i, var_0.b) & vec2<i32>(-5376i, var_0.b), _wgslsmith_add_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(23988i, var_0.b)))), -2491i, vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -2329f) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -675f), _wgslsmith_f_op_f32(select(1000f, global2.x, false))), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(func_4(true, Struct_3(var_3.a, var_3.c.x, !(var_0.b < u_input.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, 473f, 937f) * var_0.c))))).x, min(select(var_0.b, var_0.b, var_3.c.x == var_3.c.x) << (~(~1u) % 32u), ~countOneBits(-2147483647i | var_0.b)));
}

