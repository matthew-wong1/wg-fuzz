struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: vec4<f32>, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-arg_2.yw);
    var var_1 = arg_3;
    let var_2 = vec2<f32>(-883f, var_0.x);
    var_1 = Struct_1(countOneBits(min(10444u, u_input.b.x)));
    var_1 = arg_3;
    return firstTrailingBit(_wgslsmith_add_vec3_i32(min(countOneBits(~vec3<i32>(u_input.a, u_input.c, u_input.c)), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(u_input.c, u_input.c, u_input.a)), -vec3<i32>(2147483647i, u_input.c, -2147483647i))), countOneBits(min(firstTrailingBit(vec3<i32>(u_input.c, u_input.a, -15725i)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, -1195i, -2147483647i), vec3<i32>(0i, u_input.c, u_input.a))))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: i32) -> vec4<u32> {
    var var_0 = ~u_input.d;
    var_0 = vec4<u32>(~var_0.x >> (var_0.x % 32u), ~var_0.x, u_input.d.x, ~abs(~(~var_0.x)));
    var_0 = abs(max(~_wgslsmith_add_vec4_u32(u_input.d, u_input.d), (vec4<u32>(22301u, u_input.b.x, 0u, 26922u) << (vec4<u32>(var_0.x, var_0.x, 67217u, 4294967295u) % vec4<u32>(32u))) << (~u_input.d % vec4<u32>(32u)))) >> (firstTrailingBit(vec4<u32>(~_wgslsmith_div_u32(var_0.x, u_input.d.x), _wgslsmith_clamp_u32(~13613u, countOneBits(u_input.b.x), _wgslsmith_dot_vec4_u32(u_input.d, u_input.d)), firstLeadingBit(~19724u), 50127u)) % vec4<u32>(32u));
    var var_1 = select(all(select(!vec4<bool>(true, global1.x, true, global1.x), vec4<bool>(true, global1.x, all(vec4<bool>(global0.x, false, false, global0.x)), true), true != !global0.x)), true, false);
    let var_2 = global0.x;
    return _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(firstTrailingBit(_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, var_0.x, 16038u, var_0.x), u_input.d << (vec4<u32>(1u, 11976u, 1u, 0u) % vec4<u32>(32u)))), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, _wgslsmith_dot_vec2_u32(var_0.zz, var_0.yy), u_input.b.x, 1u), max(~vec4<u32>(1u, var_0.x, 14873u, var_0.x), ~vec4<u32>(var_0.x, 1u, var_0.x, 4294967295u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(11515u, 1u, 1u, var_0.x), vec4<u32>(1u, u_input.d.x, 4294967295u, var_0.x), u_input.d)), _wgslsmith_mult_vec4_u32(u_input.d ^ vec4<u32>(0u, u_input.d.x, var_0.x, 0u), vec4<u32>(var_0.x, 47354u, 4294967295u, var_0.x) ^ vec4<u32>(var_0.x, 1u, u_input.d.x, 1u)) << (vec4<u32>(u_input.d.x, _wgslsmith_div_u32(63946u, 30960u), u_input.b.x, 61513u) % vec4<u32>(32u))), u_input.d, u_input.d);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>) -> bool {
    var var_0 = u_input.d.xz;
    var var_1 = func_4(func_3(arg_0, !vec3<bool>(!global1.x, true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1047f, arg_0, arg_0, 1522f) + vec4<f32>(arg_0, arg_0, arg_0, arg_0))))), arg_1), ~(-(~max(vec3<i32>(44912i, -14145i, u_input.a), vec3<i32>(u_input.c, -83400i, 45751i)))), 0i >> ((~_wgslsmith_mult_u32(58523u, var_0.x) >> (11844u % 32u)) % 32u));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0));
    let var_3 = arg_1;
    var var_4 = max(-select(-_wgslsmith_mult_i32(u_input.a, -15139i), 1i, any(!vec4<bool>(global1.x, true, global1.x, global1.x))), ~_wgslsmith_div_i32(-14715i, u_input.a));
    return all(vec3<bool>(global1.x, true, global1.x));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec3<bool>, arg_3: vec2<bool>) -> i32 {
    var var_0 = vec3<bool>(select(arg_3.x, !(arg_3.x && arg_2.x), true) & (all(!vec3<bool>(false, arg_3.x, global1.x)) && global1.x), false | arg_2.x, select(func_2(_wgslsmith_f_op_f32(f32(-1f) * -700f), Struct_1(reverseBits(443u)), vec3<u32>(1u, 27376u, 0u) | vec3<u32>(arg_0.a, 36498u, 4294967295u)), ((u_input.b.x > 1u) | true) == false, true));
    global1 = global0.yy;
    var var_1 = 523f;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -143f) + -477f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(2445f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1841f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -164f) - _wgslsmith_f_op_f32(f32(-1f) * -557f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1140f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1696f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-765f, -2385f)) + 101f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2258f)) - _wgslsmith_f_op_f32(f32(-1f) * -299f))));
    var var_3 = var_2.x;
    return u_input.a;
}

fn func_5(arg_0: i32) -> Struct_1 {
    let var_0 = 511f;
    var var_1 = -reverseBits(arg_0);
    var var_2 = vec3<u32>(74059u, u_input.b.x, ~(~1u >> (_wgslsmith_add_u32(max(u_input.d.x, 62199u), firstLeadingBit(41792u)) % 32u)));
    global0 = select(vec3<bool>(true, true, true), vec3<bool>(any(select(!vec4<bool>(false, global0.x, global1.x, false), select(vec4<bool>(global1.x, true, global1.x, true), vec4<bool>(global0.x, false, true, true), global0.x), true || global1.x)), true, any(!(!vec4<bool>(true, global0.x, global1.x, true)))), true);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(abs(var_0)), 1f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 1458f) * vec2<f32>(546f, -345f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0, -1000f))))) - vec2<f32>(var_0, _wgslsmith_f_op_f32(var_0 + var_0)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-821f, var_0, true)), 1000f) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0, -125f))))));
    return Struct_1(_wgslsmith_div_u32(u_input.d.x << (_wgslsmith_clamp_u32(min(1u, u_input.d.x), func_4(vec3<i32>(9365i, 0i, arg_0), vec3<i32>(u_input.a, 2147483647i, -3625i), -1i).x, 15895u ^ u_input.b.x) % 32u), func_4(vec3<i32>(2147483647i, func_1(Struct_1(u_input.b.x), arg_0, vec3<bool>(true, false, false), vec2<bool>(global1.x, false)), 1i), vec3<i32>(~arg_0, _wgslsmith_mod_i32(-1i, -1i), u_input.a), _wgslsmith_mod_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -22532i, 40750i), vec3<i32>(arg_0, -9308i, -1i)))).x));
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_1 {
    global1 = !select(global0.xz, select(select(global0.xy, select(global0.xx, vec2<bool>(false, global0.x), false), !global0.yy), !global0.zx, true || any(global0.zz)), false);
    let var_0 = vec4<u32>(u_input.d.x, min(~(~9405u), _wgslsmith_add_u32(4294967295u, arg_1.a)) | u_input.b.x, 0u, ~84291u);
    let var_1 = arg_1;
    var var_2 = 0i >> ((var_0.x << (~19286u % 32u)) % 32u);
    let var_3 = func_5(u_input.c);
    return func_5(_wgslsmith_mult_i32(1i, -(arg_0.x << (~u_input.d.x % 32u))));
}

fn func_7(arg_0: Struct_1) -> Struct_1 {
    global0 = !(!select(!select(vec3<bool>(global0.x, true, global1.x), vec3<bool>(global0.x, global1.x, global1.x), vec3<bool>(global1.x, false, global1.x)), select(!vec3<bool>(global1.x, false, true), !vec3<bool>(global0.x, global1.x, global1.x), select(vec3<bool>(global0.x, false, global1.x), vec3<bool>(global1.x, global1.x, false), vec3<bool>(false, false, true))), select(vec3<bool>(true, false, false), select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(global0.x, global1.x, global0.x), true), select(vec3<bool>(false, global0.x, global1.x), vec3<bool>(false, global1.x, global0.x), false))));
    let var_0 = func_1(arg_0, u_input.c, !(!vec3<bool>(true, global0.x, global0.x)), vec2<bool>(!all(vec4<bool>(true, global1.x, global0.x, global0.x)), all(vec2<bool>(false, global0.x)))) ^ -(i32(-1i) * -33275i);
    var var_1 = func_5(var_0);
    var var_2 = vec3<bool>(global1.x, true, true);
    global0 = select(select(select(vec3<bool>(-15175i > var_0, var_2.x, !global1.x), !vec3<bool>(true, global1.x, global0.x), all(!vec3<bool>(var_2.x, global1.x, false))), !(!select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(false, true, false))), vec3<bool>(var_2.x, any(select(vec4<bool>(var_2.x, global0.x, global1.x, global1.x), vec4<bool>(global1.x, false, global0.x, global0.x), false)), false)), !vec3<bool>(any(!vec4<bool>(false, false, global1.x, global1.x)), all(!vec4<bool>(global1.x, global0.x, false, global0.x)), global1.x), vec3<bool>(true, true, true));
    return func_6(func_3(1f, select(select(select(vec3<bool>(true, true, var_2.x), vec3<bool>(global0.x, true, var_2.x), vec3<bool>(global0.x, false, global1.x)), select(vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(global1.x, false, global1.x), var_2.x), !vec3<bool>(true, global1.x, global0.x)), !select(vec3<bool>(false, true, false), vec3<bool>(false, global1.x, var_2.x), false), all(vec3<bool>(false, false, var_2.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-307f, 763f, 140f, 425f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2188f, -514f, 589f, -787f))), vec4<f32>(1861f, _wgslsmith_f_op_f32(1340f * 623f), _wgslsmith_f_op_f32(floor(1124f)), _wgslsmith_f_op_f32(f32(-1f) * -965f)), all(select(vec2<bool>(global0.x, global1.x), vec2<bool>(var_2.x, false), var_2.x)))), Struct_1(abs(90633u))).zx, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(firstLeadingBit(vec2<i32>(1i, -1i)), func_5(func_1(Struct_1(4294967295u), u_input.a, vec3<bool>(false, false, global0.x), global0.zx))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-369f)) * 625f);
    global0 = select(select(vec3<bool>(global0.x, abs(u_input.c) == ~(-2147483647i), true), select(!vec3<bool>(global1.x, true, global0.x), select(select(vec3<bool>(global0.x, false, true), vec3<bool>(global1.x, true, global1.x), true), select(vec3<bool>(global1.x, false, global0.x), vec3<bool>(global0.x, false, false), global1.x), select(vec3<bool>(false, false, true), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global1.x, global0.x, global1.x))), false), !vec3<bool>(global0.x, true, global1.x && global0.x)), vec3<bool>((u_input.c >= u_input.a) != global1.x, true, true), !select(select(select(vec3<bool>(false, global1.x, true), vec3<bool>(false, global0.x, global1.x), vec3<bool>(false, true, false)), select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(false, global0.x, global1.x), vec3<bool>(global1.x, global1.x, global0.x)), global1.x), vec3<bool>(!global0.x, any(vec4<bool>(global1.x, global0.x, global1.x, global1.x)), -2147483647i < u_input.a), _wgslsmith_mod_i32(-25535i, -1i) > countOneBits(u_input.c)));
    var var_2 = func_6(-vec2<i32>(-u_input.c, i32(-1i) * -14450i) | (func_3(_wgslsmith_f_op_f32(-666f - -2845f), vec3<bool>(true, true, global1.x), vec4<f32>(var_1, var_1, -889f, 491f), Struct_1(14339u)).yz << (max(vec2<u32>(28113u, u_input.d.x), vec2<u32>(u_input.b.x, u_input.d.x)) % vec2<u32>(32u))), var_0);
    global1 = vec2<bool>(false, global0.x);
    let var_3 = vec2<u32>(firstLeadingBit(2079u) << (1u % 32u), var_0.a);
    let var_4 = !(!(!(global0.x & any(vec3<bool>(false, global0.x, global1.x)))));
    global0 = vec3<bool>(!(!(true | global0.x) == true), true, var_4 || true);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-587f, _wgslsmith_f_op_f32(select(-1864f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_1)), _wgslsmith_f_op_f32(sign(-1910f)))), !all(vec3<bool>(global1.x, global0.x, global1.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1691f - var_1), _wgslsmith_f_op_f32(-299f - var_1)), -502f)), -1040f), var_1);
}

