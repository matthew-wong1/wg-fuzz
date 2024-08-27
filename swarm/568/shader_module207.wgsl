struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: i32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec4<i32>, 21> = array<vec4<i32>, 21>(vec4<i32>(0i, -11823i, 0i, -13468i), vec4<i32>(36504i, 41583i, 0i, -1i), vec4<i32>(-31702i, -38560i, -21460i, -608i), vec4<i32>(0i, 2147483647i, 29531i, i32(-2147483648)), vec4<i32>(5615i, 89916i, 2147483647i, -1i), vec4<i32>(2147483647i, -12650i, 0i, 2147483647i), vec4<i32>(i32(-2147483648), 2147483647i, -27383i, -1358i), vec4<i32>(62937i, -1i, 78355i, -1i), vec4<i32>(2147483647i, 0i, 2147483647i, -34742i), vec4<i32>(-30688i, -7867i, 0i, -1i), vec4<i32>(1i, 2147483647i, -40628i, -29746i), vec4<i32>(-25630i, 12609i, -1i, 34843i), vec4<i32>(1i, -3502i, 2147483647i, -29032i), vec4<i32>(i32(-2147483648), i32(-2147483648), 14820i, 2147483647i), vec4<i32>(15574i, 1i, i32(-2147483648), -12572i), vec4<i32>(26695i, 1i, 0i, 2147483647i), vec4<i32>(0i, 1i, -13820i, 40771i), vec4<i32>(8622i, -20458i, 8469i, 6135i), vec4<i32>(-63985i, -1i, -9329i, 1i), vec4<i32>(i32(-2147483648), i32(-2147483648), -36215i, 12272i), vec4<i32>(35642i, -41879i, 60737i, -3057i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1567f * -1473f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1243f, 387f, false)), _wgslsmith_f_op_f32(495f + -573f), false))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -236f), _wgslsmith_f_op_f32(1058f - -408f))))) != -2087f;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1401f, -384f, -852f, -350f) + vec4<f32>(1286f, -937f, 476f, -1011f))))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(238f, -1337f, 1044f, -557f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-151f, 1000f, 392f, -1000f) + vec4<f32>(-1309f, -277f, -2311f, -1083f))))))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(571f, -741f, -821f, -2448f) + vec4<f32>(1006f, -781f, 841f, 153f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1547f, 648f, 1541f, 1213f)) - vec4<f32>(-799f, 1309f, 693f, 1185f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 304f, -444f, -1000f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2015f, -1000f, -116f, 1969f) + vec4<f32>(-201f, 1688f, -629f, 2467f)))))));
    var var_2 = Struct_1(~_wgslsmith_mod_vec3_u32(vec3<u32>(6831u, _wgslsmith_mod_u32(1u, u_input.a), _wgslsmith_mult_u32(u_input.a, 197u)), vec3<u32>(6531u, _wgslsmith_dot_vec4_u32(vec4<u32>(57237u, 12208u, u_input.a, 0u), vec4<u32>(0u, u_input.a, u_input.a, 1u)), 1u)), 60062u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.x * -2572f))))), -3215i, vec3<i32>(-_wgslsmith_div_i32(select(-9045i, -16057i, false), i32(-1i) * -2147483647i), -(~(-2147483647i)), firstTrailingBit(_wgslsmith_mult_i32(33499i, ~(-1i)))));
    global1 = array<vec4<i32>, 21>();
    var_2 = Struct_1(firstLeadingBit(~firstTrailingBit(vec3<u32>(u_input.a, 74181u, 15806u))), ~(var_2.b | var_2.b), var_1.x, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(abs(-2147483647i), -var_2.e.x, ~var_2.e.x)), vec3<i32>(9349i, ~(-44230i), -(~(-2147483647i)))), _wgslsmith_mult_vec3_i32(var_2.e, -vec3<i32>(-2147483647i, min(-12610i, 23615i), -var_2.e.x)));
    return -757f;
}

fn func_2() -> Struct_1 {
    global1 = array<vec4<i32>, 21>();
    global0 = -962f;
    let var_0 = ~vec2<u32>(u_input.a, ~(~8415u));
    global0 = _wgslsmith_f_op_f32(func_3());
    var var_1 = true;
    return Struct_1(~(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, var_0.x, u_input.a), vec3<u32>(0u, var_0.x, 47853u), vec3<u32>(69439u, 0u, u_input.a)) << ((vec3<u32>(54928u, u_input.a, u_input.a) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u))) >> (_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, 35611u, var_0.x), vec3<u32>(var_0.x, 70360u, reverseBits(4294967295u))) % vec3<u32>(32u)), 26542u, -1139f, _wgslsmith_add_i32(~(-45922i) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 2741u, u_input.a, var_0.x), select(vec4<u32>(1u, u_input.a, 70510u, 0u), vec4<u32>(u_input.a, u_input.a, 0u, 4294967295u), false)) % 32u), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-1498i, 2147483647i, -33398i)), vec3<i32>(-1i, -1i, -7814i) >> (vec3<u32>(u_input.a, u_input.a, 38324u) % vec3<u32>(32u))) ^ _wgslsmith_div_i32(-1i, countOneBits(-1i))), abs(firstLeadingBit(~vec3<i32>(-2147483647i, 0i, 2147483647i))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_3) -> bool {
    var var_0 = arg_1.e.x;
    global1 = array<vec4<i32>, 21>();
    let var_1 = Struct_1(arg_3.a.a, ~arg_1.b, arg_3.a.c, select(arg_1.d, -2147483647i, arg_3.c.x), ~arg_3.a.e);
    var var_2 = select(~(~vec2<u32>(arg_2, var_1.a.x << (var_1.b % 32u))), arg_0, true);
    let var_3 = Struct_1(func_2().a, 1u, 504f, -(_wgslsmith_add_i32(-var_1.e.x, _wgslsmith_mult_i32(arg_3.b, var_1.d)) | 1i), vec3<i32>(~firstTrailingBit(-arg_3.b), 2147483647i, arg_1.d));
    return any(!vec4<bool>(true || (arg_3.c.x && arg_3.c.x), arg_3.c.x, false, true));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: bool) -> bool {
    var var_0 = !all(vec4<bool>(any(vec4<bool>(arg_1.x, true, false, true)), func_4(arg_2.zx & arg_2.zz, func_2(), 1u, Struct_3(Struct_1(arg_2, arg_2.x, -1271f, 175i, arg_0.a.e), arg_0.a.d, vec3<bool>(arg_1.x, false, true))), false, (arg_3 | false) | arg_1.x));
    var var_1 = select(select(select(select(!vec4<bool>(arg_1.x, true, false, false), vec4<bool>(false, arg_1.x, false, true), !arg_1.x), select(vec4<bool>(arg_1.x, true, false, true), !vec4<bool>(true, true, false, arg_1.x), vec4<bool>(arg_1.x, arg_3, false, arg_1.x)), select(true, !arg_3, true)), vec4<bool>(false, true, _wgslsmith_div_f32(-1115f, arg_0.a.c) != -1000f, _wgslsmith_div_f32(arg_0.b.x, arg_0.b.x) != _wgslsmith_f_op_f32(f32(-1f) * -130f)), vec4<bool>(any(!vec4<bool>(true, arg_1.x, arg_3, true)), true, !(!arg_1.x), u_input.a <= ~1u)), select(select(!select(vec4<bool>(false, arg_1.x, true, false), vec4<bool>(arg_3, arg_3, false, false), vec4<bool>(false, true, false, arg_1.x)), !vec4<bool>(arg_3, true, arg_3, true), vec4<bool>(func_4(arg_0.a.a.xx, arg_0.a, 31470u, Struct_3(Struct_1(vec3<u32>(59593u, 26035u, 54177u), 4294967295u, 355f, 0i, vec3<i32>(arg_0.a.e.x, arg_0.a.e.x, 28346i)), arg_0.a.e.x, vec3<bool>(true, true, arg_1.x))), all(vec2<bool>(false, arg_1.x)), 1u == u_input.a, 1u >= arg_2.x)), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), false), select(vec4<bool>(arg_3, arg_1.x, arg_1.x, arg_3), vec4<bool>(arg_1.x, true, false, arg_1.x), false), all(vec2<bool>(true, true))), select(!(!vec4<bool>(arg_3, false, arg_3, arg_3)), !select(vec4<bool>(true, arg_3, arg_3, arg_3), vec4<bool>(true, arg_1.x, arg_3, arg_3), vec4<bool>(arg_1.x, true, false, arg_3)), !vec4<bool>(true, arg_3, arg_3, true))), !vec4<bool>(arg_3, true, true, false));
    let var_2 = Struct_2(Struct_1(~vec3<u32>(min(17527u, u_input.a), _wgslsmith_sub_u32(arg_2.x, 4294967295u), ~arg_2.x), _wgslsmith_mult_u32(~max(arg_2.x, arg_0.a.b), _wgslsmith_clamp_u32(4294967295u << (arg_2.x % 32u), u_input.a, ~1u)), arg_0.b.x, ~(~select(-38100i, 0i, arg_1.x)), arg_0.a.e), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.a.c, 393f))));
    global1 = array<vec4<i32>, 21>();
    let var_3 = countOneBits(-2147483647i);
    return !(var_1.x & true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(abs(-1192f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(771f, -309f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(996f + -177f), -1231f)))));
    global1 = array<vec4<i32>, 21>();
    var var_1 = select(!vec4<bool>(false, all(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true)), true), select(vec4<bool>(abs(32417u) == u_input.a, func_1(Struct_2(Struct_1(vec3<u32>(7073u, 50057u, 4294967295u), u_input.a, -1144f, -1i, vec3<i32>(-14076i, -9499i, -1i)), vec2<f32>(614f, 357f)), select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec3<u32>(u_input.a, 0u, 4294967295u), vec3<u32>(41756u, 4294967295u, 0u), false), true), true, ~4294967295u >= u_input.a), select(vec4<bool>(all(vec3<bool>(true, false, true)), select(false, true, false), false, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), true)), vec4<bool>(any(vec4<bool>(true, false, true, false)), all(vec4<bool>(true, false, false, false)), false, false)), vec4<bool>(any(vec4<bool>(true, true, true, true)), false, !(52139u <= u_input.a), all(vec2<bool>(false, false)))), vec4<bool>(func_1(Struct_2(func_2(), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0, var_0), vec2<f32>(var_0, var_0)))), !select(vec2<bool>(false, false), vec2<bool>(false, true), true), (vec3<u32>(1u, u_input.a, 0u) ^ vec3<u32>(u_input.a, 0u, u_input.a)) >> (~vec3<u32>(1u, 101384u, 53305u) % vec3<u32>(32u)), true), func_1(Struct_2(Struct_1(vec3<u32>(13181u, 4625u, 0u), u_input.a, 493f, -1i, vec3<i32>(5163i, 2147483647i, -40562i)), vec2<f32>(626f, var_0)), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), ~vec3<u32>(u_input.a, 24973u, 50092u) ^ select(vec3<u32>(1u, u_input.a, 1u), vec3<u32>(u_input.a, u_input.a, 26196u), vec3<bool>(true, true, false)), true), true, select(_wgslsmith_f_op_f32(-var_0) <= _wgslsmith_div_f32(var_0, 1224f), func_4(vec2<u32>(4110u, 4294967295u) | vec2<u32>(u_input.a, u_input.a), func_2(), _wgslsmith_mult_u32(1u, u_input.a), Struct_3(Struct_1(vec3<u32>(u_input.a, u_input.a, 1u), u_input.a, var_0, -1i, vec3<i32>(11312i, 51304i, 2147483647i)), 12405i, vec3<bool>(false, false, false))), false)));
    let var_2 = vec2<bool>(false, true);
    var_1 = !vec4<bool>(1i >= _wgslsmith_dot_vec2_i32(select(vec2<i32>(-56913i, -2147483647i), vec2<i32>(2147483647i, -22743i), var_1.x), vec2<i32>(1i, 2147483647i)), (!var_2.x && (u_input.a <= 0u)) & select(true, false, any(vec4<bool>(var_1.x, false, false, false))), ~_wgslsmith_clamp_u32(1u, 32106u, 0u) != 8514u, true);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(250f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))), 45375i, vec2<i32>(~_wgslsmith_add_i32(i32(-1i) * -2615i, 1i), -23549i), firstTrailingBit(_wgslsmith_mult_i32(-abs(-2147483647i), -16980i >> (countOneBits(u_input.a) % 32u))), -2147483647i);
}

