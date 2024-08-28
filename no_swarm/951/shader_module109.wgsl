struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(Struct_1(vec2<i32>(2147483647i, 2147483647i), -16308i), Struct_1(vec2<i32>(9626i, i32(-2147483648)), -9056i), Struct_1(vec2<i32>(4935i, 57543i), 7768i), Struct_1(vec2<i32>(2147483647i, -1i), i32(-2147483648)), Struct_1(vec2<i32>(-21135i, 0i), 0i)), Struct_2(Struct_1(vec2<i32>(-1i, i32(-2147483648)), 0i), Struct_1(vec2<i32>(i32(-2147483648), 1i), -11683i), Struct_1(vec2<i32>(-1i, 8896i), 2922i), Struct_1(vec2<i32>(-20846i, 10510i), 2147483647i), Struct_1(vec2<i32>(-1560i, 30384i), 0i)), Struct_2(Struct_1(vec2<i32>(-31362i, -16031i), i32(-2147483648)), Struct_1(vec2<i32>(4448i, 69840i), 2147483647i), Struct_1(vec2<i32>(-5000i, 0i), 1i), Struct_1(vec2<i32>(-59004i, 2147483647i), -4296i), Struct_1(vec2<i32>(-6238i, i32(-2147483648)), -19458i)), Struct_2(Struct_1(vec2<i32>(11873i, 67827i), 28676i), Struct_1(vec2<i32>(63978i, i32(-2147483648)), -48778i), Struct_1(vec2<i32>(i32(-2147483648), 8840i), 2147483647i), Struct_1(vec2<i32>(0i, -17626i), 75495i), Struct_1(vec2<i32>(8318i, 7507i), i32(-2147483648))), Struct_2(Struct_1(vec2<i32>(26705i, -32546i), 19999i), Struct_1(vec2<i32>(-1i, 91675i), 25408i), Struct_1(vec2<i32>(-1i, 54185i), -18860i), Struct_1(vec2<i32>(-7066i, 0i), -1i), Struct_1(vec2<i32>(4018i, 20030i), 1i)), Struct_2(Struct_1(vec2<i32>(-1i, i32(-2147483648)), -46892i), Struct_1(vec2<i32>(-1i, -3416i), -47088i), Struct_1(vec2<i32>(1799i, -1i), -71827i), Struct_1(vec2<i32>(1i, 1i), 0i), Struct_1(vec2<i32>(14495i, 1i), 0i)), Struct_2(Struct_1(vec2<i32>(0i, -1i), 0i), Struct_1(vec2<i32>(i32(-2147483648), 1i), i32(-2147483648)), Struct_1(vec2<i32>(2147483647i, -51394i), i32(-2147483648)), Struct_1(vec2<i32>(34179i, -1i), 0i), Struct_1(vec2<i32>(24265i, -41902i), i32(-2147483648))), Struct_2(Struct_1(vec2<i32>(32763i, -1i), 1i), Struct_1(vec2<i32>(i32(-2147483648), -17057i), 39378i), Struct_1(vec2<i32>(-21840i, i32(-2147483648)), i32(-2147483648)), Struct_1(vec2<i32>(-25758i, -1i), i32(-2147483648)), Struct_1(vec2<i32>(0i, 1i), 0i)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 19010i), 1i), Struct_1(vec2<i32>(-10571i, i32(-2147483648)), -39193i), Struct_1(vec2<i32>(0i, i32(-2147483648)), 0i), Struct_1(vec2<i32>(37147i, 1i), -6464i), Struct_1(vec2<i32>(-32470i, 1i), -37577i)), Struct_2(Struct_1(vec2<i32>(-20284i, 58561i), 1i), Struct_1(vec2<i32>(2147483647i, -64559i), 57780i), Struct_1(vec2<i32>(1i, 30176i), 2147483647i), Struct_1(vec2<i32>(i32(-2147483648), -10978i), -1i), Struct_1(vec2<i32>(1i, 44495i), 1i)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -16530i), 1i), Struct_1(vec2<i32>(348i, -8313i), -57280i), Struct_1(vec2<i32>(49372i, 46012i), 40126i), Struct_1(vec2<i32>(2147483647i, -1i), -1i), Struct_1(vec2<i32>(0i, i32(-2147483648)), 1i)), Struct_2(Struct_1(vec2<i32>(59813i, 45028i), 0i), Struct_1(vec2<i32>(2147483647i, -28044i), i32(-2147483648)), Struct_1(vec2<i32>(1i, 64380i), 82517i), Struct_1(vec2<i32>(0i, 15229i), -19012i), Struct_1(vec2<i32>(2147483647i, -55071i), -1i)), Struct_2(Struct_1(vec2<i32>(8498i, -36494i), -3492i), Struct_1(vec2<i32>(51206i, -65360i), 10977i), Struct_1(vec2<i32>(-27250i, 1i), -30582i), Struct_1(vec2<i32>(8487i, -14558i), 4022i), Struct_1(vec2<i32>(-6893i, 64938i), -1i)), Struct_2(Struct_1(vec2<i32>(2147483647i, -1i), -6565i), Struct_1(vec2<i32>(1i, -10299i), -1i), Struct_1(vec2<i32>(33426i, 64881i), 53804i), Struct_1(vec2<i32>(0i, 11815i), -1i), Struct_1(vec2<i32>(17665i, 2147483647i), 15181i)), Struct_2(Struct_1(vec2<i32>(2147483647i, 36592i), -10847i), Struct_1(vec2<i32>(-8193i, i32(-2147483648)), -27255i), Struct_1(vec2<i32>(-3048i, 54138i), 12960i), Struct_1(vec2<i32>(-1i, 2299i), -12574i), Struct_1(vec2<i32>(i32(-2147483648), -52519i), -7916i)), Struct_2(Struct_1(vec2<i32>(-39962i, -1i), i32(-2147483648)), Struct_1(vec2<i32>(i32(-2147483648), 0i), 0i), Struct_1(vec2<i32>(-1i, 0i), 0i), Struct_1(vec2<i32>(-348i, 2147483647i), -80707i), Struct_1(vec2<i32>(-35650i, -6534i), 2147483647i)), Struct_2(Struct_1(vec2<i32>(24076i, -1i), -1i), Struct_1(vec2<i32>(15281i, 6149i), 2147483647i), Struct_1(vec2<i32>(91105i, 1i), 0i), Struct_1(vec2<i32>(i32(-2147483648), 4988i), -2047i), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), -1i)), Struct_2(Struct_1(vec2<i32>(1i, 0i), -34640i), Struct_1(vec2<i32>(1i, -36315i), -1078i), Struct_1(vec2<i32>(i32(-2147483648), -53605i), -3085i), Struct_1(vec2<i32>(2147483647i, 2147483647i), 15386i), Struct_1(vec2<i32>(-66014i, 1042i), -21799i)), Struct_2(Struct_1(vec2<i32>(-1i, 10368i), 21514i), Struct_1(vec2<i32>(-38707i, -9040i), 10347i), Struct_1(vec2<i32>(i32(-2147483648), 37416i), -24875i), Struct_1(vec2<i32>(-13700i, -41267i), i32(-2147483648)), Struct_1(vec2<i32>(0i, 1i), 74903i)));

var<private> global1: Struct_1 = Struct_1(vec2<i32>(11984i, -1i), 2147483647i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<i32>) -> vec2<bool> {
    return !select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true)), vec2<bool>(true, true)), (u_input.a | reverseBits(arg_0.x)) > 19667u);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: vec2<bool>) -> Struct_1 {
    global1 = Struct_1(vec2<i32>(global1.b ^ abs(countOneBits(global1.a.x)), 9100i), 1i);
    global0 = array<Struct_2, 19>();
    var var_0 = all(arg_1);
    let var_1 = Struct_2(Struct_1(global1.a, global1.a.x), Struct_1(firstTrailingBit(~vec2<i32>(global1.b, 0i)), 1i & global1.b), Struct_1(vec2<i32>(global1.b, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-1197i, -83024i, global1.b), vec3<i32>(-1i, global1.a.x, global1.b)), ~vec3<i32>(-29944i, 0i, 59536i))), abs(48264i)), Struct_1(vec2<i32>(1i, 1i), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(-2147483647i, 0i, global1.a.x, 56791i), -vec4<i32>(global1.b, -29914i, -2147483647i, global1.b)), select(vec4<i32>(global1.b, global1.a.x, -28851i, global1.b), _wgslsmith_div_vec4_i32(vec4<i32>(0i, -8340i, 27598i, global1.a.x), vec4<i32>(global1.b, 25959i, global1.a.x, global1.b)), true))), Struct_1(vec2<i32>(-(global1.b | global1.b), select(_wgslsmith_div_i32(global1.a.x, global1.b), ~global1.a.x, true)), countOneBits(abs(~(-1i)))));
    global1 = Struct_1(~reverseBits(var_1.a.a), 1i);
    return var_1.a;
}

fn func_1(arg_0: Struct_2) -> vec3<i32> {
    global0 = array<Struct_2, 19>();
    global0 = array<Struct_2, 19>();
    var var_0 = (vec3<i32>(-1i) * -reverseBits(vec3<i32>(1i, global1.b, -2147483647i))) ^ vec3<i32>(i32(-1i) * -24907i, ~(-37045i), ~arg_0.d.b);
    global1 = func_3(firstLeadingBit(~_wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(39897u, 4294967295u, 51557u)), vec3<u32>(u_input.a, u_input.a, 19818u))), !vec4<bool>(false, true, false, !all(vec3<bool>(true, true, true))), select(select(func_2(vec2<u32>(4294967295u, u_input.a) | vec2<u32>(50697u, u_input.a), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, global1.b, var_0.x, -2147483647i), vec4<i32>(2147483647i, 27147i, arg_0.e.a.x, arg_0.b.b))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), func_2(min(vec2<u32>(u_input.a, 29827u), vec2<u32>(20732u, u_input.a)), ~vec4<i32>(arg_0.e.a.x, var_0.x, global1.b, arg_0.d.b))), select(vec2<bool>(all(vec3<bool>(false, true, true)), true), vec2<bool>(true, true), vec2<bool>(func_2(vec2<u32>(u_input.a, u_input.a), vec4<i32>(arg_0.a.a.x, var_0.x, var_0.x, 1i)).x, all(vec4<bool>(false, false, false, false)))), true));
    var var_1 = arg_0.a.b & var_0.x;
    return vec3<i32>(-1i) * -(max(~vec3<i32>(-42811i, 0i, var_0.x), -vec3<i32>(59726i, var_0.x, 2147483647i)) >> (vec3<u32>(max(u_input.a, u_input.a), 4294967295u, 53922u & u_input.a) % vec3<u32>(32u)));
}

fn func_4(arg_0: vec3<i32>, arg_1: u32) -> Struct_1 {
    global0 = array<Struct_2, 19>();
    let var_0 = global0[_wgslsmith_index_u32(reverseBits(max(_wgslsmith_mod_u32(~14439u, max(arg_1, 68779u)), _wgslsmith_sub_u32(1u, 1u) ^ arg_1)) << (0u % 32u), 19u)];
    global1 = Struct_1(func_3(~(~vec3<u32>(4294967295u, arg_1, arg_1) << (_wgslsmith_mod_vec3_u32(vec3<u32>(40127u, u_input.a, 64547u), vec3<u32>(41895u, 1u, 18231u)) % vec3<u32>(32u))), vec4<bool>(_wgslsmith_sub_u32(u_input.a, 33441u) >= 52720u, true, true, func_2(vec2<u32>(3150u, 0u), vec4<i32>(0i, 64857i, -2147483647i, 23464i)).x & false), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), !select(vec2<bool>(true, true), vec2<bool>(false, false), true), true)).a, 2147483647i);
    global0 = array<Struct_2, 19>();
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-650f + 1578f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-454f, 258f))))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-656f)))), any(vec3<bool>(false, true, true)) | true)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-962f))), _wgslsmith_f_op_f32(641f + _wgslsmith_f_op_f32(abs(-338f))))));
    return var_0.a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(~(~(~u_input.a)), ~(~u_input.a)), 19u)];
    var var_1 = select(select(vec4<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), func_2(~vec2<u32>(u_input.a, u_input.a), vec4<i32>(-2147483647i, arg_1.a.b, 19315i, 2147483647i) << (vec4<u32>(18297u, 1u, u_input.a, 0u) % vec4<u32>(32u))).x, all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false)), true), vec4<bool>(false, true, false, _wgslsmith_f_op_f32(-464f - 1000f) <= _wgslsmith_f_op_f32(sign(-1469f))), vec4<bool>(true, func_2(select(vec2<u32>(u_input.a, 1221u), vec2<u32>(u_input.a, 54844u), true), vec4<i32>(-2147483647i, arg_1.c.b, -44077i, arg_1.b.a.x)).x, true, true)), select(select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), false)), all(vec2<bool>(true, true)), true, true), u_input.a < u_input.a), !all(vec3<bool>(true, false, true)));
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1649f, 162f, -213f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-733f, 1630f, 918f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1311f, 615f, -385f) + vec3<f32>(-1034f, 1572f, 1000f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-103f, -1074f, -278f), vec3<f32>(1215f, -2158f, 473f))))), vec3<f32>(-111f, _wgslsmith_f_op_f32(round(-410f)), 259f), select(var_1.xzx, select(vec3<bool>(true, true, var_1.x), var_1.wxw, u_input.a >= u_input.a), true && func_2(vec2<u32>(0u, u_input.a), vec4<i32>(2147483647i, -7461i, var_0.e.b, var_0.e.a.x)).x)))));
    var_1 = vec4<bool>(all(select(vec4<bool>(true, var_1.x, var_1.x, true), !(!vec4<bool>(var_1.x, false, var_1.x, var_1.x)), !vec4<bool>(var_1.x, true, false, false))), var_1.x & true, all(var_1.ww), false);
    global0 = array<Struct_2, 19>();
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_i32(-26848i, _wgslsmith_add_i32(global1.b ^ 35784i, global1.b)) ^ -2147483647i;
    let var_1 = Struct_2(func_5(func_4(_wgslsmith_mod_vec3_i32(func_1(Struct_2(Struct_1(global1.a, 7783i), Struct_1(global1.a, 2177i), Struct_1(vec2<i32>(var_0, global1.b), var_0), Struct_1(vec2<i32>(var_0, 12866i), 1i), Struct_1(global1.a, var_0))), vec3<i32>(global1.a.x, global1.a.x, global1.a.x) | vec3<i32>(global1.b, global1.a.x, var_0)), u_input.a), global0[_wgslsmith_index_u32(32614u, 19u)]), Struct_1(vec2<i32>(27915i, 0i), global1.a.x), Struct_1(max(-(global1.a << (vec2<u32>(1u, 47772u) % vec2<u32>(32u))), vec2<i32>(var_0, global1.a.x)), firstLeadingBit(0i)), func_4(countOneBits(~vec3<i32>(1i, 8701i, var_0)), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(select(vec3<u32>(4294967295u, u_input.a, 0u), vec3<u32>(u_input.a, 0u, 25170u), true), min(vec3<u32>(0u, u_input.a, 4084u), vec3<u32>(u_input.a, 45824u, u_input.a))), ~vec3<u32>(1u, u_input.a, 98580u))), Struct_1(max(global1.a, func_5(func_5(Struct_1(global1.a, var_0), global0[_wgslsmith_index_u32(u_input.a, 19u)]), global0[_wgslsmith_index_u32(u_input.a | u_input.a, 19u)]).a), ~reverseBits(global1.a.x) << (u_input.a % 32u)));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -664f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -650f))))), 1293f, _wgslsmith_f_op_f32(max(-489f, -130f)));
    var var_3 = func_3(firstTrailingBit(firstTrailingBit((vec3<u32>(6680u, 4294967295u, 4294967295u) ^ vec3<u32>(u_input.a, 1u, u_input.a)) << (~vec3<u32>(u_input.a, 1u, 1u) % vec3<u32>(32u)))), vec4<bool>(0u <= countOneBits(_wgslsmith_div_u32(u_input.a, 4294967295u)), true, !(firstTrailingBit(9398u) <= _wgslsmith_clamp_u32(10081u, 4294967295u, 1u)), !func_2(vec2<u32>(1u, u_input.a) | vec2<u32>(1u, u_input.a), ~vec4<i32>(0i, 1i, global1.b, 29514i)).x), vec2<bool>(_wgslsmith_f_op_f32(276f - _wgslsmith_f_op_f32(-254f * 1000f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), any(vec3<bool>(any(vec3<bool>(true, false, false)), false, select(true, false, false)))));
    var var_4 = _wgslsmith_div_vec2_f32(var_2.yz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(740f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -615f))))));
    let var_5 = select(select(!vec3<bool>(select(false, false, false), true, all(vec2<bool>(true, false))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, all(vec3<bool>(false, true, false)), true), func_2(vec2<u32>(u_input.a, 4294967295u) >> (vec2<u32>(2969u, 31072u) % vec2<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_1.b.b, global1.a.x, var_0, -40872i), vec4<i32>(21593i, global1.a.x, var_3.a.x, -8946i))).x), true), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), 6980u < u_input.a), true), vec3<bool>(_wgslsmith_mod_i32(~var_1.a.b, func_5(var_1.b, Struct_2(Struct_1(vec2<i32>(2147483647i, global1.b), var_1.b.b), var_1.a, var_1.d, Struct_1(var_1.d.a, -1i), var_1.c)).b) >= _wgslsmith_mod_i32(var_1.b.b, -42829i), 43769u != ~(u_input.a << (u_input.a % 32u)), false));
    global1 = func_3(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), ~vec3<u32>(0u, u_input.a, u_input.a))) >> (reverseBits(min(vec3<u32>(u_input.a, u_input.a, 69154u) & vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(u_input.a, 59525u, u_input.a) | vec3<u32>(u_input.a, 42403u, u_input.a))) % vec3<u32>(32u)), vec4<bool>(true, any(!select(vec3<bool>(false, var_5.x, var_5.x), var_5, var_5.x)), var_5.x, -func_5(Struct_1(vec2<i32>(-13189i, global1.a.x), global1.a.x), Struct_2(Struct_1(vec2<i32>(2147483647i, -17312i), -46145i), Struct_1(global1.a, -2147483647i), var_1.b, Struct_1(vec2<i32>(13364i, var_1.b.b), -7108i), var_1.d)).b >= var_1.c.a.x), var_5.yy);
    var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(671f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -1148f))) + vec2<f32>(_wgslsmith_f_op_f32(exp2(var_4.x)), _wgslsmith_f_op_f32(f32(-1f) * -527f))), var_2.xz);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, var_1.d.a.x);
}

