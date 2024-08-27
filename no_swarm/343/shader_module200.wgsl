struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: Struct_1,
    d: u32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: Struct_4) -> f32 {
    let var_0 = ~countOneBits(min(_wgslsmith_mult_u32(30093u, 0u), ~arg_3.a.x) ^ 4294967295u);
    let var_1 = arg_3.c.a.x;
    let var_2 = select(arg_3.b, arg_3.b, arg_3.b);
    let var_3 = !(!select(!arg_2, !vec3<bool>(true, var_2.x, var_2.x), all(vec2<bool>(arg_3.e.d, var_2.x))));
    let var_4 = arg_3.e;
    return _wgslsmith_div_f32(arg_1.a, 786f);
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>) -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0.c, arg_0, vec3<bool>(true, true, true), Struct_4(vec3<u32>(arg_0.b, u_input.b, u_input.e.x), vec2<bool>(false, false), Struct_1(arg_1, vec3<i32>(0i, 0i, u_input.d)), arg_0.b, Struct_3(vec4<i32>(u_input.a.x, u_input.d, u_input.d, u_input.d), vec3<i32>(0i, 0i, u_input.d), vec2<f32>(-283f, arg_1.x), true, Struct_1(vec4<f32>(arg_1.x, -727f, arg_0.c, arg_1.x), vec3<i32>(u_input.c, u_input.d, u_input.d)))))))), arg_0.b, -1057f);
    var_0 = arg_0;
    let var_1 = ((vec3<u32>(abs(0u), 0u, min(80604u, 1u)) ^ vec3<u32>(abs(0u), arg_0.b & u_input.e.x, _wgslsmith_dot_vec4_u32(vec4<u32>(17313u, 4294967295u, 1u, 4294967295u), vec4<u32>(4294967295u, var_0.b, 35647u, arg_0.b)))) << (firstTrailingBit(_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(var_0.b, 21084u, u_input.b)), vec3<u32>(1u, 61753u, 0u))) % vec3<u32>(32u))) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.b, u_input.b << (~17767u % 32u), 4294967295u), vec3<u32>(~u_input.e.x, arg_0.b, arg_0.b ^ arg_0.b) & vec3<u32>(firstLeadingBit(5663u), 1u, u_input.b)) % vec3<u32>(32u));
    let var_2 = Struct_3(-firstTrailingBit(_wgslsmith_mod_vec4_i32(~vec4<i32>(-54046i, u_input.d, 34038i, u_input.c), vec4<i32>(u_input.d, 14214i, -31625i, -5267i) ^ vec4<i32>(-1i, u_input.d, -4995i, u_input.c))), vec3<i32>(reverseBits(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(17986i, u_input.c, u_input.a.x), u_input.c, abs(-1i))), 0i, u_input.a.x), vec2<f32>(_wgslsmith_f_op_f32(arg_1.x * arg_1.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -761f)))), true, Struct_1(_wgslsmith_f_op_vec4_f32(-arg_1), ~abs(-vec3<i32>(-1i, u_input.c, u_input.a.x))));
    var_0 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c * 406f)))), _wgslsmith_mod_u32(u_input.e.x, _wgslsmith_clamp_u32(~0u, _wgslsmith_mod_u32(var_1.x, var_0.b), ~13735u)) & _wgslsmith_sub_u32(_wgslsmith_clamp_u32(arg_0.b, ~0u, select(46672u, 13914u, false)), var_0.b), -216f);
    return var_2.d;
}

fn func_4(arg_0: bool, arg_1: vec2<u32>) -> bool {
    let var_0 = 1i;
    var var_1 = _wgslsmith_add_u32(~(~1u), 48795u);
    var var_2 = -1000f;
    var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-796f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1479f)), _wgslsmith_f_op_f32(1000f + 1631f))))));
    var var_3 = Struct_4(vec3<u32>(arg_1.x, arg_1.x, ~_wgslsmith_mult_u32(arg_1.x, _wgslsmith_sub_u32(12907u, 4933u))), !vec2<bool>(true, _wgslsmith_sub_i32(u_input.d, u_input.d) < var_0), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1863f, -772f, 162f, 686f))))), vec3<i32>(~1i, _wgslsmith_dot_vec3_i32(-vec3<i32>(0i, var_0, var_0), ~vec3<i32>(var_0, 2147483647i, var_0)), -u_input.d)), ~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_1, u_input.e, vec2<u32>(u_input.b, u_input.e.x)), _wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(arg_1.x, 24155u)), min(vec2<u32>(arg_1.x, arg_1.x), u_input.e))), Struct_3(_wgslsmith_mod_vec4_i32(vec4<i32>(31662i, u_input.a.x, u_input.d, 0i) & vec4<i32>(-31469i, u_input.a.x, -23890i, var_0), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, u_input.d, -1i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 13968i, u_input.d), vec4<i32>(u_input.a.x, var_0, u_input.a.x, u_input.d))) ^ firstLeadingBit(vec4<i32>(u_input.d, u_input.a.x, 2147483647i, 57581i)), vec3<i32>(~(-2147483647i & var_0), var_0, u_input.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(702f, -786f)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-749f, -1790f))))), arg_0, Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(386f, -1316f, 435f, 405f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1207f, -1063f, -254f, -789f)))), vec3<i32>(1i, 0i, 29149i << (arg_1.x % 32u)))));
    return all(vec2<bool>(true, true)) == any(select(vec4<bool>(var_3.e.d, var_3.e.d, true, u_input.b > u_input.e.x), vec4<bool>(true, true, true, arg_0 & var_3.b.x), arg_0));
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    let var_0 = 10556u;
    var var_1 = !vec4<bool>(func_4(true | func_2(Struct_2(arg_0.a.x, u_input.e.x, -1000f), arg_0.a), u_input.e), _wgslsmith_sub_i32(1i, firstLeadingBit(arg_0.b.x)) < (-1i << (var_0 % 32u)), false, true);
    var_1 = select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, var_1.x), (-min(42325i, 2147483647i) & (u_input.d ^ -1106i)) >= _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, arg_0.b.x, 1i), vec3<i32>(firstLeadingBit(arg_0.b.x), 0i, -2147483647i)));
    var_1 = select(!vec4<bool>(true, !var_1.x | func_2(Struct_2(arg_0.a.x, 4294967295u, arg_0.a.x), vec4<f32>(-450f, 1231f, 488f, 2437f)), !(!var_1.x), !(0i == arg_0.b.x)), !select(select(select(vec4<bool>(false, var_1.x, var_1.x, false), vec4<bool>(true, var_1.x, true, false), vec4<bool>(var_1.x, var_1.x, false, false)), select(vec4<bool>(var_1.x, false, true, true), vec4<bool>(var_1.x, true, false, true), vec4<bool>(var_1.x, true, var_1.x, var_1.x)), select(vec4<bool>(false, false, var_1.x, true), vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(true, true, var_1.x, true))), select(!vec4<bool>(true, var_1.x, var_1.x, false), !vec4<bool>(var_1.x, false, var_1.x, true), select(vec4<bool>(true, var_1.x, false, var_1.x), vec4<bool>(var_1.x, false, false, true), var_1.x)), select(select(vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(true, var_1.x, var_1.x, true), vec4<bool>(false, var_1.x, true, true)), vec4<bool>(true, false, var_1.x, true), select(vec4<bool>(true, var_1.x, var_1.x, false), vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(true, var_1.x, false, var_1.x)))), !vec4<bool>(_wgslsmith_sub_u32(49261u, 1u) >= u_input.b, true, !all(var_1.yyz), true));
    var var_2 = arg_0.a.x;
    return Struct_3(vec4<i32>(-24442i, -2147483647i, max(2147483647i, -arg_0.b.x ^ ~arg_0.b.x), ~(-1729i & _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -77417i), arg_0.b.yz))), firstLeadingBit(arg_0.b), vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(-arg_0.a.x)))), var_1.x, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.a * _wgslsmith_f_op_vec4_f32(-arg_0.a)) + arg_0.a), vec3<i32>(abs(arg_0.b.x), -14108i, _wgslsmith_div_i32(-arg_0.b.x, u_input.c))));
}

fn func_5(arg_0: u32, arg_1: vec2<f32>, arg_2: vec4<i32>, arg_3: Struct_3) -> bool {
    var var_0 = 1u;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1612f)));
    var_0 = ~arg_0;
    let var_2 = Struct_4(vec3<u32>(min(arg_0, arg_0) & reverseBits(50495u), 1108u, 1u), select(select(!select(vec2<bool>(false, arg_3.d), vec2<bool>(arg_3.d, arg_3.d), false), select(!vec2<bool>(false, arg_3.d), select(vec2<bool>(true, arg_3.d), vec2<bool>(true, true), arg_3.d), !arg_3.d), select(!vec2<bool>(arg_3.d, false), select(vec2<bool>(arg_3.d, false), vec2<bool>(false, true), arg_3.d), !vec2<bool>(arg_3.d, true))), select(select(!vec2<bool>(arg_3.d, false), !vec2<bool>(arg_3.d, true), select(vec2<bool>(true, arg_3.d), vec2<bool>(arg_3.d, arg_3.d), arg_3.d)), select(select(vec2<bool>(true, true), vec2<bool>(arg_3.d, arg_3.d), arg_3.d), select(vec2<bool>(true, true), vec2<bool>(arg_3.d, true), arg_3.d), arg_3.d), !(!arg_3.d)), func_1(Struct_1(_wgslsmith_div_vec4_f32(arg_3.e.a, vec4<f32>(975f, 1000f, -550f, -1000f)), reverseBits(vec3<i32>(arg_3.b.x, u_input.d, u_input.a.x)))).d), Struct_1(arg_3.e.a, arg_2.xww), ~_wgslsmith_div_u32(u_input.b, 4294967295u), Struct_3(vec4<i32>(arg_2.x, _wgslsmith_dot_vec2_i32(arg_3.b.xy, vec2<i32>(20040i, arg_2.x)) | arg_2.x, arg_3.e.b.x, _wgslsmith_div_i32(arg_3.e.b.x, -u_input.a.x)), arg_3.b, arg_1, !(!arg_3.d), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(-1463f)), _wgslsmith_f_op_f32(round(655f)), var_1, _wgslsmith_f_op_f32(step(-525f, -280f))), -vec3<i32>(u_input.d, 0i, arg_2.x))));
    var var_3 = _wgslsmith_f_op_f32(sign(-336f));
    return var_2.b.x & false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(func_5(_wgslsmith_dot_vec2_u32(u_input.e, _wgslsmith_add_vec2_u32(u_input.e, vec2<u32>(0u, u_input.e.x))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2419f, 1757f)))), vec4<i32>(51001i, u_input.c, 47429i, u_input.d) & -vec4<i32>(u_input.a.x, u_input.c, -2147483647i, 5165i), func_1(Struct_1(vec4<f32>(-817f, 323f, -1176f, -826f), vec3<i32>(1i, 48956i, u_input.a.x)))), true), select(vec2<bool>(true, true), !select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(true, true)), false), select(select(!select(vec2<bool>(false, false), vec2<bool>(true, false), false), !select(vec2<bool>(true, true), vec2<bool>(true, false), true), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))), vec2<bool>(true, true), !(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)))));
    var_0 = !(!vec2<bool>(true | !var_0.x, var_0.x));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(Struct_1(vec4<f32>(-1405f, 678f, 2227f, -128f), vec3<i32>(2147483647i, -20779i, -25590i))).e.a.x)));
    var var_2 = func_1(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, 772f, -438f, -362f)))), vec4<f32>(-1259f, -241f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -685f))), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, _wgslsmith_div_i32(0i, -20762i), u_input.d), vec3<i32>(-1i, ~7466i, i32(-1i) * -4149i)))).e;
    var_0 = !vec2<bool>(!all(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, true, var_0.x))), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, u_input.b, 9317u), ~vec3<u32>(30082u, u_input.e.x, 1u)) < ~u_input.b);
    var var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-var_2.a.x), -643f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -766f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(3085f, _wgslsmith_f_op_f32(var_2.a.x * -565f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.a.x))))), abs(func_1(Struct_1(var_2.a, vec3<i32>(-2803i, u_input.d, u_input.a.x))).a.wzy | _wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.b.x, u_input.c, 2147483647i) | var_2.b, min(var_2.b, var_2.b), -var_2.b)));
    let var_4 = 4294967295u;
    let var_5 = ~_wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, firstTrailingBit(4294967295u), _wgslsmith_dot_vec2_u32(u_input.e, vec2<u32>(96464u, var_4)), ~u_input.b), _wgslsmith_div_vec4_u32(max(~vec4<u32>(1u, 4294967295u, 1u, var_4), vec4<u32>(var_4, u_input.e.x, 47656u, 1u) << (vec4<u32>(10516u, 22800u, u_input.e.x, 1u) % vec4<u32>(32u))), vec4<u32>(var_4, var_4, u_input.b, 4294967295u) & _wgslsmith_add_vec4_u32(vec4<u32>(49260u, u_input.e.x, var_4, 4294967295u), vec4<u32>(4294967295u, 58126u, var_4, var_4))));
    let x = u_input.a;
    s_output = StorageBuffer(-2584i, _wgslsmith_f_op_f32(var_3.a.x + -719f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(var_3.a)) * vec4<f32>(812f, -1175f, func_1(func_1(Struct_1(vec4<f32>(var_2.a.x, var_2.a.x, -1429f, 973f), var_3.b)).e).c.x, func_1(Struct_1(var_3.a, var_2.b)).e.a.x)));
}

