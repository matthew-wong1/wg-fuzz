struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: i32,
    d: vec2<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1339f, -509f, -129f)) + vec4<f32>(112f, 1000f, 1072f, 170f)) * vec4<f32>(_wgslsmith_f_op_f32(sign(-1101f)), _wgslsmith_f_op_f32(f32(-1f) * -1605f), -661f, _wgslsmith_f_op_f32(select(-191f, 825f, false))))));
    var var_1 = u_input.b;
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(725f, -850f) - _wgslsmith_f_op_f32(round(1129f))), -480f, min(1u, u_input.c) < u_input.e)), !any(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-262f)) - var_0.x))), var_0.x);
    var var_2 = u_input.d.xx;
    var var_3 = !(!vec2<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false)), true));
    return var_2.x;
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: i32, arg_3: vec3<u32>) -> Struct_3 {
    let var_0 = arg_0 && true;
    let var_1 = Struct_1(-1169f, select(vec2<bool>(true, arg_0), !select(select(vec2<bool>(true, false), vec2<bool>(var_0, arg_0), vec2<bool>(arg_0, false)), vec2<bool>(var_0, true), vec2<bool>(arg_0, arg_0)), var_0), abs(_wgslsmith_sub_i32(arg_2, _wgslsmith_mod_i32(func_3(), u_input.b))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1601f + _wgslsmith_f_op_f32(floor(-737f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-908f)), _wgslsmith_f_op_f32(973f - -2163f)))), u_input.d);
    var var_2 = Struct_2(Struct_1(-1453f, var_1.b, firstLeadingBit(abs(var_1.c) ^ ~0i), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.d) + vec2<f32>(var_1.d.x, -799f)))), _wgslsmith_sub_vec3_i32(vec3<i32>(firstLeadingBit(-1i), _wgslsmith_div_i32(u_input.d.x, 1i), _wgslsmith_div_i32(var_1.c, -15328i)), vec3<i32>(-var_1.e.x, -u_input.b, ~var_1.e.x))), var_1, !(u_input.e < ~_wgslsmith_add_u32(1u, 31695u)), Struct_1(1137f, select(var_1.b, var_1.b, select(var_1.b, !var_1.b, false)), ~(-41550i), var_1.d, -_wgslsmith_mod_vec3_i32(-u_input.d, vec3<i32>(22839i, 1i, arg_2))));
    var var_3 = Struct_2(Struct_1(1079f, !vec2<bool>(48001u != arg_3.x, false | var_2.d.b.x), func_3(), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d.x, var_2.d.a) + vec2<f32>(var_1.d.x, 1581f)))), vec2<f32>(_wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_f_op_f32(-var_1.d.x)), !var_1.b)), ~(-vec3<i32>(2147483647i, var_2.b.c, arg_2))), var_2.d, true, Struct_1(var_1.a, !vec2<bool>(any(vec3<bool>(var_2.d.b.x, var_2.d.b.x, var_0)), arg_0 && true), -40132i, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(var_2.d.a * var_2.a.d.x)), vec3<i32>(var_1.c, -2147483647i, ~arg_2) << (arg_3 % vec3<u32>(32u))));
    let var_4 = var_2.a.d.x;
    return Struct_3(true, 0i, Struct_2(var_2.a, var_2.b, arg_0, Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.a * 778f))), vec2<bool>(true, true), _wgslsmith_mod_i32(-2147483647i, ~var_2.b.e.x), _wgslsmith_f_op_vec2_f32(-var_2.d.d), select(u_input.d, ~var_3.a.e, var_3.d.b.x))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> Struct_2 {
    var var_0 = func_2(arg_1.c.a.b.x, _wgslsmith_add_u32(~firstTrailingBit(u_input.c), ~(u_input.e >> (u_input.e % 32u))) >> (~_wgslsmith_add_u32(abs(0u), ~67956u) % 32u), 1i, firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.e & 1u, 4294967295u, u_input.c & 0u), ~_wgslsmith_mult_vec3_u32(vec3<u32>(29264u, u_input.e, 0u), vec3<u32>(u_input.e, 4294967295u, 22843u)), ~vec3<u32>(4294967295u, 16606u, u_input.c)))).c.b;
    var var_1 = Struct_3(var_0.b.x, 0i, func_2(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 0u, 35686u, u_input.e), vec4<u32>(37863u, u_input.e, u_input.e, 53976u)), 40927u) > 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 78934u, 44227u) | ~vec3<u32>(u_input.e, 58868u, u_input.c), vec3<u32>(u_input.c | u_input.c, 5539u | u_input.c, ~5430u)), abs(firstTrailingBit(11549i)), select(_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(u_input.e, 6696u, u_input.c)), vec3<u32>(9027u, 9491u, 0u), ~vec3<u32>(u_input.e, 3632u, u_input.c)), min(firstLeadingBit(vec3<u32>(u_input.c, u_input.c, u_input.e)), ~vec3<u32>(u_input.e, 0u, u_input.e)), false)).c);
    var var_2 = vec3<u32>(u_input.c, 1u, u_input.c);
    let var_3 = Struct_3(arg_1.c.a.b.x, i32(-1i) * -func_2(true, countOneBits(var_2.x), -57902i, vec3<u32>(58843u, u_input.e, 4294967295u) | vec3<u32>(u_input.c, u_input.c, 4294967295u)).b, Struct_2(arg_1.c.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.c.d.d.x))), !(!arg_0.c.a.b), firstTrailingBit(_wgslsmith_mod_i32(28442i, 27549i)), _wgslsmith_div_vec2_f32(vec2<f32>(394f, var_0.d.x), vec2<f32>(var_1.c.b.d.x, -1345f)), ~arg_0.c.a.e), !func_2(var_1.a, 4294967295u >> (var_2.x % 32u), _wgslsmith_mod_i32(2147483647i, var_1.b), ~vec3<u32>(1u, 0u, 40488u)).c.b.b.x, Struct_1(1185f, select(vec2<bool>(false, arg_1.c.a.b.x), arg_0.c.a.b, true | arg_1.c.d.b.x), _wgslsmith_mult_i32(abs(var_0.c), -arg_1.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.c.d.d)), vec3<i32>(-1i) * -u_input.d)));
    var_0 = Struct_1(-195f, vec2<bool>(!(_wgslsmith_f_op_f32(min(-590f, var_0.a)) >= _wgslsmith_f_op_f32(-1061f - arg_1.c.d.d.x)), !arg_0.c.b.b.x), (i32(-1i) * -1i) ^ _wgslsmith_mult_i32(func_2(true, u_input.e, -2147483647i, vec3<u32>(18063u, var_2.x, 4294967295u)).c.a.e.x ^ _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.c.d.c, var_0.e.x), vec2<i32>(-12212i, -65430i)), -1i), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(241f)) + -829f), -577f) - var_3.c.a.d), ~arg_0.c.a.e);
    return func_2(arg_0.c.c, ~40879u, -2147483647i, countOneBits(~(~firstLeadingBit(vec3<u32>(var_2.x, var_2.x, 8643u))))).c;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_3(!select(true, true || all(vec2<bool>(true, false)), true && (u_input.b == -52301i)), u_input.b, func_4(func_2(false, 1u, -2584i, vec3<u32>(u_input.e, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 42255u, 0u, 2083u), vec4<u32>(u_input.e, u_input.c, 0u, u_input.e)), _wgslsmith_sub_u32(u_input.e, 0u))), func_2(func_2(false, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 4294967295u, u_input.c), vec3<u32>(1u, 37627u, u_input.e)), _wgslsmith_sub_i32(-1i, -31720i), vec3<u32>(23769u, 35596u, 16063u)).c.c, ~u_input.c << (_wgslsmith_clamp_u32(0u, u_input.c, 1u) % 32u), u_input.a.x, firstLeadingBit(vec3<u32>(u_input.c, u_input.e, u_input.c) & vec3<u32>(u_input.e, u_input.e, u_input.e)))));
    let var_1 = vec4<i32>(~max(36563i, u_input.b), u_input.b, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.d.x, -var_0.b, -21995i, 2147483647i)), ~(~(~vec4<i32>(u_input.d.x, -1i, u_input.a.x, var_0.c.b.c)))), countOneBits(~func_3() ^ u_input.b));
    return func_4(var_0, func_2(var_0.c.b.b.x, _wgslsmith_mod_u32(~u_input.c, _wgslsmith_mod_u32(u_input.e, u_input.e) >> ((1u << (u_input.c % 32u)) % 32u)), -1i, abs(countOneBits(~vec3<u32>(u_input.c, u_input.e, 1u))))).a;
}

fn func_5(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(max(func_1().a, arg_2.d.x)), arg_2.b, _wgslsmith_add_i32(1i, -46755i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_2.d, arg_2.d, arg_2.b.x))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.d.x, 1429f) * vec2<f32>(-1069f, 990f))), -u_input.d), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1052f - _wgslsmith_f_op_f32(f32(-1f) * -984f))), !func_2(select(arg_2.b.x, arg_2.b.x, true), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 1u, u_input.e, 1u), vec4<u32>(45094u, u_input.c, 0u, 48587u)), max(arg_2.c, arg_2.e.x), reverseBits(vec3<u32>(arg_1, u_input.e, u_input.c))).c.d.b, -12857i, vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.d.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2.a * 1000f)))), ~select(u_input.d, abs(vec3<i32>(arg_0.x, 13134i, -4067i)), arg_2.b.x)), any(arg_2.b), arg_2);
    var var_1 = var_0.a.c;
    var var_2 = ~(~(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.d.e.x, 1i, 2147483647i), max(var_0.a.e, var_0.a.e)) & ~func_2(var_0.d.b.x, 74469u, 0i, vec3<u32>(arg_1, arg_1, arg_1)).c.b.e));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(547f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.d.d.x, _wgslsmith_div_f32(-263f, arg_2.d.x))))), vec2<bool>(func_1().b.x, func_1().b.x), -61715i, var_0.d.d, firstLeadingBit(vec3<i32>(1i, _wgslsmith_add_i32(-1i, select(-1i, -55475i, false)), 28363i)));
    let var_4 = _wgslsmith_mod_u32(1u, ~(reverseBits(16515u) & max(min(u_input.e, u_input.e), arg_1)));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(abs(41089i) > ~u_input.a.x) | (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(424f))) < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-120f - _wgslsmith_f_op_f32(ceil(883f))), _wgslsmith_f_op_f32(ceil(-189f)))));
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1849f - 926f), _wgslsmith_f_op_f32(-266f - -1659f))))), vec2<bool>(all(vec2<bool>(true, true)) & false, var_0 & var_0), func_5(u_input.d.xz, u_input.c, func_1()), vec2<f32>(1f, 1f), select(-_wgslsmith_mod_vec3_i32(u_input.d & vec3<i32>(0i, u_input.b, 26359i), _wgslsmith_mod_vec3_i32(u_input.d, u_input.d)), u_input.d, any(vec4<bool>(!var_0, any(vec3<bool>(var_0, var_0, var_0)), func_4(Struct_3(var_0, -22371i, Struct_2(Struct_1(-1319f, vec2<bool>(var_0, false), u_input.a.x, vec2<f32>(-465f, -592f), vec3<i32>(u_input.d.x, u_input.a.x, u_input.d.x)), Struct_1(-2220f, vec2<bool>(var_0, var_0), u_input.a.x, vec2<f32>(-1353f, 1729f), u_input.d), var_0, Struct_1(681f, vec2<bool>(var_0, var_0), u_input.a.x, vec2<f32>(582f, -336f), u_input.d))), Struct_3(var_0, u_input.d.x, Struct_2(Struct_1(1000f, vec2<bool>(false, false), -12491i, vec2<f32>(-148f, 411f), vec3<i32>(u_input.d.x, u_input.a.x, u_input.a.x)), Struct_1(-707f, vec2<bool>(false, true), u_input.a.x, vec2<f32>(-1000f, 1691f), u_input.d), true, Struct_1(-332f, vec2<bool>(var_0, true), -1i, vec2<f32>(1927f, -780f), u_input.d)))).b.b.x, select(var_0, false, var_0)))));
    var var_2 = func_2(func_4(Struct_3(var_1.b.x, select(-22845i >> (u_input.e % 32u), var_1.c, true), Struct_2(Struct_1(514f, vec2<bool>(var_0, true), -6563i, var_1.d, vec3<i32>(var_1.c, u_input.d.x, var_1.c)), func_4(Struct_3(var_1.b.x, u_input.d.x, Struct_2(Struct_1(-402f, var_1.b, -2147483647i, vec2<f32>(var_1.d.x, var_1.a), vec3<i32>(-28482i, 26134i, var_1.e.x)), Struct_1(var_1.d.x, var_1.b, -2147483647i, vec2<f32>(var_1.a, -465f), u_input.d), true, Struct_1(-1107f, vec2<bool>(var_1.b.x, var_0), var_1.e.x, vec2<f32>(var_1.d.x, 1415f), vec3<i32>(var_1.c, var_1.c, 0i)))), Struct_3(var_1.b.x, var_1.e.x, Struct_2(Struct_1(720f, vec2<bool>(true, var_1.b.x), var_1.c, vec2<f32>(var_1.a, var_1.a), vec3<i32>(var_1.e.x, 2147483647i, var_1.c)), Struct_1(var_1.a, vec2<bool>(true, var_0), var_1.e.x, var_1.d, u_input.d), var_0, Struct_1(var_1.a, vec2<bool>(var_1.b.x, var_1.b.x), u_input.a.x, vec2<f32>(var_1.a, var_1.a), u_input.d)))).b, !var_0, func_4(Struct_3(false, -2147483647i, Struct_2(Struct_1(var_1.d.x, vec2<bool>(false, false), -36531i, var_1.d, var_1.e), Struct_1(1033f, vec2<bool>(true, var_0), var_1.e.x, vec2<f32>(var_1.d.x, var_1.d.x), u_input.d), true, Struct_1(var_1.a, var_1.b, var_1.e.x, vec2<f32>(var_1.a, 1513f), vec3<i32>(-12204i, 2147483647i, 20521i)))), Struct_3(var_1.b.x, -2147483647i, Struct_2(Struct_1(-919f, var_1.b, var_1.e.x, vec2<f32>(897f, var_1.a), vec3<i32>(var_1.c, 10964i, u_input.a.x)), Struct_1(-823f, var_1.b, var_1.c, var_1.d, u_input.d), true, Struct_1(1878f, vec2<bool>(var_1.b.x, false), var_1.c, vec2<f32>(var_1.d.x, 1163f), var_1.e)))).d)), Struct_3(!(var_1.b.x && var_1.b.x), -(var_1.c & var_1.c), Struct_2(func_4(Struct_3(var_1.b.x, var_1.c, Struct_2(Struct_1(-530f, vec2<bool>(var_1.b.x, var_0), -1i, var_1.d, u_input.d), Struct_1(790f, var_1.b, -41284i, var_1.d, u_input.d), var_0, Struct_1(-409f, var_1.b, var_1.c, vec2<f32>(var_1.a, var_1.d.x), vec3<i32>(8567i, var_1.c, 2147483647i)))), Struct_3(var_0, 1i, Struct_2(Struct_1(1000f, var_1.b, -27016i, vec2<f32>(-341f, var_1.a), u_input.d), Struct_1(-105f, vec2<bool>(true, false), -2147483647i, var_1.d, vec3<i32>(u_input.a.x, 2147483647i, 2147483647i)), var_0, Struct_1(var_1.d.x, var_1.b, var_1.c, vec2<f32>(-629f, 1215f), var_1.e)))).a, func_2(var_1.b.x, 1u, u_input.b, vec3<u32>(36360u, u_input.e, u_input.c)).c.b, true, func_2(false, 15938u, var_1.c, vec3<u32>(u_input.e, u_input.c, 62602u)).c.b))).d.b.x, _wgslsmith_div_u32(~countOneBits(0u), ~u_input.e), _wgslsmith_add_i32(var_1.c >> (51643u % 32u), -2147483647i), _wgslsmith_mod_vec3_u32(~_wgslsmith_div_vec3_u32(max(vec3<u32>(u_input.c, 4294967295u, 103303u), vec3<u32>(1u, u_input.c, 4294967295u)), ~vec3<u32>(u_input.c, 18350u, 1u)), abs(~vec3<u32>(u_input.e, 2462u, u_input.e)) >> (vec3<u32>(u_input.c, 1u, u_input.e) % vec3<u32>(32u)))).c;
    var_2 = Struct_2(var_2.b, func_4(func_2(true, firstTrailingBit(29592u), select(var_1.e.x << (0u % 32u), u_input.a.x & var_1.c, func_2(false, u_input.c, var_1.e.x, vec3<u32>(58721u, 41162u, 19532u)).c.c), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.e, u_input.e, u_input.c), ~vec3<u32>(u_input.e, u_input.e, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.e, u_input.e, 39548u), vec3<u32>(u_input.c, 31474u, 1u)))), Struct_3(var_1.b.x, -9818i, func_4(func_2(true, 89529u, 46416i, vec3<u32>(15292u, 1u, 37323u)), func_2(false, u_input.c, 5855i, vec3<u32>(22066u, 1u, 35643u))))).a, false, Struct_1(-607f, var_2.b.b, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(-var_1.e, var_1.e | u_input.d), -_wgslsmith_div_i32(var_1.c, 0i)), _wgslsmith_f_op_vec2_f32(-var_1.d), -countOneBits(-vec3<i32>(17049i, var_2.b.e.x, -2147483647i))));
    let var_3 = func_4(Struct_3(var_1.b.x, func_2(!any(vec4<bool>(var_0, false, var_0, false)), u_input.c, _wgslsmith_mod_i32(func_3(), 1i), _wgslsmith_mod_vec3_u32(max(vec3<u32>(4294967295u, u_input.e, 4294967295u), vec3<u32>(u_input.e, u_input.e, u_input.c)), vec3<u32>(73749u, 7992u, 1u))).c.a.e.x, func_2(all(func_1().b), 4294967295u, var_1.c, _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.e, 0u), vec3<u32>(11845u, u_input.c, u_input.c), vec3<u32>(8795u, u_input.e, 38703u))).c), Struct_3(!(true | !var_1.b.x), 9984i, func_4(func_2(func_2(false, 56063u, var_2.d.c, vec3<u32>(49918u, 1u, 51098u)).a, u_input.e, firstTrailingBit(25817i), countOneBits(vec3<u32>(u_input.e, u_input.c, u_input.c))), func_2(var_1.b.x, firstLeadingBit(4294967295u), var_2.d.c, abs(vec3<u32>(u_input.e, 0u, u_input.c)))))).a;
    var var_4 = 854f;
    var var_5 = vec3<bool>(var_2.a.b.x, true, func_4(func_2(var_3.b.x, max(u_input.c, ~u_input.c), select(0i, ~var_1.c, func_4(Struct_3(var_1.b.x, 1i, Struct_2(Struct_1(-1957f, var_1.b, var_2.a.c, var_3.d, var_2.d.e), var_3, var_1.b.x, Struct_1(1094f, vec2<bool>(true, true), -22941i, vec2<f32>(var_2.b.a, var_1.a), vec3<i32>(1i, var_2.a.c, var_3.e.x)))), Struct_3(var_0, 2147483647i, Struct_2(Struct_1(-316f, vec2<bool>(false, true), 2147483647i, vec2<f32>(769f, -779f), u_input.d), var_2.d, false, Struct_1(var_2.a.a, vec2<bool>(var_3.b.x, false), u_input.b, vec2<f32>(-737f, var_3.a), var_3.e)))).d.b.x), vec3<u32>(u_input.e | u_input.e, select(u_input.c, u_input.c, true), 4294967295u)), func_2(false, _wgslsmith_dot_vec3_u32(vec3<u32>(107071u, u_input.c, u_input.c), select(vec3<u32>(u_input.e, u_input.e, u_input.e), vec3<u32>(57745u, 1u, u_input.c), false)), -(~u_input.b), vec3<u32>(u_input.c, max(u_input.e, 4294967295u), 1u))).c);
    let x = u_input.a;
    s_output = StorageBuffer(min(vec4<u32>(4294967295u, _wgslsmith_add_u32(firstLeadingBit(u_input.c), ~0u), ~4294967295u, min(~u_input.e, u_input.e)), _wgslsmith_div_vec4_u32(vec4<u32>(~u_input.c, u_input.e, 44813u, u_input.e >> (0u % 32u)), abs(vec4<u32>(50666u, u_input.e, u_input.c, 0u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-566f * _wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_f32(floor(1403f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -603f), -344f))), func_3());
}

