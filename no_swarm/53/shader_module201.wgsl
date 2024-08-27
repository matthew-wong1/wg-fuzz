struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec3<f32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<i32>, 12>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: u32) -> vec2<i32> {
    global0 = Struct_1(_wgslsmith_add_u32(4294967295u, ~4294967295u), vec2<i32>(-34705i >> (1u % 32u), i32(-1i) * -2147483647i), global0.a < abs(1u), global0.d);
    let var_0 = Struct_1(min(global0.a, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, arg_0), vec2<u32>(20320u, arg_0) | vec2<u32>(44189u, global0.a)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1942u, 1u, 4294967295u), vec4<u32>(global0.a, 4294967295u, 30348u, global0.a)), 0u))), vec2<i32>(~(-1i), i32(-1i) * -1i), select(~4294967295u, ~41728u, global0.d) == 4294967295u, true);
    let var_1 = select(vec3<bool>(((true || var_0.c) | var_0.d) != var_0.d, global0.d, global0.a >= _wgslsmith_mod_u32(~u_input.b, arg_0)), vec3<bool>(any(!(!vec3<bool>(global0.c, true, true))), false, false), global0.d || true);
    let var_2 = vec2<bool>(var_1.x, !(!(global0.a >= (1u & var_0.a))));
    var var_3 = false;
    return vec2<i32>(-1i, 1i);
}

fn func_2() -> bool {
    global1 = array<vec2<i32>, 12>();
    let var_0 = Struct_1(_wgslsmith_sub_u32(u_input.c, 18709u), -func_3(~(global0.a & global0.a)), true, all(!select(vec2<bool>(false, global0.d), select(vec2<bool>(global0.c, global0.d), vec2<bool>(true, global0.d), vec2<bool>(global0.d, true)), select(vec2<bool>(global0.d, global0.d), vec2<bool>(global0.c, true), false))));
    global0 = var_0;
    let var_1 = vec3<f32>(-121f, -845f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1023f))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-274f, 1000f, false)) * _wgslsmith_f_op_f32(round(-749f)))))));
    var var_2 = Struct_2(Struct_1(19297u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(52225u, var_0.a, 75221u, 32026u), vec4<u32>(u_input.b, 1u, u_input.c, global0.a)), select(u_input.e, select(~vec2<i32>(var_0.b.x, global0.b.x), select(vec2<i32>(global0.b.x, 1i), vec2<i32>(global0.b.x, global0.b.x), var_0.d), true), !select(true, global0.c, false)), global0.d, var_0.c), 20758u, var_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(var_1, var_1)))))), _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.d, global0.b.x ^ 2147483647i) | 3343i, i32(-1i) * -40424i));
    return !var_2.a.d;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-102f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(arg_0.x - -1000f)))), -231f, arg_0.x, -1463f);
    let var_1 = vec2<bool>(~0u == _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(u_input.c, u_input.b, arg_1.a, u_input.b)), vec4<u32>(u_input.c, 5328u, u_input.c, 34050u)), firstLeadingBit(vec4<u32>(37509u, arg_1.a, 0u, 19549u))), false);
    let var_2 = 1i == _wgslsmith_div_i32(~(-(u_input.a ^ 2147483647i)), ~(-_wgslsmith_sub_i32(38061i, -53975i)));
    global0 = Struct_1(u_input.c, abs(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 29721i), -(~vec2<i32>(u_input.a, 1i)))), _wgslsmith_div_f32(var_0.x, _wgslsmith_div_f32(263f, -321f)) == -1141f, !((global0.a & min(8769u, 4294967295u)) <= ~u_input.b));
    var var_3 = var_0.x;
    return arg_1;
}

fn func_5(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    global0 = func_4(_wgslsmith_f_op_vec2_f32(-arg_1.d.zz), arg_1.a, !(!(!select(vec2<bool>(true, false), vec2<bool>(global0.c, arg_1.a.d), vec2<bool>(false, true)))));
    let var_0 = !vec2<bool>(!(_wgslsmith_sub_u32(0u, global0.a) == (0u << (arg_1.b % 32u))), arg_0);
    let var_1 = arg_1.d.x;
    let var_2 = global0.b.x;
    global0 = Struct_1(1u, global0.b << (max(reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.c.a, arg_1.c.a), vec2<u32>(u_input.c, global0.a))), reverseBits(~vec2<u32>(0u, 20418u))) % vec2<u32>(32u)), var_0.x, true);
    return Struct_1(0u, _wgslsmith_div_vec2_i32(max(global0.b, _wgslsmith_div_vec2_i32(global1[_wgslsmith_index_u32(1u, 12u)], -vec2<i32>(-2147483647i, u_input.a))), _wgslsmith_mod_vec2_i32(max(vec2<i32>(-9798i, 2147483647i), global1[_wgslsmith_index_u32(1u, 12u)]), _wgslsmith_clamp_vec2_i32(global0.b, select(global0.b, global1[_wgslsmith_index_u32(110021u, 12u)], var_0), vec2<i32>(arg_1.a.b.x, -1i)))), 1u <= _wgslsmith_dot_vec4_u32(max(_wgslsmith_mod_vec4_u32(vec4<u32>(2001u, 97181u, u_input.b, 58167u), vec4<u32>(global0.a, arg_1.c.a, arg_1.b, u_input.c)), ~vec4<u32>(global0.a, 11114u, u_input.b, u_input.b)), firstTrailingBit(vec4<u32>(0u, 1u, global0.a, arg_1.b)) ^ vec4<u32>(arg_1.a.a, arg_1.b, 40178u, 112764u)), true);
}

fn func_1() -> Struct_1 {
    global0 = func_5(global0.d, Struct_2(Struct_1(1u & (16927u ^ global0.a), vec2<i32>(countOneBits(-49898i), min(1i, -2147483647i)), true, all(select(vec3<bool>(true, false, global0.d), vec3<bool>(false, true, global0.d), vec3<bool>(global0.c, false, false)))), 1u, func_4(vec2<f32>(_wgslsmith_f_op_f32(-1000f - -361f), _wgslsmith_f_op_f32(f32(-1f) * -810f)), Struct_1(573u, u_input.e << (vec2<u32>(u_input.c, global0.a) % vec2<u32>(32u)), func_2(), true), vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-2442f, -2278f, -349f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(269f, 457f, -1000f)))))), ~select(-18647i, -55138i, !global0.d)));
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(202f, -289f)), _wgslsmith_f_op_f32(min(345f, 1208f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1000f))))), -825f)));
    var var_1 = ~firstLeadingBit(select(firstLeadingBit(vec4<u32>(30035u, 11392u, 4294967295u, global0.a)) | firstTrailingBit(vec4<u32>(38563u, 1u, 4895u, global0.a)), ~(~vec4<u32>(global0.a, global0.a, u_input.c, u_input.b)), func_4(vec2<f32>(var_0.x, -1710f), func_5(false, Struct_2(Struct_1(1u, global0.b, global0.d, true), u_input.b, Struct_1(global0.a, global0.b, true, false), vec3<f32>(var_0.x, var_0.x, -1000f), 1i)), vec2<bool>(false, true)).c));
    global0 = Struct_1(countOneBits(u_input.c), select(~(u_input.e << (var_1.zw % vec2<u32>(32u))) | global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~global0.a, reverseBits(var_1.x)), 12u)], global1[_wgslsmith_index_u32(countOneBits(1u), 12u)], !select(true, global0.d && global0.d, global0.d)), true, any(vec2<bool>(func_5(!global0.c, Struct_2(Struct_1(global0.a, global0.b, global0.c, false), u_input.b, Struct_1(0u, vec2<i32>(u_input.e.x, global0.b.x), false, true), vec3<f32>(-131f, var_0.x, -1269f), 5312i)).d, global0.c)));
    var_1 = _wgslsmith_add_vec4_u32(select(~countOneBits(vec4<u32>(0u, 8327u, var_1.x, u_input.b) & vec4<u32>(u_input.c, u_input.c, u_input.c, global0.a)), reverseBits(~(~vec4<u32>(global0.a, 4294967295u, global0.a, var_1.x))), any(!select(vec3<bool>(global0.c, global0.c, true), vec3<bool>(global0.c, global0.d, false), true))), ~(~firstLeadingBit(vec4<u32>(global0.a, var_1.x, 54950u, 2459u))) | ~(~vec4<u32>(u_input.b, global0.a, var_1.x, 0u)));
    return func_5(!all(select(!vec3<bool>(global0.c, false, global0.d), !vec3<bool>(false, global0.d, false), true)), Struct_2(Struct_1((0u >> (global0.a % 32u)) | _wgslsmith_mult_u32(u_input.c, 4294967295u), select(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_1.xww, var_1.xwx), 12u)], _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.e.x, 19372i), u_input.e), select(false, false, false)), func_2(), global0.d), 108984u, Struct_1(u_input.b, func_5(false, Struct_2(Struct_1(9679u, u_input.e, true, true), global0.a, Struct_1(u_input.b, global0.b, false, global0.d), vec3<f32>(var_0.x, var_0.x, var_0.x), 0i)).b, false, true), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-558f, _wgslsmith_f_op_f32(step(var_0.x, var_0.x)), _wgslsmith_f_op_f32(var_0.x + var_0.x)))), _wgslsmith_mod_i32(u_input.a, _wgslsmith_mod_i32(-49006i, u_input.d))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 12>();
    global0 = func_1();
    global0 = Struct_1(0u, vec2<i32>(~2147483647i, _wgslsmith_mult_i32(global0.b.x, 0i)), func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(387f, -1041f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-431f, -2837f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(495f, 562f) * vec2<f32>(318f, 1000f)))), func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1240f, 2008f)) * vec2<f32>(-904f, 454f)), func_5(all(vec2<bool>(global0.c, global0.d)), Struct_2(Struct_1(1u, u_input.e, true, global0.d), global0.a, Struct_1(u_input.c, vec2<i32>(0i, -1i), false, false), vec3<f32>(-190f, 1000f, -433f), 11651i)), vec2<bool>(true && global0.c, true)), select(!(!vec2<bool>(global0.d, true)), select(select(vec2<bool>(true, global0.d), vec2<bool>(global0.c, global0.d), vec2<bool>(global0.c, global0.d)), !vec2<bool>(false, global0.d), false), select(select(vec2<bool>(global0.c, false), vec2<bool>(false, global0.d), vec2<bool>(false, global0.d)), vec2<bool>(true, global0.c), any(vec3<bool>(global0.d, global0.d, global0.d))))).d, true == global0.c);
    var var_0 = select(-vec3<i32>(-1i, 1i, reverseBits(_wgslsmith_mod_i32(global0.b.x, 82411i))), vec3<i32>(-1i) * -(_wgslsmith_mult_vec3_i32(vec3<i32>(global0.b.x, u_input.d, u_input.a), vec3<i32>(0i, u_input.d, global0.b.x)) ^ reverseBits(vec3<i32>(14671i, global0.b.x, 0i))), all(vec4<bool>(!(u_input.e.x >= -2147483647i), true, false, !global0.c)));
    let var_1 = Struct_2(func_5(global0.c, Struct_2(Struct_1(104633u, ~var_0.zz, func_1().c, true), ~24691u, Struct_1(~u_input.c, u_input.e, global0.c, global0.d), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(631f, 1000f, 305f), vec3<f32>(-2803f, 1318f, -639f), vec3<bool>(true, global0.d, global0.c))))), var_0.x)), 4294967295u, Struct_1(global0.a, vec2<i32>(_wgslsmith_sub_i32(reverseBits(31714i), firstLeadingBit(global0.b.x)), -(i32(-1i) * -22583i)), false, all(!(!vec3<bool>(true, global0.c, false)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -973f), _wgslsmith_f_op_f32(-1227f + _wgslsmith_f_op_f32(443f * _wgslsmith_div_f32(439f, -1103f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1183f, -203f)))))), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(~14598u, u_input.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.x * _wgslsmith_f_op_f32(step(var_1.d.x, _wgslsmith_f_op_f32(round(-1000f))))) - var_1.d.x));
}

