struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(Struct_1(41796u, 1i, false, vec2<bool>(true, false), 1171f), vec2<u32>(25440u, 26425u)), Struct_3(Struct_1(0u, 2147483647i, false, vec2<bool>(false, true), 901f), vec2<u32>(3902u, 51341u)), Struct_3(Struct_1(12788u, -32097i, false, vec2<bool>(false, true), -730f), vec2<u32>(1u, 1u)), Struct_3(Struct_1(0u, 4801i, false, vec2<bool>(true, false), -1065f), vec2<u32>(23060u, 0u)), Struct_3(Struct_1(4294967295u, 29481i, true, vec2<bool>(false, false), 760f), vec2<u32>(0u, 0u)), Struct_3(Struct_1(1025u, i32(-2147483648), false, vec2<bool>(false, false), 1575f), vec2<u32>(1u, 1u)), Struct_3(Struct_1(70466u, -1i, true, vec2<bool>(true, false), 473f), vec2<u32>(15200u, 0u)), Struct_3(Struct_1(31910u, 1i, true, vec2<bool>(false, true), 1000f), vec2<u32>(1u, 60604u)), Struct_3(Struct_1(8519u, 1i, true, vec2<bool>(false, false), 642f), vec2<u32>(87712u, 43514u)), Struct_3(Struct_1(0u, 2147483647i, true, vec2<bool>(false, false), 695f), vec2<u32>(1u, 21342u)), Struct_3(Struct_1(4294967295u, 0i, false, vec2<bool>(false, false), 1390f), vec2<u32>(51218u, 51108u)), Struct_3(Struct_1(60826u, -18060i, true, vec2<bool>(false, false), 1514f), vec2<u32>(4294967295u, 38781u)), Struct_3(Struct_1(4294967295u, -1i, false, vec2<bool>(true, false), -2102f), vec2<u32>(4294967295u, 0u)), Struct_3(Struct_1(109597u, 31240i, false, vec2<bool>(false, false), 269f), vec2<u32>(21157u, 15846u)), Struct_3(Struct_1(4294967295u, 48022i, false, vec2<bool>(false, true), -591f), vec2<u32>(39756u, 55073u)), Struct_3(Struct_1(2140u, 11584i, true, vec2<bool>(false, true), 916f), vec2<u32>(0u, 17784u)), Struct_3(Struct_1(1u, 2602i, false, vec2<bool>(true, true), 419f), vec2<u32>(59982u, 79638u)), Struct_3(Struct_1(0u, 20883i, false, vec2<bool>(false, false), -2059f), vec2<u32>(2043u, 4294967295u)), Struct_3(Struct_1(25033u, 0i, false, vec2<bool>(false, true), 593f), vec2<u32>(4294967295u, 0u)), Struct_3(Struct_1(9311u, 27044i, false, vec2<bool>(true, false), 1000f), vec2<u32>(45255u, 545u)), Struct_3(Struct_1(6487u, -16023i, false, vec2<bool>(false, false), -1353f), vec2<u32>(4294967295u, 25257u)), Struct_3(Struct_1(4294967295u, i32(-2147483648), true, vec2<bool>(false, false), 912f), vec2<u32>(53302u, 6451u)));

var<private> global1: array<vec2<bool>, 12>;

var<private> global2: Struct_1 = Struct_1(21318u, 58696i, true, vec2<bool>(false, false), 777f);

var<private> global3: array<i32, 27> = array<i32, 27>(-1i, -56939i, -17291i, -1i, 18189i, -2720i, i32(-2147483648), 2610i, 1i, 3207i, -1i, 1i, -1i, 45470i, -34328i, 33966i, 37442i, -1i, -12877i, i32(-2147483648), 58081i, -41531i, i32(-2147483648), 1i, 4660i, 12979i, 0i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: u32) -> i32 {
    var var_0 = Struct_4(Struct_2(select(select(select(global2.d, global2.d, global2.c), vec2<bool>(global2.c, true), global2.c), global2.d, global2.d), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(0i, 2147483647i, 0i, u_input.b), vec4<i32>(-44055i, 2147483647i, global3[_wgslsmith_index_u32(global2.a, 27u)], 27040i)), -vec4<i32>(global2.b, -2147483647i, u_input.b, 0i)), global2.b), Struct_1(~u_input.a.x, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, global2.b, 58461i), vec3<i32>(global3[_wgslsmith_index_u32(u_input.c.x, 27u)], global3[_wgslsmith_index_u32(2708u, 27u)], global2.b)) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(global2.b, global2.b, global3[_wgslsmith_index_u32(11370u, 27u)]), vec3<i32>(1i, u_input.b, 35906i)), vec3<i32>(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1, global2.a), 27u)], u_input.b, 32584i << (arg_1 % 32u))), true, global2.d, -598f));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1284f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2146f * global2.e)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.e, arg_0), vec2<f32>(global2.e, arg_0), global1[_wgslsmith_index_u32(1u, 12u)])) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(559f, 824f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -1724f)), true)))));
    let var_2 = !var_0.b.d.x;
    global0 = array<Struct_3, 22>();
    var var_3 = !(!global2.d.x);
    return -1i;
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: vec3<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(arg_0, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-arg_0), arg_0)))), _wgslsmith_f_op_vec3_f32(round(arg_0)))));
    let var_1 = Struct_1(max(0u, _wgslsmith_add_u32(global2.a, global2.a)), _wgslsmith_add_i32(func_3(-429f, countOneBits(4967u)), u_input.b), false, select(arg_2.xz, select(!(!vec2<bool>(arg_1, true)), arg_2.xx, true), !vec2<bool>(arg_1, true)), 2082f);
    let var_2 = _wgslsmith_f_op_f32(max(-732f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-139f + -112f))))))));
    var var_3 = Struct_4(Struct_2(select(!vec2<bool>(false, global2.c), select(vec2<bool>(global2.d.x, global2.c), vec2<bool>(false, true), global2.d.x), var_1.c), vec4<i32>(global3[_wgslsmith_index_u32(1u, 27u)], firstLeadingBit(global2.b), _wgslsmith_mult_i32(max(global3[_wgslsmith_index_u32(0u, 27u)], global3[_wgslsmith_index_u32(u_input.c.x, 27u)]), -31753i), global2.b ^ -1i), var_1.b), Struct_1(1u, u_input.b, global2.c, !vec2<bool>(any(vec4<bool>(false, arg_2.x, true, true)), arg_2.x), _wgslsmith_f_op_f32(-916f - _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-var_1.e)))));
    var var_4 = Struct_4(var_3.a, Struct_1(u_input.a.x, -42771i, true, select(arg_2.xz, vec2<bool>(true, all(arg_2.yx)), false), global2.e));
    return -1102f;
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: bool) -> vec3<i32> {
    global2 = Struct_1(~u_input.c.x, func_3(534f, 47443u), false || all(arg_1), global1[_wgslsmith_index_u32((~_wgslsmith_dot_vec2_u32(u_input.a.wz, vec2<u32>(4294967295u, u_input.c.x)) & firstTrailingBit(~41115u)) >> (20085u % 32u), 12u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0)) * _wgslsmith_f_op_f32(f32(-1f) * -1656f)))) * 1233f));
    var var_0 = global0[_wgslsmith_index_u32((u_input.c.x << (min(4294967295u | (u_input.a.x | 72639u), abs(u_input.c.x)) % 32u)) & u_input.a.x, 22u)];
    global3 = array<i32, 27>();
    let var_1 = _wgslsmith_mod_vec3_i32(-arg_2.b.wxz, -_wgslsmith_mult_vec3_i32(vec3<i32>(firstLeadingBit(arg_2.b.x), 1i >> (1u % 32u), reverseBits(-1i)), ~arg_2.b.wwx));
    var var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, arg_0), vec2<f32>(var_0.a.e, global2.e)))) + vec2<f32>(_wgslsmith_f_op_f32(max(var_0.a.e, arg_0)), -1170f)) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1246f, 1799f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.e, arg_0), vec2<f32>(-1771f, global2.e))))))));
    return _wgslsmith_div_vec3_i32(-vec3<i32>(u_input.b, _wgslsmith_div_i32(abs(arg_2.c), _wgslsmith_sub_i32(var_0.a.b, global3[_wgslsmith_index_u32(u_input.c.x, 27u)])), -1i), _wgslsmith_sub_vec3_i32(~reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(-20643i, var_0.a.b, arg_2.c), var_1)), var_1));
}

fn func_1(arg_0: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.e + _wgslsmith_f_op_f32(f32(-1f) * -843f)))) + 1000f), -1000f));
    var var_1 = vec3<i32>(~_wgslsmith_div_i32(~global2.b, ~global2.b), global3[_wgslsmith_index_u32(u_input.c.x, 27u)], firstLeadingBit(global2.b)) & _wgslsmith_mult_vec3_i32(vec3<i32>(-_wgslsmith_div_i32(global2.b, global2.b), global2.b, -2147483647i), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<f32>(var_0, var_0, -188f), true, vec3<bool>(global2.d.x, true, global2.c))) * _wgslsmith_f_op_f32(ceil(-1218f))), !(!vec4<bool>(global2.c, false, true, false)), Struct_2(select(vec2<bool>(true, global2.c), global1[_wgslsmith_index_u32(arg_0, 12u)], global2.c), vec4<i32>(28125i, global2.b, global2.b, -28818i), u_input.b & global2.b), global2.c | all(vec4<bool>(false, false, global2.d.x, global2.c))));
    var var_2 = _wgslsmith_add_vec2_i32(var_1.zz, var_1.zz);
    let var_3 = Struct_4(Struct_2(select(!global1[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 12u)], global2.d, vec2<bool>(all(vec2<bool>(global2.c, true)), global2.b != var_1.x)), _wgslsmith_add_vec4_i32(vec4<i32>(~global3[_wgslsmith_index_u32(39621u, 27u)], ~2147483647i, 38509i, global2.b >> (arg_0 % 32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_2.x, -12325i, 1i, var_1.x) & vec4<i32>(var_2.x, -12327i, var_1.x, 2147483647i), vec4<i32>(global3[_wgslsmith_index_u32(0u, 27u)], var_2.x, 1i, -2147483647i))), 2147483647i), Struct_1(countOneBits(arg_0), _wgslsmith_dot_vec2_i32(~vec2<i32>(-4456i, -1i) & var_1.zx, vec2<i32>(-2147483647i, ~var_1.x)), false, vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -473f)))));
    let var_4 = var_3.b.d;
    return ~u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(~(~func_1(global2.a)), abs(global2.a >> (_wgslsmith_mult_u32(u_input.c.x, 1u) % 32u)), reverseBits(0u)), vec3<u32>(u_input.c.x, _wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_div_u32(u_input.c.x, firstTrailingBit(u_input.c.x)), firstLeadingBit(~u_input.c.x)), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.a, u_input.a), ~u_input.a));
}

