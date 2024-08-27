struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec3<f32>, arg_3: vec2<bool>) -> vec2<bool> {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_dot_vec4_u32(abs(min(_wgslsmith_div_vec4_u32(vec4<u32>(53201u, 0u, arg_0.a.x, arg_0.a.x), vec4<u32>(4437u, 0u, var_0.a.x, 77018u)), vec4<u32>(arg_0.a.x, arg_0.a.x, 0u, 36288u))), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a.x, 37610u, 47876u, 25401u) << (vec4<u32>(arg_0.a.x, 1u, 4812u, 30308u) % vec4<u32>(32u)), ~vec4<u32>(u_input.a, arg_0.a.x, var_0.a.x, 4294967295u)) << (~(~vec4<u32>(var_0.a.x, var_0.a.x, u_input.a, 71545u)) % vec4<u32>(32u))) > ~_wgslsmith_mult_u32(~0u >> (~u_input.a % 32u), 1u);
    global0 = false;
    let var_2 = Struct_1(~u_input.b);
    var var_3 = Struct_2(!select(!vec2<bool>(false, arg_3.x), select(select(arg_3, arg_3, true), select(arg_3, arg_3, false), select(vec2<bool>(true, arg_3.x), vec2<bool>(false, true), vec2<bool>(true, true))), var_1), var_2, vec4<i32>(_wgslsmith_clamp_i32(-8792i, arg_1, 21912i), ~(-2147483647i), ~1i, _wgslsmith_add_i32(arg_1, arg_1)));
    return !(!(!(!(!arg_3))));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32) -> i32 {
    let var_0 = arg_0.x;
    let var_1 = ~7632u;
    let var_2 = vec2<bool>(10965u < arg_1, select(any(func_3(Struct_1(vec3<u32>(var_1, var_1, 59697u)), var_0, vec3<f32>(1000f, 1960f, 208f), vec2<bool>(false, false))), func_3(Struct_1(u_input.b), _wgslsmith_dot_vec3_i32(arg_0, vec3<i32>(2147483647i, 22072i, var_0)), vec3<f32>(-303f, 1000f, 995f), vec2<bool>(true, true)).x, arg_0.x == _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 17601i, arg_0.x, 0i), vec4<i32>(var_0, 30131i, 1i, -1i))) == (false && func_3(Struct_1(vec3<u32>(var_1, var_1, var_1)), arg_0.x, vec3<f32>(-1000f, -710f, -386f), func_3(Struct_1(u_input.b), arg_0.x, vec3<f32>(-2523f, 272f, 2014f), vec2<bool>(false, false))).x));
    var var_3 = !vec4<bool>(var_2.x, !all(vec3<bool>(var_2.x, var_2.x, var_2.x)) & any(var_2), all(select(vec3<bool>(var_2.x, false, var_2.x), !vec3<bool>(false, var_2.x, true), vec3<bool>(true, var_2.x, var_2.x))), select(!var_2.x, var_2.x, true));
    let var_4 = 0i;
    return ~((12915i & arg_0.x) | arg_0.x) >> (max(~_wgslsmith_sub_u32(0u, _wgslsmith_mod_u32(arg_1, 69084u)), 0u) % 32u);
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = !(!(!(!all(vec2<bool>(false, true)))));
    var var_1 = -(~_wgslsmith_div_i32(~1i, func_2(vec3<i32>(1i, 56128i, -54789i), 36809u)));
    var var_2 = vec4<u32>(firstTrailingBit(select(_wgslsmith_sub_u32(14981u, arg_2.a.x), ~u_input.c, func_3(arg_2, -63786i, vec3<f32>(arg_1, arg_1, arg_1), vec2<bool>(false, false)).x) ^ _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4694u, arg_0.a.x, arg_0.a.x), vec4<u32>(21737u, u_input.b.x, 24744u, u_input.b.x), vec4<u32>(25042u, arg_2.a.x, 16480u, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.a.x, 55247u, u_input.b.x, 7549u), vec4<u32>(u_input.b.x, 0u, u_input.c, 63758u)))), ~_wgslsmith_mod_u32(1u, arg_0.a.x), 4294967295u, _wgslsmith_mult_u32(arg_2.a.x, 102875u));
    var var_3 = ~var_2.yw;
    let var_4 = Struct_1(arg_2.a);
    return _wgslsmith_sub_vec4_i32(vec4<i32>(reverseBits(_wgslsmith_sub_i32(firstTrailingBit(-13461i), _wgslsmith_clamp_i32(-2147483647i, -2147483647i, -56559i))), _wgslsmith_mult_i32(~21655i, func_2(vec3<i32>(15447i, 28621i, -1i), 20970u)), _wgslsmith_add_i32(_wgslsmith_div_i32(~22137i, -3531i), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(45926i, -1i, 2147483647i), 0i)), _wgslsmith_mod_i32(abs(50789i), -(i32(-1i) * -18692i))), vec4<i32>(-1i, reverseBits(~2147483647i) ^ -(-14112i >> (var_3.x % 32u)), _wgslsmith_dot_vec3_i32(~vec3<i32>(1i, 1i, 1i), _wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(-5033i, -2147483647i, -13869i)), vec3<i32>(-2147483647i, 27421i, -2147483647i) << (var_4.a % vec3<u32>(32u)))), ~(i32(-1i) * -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 55689i, _wgslsmith_dot_vec3_i32(vec3<i32>(41198i, -2147483647i, -29562i) >> (vec3<u32>(u_input.a, u_input.c, 4294967295u) % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(1i, 36351i, -2147483647i)))), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -25765i, 1i) << (u_input.b % vec3<u32>(32u)), vec3<i32>(-35784i, -1i, 83286i)))), reverseBits(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(max(vec3<i32>(44609i, -8432i, 37670i), vec3<i32>(-2147483647i, 0i, 4881i)), ~vec3<i32>(-9597i, -34586i, -43201i)), firstLeadingBit(vec3<i32>(-71222i, -2147483647i, 65538i)))));
    let var_1 = -2147483647i;
    let var_2 = !(!vec4<bool>(true, all(vec2<bool>(true, true)), false, true));
    var var_3 = ~(~((10646u ^ u_input.b.x) << (_wgslsmith_mod_u32(u_input.a, u_input.c) % 32u)) >> ((reverseBits(~u_input.b.x) | ~(u_input.b.x & u_input.b.x)) % 32u));
    let var_4 = vec4<i32>(-1i, _wgslsmith_sub_i32(~(-2147483647i), abs(1i)), -18405i, ~var_0.x) | func_1(Struct_1(vec3<u32>(_wgslsmith_mod_u32(u_input.c, u_input.a), ~u_input.c, ~26325u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-739f + -1009f)))), Struct_1(u_input.b));
    let var_5 = abs(u_input.b);
    var var_6 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1382f, -373f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1571f, 939f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-637f, -313f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-696f, 1000f)), -1176f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(abs(188f)), _wgslsmith_f_op_f32(f32(-1f) * -697f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(989f, -729f)))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -105f), -626f)), !var_2.x)), true));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x, _wgslsmith_add_u32(var_5.x, _wgslsmith_mult_u32(_wgslsmith_add_u32(var_5.x, var_5.x), 4294967295u)) >> (abs(_wgslsmith_mod_u32(0u, reverseBits(var_5.x))) % 32u), ~min(u_input.a, u_input.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_6.x, var_6.x), vec2<f32>(-783f, var_6.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1451f, -1284f))))), u_input.b);
}

