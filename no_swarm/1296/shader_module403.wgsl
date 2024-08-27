struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10>;

var<private> global1: bool = true;

var<private> global2: array<vec3<f32>, 26>;

var<private> global3: array<vec3<u32>, 6>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: vec4<f32>) -> vec3<i32> {
    let var_0 = arg_2.b;
    var var_1 = 19757u;
    global0 = array<u32, 10>();
    var var_2 = Struct_5(all(vec3<bool>(any(vec4<bool>(false, arg_2.b, arg_2.c.x, true)), !(arg_0 | true), false)), _wgslsmith_div_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.c.x, firstLeadingBit(u_input.c.x), _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(0u, 10u)], 37007u, global0[_wgslsmith_index_u32(4294967295u, 10u)]), 4294967295u), abs(vec4<u32>(global0[_wgslsmith_index_u32(65354u, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(0u, 10u)], 4294967295u) >> (vec4<u32>(0u, u_input.c.x, u_input.c.x, 0u) % vec4<u32>(32u))))), u_input.c.x < firstLeadingBit(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 10u)], 10u)], 10u)], u_input.d, u_input.b, global0[_wgslsmith_index_u32(u_input.b, 10u)])), u_input.c)), _wgslsmith_f_op_f32(-arg_1.x));
    var var_3 = arg_2.c.yxx;
    return arg_2.a.xyz;
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_clamp_vec3_i32(func_3(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-191f, -1000f) + vec2<f32>(-146f, 511f))), Struct_2(select(vec4<i32>(u_input.e, u_input.e, u_input.a.x, -2147483647i), vec4<i32>(16647i, 2147483647i, u_input.e, -14110i), true), false, vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(308f, 680f, 1000f, -584f))), countOneBits(vec3<i32>(firstTrailingBit(-2147483647i), -58442i, 13494i)), vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a, vec2<i32>(u_input.e, u_input.e), vec2<i32>(0i, -15518i)), u_input.a), u_input.a.x, _wgslsmith_dot_vec2_i32(~u_input.a, vec2<i32>(u_input.e, u_input.e)))) | firstTrailingBit(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(u_input.e, u_input.a.x, u_input.e)), vec3<i32>(-11829i, u_input.e, u_input.e) >> (global3[_wgslsmith_index_u32(~u_input.d, 6u)] % vec3<u32>(32u))));
    let var_1 = vec4<bool>(any(select(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, false)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(false, true), true)))), !((1u <= max(51792u, global0[_wgslsmith_index_u32(46695u, 10u)])) || true), 1000f < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-628f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -155f))))), true | (min(_wgslsmith_add_u32(24863u, 0u), 1u & u_input.d) != _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), ~0u)));
    global2 = array<vec3<f32>, 26>();
    let var_2 = _wgslsmith_div_vec4_i32(~_wgslsmith_mult_vec4_i32(abs(vec4<i32>(2147483647i, 61123i, -13477i, -2147483647i)), ~vec4<i32>(-39632i, 2147483647i, 2147483647i, u_input.a.x)), -abs(vec4<i32>(-1i, 1i, var_0.x, var_0.x)) << (vec4<u32>(min(16335u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)]), _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(u_input.b, 10u)], u_input.d), ~global0[_wgslsmith_index_u32(32890u, 10u)], _wgslsmith_sub_u32(21142u, u_input.c.x)) % vec4<u32>(32u))) << (abs((firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(17517u, 10u)], 54106u, 0u, 72288u)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 10u)], 10u)], 19895u, 4294967295u, global0[_wgslsmith_index_u32(1u, 10u)]), vec4<u32>(58278u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6536u, 10u)], 10u)], 93911u)) % vec4<u32>(32u))) ^ u_input.c) % vec4<u32>(32u));
    let var_3 = false;
    return Struct_4(14759i & var_2.x);
}

fn func_4(arg_0: Struct_4, arg_1: bool) -> Struct_5 {
    var var_0 = Struct_5((~select(arg_0.a, u_input.a.x, true) | _wgslsmith_sub_i32(12708i, -33694i)) == _wgslsmith_mod_i32(-13459i, 2147483647i), 13346u, !(!all(!vec2<bool>(arg_1, arg_1))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(819f)))));
    let var_1 = any(select(!select(!vec3<bool>(false, false, var_0.c), select(vec3<bool>(false, var_0.a, true), vec3<bool>(false, arg_1, false), var_0.a), false), vec3<bool>(!all(vec2<bool>(arg_1, arg_1)), false && (-1i >= arg_0.a), true), vec3<bool>(true, !var_0.c, arg_1)));
    let var_2 = Struct_3(-vec3<i32>(u_input.e, arg_0.a, func_3(arg_1, vec2<f32>(-149f, -197f), Struct_2(vec4<i32>(2147483647i, 1i, arg_0.a, u_input.a.x), var_0.c, vec4<bool>(true, false, arg_1, var_0.c)), vec4<f32>(var_0.d, 1458f, var_0.d, var_0.d)).x));
    global0 = array<u32, 10>();
    global3 = array<vec3<u32>, 6>();
    return Struct_5(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_0.d)))))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(280f * var_0.d))), var_0.b, var_0.a, 1f);
}

fn func_1(arg_0: vec3<u32>) -> vec4<f32> {
    let var_0 = vec3<f32>(-390f, 1f, -959f);
    global1 = !select(true, true, true);
    let var_1 = func_4(func_2(), _wgslsmith_sub_u32(~1u, global0[_wgslsmith_index_u32(arg_0.x, 10u)]) == ~57882u);
    global2 = array<vec3<f32>, 26>();
    let var_2 = u_input.c;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(func_4(Struct_4(u_input.e), var_1.c).d, 1373f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-408f * var_1.d)), var_0.x) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(766f, var_0.x, var_0.x, -154f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(498f, var_1.d, var_0.x, 247f))))))) * vec4<f32>(_wgslsmith_div_f32(-1000f, -270f), var_1.d, -315f, _wgslsmith_div_f32(-329f, var_1.d)));
}

fn func_5(arg_0: u32, arg_1: vec4<f32>) -> u32 {
    var var_0 = u_input.e;
    global3 = array<vec3<u32>, 6>();
    return arg_0;
}

fn func_6(arg_0: u32) -> Struct_3 {
    var var_0 = vec2<i32>(14281i, u_input.a.x | (_wgslsmith_clamp_i32(u_input.e, u_input.e, u_input.a.x) << (u_input.b % 32u))) | u_input.a;
    var var_1 = func_4(Struct_4(-reverseBits(-1i)), true | (true & all(vec2<bool>(true, true))));
    var var_2 = func_3(all(!vec4<bool>(false, !var_1.c, true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec4_f32(func_1(min(vec3<u32>(var_1.b, var_1.b, var_1.b), vec3<u32>(arg_0, 1u, 9609u)))).zy))), Struct_2(~vec4<i32>(2147483647i, ~8210i, -15304i << (arg_0 % 32u), -var_0.x), var_1.c, vec4<bool>(all(select(vec3<bool>(var_1.c, var_1.c, true), vec3<bool>(var_1.a, true, true), var_1.c)), select(var_1.a, true, true), var_1.c, var_1.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d, 618f, var_1.d, var_1.d) - vec4<f32>(1000f, var_1.d, 848f, var_1.d)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-2229f, var_1.d, 1523f, var_1.d) - vec4<f32>(var_1.d, 1252f, var_1.d, -1483f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1449f, -768f, var_1.d, var_1.d) * vec4<f32>(402f, var_1.d, -684f, var_1.d))))) * vec4<f32>(var_1.d, _wgslsmith_f_op_f32(var_1.d + 1273f), _wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-641f, var_1.d) * _wgslsmith_f_op_f32(-var_1.d))))).x;
    var var_3 = Struct_1(vec2<bool>(!(var_1.c == var_1.a), var_1.a));
    return Struct_3(abs(-firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, 1i, var_0.x), vec3<i32>(12657i, u_input.e, var_0.x), vec3<i32>(var_0.x, var_0.x, -108145i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(firstTrailingBit(global0[_wgslsmith_index_u32(8589u, 10u)]), _wgslsmith_f_op_vec4_f32(func_1(vec3<u32>(u_input.c.x & global0[_wgslsmith_index_u32(u_input.b, 10u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 10u)], 10u)], 10u)] & 4294967295u)))));
    var var_1 = ~(-(var_0.a & select(countOneBits(vec3<i32>(1i, 39014i, var_0.a.x)), _wgslsmith_div_vec3_i32(var_0.a, var_0.a), vec3<bool>(true, true, true))));
    var var_2 = true;
    global0 = array<u32, 10>();
    global3 = array<vec3<u32>, 6>();
    var var_3 = var_0.a.x ^ (73579i ^ u_input.e);
    let var_4 = vec2<f32>(1f, 1f);
    var var_5 = !vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-410f))) < _wgslsmith_f_op_f32(115f + _wgslsmith_div_f32(1364f, 320f)), _wgslsmith_clamp_u32(~29699u, _wgslsmith_dot_vec4_u32(u_input.c, u_input.c), 70124u) < ~func_5(global0[_wgslsmith_index_u32(1u, 10u)], vec4<f32>(var_4.x, 423f, -307f, 1000f)), true);
    let var_6 = Struct_5(!var_5.x | true, ~1u, var_5.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1084f)))));
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(~4294967295u & (countOneBits(~var_6.b) ^ (abs(u_input.c.x) << (~1u % 32u))), 6u)]);
}

