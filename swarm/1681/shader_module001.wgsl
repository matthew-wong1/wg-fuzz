struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: bool,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-467f, 3167f, -845f, 1846f);

var<private> global1: array<vec3<u32>, 32> = array<vec3<u32>, 32>(vec3<u32>(69715u, 26657u, 0u), vec3<u32>(19323u, 1u, 45300u), vec3<u32>(0u, 9307u, 68736u), vec3<u32>(30900u, 44835u, 18679u), vec3<u32>(29880u, 63205u, 0u), vec3<u32>(1u, 34503u, 69866u), vec3<u32>(1u, 67045u, 48823u), vec3<u32>(0u, 19388u, 4294967295u), vec3<u32>(0u, 14763u, 38284u), vec3<u32>(0u, 73900u, 32414u), vec3<u32>(0u, 4294967295u, 38364u), vec3<u32>(64827u, 0u, 368u), vec3<u32>(84233u, 1u, 0u), vec3<u32>(0u, 2104u, 1u), vec3<u32>(114341u, 4294967295u, 50622u), vec3<u32>(55481u, 20840u, 4294967295u), vec3<u32>(30232u, 1u, 2326u), vec3<u32>(0u, 4294967295u, 3931u), vec3<u32>(1u, 0u, 22684u), vec3<u32>(48808u, 24037u, 1u), vec3<u32>(27522u, 66551u, 1u), vec3<u32>(1u, 70594u, 4294967295u), vec3<u32>(22929u, 43808u, 17860u), vec3<u32>(57644u, 4294967295u, 31409u), vec3<u32>(4294967295u, 25112u, 4294967295u), vec3<u32>(34707u, 89024u, 1u), vec3<u32>(62479u, 1u, 35038u), vec3<u32>(0u, 13493u, 32372u), vec3<u32>(14857u, 4294967295u, 1278u), vec3<u32>(4294967295u, 18323u, 0u), vec3<u32>(1u, 12370u, 67961u), vec3<u32>(0u, 43387u, 0u));

var<private> global2: array<vec4<f32>, 23>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(step(322f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.e.x, 1575f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.b.x, global0.x) - 1226f))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1533f + var_0));
}

fn func_2(arg_0: bool, arg_1: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(func_3(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, ~(-2147483647i), u_input.b.x), u_input.a), arg_1, Struct_1(vec4<u32>(_wgslsmith_dot_vec3_u32(~global1[_wgslsmith_index_u32(65462u, 32u)], ~global1[_wgslsmith_index_u32(61062u, 32u)]), _wgslsmith_clamp_u32(1u, 1u, 47670u), ~15177u, countOneBits(_wgslsmith_div_u32(11658u, 4294967295u))), global2[_wgslsmith_index_u32(countOneBits(~_wgslsmith_div_u32(32180u, 4294967295u)), 23u)], !arg_0 && (arg_0 | true), abs(~47136i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global0.zx), _wgslsmith_f_op_vec2_f32(ceil(global0.yy))))))));
    let var_1 = any(vec2<bool>(var_0 <= var_0, true));
    var var_2 = ~(~abs(~(~4294967295u)));
    global0 = _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(1u, 4294967295u), vec2<u32>(53240u, 37085u)), _wgslsmith_clamp_vec2_u32(abs(vec2<u32>(22818u, 0u)), vec2<u32>(47071u, 0u), ~vec2<u32>(57258u, 0u)))), 23u)]);
    let var_3 = Struct_2(47776i, all(vec4<bool>(any(vec4<bool>(false, arg_0, var_1, arg_0)), var_1, true, true)));
    return arg_1;
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(max(global0.x, -1767f)), _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global2[_wgslsmith_index_u32(0u, 23u)], global2[_wgslsmith_index_u32(1u, 23u)])) * vec4<f32>(_wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -169f), _wgslsmith_f_op_f32(-global0.x), 225f)))), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(max(1u, ~abs(4294967295u)), 1u), 23u)], !select(!(!vec4<bool>(true, false, false, arg_0.a)), !vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(arg_0.a, any(vec3<bool>(false, arg_0.a, arg_0.a)), true || arg_0.a, true))));
    global2 = array<vec4<f32>, 23>();
    return Struct_1(max(vec4<u32>(1u, 1u, 1u, 1u), max(~(~vec4<u32>(1u, 1u, 93185u, 0u)), vec4<u32>(_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(47993u, 32u)], vec3<u32>(0u, 43395u, 90789u)), firstLeadingBit(57239u), ~75142u, 1u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_f32(select(global0.x, global0.x, false)))), 531f, _wgslsmith_f_op_f32(func_3(select(vec3<i32>(u_input.c.x, 54899i, -51515i), u_input.c, false), func_2(false, arg_0), Struct_1(vec4<u32>(4294967295u, 49271u, 0u, 4294967295u), global2[_wgslsmith_index_u32(50325u, 23u)], arg_0.a, -1i, global0.yw)))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(453f, 129f, 1000f, global0.x) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, global0.x, -234f, 171f))))))), arg_0.a, u_input.a.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global0.yy), global0.wz, !vec2<bool>(func_2(arg_0.a, arg_0).a, !arg_0.a))));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool, arg_3: vec4<u32>) -> vec4<u32> {
    let var_0 = Struct_3(global0.x < _wgslsmith_f_op_f32(-904f + _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-global0.x))));
    let var_1 = firstTrailingBit(arg_1.a.x);
    let var_2 = vec2<i32>(-1i, i32(-1i) * -1i);
    global0 = func_4(var_0).b;
    var var_3 = var_0;
    return ~abs(~abs(arg_1.a));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec4<bool>, arg_3: u32) -> vec2<i32> {
    let var_0 = vec3<u32>(1147u, _wgslsmith_clamp_u32(8634u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, arg_3), vec2<u32>(8741u, arg_3)) ^ ~arg_0, arg_3), 7720u), ~(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_3, arg_0, 101114u) | vec4<u32>(21906u, arg_0, arg_3, arg_3), max(vec4<u32>(15687u, arg_3, 13505u, 69628u), vec4<u32>(arg_3, arg_3, arg_3, 88069u))) | ~_wgslsmith_mod_u32(arg_3, arg_0)));
    global1 = array<vec3<u32>, 32>();
    var var_1 = _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1333f))));
    global0 = _wgslsmith_f_op_vec4_f32(ceil(global2[_wgslsmith_index_u32(4294967295u, 23u)]));
    let var_2 = Struct_1((vec4<u32>(~1u, _wgslsmith_clamp_u32(arg_0, 0u, 0u), arg_3 >> (122263u % 32u), arg_3) ^ ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_3, 1u, 27979u, 1u), vec4<u32>(1u, 9651u, 1u, var_0.x))) ^ func_5(~firstLeadingBit(vec4<i32>(arg_1, arg_1, arg_1, 34508i)), func_4(func_2(true, Struct_3(arg_2.x))), !any(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)), ~(vec4<u32>(var_0.x, 4294967295u, arg_0, var_0.x) >> (vec4<u32>(arg_3, 95903u, arg_3, arg_0) % vec4<u32>(32u)))), _wgslsmith_div_vec4_f32(vec4<f32>(1168f, -343f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-883f, -1000f, false))), global0.x), vec4<f32>(_wgslsmith_f_op_f32(-1621f * global0.x), -887f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1349f * -816f) + _wgslsmith_f_op_f32(min(1153f, 524f))), -998f)), all(!vec2<bool>(arg_2.x | false, arg_2.x)), 1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - global0.yy)));
    return reverseBits(firstLeadingBit(vec2<i32>(_wgslsmith_div_i32(func_4(Struct_3(var_2.c)).d, var_2.d), var_2.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, 34955u, 1u, 1u), vec4<u32>(1u, 1u, _wgslsmith_clamp_u32(1u, 1u, 4294967295u), select(0u, 84638u, true))), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 17167u, 42198u), vec4<u32>(37414u, 6654u, 31361u, 64662u)))), min(u_input.c.x, countOneBits(1i << (~4294967295u % 32u))), vec4<bool>(false, true, select(true, true, true), (~u_input.a.x ^ ~(-2147483647i)) != _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_mult_i32(-18438i, u_input.b.x), u_input.b.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(5860u, ~(~0u), 1u, 0u), vec4<u32>(27838u, 23349u, ~0u, 2218u)));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -374f);
    var var_2 = Struct_1(~firstTrailingBit(~vec4<u32>(4294967295u, 48975u, 14529u, 48862u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 1414f, global0.x, -153f) - global2[_wgslsmith_index_u32(95161u, 23u)]) + vec4<f32>(2135f, -463f, -1000f, 766f))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -957f, 200f, global0.x)) * vec4<f32>(global0.x, global0.x, global0.x, 1218f))))), ~reverseBits(min(0i, var_0.x)) == _wgslsmith_mod_i32(max(abs(19974i), u_input.c.x), -1i), _wgslsmith_mod_i32(u_input.a.x, reverseBits(countOneBits(-21203i))), vec2<f32>(var_1, _wgslsmith_f_op_f32(f32(-1f) * -795f)));
    var var_3 = any(vec3<bool>(!var_2.c, func_4(Struct_3(!var_2.c)).c, any(vec4<bool>(all(vec4<bool>(true, var_2.c, var_2.c, false)), false, select(var_2.c, var_2.c, var_2.c), !var_2.c))));
    var var_4 = func_4(Struct_3(true));
    let var_5 = max(reverseBits(_wgslsmith_sub_vec4_u32(var_2.a ^ vec4<u32>(var_4.a.x, var_2.a.x, 0u, 4294967295u), min(var_2.a, firstLeadingBit(vec4<u32>(var_2.a.x, 35316u, 1u, 85994u))))), vec4<u32>(var_4.a.x, var_2.a.x, ~(~max(20302u, var_4.a.x)), ~(~0u >> (firstLeadingBit(var_4.a.x) % 32u))));
    let var_6 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.b) - vec4<f32>(global0.x, var_4.b.x, 261f, var_4.e.x)), global2[_wgslsmith_index_u32(76818u, 23u)])))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32((var_2.a.x ^ 32584u) ^ 4294967295u, 23u)]) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1), 1717f, -708f, _wgslsmith_f_op_f32(-var_4.b.x)))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1069f, -362f, var_2.b.x, 666f)) * _wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(var_2.a.x, 23u)] - var_4.b)), vec4<f32>(var_4.b.x, _wgslsmith_div_f32(var_1, var_6.x), -373f, -276f)))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global2[_wgslsmith_index_u32(var_4.a.x, 23u)], var_2.b)), var_6))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.zxw * vec3<f32>(312f, var_2.b.x, var_6.x)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-var_4.e.x), 440f, _wgslsmith_f_op_f32(var_1 + -881f)))))));
}

