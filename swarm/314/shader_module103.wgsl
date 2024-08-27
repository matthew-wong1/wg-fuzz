struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: u32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: f32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 13>;

var<private> global1: Struct_3 = Struct_3(-182f, vec3<f32>(-524f, 419f, 1097f), 0u, -1126f);

var<private> global2: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(true, true), Struct_1(true, false), Struct_1(true, true), Struct_1(false, false));

var<private> global3: array<Struct_2, 32>;

var<private> global4: array<bool, 12> = array<bool, 12>(false, true, false, false, false, false, true, true, true, true, true, true);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<i32>) -> vec2<f32> {
    global2 = array<Struct_1, 4>();
    global1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.a * -2255f), -784f)))), global1.b, countOneBits(_wgslsmith_add_u32(u_input.a, _wgslsmith_mod_u32(global1.c, ~u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d)));
    var var_0 = -arg_0.x;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.b.zz) + vec2<f32>(_wgslsmith_div_f32(-1070f, global1.b.x), _wgslsmith_f_op_f32(-global1.d)));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<i32>) -> bool {
    global0 = array<vec2<bool>, 13>();
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(func_3(vec2<i32>(arg_1.x, firstLeadingBit(_wgslsmith_mult_i32(arg_1.x, arg_1.x))))).x, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(global1.b)))), u_input.a, arg_0.x);
    let var_1 = -299f;
    var var_2 = vec3<bool>(false, all(vec3<bool>(global4[_wgslsmith_index_u32(global1.c, 12u)], !any(vec2<bool>(global4[_wgslsmith_index_u32(u_input.a, 12u)], true)), false)), !global4[_wgslsmith_index_u32(1u, 12u)]);
    global2 = array<Struct_1, 4>();
    return false | (all(!(!vec4<bool>(var_2.x, var_2.x, global4[_wgslsmith_index_u32(78318u, 12u)], true))) & !all(!vec2<bool>(var_2.x, true)));
}

fn func_2(arg_0: Struct_3, arg_1: f32) -> Struct_1 {
    return Struct_1(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.d, global1.d), _wgslsmith_f_op_vec2_f32(-arg_0.b.xx)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.b.yy + arg_0.b.xz), _wgslsmith_f_op_vec2_f32(func_3(vec2<i32>(32315i, -28170i))))), vec2<i32>(_wgslsmith_sub_i32(~1i, _wgslsmith_clamp_i32(9580i, 9634i, 1i)), -_wgslsmith_mod_i32(20336i, 22715i))), all(!global0[_wgslsmith_index_u32(~u_input.a, 13u)]) & true);
}

fn func_1(arg_0: bool, arg_1: vec2<u32>) -> u32 {
    let var_0 = func_2(Struct_3(-1901f, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global1.b)) * vec3<f32>(global1.b.x, 487f, global1.b.x)), global1.b, !arg_0)), select(arg_1.x, ~(u_input.a << (arg_1.x % 32u)), global4[_wgslsmith_index_u32(~(~u_input.a), 12u)]), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1751f)) * _wgslsmith_f_op_f32(round(-257f)))))), global1.d);
    var var_1 = firstTrailingBit(_wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(1i, 1i, 1i)), firstLeadingBit(firstTrailingBit(vec3<i32>(8508i, 2147483647i, 6642i)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(279f * 262f)), global1.b.x)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-393f, -778f, global1.d, 348f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, global1.b.x, 906f, -2249f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.a, 262f, global1.b.x, 207f), vec4<f32>(global1.b.x, global1.b.x, global1.a, -563f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global1.b.x, global1.d, global1.b.x) * vec4<f32>(global1.d, global1.a, 299f, global1.a))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, 1649f, 977f, global1.b.x))))));
    global3 = array<Struct_2, 32>();
    return 62549u;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 32>();
    global2 = array<Struct_1, 4>();
    let var_0 = ~(-(~vec3<i32>(~(-2147483647i), -1i, 50953i)));
    let var_1 = select(select(!(!vec4<bool>(global4[_wgslsmith_index_u32(global1.c, 12u)], true, false, global4[_wgslsmith_index_u32(1u, 12u)])), select(select(vec4<bool>(true, false, true, false), !vec4<bool>(global4[_wgslsmith_index_u32(1u, 12u)], false, global4[_wgslsmith_index_u32(0u, 12u)], global4[_wgslsmith_index_u32(0u, 12u)]), true), select(vec4<bool>(global4[_wgslsmith_index_u32(global1.c, 12u)], global4[_wgslsmith_index_u32(global1.c, 12u)], global4[_wgslsmith_index_u32(1u, 12u)], global4[_wgslsmith_index_u32(96735u, 12u)]), !vec4<bool>(global4[_wgslsmith_index_u32(16768u, 12u)], true, global4[_wgslsmith_index_u32(u_input.a, 12u)], false), vec4<bool>(global4[_wgslsmith_index_u32(14185u, 12u)], global4[_wgslsmith_index_u32(8420u, 12u)], false, true)), _wgslsmith_dot_vec2_i32(var_0.zy, var_0.xz) <= 1i), select(!(!vec4<bool>(global4[_wgslsmith_index_u32(1u, 12u)], global4[_wgslsmith_index_u32(93896u, 12u)], false, true)), !(!vec4<bool>(true, false, global4[_wgslsmith_index_u32(0u, 12u)], global4[_wgslsmith_index_u32(44108u, 12u)])), false)), vec4<bool>(true, true, true, global4[_wgslsmith_index_u32(func_1(!(global4[_wgslsmith_index_u32(4294967295u, 12u)] | false), ~vec2<u32>(25441u, u_input.a) & _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(global1.c, global1.c))), 12u)]), select(vec4<bool>(!(u_input.a != u_input.a), global4[_wgslsmith_index_u32(select(0u, max(u_input.a, global1.c), false), 12u)], (false | global4[_wgslsmith_index_u32(1u, 12u)]) && (global4[_wgslsmith_index_u32(u_input.a, 12u)] != global4[_wgslsmith_index_u32(1u, 12u)]), ~12976i <= _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, var_0.x, -16284i), vec4<i32>(2147483647i, var_0.x, 2147483647i, 2147483647i))), !vec4<bool>(true, true, func_2(Struct_3(global1.a, global1.b, 0u, -1337f), global1.b.x).b, global1.c <= global1.c), select(!vec4<bool>(global4[_wgslsmith_index_u32(global1.c, 12u)], global4[_wgslsmith_index_u32(u_input.a, 12u)], false, global4[_wgslsmith_index_u32(0u, 12u)]), vec4<bool>(all(vec4<bool>(true, true, global4[_wgslsmith_index_u32(u_input.a, 12u)], global4[_wgslsmith_index_u32(global1.c, 12u)])), true, true, global4[_wgslsmith_index_u32(~global1.c, 12u)]), !(!global4[_wgslsmith_index_u32(0u, 12u)]))));
    let var_2 = _wgslsmith_div_vec3_u32(vec3<u32>(func_1(global4[_wgslsmith_index_u32(24525u, 12u)] | false, vec2<u32>(u_input.a, 0u)) << (~1u % 32u), _wgslsmith_div_u32(_wgslsmith_sub_u32(~global1.c, _wgslsmith_clamp_u32(4294967295u, 2310u, 0u)), global1.c), ~1u), ~firstTrailingBit(~vec3<u32>(u_input.a, global1.c, 5176u)) | ~abs(vec3<u32>(0u, 11792u, 52487u)));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(1u), -12551i, _wgslsmith_f_op_vec2_f32(func_3(-vec2<i32>(countOneBits(48436i), abs(-7315i)))).x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-645f, -200f, global1.a, 1000f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, 362f, global1.b.x, 790f) + vec4<f32>(-358f, global1.d, -683f, global1.a)))) - vec4<f32>(_wgslsmith_f_op_f32(-1175f - global1.a), 1000f, 1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.b.x - global1.b.x), 1f)))), ~(4294967295u ^ _wgslsmith_dot_vec2_u32(var_2.xx ^ vec2<u32>(var_2.x, 1u), min(vec2<u32>(1u, global1.c), var_2.xy))));
}

