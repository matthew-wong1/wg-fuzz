struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec3<u32>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: Struct_3,
    d: i32,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<u32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<f32>) -> f32 {
    let var_0 = arg_1.x;
    var var_1 = Struct_4(-u_input.d, false, Struct_3(reverseBits(countOneBits(vec2<u32>(1u, 20311u))) & firstLeadingBit(u_input.c.xx), Struct_2(_wgslsmith_f_op_f32(arg_1.x + -840f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1 * arg_1))), u_input.c, Struct_2(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(115f, -1391f)))))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), arg_1)), u_input.e, Struct_1(vec2<f32>(var_0, var_0), arg_0, max(vec4<u32>(u_input.c.x, 1u, 1u, 12231u), _wgslsmith_mod_vec4_u32(vec4<u32>(19814u, 1u, 1u, u_input.c.x), vec4<u32>(63303u, 63091u, 17696u, 1u))) | min(vec4<u32>(u_input.c.x, 0u, u_input.c.x, 21572u) << (vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 4294967295u) % vec4<u32>(32u)), ~vec4<u32>(u_input.c.x, u_input.c.x, 9783u, 1u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(959f - 233f), _wgslsmith_f_op_f32(-var_0)) - _wgslsmith_div_vec2_f32(vec2<f32>(-802f, arg_1.x), _wgslsmith_f_op_vec2_f32(floor(arg_1))))));
    var_1 = Struct_4(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-(~0i), -1i, ~(-36377i)), _wgslsmith_div_i32(arg_0.x, countOneBits(2147483647i >> (0u % 32u)))), !all(vec4<bool>(false, var_1.b, var_1.b | var_1.b, any(vec3<bool>(var_1.b, var_1.b, var_1.b)))), var_1.c, arg_0.x, var_1.e);
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1027f, arg_1.x)), abs(var_1.e.b), max(firstLeadingBit(vec4<u32>(_wgslsmith_mod_u32(4294967295u, 7352u), _wgslsmith_div_u32(var_1.e.c.x, 1u), min(u_input.c.x, u_input.c.x), reverseBits(var_1.c.c.x))), ~min(~vec4<u32>(31215u, u_input.c.x, var_1.e.c.x, var_1.e.c.x), var_1.e.c)), vec2<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -202f)));
    let var_3 = var_1.c;
    return _wgslsmith_f_op_f32(var_3.d.b.x - -483f);
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec3<f32>) -> vec3<u32> {
    var var_0 = vec4<u32>(min(55693u, u_input.c.x), ~arg_2.a.x, ~_wgslsmith_dot_vec3_u32(~u_input.c, vec3<u32>(2189u, _wgslsmith_dot_vec4_u32(vec4<u32>(55106u, 13308u, u_input.c.x, arg_2.c.x), vec4<u32>(31622u, 4294967295u, u_input.c.x, arg_2.c.x)), arg_1.a.x)), _wgslsmith_mod_u32(arg_2.c.x, arg_1.a.x));
    var var_1 = ~u_input.c;
    var var_2 = !(!select(!select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, false), true));
    let var_3 = _wgslsmith_sub_u32(u_input.c.x, arg_2.c.x);
    var var_4 = _wgslsmith_f_op_f32(-arg_3.x);
    return min(var_0.zzw, u_input.c);
}

fn func_2() -> u32 {
    let var_0 = Struct_5(Struct_3(vec2<u32>(0u, u_input.c.x), Struct_2(570f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(745f, -324f)))), countOneBits(u_input.c), Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -997f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-238f, -1790f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-870f, -2583f)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))))), Struct_2(-554f, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-543f, 588f), vec2<f32>(514f, 195f), false)))))), ~_wgslsmith_add_vec2_u32(u_input.c.xx ^ firstLeadingBit(u_input.c.yy), vec2<u32>(~0u, min(4294967295u, u_input.c.x))), ~select(~(~u_input.c.x), 4683u, true));
    let var_1 = Struct_4(u_input.b, all(!vec3<bool>(any(vec2<bool>(true, true)), true, true)), Struct_3(var_0.b, var_0.a.b, func_4(_wgslsmith_f_op_f32(select(var_0.a.e.b.x, _wgslsmith_f_op_f32(round(-130f)), false)), var_0.a, Struct_3(min(var_0.a.a, u_input.c.yy), var_0.a.e, firstLeadingBit(var_0.a.c), Struct_2(var_0.a.e.a, vec2<f32>(949f, var_0.a.d.b.x)), var_0.a.d), vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.e.a), _wgslsmith_f_op_f32(func_3(vec4<i32>(u_input.a, u_input.e, -39794i, u_input.e), var_0.a.b.b)), _wgslsmith_f_op_f32(var_0.a.d.b.x + var_0.a.b.a))), Struct_2(var_0.a.e.a, _wgslsmith_f_op_vec2_f32(var_0.a.e.b * var_0.a.e.b)), var_0.a.e), -26888i, Struct_1(_wgslsmith_f_op_vec2_f32(sign(var_0.a.e.b)), -reverseBits(~vec4<i32>(u_input.d, u_input.a, u_input.d, 2342i)), vec4<u32>(1u, _wgslsmith_dot_vec3_u32(u_input.c, func_4(-742f, var_0.a, var_0.a, vec3<f32>(var_0.a.e.a, 618f, var_0.a.d.b.x))), _wgslsmith_add_u32(17240u, var_0.c), var_0.b.x), var_0.a.d.b));
    var var_2 = _wgslsmith_sub_u32(4294967295u, ~0u);
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.b.b.x, var_0.a.b.b.x, -998f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a.d.a), _wgslsmith_f_op_f32(step(975f, var_1.c.e.b.x)), true))))));
    let var_4 = Struct_4(u_input.e, false, var_0.a, 13166i, var_1.e);
    return ~5884u;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: i32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(arg_0.xz, _wgslsmith_f_op_vec2_f32(-arg_0.wz)));
    var var_1 = true;
    let var_2 = ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, ~1u, u_input.c.x), min(~vec3<u32>(arg_2.c.x, 1u, u_input.c.x), _wgslsmith_add_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, 1u, 19628u)))));
    var_1 = ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(32632u, 18845u), ~vec2<u32>(arg_2.c.x, arg_2.c.x)), u_input.c.x, u_input.c.x) >= _wgslsmith_mult_u32(u_input.c.x, func_2());
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -205f) + _wgslsmith_f_op_f32(-1000f - 739f)))), -943f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -899f), arg_0.x)));
    return Struct_4(u_input.b, false, Struct_3(~((vec2<u32>(10307u, 59104u) >> (vec2<u32>(11115u, var_2) % vec2<u32>(32u))) & reverseBits(vec2<u32>(var_2, 0u))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(564f, 868f) - _wgslsmith_f_op_f32(abs(-443f))), vec2<f32>(_wgslsmith_f_op_f32(floor(-1493f)), _wgslsmith_f_op_f32(1000f - arg_2.a.x))), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, abs(arg_2.c.x), 0u), _wgslsmith_mult_vec3_u32(arg_2.c.yzz, vec3<u32>(10241u, 7021u, arg_2.c.x)) >> (firstTrailingBit(vec3<u32>(var_2, 25430u, 1u)) % vec3<u32>(32u))), Struct_2(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.yx * arg_0.yw) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, arg_2.a.x)))), Struct_2(_wgslsmith_f_op_f32(arg_0.x - -1229f), _wgslsmith_div_vec2_f32(arg_2.a, _wgslsmith_f_op_vec2_f32(abs(arg_0.zy))))), 1i, arg_2);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    let var_0 = ~arg_2.b.xzy;
    var var_1 = vec4<u32>(func_1(vec4<f32>(_wgslsmith_div_f32(1400f, arg_2.a.x), arg_0.e.d.x, _wgslsmith_f_op_f32(-arg_0.c.b.b.x), _wgslsmith_f_op_f32(arg_1.b.x - arg_2.d.x)), select(!vec2<bool>(arg_0.b, arg_0.b), !vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(false, false)), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(arg_2.a)), vec4<i32>(arg_0.a, u_input.a, -12327i, var_0.x), _wgslsmith_mod_vec4_u32(arg_0.e.c, arg_0.e.c), arg_0.e.a), var_0.x & -arg_3).e.c.x, u_input.c.x, arg_2.c.x << (4294967295u % 32u), 38098u) & arg_0.e.c;
    var_1 = ~(~arg_2.c);
    var_1 = vec4<u32>(~(~(~1u)), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(arg_0.c.c, vec3<u32>(0u, 53155u, var_1.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(136866u, arg_0.e.c.x, 1u | arg_2.c.x), ~(~vec3<u32>(var_1.x, 51786u, arg_2.c.x)), vec3<u32>(1u, arg_2.c.x, _wgslsmith_div_u32(1u, 3732u)))), var_1.x, 75835u);
    let var_2 = _wgslsmith_div_vec2_u32(abs(arg_0.e.c.wz >> (_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_2.c.x, 42768u), var_1.zw), ~vec2<u32>(23383u, arg_2.c.x)) % vec2<u32>(32u))), reverseBits(~(~vec2<u32>(4294967295u, var_1.x)) & ~(~vec2<u32>(arg_2.c.x, u_input.c.x))));
    return arg_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(575f, 277f, 685f, -1000f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(542f, -1291f, -1029f, 2027f), vec4<f32>(-294f, -1703f, -1443f, 1516f), false)))), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), select(false, true, true)), vec2<bool>(true, true)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-304f, -355f), vec2<f32>(-150f, 1000f)))), abs(vec4<i32>(u_input.d, u_input.e, 42323i, -19988i) >> (vec4<u32>(u_input.c.x, u_input.c.x, 1u, u_input.c.x) % vec4<u32>(32u))), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, u_input.c.x), vec4<u32>(4294967295u, 74881u, u_input.c.x, 1u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2082f, -2145f)) * vec2<f32>(1f, 1f))), -1i), func_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(2477f, 1366f, -761f, 483f), vec4<f32>(-1216f, 526f, 639f, 230f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-899f, 508f, -390f, 1000f)))))), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true)), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(391f, 794f, 661f, -2133f)))), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true)), func_1(vec4<f32>(-332f, -118f, -1202f, -1000f), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), Struct_1(vec2<f32>(203f, -1522f), vec4<i32>(0i, -16158i, -1i, -2147483647i), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec2<f32>(-1000f, -539f)), 1i).e, -abs(u_input.a)).e, _wgslsmith_mod_i32(-reverseBits(30149i), _wgslsmith_sub_i32(u_input.b << (u_input.c.x % 32u), _wgslsmith_add_i32(u_input.e, u_input.e)))).c.b, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(502f - 1495f) * _wgslsmith_f_op_f32(1210f - -367f)), _wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_mod_vec4_i32(vec4<i32>(-u_input.e, u_input.a >> (u_input.c.x % 32u), countOneBits(-1i), u_input.a ^ u_input.e), -firstTrailingBit(vec4<i32>(3366i, u_input.b, -16566i, 1i))), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(1u, u_input.c.x, u_input.c.x, 24540u)), _wgslsmith_sub_vec4_u32(min(vec4<u32>(56533u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(48593u, u_input.c.x, u_input.c.x, 0u)), func_1(vec4<f32>(1261f, 1620f, 1000f, -1317f), vec2<bool>(true, true), Struct_1(vec2<f32>(1529f, 526f), vec4<i32>(u_input.b, 20010i, -54356i, u_input.d), vec4<u32>(u_input.c.x, u_input.c.x, 94072u, u_input.c.x), vec2<f32>(1536f, 1117f)), u_input.b).e.c)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1220f, -2492f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-816f, 1090f) * vec2<f32>(-1513f, -1000f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-361f, 1256f)))))), countOneBits(_wgslsmith_mod_i32(countOneBits(u_input.a) | (u_input.b & 0i), u_input.a)));
    let var_1 = ~reverseBits(-2147483647i);
    let var_2 = Struct_5(Struct_3(u_input.c.xy ^ select(u_input.c.zx, var_0.c.yx, select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))), Struct_2(-1150f, func_5(Struct_4(-2147483647i, true, Struct_3(vec2<u32>(0u, 78243u), Struct_2(var_0.a.x, vec2<f32>(-1392f, var_0.a.x)), vec3<u32>(1u, u_input.c.x, u_input.c.x), Struct_2(314f, vec2<f32>(203f, var_0.d.x)), Struct_2(var_0.a.x, var_0.d)), var_0.b.x, var_0), func_1(vec4<f32>(var_0.d.x, -2276f, var_0.a.x, var_0.a.x), vec2<bool>(false, true), Struct_1(vec2<f32>(var_0.a.x, var_0.d.x), var_0.b, vec4<u32>(u_input.c.x, 11084u, var_0.c.x, 23501u), var_0.d), 2147483647i).c.d, var_0, -545i).d), vec3<u32>(_wgslsmith_mult_u32(firstLeadingBit(var_0.c.x), u_input.c.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.x, 17767u, 48942u, 26143u), vec4<u32>(var_0.c.x, 51444u, var_0.c.x, var_0.c.x)), _wgslsmith_mult_u32(var_0.c.x, 3153u)), ~(~4294967295u)), func_1(vec4<f32>(var_0.d.x, _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(-717f + var_0.d.x), _wgslsmith_f_op_f32(max(-477f, var_0.a.x))), select(vec2<bool>(true, true), vec2<bool>(false, true), all(vec2<bool>(true, false))), func_1(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.d.x, var_0.d.x, var_0.d.x, var_0.d.x), vec4<f32>(2115f, -253f, var_0.a.x, var_0.d.x)), select(vec2<bool>(false, false), vec2<bool>(true, true), false), var_0, ~var_1).e, var_0.b.x).c.d, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x + var_0.a.x)), _wgslsmith_div_vec2_f32(var_0.a, _wgslsmith_f_op_vec2_f32(var_0.d * var_0.a)))), select(_wgslsmith_add_vec2_u32(var_0.c.xz, max(~vec2<u32>(6721u, 1u), func_5(Struct_4(u_input.d, true, Struct_3(vec2<u32>(var_0.c.x, 146024u), Struct_2(-554f, var_0.d), vec3<u32>(55836u, 0u, var_0.c.x), Struct_2(var_0.a.x, vec2<f32>(-1000f, -1660f)), Struct_2(926f, vec2<f32>(var_0.d.x, 1875f))), -49724i, var_0), Struct_2(var_0.a.x, var_0.d), Struct_1(vec2<f32>(var_0.a.x, var_0.d.x), var_0.b, vec4<u32>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x), var_0.a), -2147483647i).c.xw)), ~var_0.c.wz, select(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), true)), abs(~_wgslsmith_div_u32(var_0.c.x, u_input.c.x)));
    let var_3 = false;
    let var_4 = ~_wgslsmith_clamp_i32(select(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(171f, -302f, var_2.a.d.b.x, var_0.d.x)), select(vec2<bool>(var_3, var_3), vec2<bool>(true, var_3), vec2<bool>(false, var_3)), var_0, var_1).d, var_1, false), -var_1, ~(-u_input.e));
    var var_5 = abs(func_2()) > var_0.c.x;
    var_5 = !(!(!(!(!var_3))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-1213f - var_2.a.e.a), _wgslsmith_f_op_f32(-var_2.a.d.a), _wgslsmith_f_op_f32(f32(-1f) * -701f), -1004f))))), _wgslsmith_f_op_f32(-var_2.a.b.b.x));
}

