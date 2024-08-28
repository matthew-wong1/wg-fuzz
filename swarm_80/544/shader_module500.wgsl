struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 13>;

var<private> global1: bool = true;

var<private> global2: u32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: vec3<f32>) -> vec3<bool> {
    global1 = !(0u <= _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(46280u, 10670u, u_input.b.x, arg_1), vec4<u32>(arg_1, u_input.b.x, arg_1, 0u)), ~(~vec4<u32>(arg_1, 29403u, 2669u, u_input.b.x))));
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x - arg_2.x) * _wgslsmith_f_op_f32(-arg_2.x))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * -679f), 488f, _wgslsmith_f_op_f32(-arg_0)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2 - _wgslsmith_f_op_vec3_f32(-arg_2)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-314f, arg_0, arg_2.x)))))));
    let var_1 = Struct_2(13320i, Struct_1(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.b.x, 1u), _wgslsmith_dot_vec2_u32(u_input.b.zy, vec2<u32>(u_input.b.x, 0u))) & (u_input.b.x ^ (4294967295u | arg_1)), u_input.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x * arg_2.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -822f) + -1407f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, var_0.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0))))), abs(vec3<u32>(~(~u_input.b.x), min(0u, 1095u), 1u)));
    let var_2 = vec3<bool>(select(var_1.b.b >= _wgslsmith_mod_i32(_wgslsmith_div_i32(var_1.b.b, var_1.a), firstLeadingBit(u_input.a)), 1i == (2147483647i & countOneBits(u_input.a)), any(vec2<bool>(true, true))), all(vec2<bool>(any(vec3<bool>(true, true, true)), !(var_1.c == 1126f))), select(all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true))), false, false));
    var var_3 = -_wgslsmith_add_i32(countOneBits(u_input.a), -_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a, var_1.a, var_1.b.b), vec3<i32>(var_1.a, 0i, u_input.a))) | (_wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(-26220i, -32883i)), _wgslsmith_mult_i32(var_1.a, var_1.b.b), var_1.a), _wgslsmith_mult_i32(max(u_input.a, var_1.a), var_1.b.b << (arg_1 % 32u))) ^ ~u_input.a);
    return var_2;
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<bool>(true, true, true);
    var_0 = select(!(!func_3(947f, 1u, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1493f, -1286f, 534f) + vec3<f32>(-406f, 481f, -596f)))), select(select(!vec3<bool>(false, var_0.x, false), func_3(_wgslsmith_f_op_f32(min(-871f, -452f)), ~u_input.b.x, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1273f, -826f, 496f)))), !vec3<bool>(var_0.x, false, var_0.x)), vec3<bool>(false, var_0.x, !(u_input.b.x == 8290u)), select(!vec3<bool>(var_0.x, true, false), vec3<bool>(!var_0.x, u_input.b.x < u_input.b.x, true), true)), var_0.x);
    var_0 = !select(vec3<bool>(true, false, false != all(vec3<bool>(true, false, false))), select(!vec3<bool>(true, false, var_0.x), vec3<bool>(true, true, var_0.x), func_3(_wgslsmith_f_op_f32(763f + -1144f), 0u, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1276f, -550f, -1000f))))), vec3<bool>(true, any(!vec4<bool>(var_0.x, false, true, false)), true));
    global2 = ~u_input.b.x;
    let var_1 = Struct_2(u_input.a, Struct_1(u_input.b.x, max(~(-31860i ^ u_input.a), u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(102f)))))), vec3<u32>(_wgslsmith_mod_u32(abs(~u_input.b.x), ~reverseBits(u_input.b.x)), u_input.b.x ^ _wgslsmith_add_u32(~68337u, reverseBits(u_input.b.x)), 4294967295u));
    return Struct_1(4294967295u, i32(-1i) * -40873i);
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = arg_2.d.x;
    global0 = array<vec4<i32>, 13>();
    let var_1 = max(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 66425u, 55531u, u_input.b.x), reverseBits(firstTrailingBit(vec4<u32>(arg_2.b.a, 127986u, 5058u, arg_2.b.a)))), vec4<u32>(max(u_input.b.x & u_input.b.x, max(var_0, arg_2.b.a)), 4294967295u, ~(~var_0), 16732u)), abs(_wgslsmith_mult_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(10554u, arg_2.d.x, arg_2.d.x, u_input.b.x), vec4<u32>(arg_2.b.a, 1892u, var_0, 122885u)), vec4<u32>(4294967295u, abs(var_0), _wgslsmith_clamp_u32(u_input.b.x, arg_2.b.a, u_input.b.x), var_0))));
    let var_2 = Struct_1(1u, -arg_1.x);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-689f)))) * 979f) + 946f);
    return arg_2.b;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = 2147483647i;
    var var_1 = Struct_2(0i, arg_0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -436f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -545f) * _wgslsmith_f_op_f32(trunc(-1233f))))))), u_input.b | ~vec3<u32>(arg_0.a, func_2().a, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(20881u, 13748u, 31198u))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1469f, var_1.c, var_1.c, 923f)))))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1483f, 193f, var_1.c, 1093f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-936f, var_1.c, var_1.c, 1000f) * vec4<f32>(var_1.c, -413f, -613f, 814f)))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(586f, -1000f)) * vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), var_1.c));
    var_1 = Struct_2(min(countOneBits(_wgslsmith_mod_i32(~arg_0.b, func_2().b)), var_1.a), var_1.b, _wgslsmith_f_op_f32(var_2.x + _wgslsmith_div_f32(var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)))), vec3<u32>(countOneBits(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.b.x, var_1.b.a), vec4<u32>(u_input.b.x, var_1.b.a, 51272u, var_1.d.x)), arg_0.a)), ~u_input.b.x, ~41412u));
    return Struct_1(0u, _wgslsmith_add_i32(abs(max(-2147483647i, -12678i) & abs(var_0)), firstLeadingBit(var_1.a)));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: i32) -> Struct_2 {
    global2 = ~(~(~42292u));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(953f, -2237f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.x))), -1361f))));
    global2 = abs(~_wgslsmith_sub_u32(~(~u_input.b.x), 26011u));
    let var_1 = vec4<i32>(-2147483647i, ~arg_0.b, ~_wgslsmith_mod_i32(-arg_2, -2147483647i), _wgslsmith_mod_i32(-arg_2, -28796i) ^ (arg_2 | u_input.a));
    var var_2 = Struct_2(2147483647i, Struct_1(_wgslsmith_mod_u32(u_input.b.x, ~(~u_input.b.x)), 1i), var_0, u_input.b);
    return Struct_2(abs(reverseBits(min(-7092i, 1i))), var_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.c)))), _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(31000u, 40659u, 36518u)), ~vec3<u32>(3616u, u_input.b.x, 4294967295u), _wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(arg_0.a, 1u, u_input.b.x)), vec3<u32>(1u, 4294967295u, u_input.b.x))) >> (vec3<u32>(14621u, ~_wgslsmith_clamp_u32(u_input.b.x, 1u, 1u), u_input.b.x) % vec3<u32>(32u)));
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = func_6(func_5(func_4(787f, max(~vec3<i32>(70717i, -1i, u_input.a), select(vec3<i32>(u_input.a, u_input.a, -1i), vec3<i32>(-12780i, 49984i, 23149i), true)), Struct_2(-1i, func_2(), 295f, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), -(~vec3<i32>(79747i, 1i, -26669i)))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1496f, _wgslsmith_f_op_f32(155f * 1030f))), -312f)), _wgslsmith_f_op_f32(ceil(572f))), _wgslsmith_add_i32(u_input.a, i32(-1i) * -firstLeadingBit(1i)));
    global2 = u_input.b.x;
    global0 = array<vec4<i32>, 13>();
    var var_1 = 1u;
    global0 = array<vec4<i32>, 13>();
    return Struct_1(~_wgslsmith_dot_vec3_u32(min(select(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), vec3<u32>(var_0.b.a, 0u, u_input.b.x), true), ~var_0.d), func_6(var_0.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1870f, 1288f)), _wgslsmith_mod_i32(var_0.a, u_input.a)).d), max(_wgslsmith_clamp_i32(select(var_0.b.b ^ var_0.b.b, var_0.a, arg_0), u_input.a, -26217i), u_input.a >> (u_input.b.x % 32u)));
}

fn func_7(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_1(~min(~80342u, _wgslsmith_div_u32(arg_1.a, arg_1.a)), (-39723i | u_input.a) | func_4(-998f, firstTrailingBit(vec3<i32>(-2147483647i, arg_1.b, -1i) | vec3<i32>(u_input.a, arg_0.b.b, arg_0.b.b)), arg_0, vec3<i32>(select(2147483647i, 0i, true), -1i, -5503i)).b);
    let var_1 = min(arg_3, arg_3);
    let var_2 = any(vec3<bool>(!(var_1.x < ~u_input.b.x), func_3(_wgslsmith_f_op_f32(arg_0.c + arg_0.c), var_1.x, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.c, arg_0.c, 1207f)))).x, false));
    global2 = _wgslsmith_dot_vec4_u32(vec4<u32>(1431u, 1u, 21687u, func_6(func_4(886f, vec3<i32>(u_input.a, arg_0.b.b, -11844i), arg_0, vec3<i32>(var_0.b, arg_1.b, u_input.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, arg_0.c)), arg_1.b).b.a) << (~_wgslsmith_add_vec4_u32(vec4<u32>(8289u, var_1.x, 0u, 8702u) & vec4<u32>(4294967295u, var_1.x, 32131u, 4294967295u), select(vec4<u32>(u_input.b.x, 14829u, 41102u, arg_1.a), arg_3, vec4<bool>(var_2, var_2, var_2, false))) % vec4<u32>(32u)), ~(~(~reverseBits(arg_3))));
    global2 = arg_2.x;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(Struct_2(select(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), ~vec2<i32>(55875i, 40458i)), 38710i, !all(vec4<bool>(true, true, false, false))), func_1(true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -792f))), u_input.b), func_2(), abs(vec2<u32>(~1u, _wgslsmith_mod_u32(0u, u_input.b.x))) ^ abs(min(~u_input.b.yx, vec2<u32>(52924u, 14050u))), min(_wgslsmith_mod_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 1u, 86456u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u)), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 61219u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(6634u, u_input.b.x, u_input.b.x, u_input.b.x)))), min(vec4<u32>(~u_input.b.x, ~0u, u_input.b.x, firstTrailingBit(4294967295u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x), ~vec4<u32>(u_input.b.x, 0u, 4294967295u, 0u), vec4<u32>(u_input.b.x, 1u, 100581u, u_input.b.x)))));
    var_0 = Struct_1(~var_0.a, _wgslsmith_mult_i32(-min(-33292i, u_input.a) << (firstLeadingBit(1u) % 32u), select(var_0.b, u_input.a, true)));
    global0 = array<vec4<i32>, 13>();
    global1 = _wgslsmith_dot_vec3_u32(u_input.b, u_input.b) == countOneBits(~(~var_0.a));
    var var_1 = Struct_1(firstLeadingBit(~116559u) >> (~(_wgslsmith_dot_vec2_u32(vec2<u32>(20892u, 4294967295u), u_input.b.xz) & 1u) % 32u), u_input.a);
    let var_2 = func_2();
    var var_3 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-619f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(215f, -561f)) - _wgslsmith_f_op_f32(906f + -638f)))), ~(~0u), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(959f - -204f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-529f, 122f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -753f), _wgslsmith_f_op_f32(max(2715f, 1034f))) - -349f), _wgslsmith_f_op_f32(-1672f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-475f))))))).x;
    let var_4 = 1i;
    var var_5 = !(!(!select(true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-274f)))))), -1000f), ~12811u, 1u, vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(373f + func_6(Struct_1(u_input.b.x, var_0.b), vec2<f32>(104f, -1949f), -2147483647i).c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2827f * -1000f)), -1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(198f + 1000f), all(vec2<bool>(false, false)))), 1269f))));
}

