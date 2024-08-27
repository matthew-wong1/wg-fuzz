struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30>;

var<private> global1: vec2<u32>;

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(-197f, 36471u, 1u), Struct_1(-2416f, 0u, 0u), Struct_1(346f, 4294967295u, 0u));

var<private> global3: array<vec4<i32>, 20> = array<vec4<i32>, 20>(vec4<i32>(-1i, 64019i, 0i, 1i), vec4<i32>(18890i, 9801i, 1i, 10682i), vec4<i32>(-1i, -13959i, 27626i, 2147483647i), vec4<i32>(0i, -1i, 0i, i32(-2147483648)), vec4<i32>(-22601i, 1i, -1i, -1i), vec4<i32>(-30613i, 2147483647i, 38811i, 1i), vec4<i32>(-35559i, i32(-2147483648), 45947i, 2147483647i), vec4<i32>(23903i, 1i, -1658i, i32(-2147483648)), vec4<i32>(1i, 1i, 26873i, 2147483647i), vec4<i32>(-16936i, 0i, 1i, -21095i), vec4<i32>(i32(-2147483648), -26845i, 5360i, 14011i), vec4<i32>(i32(-2147483648), 28001i, 2147483647i, 20639i), vec4<i32>(-2278i, -30959i, 19788i, -1i), vec4<i32>(43765i, 14538i, 23012i, 5459i), vec4<i32>(2147483647i, i32(-2147483648), -1i, 2147483647i), vec4<i32>(42046i, 1i, -2380i, 0i), vec4<i32>(2147483647i, -11796i, 0i, -31050i), vec4<i32>(-15755i, -25088i, -1i, 0i), vec4<i32>(1i, -1i, 53770i, -1i), vec4<i32>(49826i, 23597i, -31378i, i32(-2147483648)));

var<private> global4: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(384f, 4294967295u, 9691u), Struct_1(-297f, 4294967295u, 15444u), Struct_1(1096f, 1u, 0u), Struct_1(332f, 0u, 1u), Struct_1(542f, 38483u, 324u), Struct_1(1645f, 38363u, 12612u), Struct_1(121f, 0u, 0u), Struct_1(873f, 9286u, 4294967295u), Struct_1(1107f, 15115u, 31357u), Struct_1(1155f, 68164u, 879u), Struct_1(-1608f, 11944u, 4294967295u), Struct_1(1014f, 1u, 18582u), Struct_1(1145f, 1u, 58767u), Struct_1(656f, 1u, 0u), Struct_1(1274f, 42399u, 4294967295u), Struct_1(-1163f, 0u, 4294967295u), Struct_1(-796f, 1u, 1u), Struct_1(-460f, 1u, 0u), Struct_1(834f, 4294967295u, 105320u), Struct_1(-633f, 0u, 0u), Struct_1(954f, 1u, 71095u), Struct_1(1640f, 11933u, 1u), Struct_1(-1275f, 1u, 13853u), Struct_1(1921f, 15973u, 56636u), Struct_1(446f, 4294967295u, 14751u), Struct_1(788f, 16308u, 1u), Struct_1(-392f, 14674u, 4294967295u), Struct_1(1468f, 27683u, 30371u), Struct_1(905f, 61812u, 1u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> u32 {
    global3 = array<vec4<i32>, 20>();
    var var_0 = !(!(!select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, false, true))));
    let var_1 = Struct_3(_wgslsmith_div_vec4_i32(vec4<i32>(~10869i, firstTrailingBit(min(u_input.a.x, -2147483647i)), -firstTrailingBit(2147483647i), -6474i), vec4<i32>(firstLeadingBit(u_input.a.x), -1i, ~0i, 3644i) ^ firstTrailingBit(vec4<i32>(u_input.a.x, -1i, u_input.c, -1i) << (vec4<u32>(4294967295u, u_input.b, 13352u, 0u) % vec4<u32>(32u)))), vec3<u32>(select(~(~u_input.b), ~u_input.b, true), ~u_input.b, global1.x));
    global0 = array<Struct_2, 30>();
    var var_2 = -12465i;
    return _wgslsmith_add_u32(1u, ~(4294967295u << ((countOneBits(var_1.b.x) << ((0u & var_1.b.x) % 32u)) % 32u)));
}

fn func_2(arg_0: Struct_2) -> bool {
    global2 = array<Struct_1, 3>();
    var var_0 = arg_0.b;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -815f) * arg_0.b), arg_0.a.a, arg_0.b) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.a, -827f, arg_0.e) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-498f, arg_0.b, arg_0.a.a)))))));
    global1 = ~(~_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(arg_0.a.b, 25603u), vec2<u32>(global1.x, u_input.b)), ~vec2<u32>(u_input.b, u_input.b)));
    return ((true != !arg_0.c) && (_wgslsmith_div_u32(func_3(1u), 17891u) >= (66716u >> (~4294967295u % 32u)))) & any(vec4<bool>(any(vec4<bool>(true, true, arg_0.c, true)) || any(vec2<bool>(false, arg_0.d)), true, -2147483647i <= (u_input.a.x | u_input.c), true));
}

fn func_4(arg_0: u32, arg_1: bool) -> Struct_1 {
    return global4[_wgslsmith_index_u32(func_3(67561u), 29u)];
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = Struct_2(func_4(~abs(1u), arg_0.d), -647f, any(!vec4<bool>(true, arg_1, arg_1, arg_1)) && arg_0.d, true, _wgslsmith_f_op_f32(select(arg_0.a.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.b))), arg_2.a), arg_0.c)));
    var var_1 = vec4<f32>(691f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(236f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2.a - 540f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-549f))), 1f);
    let var_2 = vec2<u32>(u_input.b, arg_2.c);
    let var_3 = _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(select(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.b, 14438u), vec3<u32>(var_2.x, 19024u, 53814u))), select(vec3<u32>(13414u, 34834u, var_2.x) << (vec3<u32>(arg_2.b, 0u, 0u) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.a.b, 0u, 1u), vec3<u32>(var_2.x, var_0.a.c, global1.x)), arg_0.c), select(vec3<bool>(var_0.c, true, var_0.d), !vec3<bool>(false, var_0.d, arg_1), arg_1)), countOneBits(select(vec3<u32>(84127u, 87132u, arg_0.a.b), vec3<u32>(arg_2.b, arg_2.c, global1.x) << (vec3<u32>(arg_0.a.b, arg_0.a.c, global1.x) % vec3<u32>(32u)), !var_0.d)), abs(~(vec3<u32>(arg_2.b, arg_0.a.b, 1u) >> (vec3<u32>(var_2.x, 4294967295u, arg_2.c) % vec3<u32>(32u))))), ~(~vec3<u32>(30764u, 1u, ~4294967295u)));
    var var_4 = _wgslsmith_div_u32(~(var_0.a.b >> (global1.x % 32u)), _wgslsmith_add_u32(_wgslsmith_mult_u32(387u, arg_0.a.b) << (~var_0.a.b % 32u), ~_wgslsmith_mult_u32(17767u, var_0.a.c))) ^ ~_wgslsmith_div_u32(u_input.b, ~19441u >> (1u % 32u));
    return vec4<bool>(true, false, arg_0.c, all(vec3<bool>(arg_1, any(vec2<bool>(false, var_0.d)), select(true, true, arg_0.d))));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> vec4<f32> {
    let var_0 = func_5(Struct_2(global4[_wgslsmith_index_u32(4294967295u, 29u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -933f)))), all(select(vec2<bool>(true, true), !vec2<bool>(false, arg_1), false)), false, -458f), arg_1, func_4(1u | ~(~u_input.b), select(arg_1, arg_1, any(vec3<bool>(true, arg_1, arg_1))) & func_2(Struct_2(global2[_wgslsmith_index_u32(arg_0.c, 3u)], 1881f, false, arg_1, arg_0.a))));
    var var_1 = ~(~global1.x);
    var var_2 = func_4(97203u, any(vec2<bool>(false, func_2(Struct_2(Struct_1(-570f, 64364u, 31943u), 597f, arg_1, false, arg_0.a)))));
    var var_3 = ~(_wgslsmith_clamp_u32(countOneBits(4294967295u), ~global1.x, arg_0.c) & ~func_4(reverseBits(var_2.b), false).c);
    var var_4 = Struct_3(_wgslsmith_div_vec4_i32(firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-40794i, -7279i, u_input.a.x, u_input.a.x), global3[_wgslsmith_index_u32(u_input.b, 20u)])) | vec4<i32>(u_input.a.x, u_input.c, u_input.a.x, -36573i), -vec4<i32>(~(-16028i), firstTrailingBit(-12655i), _wgslsmith_add_i32(-2147483647i, 3111i), 2147483647i ^ u_input.c)), reverseBits(~abs(vec3<u32>(4294967295u, global1.x, var_2.c)) | vec3<u32>(min(var_2.b, var_2.c), var_2.c, global1.x & 7617u)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(ceil(arg_0.a)), _wgslsmith_f_op_f32(-706f * arg_0.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, arg_0.a, var_2.a, 255f) * vec4<f32>(224f, -740f, arg_0.a, -1054f)) + vec4<f32>(var_2.a, 2178f, var_2.a, arg_0.a))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1593f)), -1938f, var_2.a, _wgslsmith_f_op_f32(-arg_0.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(~global1.x, 3u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(792f, var_0.a, var_0.a, -1340f) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.a, 329f, 389f, 657f))))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(218f, var_0.a, -1538f, -116f))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.a, -112f, 2179f, -584f))))) * _wgslsmith_f_op_vec4_f32(func_1(Struct_1(_wgslsmith_f_op_f32(select(var_0.a, var_0.a, true)), 1u, countOneBits(6492u)), all(vec4<bool>(true, true, true, true))))));
    global0 = array<Struct_2, 30>();
    let var_2 = func_4(~(84682u | u_input.b), !select(func_2(Struct_2(Struct_1(127f, u_input.b, 1u), -1000f, false, true, var_0.a)), all(vec2<bool>(false, true)), !any(vec4<bool>(true, true, true, false))));
    global0 = array<Struct_2, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(63000u, var_2.c), vec2<u32>(_wgslsmith_div_u32(var_2.c, var_0.c), 0u)), ~var_0.c, select(_wgslsmith_mod_u32(0u, var_0.c), 4294967295u, all(func_5(global0[_wgslsmith_index_u32(var_2.c, 30u)], true, Struct_1(-207f, 0u, u_input.b)).xx))), u_input.a);
}

