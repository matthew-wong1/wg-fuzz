struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: bool,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 4> = array<vec4<u32>, 4>(vec4<u32>(6539u, 14767u, 1u, 34475u), vec4<u32>(84440u, 97445u, 0u, 0u), vec4<u32>(88488u, 30609u, 25853u, 56459u), vec4<u32>(4294967295u, 45931u, 31342u, 1u));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: i32) -> vec3<f32> {
    let var_0 = Struct_2(select(all(vec2<bool>(false, false)), any(!select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true))), 10037i > ~arg_1), Struct_1(-_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-29336i, -29166i, u_input.a), vec3<i32>(u_input.b, -34123i, arg_1)), ~vec3<i32>(11947i, -2147483647i, 6203i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-866f, -473f, -293f) + vec3<f32>(-848f, 581f, 928f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(849f, -748f, -163f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(218f, 1092f, 600f)))), false, -30096i, ~vec2<u32>(1u, 1u)), u_input.b | 2147483647i);
    var var_1 = arg_0;
    let var_2 = i32(-1i) * -abs(1i);
    let var_3 = Struct_1(_wgslsmith_mult_vec3_i32(~firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 0i, 20812i), var_0.b.a)), vec3<i32>(firstLeadingBit(7379i), _wgslsmith_mult_i32(-var_0.b.d, min(-1i, var_2)), abs(firstLeadingBit(-10866i)))), var_0.b.b, arg_0 || !(firstTrailingBit(-1i) >= abs(-2147483647i)), _wgslsmith_div_i32(arg_1, u_input.a), vec2<u32>(~0u >> (var_0.b.e.x % 32u), 87681u));
    let var_4 = var_0;
    return vec3<f32>(_wgslsmith_div_f32(var_4.b.b.x, var_4.b.b.x), _wgslsmith_f_op_f32(-var_3.b.x), _wgslsmith_f_op_f32(exp2(var_4.b.b.x)));
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: i32) -> Struct_3 {
    var var_0 = arg_2.b;
    let var_1 = Struct_2(!(any(vec4<bool>(false, true, true, true)) && !var_0.c) == var_0.c, Struct_1(arg_1.zyy, var_0.b, var_0.c, _wgslsmith_div_i32(i32(-1i) * -27909i, arg_1.x), ~reverseBits(~vec2<u32>(arg_2.b.e.x, var_0.e.x))), arg_2.c);
    var_0 = Struct_1(abs(-_wgslsmith_add_vec3_i32(var_1.b.a & vec3<i32>(2147483647i, var_0.d, arg_1.x), var_1.b.a | arg_2.b.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, var_1.b.b.x)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1184f, _wgslsmith_f_op_f32(-148f * -1939f), var_0.b.x))), true, -arg_2.b.a.x, countOneBits(_wgslsmith_add_vec2_u32(firstLeadingBit(~vec2<u32>(var_1.b.e.x, 4294967295u)), vec2<u32>(abs(27702u), var_1.b.e.x))));
    let var_2 = var_1;
    let var_3 = _wgslsmith_f_op_vec3_f32(min(var_1.b.b, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_3(true, u_input.a >> (arg_2.b.e.x % 32u)))))));
    return Struct_3(_wgslsmith_f_op_f32(var_1.b.b.x + -1681f));
}

fn func_4(arg_0: u32, arg_1: Struct_3) -> Struct_3 {
    let var_0 = ~vec3<u32>(reverseBits(38590u), ~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(arg_0, 1u, arg_0, 0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, arg_0, 1u, 0u), global0[_wgslsmith_index_u32(arg_0, 4u)])), countOneBits(~(9960u >> (0u % 32u))));
    global0 = array<vec4<u32>, 4>();
    var var_1 = var_0.x;
    return arg_1;
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: i32, arg_3: f32) -> Struct_1 {
    let var_0 = -_wgslsmith_sub_vec2_i32(-_wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(arg_2, 0i)), select(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(arg_2, arg_2), vec2<bool>(true, arg_0))), ~max(-vec2<i32>(-2147483647i, -2728i), select(vec2<i32>(u_input.b, arg_2), vec2<i32>(-2147483647i, arg_2), vec2<bool>(true, true))));
    var var_1 = select(firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(33087u, min(1u, 14056u), ~33834u), vec3<u32>(29292u, 1u, 1u))), ~abs(vec3<u32>(39485u, 1u, 1u)), select(vec3<bool>(true, arg_0, false), select(vec3<bool>(true, any(vec3<bool>(true, arg_0, arg_0)), !arg_0), vec3<bool>(arg_0, arg_0, false), select(vec3<bool>(arg_0, true, true), !vec3<bool>(arg_0, true, arg_0), arg_0)), select(!vec3<bool>(true, arg_0, arg_0), select(!vec3<bool>(true, true, arg_0), select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, false, arg_0), false), arg_0), false)));
    var_1 = firstTrailingBit(~vec3<u32>(var_1.x, var_1.x, var_1.x << (7713u % 32u)) << (~vec3<u32>(1u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(86382u, var_1.x), vec2<u32>(var_1.x, var_1.x))) % vec3<u32>(32u)));
    var var_2 = Struct_2(select(select(all(vec3<bool>(false, arg_0, false)), !arg_0, arg_0) | (false & arg_0), 1186f < _wgslsmith_f_op_f32(-1283f * _wgslsmith_f_op_f32(abs(arg_3))), true), Struct_1(~firstTrailingBit(~vec3<i32>(13542i, 0i, 12359i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1194f, arg_3), _wgslsmith_div_f32(arg_1.a, 179f), _wgslsmith_f_op_f32(floor(arg_3))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1837f, arg_3, arg_3)))), !(!(arg_0 || arg_0)), 0i, vec2<u32>(0u, var_1.x)), -1i);
    var var_3 = !(var_2.b.e.x > ~(~(~var_1.x)));
    return Struct_1(-var_2.b.a, _wgslsmith_div_vec3_f32(var_2.b.b, var_2.b.b), var_2.b.c, var_0.x, ~(~_wgslsmith_div_vec2_u32(~var_1.xy, _wgslsmith_mult_vec2_u32(vec2<u32>(var_1.x, 21356u), var_2.b.e))));
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: Struct_3) -> f32 {
    global0 = array<vec4<u32>, 4>();
    var var_0 = arg_1.e.x | 4294967295u;
    global0 = array<vec4<u32>, 4>();
    var var_1 = arg_1.c;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-225f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_vec3_f32(func_3(true, 2147483647i)).x))) + arg_2.a);
    return -2451f;
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: vec4<u32>, arg_3: vec3<bool>) -> vec2<f32> {
    let var_0 = ~(vec3<u32>(~0u, 80139u | _wgslsmith_div_u32(arg_2.x, 4294967295u), 1u) << ((arg_2.wxw ^ (~vec3<u32>(37359u, 4294967295u, 1u) ^ ~arg_2.zzz)) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(u_input.b, func_5(arg_0.x && true, func_4(39362u, func_2(arg_1, vec4<i32>(u_input.b, -21476i, u_input.b, 0i), Struct_2(false, Struct_1(vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<f32>(982f, 1527f, arg_1), true, u_input.a, vec2<u32>(var_0.x, var_0.x)), u_input.a), u_input.b)), 0i & u_input.b, _wgslsmith_f_op_f32(f32(-1f) * -2352f)), func_2(-566f, ~_wgslsmith_mod_vec4_i32(vec4<i32>(-15123i, -6030i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.b, u_input.a, u_input.b)), Struct_2(all(vec2<bool>(false, arg_3.x)), func_5(arg_3.x, Struct_3(arg_1), -5369i, arg_1), u_input.b), -34072i))) + func_5(all(arg_0), func_2(-514f, firstLeadingBit(-vec4<i32>(u_input.a, -18898i, u_input.b, u_input.b)), Struct_2(arg_3.x != arg_3.x, func_5(true, Struct_3(1077f), -12387i, arg_1), _wgslsmith_mult_i32(u_input.a, u_input.b)), -18045i), -28904i, func_2(-592f, vec4<i32>(~u_input.a, 57242i, -1i, countOneBits(-2147483647i)), Struct_2(true, func_5(arg_3.x, Struct_3(-590f), u_input.a, arg_1), -36133i), 2147483647i).a).b.x);
    let var_2 = Struct_3(-498f);
    global0 = array<vec4<u32>, 4>();
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f)));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(func_4(arg_2.x, Struct_3(-1032f)).a, _wgslsmith_f_op_f32(f32(-1f) * -673f)) - vec2<f32>(arg_1, _wgslsmith_f_op_f32(-var_2.a)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -744f) - _wgslsmith_f_op_f32(sign(var_2.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 4>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, 880f), vec2<f32>(-1058f, -1062f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(140f, -1089f)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)))))))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(vec4<bool>(true, true, true, false), 426f, global0[_wgslsmith_index_u32(24663u, 4u)], vec3<bool>(true, false, false))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-152f, 473f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-404f, 915f))) * vec2<f32>(func_2(-1395f, vec4<i32>(-41821i, 0i, u_input.a, u_input.a), Struct_2(false, Struct_1(vec3<i32>(u_input.b, 42400i, u_input.b), vec3<f32>(521f, -1974f, 815f), true, u_input.a, vec2<u32>(1u, 0u)), 2147483647i), -1i).a, func_5(true, Struct_3(-222f), -10684i, -864f).b.x)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-1435f * var_0.x)));
    let var_2 = func_4(firstLeadingBit(32614u), func_2(_wgslsmith_f_op_f32(abs(var_0.x)), abs(vec4<i32>(2147483647i, u_input.a, 2147483647i, u_input.a) ^ ~vec4<i32>(u_input.b, 0i, -2147483647i, u_input.a)), Struct_2(all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false)), func_5(all(vec3<bool>(false, true, false)), func_4(30640u, Struct_3(var_0.x)), -u_input.a, _wgslsmith_f_op_f32(1595f * var_0.x)), abs(u_input.b)), ~(-1i)));
    let var_3 = Struct_2(36528u > _wgslsmith_div_u32(select(10711u, 11376u, false) ^ ~58540u, _wgslsmith_add_u32(func_5(false, Struct_3(-1107f), u_input.a, var_0.x).e.x, 1u)), func_5(all(vec3<bool>(true, true, true)), var_2, u_input.b, 2084f), 42546i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-select(_wgslsmith_mult_i32(u_input.a, var_3.c), _wgslsmith_div_i32(u_input.a, u_input.b), !var_3.b.c), -2147483647i, ~(~countOneBits(-8345i))), _wgslsmith_f_op_f32(floor(346f)));
}

