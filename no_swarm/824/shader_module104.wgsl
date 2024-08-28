struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
    c: i32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2) -> vec4<i32> {
    return vec4<i32>(-20505i, firstTrailingBit(_wgslsmith_mod_i32(9401i, 2147483647i)) << (select(103839u, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(91477u, 4294967295u, 85776u, 0u), arg_0.e)), true) % 32u), -1i ^ _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(1i, 1i)), vec2<i32>(2147483647i, reverseBits(33270i))), firstLeadingBit(firstTrailingBit(_wgslsmith_add_i32(1i, ~2147483647i))));
}

fn func_4(arg_0: Struct_5) -> vec3<u32> {
    var var_0 = 22340u;
    let var_1 = Struct_3(Struct_1(true, vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 4294967295u) | vec3<u32>(arg_0.a.x, arg_0.a.x, 20654u), vec3<u32>(5583u, 24622u, arg_0.a.x)), _wgslsmith_sub_u32(arg_0.a.x, firstTrailingBit(arg_0.a.x)), u_input.b, 4294967295u)), Struct_1(true, firstLeadingBit(countOneBits(vec4<u32>(4294967295u, arg_0.a.x, arg_0.b, 34062u))) ^ vec4<u32>(~43022u, 1u, ~u_input.a, arg_0.a.x)), Struct_2(vec2<bool>(true, true), Struct_1(true, min(vec4<u32>(23248u, 92816u, u_input.b, arg_0.b), vec4<u32>(u_input.b, arg_0.a.x, arg_0.b, 1u) & vec4<u32>(arg_0.a.x, u_input.a, 1u, 0u))), Struct_1(true, vec4<u32>(4294967295u, 28800u, 4294967295u, arg_0.a.x) & _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.b, 9336u, arg_0.b, u_input.a), vec4<u32>(4294967295u, u_input.b, arg_0.a.x, 1u))), vec3<bool>(true, true, true), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.b, 4294967295u) & vec4<u32>(107490u, 4294967295u, u_input.b, arg_0.b), ~vec4<u32>(arg_0.a.x, 18086u, 1u, 62627u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 0u, arg_0.a.x, arg_0.a.x), vec4<u32>(4294967295u, 51281u, 13064u, arg_0.a.x) >> (vec4<u32>(69202u, 133276u, u_input.b, u_input.b) % vec4<u32>(32u))))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-545f + 835f), 621f);
    var var_3 = true;
    var var_4 = var_1.c.a;
    return ~vec3<u32>(var_1.a.b.x, max(u_input.b, arg_0.b), u_input.b);
}

fn func_5(arg_0: vec4<f32>, arg_1: vec3<u32>) -> f32 {
    let var_0 = _wgslsmith_dot_vec2_u32(abs(arg_1.xx), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(~max(arg_1.zx, arg_1.zz), _wgslsmith_div_vec2_u32(firstLeadingBit(arg_1.yz), vec2<u32>(arg_1.x, 8086u))), ~(countOneBits(vec2<u32>(u_input.a, 86106u)) << (~arg_1.xy % vec2<u32>(32u)))));
    let var_1 = Struct_3(Struct_1(true, ~max(vec4<u32>(var_0, 1u, 0u, 21126u), vec4<u32>(1u, arg_1.x, var_0, 30291u) | vec4<u32>(15800u, 0u, arg_1.x, arg_1.x))), Struct_1(true, min(firstLeadingBit(vec4<u32>(0u, u_input.b, u_input.a, arg_1.x)) & _wgslsmith_div_vec4_u32(vec4<u32>(1u, 7899u, 1u, 1u), vec4<u32>(0u, arg_1.x, 1u, u_input.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u, 4573u, var_0) ^ vec4<u32>(u_input.a, 4294967295u, 13207u, 29878u), vec4<u32>(1u, u_input.a, var_0, u_input.b) & vec4<u32>(23336u, 1u, 4294967295u, 0u), vec4<u32>(44146u, 1u, 1u, 40541u)))), Struct_2(!select(vec2<bool>(false, true), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true)), Struct_1(any(vec3<bool>(false, false, true)) & (arg_0.x > -277f), ~(~vec4<u32>(var_0, var_0, 29851u, arg_1.x))), Struct_1(all(vec3<bool>(true, true, true)), abs(vec4<u32>(4294967295u, 4294967295u, var_0, 59958u) >> (vec4<u32>(arg_1.x, 13098u, u_input.b, 53363u) % vec4<u32>(32u)))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)), vec4<u32>(~63882u, 4294967295u, arg_1.x >> (1u % 32u), ~(~arg_1.x))));
    var var_2 = var_1.c.b;
    var_2 = Struct_1(0u < var_2.b.x, var_2.b);
    var var_3 = ~1u;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-416f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - -440f))) * arg_0.x);
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1310f, -1000f, 1761f, -431f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1163f, 844f, -544f, -302f), vec4<f32>(1000f, -1063f, -133f, -705f))) * vec4<f32>(135f, 419f, _wgslsmith_f_op_f32(f32(-1f) * -1521f), -483f)) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(629f, 1379f, -703f, 882f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-645f, -716f, -270f, 149f) + vec4<f32>(334f, 1732f, -1000f, -822f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(277f, -1141f, -2396f, 736f) * vec4<f32>(544f, 269f, 241f, -1137f)), vec4<f32>(1396f, -396f, -753f, 1259f))))), func_4(Struct_5(abs(select(arg_0.b.zy, arg_0.b.yw, vec2<bool>(arg_0.a, arg_0.a))), countOneBits(_wgslsmith_clamp_u32(20360u, arg_0.b.x, 0u)), func_3(Struct_2(vec2<bool>(arg_0.a, arg_0.a), arg_0, arg_0, vec3<bool>(arg_0.a, true, false), arg_0.b))))));
    var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-754f + 488f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1047f))), _wgslsmith_f_op_f32(-1666f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, -1534f, arg_1)) * -993f)))));
    var var_1 = false;
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-1000f)), 1716f)), -1940f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-451f * -776f) * 1f)))));
    var_1 = arg_0.a;
    return Struct_3(arg_0, arg_0, Struct_2(select(vec2<bool>(any(vec4<bool>(true, true, arg_1, arg_1)), arg_1), vec2<bool>(true, arg_1), !select(vec2<bool>(arg_1, false), vec2<bool>(true, arg_1), vec2<bool>(true, arg_0.a))), Struct_1(any(vec4<bool>(true, arg_1, true, arg_1)) || true, vec4<u32>(func_4(Struct_5(vec2<u32>(1u, u_input.b), 0u, vec4<i32>(10490i, 2147483647i, -18431i, arg_2))).x, ~104723u, u_input.b, reverseBits(1u))), Struct_1(all(!vec4<bool>(arg_1, arg_1, arg_1, false)), firstLeadingBit(arg_0.b & vec4<u32>(17264u, 103185u, arg_0.b.x, arg_0.b.x))), !select(select(vec3<bool>(true, arg_1, false), vec3<bool>(true, arg_0.a, arg_0.a), arg_0.a), !vec3<bool>(arg_0.a, false, true), arg_1), ~vec4<u32>(~8500u, _wgslsmith_clamp_u32(0u, 52171u, 1u), arg_0.b.x, u_input.b >> (u_input.a % 32u))));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec3_i32(-abs(vec3<i32>(-1i) * -vec3<i32>(12333i, 2641i, 24936i)), vec3<i32>(1i, 1i, 1i));
    let var_1 = func_2(arg_1, false, var_0);
    let var_2 = !vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2236f * -825f) - -241f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-121f)) + -160f), !(!(!arg_1.a)));
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1303f, -1008f, _wgslsmith_f_op_f32(f32(-1f) * -1214f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(770f, 257f, -453f))))));
    var var_4 = Struct_4(1u, vec4<f32>(_wgslsmith_f_op_f32(step(-363f, 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_3.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_3.x - 1077f), 496f, any(arg_0))), _wgslsmith_f_op_f32(-1232f + 1356f))), _wgslsmith_f_op_f32(floor(var_3.x))), var_0 >> (reverseBits(~arg_1.b.x) % 32u));
    return func_2(func_2(var_1.a, true, 42624i).c.c, func_2(func_2(func_2(func_2(Struct_1(false, arg_1.b), var_2.x, var_0).c.b, true, ~(-2147483647i)).a, true, var_4.c).b, true, _wgslsmith_mod_i32(var_0, firstLeadingBit(_wgslsmith_mult_i32(var_4.c, -16537i)))).b.a, 2147483647i).a;
}

fn func_6(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = func_2(func_1(vec4<bool>(!all(vec4<bool>(false, arg_2.a, false, true)), arg_2.a, !arg_0.d.x, !(!arg_0.b.a)), func_2(Struct_1(true || arg_0.d.x, _wgslsmith_div_vec4_u32(arg_2.b, vec4<u32>(0u, 22847u, arg_0.c.b.x, 80259u))), arg_2.a, arg_1.x).b), false, reverseBits(0i)).a;
    return arg_0.c;
}

fn func_7(arg_0: Struct_2) -> Struct_1 {
    var var_0 = select(!vec3<bool>(true, arg_0.b.a, arg_0.b.a), arg_0.d, select(select(func_2(func_2(Struct_1(false, vec4<u32>(arg_0.b.b.x, 56489u, 4294967295u, 1u)), true, 1i).a, func_2(arg_0.b, true, 2147483647i).c.c.a, i32(-1i) * -1i).c.d, vec3<bool>(arg_0.a.x, true, true), !arg_0.d.x), func_2(arg_0.c, func_6(arg_0, vec4<i32>(1i, 1i, 1i, 1i), func_6(Struct_2(vec2<bool>(false, true), arg_0.b, arg_0.b, vec3<bool>(true, true, arg_0.c.a), vec4<u32>(u_input.a, 1u, u_input.a, 34304u)), vec4<i32>(-25347i, 9708i, 0i, 2147483647i), arg_0.b, arg_0.b.b.x), max(23728u, u_input.b)).a, _wgslsmith_mult_i32(13678i, firstLeadingBit(9184i))).c.d, true));
    return func_6(func_2(func_1(!(!vec4<bool>(true, false, arg_0.c.a, true)), arg_0.b), true, -(~(-2147483647i))).c, countOneBits(abs(vec4<i32>(2147483647i, 46733i, 1i, -17564i))), arg_0.b, ~arg_0.b.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_7(Struct_2(vec2<bool>(true, true), func_6(Struct_2(vec2<bool>(false, true), Struct_1(false, vec4<u32>(1u, 32457u, u_input.a, 1u)), Struct_1(true, vec4<u32>(u_input.a, u_input.b, 42948u, 18529u)), vec3<bool>(true, false, false), vec4<u32>(u_input.b, 1u, 67407u, 908u)), abs(vec4<i32>(0i, -29256i, 0i, 7890i)), func_1(vec4<bool>(false, true, false, true), Struct_1(false, vec4<u32>(6783u, u_input.b, u_input.a, 22462u))), ~u_input.b), func_2(Struct_1(true, vec4<u32>(0u, 4294967295u, u_input.b, 1u)), false, abs(5800i)).c.c, vec3<bool>(true, true, 0u < u_input.b), ~(~vec4<u32>(37912u, 43759u, u_input.b, u_input.b)))), func_7(func_2(Struct_1(10111u < u_input.b, select(vec4<u32>(u_input.a, 0u, u_input.b, u_input.b), vec4<u32>(u_input.a, 30249u, u_input.b, u_input.b), false)), any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true)), ~1i).c), Struct_2(vec2<bool>(select(-1i, 2147483647i, true) >= 0i, false), func_7(Struct_2(func_2(Struct_1(false, vec4<u32>(4294967295u, u_input.b, 42596u, u_input.b)), true, 46914i).c.a, func_2(Struct_1(false, vec4<u32>(u_input.a, 26174u, u_input.b, 33899u)), true, 59243i).a, func_2(Struct_1(true, vec4<u32>(u_input.b, u_input.a, u_input.b, 0u)), false, 4350i).b, vec3<bool>(false, false, true), ~vec4<u32>(u_input.b, 1u, u_input.b, u_input.a))), Struct_1(true, vec4<u32>(_wgslsmith_add_u32(46979u, 16579u), min(u_input.a, u_input.b), ~1u, 4294967295u)), vec3<bool>(true, true, true), ~select(vec4<u32>(u_input.a, 1u, 22092u, 1u), vec4<u32>(8749u, 0u, 17774u, u_input.a), false) & max(func_7(Struct_2(vec2<bool>(false, true), Struct_1(false, vec4<u32>(u_input.a, u_input.b, 15648u, u_input.b)), Struct_1(false, vec4<u32>(u_input.b, 4294967295u, 3743u, u_input.a)), vec3<bool>(true, false, true), vec4<u32>(33561u, 48073u, 1u, u_input.b))).b, vec4<u32>(4294967295u, u_input.a, 38094u, u_input.b))));
    var var_1 = select(u_input.a, _wgslsmith_div_u32(~1u, 17134u), var_0.b.a);
    var_1 = func_4(Struct_5(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.b.b.zy, var_0.c.b.b.xw), firstTrailingBit(var_0.c.c.b.zx)), 32702u, vec4<i32>(-1i) * -vec4<i32>(24510i, 2147483647i, 1i, -86658i))).x & (func_4(Struct_5(_wgslsmith_mult_vec2_u32(var_0.a.b.xw, vec2<u32>(var_0.a.b.x, u_input.a)), _wgslsmith_dot_vec4_u32(var_0.b.b, var_0.c.e), vec4<i32>(1i, 1i, 1i, 1i))).x << (u_input.a % 32u));
    let var_2 = Struct_1(!any(!vec2<bool>(false, var_0.b.a)) & ((_wgslsmith_dot_vec2_i32(vec2<i32>(12492i, -2147483647i), vec2<i32>(-2147483647i, 49516i)) << (~u_input.a % 32u)) == 1i), _wgslsmith_add_vec4_u32(var_0.b.b, vec4<u32>(u_input.a, _wgslsmith_sub_u32(~47677u, ~var_0.b.b.x), var_0.c.e.x, countOneBits(u_input.b))));
    let var_3 = select(_wgslsmith_dot_vec2_i32(vec2<i32>(-34148i, firstLeadingBit(reverseBits(-1i))), vec2<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(75915i, 18029i), _wgslsmith_clamp_vec2_i32(vec2<i32>(15204i, -9907i), vec2<i32>(1i, -1i), vec2<i32>(0i, 0i))), countOneBits(max(-16593i, 1i)))), -2147483647i, func_1(select(!select(vec4<bool>(true, false, var_2.a, true), vec4<bool>(false, false, var_2.a, true), vec4<bool>(true, var_0.b.a, true, false)), !select(vec4<bool>(var_0.a.a, false, true, true), vec4<bool>(false, false, false, true), false), true), func_2(Struct_1(!var_0.a.a, vec4<u32>(var_0.b.b.x, var_0.a.b.x, var_2.b.x, 500u)), true, -1i).c.c).a);
    let var_4 = var_0.c;
    var_1 = _wgslsmith_div_u32(~(~firstTrailingBit(23136u)), _wgslsmith_div_u32(var_0.c.c.b.x, u_input.a)) >> (~7851u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(-1i, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1527f * 458f) - 1038f)), 1000f), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(var_2.b, var_2.b), vec4<u32>(~20951u, var_2.b.x, _wgslsmith_mult_u32(~62742u, 1u), _wgslsmith_div_u32(~u_input.a, 1u))), -1i);
}

