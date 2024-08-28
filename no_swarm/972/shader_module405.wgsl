struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec2<bool>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: bool,
    e: vec2<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: Struct_3) -> bool {
    let var_0 = abs(arg_2.zyy);
    var var_1 = ~vec3<u32>(17978u, arg_0.b, _wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(arg_0.b), arg_1.b), ~vec2<u32>(var_0.x, u_input.a)));
    var var_2 = arg_3.c;
    var_1 = ~_wgslsmith_div_vec3_u32(~abs(~vec3<u32>(20946u, arg_0.b, var_1.x)), arg_2.xyz);
    var var_3 = vec2<i32>(-_wgslsmith_mult_i32(1i, max(arg_3.a.c, ~33657i)), var_2.a.x);
    return var_2.d;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_4(select(vec4<bool>(true, true, func_3(Struct_4(vec4<bool>(false, false, false, true), 1u), Struct_4(vec4<bool>(true, true, true, false), u_input.a), vec4<u32>(1u, 4294967295u, u_input.a, 16181u), Struct_3(Struct_2(vec3<bool>(false, false, true), -1000f, 1i), u_input.a, Struct_1(vec3<i32>(14656i, -1i, 2147483647i), 1i, vec2<bool>(false, false), false, vec4<f32>(-355f, -581f, -1161f, -261f)), false, vec2<u32>(u_input.a, 1u))), true), vec4<bool>(true, true, true, func_3(Struct_4(vec4<bool>(true, true, false, true), u_input.a), Struct_4(vec4<bool>(true, true, true, true), u_input.a), vec4<u32>(u_input.a, 4294967295u, 93334u, 4294967295u) >> (vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u) % vec4<u32>(32u)), Struct_3(Struct_2(vec3<bool>(true, false, true), -291f, 25233i), u_input.a, Struct_1(vec3<i32>(2147483647i, -25738i, 46207i), -2147483647i, vec2<bool>(false, true), true, vec4<f32>(-1669f, 1495f, 882f, -1180f)), false, vec2<u32>(u_input.a, u_input.a)))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false)), true), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false)))), ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a, 0u) ^ _wgslsmith_add_u32(0u, 0u), u_input.a));
    let var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-3116f - -555f), -645f, true)) + _wgslsmith_f_op_f32(max(148f, _wgslsmith_f_op_f32(select(-1219f, -102f, var_0.a.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-965f, _wgslsmith_f_op_f32(f32(-1f) * -967f))), _wgslsmith_f_op_f32(f32(-1f) * -464f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-246f - 418f))))));
    var var_2 = ~(~select(~(~vec2<u32>(4294967295u, u_input.a)), vec2<u32>(firstLeadingBit(4294967295u), _wgslsmith_mod_u32(4294967295u, u_input.a)), var_0.a.x));
    var_2 = abs(~(~(~vec2<u32>(u_input.a, u_input.a)) >> ((abs(vec2<u32>(0u, var_2.x)) ^ countOneBits(vec2<u32>(var_0.b, var_2.x))) % vec2<u32>(32u))));
    let var_3 = ~(~(~_wgslsmith_mod_u32(~25738u, _wgslsmith_div_u32(var_0.b, 45992u))));
    return Struct_2(var_0.a.wxw, var_1.x, -36312i);
}

fn func_1(arg_0: bool, arg_1: f32) -> Struct_4 {
    var var_0 = Struct_3(func_2(), u_input.a, Struct_1(firstTrailingBit(vec3<i32>(_wgslsmith_sub_i32(-1i, -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, 25382i), vec3<i32>(-2147483647i, -3229i, 7169i)), ~2147483647i)), func_2().c, func_2().a.zx, false || any(!vec4<bool>(arg_0, arg_0, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1, 150f, -826f, _wgslsmith_f_op_f32(abs(arg_1)))))), arg_0, ~vec2<u32>(u_input.a, u_input.a));
    var var_1 = abs(~80300u);
    var_0 = Struct_3(func_2(), _wgslsmith_add_u32(var_0.b, ~(~select(0u, var_0.b, true))), var_0.c, true && arg_0, vec2<u32>(4294967295u, ~(~_wgslsmith_clamp_u32(u_input.a, u_input.a, var_0.b))));
    let var_2 = true;
    let var_3 = var_2;
    return Struct_4(vec4<bool>(var_0.d, !(!(true || var_3)), var_3, var_0.b >= 44862u), var_0.b);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(-183f, 809f)), -1000f)))) + vec2<f32>(-1878f, -409f));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + 1176f) * _wgslsmith_f_op_f32(trunc(-128f)))) + var_0.x) + 384f);
    let var_2 = arg_3.xx;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_3 = arg_1;
    return func_2();
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<f32>) -> vec3<u32> {
    let var_0 = ~(vec3<u32>(_wgslsmith_mult_u32(countOneBits(52190u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 55815u, 4294967295u), vec3<u32>(25908u, u_input.a, 66147u))), ~u_input.a, countOneBits(u_input.a) << (~u_input.a % 32u)) | vec3<u32>(10025u, func_1(false, -138f).b, ~(~u_input.a)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.b)) + arg_3.x));
    var var_2 = Struct_3(arg_2, _wgslsmith_sub_u32(49221u, firstTrailingBit(var_0.x)) >> (u_input.a % 32u), Struct_1(vec3<i32>(-23440i, -arg_1.c & 1i, -(~arg_1.c)), _wgslsmith_mult_i32(~_wgslsmith_mod_i32(arg_1.c, 1i), arg_2.c), func_2().a.xz, func_3(func_1(all(arg_0), arg_2.b), func_1(all(arg_1.a), arg_1.b), ~vec4<u32>(var_0.x, 0u, u_input.a, 6851u), Struct_3(func_4(vec4<u32>(var_0.x, 25517u, 1u, 36544u), Struct_4(arg_0, 17206u), arg_0, vec3<i32>(arg_1.c, -12191i, arg_1.c)), 0u, Struct_1(vec3<i32>(arg_2.c, 38896i, arg_2.c), arg_2.c, vec2<bool>(arg_1.a.x, arg_0.x), arg_2.a.x, vec4<f32>(-873f, arg_3.x, -667f, arg_2.b)), any(arg_1.a.yz), ~var_0.yy)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_1.b * arg_1.b), _wgslsmith_f_op_f32(f32(-1f) * -813f), 2346f, -2037f))), !all(select(func_2().a.xx, !arg_1.a.yx, true)), ~(_wgslsmith_add_vec2_u32(max(vec2<u32>(1u, 4294967295u), var_0.yy), ~var_0.xx) & countOneBits(var_0.yy)));
    var_1 = 509f;
    var var_3 = var_2.c;
    return select(~select(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(74755u, 1151u, 4294967295u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(60822u, 34686u, var_0.x), vec3<u32>(var_0.x, 73566u, 13324u)), _wgslsmith_sub_vec3_u32(vec3<u32>(20286u, var_0.x, u_input.a), var_0)), vec3<u32>(u_input.a, var_0.x, var_0.x), func_4(vec4<u32>(26998u, 0u, 4294967295u, var_2.b), func_1(true, -1212f), select(vec4<bool>(true, false, arg_1.a.x, arg_2.a.x), arg_0, false), vec3<i32>(arg_2.c, -18340i, 70194i)).a), firstTrailingBit(vec3<u32>(_wgslsmith_div_u32(countOneBits(var_0.x), select(0u, u_input.a, var_2.d)), 0u << (_wgslsmith_mult_u32(12199u, u_input.a) % 32u), abs(8344u))), var_2.a.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(!select(select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(false, true, true, true)), func_4(~max(vec4<u32>(u_input.a, u_input.a, u_input.a, 69520u), vec4<u32>(16767u, 33049u, 27172u, 4294967295u)) | vec4<u32>(max(1u, 4294967295u), u_input.a, min(u_input.a, u_input.a), u_input.a), func_1(any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), _wgslsmith_f_op_f32(floor(-542f))), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), true), vec3<i32>(~_wgslsmith_sub_i32(-1i, 1i), -20891i, ~0i)), func_2(), vec4<f32>(419f, _wgslsmith_f_op_f32(max(func_2().b, _wgslsmith_f_op_f32(sign(-205f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-672f)), 322f)) - 302f), func_2().b));
    var var_1 = func_4(~vec4<u32>(~94320u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(4294967295u, 27432u, 61408u)) ^ var_0.x, 45911u, 0u), Struct_4(vec4<bool>(true, true, false, true), ~(~(~29254u))), vec4<bool>(true, func_4(~vec4<u32>(var_0.x, 4294967295u, var_0.x, var_0.x), Struct_4(vec4<bool>(false, false, true, false), var_0.x), vec4<bool>(true, true, true, false), vec3<i32>(7753i, -1281i, -1i)).c <= (-28243i << (_wgslsmith_div_u32(65564u, var_0.x) % 32u)), true, false), ~abs(-vec3<i32>(1i, 1i, 1i))).a.x;
    var var_2 = _wgslsmith_dot_vec3_u32(select(~vec3<u32>(~u_input.a, u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 4294967295u, var_0.x, 0u), vec4<u32>(u_input.a, 96187u, var_0.x, u_input.a))), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(32214u, u_input.a), var_0.yx), ~99835u, 2814u), !vec3<bool>(func_2().a.x, true, true)), firstTrailingBit(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(27092u, 72918u, 0u)) << ((vec3<u32>(var_0.x, u_input.a, u_input.a) >> (vec3<u32>(4294967295u, var_0.x, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_clamp_u32(43473u, var_0.x, 4294967295u), 122788u, var_0.x >> (var_0.x % 32u)), vec3<u32>(24186u, u_input.a >> (1u % 32u), 1u))));
    var_2 = u_input.a;
    let var_3 = !vec4<bool>(false, true, false, !func_2().a.x);
    var var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_mult_u32(u_input.a, 1u), _wgslsmith_add_u32(6755u & var_0.x, func_1(false, -301f).b) & ~select(15852u, 16062u, var_3.x)));
}

