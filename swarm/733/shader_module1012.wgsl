struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<bool, 19> = array<bool, 19>(true, false, false, true, false, true, false, true, true, true, false, true, false, true, true, false, true, false, false);

var<private> global2: u32;

var<private> global3: u32 = 1303u;

var<private> global4: i32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: i32) -> vec2<f32> {
    global2 = _wgslsmith_dot_vec3_u32(~min(~_wgslsmith_clamp_vec3_u32(vec3<u32>(22493u, global0.x, global0.x), vec3<u32>(global0.x, 78188u, global0.x), vec3<u32>(0u, u_input.b, global0.x)), ~vec3<u32>(4316u, 1180u, 4294967295u)), ~vec3<u32>(32568u & _wgslsmith_add_u32(u_input.a, 1u), ~global0.x, firstTrailingBit(u_input.b)));
    var var_0 = !vec2<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-752f * 209f))) < -1063f, false);
    var_0 = vec2<bool>(global1[_wgslsmith_index_u32(1615u ^ ~u_input.a, 19u)], any(vec2<bool>(!global1[_wgslsmith_index_u32(u_input.a, 19u)] || (arg_0.c > arg_1), any(vec2<bool>(false, var_0.x)) & false)));
    global0 = ~vec3<u32>(global0.x, u_input.b, ~firstTrailingBit(select(4701u, 107025u, global1[_wgslsmith_index_u32(4294967295u, 19u)])));
    var var_1 = vec3<bool>(all(select(!(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 19u)], global1[_wgslsmith_index_u32(u_input.b, 19u)])), select(!vec2<bool>(var_0.x, var_0.x), !vec2<bool>(global1[_wgslsmith_index_u32(1u, 19u)], true), vec2<bool>(false, true)), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 19u)], true))), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~global0.x, abs(firstTrailingBit(firstLeadingBit(80828u)))), 19u)], any(vec2<bool>(!any(vec4<bool>(true, false, true, true)), any(vec2<bool>(var_0.x, true)))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1538f, -197f))) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-311f, 2430f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-582f, -919f))), vec2<f32>(1122f, -2152f)))));
}

fn func_2(arg_0: i32, arg_1: vec3<bool>, arg_2: bool) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1105f, -130f) - vec2<f32>(-890f, 367f))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_3(Struct_4(-39075i, vec3<i32>(arg_0, -2671i, -25845i), 1i, vec3<i32>(u_input.d, arg_0, u_input.c)), arg_0, -59691i)))))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1924f, -1591f)), vec2<f32>(-948f, -712f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-966f, 572f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-421f, 717f))), vec2<bool>(true, true))))))));
    var var_1 = Struct_1(~vec3<u32>(min(~19914u, ~global0.x), _wgslsmith_add_u32(58684u, 1u), _wgslsmith_div_u32(2499u, 47101u)), ~abs(~(global0.yy >> (vec2<u32>(64739u, global0.x) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -322f))) > var_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -592f))));
    var var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(abs(-200f))), firstLeadingBit(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(global0.x, var_1.b.x, var_1.a.x, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(1u, global0.x, 34272u, var_1.a.x), vec4<u32>(4294967295u, global0.x, var_1.b.x, 81875u))), vec4<u32>(abs(u_input.a), _wgslsmith_div_u32(0u, 47264u), 58277u, 54749u), _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 44826u, var_1.a.x, 4294967295u), vec4<u32>(u_input.b, 105556u, var_1.b.x, u_input.b)))), Struct_2(_wgslsmith_f_op_f32(trunc(993f))));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_4(arg_0, _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, arg_0, arg_0), vec3<i32>(2147483647i, 46199i, u_input.d)), countOneBits(-2147483647i), -vec3<i32>(-1i, arg_0, -77856i)), _wgslsmith_mod_i32(arg_0, -36544i) & 1i, max(26200i << (0u % 32u), -2147483647i))).x - _wgslsmith_f_op_f32(exp2(var_0.x))), var_0.x);
    let var_4 = vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(var_1.a.x, 1u), firstTrailingBit(67192u), _wgslsmith_add_u32(var_1.b.x, 73620u), global0.x >> (1u % 32u)), select(vec4<u32>(u_input.a, 49555u, 0u, 63060u), var_2.b, select(var_1.c, arg_1.x, false))), ~(~_wgslsmith_mult_u32(1u, u_input.a)), abs(54842u), 59874u);
    return vec4<u32>(global0.x, ~_wgslsmith_div_u32(firstLeadingBit(var_1.b.x), var_1.a.x), abs(~abs(~global0.x)), ~(~_wgslsmith_dot_vec2_u32(var_1.b, countOneBits(var_2.b.yz))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    global2 = _wgslsmith_dot_vec4_u32(min(countOneBits(func_2(u_input.c >> (4294967295u % 32u), vec3<bool>(true, true, true), any(vec3<bool>(arg_1.c, false, false)))), _wgslsmith_sub_vec4_u32(vec4<u32>(4677u, 4294967295u, 426u, 4294967295u) & _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.b.x, u_input.a, 113882u, 0u), vec4<u32>(54540u, arg_1.b.x, 31967u, global0.x)), vec4<u32>(_wgslsmith_mult_u32(global0.x, 22720u), ~4294967295u, global0.x, countOneBits(arg_1.a.x)))), max(func_2(abs(-8415i & u_input.c), !select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 19u)], false, false), vec3<bool>(true, arg_1.c, false), vec3<bool>(global1[_wgslsmith_index_u32(17847u, 19u)], false, false)), arg_1.c), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(3431u, 53128u, 15973u, global0.x), vec4<u32>(30809u, 0u, 4294967295u, global0.x), vec4<u32>(arg_1.a.x, global0.x, global0.x, global0.x)))));
    var var_0 = select(vec4<bool>(global1[_wgslsmith_index_u32(0u ^ global0.x, 19u)], any(vec2<bool>(arg_1.c, false)) && false, true, all(vec3<bool>(global1[_wgslsmith_index_u32(0u, 19u)], all(vec3<bool>(arg_1.c, true, false)), true))), select(!select(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 19u)], global1[_wgslsmith_index_u32(arg_1.a.x, 19u)], arg_1.c, global1[_wgslsmith_index_u32(4294967295u, 19u)]), !vec4<bool>(arg_1.c, true, arg_1.c, arg_1.c), arg_1.c && true), select(!vec4<bool>(global1[_wgslsmith_index_u32(49271u, 19u)], true, global1[_wgslsmith_index_u32(1u, 19u)], false), !vec4<bool>(arg_1.c, global1[_wgslsmith_index_u32(0u, 19u)], true, true), select(select(vec4<bool>(arg_1.c, arg_1.c, false, arg_1.c), vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.b, 19u)], global1[_wgslsmith_index_u32(11483u, 19u)]), true), !vec4<bool>(false, arg_1.c, false, global1[_wgslsmith_index_u32(0u, 19u)]), any(vec4<bool>(global1[_wgslsmith_index_u32(arg_1.b.x, 19u)], arg_1.c, arg_1.c, arg_1.c)))), select(!select(vec4<bool>(false, arg_1.c, true, arg_1.c), vec4<bool>(false, true, true, false), vec4<bool>(false, global1[_wgslsmith_index_u32(arg_1.a.x, 19u)], global1[_wgslsmith_index_u32(u_input.b, 19u)], false)), select(select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 19u)], false, false, true), vec4<bool>(arg_1.c, false, arg_1.c, arg_1.c), vec4<bool>(arg_1.c, true, arg_1.c, true)), vec4<bool>(false, true, true, arg_1.c), !vec4<bool>(global1[_wgslsmith_index_u32(arg_1.a.x, 19u)], false, false, global1[_wgslsmith_index_u32(global0.x, 19u)])), vec4<bool>(false, !arg_1.c, false, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(39069u, u_input.a), 19u)]))), -237f == arg_0.a);
    global4 = -u_input.d;
    var var_1 = countOneBits(vec4<i32>(u_input.d, -35363i, -15263i << (1u % 32u), _wgslsmith_clamp_i32(-16367i, 2147483647i, (u_input.d >> (global0.x % 32u)) >> ((14345u | global0.x) % 32u))));
    let var_2 = _wgslsmith_dot_vec2_i32(-var_1.xx, min(var_1.xw, ~(-min(vec2<i32>(-1i, -8714i), vec2<i32>(2147483647i, 1i)))));
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.d - arg_2.d), -1086f))), min(min(~(vec4<u32>(0u, arg_0.b.x, 4294967295u, u_input.b) << (vec4<u32>(4294967295u, 0u, 45068u, 41773u) % vec4<u32>(32u))), ~vec4<u32>(20136u, arg_0.b.x, u_input.a, u_input.b)), reverseBits(vec4<u32>(select(global0.x, arg_2.a.x, true), _wgslsmith_dot_vec2_u32(arg_2.b, arg_2.a.yy), firstTrailingBit(4294967295u), 1u))), Struct_2(-127f));
    let var_1 = Struct_4(-((~u_input.d >> (arg_0.a.x % 32u)) | -_wgslsmith_mod_i32(u_input.d, u_input.c)), vec3<i32>(u_input.c, abs(reverseBits(countOneBits(u_input.d))), select(-21280i, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.d, 2147483647i, -2147483647i, u_input.d), vec4<i32>(-2147483647i, u_input.d, 0i, u_input.c)), func_1(var_0.a, Struct_1(vec3<u32>(u_input.b, arg_2.a.x, global0.x), vec2<u32>(4294967295u, 19804u), true, -797f)).c)), u_input.c, vec3<i32>(2147483647i, 0i, 0i) | -(vec3<i32>(u_input.d, u_input.d, u_input.d) >> (select(vec3<u32>(global0.x, var_0.b.x, 1u), arg_0.a, vec3<bool>(global1[_wgslsmith_index_u32(arg_2.b.x, 19u)], global1[_wgslsmith_index_u32(1u, 19u)], true)) % vec3<u32>(32u))));
    var var_2 = Struct_1(~firstTrailingBit(arg_0.a), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_2.b.x, ~arg_2.b.x), vec2<u32>(u_input.b << (1u % 32u), u_input.a | 12611u)) >> (arg_0.b % vec2<u32>(32u)), arg_2.c, _wgslsmith_f_op_f32(f32(-1f) * -1565f));
    global3 = _wgslsmith_sub_u32(arg_0.b.x, 0u);
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.d, arg_0.d)) - var_0.c.a))))));
    return countOneBits(u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~vec3<u32>(0u, func_4(func_1(Struct_2(-1168f), Struct_1(vec3<u32>(u_input.b, u_input.b, u_input.b), vec2<u32>(global0.x, u_input.a), global1[_wgslsmith_index_u32(global0.x, 19u)], 441f)), select(vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 19u)], true, global1[_wgslsmith_index_u32(4294967295u, 19u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 19u)], global1[_wgslsmith_index_u32(global0.x, 19u)], true, global1[_wgslsmith_index_u32(4294967295u, 19u)]), vec4<bool>(global1[_wgslsmith_index_u32(global0.x, 19u)], false, false, global1[_wgslsmith_index_u32(global0.x, 19u)])), Struct_1(vec3<u32>(global0.x, u_input.a, 1u), global0.yz, global1[_wgslsmith_index_u32(u_input.b, 19u)], -942f)) | global0.x, max(min(abs(60171u), u_input.b), ~u_input.b));
    let var_0 = u_input.a;
    let var_1 = -u_input.c;
    var var_2 = vec4<u32>(~min(abs(global0.x) >> (~4294967295u % 32u), ~var_0), _wgslsmith_div_u32(71487u, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, u_input.a, 0u) >> (vec3<u32>(76381u, u_input.b, 52527u) % vec3<u32>(32u)), ~vec3<u32>(60062u, 1018u, 55021u)))), u_input.b, min(~(~(~4294967295u)), var_0));
    let var_3 = ~select(~u_input.b, func_4(Struct_1(_wgslsmith_div_vec3_u32(var_2.yyy, vec3<u32>(57984u, 15589u, var_0)), var_2.yz, global1[_wgslsmith_index_u32(19459u, 19u)] && global1[_wgslsmith_index_u32(var_0, 19u)], 1581f), !vec4<bool>(global1[_wgslsmith_index_u32(53138u, 19u)], global1[_wgslsmith_index_u32(u_input.b, 19u)], false, global1[_wgslsmith_index_u32(u_input.b, 19u)]), Struct_1(firstTrailingBit(var_2.xwy), ~vec2<u32>(var_2.x, 1u), global1[_wgslsmith_index_u32(22025u, 19u)] & global1[_wgslsmith_index_u32(41312u, 19u)], _wgslsmith_f_op_f32(f32(-1f) * -519f))), false);
    let var_4 = ~vec3<i32>(var_1, ~(-1i), firstLeadingBit(countOneBits(i32(-1i) * -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(4896u, firstTrailingBit(vec4<i32>(u_input.d, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_1), vec2<i32>(-1i, var_1)), u_input.d, _wgslsmith_mod_i32(~var_4.x, 1772i))), _wgslsmith_f_op_f32(-func_1(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -354f)), func_1(Struct_2(-527f), Struct_1(var_2.yxw, var_2.yx, false, -1283f))).d), ~(~global0.x));
}

