struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<vec2<bool>, 25>;

var<private> global1: array<vec4<i32>, 15>;

var<private> global2: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(1u, Struct_1(true, false, -6559i, -918f), 30221u, vec4<u32>(0u, 1u, 4294967295u, 4294967295u), 0u), Struct_3(0u, Struct_1(true, true, -22697i, 408f), 4294967295u, vec4<u32>(1u, 16464u, 73394u, 1u), 66445u), Struct_3(69589u, Struct_1(false, true, -1i, -822f), 64204u, vec4<u32>(16573u, 1u, 0u, 0u), 632u), Struct_3(0u, Struct_1(true, false, 1i, -525f), 0u, vec4<u32>(1u, 1u, 45030u, 1472u), 101580u), Struct_3(0u, Struct_1(true, true, 2147483647i, -278f), 85283u, vec4<u32>(4294967295u, 4294967295u, 0u, 1u), 10806u), Struct_3(7051u, Struct_1(false, true, -39581i, -1228f), 20893u, vec4<u32>(11003u, 45862u, 6170u, 0u), 43823u), Struct_3(36872u, Struct_1(true, true, 4029i, 1136f), 45835u, vec4<u32>(26332u, 18232u, 81127u, 4294967295u), 387u), Struct_3(39178u, Struct_1(true, true, 13620i, -249f), 0u, vec4<u32>(59721u, 1131u, 116945u, 0u), 92597u), Struct_3(1u, Struct_1(false, true, 2147483647i, 687f), 1u, vec4<u32>(138379u, 84220u, 43390u, 0u), 17866u), Struct_3(38699u, Struct_1(true, true, -1i, 574f), 7005u, vec4<u32>(1u, 46789u, 23721u, 11465u), 27093u), Struct_3(4294967295u, Struct_1(true, false, -63063i, 1511f), 0u, vec4<u32>(52628u, 26017u, 17643u, 1u), 4294967295u), Struct_3(57213u, Struct_1(true, true, -16907i, 1174f), 1u, vec4<u32>(43470u, 1u, 110475u, 22852u), 0u), Struct_3(0u, Struct_1(false, false, 2147483647i, -248f), 0u, vec4<u32>(1u, 0u, 0u, 18968u), 32678u), Struct_3(54282u, Struct_1(true, false, -46985i, 433f), 34898u, vec4<u32>(1u, 24921u, 25567u, 4294967295u), 12312u), Struct_3(20607u, Struct_1(true, true, 2147483647i, 1000f), 4294967295u, vec4<u32>(1u, 4294967295u, 1u, 27009u), 4294967295u), Struct_3(71892u, Struct_1(false, true, -29007i, 1323f), 4294967295u, vec4<u32>(4294967295u, 35274u, 15550u, 25220u), 4294967295u), Struct_3(48264u, Struct_1(false, false, -54059i, 860f), 21993u, vec4<u32>(34155u, 12790u, 8213u, 1u), 61097u), Struct_3(4623u, Struct_1(true, true, -12063i, 274f), 1u, vec4<u32>(1u, 0u, 1937u, 78160u), 0u));

var<private> global3: array<vec3<u32>, 15> = array<vec3<u32>, 15>(vec3<u32>(1u, 41967u, 30610u), vec3<u32>(81387u, 4294967295u, 1u), vec3<u32>(19400u, 0u, 34665u), vec3<u32>(17614u, 45604u, 1u), vec3<u32>(70598u, 495u, 42015u), vec3<u32>(18047u, 4294967295u, 34597u), vec3<u32>(1u, 65932u, 4294967295u), vec3<u32>(0u, 44123u, 42797u), vec3<u32>(0u, 4294967295u, 18018u), vec3<u32>(4294967295u, 64302u, 4294967295u), vec3<u32>(18237u, 38372u, 40643u), vec3<u32>(15883u, 0u, 0u), vec3<u32>(4294967295u, 53402u, 13153u), vec3<u32>(4294967295u, 34540u, 4294967295u), vec3<u32>(1u, 1u, 37337u));

var<private> global4: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(3181u, Struct_1(true, true, -5670i, -490f), 4294967295u, vec4<u32>(4294967295u, 0u, 4294967295u, 1u), 0u), Struct_3(33032u, Struct_1(false, true, -42811i, -1880f), 4294967295u, vec4<u32>(50908u, 1u, 819u, 37117u), 13683u), Struct_3(1u, Struct_1(false, true, -23273i, -880f), 41243u, vec4<u32>(4294967295u, 4294967295u, 0u, 27220u), 21121u), Struct_3(1u, Struct_1(true, false, 0i, -1000f), 25316u, vec4<u32>(0u, 4294967295u, 39585u, 9576u), 1u), Struct_3(4294967295u, Struct_1(false, false, 1i, -696f), 43382u, vec4<u32>(1u, 1u, 4294967295u, 14127u), 19446u), Struct_3(16469u, Struct_1(true, true, 21750i, 2721f), 12693u, vec4<u32>(4294967295u, 66397u, 5756u, 53815u), 4294967295u), Struct_3(11292u, Struct_1(true, true, -1i, 1842f), 0u, vec4<u32>(1u, 1u, 4294967295u, 4294967295u), 0u), Struct_3(0u, Struct_1(false, false, 24700i, 730f), 0u, vec4<u32>(6748u, 4294967295u, 23685u, 1u), 1u), Struct_3(21157u, Struct_1(true, true, i32(-2147483648), 196f), 1u, vec4<u32>(35172u, 34219u, 1u, 23335u), 1u), Struct_3(1u, Struct_1(true, false, -28719i, -1473f), 4294967295u, vec4<u32>(54889u, 4294967295u, 7229u, 15005u), 5299u), Struct_3(22891u, Struct_1(false, false, -1i, -101f), 0u, vec4<u32>(52843u, 0u, 0u, 4294967295u), 78479u), Struct_3(2898u, Struct_1(false, true, 1i, -316f), 1u, vec4<u32>(0u, 1u, 84106u, 18627u), 28345u), Struct_3(0u, Struct_1(false, false, 0i, -1000f), 36809u, vec4<u32>(0u, 4294967295u, 0u, 0u), 11961u), Struct_3(4294967295u, Struct_1(true, false, i32(-2147483648), 324f), 6746u, vec4<u32>(1469u, 6674u, 71932u, 4294967295u), 4294967295u), Struct_3(52560u, Struct_1(false, true, 24218i, -330f), 0u, vec4<u32>(19371u, 17183u, 43453u, 48320u), 4294967295u), Struct_3(33250u, Struct_1(false, false, 27712i, -460f), 101807u, vec4<u32>(13114u, 10355u, 54854u, 53421u), 20253u), Struct_3(60515u, Struct_1(true, false, 1i, -306f), 20508u, vec4<u32>(1u, 0u, 0u, 18719u), 0u), Struct_3(4294967295u, Struct_1(false, true, -24339i, 586f), 16107u, vec4<u32>(11098u, 4294967295u, 21638u, 0u), 0u), Struct_3(76556u, Struct_1(true, true, -40796i, 239f), 69691u, vec4<u32>(0u, 4294967295u, 15819u, 0u), 0u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) * vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-401f, -467f)), _wgslsmith_f_op_f32(max(2394f, 668f)), true)), -956f, -623f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1012f))))));
    global0 = array<vec2<bool>, 25>();
    var var_1 = Struct_2(vec2<i32>(-2147483647i, reverseBits(29710i)), ~(_wgslsmith_sub_i32(2147483647i, select(0i, -23958i, true)) >> (~_wgslsmith_mod_u32(0u, u_input.a) % 32u)), Struct_1(true, true, 67111i, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(121f, var_0.x)))));
    let var_2 = global4[_wgslsmith_index_u32(arg_0.x, 19u)];
    var_1 = Struct_2(vec2<i32>(var_1.c.c, _wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(var_1.a.x, -1i, var_2.b.c), vec3<i32>(var_1.c.c, 0i, var_1.c.c))), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 100283i, var_2.b.c), vec3<i32>(var_2.b.c, 1i, 6282i) & vec3<i32>(-1i, var_1.a.x, var_2.b.c)))), firstLeadingBit(-_wgslsmith_add_i32(var_1.a.x, -30927i)), var_1.c);
    return _wgslsmith_mod_u32(3731u, max(_wgslsmith_mult_u32(var_2.c, ~(4294967295u | var_2.d.x)), 14706u));
}

fn func_2() -> vec4<bool> {
    var var_0 = vec4<u32>(29753u, 43788u, 1u, min(1u, ~func_3(vec2<u32>(u_input.a, 570u))));
    let var_1 = Struct_1(select(_wgslsmith_dot_vec2_i32(min(vec2<i32>(-2147483647i, 0i), vec2<i32>(2147483647i, -30862i)), vec2<i32>(2147483647i, -2147483647i)), 51818i, true) <= _wgslsmith_div_i32(1i, -1i), true, i32(-1i) * -69150i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-685f)), 424f), _wgslsmith_f_op_f32(-1922f + _wgslsmith_f_op_f32(floor(578f)))))));
    global2 = array<Struct_3, 18>();
    let var_2 = _wgslsmith_sub_u32(0u, ~_wgslsmith_add_u32(func_3(var_0.wy), u_input.a | var_0.x) & reverseBits(u_input.a));
    global1 = array<vec4<i32>, 15>();
    return vec4<bool>(var_1.a, var_1.a, ~(~firstLeadingBit(u_input.a)) == var_2, 2147483647i > countOneBits(-var_1.c & (var_1.c ^ var_1.c)));
}

fn func_1(arg_0: f32, arg_1: Struct_3) -> f32 {
    let var_0 = arg_1.b.c;
    let var_1 = func_2();
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -174f, 1000f)))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(334f, -461f, -292f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_1.b.d)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1419f, arg_1.b.d, -680f) * vec3<f32>(433f, 997f, arg_1.b.d))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.x))), 474f));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<bool>) -> u32 {
    global0 = array<vec2<bool>, 25>();
    var var_0 = vec4<u32>(~(~14879u), u_input.a, min(reverseBits(_wgslsmith_div_u32(~5950u, 10256u)), _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(14371u, 1u, 0u, 11621u), vec4<u32>(23609u, 83987u, 1u, u_input.a)), 1u)), 65079u);
    let var_1 = Struct_1(arg_1.x, !func_2().x, _wgslsmith_div_i32(2147483647i, min(abs(0i), i32(-1i) * -30702i) << ((24415u ^ min(var_0.x, u_input.a)) % 32u)), _wgslsmith_f_op_f32(floor(797f)));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.d, arg_0.x)) - arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-675f * -643f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-445f + 1218f))))));
    let var_3 = 0u;
    return select(5567u, _wgslsmith_add_u32(var_0.x, ~(~var_0.x)), select(var_1.b, true, arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec4_u32(max(~vec4<u32>(u_input.a >> (u_input.a % 32u), min(13309u, u_input.a), 1u, _wgslsmith_add_u32(1u, 1u)), ~vec4<u32>(u_input.a, u_input.a ^ u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(79799u, u_input.a, u_input.a, 17503u)), select(37636u, 4294967295u, false))), countOneBits(abs(select(vec4<u32>(48251u, 15604u, 33748u, u_input.a), vec4<u32>(1u, 1u, u_input.a, 0u), vec4<bool>(false, true, false, true)))) | _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(31916u, 97803u, u_input.a, 1u), vec4<u32>(u_input.a, 33847u, 1u, 49720u))), ~(vec4<u32>(112025u, u_input.a, 0u, 5234u) << (vec4<u32>(1u, 1u, 950u, u_input.a) % vec4<u32>(32u)))));
    global4 = array<Struct_3, 19>();
    global1 = array<vec4<i32>, 15>();
    var var_1 = global1[_wgslsmith_index_u32(func_4(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-489f * _wgslsmith_f_op_f32(-1000f - -1031f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(166f, global2[_wgslsmith_index_u32(4893u, 18u)])))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-762f))))), !(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true)))), 15u)];
    var var_2 = -2147483647i;
    var var_3 = -select(40420i >> (abs(u_input.a) % 32u), -17468i, !any(vec4<bool>(true, false, true, true)) && true);
    var var_4 = Struct_2(vec2<i32>(max(21457i, 2147483647i), var_1.x), ~var_1.x, Struct_1(false, true, ~44941i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1719f, 144f, true))) + _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(min(130f, 1940f)), Struct_3(0u, Struct_1(true, true, var_1.x, 2067f), 4294967295u, var_0, u_input.a))))));
    let var_5 = Struct_1(!var_4.c.a, false & all(vec4<bool>(all(vec3<bool>(false, var_4.c.a, var_4.c.b)), var_4.c.a, var_4.c.b, true)), _wgslsmith_div_i32(33807i, firstTrailingBit(1i)) & ~reverseBits(~69164i), _wgslsmith_f_op_f32(max(var_4.c.d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_4.c.d))), var_4.c.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_5.d, var_4.c.d, -465f, -740f), vec4<f32>(874f, var_4.c.d, var_4.c.d, -1000f))) + vec4<f32>(-562f, -1000f, var_5.d, var_4.c.d)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-547f, var_5.d, 283f, var_4.c.d) - vec4<f32>(var_5.d, var_5.d, 1935f, var_4.c.d)))) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -168f), _wgslsmith_f_op_f32(max(var_5.d, -461f))), -405f, 940f, 1f)));
}

