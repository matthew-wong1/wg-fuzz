struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 21>;

var<private> global1: array<bool, 23> = array<bool, 23>(false, false, false, true, false, false, true, true, true, false, true, true, true, true, false, false, true, false, false, false, false, true, true);

var<private> global2: f32;

var<private> global3: Struct_1;

var<private> global4: array<vec4<bool>, 3> = array<vec4<bool>, 3>(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    global4 = array<vec4<bool>, 3>();
    var var_0 = vec2<bool>(-7984i > arg_0.b.b, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, firstLeadingBit(~0u) & select(min(u_input.b, u_input.b), 0u, !arg_0.c)), 23u)]);
    var var_1 = Struct_1(_wgslsmith_div_i32(global3.a, 0i), arg_0.b.b, ~vec4<u32>(reverseBits(4294967295u), 0u, u_input.b, 4294967295u), _wgslsmith_f_op_f32(global3.d * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(278f)) - -521f)))), ~arg_0.b.e);
    var var_2 = arg_0;
    let var_3 = _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(select(16942u, 0u, var_2.d), 1u, _wgslsmith_mult_u32(var_2.b.c.x, arg_0.b.c.x)), vec3<u32>(_wgslsmith_div_u32(1u, _wgslsmith_sub_u32(u_input.b, 37585u)), 5044u, 0u)), vec3<u32>(~global3.c.x, 4294967295u, reverseBits(856u)));
    return ~((var_1.c << (max(var_1.c, global3.c ^ vec4<u32>(7135u, 4294967295u, var_2.a.c.x, var_3.x)) % vec4<u32>(32u))) << (global3.c % vec4<u32>(32u)));
}

fn func_2(arg_0: vec3<i32>, arg_1: bool) -> Struct_3 {
    global0 = array<vec4<i32>, 21>();
    let var_0 = _wgslsmith_add_u32(_wgslsmith_add_u32(6620u, u_input.b), _wgslsmith_mult_u32(firstLeadingBit(~u_input.b) & 28445u, u_input.b));
    var var_1 = Struct_1(~arg_0.x, -arg_0.x, ~vec4<u32>(min(4294967295u, global3.c.x), u_input.b, u_input.b, var_0) | (select(func_3(Struct_2(Struct_1(40246i, -15139i, vec4<u32>(9646u, 4294967295u, 48326u, 0u), -1635f, u_input.a.x), Struct_1(2147483647i, -3976i, vec4<u32>(43035u, u_input.b, 19074u, 11531u), -167f, -6908i), false, global1[_wgslsmith_index_u32(0u, 23u)])), _wgslsmith_clamp_vec4_u32(global3.c, vec4<u32>(38507u, u_input.b, global3.c.x, 35945u), vec4<u32>(36996u, u_input.b, 4294967295u, global3.c.x)), !global1[_wgslsmith_index_u32(1u, 23u)]) ^ global3.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-166f)), _wgslsmith_div_f32(global3.d, _wgslsmith_f_op_f32(global3.d + global3.d)))), global3.d), _wgslsmith_dot_vec2_i32(arg_0.yy, arg_0.xz));
    return Struct_3(~_wgslsmith_clamp_i32(abs(var_1.b), reverseBits(13342i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.e, global3.b, arg_0.x, u_input.a.x), global0[_wgslsmith_index_u32(global3.c.x, 21u)])) << ((0u >> (~firstTrailingBit(1u) % 32u)) % 32u), Struct_1(global3.e, global3.e, global3.c, var_1.d, 2147483647i), Struct_1(~(-1i), u_input.a.x, ~firstTrailingBit(_wgslsmith_add_vec4_u32(var_1.c, vec4<u32>(1u, var_0, var_0, 28713u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d * 1537f) + 1f)), ~min(_wgslsmith_mult_i32(2147483647i, var_1.a), ~0i)), var_1.e, true);
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> vec4<u32> {
    var var_0 = ~_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(37796i, -2147483647i, -45793i), abs(vec3<i32>(-78206i, global3.a, 38850i))), -(~vec3<i32>(-2147483647i, 13448i, u_input.a.x))), vec3<i32>(~(~global3.e), u_input.a.x, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, arg_1.c.a), vec3<i32>(global3.e, 1i, 1408i)))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.d + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-503f - arg_1.b.d))))) - -251f);
    let var_1 = Struct_2(arg_1.c, Struct_1(31504i, ~_wgslsmith_mod_i32(0i, 791i) & (countOneBits(u_input.a.x) << ((0u << (global3.c.x % 32u)) % 32u)), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, arg_1.c.c.x, 10537u, 0u), vec4<u32>(0u, 0u, arg_1.c.c.x, 0u) | vec4<u32>(global3.c.x, u_input.b, 97471u, arg_1.c.c.x)), arg_1.c.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.d * 763f) - -2217f)), ~1i), all(vec4<bool>(arg_1.b.d < global3.d, _wgslsmith_mod_i32(global3.b, -2147483647i) >= ~global3.e, !any(vec3<bool>(false, global1[_wgslsmith_index_u32(global3.c.x, 23u)], true)), false || (u_input.a.x < global3.e))), !(!any(!vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 23u)], false))));
    let var_2 = global3.d;
    global0 = array<vec4<i32>, 21>();
    return var_1.b.c;
}

fn func_1() -> Struct_1 {
    global4 = array<vec4<bool>, 3>();
    global1 = array<bool, 23>();
    let var_0 = Struct_2(Struct_1(u_input.a.x & -1i, -(~(-global3.b)), func_4(global1[_wgslsmith_index_u32(48403u, 23u)], func_2(_wgslsmith_mod_vec3_i32(vec3<i32>(global3.a, global3.e, global3.a), vec3<i32>(u_input.a.x, 1i, -4879i)), true)), _wgslsmith_div_f32(-800f, _wgslsmith_f_op_f32(select(2323f, global3.d, global3.b < global3.a))), -21374i), Struct_1(u_input.a.x, countOneBits(u_input.a.x), vec4<u32>(min(1u, ~1u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 16159u, global3.c.x), ~vec4<u32>(1u, 4294967295u, u_input.b, 89868u)), _wgslsmith_mod_u32(firstLeadingBit(u_input.b), _wgslsmith_mod_u32(34739u, 4294967295u)), 21878u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.d - 429f)) + _wgslsmith_f_op_f32(global3.d - _wgslsmith_f_op_f32(f32(-1f) * -1289f))), _wgslsmith_dot_vec2_i32((vec2<i32>(u_input.a.x, u_input.a.x) & u_input.a) ^ -u_input.a, vec2<i32>(u_input.a.x, u_input.a.x))), select(-(global3.e & -1i), ~(-2147483647i), select(global1[_wgslsmith_index_u32(global3.c.x, 23u)], true, global1[_wgslsmith_index_u32(u_input.b, 23u)]) & false) < _wgslsmith_sub_i32(u_input.a.x, global3.e), !global1[_wgslsmith_index_u32(u_input.b, 23u)]);
    let var_1 = Struct_2(func_2(-max(vec3<i32>(58288i, 2147483647i, 2147483647i), ~vec3<i32>(var_0.b.e, 60273i, 0i)), var_0.c).c, Struct_1(~2147483647i, -1i << (~global3.c.x % 32u), _wgslsmith_mod_vec4_u32(~var_0.b.c, ~global3.c) << (var_0.b.c % vec4<u32>(32u)), 361f, u_input.a.x), global1[_wgslsmith_index_u32(u_input.b, 23u)] || var_0.c, global1[_wgslsmith_index_u32(select(~(~var_0.b.c.x << (u_input.b % 32u)), func_3(var_0).x, (global3.d < var_0.b.d) | var_0.d), 23u)]);
    global2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global3.d))));
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec4<bool>, 3>();
    let var_0 = 1376f;
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~min(_wgslsmith_sub_vec4_u32(global3.c, global3.c), ~global3.c), _wgslsmith_mod_vec4_u32(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, global3.c.x, 4294967295u, u_input.b), vec4<u32>(91162u, 0u, u_input.b, 46937u))), ~max(global3.c, vec4<u32>(global3.c.x, 52204u, 61193u, u_input.b))) & (countOneBits(~global3.c) << (max(~vec4<u32>(1u, 0u, 1u, 1u), ~global3.c) % vec4<u32>(32u)))), 23u)];
    var var_2 = Struct_3(2147483647i, func_1(), Struct_1(-10778i, countOneBits(i32(-1i) * -global3.e), vec4<u32>(u_input.b, 1u, 1u, func_4(global1[_wgslsmith_index_u32(30863u, 23u)], func_2(vec3<i32>(global3.e, u_input.a.x, global3.a), global1[_wgslsmith_index_u32(u_input.b, 23u)])).x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(max(984f, -257f))))), global3.b), i32(-1i) * -53941i, _wgslsmith_div_u32(global3.c.x, 7491u) >= (_wgslsmith_div_u32(global3.c.x, 54590u >> (global3.c.x % 32u)) | 0u));
    var var_3 = -41239i & -global3.e;
    let var_4 = _wgslsmith_mult_u32(2201u, 14965u);
    var var_5 = -countOneBits(_wgslsmith_mod_vec4_i32(~global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, var_2.b.c.x), 21u)], max(-global0[_wgslsmith_index_u32(var_2.b.c.x, 21u)], ~vec4<i32>(var_2.d, -1i, -1i, var_2.c.a))));
    let x = u_input.a;
    s_output = StorageBuffer(-689f);
}

