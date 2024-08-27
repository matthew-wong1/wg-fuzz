struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: i32, arg_3: vec2<bool>) -> vec4<bool> {
    var var_0 = _wgslsmith_mult_vec3_u32(arg_0.b, vec3<u32>(23439u, arg_0.c.x, ~(~arg_0.a) << (arg_0.d.x % 32u)));
    var_0 = arg_0.b;
    var var_1 = any(select(!vec3<bool>(true, false, arg_3.x), select(!select(vec3<bool>(true, arg_3.x, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(arg_3.x, true, true), true), !select(select(vec3<bool>(true, true, arg_3.x), vec3<bool>(arg_3.x, arg_3.x, arg_3.x), arg_3.x), vec3<bool>(true, true, true), select(vec3<bool>(false, arg_3.x, false), vec3<bool>(true, arg_3.x, arg_3.x), false))));
    let var_2 = countOneBits(vec4<i32>(-68407i >> (var_0.x % 32u), -(~0i) >> (~var_0.x % 32u), arg_2, _wgslsmith_clamp_i32(select(-arg_1.x, arg_1.x, arg_3.x), _wgslsmith_dot_vec4_i32(-vec4<i32>(21223i, arg_1.x, arg_1.x, 5622i), vec4<i32>(7396i, -37251i, u_input.a, 14298i)), _wgslsmith_dot_vec2_i32(arg_1, vec2<i32>(-27488i, arg_1.x)))));
    let var_3 = !vec2<bool>(arg_3.x, false);
    return !select(!(!vec4<bool>(true, var_3.x, false, var_3.x)), vec4<bool>(arg_3.x & false, !(!arg_3.x), true, true), select(vec4<bool>(arg_3.x | true, false, arg_2 == -1i, arg_3.x), vec4<bool>(arg_3.x, select(var_3.x, true, false), !arg_3.x, true), (false && arg_3.x) && true));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> f32 {
    var var_0 = vec3<u32>(arg_1.c.x, _wgslsmith_div_u32(_wgslsmith_mod_u32(~arg_1.a & arg_1.b.x, 1u), 76007u), 1u);
    var var_1 = -vec4<i32>(-(~u_input.a), -2147483647i, u_input.a, select(1i, _wgslsmith_div_i32(-648i, 1i), all(arg_0.xyw))) ^ vec4<i32>(26692i, ~_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 16732i, u_input.a), vec3<i32>(3314i, u_input.a, 2147483647i)), vec3<i32>(u_input.a, 33370i, 2147483647i)), reverseBits(~u_input.a), u_input.a);
    var_0 = reverseBits(_wgslsmith_add_vec3_u32(arg_1.b, max(arg_1.b, vec3<u32>(~1u, firstTrailingBit(0u), firstLeadingBit(1u)))));
    var_1 = vec4<i32>(26671i, abs(reverseBits(_wgslsmith_div_i32(2147483647i, u_input.a))), u_input.a, -12486i) ^ ~vec4<i32>(1i, min(_wgslsmith_mult_i32(2147483647i, u_input.a), u_input.a), 27211i, _wgslsmith_dot_vec3_i32(var_1.yzy, var_1.wxz));
    var var_2 = 1i;
    return _wgslsmith_f_op_f32(f32(-1f) * -358f);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(783f, 537f, -1066f, 1088f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(275f, -1000f, 1215f, 304f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-616f, -1038f, -452f, -517f), vec4<f32>(1746f, -144f, 781f, 1006f), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true))))));
    let var_1 = _wgslsmith_f_op_f32(func_4(func_3(Struct_1(~36226u, ~vec3<u32>(1u, 1u, 1u), ~(~vec2<u32>(54169u, 1u)), vec2<u32>(50301u, _wgslsmith_clamp_u32(58104u, 4905u, 41172u))), -vec2<i32>(firstLeadingBit(u_input.a), _wgslsmith_mod_i32(-2147483647i, u_input.a)), -2147483647i, select(vec2<bool>(false, select(false, true, false)), select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(false, true), true))), Struct_1(26147u, ~vec3<u32>(1u, 1u, 1u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 1u))));
    let var_2 = Struct_1(~_wgslsmith_clamp_u32(1u, ~78278u, 1u) << (_wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, 4294967295u, 33791u), vec4<u32>(4294967295u, 32101u, 32715u, 3455u))), vec4<u32>(71886u, _wgslsmith_mod_u32(77381u, 4294967295u), 30571u, _wgslsmith_dot_vec4_u32(vec4<u32>(17391u, 12430u, 18424u, 1u), vec4<u32>(0u, 99209u, 4294967295u, 4294967295u)))) % 32u), ~vec3<u32>(1u, 1u, 1u), ~vec2<u32>(4294967295u, abs(0u)), vec2<u32>(countOneBits(1u), ~4294967295u >> (firstLeadingBit(1u) % 32u)));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), 1029f)) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(406f, var_1, -216f, -786f) + vec4<f32>(913f, var_1, -669f, -402f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_1, -1332f, -1108f))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)), _wgslsmith_div_f32(363f, var_1), 1000f, -915f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 334f, 168f, -630f) + vec4<f32>(var_1, var_1, var_1, 1461f)), true)))));
    var var_3 = var_0.yy;
    return var_2;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<i32>, arg_3: bool) -> bool {
    let var_0 = vec4<u32>(_wgslsmith_div_u32(arg_1.x, 1u), _wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(4294967295u, arg_1.x, arg_1.x)), ~vec3<u32>(0u, 80853u, arg_1.x)), arg_0.c.x, arg_0.c.x) ^ ~arg_1;
    var var_1 = func_2();
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))))));
    var var_3 = arg_0;
    let var_4 = var_2.x;
    return !arg_3;
}

fn func_1() -> vec2<u32> {
    var var_0 = !func_5(func_2(), abs(vec4<u32>(1u, 1u, 1u, 1u)), vec4<i32>(u_input.a, abs(min(u_input.a, u_input.a)), u_input.a, _wgslsmith_add_i32(abs(u_input.a), 0i)), true);
    var var_1 = !select(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), false), func_3(Struct_1(20756u, vec3<u32>(1u, 11415u, 32652u), vec2<u32>(4294967295u, 27877u), vec2<u32>(0u, 0u)), vec2<i32>(u_input.a, -52794i), u_input.a, vec2<bool>(false, false)), func_3(Struct_1(61871u, vec3<u32>(1u, 1u, 1u), vec2<u32>(4294967295u, 40256u), vec2<u32>(1u, 0u)), vec2<i32>(2147483647i, u_input.a), u_input.a, vec2<bool>(true, true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true), !(!func_3(Struct_1(4294967295u, vec3<u32>(4294967295u, 0u, 71955u), vec2<u32>(1u, 24639u), vec2<u32>(53086u, 0u)), vec2<i32>(u_input.a, u_input.a), 14835i, vec2<bool>(true, true))));
    var_1 = vec4<bool>((var_1.x | true) && (all(vec2<bool>(true, var_1.x)) == all(!var_1.yyz)), !(true != (_wgslsmith_dot_vec2_i32(vec2<i32>(-17603i, 24888i), vec2<i32>(u_input.a, u_input.a)) <= u_input.a)), func_5(func_2(), firstLeadingBit(firstTrailingBit(vec4<u32>(0u, 4922u, 0u, 25760u))), vec4<i32>(14086i, u_input.a, reverseBits(-u_input.a), _wgslsmith_div_i32(1i, u_input.a)), func_3(func_2(), -(~vec2<i32>(u_input.a, u_input.a)), -2147483647i, vec2<bool>(false, var_1.x)).x), select(false, !any(!vec4<bool>(var_1.x, false, true, true)), all(vec3<bool>(!var_1.x, var_1.x, any(vec3<bool>(false, false, true))))));
    var_0 = all(var_1.zx);
    var_1 = vec4<bool>(any(select(vec4<bool>(true, true, true, var_1.x), !vec4<bool>(false, var_1.x, true, true), true)) && select(select(false, true || var_1.x, var_1.x & var_1.x), all(!vec4<bool>(var_1.x, var_1.x, var_1.x, true)), false), !var_1.x, false, 34660i != -(~_wgslsmith_clamp_i32(2147483647i, 1i, u_input.a)));
    return ~(~vec2<u32>(1u, 1u));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, ~1i, u_input.a, _wgslsmith_mult_i32(u_input.a, 0i)), vec4<i32>(u_input.a, ~u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(64661i, u_input.a, 1i), vec3<i32>(u_input.a, 59549i, u_input.a)), _wgslsmith_clamp_i32(u_input.a, 0i, u_input.a))), reverseBits(abs(u_input.a))), -42725i);
    let var_1 = vec3<bool>(_wgslsmith_mod_u32(min(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_1.c.x), arg_1.c), firstTrailingBit(6439u)), _wgslsmith_sub_u32(~arg_1.b.x, ~43003u)) > 1426u, any(vec2<bool>(true, any(func_3(arg_1, vec2<i32>(u_input.a, var_0), -1i, vec2<bool>(false, false))))), !(!(!select(true, true, false))));
    let var_2 = arg_1;
    var var_3 = -min(-2147483647i, 2147483647i);
    let var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1000f))));
    return false || !(-max(0i, var_0) != select(48025i, -1i, func_5(arg_0, vec4<u32>(19169u, 29372u, arg_0.c.x, 79076u), vec4<i32>(u_input.a, 1i, u_input.a, -37689i), var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!func_6(Struct_1(reverseBits(4294967295u), vec3<u32>(18255u, 0u, 88297u), vec2<u32>(54818u, 4294967295u), ~vec2<u32>(1u, 0u)), Struct_1(62561u, ~vec3<u32>(78253u, 65093u, 0u), func_1(), vec2<u32>(1u, 1u))));
    var var_1 = select(!vec4<bool>(true, false, func_3(func_2(), min(vec2<i32>(-16042i, 51808i), vec2<i32>(u_input.a, u_input.a)), u_input.a, vec2<bool>(true, true)).x, true), !func_3(Struct_1(~1u, ~vec3<u32>(7256u, 0u, 90205u), vec2<u32>(9449u, 4294967295u), ~vec2<u32>(67193u, 109621u)), vec2<i32>(abs(u_input.a), u_input.a ^ -1i), _wgslsmith_div_i32(12600i, select(29973i, 0i, true)), select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(false, true))), true);
    var var_2 = Struct_1(2375u, min(abs(select(vec3<u32>(1u, 4294967295u, 20046u), vec3<u32>(0u, 1u, 1u), var_1.x)) << (vec3<u32>(_wgslsmith_mult_u32(34785u, 19647u), _wgslsmith_div_u32(35847u, 29099u), 66479u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(8025u, ~10886u, _wgslsmith_dot_vec3_u32(vec3<u32>(21596u, 1u, 0u), vec3<u32>(0u, 1u, 0u))), ~abs(vec3<u32>(41845u, 36371u, 37324u)))), ~(_wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(60844u, 63839u)), vec2<u32>(0u, 1u), ~vec2<u32>(36444u, 0u)) << (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))), ~_wgslsmith_mod_vec2_u32(max(vec2<u32>(70121u, 50681u), vec2<u32>(15012u, 1u)) >> (min(vec2<u32>(50130u, 0u), vec2<u32>(0u, 33979u)) % vec2<u32>(32u)), vec2<u32>(1u, 1u)));
    var var_3 = max(firstLeadingBit(~vec4<u32>(1u, 28257u, var_2.b.x, var_2.a)), (vec4<u32>(0u, var_2.b.x, 15814u, var_2.b.x) ^ vec4<u32>(22417u, 1u, var_2.d.x, 4294967295u)) | _wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, var_2.c.x, var_2.a, 1u), ~vec4<u32>(5214u, 0u, 1u, var_2.c.x))) << (reverseBits(vec4<u32>(~(~var_2.c.x), abs(_wgslsmith_div_u32(4294967295u, var_2.d.x)), (12650u >> (var_2.b.x % 32u)) & ~var_2.a, ~(~var_2.a))) % vec4<u32>(32u));
    var var_4 = vec2<i32>(abs(1i) >> (_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(49764u, 1u, var_3.x, 1u)), select(vec4<u32>(21405u, var_3.x, var_2.c.x, 37021u), vec4<u32>(var_2.d.x, var_2.b.x, 40077u, var_2.b.x), vec4<bool>(var_1.x, var_1.x, true, true))), _wgslsmith_dot_vec4_u32(max(vec4<u32>(var_2.c.x, var_2.a, 45025u, var_2.d.x), vec4<u32>(1u, var_3.x, 50274u, 44308u)), ~vec4<u32>(1u, 1u, var_2.a, var_3.x)), max(~4294967295u, 20306u)) % 32u), u_input.a);
    var var_5 = func_2();
    let var_6 = func_2();
    let var_7 = Struct_1(4294967295u | ~_wgslsmith_mult_u32(~0u, _wgslsmith_mod_u32(4294967295u, var_5.c.x)), ~vec3<u32>(1u, func_2().a ^ 4294967295u, var_6.d.x), _wgslsmith_mult_vec2_u32(var_5.b.zy, abs(_wgslsmith_mod_vec2_u32(~var_2.c, ~var_5.c))), var_2.b.zy);
    let x = u_input.a;
    s_output = StorageBuffer(max(var_5.d, vec2<u32>(var_6.b.x, _wgslsmith_dot_vec3_u32(var_3.yxw, vec3<u32>(var_2.b.x, var_7.b.x, var_6.b.x)))), _wgslsmith_sub_i32(-(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(var_4.x, var_4.x))), _wgslsmith_mod_i32(select(u_input.a, -22758i, var_1.x), reverseBits(-32531i)) ^ var_4.x), select(~(~reverseBits(vec2<i32>(var_4.x, -2147483647i))), abs(vec2<i32>(firstTrailingBit(u_input.a), _wgslsmith_mod_i32(-2147483647i, var_4.x))), false), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-496f + -587f), _wgslsmith_f_op_f32(f32(-1f) * -241f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1742f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-519f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1136f), _wgslsmith_f_op_f32(f32(-1f) * -1636f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1175f * 728f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1161f - _wgslsmith_f_op_f32(step(-172f, -1925f))) - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(937f, 412f), _wgslsmith_div_f32(1331f, -861f))))));
}

