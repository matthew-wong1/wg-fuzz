struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: i32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -438f;

var<private> global1: array<i32, 1> = array<i32, 1>(0i);

var<private> global2: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(2147483647i, -12519i, 10470i, 1i), vec4<i32>(2147483647i, 21672i, -57057i, 0i), vec4<i32>(19311i, 2147483647i, 38743i, -36505i), vec4<i32>(0i, 1i, -80903i, -32113i), vec4<i32>(0i, -1i, -34i, 0i), vec4<i32>(i32(-2147483648), -306i, 1i, i32(-2147483648)), vec4<i32>(-1i, -29287i, -13548i, 2147483647i), vec4<i32>(2147483647i, i32(-2147483648), -1i, i32(-2147483648)), vec4<i32>(-32317i, 53941i, 1i, 1i), vec4<i32>(i32(-2147483648), 2147483647i, -11211i, -54077i), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), 29630i), vec4<i32>(1i, -39237i, 42333i, 8599i), vec4<i32>(-9365i, -21521i, 1101i, -33960i), vec4<i32>(-1i, 2147483647i, 1i, 41774i), vec4<i32>(i32(-2147483648), -17895i, 2147483647i, i32(-2147483648)), vec4<i32>(-47330i, 0i, -1i, -5046i), vec4<i32>(i32(-2147483648), -26091i, 59302i, -30807i), vec4<i32>(4354i, 0i, 13713i, 9568i), vec4<i32>(-34324i, 2147483647i, 2147483647i, -16117i), vec4<i32>(1i, 2147483647i, i32(-2147483648), 23405i), vec4<i32>(11823i, 2147483647i, 2147483647i, -7308i), vec4<i32>(2147483647i, -19521i, 8549i, -10802i), vec4<i32>(1i, -1i, 0i, -1i), vec4<i32>(i32(-2147483648), 515i, 0i, -1i), vec4<i32>(0i, -30215i, -4405i, 1i), vec4<i32>(-1i, 535i, 61033i, -5357i));

var<private> global3: u32;

var<private> global4: array<bool, 17>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> u32 {
    global4 = array<bool, 17>();
    return ~u_input.a;
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: u32) -> f32 {
    global0 = 382f;
    let var_0 = _wgslsmith_f_op_f32(abs(2123f));
    var var_1 = ~select(vec3<u32>(_wgslsmith_mult_u32(abs(arg_3), 15475u), (0u << (1u % 32u)) >> (~u_input.a % 32u), ~arg_1.c.x), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, u_input.a), arg_2), u_input.a, ~arg_3), vec3<u32>(4294967295u, 1u, 46095u) << (~vec3<u32>(arg_1.c.x, u_input.a, arg_1.b) % vec3<u32>(32u))), select(global4[_wgslsmith_index_u32(~(~17639u), 17u)], true, false));
    global2 = array<vec4<i32>, 26>();
    global4 = array<bool, 17>();
    return 1404f;
}

fn func_2() -> Struct_2 {
    let var_0 = -(~global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(19028u, 4294967295u), 1u)]);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, _wgslsmith_mod_u32(u_input.a, u_input.a)), 1u)], Struct_3(max(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), ~30968u, _wgslsmith_clamp_vec3_u32(vec3<u32>(30244u, 1u, 4294967295u), vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(0u, u_input.a, u_input.a)), Struct_1(124f, vec3<i32>(u_input.b, 9045i, 0i), 4294967295u, vec3<u32>(u_input.a, u_input.a, u_input.a), 2147483647i), Struct_2(vec4<f32>(642f, 1711f, -370f, -445f), vec3<f32>(-1019f, 364f, 1412f), var_0, -923f, Struct_1(117f, vec3<i32>(u_input.b, var_0, -2147483647i), u_input.a, vec3<u32>(4294967295u, 1u, u_input.a), 2147483647i))), vec3<u32>(_wgslsmith_mult_u32(u_input.a, u_input.a), func_3(global4[_wgslsmith_index_u32(u_input.a, 17u)]), ~u_input.a), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 1310u, 43753u), vec3<u32>(u_input.a, 1u, 54103u))))), ~firstLeadingBit(-vec3<i32>(40019i, -55987i, -2147483647i) >> (vec3<u32>(35372u, u_input.a, 1u) % vec3<u32>(32u))), _wgslsmith_dot_vec3_u32(vec3<u32>(57631u, u_input.a, _wgslsmith_clamp_u32(~u_input.a, 20638u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(u_input.a, 11549u, u_input.a)))), ~(~(~vec3<u32>(u_input.a, u_input.a, 46316u)))), ~vec3<u32>(abs(_wgslsmith_sub_u32(72903u, 1u)), (u_input.a << (u_input.a % 32u)) | 4294967295u, 66343u), 0i);
    let var_2 = 15479u;
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * _wgslsmith_f_op_f32(-var_1.a)))));
    var_1 = Struct_1(_wgslsmith_f_op_f32(func_4(-11628i, Struct_3(min(var_1.d, _wgslsmith_clamp_vec3_u32(var_1.d, vec3<u32>(4294967295u, var_1.d.x, var_1.d.x), vec3<u32>(25479u, var_1.d.x, var_1.d.x))), 4294967295u, var_1.d, Struct_1(_wgslsmith_f_op_f32(trunc(-403f)), abs(var_1.b), func_3(global4[_wgslsmith_index_u32(var_1.d.x, 17u)]), ~vec3<u32>(var_1.c, 16909u, 54267u), min(-2147483647i, 0i)), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-654f, var_1.a, var_1.a, 1241f) + vec4<f32>(2192f, var_1.a, -1409f, -1000f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.a, var_1.a, var_1.a))), global1[_wgslsmith_index_u32(0u, 1u)] | var_0, var_1.a, Struct_1(var_1.a, vec3<i32>(5831i, u_input.b, 19890i), var_2, var_1.d, 38967i))), var_1.d, select(u_input.a, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(var_1.d.xy, vec2<u32>(12277u, u_input.a)), 73943u), !global4[_wgslsmith_index_u32(var_2, 17u)]))), -var_1.b, 52916u, ~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u >> (1u % 32u), 4294967295u, _wgslsmith_clamp_u32(var_2, 105592u, 4294967295u)), ~(~var_1.d)), 22109i);
    return Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-504f, 393f, 648f, var_1.a)), vec4<f32>(var_1.a, var_1.a, _wgslsmith_div_f32(1195f, var_1.a), _wgslsmith_f_op_f32(-var_1.a)), !(!vec4<bool>(false, global4[_wgslsmith_index_u32(var_2, 17u)], global4[_wgslsmith_index_u32(var_2, 17u)], true)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1142f + var_1.a), _wgslsmith_f_op_f32(floor(var_1.a)), _wgslsmith_f_op_f32(abs(var_1.a)), _wgslsmith_div_f32(870f, var_1.a)) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1820f), var_1.a, _wgslsmith_f_op_f32(round(211f)), _wgslsmith_f_op_f32(var_1.a - -3131f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, var_1.a, var_1.a) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, var_1.a, -1000f) - vec3<f32>(883f, 793f, var_1.a))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(287f, 1509f, false)), _wgslsmith_f_op_f32(-var_1.a))))), ~_wgslsmith_mod_i32(-21051i, firstLeadingBit(reverseBits(u_input.b))), _wgslsmith_f_op_f32(sign(var_1.a)), Struct_1(2000f, vec3<i32>(_wgslsmith_sub_i32(var_0, u_input.b), 1i >> (_wgslsmith_clamp_u32(7823u, u_input.a, 1u) % 32u), var_0), var_2, ~var_1.d, 10016i));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = 2147483647i;
    var var_2 = func_2().e;
    global2 = array<vec4<i32>, 26>();
    global2 = array<vec4<i32>, 26>();
    return func_2().e;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 1>();
    var var_0 = func_1(vec2<bool>(global4[_wgslsmith_index_u32(~u_input.a, 17u)], true));
    let var_1 = select(!(!(!vec3<bool>(global4[_wgslsmith_index_u32(1u, 17u)], global4[_wgslsmith_index_u32(u_input.a, 17u)], global4[_wgslsmith_index_u32(u_input.a, 17u)]))), vec3<bool>(select(!global4[_wgslsmith_index_u32(0u, 17u)] && false, !global4[_wgslsmith_index_u32(var_0.c, 17u)] != false, true), any(!vec3<bool>(true, false, global4[_wgslsmith_index_u32(0u, 17u)])), global4[_wgslsmith_index_u32(reverseBits(u_input.a), 17u)]), vec3<bool>(all(vec2<bool>(true, global4[_wgslsmith_index_u32(_wgslsmith_div_u32(7611u, 1u), 17u)])), all(!vec2<bool>(global4[_wgslsmith_index_u32(var_0.d.x, 17u)], false)), global4[_wgslsmith_index_u32(0u, 17u)]));
    var var_2 = _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-_wgslsmith_sub_i32(var_0.b.x, var_0.e), -2147483647i, _wgslsmith_add_i32(u_input.b, 22671i) >> (abs(14033u) % 32u), firstTrailingBit(min(var_0.e, -17689i))), ~global2[_wgslsmith_index_u32(248u, 26u)]), ~_wgslsmith_mult_i32(u_input.b, _wgslsmith_mult_i32(firstLeadingBit(global1[_wgslsmith_index_u32(u_input.a, 1u)]), 0i)));
    let var_3 = _wgslsmith_f_op_vec2_f32(func_2().a.wy - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_add_i32(u_input.b, -312i), Struct_3(var_0.d, u_input.a, var_0.d, Struct_1(1781f, var_0.b, 46445u, var_0.d, 1i), Struct_2(vec4<f32>(-516f, 267f, 1021f, -255f), vec3<f32>(var_0.a, 100f, var_0.a), u_input.b, -1499f, Struct_1(557f, vec3<i32>(-2147483647i, var_0.e, 1i), 1u, var_0.d, 64526i))), _wgslsmith_mod_vec3_u32(var_0.d, vec3<u32>(var_0.d.x, u_input.a, 55958u)), var_0.c ^ 1u)), var_0.a), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.a, -1680f))) - func_2().b.yx), vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_div_f32(var_0.a, var_0.a)))))));
    var var_4 = select(var_1.yy, !vec2<bool>(1u < _wgslsmith_mult_u32(1u, u_input.a), _wgslsmith_clamp_i32(1787i, 0i, global1[_wgslsmith_index_u32(u_input.a, 1u)]) >= firstTrailingBit(-76807i)), var_1.zy);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(func_2().a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x - -522f) - _wgslsmith_f_op_f32(f32(-1f) * -1247f))), func_2().a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(-var_0.a)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-194f, -322f))))), _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_0.a)))))));
}

