struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30>;

var<private> global1: Struct_3;

var<private> global2: Struct_1 = Struct_1(i32(-2147483648), vec3<u32>(4294967295u, 1u, 116670u), false, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2) -> u32 {
    global2 = Struct_1(global1.e.b.a << ((_wgslsmith_sub_u32(~global1.c.b.b.x, 1u) & ~min(0u, 32187u)) % 32u), ~abs(global2.b), _wgslsmith_f_op_f32(-677f - global0[_wgslsmith_index_u32(max(34263u, global1.e.b.b.x), 30u)]) <= _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(~global2.b.x, 30u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(12470u, 30u)]) - _wgslsmith_f_op_f32(min(771f, arg_0.x))), true)), global2.c);
    var var_0 = vec4<i32>(-_wgslsmith_div_i32(22169i, _wgslsmith_div_i32(_wgslsmith_mult_i32(global1.a.b.a, -2147483647i), _wgslsmith_div_i32(arg_1.a.a, u_input.a))), _wgslsmith_div_i32(firstLeadingBit(arg_1.a.a >> (arg_1.b.b.x % 32u)), _wgslsmith_add_i32(-11726i >> (arg_1.b.b.x % 32u), _wgslsmith_sub_i32(-60423i, arg_1.a.a))) | (arg_1.b.a << (~(~272u) % 32u)), _wgslsmith_add_i32(abs(u_input.c << (_wgslsmith_dot_vec4_u32(vec4<u32>(global1.e.a.b.x, 1u, 14415u, global1.d.b.x), vec4<u32>(global2.b.x, global2.b.x, 7627u, 4294967295u)) % 32u)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, arg_1.b.a), select(vec2<i32>(global1.d.a, 2147483647i), vec2<i32>(global2.a, -1i), vec2<bool>(global1.d.c, arg_1.a.d)))), 0i);
    global2 = arg_1.a;
    var var_1 = any(select(select(vec2<bool>(true, true), vec2<bool>(-1i == arg_1.b.a, false), select(!vec2<bool>(true, global1.d.d), vec2<bool>(false, arg_1.b.c), !vec2<bool>(global2.c, false))), !select(select(vec2<bool>(false, arg_1.b.c), vec2<bool>(arg_1.a.c, true), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(global1.d.c, global2.d), vec2<bool>(true, false), global1.a.b.d)), true));
    let var_2 = -1i;
    return ~max(75508u, 71186u);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: i32) -> Struct_1 {
    let var_0 = select((~(-1i) ^ ((global2.a | -10324i) | (20789i & global2.a))) ^ global2.a, -_wgslsmith_mult_i32(23341i, _wgslsmith_clamp_i32(~(-45695i), -2147483647i, global1.d.a)), true);
    global0 = array<f32, 30>();
    let var_1 = Struct_3(global1.e, vec2<u32>(~func_3(vec3<f32>(1000f, -260f, arg_0.x), Struct_2(global1.c.b, Struct_1(var_0, vec3<u32>(global2.b.x, global2.b.x, global2.b.x), arg_1.x, global2.c))), ~max(global1.a.b.b.x, 4294967295u)) ^ vec2<u32>(0u, _wgslsmith_div_u32(56018u, ~0u)), Struct_2(global1.d, Struct_1(20751i, select(vec3<u32>(u_input.b.x, u_input.d, 42814u) << (u_input.b.zxz % vec3<u32>(32u)), global2.b, arg_1.xxy), all(arg_1.xy), true)), Struct_1(_wgslsmith_add_i32(_wgslsmith_mod_i32(-31948i, select(-2147483647i, var_0, arg_1.x)), ~firstTrailingBit(global1.e.b.a)), u_input.b.yzz, global1.a.a.d, all(select(vec4<bool>(arg_1.x, global2.d, arg_1.x, global1.a.a.c), !vec4<bool>(true, false, global1.c.b.d, global2.d), arg_1))), Struct_2(Struct_1(global2.a, u_input.b.yww, true, any(arg_1.wxz)), global1.c.a));
    let var_2 = var_1;
    let var_3 = Struct_1(~(-1i), vec3<u32>((~global2.b.x | 1u) | _wgslsmith_mod_u32(var_2.d.b.x, 4294967295u), ~max(1u | global2.b.x, func_3(arg_0.xzz, var_1.e)), ~(~70538u) & (~global2.b.x & ~global1.b.x)), true, true);
    return var_3;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: vec3<bool>, arg_3: vec3<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1389f - _wgslsmith_f_op_f32(-816f * _wgslsmith_f_op_f32(abs(477f)))));
    global1 = Struct_3(Struct_2(global1.c.b, func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-260f, 483f, var_0, 587f))), !(!vec4<bool>(false, arg_2.x, arg_2.x, global2.d)), -22692i)), arg_1.zy, global1.e, global1.a.a, global1.a);
    var var_1 = u_input.c;
    var var_2 = _wgslsmith_div_i32(-479i & abs(_wgslsmith_mult_i32(1i, _wgslsmith_div_i32(32785i, global2.a))), _wgslsmith_clamp_i32(select(~arg_0.x & arg_0.x, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-41691i, -1i, 9938i), vec3<i32>(u_input.c, 0i, 1i)), vec3<i32>(global1.d.a, 1i, -1i)), !arg_2.x && global1.a.a.c), 55499i, firstTrailingBit(-(~global1.a.b.a))));
    var var_3 = max(abs(abs(-(~vec3<i32>(global2.a, 17919i, global2.a)))), vec3<i32>(12688i, _wgslsmith_dot_vec2_i32(arg_0, vec2<i32>(_wgslsmith_mult_i32(-1i, u_input.c), arg_0.x)), _wgslsmith_mult_i32(global2.a, abs(func_2(vec4<f32>(var_0, 2164f, global0[_wgslsmith_index_u32(1u, 30u)], -214f), vec4<bool>(true, global2.d, global2.d, global2.d), global2.a).a))));
    return global1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!(!vec4<bool>(true, global2.c, !global2.d, true)));
    global2 = global1.a.b;
    let var_1 = _wgslsmith_div_u32(4294967295u, ~70843u);
    global1 = Struct_3(func_1(-vec2<i32>(~u_input.c, _wgslsmith_mod_i32(-58694i, 4865i)), ~(vec3<u32>(global1.c.a.b.x, 4294967295u, 1u) | global2.b), vec3<bool>(all(!vec2<bool>(true, global1.d.d)), global2.d, false), ~u_input.b.xxz), vec2<u32>(select(856u >> (0u % 32u), u_input.b.x, func_1(vec2<i32>(73559i, 40911i), global1.e.b.b, vec3<bool>(global2.c, true, true), u_input.b.wwx).a.c), ~_wgslsmith_add_u32(4294967295u, global2.b.x)) >> ((u_input.b.yx >> (vec2<u32>(u_input.e & 48002u, max(4294967295u, 20498u)) % vec2<u32>(32u))) % vec2<u32>(32u)), func_1(vec2<i32>(min(_wgslsmith_sub_i32(0i, -33990i), reverseBits(global1.d.a)), -1i), max(_wgslsmith_mod_vec3_u32(u_input.b.wyz, select(u_input.b.yzz, global2.b, vec3<bool>(false, global2.c, true))), abs(global2.b)), vec3<bool>(true, !all(vec4<bool>(var_0, false, global1.e.b.d, global2.c)), false), ~vec3<u32>(_wgslsmith_mult_u32(global1.a.a.b.x, 93621u), 86441u, 58331u)), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, -409f, global0[_wgslsmith_index_u32(global1.b.x, 30u)], global0[_wgslsmith_index_u32(23954u, 30u)])))), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(var_0, var_0, var_0, false), global1.e.b.c), !vec4<bool>(true, false, var_0, var_0), vec4<bool>(global2.d, false, true, true)), select(vec4<bool>(false, var_0, var_0, global1.a.a.d), vec4<bool>(true, global1.a.b.c, false, true), true), select(select(vec4<bool>(global2.d, global2.c, true, global2.c), vec4<bool>(false, global2.c, var_0, false), vec4<bool>(global1.a.a.c, true, global1.e.a.d, global2.c)), vec4<bool>(false, global1.a.b.c, global1.d.d, var_0), !vec4<bool>(true, true, false, var_0))), _wgslsmith_dot_vec4_i32(-(~vec4<i32>(global2.a, -40538i, global1.a.a.a, -11748i)), -vec4<i32>(1i, 1i, -6769i, -18817i))), func_1(firstTrailingBit(vec2<i32>(_wgslsmith_sub_i32(global1.e.a.a, 0i), 24515i)), func_2(vec4<f32>(-235f, global0[_wgslsmith_index_u32(global1.b.x, 30u)], global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(global2.b.x, 30u)]), select(vec4<bool>(false, var_0, global1.e.b.d, global1.c.a.d), vec4<bool>(true, global2.c, var_0, global1.c.b.c), global2.d), global1.a.b.a << (48825u % 32u)).b ^ global1.a.b.b, select(select(select(vec3<bool>(global2.d, var_0, global1.d.d), vec3<bool>(true, false, global2.d), vec3<bool>(true, false, global1.e.b.d)), !vec3<bool>(true, global1.a.a.d, false), vec3<bool>(global2.d, global2.d, global1.a.a.c)), vec3<bool>(any(vec2<bool>(global1.c.a.d, global1.d.d)), true, var_0 || global1.c.a.c), true), select(vec3<u32>(7109u, ~4294967295u, ~global2.b.x), ~u_input.b.yyw >> (~vec3<u32>(98020u, u_input.d, 0u) % vec3<u32>(32u)), !vec3<bool>(false, var_0, global2.d))));
    var var_2 = Struct_4(select(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, -879f, 631f, 280f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-680f, global0[_wgslsmith_index_u32(var_1, 30u)], global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(2683u, 30u)]) - vec4<f32>(global0[_wgslsmith_index_u32(12886u, 30u)], 204f, -338f, 1227f))), select(vec4<bool>(var_0, true, global1.c.b.d, true), select(vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(false, global1.c.b.d, global1.c.b.d, true), false), true), select(u_input.c, -30512i, global1.d.c)).d, false, all(!select(vec3<bool>(false, true, false), vec3<bool>(true, global1.e.a.d, global2.c), vec3<bool>(true, var_0, var_0)))), -vec4<i32>(1i, ~(-19692i), global2.a, _wgslsmith_mod_i32(-2147483647i, 4729i)) << (vec4<u32>(abs(~u_input.e), u_input.d, 1u, global1.e.b.b.x) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(var_2.b, abs(var_2.b)), global0[_wgslsmith_index_u32(24915u, 30u)]);
}

