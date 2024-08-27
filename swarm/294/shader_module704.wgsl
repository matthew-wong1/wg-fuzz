struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> i32 {
    let var_0 = Struct_3(Struct_1(6660i), vec2<u32>(_wgslsmith_add_u32(1u, _wgslsmith_sub_u32(4294967295u, 1u)) << (reverseBits(~4294967295u) % 32u), 4294967295u), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-572f + _wgslsmith_f_op_f32(f32(-1f) * -284f))), vec3<u32>(abs(~1u), ~reverseBits(4294967295u), (9836u << (0u % 32u)) | _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 4294967295u, 38185u), vec4<u32>(58541u, 38212u, 0u, 10097u))), Struct_1(-(-38734i << (1u % 32u))), firstTrailingBit(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(23184u, 19815u, 66103u, 4294967295u)), firstTrailingBit(vec4<u32>(4294967295u, 39103u, 4294967295u, 56058u)))), Struct_1(u_input.a)));
    var var_1 = _wgslsmith_mod_vec4_i32(~firstLeadingBit(vec4<i32>(u_input.a, 29777i, var_0.a.a, var_0.a.a) << (vec4<u32>(1u, 38347u, var_0.c.b.x, 0u) % vec4<u32>(32u))) >> (firstLeadingBit(firstTrailingBit(vec4<u32>(var_0.b.x, 4294967295u, var_0.b.x, var_0.b.x)) & _wgslsmith_div_vec4_u32(vec4<u32>(var_0.c.b.x, 0u, 52360u, 0u), vec4<u32>(65720u, var_0.b.x, var_0.c.b.x, 25472u))) % vec4<u32>(32u)), min(vec4<i32>(-2147483647i, -countOneBits(var_0.c.c.a), reverseBits(~u_input.a), -3738i), _wgslsmith_div_vec4_i32(vec4<i32>(-5496i, _wgslsmith_mod_i32(var_0.c.c.a, 2147483647i), max(var_0.c.e.a, -1i), var_0.c.e.a | -14750i), reverseBits(vec4<i32>(-2147483647i, var_0.c.c.a, -24886i, 13135i)) >> (abs(vec4<u32>(20956u, var_0.b.x, var_0.b.x, var_0.b.x)) % vec4<u32>(32u)))));
    let var_2 = var_0.c.c;
    var_1 = vec4<i32>(-u_input.a, 1i, max(select(abs(1i), 1i, u_input.a != (var_0.c.e.a | -19662i)), ~1i), _wgslsmith_sub_i32(_wgslsmith_div_i32(select(38612i, -1i, false), 40115i), countOneBits(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(24718i, var_1.x), vec2<i32>(var_0.c.e.a, -2147483647i)), _wgslsmith_sub_i32(var_1.x, -2147483647i), _wgslsmith_mod_i32(var_0.c.c.a, -2147483647i)))));
    var_1 = firstLeadingBit(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, 59542i, u_input.a, -34467i), _wgslsmith_sub_vec4_i32(vec4<i32>(var_2.a, -2147483647i, var_0.c.e.a, var_2.a), vec4<i32>(u_input.a, 0i, var_1.x, var_2.a))), ~(~vec4<i32>(var_2.a, var_2.a, var_2.a, u_input.a)))) | vec4<i32>(var_1.x, u_input.a, var_1.x, _wgslsmith_clamp_i32(~u_input.a, abs(_wgslsmith_sub_i32(var_0.c.c.a, var_0.c.e.a)), -(var_1.x ^ var_2.a)));
    return ~1i;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<bool>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_dot_vec2_i32(min(vec2<i32>(arg_0.x, _wgslsmith_mod_i32(-2147483647i, 62986i)), -(arg_0 << (vec2<u32>(36446u, 16348u) % vec2<u32>(32u)))), -(~_wgslsmith_mod_vec2_i32(arg_0, arg_0))));
    return func_3();
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: bool, arg_3: vec4<i32>) -> i32 {
    let var_0 = _wgslsmith_dot_vec3_u32(max(~(~vec3<u32>(arg_1.b.x, 1u, 0u)), abs(firstTrailingBit(vec3<u32>(8512u, 0u, 4294967295u))) >> (abs(vec3<u32>(arg_1.c.b.x, arg_1.c.b.x, 47363u)) % vec3<u32>(32u))), max(_wgslsmith_mod_vec3_u32(arg_1.c.b, arg_1.c.b), ~arg_1.c.b));
    let var_1 = _wgslsmith_f_op_f32(sign(arg_1.c.a));
    var var_2 = false;
    let var_3 = Struct_3(arg_1.c.e, arg_1.b << (_wgslsmith_clamp_vec2_u32(arg_1.b << (vec2<u32>(arg_1.c.d, arg_1.b.x) % vec2<u32>(32u)), vec2<u32>(~1u, _wgslsmith_mod_u32(0u, arg_1.b.x)), countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(var_0, 57939u), arg_1.c.b.xy))) % vec2<u32>(32u)), Struct_2(-287f, ~arg_1.c.b, arg_1.a, var_0, Struct_1(reverseBits(max(12204i, -18719i)))));
    var_2 = arg_2;
    return 1i;
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<bool>((_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(45024u, 1u), vec2<u32>(27327u, 4294967295u)), ~4294967295u) | 11176u) != 1u, false & !any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true))), ~_wgslsmith_mod_i32(~u_input.a, u_input.a) == min(~u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 46025i), vec2<i32>(-7912i, u_input.a)) & ~(-1i)), true);
    var var_1 = _wgslsmith_mod_i32(_wgslsmith_add_i32(func_4(_wgslsmith_f_op_f32(f32(-1f) * -808f), Struct_3(Struct_1(-1769i), vec2<u32>(17930u, 1u), Struct_2(1000f, vec3<u32>(19056u, 27849u, 1u), Struct_1(u_input.a), 58910u, Struct_1(1i))), _wgslsmith_dot_vec2_u32(vec2<u32>(47089u, 4294967295u), vec2<u32>(17145u, 24399u)) <= ~1u, vec4<i32>(u_input.a, min(u_input.a, u_input.a), ~u_input.a, func_2(vec2<i32>(-30239i, 2147483647i), vec4<bool>(var_0.x, false, var_0.x, true)))), ~u_input.a ^ u_input.a), -53949i);
    var_1 = u_input.a;
    var_0 = vec4<bool>(true, _wgslsmith_mod_i32(~_wgslsmith_sub_i32(-1i, u_input.a), u_input.a) <= -1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * -1081f), _wgslsmith_f_op_f32(ceil(1000f)))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(2143f))))) >= _wgslsmith_f_op_f32(f32(-1f) * -969f), !any(select(var_0.yw, select(var_0.wz, vec2<bool>(true, var_0.x), false), true)));
    var_0 = !(!select(!vec4<bool>(var_0.x, true, var_0.x, var_0.x), !(!vec4<bool>(true, var_0.x, var_0.x, false)), true));
    return Struct_1(-29912i >> (max(firstTrailingBit(1014u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(86183u, 23165u, 23565u, 5308u), vec4<u32>(47092u, 1u, 4294967295u, 11763u)) % 32u), 1u) % 32u));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = vec2<bool>(false, select(!(!all(vec4<bool>(true, false, true, true))), false, false));
    var var_1 = !(!vec2<bool>(false, select(true, false, true) | false));
    var var_2 = arg_0;
    var_0 = vec2<bool>(any(!(!select(vec4<bool>(false, var_1.x, false, var_0.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_0.x, var_1.x, true, var_1.x)))), !all(!(!vec4<bool>(false, false, false, var_0.x))));
    var_0 = vec2<bool>(var_0.x, !any(!vec3<bool>(var_0.x, var_0.x, false)));
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_1(u_input.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 48804u), vec2<u32>(1u, 0u)), firstLeadingBit(1u)), vec2<u32>(1u, 1u), ~vec2<u32>(1u, 1u)), func_5(Struct_3(Struct_1(u_input.a | u_input.a), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1195u, 4294967295u), vec4<u32>(1u, 7254u, 4294967295u, 1u)), 1u), Struct_2(_wgslsmith_f_op_f32(-928f - -281f), ~vec3<u32>(1u, 5434u, 1u), Struct_1(-37476i), _wgslsmith_mult_u32(1u, 1u), func_1())), min(~vec3<u32>(28669u, 49620u, 39058u) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(26804u, 34943u, 1u), vec3<u32>(1u, 18507u, 1u), vec3<u32>(30878u, 11356u, 8200u)) % vec3<u32>(32u)), ~vec3<u32>(1u, 5662u, 72298u))));
    let var_1 = var_0.c.c;
    var var_2 = func_5(Struct_3(func_1(), _wgslsmith_add_vec2_u32(~var_0.b, abs(vec2<u32>(var_0.c.b.x, 38826u))), func_5(Struct_3(Struct_1(22467i), vec2<u32>(var_0.b.x, var_0.b.x), Struct_2(988f, vec3<u32>(var_0.b.x, var_0.b.x, var_0.b.x), var_1, var_0.b.x, Struct_1(u_input.a))), var_0.c.b << (~vec3<u32>(43799u, var_0.b.x, var_0.c.b.x) % vec3<u32>(32u)))), _wgslsmith_mult_vec3_u32(var_0.c.b, _wgslsmith_sub_vec3_u32(select(var_0.c.b, vec3<u32>(8599u, 9039u, var_0.b.x), false) | select(var_0.c.b, vec3<u32>(var_0.c.b.x, 1u, var_0.c.d), true), var_0.c.b)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_2.a))))), var_0.c.a, _wgslsmith_f_op_f32(var_0.c.a - _wgslsmith_f_op_f32(-161f * -595f)), _wgslsmith_f_op_f32(f32(-1f) * -1215f)));
    var var_4 = vec3<bool>(!(!select(var_2.b.x != var_0.c.d, any(vec3<bool>(false, false, false)), any(vec4<bool>(true, false, true, true)))), true, false);
    var var_5 = -(~(-_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, var_0.c.c.a) & vec2<i32>(u_input.a, -15425i), vec2<i32>(-42616i, -1i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(vec2<u32>(var_2.d, var_0.b.x), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 9854u), _wgslsmith_add_vec2_u32(var_2.b.xx, var_2.b.zy), var_0.c.b.yx)), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_div_i32(var_5.x, var_2.e.a) >> (~var_2.d % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.e.a, var_2.c.a, var_1.a), ~vec3<i32>(-2147483647i, var_2.c.a, var_1.a)), min(~u_input.a, 1i)), vec3<i32>(_wgslsmith_mult_i32(-var_2.c.a, ~var_5.x), var_5.x & var_1.a, var_0.a.a), ~(vec3<i32>(0i, var_0.a.a, -43180i) >> (var_2.b % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(abs(var_3.xwy)));
}

