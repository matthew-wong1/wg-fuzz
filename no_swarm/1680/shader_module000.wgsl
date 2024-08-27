struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: i32,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: bool = true;

var<private> global2: array<Struct_1, 14>;

var<private> global3: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec3<bool>(true, true, true), vec4<u32>(4294967295u, 25846u, 0u, 0u), 0i, 1509f, vec4<bool>(true, true, true, true)));

var<private> global4: array<u32, 32> = array<u32, 32>(53263u, 105049u, 11544u, 39927u, 6310u, 65127u, 0u, 4294967295u, 25381u, 52658u, 29937u, 1u, 1u, 0u, 51285u, 1u, 1426u, 9943u, 88200u, 0u, 23438u, 1u, 1812u, 0u, 1u, 4294967295u, 21907u, 46770u, 47277u, 14604u, 75783u, 4294967295u);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_1) -> i32 {
    global3 = array<Struct_1, 1>();
    var var_0 = Struct_1(select(vec3<bool>(false, arg_2.a.x, all(select(arg_2.e, arg_2.e, vec4<bool>(arg_2.e.x, true, true, arg_2.a.x)))), vec3<bool>((global4[_wgslsmith_index_u32(1840u, 32u)] & 4294967295u) != ~global4[_wgslsmith_index_u32(arg_1, 32u)], all(arg_2.a.zx), any(arg_0)), select(all(vec4<bool>(false, arg_0.x, true, arg_0.x)), _wgslsmith_mult_u32(arg_1, arg_2.b.x) != u_input.a, all(select(arg_0, arg_0, true)))), abs(~max(select(arg_2.b, vec4<u32>(u_input.a, 1u, u_input.a, 50043u), arg_2.e), countOneBits(vec4<u32>(u_input.a, arg_1, 1u, 4251u)))), ~(~(-abs(arg_2.c))), 1044f, select(select(select(select(arg_2.e, vec4<bool>(arg_0.x, true, arg_2.a.x, true), arg_2.e), !arg_2.e, select(arg_2.e, vec4<bool>(false, true, arg_2.a.x, arg_2.e.x), true)), select(arg_2.e, vec4<bool>(true, arg_2.e.x, arg_2.a.x, false), arg_2.e.x), arg_0.x), select(vec4<bool>(true, any(arg_0), true, true), select(!vec4<bool>(true, arg_0.x, false, arg_0.x), select(arg_2.e, vec4<bool>(arg_0.x, true, false, arg_0.x), arg_2.a.x), arg_2.e), !(arg_2.d >= arg_2.d)), !(709f >= _wgslsmith_f_op_f32(-arg_2.d))));
    var var_1 = false;
    return abs(1i);
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    global0 = array<Struct_1, 4>();
    global4 = array<u32, 32>();
    var var_0 = global0[_wgslsmith_index_u32(6981u, 4u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d, 186f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d, 584f) * vec2<f32>(1472f, var_0.d))), vec2<f32>(314f, _wgslsmith_f_op_f32(1594f + -1000f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, var_0.d)))));
    let var_2 = Struct_1(vec3<bool>(!var_0.a.x, !(!(var_0.a.x | true)), all(var_0.a.yy)), max(~abs(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_0.b.x, arg_0.x, 19795u), vec4<u32>(var_0.b.x, var_0.b.x, var_0.b.x, global4[_wgslsmith_index_u32(var_0.b.x, 32u)]))), _wgslsmith_sub_vec4_u32(var_0.b, abs(~vec4<u32>(34884u, 9722u, 49672u, 4529u)))), func_3(select(vec3<bool>(var_0.e.x, false, all(var_0.e)), select(select(var_0.e.xww, vec3<bool>(var_0.e.x, true, var_0.e.x), var_0.e.ywx), vec3<bool>(true, true, true), !vec3<bool>(var_0.e.x, false, var_0.e.x)), false | !var_0.e.x), _wgslsmith_mult_u32(~0u, var_0.b.x), global2[_wgslsmith_index_u32(max(min(arg_0.x, 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(67777u, var_0.b.x), var_0.b.wx)) ^ arg_0.x, 14u)]), _wgslsmith_f_op_f32(-var_0.d), !select(vec4<bool>(var_0.a.x, true, var_1.x <= var_0.d, !var_0.e.x), var_0.e, var_0.e.x || var_0.a.x));
    return global0[_wgslsmith_index_u32(var_2.b.x, 4u)];
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0.b;
    let var_1 = func_2(_wgslsmith_add_vec4_u32(~(~vec4<u32>(1440u, global4[_wgslsmith_index_u32(13360u, 32u)], var_0.x, u_input.a)), ~arg_0.b));
    global3 = array<Struct_1, 1>();
    var var_2 = func_2(~min(vec4<u32>(_wgslsmith_mult_u32(1u, var_1.b.x), global4[_wgslsmith_index_u32(1u, 32u)], _wgslsmith_mod_u32(global4[_wgslsmith_index_u32(8477u, 32u)], 38809u), 30563u), var_1.b));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(ceil(-782f)), _wgslsmith_f_op_f32(trunc(-1192f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d * 405f) - -1505f));
    return Struct_1(!select(select(!arg_0.a, !var_1.e.yyy, !var_1.e.xyx), !func_2(vec4<u32>(u_input.a, var_2.b.x, 184196u, var_1.b.x)).a, func_2(~var_2.b).e.xxz), max(~vec4<u32>(reverseBits(1u), 4201u, 4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(firstLeadingBit(0u), 32u)], 32u)]), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 1259u, 116287u, var_0.x), vec4<u32>(44989u, 0u, 130058u, var_2.b.x)), var_2.b, _wgslsmith_mod_vec4_u32(var_2.b, var_1.b))), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c, var_2.c, -60306i, -2147483647i), vec4<i32>(u_input.b, var_2.c, arg_0.c, -2147483647i))), vec2<i32>(_wgslsmith_clamp_i32(0i, 1i, var_1.c), _wgslsmith_dot_vec4_i32(vec4<i32>(-12144i, -46278i, 2147483647i, var_2.c), vec4<i32>(var_2.c, 280i, -57594i, var_2.c)))), _wgslsmith_f_op_f32(-var_3.x), !vec4<bool>(!arg_0.a.x, !var_1.a.x, !(var_1.e.x && false), true));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = true;
    global3 = array<Struct_1, 1>();
    var var_1 = _wgslsmith_f_op_f32(select(arg_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d))), arg_0.e.x));
    var_0 = !all(vec2<bool>(false, false)) || (!arg_0.a.x & any(!vec4<bool>(arg_1.a.x, arg_1.e.x, false, true)));
    var var_2 = Struct_1(vec3<bool>(true, arg_0.b.x > abs(abs(u_input.a)), false), _wgslsmith_mod_vec4_u32(abs(~vec4<u32>(4294967295u, 1u, arg_0.b.x, 56282u)), vec4<u32>(firstLeadingBit(u_input.a) << (~0u % 32u), u_input.a, 1u, ~(~u_input.a))), u_input.b, _wgslsmith_f_op_f32(arg_1.d * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(391f, arg_0.d)) * arg_0.d) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(966f, arg_0.d))))), func_1(func_2(abs(firstLeadingBit(vec4<u32>(global4[_wgslsmith_index_u32(4294967295u, 32u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_1.b.x, 32u)], 32u)], arg_0.b.x, u_input.a))))).e);
    return func_2(countOneBits(arg_0.b));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    global4 = array<u32, 32>();
    global0 = array<Struct_1, 4>();
    var var_0 = reverseBits(arg_0.b.xy & _wgslsmith_mod_vec2_u32(vec2<u32>(22929u, arg_1.b.x), _wgslsmith_mod_vec2_u32(~arg_0.b.xx, ~vec2<u32>(u_input.a, 4294967295u))));
    var var_1 = !arg_2.e.yw;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.d, arg_2.d), vec2<f32>(1757f, arg_0.d), arg_1.e.x)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(242f, arg_0.d) - vec2<f32>(-795f, 631f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.d, -1000f))), vec2<bool>(false, true))))), vec2<bool>(!(arg_2.a.x | true), arg_1.e.x))));
    return all(arg_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 1>();
    let var_0 = abs(~_wgslsmith_mod_i32(u_input.b, u_input.b | ~u_input.b));
    var var_1 = any(vec3<bool>(true, true, true)) | (false & func_5(func_4(func_1(global3[_wgslsmith_index_u32(4294967295u, 1u)]), global3[_wgslsmith_index_u32(0u, 1u)]), Struct_1(vec3<bool>(false, true, false), vec4<u32>(3763u, 11847u, u_input.a, u_input.a) & vec4<u32>(global4[_wgslsmith_index_u32(73862u, 32u)], u_input.a, global4[_wgslsmith_index_u32(u_input.a, 32u)], 4294967295u), _wgslsmith_dot_vec4_i32(vec4<i32>(15463i, 6985i, -1i, 2147483647i), vec4<i32>(1i, 1i, 19564i, u_input.b)), _wgslsmith_f_op_f32(step(-960f, -1483f)), func_2(vec4<u32>(u_input.a, global4[_wgslsmith_index_u32(4294967295u, 32u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 32u)], 32u)], 28679u)).e), func_4(global3[_wgslsmith_index_u32(32429u, 1u)], global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(abs(u_input.a), 32u)], 14u)])));
    global3 = array<Struct_1, 1>();
    let var_2 = vec2<bool>(!all(func_1(func_4(Struct_1(vec3<bool>(false, false, true), vec4<u32>(1u, u_input.a, 4294967295u, 1u), var_0, 1694f, vec4<bool>(false, true, true, false)), global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 32u)], 4u)])).e.yy), false);
    global1 = true;
    let var_3 = !func_4(func_1(Struct_1(select(vec3<bool>(false, true, false), vec3<bool>(false, var_2.x, var_2.x), var_2.x), select(vec4<u32>(global4[_wgslsmith_index_u32(u_input.a, 32u)], u_input.a, global4[_wgslsmith_index_u32(0u, 32u)], u_input.a), vec4<u32>(global4[_wgslsmith_index_u32(90238u, 32u)], 11555u, global4[_wgslsmith_index_u32(8410u, 32u)], 77733u), false), _wgslsmith_clamp_i32(-956i, 14606i, -1i), _wgslsmith_f_op_f32(max(105f, 959f)), vec4<bool>(var_2.x, true, var_2.x, true))), func_2(vec4<u32>(u_input.a, 4294967295u, global4[_wgslsmith_index_u32(34562u, 32u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 32u)], 32u)]) & firstLeadingBit(vec4<u32>(24084u, 4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(8279u, 32u)], 32u)], 32u)], 49649u)))).e;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.b, -1i, u_input.b), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, 1861i, var_0, -5155i), vec4<i32>(u_input.b, u_input.b, 15988i, var_0)))) ^ -min(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.b, -1i, -1i), vec4<i32>(-31825i, u_input.b, 27121i, u_input.b)), vec4<i32>(8740i, var_0, var_0, 1i)));
}

