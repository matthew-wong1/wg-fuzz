struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<bool, 27> = array<bool, 27>(true, true, true, true, false, true, true, false, false, true, false, false, true, false, false, true, false, false, true, false, false, true, true, false, false, false, false);

var<private> global2: array<i32, 5>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    global1 = array<bool, 27>();
    var var_0 = Struct_2(~vec4<u32>(select(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 4294967295u, 0u), vec4<u32>(u_input.a, 552u, 4294967295u, u_input.a)), u_input.a, select(true, false, true)), u_input.a, 1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(104636u, u_input.a), vec2<u32>(62625u, 59293u))), _wgslsmith_div_i32(~(~global2[_wgslsmith_index_u32(u_input.a, 5u)]), -19477i) <= _wgslsmith_clamp_i32(1i, ~global2[_wgslsmith_index_u32(~u_input.a, 5u)], ~1i), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1658f), ~max(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 132549u), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)), u_input.a ^ 4294967295u)), countOneBits(countOneBits(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 43916u, 0u), vec4<u32>(1u, 4294967295u, u_input.a, u_input.a)), vec4<u32>(u_input.a, 4294967295u, u_input.a, 0u)))));
    let var_1 = var_0.a.x;
    let var_2 = !select(!select(select(vec3<bool>(true, var_0.b, global1[_wgslsmith_index_u32(4294967295u, 27u)]), vec3<bool>(global1[_wgslsmith_index_u32(1u, 27u)], true, global1[_wgslsmith_index_u32(129700u, 27u)]), vec3<bool>(var_0.b, var_0.b, false)), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 27u)], var_0.b, global1[_wgslsmith_index_u32(u_input.a, 27u)]), var_0.b), select(!(!vec3<bool>(true, var_0.b, false)), vec3<bool>(!global1[_wgslsmith_index_u32(36916u, 27u)], var_0.b, !var_0.b), all(select(vec2<bool>(false, var_0.b), vec2<bool>(false, global1[_wgslsmith_index_u32(22241u, 27u)]), var_0.b))), all(vec4<bool>(true, any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 27u)], true, true)), any(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 27u)], true, true)), any(vec2<bool>(global1[_wgslsmith_index_u32(7548u, 27u)], var_0.b)))));
    var var_3 = vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 27u)], !(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(0u, 0u), 4294967295u), 5u)] < ~firstTrailingBit(-63576i)), true);
    return _wgslsmith_div_u32(4294967295u, _wgslsmith_mult_u32(~(~(var_0.d.x >> (var_0.a.x % 32u))), 40170u));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = Struct_2(vec4<u32>(reverseBits(4294967295u), u_input.a, _wgslsmith_mult_u32(arg_3.x, ~4294967295u), 43341u) << (arg_1.a % vec4<u32>(32u)), select(arg_1.b, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, abs(0u), ~20180u, 31482u), arg_1.d ^ (vec4<u32>(arg_3.x, arg_0, arg_1.c.b, u_input.a) & arg_1.a)), 27u)], all(select(!vec4<bool>(arg_1.b, true, arg_1.b, global1[_wgslsmith_index_u32(arg_1.a.x, 27u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(arg_1.c.b, 27u)], true, false, arg_1.b), vec4<bool>(false, true, global1[_wgslsmith_index_u32(arg_0, 27u)], global1[_wgslsmith_index_u32(arg_3.x, 27u)]), vec4<bool>(global1[_wgslsmith_index_u32(arg_3.x, 27u)], arg_1.b, arg_1.b, arg_1.b)), true))), Struct_1(1477f, abs(func_3() | (arg_3.x & arg_3.x))), vec4<u32>((u_input.a ^ arg_0) | func_3(), _wgslsmith_mod_u32(~(u_input.a & arg_3.x), _wgslsmith_dot_vec3_u32(arg_1.d.xxy, vec3<u32>(22496u, 0u, 48251u))), ~arg_1.c.b, 61619u));
    var var_1 = arg_1;
    var_0 = Struct_2(vec4<u32>(arg_3.x, _wgslsmith_sub_u32(countOneBits(firstTrailingBit(13383u)), countOneBits(var_0.a.x) ^ var_0.d.x), 1u << (select(~4294967295u, arg_3.x, true) % 32u), u_input.a), var_1.b, arg_1.c, ~((var_0.d << (vec4<u32>(var_1.c.b, u_input.a, 4294967295u, 4294967295u) % vec4<u32>(32u))) ^ abs(_wgslsmith_div_vec4_u32(var_1.a, var_1.a))));
    var_1 = Struct_2(vec4<u32>(1u, 1u, abs(5218u), _wgslsmith_mod_u32(u_input.a ^ _wgslsmith_add_u32(var_0.d.x, u_input.a), ~_wgslsmith_dot_vec3_u32(var_0.a.zyz, vec3<u32>(53357u, arg_3.x, 1u)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.c.a - _wgslsmith_f_op_f32(arg_1.c.a + 1051f)))) > var_0.c.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.a)), ~var_0.a.x), ~max(countOneBits(vec4<u32>(53045u, var_1.a.x, u_input.a, 78712u)), vec4<u32>(_wgslsmith_dot_vec2_u32(arg_3, vec2<u32>(var_0.c.b, 4294967295u)), ~arg_1.c.b, ~19097u, countOneBits(arg_3.x))));
    var_0 = arg_1;
    return arg_1;
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = arg_0.c;
    var var_1 = Struct_1(-436f, var_0.b);
    let var_2 = vec3<u32>(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(10543u >> (1u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 1u, u_input.a), vec4<u32>(var_1.b, 0u, 1u, var_1.b)), arg_0.c.b)), abs(_wgslsmith_sub_vec3_u32(arg_0.d.xxz | arg_0.a.yxx, arg_0.a.xxx))), 4294967295u, _wgslsmith_mod_u32(arg_0.a.x >> (0u % 32u), ~arg_0.a.x));
    global0 = !(global1[_wgslsmith_index_u32(max(_wgslsmith_mod_u32(arg_0.a.x, 68553u >> (var_1.b % 32u)), ~(~4294967295u)), 27u)] && true);
    let var_3 = abs(global2[_wgslsmith_index_u32(u_input.a, 5u)]) << (0u % 32u);
    return arg_0.c;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>) -> Struct_2 {
    let var_0 = ~_wgslsmith_mod_vec2_u32(select(vec2<u32>(0u, 26255u) ^ vec2<u32>(29813u, u_input.a), vec2<u32>(u_input.a, u_input.a), !arg_0.b), ~arg_1.zz) << (~(~vec2<u32>(countOneBits(116483u), 1u)) % vec2<u32>(32u));
    global1 = array<bool, 27>();
    global1 = array<bool, 27>();
    global2 = array<i32, 5>();
    global1 = array<bool, 27>();
    return Struct_2(arg_1, arg_0.b, func_4(func_2(1u, arg_0, countOneBits(-vec2<i32>(1i, global2[_wgslsmith_index_u32(0u, 5u)])), ~var_0)), arg_1);
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_2) -> i32 {
    global2 = array<i32, 5>();
    global0 = !any(select(select(select(vec2<bool>(true, global1[_wgslsmith_index_u32(70970u, 27u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 27u)], true), vec2<bool>(true, true)), select(vec2<bool>(global1[_wgslsmith_index_u32(31636u, 27u)], global1[_wgslsmith_index_u32(arg_2.b, 27u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 27u)]), vec2<bool>(arg_3.b, true)), !vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(arg_2.b, 27u)])), select(!vec2<bool>(global1[_wgslsmith_index_u32(arg_3.a.x, 27u)], true), !vec2<bool>(true, arg_3.b), vec2<bool>(true, true)), !(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 27u)], false))));
    let var_0 = ~arg_3.a.x;
    let var_1 = arg_3.d;
    var var_2 = func_2(80969u, func_2(abs(func_1(arg_3, vec4<u32>(u_input.a, 66925u, 1u, arg_3.a.x)).d.x) ^ var_0, arg_3, -arg_1.yw, vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.b, 1u), arg_3.a.yx ^ vec2<u32>(var_0, 74115u)), var_0)), max(arg_1.wx, arg_1.xy), abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.x, ~arg_2.b), vec2<u32>(~20328u, ~u_input.a), (arg_3.a.zy ^ vec2<u32>(arg_3.a.x, 60529u)) ^ _wgslsmith_add_vec2_u32(arg_3.a.ww, vec2<u32>(u_input.a, u_input.a))))).c;
    return _wgslsmith_add_i32(abs(_wgslsmith_dot_vec3_i32(arg_1.yyw, vec3<i32>(global2[_wgslsmith_index_u32(13236u, 5u)], -2147483647i, -2147483647i) | arg_1.zxz)), i32(-1i) * -6190i);
}

fn func_6(arg_0: vec3<i32>, arg_1: vec2<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(424f + -455f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-441f - -796f) * _wgslsmith_div_f32(271f, -1705f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(762f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-203f - 414f) + -781f)))));
    global0 = all(!(!select(!vec3<bool>(true, arg_1.x, arg_1.x), select(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 27u)], arg_1.x), vec3<bool>(true, arg_1.x, false), false), arg_1.x)));
    var var_1 = Struct_1(-239f, 5590u);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.a, var_1.a, var_1.a))));
    var var_3 = func_4(Struct_2(~(~(~vec4<u32>(56350u, var_1.b, var_1.b, 0u))), global1[_wgslsmith_index_u32(49393u, 27u)], func_2(u_input.a, Struct_2(firstTrailingBit(vec4<u32>(81387u, 1u, 6171u, 1u)), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(35766u, var_1.b, 7068u), 27u)], Struct_1(605f, 0u), vec4<u32>(u_input.a, 51543u, 23592u, u_input.a)), arg_0.xx, _wgslsmith_mod_vec2_u32(vec2<u32>(var_1.b, 0u), vec2<u32>(9855u, var_1.b))).c, firstLeadingBit((vec4<u32>(var_1.b, u_input.a, u_input.a, 0u) & vec4<u32>(u_input.a, 49833u, 6808u, 4294967295u)) | ~vec4<u32>(4294967295u, 4294967295u, 44528u, 0u))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 5>();
    global0 = func_6(-vec3<i32>(func_5(vec2<f32>(476f, 1136f), ~vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 5u)], global2[_wgslsmith_index_u32(1u, 5u)], -1i, 0i), Struct_1(-1012f, u_input.a), func_1(Struct_2(vec4<u32>(22858u, 40819u, 36594u, 0u), true, Struct_1(1423f, u_input.a), vec4<u32>(u_input.a, 22292u, u_input.a, 3779u)), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(u_input.a, 5u)], global2[_wgslsmith_index_u32(4294967295u, 5u)], global2[_wgslsmith_index_u32(u_input.a, 5u)]), vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 5u)], global2[_wgslsmith_index_u32(u_input.a, 5u)], global2[_wgslsmith_index_u32(1u, 5u)], global2[_wgslsmith_index_u32(38120u, 5u)]), vec4<i32>(9752i, 23843i, global2[_wgslsmith_index_u32(u_input.a, 5u)], 6365i)), -vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 5u)], global2[_wgslsmith_index_u32(0u, 5u)], global2[_wgslsmith_index_u32(1u, 5u)], 1i)), global2[_wgslsmith_index_u32(0u | ~u_input.a, 5u)]), vec2<bool>(all(select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 27u)], true, false), select(vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 27u)], global1[_wgslsmith_index_u32(u_input.a, 27u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(u_input.a, 27u)]), global1[_wgslsmith_index_u32(0u, 27u)]), all(vec3<bool>(global1[_wgslsmith_index_u32(44457u, 27u)], false, global1[_wgslsmith_index_u32(9509u, 27u)])))), true && func_2(33775u, func_1(Struct_2(vec4<u32>(25378u, u_input.a, 25276u, 0u), false, Struct_1(378f, 79509u), vec4<u32>(0u, u_input.a, 1u, u_input.a)), vec4<u32>(u_input.a, 4294967295u, 86689u, 8279u)), vec2<i32>(-27799i, 0i), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 16194u))).b));
    global2 = array<i32, 5>();
    global0 = false;
    var var_0 = 1i;
    var var_1 = Struct_2(vec4<u32>(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a, 4652u), 1u), 0u, ~_wgslsmith_mult_u32(~4294967295u, 1u), 0u << (_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(24944u, u_input.a)), u_input.a) % 32u)), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a, 4294967295u) | _wgslsmith_mult_u32(19402u, u_input.a), ~4294967295u) ^ u_input.a, 27u)], func_4(Struct_2(vec4<u32>(_wgslsmith_add_u32(67128u, 0u), countOneBits(u_input.a), ~u_input.a, 1u), global1[_wgslsmith_index_u32(1u, 27u)], Struct_1(-647f, _wgslsmith_sub_u32(4294967295u, 112155u)), vec4<u32>(~u_input.a, u_input.a, 4294967295u, 1u))), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(_wgslsmith_add_u32(u_input.a, u_input.a), select(u_input.a, u_input.a, global1[_wgslsmith_index_u32(4294967295u, 27u)]), 41362u, 1u), func_1(Struct_2(vec4<u32>(1u, u_input.a, u_input.a, 1u), global1[_wgslsmith_index_u32(4294967295u, 27u)], Struct_1(690f, u_input.a), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)), vec4<u32>(u_input.a, u_input.a, 70947u, 4294967295u)).d ^ countOneBits(vec4<u32>(4294967295u, u_input.a, 40462u, 45417u)), !(!vec4<bool>(global1[_wgslsmith_index_u32(1u, 27u)], false, global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(0u, 27u)]))), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a, u_input.a), u_input.a), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(38178u, u_input.a)), firstLeadingBit(vec2<u32>(0u, 42337u))), u_input.a, _wgslsmith_mod_u32(19866u, 1u)), ~(~vec4<u32>(49687u, u_input.a, u_input.a, 4294967295u))));
    var_0 = ~(-33883i);
    let var_2 = select(select(vec2<bool>(all(vec2<bool>(false, var_1.b)), var_1.b), select(vec2<bool>(false, true), select(!vec2<bool>(var_1.b, global1[_wgslsmith_index_u32(0u, 27u)]), select(vec2<bool>(true, true), vec2<bool>(false, false), var_1.b), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, var_1.b))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, 38786u) | 9744u, 27u)]), true), vec2<bool>(true, global1[_wgslsmith_index_u32(min(_wgslsmith_dot_vec3_u32(var_1.d.yxz, vec3<u32>(0u, var_1.d.x, var_1.c.b)), u_input.a) ^ u_input.a, 27u)]), true);
    let x = u_input.a;
    s_output = StorageBuffer(893f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -110f) + 583f)));
}

