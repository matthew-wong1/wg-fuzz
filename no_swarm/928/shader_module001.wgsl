struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: bool,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26>;

var<private> global1: bool = true;

var<private> global2: array<bool, 1> = array<bool, 1>(true);

var<private> global3: f32;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: f32, arg_3: u32) -> u32 {
    var var_0 = 4294967295u;
    var var_1 = ~select(vec3<u32>(0u, abs(arg_3 ^ u_input.b.x), _wgslsmith_dot_vec2_u32(u_input.b.xz, vec2<u32>(arg_3, u_input.a)) ^ ~59055u), u_input.b, arg_0);
    global1 = any(!arg_0);
    var var_2 = -518f;
    return var_1.x;
}

fn func_2(arg_0: vec3<i32>) -> Struct_4 {
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.b.x >> (u_input.b.x % 32u), 26u)], -1490f)) - global0[_wgslsmith_index_u32(func_3(vec3<bool>(true, true, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 96944u), vec2<u32>(1u, u_input.b.x)), 1u)]), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0[_wgslsmith_index_u32(89538u, 26u)], global0[_wgslsmith_index_u32(6510u, 26u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 26u)])), u_input.a), 26u)]));
    let var_0 = Struct_5(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(649f, global0[_wgslsmith_index_u32(41743u, 26u)], global0[_wgslsmith_index_u32(u_input.b.x, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)]) - vec4<f32>(1453f, 389f, 1000f, 1077f)))), vec4<f32>(674f, _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.b.x, 26u)], global0[_wgslsmith_index_u32(1u, 26u)])), _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_div_f32(249f, global0[_wgslsmith_index_u32(9667u, 26u)])))));
    let var_1 = true;
    var var_2 = select(vec4<bool>(all(!select(vec3<bool>(global2[_wgslsmith_index_u32(9236u, 1u)], global2[_wgslsmith_index_u32(12704u, 1u)], false), vec3<bool>(false, var_1, global2[_wgslsmith_index_u32(14240u, 1u)]), vec3<bool>(false, false, false))), any(vec2<bool>(all(vec3<bool>(var_1, true, false)), true)), all(select(!vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1), global2[_wgslsmith_index_u32(43271u, 1u)] & var_1)), all(!vec3<bool>(global2[_wgslsmith_index_u32(1u, 1u)], true, var_1))), select(vec4<bool>(!(var_1 & false), true | !global2[_wgslsmith_index_u32(u_input.b.x, 1u)], true, false), vec4<bool>(all(!vec2<bool>(var_1, true)), true, true, true), select(select(vec4<bool>(true, var_1, var_1, global2[_wgslsmith_index_u32(49372u, 1u)]), vec4<bool>(true, true, global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(u_input.b.x, 1u)]), !vec4<bool>(false, false, var_1, var_1)), !select(vec4<bool>(var_1, false, global2[_wgslsmith_index_u32(14438u, 1u)], false), vec4<bool>(true, var_1, var_1, global2[_wgslsmith_index_u32(42847u, 1u)]), vec4<bool>(var_1, global2[_wgslsmith_index_u32(38791u, 1u)], false, global2[_wgslsmith_index_u32(57606u, 1u)])), !all(vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(u_input.a, 1u)])))), vec4<bool>(-1i == _wgslsmith_dot_vec2_i32(vec2<i32>(1i, arg_0.x), vec2<i32>(arg_0.x, arg_0.x) << (u_input.b.zy % vec2<u32>(32u))), all(select(!vec4<bool>(true, false, var_1, var_1), select(vec4<bool>(var_1, global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(u_input.b.x, 1u)], var_1), vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(u_input.b.x, 1u)], global2[_wgslsmith_index_u32(83944u, 1u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 1u)], true, global2[_wgslsmith_index_u32(u_input.b.x, 1u)], global2[_wgslsmith_index_u32(55654u, 1u)])), !vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 1u)], global2[_wgslsmith_index_u32(46439u, 1u)], var_1, var_1))), true, true));
    var var_3 = -abs(_wgslsmith_sub_vec2_i32(~arg_0.xy ^ ~arg_0.zx, abs(vec2<i32>(arg_0.x, -28986i) & vec2<i32>(0i, u_input.c.x))));
    return Struct_4(select(!(!(!var_2.www)), !var_2.zyx, vec3<bool>(var_2.x, true, (global0[_wgslsmith_index_u32(4294967295u, 26u)] <= 1669f) || (1i < arg_0.x))), Struct_1(_wgslsmith_f_op_vec4_f32(floor(var_0.a.a))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 26u)])) * 185f), var_0.a, Struct_1(var_0.a.a), var_3.x, vec4<bool>(var_2.x, _wgslsmith_f_op_f32(min(1018f, var_0.a.a.x)) >= _wgslsmith_f_op_f32(ceil(-496f)), 0i < ~arg_0.x, var_2.x)));
}

fn func_4(arg_0: Struct_4) -> vec4<bool> {
    let var_0 = firstTrailingBit(firstTrailingBit(u_input.b.xy | vec2<u32>(u_input.b.x, u_input.a)));
    var var_1 = ~(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, u_input.a, 47307u, 44813u), vec4<u32>(3779u, 1u, 80314u, var_0.x)) ^ ~select(vec4<u32>(29612u, u_input.a, u_input.a, var_0.x), vec4<u32>(var_0.x, 1u, 9132u, var_0.x), vec4<bool>(arg_0.c.e.x, true, arg_0.c.e.x, global2[_wgslsmith_index_u32(1u, 1u)]))) | _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(min(vec4<u32>(var_0.x, var_0.x, 6383u, 4294967295u), ~vec4<u32>(8927u, var_0.x, u_input.b.x, var_0.x)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_0.x, u_input.b.x, 1u), vec4<u32>(var_0.x, 0u, 77338u, 1u) | vec4<u32>(0u, u_input.a, var_0.x, 28869u))), _wgslsmith_mult_vec4_u32(max(vec4<u32>(4294967295u, var_0.x, 94373u, u_input.a), vec4<u32>(21073u, 24558u, var_0.x, var_0.x)) & vec4<u32>(u_input.b.x, u_input.a, var_0.x, 14312u), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(8441u, u_input.b.x, u_input.a, 67804u), vec4<u32>(var_0.x, 4294967295u, u_input.a, var_0.x)), ~vec4<u32>(0u, u_input.a, u_input.b.x, 4294967295u), vec4<u32>(14713u, u_input.b.x, 18775u, 26974u) | vec4<u32>(49406u, u_input.a, u_input.a, 4294967295u))), ~(~(~vec4<u32>(63341u, var_0.x, 30301u, var_0.x))));
    global1 = false;
    let var_2 = abs(-_wgslsmith_mult_vec3_i32(~u_input.c, u_input.c));
    let var_3 = func_2(abs(u_input.c)).c;
    return vec4<bool>(arg_0.a.x, true, arg_0.c.e.x, var_3.e.x);
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: u32, arg_3: i32) -> Struct_2 {
    var var_0 = !func_4(func_2(~(-u_input.c)));
    var var_1 = 26398i;
    global3 = 931f;
    var var_2 = !vec4<bool>(true, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(45603u, arg_1.x, 0u, u_input.a)), vec4<u32>(43367u, u_input.a, 1u, arg_1.x)), u_input.a), 1u)], any(vec4<bool>(global2[_wgslsmith_index_u32(func_3(var_0.zxw, vec2<f32>(-1017f, arg_0), global0[_wgslsmith_index_u32(17377u, 26u)], arg_2), 1u)], !global2[_wgslsmith_index_u32(97094u, 1u)], !var_0.x, false)), func_2(u_input.c).a.x);
    var var_3 = ~u_input.c.x;
    return Struct_2(209f, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-func_2(vec3<i32>(2147483647i, arg_3, u_input.c.x)).c.c.a))), func_2(select(firstLeadingBit(vec3<i32>(arg_3, arg_3, 17706i) >> (vec3<u32>(4294967295u, arg_1.x, 35487u) % vec3<u32>(32u))), ~u_input.c, func_2(vec3<i32>(2147483647i, arg_3, arg_3) ^ u_input.c).c.e.x)).c.b, 31301i, func_2(vec3<i32>(_wgslsmith_mod_i32(1i, -2147483647i), arg_3, ~1i)).c.e);
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: bool, arg_3: u32) -> Struct_3 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-350f, -689f, arg_0.x, -771f), arg_1.b.c.a)) - _wgslsmith_f_op_vec4_f32(-arg_1.b.b.a))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-arg_1.b.b.a))))), vec4<f32>(_wgslsmith_f_op_f32(-func_1(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 26u)]), vec2<u32>(19236u, 0u) ^ vec2<u32>(14461u, arg_3), u_input.b.x, -2147483647i).a), -186f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1.b.b.a.x)), _wgslsmith_f_op_f32(1076f - global0[_wgslsmith_index_u32(1u, 26u)])))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 26u)])));
    let var_1 = arg_1.b;
    global0 = array<f32, 26>();
    global1 = global2[_wgslsmith_index_u32(firstTrailingBit(u_input.a) & ~u_input.b.x, 1u)] & (u_input.c.x >= arg_1.b.d);
    let var_2 = select(reverseBits(~countOneBits(abs(u_input.b.zz))), u_input.b.zx, !var_1.e.x);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(48712u, 26u)], 1480f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 26u)], -625f) - vec2<f32>(-227f, 485f))))) - vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 26u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1890f, 691f)))), Struct_3(vec2<bool>(false, u_input.c.x > -u_input.c.x), func_1(-863f, abs(vec2<u32>(1u, 14918u) << (u_input.b.xz % vec2<u32>(32u))), ~(~0u), ~_wgslsmith_div_i32(2147483647i, u_input.c.x)), false, !func_1(-1172f, ~vec2<u32>(u_input.a, 4294967295u), func_3(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 1u)], false, true), vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 26u)], -2344f), global0[_wgslsmith_index_u32(u_input.a, 26u)], 79219u), u_input.c.x).e), global2[_wgslsmith_index_u32(1u, 1u)], select(_wgslsmith_add_u32(u_input.a, _wgslsmith_mod_u32(u_input.a, _wgslsmith_dot_vec2_u32(u_input.b.yz, u_input.b.xz))), u_input.a, true));
    let var_1 = func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b.b.a.x, var_0.b.b.a.x), var_0.b.b.a.xy, false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.a, var_0.b.a) * var_0.b.c.a.zw))))), var_0, any(var_0.d.yyw), abs(~min(3204u, ~30499u))).b;
    let var_2 = var_0.b.e.wy;
    var var_3 = Struct_3(var_1.e.zx, var_1, all(vec3<bool>(func_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2942f, 349f) * var_1.b.a.zz), var_0, false, u_input.b.x).c, false, true)), vec4<bool>(true, true, any(vec3<bool>(true, -1000f != var_0.b.c.a.x, var_1.e.x && false)), !(!func_4(Struct_4(vec3<bool>(true, false, var_2.x), var_0.b.b, var_0.b)).x)));
    let var_4 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.c.a.x, _wgslsmith_div_f32(-375f, 755f))))), Struct_1(var_0.b.b.a), Struct_1(var_1.b.a), -_wgslsmith_add_i32(-reverseBits(-2147483647i), select(-59692i, -5729i, false) ^ ~(-1i)), vec4<bool>(any(vec3<bool>(all(vec3<bool>(var_3.c, false, global2[_wgslsmith_index_u32(68980u, 1u)])), true, func_1(1544f, u_input.b.zy, 0u, var_1.d).e.x)), global2[_wgslsmith_index_u32(~u_input.a, 1u)], var_1.e.x, any(func_1(_wgslsmith_f_op_f32(max(var_0.b.b.a.x, var_0.b.b.a.x)), vec2<u32>(u_input.b.x, u_input.a), u_input.a, 1i).e.zy)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_mult_vec4_u32(firstLeadingBit(firstLeadingBit(vec4<u32>(46508u, u_input.a, u_input.a, 35349u)) >> (vec4<u32>(u_input.a, u_input.a, u_input.b.x, u_input.b.x) % vec4<u32>(32u))), vec4<u32>(u_input.a, func_3(select(var_1.e.xzz, var_4.e.yzy, vec3<bool>(global2[_wgslsmith_index_u32(33464u, 1u)], var_0.c, true)), vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 26u)], var_1.b.a.x), _wgslsmith_f_op_f32(-var_1.c.a.x), ~0u), min(u_input.b.x, firstTrailingBit(0u)), 68297u)), _wgslsmith_add_i32(~_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(32171i, var_1.d, u_input.c.x, var_4.d)), -vec4<i32>(17014i, u_input.c.x, u_input.c.x, var_1.d)), _wgslsmith_sub_i32(func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(204f, var_0.b.c.a.x)), var_0, true, firstLeadingBit(u_input.a)).b.d, -22425i)), u_input.c, 15399u);
}

