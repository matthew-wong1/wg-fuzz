struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: vec2<f32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec4<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 25> = array<vec2<i32>, 25>(vec2<i32>(-20125i, 10081i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-8605i, -60986i), vec2<i32>(0i, 15858i), vec2<i32>(8345i, 1i), vec2<i32>(-1i, 1i), vec2<i32>(40934i, -8263i), vec2<i32>(0i, -52428i), vec2<i32>(-17022i, 2147483647i), vec2<i32>(-5295i, i32(-2147483648)), vec2<i32>(0i, 3486i), vec2<i32>(-31385i, -442i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(11670i, 13378i), vec2<i32>(-20413i, -1i), vec2<i32>(i32(-2147483648), 62523i), vec2<i32>(-43261i, 36133i), vec2<i32>(-1i, 0i), vec2<i32>(-14627i, -41066i), vec2<i32>(45724i, 0i), vec2<i32>(24499i, -1i), vec2<i32>(1i, 1i), vec2<i32>(1i, -24789i), vec2<i32>(58218i, 0i), vec2<i32>(-2945i, 2147483647i));

var<private> global1: array<Struct_3, 30>;

var<private> global2: array<u32, 19>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_4) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(229f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-186f - -419f), _wgslsmith_div_f32(-459f, 883f)) * _wgslsmith_f_op_f32(-2088f + -434f))) - -1220f);
    return u_input.b;
}

fn func_2() -> u32 {
    let var_0 = ~(-(~((vec3<i32>(u_input.c, 0i, u_input.c) & vec3<i32>(u_input.c, u_input.c, u_input.a)) << (~vec3<u32>(u_input.b, 1u, 4294967295u) % vec3<u32>(32u)))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-291f))), 1141f, true)), 0i, -1i, vec3<u32>(func_3(Struct_4(true, vec3<i32>(var_0.x, 20866i, u_input.a))), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)]), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)], u_input.b)), ~4294967295u), global2[_wgslsmith_index_u32(22469u, 19u)]), 1705f, _wgslsmith_mult_u32(12843u, 0u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-275f, 141f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(825f, -264f) * vec2<f32>(-696f, -316f))) * _wgslsmith_div_vec2_f32(vec2<f32>(1366f, 441f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-992f, 1988f)))), vec2<f32>(_wgslsmith_f_op_f32(round(-707f)), _wgslsmith_f_op_f32(step(-1856f, _wgslsmith_f_op_f32(min(-101f, -1368f))))), true)), any(select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true)), vec2<bool>(true, true), all(vec2<bool>(true, true)))));
    let var_2 = ~0u;
    global2 = array<u32, 19>();
    global1 = array<Struct_3, 30>();
    return ~0u;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2) -> Struct_4 {
    var var_0 = true;
    var_0 = arg_2.e;
    let var_1 = ~max(firstTrailingBit(~global2[_wgslsmith_index_u32(63536u, 19u)] & 104439u), _wgslsmith_sub_u32(arg_1.e, global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(3336u, 2454u), 19u)]));
    var var_2 = arg_2.e;
    var var_3 = vec2<i32>(~(_wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, -57569i, u_input.c), vec3<i32>(u_input.c, arg_2.a.b, 0i) << (arg_2.a.d % vec3<u32>(32u))) << (abs(_wgslsmith_mult_u32(1u, arg_2.c)) % 32u)), _wgslsmith_div_i32(~_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-1i, 2885i), arg_1.b, abs(0i)), _wgslsmith_mult_i32(firstTrailingBit(-1i), _wgslsmith_add_i32(_wgslsmith_mod_i32(24603i, u_input.c), 0i))));
    return Struct_4(any(select(!(!vec2<bool>(arg_2.e, true)), select(select(vec2<bool>(arg_2.e, arg_2.e), vec2<bool>(true, arg_2.e), arg_2.e), !vec2<bool>(false, arg_2.e), true | arg_2.e), true)), vec3<i32>(-1i, ~arg_2.a.b, firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.a.b, 23981i, arg_2.a.b), vec3<i32>(2147483647i, 1i, -1423i))) << (_wgslsmith_dot_vec3_u32(vec3<u32>(12353u, 1u, 1u), firstLeadingBit(vec3<u32>(u_input.b, arg_2.a.d.x, 1u))) % 32u)));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_3) -> vec2<i32> {
    let var_0 = !arg_0;
    var var_1 = false;
    let var_2 = func_4(711f, Struct_1(arg_1.d.d.x, u_input.a, u_input.c, ~(~(~vec3<u32>(9087u, 16723u, u_input.b))), ~func_2()), Struct_2(arg_1.a.a, -1168f, ~abs(85407u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.d.d * arg_1.d.d) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1444f, 567f), vec2<f32>(-902f, arg_1.d.d.x)))) + arg_1.d.d), false));
    global1 = array<Struct_3, 30>();
    global0 = array<vec2<i32>, 25>();
    return arg_1.b.xx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec2_i32(max(~(~(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 19u)], 25u)] >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)))), vec2<i32>(~select(u_input.a, u_input.a, true), 1i)), (select(global0[_wgslsmith_index_u32(u_input.b, 25u)] >> (vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u)), max(global0[_wgslsmith_index_u32(32977u, 25u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1649u, 19u)], 25u)]), true) & -func_1(vec4<bool>(false, false, true, true), Struct_3(Struct_2(Struct_1(746f, u_input.a, 40877i, vec3<u32>(u_input.b, 42534u, global2[_wgslsmith_index_u32(58160u, 19u)]), 0u), -1514f, 2369u, vec2<f32>(-1069f, -400f), true), vec3<i32>(-32778i, u_input.c, u_input.a), vec4<u32>(61864u, u_input.b, u_input.b, 4294967295u), Struct_2(Struct_1(151f, -1i, u_input.c, vec3<u32>(41696u, u_input.b, global2[_wgslsmith_index_u32(4294967295u, 19u)]), 20584u), -888f, 26495u, vec2<f32>(406f, 236f), true)))) | _wgslsmith_sub_vec2_i32(global0[_wgslsmith_index_u32(4294967295u, 25u)], vec2<i32>(_wgslsmith_add_i32(-2147483647i, u_input.a), u_input.a)));
    let var_1 = Struct_2(Struct_1(532f, var_0.x, -3391i, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 19u)], 19u)], global2[_wgslsmith_index_u32(1u, 19u)]), vec3<u32>(4294967295u, 30775u, 71375u)) | vec3<u32>(u_input.b, u_input.b << (global2[_wgslsmith_index_u32(1u, 19u)] % 32u), 0u), _wgslsmith_sub_u32(reverseBits(u_input.b), func_2())), _wgslsmith_f_op_f32(-796f * _wgslsmith_f_op_f32(sign(-883f))), 49007u, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(847f, 450f))), vec2<f32>(1174f, 702f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-355f, 479f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1108f, -1180f))))))), !select(true, select(true, global2[_wgslsmith_index_u32(4294967295u, 19u)] != 9691u, true), func_4(_wgslsmith_f_op_f32(trunc(-587f)), Struct_1(-996f, var_0.x, u_input.a, vec3<u32>(15398u, 84887u, 80304u), 19373u), Struct_2(Struct_1(-133f, -56502i, 2147483647i, vec3<u32>(1u, 0u, 22385u), 0u), 584f, 0u, vec2<f32>(-139f, -835f), false)).a));
    let var_2 = select(!select(select(vec3<bool>(var_1.e, false, false), select(vec3<bool>(var_1.e, var_1.e, var_1.e), vec3<bool>(var_1.e, true, var_1.e), var_1.e), !var_1.e), vec3<bool>(true, false, u_input.a <= 0i), vec3<bool>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(61250u, 19u)], 19u)] > u_input.b, func_4(var_1.d.x, Struct_1(var_1.a.a, -1i, var_1.a.c, var_1.a.d, global2[_wgslsmith_index_u32(u_input.b, 19u)]), Struct_2(var_1.a, var_1.d.x, var_1.a.e, vec2<f32>(-1129f, 764f), var_1.e)).a, true)), select(select(vec3<bool>(false, true, any(vec3<bool>(var_1.e, var_1.e, false))), !select(vec3<bool>(var_1.e, true, var_1.e), vec3<bool>(var_1.e, var_1.e, var_1.e), false), vec3<bool>(all(vec2<bool>(true, false)), select(var_1.e, true, var_1.e), !var_1.e)), !(!vec3<bool>(var_1.e, false, false)), select(select(vec3<bool>(true, true, true), select(vec3<bool>(var_1.e, true, var_1.e), vec3<bool>(var_1.e, var_1.e, var_1.e), var_1.e), select(vec3<bool>(true, true, var_1.e), vec3<bool>(var_1.e, var_1.e, false), false)), vec3<bool>(var_1.e, var_1.e, var_1.e), vec3<bool>(var_1.e, false, true))), var_1.e);
    var var_3 = _wgslsmith_mult_vec3_i32(vec3<i32>(abs(1i), var_0.x, _wgslsmith_mult_i32(i32(-1i) * -29283i, 1i)) ^ select(firstLeadingBit(~vec3<i32>(1i, var_0.x, var_1.a.b)), _wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(var_0.x, u_input.c, var_0.x)), vec3<i32>(var_0.x, 29998i, u_input.a)), var_2), _wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(u_input.c >> (4294967295u % 32u), countOneBits(32019i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.b, 0i, var_0.x, u_input.c), vec4<i32>(u_input.a, -49021i, var_1.a.b, 2147483647i)))), vec3<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(var_0.x, var_1.a.c, var_1.a.c)), vec3<i32>(2147483647i, 63043i, 1551i)), u_input.c, -var_0.x)));
    var_0 = ~_wgslsmith_div_vec2_i32(~(-reverseBits(vec2<i32>(var_3.x, var_1.a.c))), countOneBits(global0[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(16423u, var_1.c)), 25u)]));
    var var_4 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(894f))), Struct_1(_wgslsmith_f_op_f32(sign(var_1.d.x)), -reverseBits(var_1.a.b), 8662i, vec3<u32>(~4294967295u, countOneBits(134872u), min(55613u, var_1.c)), _wgslsmith_sub_u32(~0u, global2[_wgslsmith_index_u32(abs(4294967295u), 19u)])), Struct_2(Struct_1(var_1.a.a, -u_input.c, 1i, ~(~vec3<u32>(38794u, var_1.c, global2[_wgslsmith_index_u32(u_input.b, 19u)])), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(11665u, 19u)], global2[_wgslsmith_index_u32(1u, 19u)], 16036u, 538u), vec4<u32>(global2[_wgslsmith_index_u32(0u, 19u)], 1u, u_input.b, 53097u)), global2[_wgslsmith_index_u32(~var_1.c, 19u)])), var_1.a.a, func_3(func_4(_wgslsmith_f_op_f32(-1357f - 686f), Struct_1(var_1.d.x, 0i, u_input.c, vec3<u32>(var_1.a.d.x, var_1.a.e, 1u), global2[_wgslsmith_index_u32(11620u, 19u)]), var_1)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.d) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.a, var_1.b) * var_1.d)) - _wgslsmith_f_op_vec2_f32(select(var_1.d, vec2<f32>(var_1.a.a, var_1.a.a), true))), !var_1.e));
    global2 = array<u32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(min(max(vec3<u32>(global2[_wgslsmith_index_u32(min(var_1.a.e, 4294967295u), 19u)], ~u_input.b, _wgslsmith_mod_u32(u_input.b, 13747u)), vec3<u32>(~u_input.b, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 19u)], 19u)], ~40032u)), vec3<u32>(1u, u_input.b, ~var_1.a.d.x >> (~67494u % 32u))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, -2769f, var_1.b, -136f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1551f, -346f, 539f, var_1.b) + vec4<f32>(1165f, var_1.a.a, -1706f, -854f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.d.x, var_1.a.a, -199f, var_1.b), vec4<f32>(310f, 289f, var_1.d.x, -779f)) * vec4<f32>(var_1.d.x, -1000f, 408f, -1348f)), vec4<f32>(-311f, _wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(-var_1.a.a), var_1.a.a)))), var_1.a.d);
}

