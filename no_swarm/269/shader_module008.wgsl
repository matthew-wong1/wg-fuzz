struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<bool, 5>;

var<private> global2: Struct_3 = Struct_3(vec2<f32>(781f, -251f), 1i, Struct_2(Struct_1(vec2<i32>(0i, -7356i)), Struct_1(vec2<i32>(-3865i, 2147483647i)), Struct_1(vec2<i32>(-1i, 6674i)), 36120i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: i32) -> vec3<bool> {
    let var_0 = ~15815u;
    var var_1 = vec4<u32>(abs(0u), 1u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(min(~4294967295u, 13364u), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.e, 0u), vec3<u32>(var_0, 33176u, 2629u), vec3<u32>(4839u, 87347u, u_input.e)), vec3<u32>(arg_1.x, 38405u, u_input.e))), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(19638u, select(4294967295u, 2637u, false), u_input.e), firstTrailingBit(abs(61758u)))), ~(_wgslsmith_clamp_u32(4294967295u, 27259u, u_input.e) & ~4294967295u));
    let var_2 = global2.c.b;
    var var_3 = arg_0.x;
    global1 = array<bool, 5>();
    return vec3<bool>(all(vec4<bool>(16836i > arg_0.x, any(select(vec4<bool>(global1[_wgslsmith_index_u32(var_1.x, 5u)], false, global1[_wgslsmith_index_u32(var_1.x, 5u)], global1[_wgslsmith_index_u32(0u, 5u)]), vec4<bool>(false, false, global1[_wgslsmith_index_u32(arg_1.x, 5u)], false), vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(var_1.x, 5u)]))), all(vec3<bool>(global1[_wgslsmith_index_u32(arg_1.x, 5u)], global1[_wgslsmith_index_u32(var_1.x, 5u)], global1[_wgslsmith_index_u32(arg_1.x, 5u)])), all(vec4<bool>(global1[_wgslsmith_index_u32(32219u, 5u)], false, true, global1[_wgslsmith_index_u32(1u, 5u)])))), true, any(select(!vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 5u)], true), vec3<bool>(any(vec2<bool>(false, true)), true, global1[_wgslsmith_index_u32(10598u << (u_input.e % 32u), 5u)]), any(!vec3<bool>(false, false, global1[_wgslsmith_index_u32(arg_1.x, 5u)])))));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>) -> vec4<u32> {
    let var_0 = -1i;
    let var_1 = select(vec3<bool>(global1[_wgslsmith_index_u32(~(~4397u), 5u)], -429f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.x + global2.a.x) + _wgslsmith_f_op_f32(exp2(global2.a.x))), any(func_3(vec2<i32>(global2.b, -2147483647i), ~vec3<u32>(46263u, 8882u, 4294967295u), i32(-1i) * -21799i))), select(!(!select(vec3<bool>(true, false, global1[_wgslsmith_index_u32(0u, 5u)]), vec3<bool>(true, true, false), false)), select(select(!vec3<bool>(global1[_wgslsmith_index_u32(47957u, 5u)], global1[_wgslsmith_index_u32(4294967295u, 5u)], global1[_wgslsmith_index_u32(13447u, 5u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(29865u, 5u)], global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(u_input.e, 5u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(62120u, 5u)], global1[_wgslsmith_index_u32(u_input.e, 5u)]), global1[_wgslsmith_index_u32(u_input.e, 5u)]), true), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.e, 5u)], global1[_wgslsmith_index_u32(u_input.e, 5u)], true), func_3(u_input.a.xz, vec3<u32>(u_input.e, u_input.e, u_input.e), 1i), global1[_wgslsmith_index_u32(~u_input.e, 5u)]), !select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.e, 5u)], global1[_wgslsmith_index_u32(u_input.e, 5u)], global1[_wgslsmith_index_u32(u_input.e, 5u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.e, 5u)], global1[_wgslsmith_index_u32(u_input.e, 5u)]), false)), all(!vec2<bool>(global1[_wgslsmith_index_u32(1u, 5u)], global1[_wgslsmith_index_u32(u_input.e, 5u)])) != global1[_wgslsmith_index_u32(u_input.e, 5u)]), true);
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -119f), -745f) - global2.a)), -659i ^ min(max(max(arg_0.c.a.x, var_0), 1i), -36921i), Struct_2(arg_0.b, global2.c.a, arg_0.b, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, 1i, u_input.b), ~arg_1) & -reverseBits(arg_1.x)));
    var var_3 = Struct_4(_wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 58962u, u_input.e, 23201u), vec4<u32>(u_input.e, 0u, 1u, 4295u))), u_input.e), ~reverseBits(vec2<u32>(u_input.e, u_input.e))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2.a, vec2<f32>(global2.a.x, -452f))), _wgslsmith_sub_vec2_u32(vec2<u32>(24992u, u_input.e), countOneBits(_wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(63929u, u_input.e)), firstLeadingBit(vec2<u32>(u_input.e, 60428u))))), global1[_wgslsmith_index_u32(4294967295u, 5u)], abs(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(global2.c.d, global2.c.b.a.x, var_0, -28042i), u_input.d, ~u_input.d), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, var_2.b, 1i, global2.c.d), select(vec4<i32>(-1i, u_input.d.x, -1i, 31662i), vec4<i32>(arg_1.x, 59519i, -3481i, 2147483647i), false)))));
    var var_4 = _wgslsmith_f_op_f32(216f - _wgslsmith_f_op_f32(floor(global2.a.x)));
    return vec4<u32>(var_3.a, ~max(76395u, ~(~var_3.c.x)), 0u, var_3.a);
}

fn func_1() -> Struct_1 {
    let var_0 = 13961u;
    var var_1 = vec4<i32>(2147483647i, 1i, 1i, global2.b) << (~(~countOneBits(func_2(global2.c, u_input.a.zwy))) % vec4<u32>(32u));
    global0 = global1[_wgslsmith_index_u32(var_0, 5u)];
    var_1 = vec4<i32>(min(~min(20578i, 4270i), _wgslsmith_add_i32(var_1.x, -44690i)), reverseBits(global2.b), 2147483647i, u_input.b);
    let var_2 = vec4<bool>(select(global1[_wgslsmith_index_u32(~firstLeadingBit(abs(89985u)), 5u)], !(!select(global1[_wgslsmith_index_u32(u_input.e, 5u)], false, true)), func_3(var_1.yx, max(vec3<u32>(103638u, 0u, var_0) & vec3<u32>(0u, var_0, var_0), vec3<u32>(u_input.e, 4294967295u, u_input.e) >> (vec3<u32>(u_input.e, 33414u, u_input.e) % vec3<u32>(32u))), var_1.x).x), false, true, global1[_wgslsmith_index_u32(var_0, 5u)]);
    return Struct_1(vec2<i32>(-_wgslsmith_sub_i32(global2.c.c.a.x, -2147483647i), 2147483647i));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_3 {
    var var_0 = Struct_3(arg_1, global2.b, global2.c);
    var var_1 = Struct_4(4294967295u, var_0.a, select(_wgslsmith_clamp_vec2_u32(~abs(vec2<u32>(u_input.e, 1u)), ~(~vec2<u32>(4294967295u, u_input.e)), ~abs(vec2<u32>(0u, u_input.e))), ~select(vec2<u32>(4294967295u, u_input.e), _wgslsmith_mod_vec2_u32(vec2<u32>(6777u, u_input.e), vec2<u32>(u_input.e, 41210u)), func_3(var_0.c.b.a, vec3<u32>(0u, 66636u, 1u), u_input.c.x).yx), true), false, _wgslsmith_mod_i32(abs(func_1().a.x), 0i));
    global1 = array<bool, 5>();
    return Struct_3(vec2<f32>(arg_1.x, var_1.b.x), global2.c.d, Struct_2(func_1(), Struct_1(u_input.a.xy), func_1(), func_1().a.x >> (0u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(func_1(), vec2<f32>(2131f, -537f));
    global2 = Struct_3(vec2<f32>(global2.a.x, 289f), u_input.a.x & _wgslsmith_div_i32(min(-41253i, reverseBits(global2.b)), -(~u_input.a.x)), Struct_2(func_1(), Struct_1(-vec2<i32>(-30011i, global2.c.b.a.x)), Struct_1(~vec2<i32>(global2.c.d, global2.c.d)), _wgslsmith_div_i32(~(-27236i), -58353i)));
    global2 = func_4(global2.c.c, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.a.x, global2.a.x))), _wgslsmith_f_op_f32(func_4(global2.c.c, vec2<f32>(global2.a.x, -190f)).a.x - _wgslsmith_f_op_f32(global2.a.x + global2.a.x))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global2.a)))));
    let var_0 = u_input.e;
    var var_1 = func_4(Struct_1(-firstLeadingBit(-global2.c.b.a)), global2.a);
    let var_2 = vec2<u32>(var_0, 56908u);
    var var_3 = Struct_2(global2.c.c, func_4(func_4(func_4(var_1.c.c, _wgslsmith_f_op_vec2_f32(-global2.a)).c.b, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -2147f))))).c.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global2.a, global2.a, vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 5u)], true))) * func_4(Struct_1(u_input.a.xz), var_1.a).a))).c.b, var_1.c.c, ~countOneBits(var_1.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.a.x)) * _wgslsmith_f_op_f32(step(global2.a.x, var_1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1879f, var_1.a.x)) - var_1.a.x), _wgslsmith_f_op_f32(-1f)), -8554i, firstTrailingBit(u_input.d.xxy), ~(-firstTrailingBit(u_input.c.x) & select(-var_1.c.d, func_1().a.x, global1[_wgslsmith_index_u32(~var_2.x, 5u)])));
}

