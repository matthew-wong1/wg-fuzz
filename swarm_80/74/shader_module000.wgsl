struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: bool,
    d: i32,
    e: f32,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(426f, -1222f, arg_0.e)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1048f, 1375f, arg_0.e) + vec3<f32>(-292f, arg_0.b.a.x, arg_0.e))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.b.a.x, 476f, 1786f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.b.a.x, arg_0.b.a.x, arg_0.e)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-307f, arg_0.b.a.x, var_0.x)), vec3<f32>(arg_0.b.a.x, arg_0.b.a.x, arg_0.e)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_0.b.a.x, 430f)))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2107f, _wgslsmith_f_op_f32(var_0.x - arg_0.e)));
    let var_2 = firstTrailingBit(19588u);
    var var_3 = select(!vec4<bool>(true, true, true, !any(vec3<bool>(true, true, true))), select(vec4<bool>(true, true, true, true | arg_0.c), select(!(!vec4<bool>(arg_0.c, false, arg_0.c, arg_0.c)), vec4<bool>(true, all(vec3<bool>(arg_0.c, false, false)), arg_0.c, true), vec4<bool>(false && arg_0.c, arg_0.c, true, true)), vec4<bool>(_wgslsmith_f_op_f32(ceil(2481f)) == _wgslsmith_f_op_f32(select(808f, var_0.x, arg_0.c)), arg_0.c, !all(vec3<bool>(arg_0.c, arg_0.c, false)), arg_0.c)), (_wgslsmith_dot_vec3_u32(vec3<u32>(39652u, var_2, 1u), vec3<u32>(var_2, 4294967295u, 4772u)) ^ u_input.a) >= (~u_input.d.x & 4294967295u));
    return -arg_1;
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec3<bool>, arg_3: bool) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(854f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.a.x + 1363f) - 878f), _wgslsmith_f_op_f32(arg_0.e.a.x * arg_0.e.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(698f + -1000f) - 1f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.a.x, -276f, arg_0.c.a.x, arg_0.e.a.x) * vec4<f32>(arg_0.e.a.x, arg_0.e.a.x, arg_0.c.a.x, -579f))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-342f * _wgslsmith_f_op_f32(f32(-1f) * -322f)) + 1499f), _wgslsmith_f_op_f32(sign(arg_0.c.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.a.a.x), -2215f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(arg_0.e.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.d.a.x, arg_0.b.a.x) - -276f), _wgslsmith_sub_u32(u_input.d.x, u_input.b.x) > _wgslsmith_add_u32(1u, u_input.b.x)))));
    let var_1 = select(vec3<bool>(arg_3 || true, arg_3, false), arg_2, select(select(!select(vec3<bool>(arg_2.x, true, arg_3), vec3<bool>(false, arg_3, true), arg_2.x), vec3<bool>(any(vec2<bool>(true, false)), all(vec4<bool>(false, true, true, arg_2.x)), false || arg_2.x), vec3<bool>(false, arg_2.x, arg_3)), vec3<bool>(!any(arg_2.zy), arg_3, false), arg_3));
    var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.c.a.x, arg_0.a.a.x, -1274f, arg_0.a.a.x), vec4<f32>(var_0.x, 261f, -1414f, var_0.x))))), vec4<f32>(855f, _wgslsmith_f_op_f32(select(var_0.x, var_0.x, var_1.x)), arg_0.c.a.x, 716f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_0.a.a.x)), -591f, -357f, _wgslsmith_div_f32(-689f, var_0.x)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b.a.x, 1688f, 1322f, 319f), vec4<f32>(514f, 1537f, arg_0.c.a.x, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, 2154f) - vec4<f32>(-366f, 1614f, 1000f, -215f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2375f, arg_0.d.a.x, var_0.x, var_0.x))) + _wgslsmith_div_vec4_f32(vec4<f32>(-1349f, var_0.x, -1638f, -535f), vec4<f32>(-774f, -1346f, arg_0.a.a.x, -839f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e.a.x, 1000f, var_0.x, arg_0.a.a.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.a.x, 986f, -206f, -1581f)))))))));
    return _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x), true)))), arg_0.a.a.x)));
}

fn func_2() -> Struct_1 {
    let var_0 = !any(vec3<bool>(true, true, true)) != any(vec4<bool>(true, false || any(vec4<bool>(false, true, true, true)), !select(true, false, true), all(vec4<bool>(true, false, false, true))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(Struct_2(Struct_1(vec2<f32>(183f, 271f)), Struct_1(vec2<f32>(-2643f, 2102f)), Struct_1(vec2<f32>(-100f, 184f)), Struct_1(vec2<f32>(1244f, -1858f)), Struct_1(vec2<f32>(-871f, 1011f))), func_3(Struct_3(vec4<i32>(2147483647i, 2147483647i, 0i, -37139i), Struct_1(vec2<f32>(-1000f, -1000f)), true, 13179i, -1163f), 0i), vec3<bool>(true, false, var_0), !var_0))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(208f, 204f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-221f, 724f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1552f, 1000f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(325f, -630f), vec2<f32>(1000f, -884f)))))));
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = select(-abs(vec4<i32>(-47374i, 0i, 0i, -1i)), vec4<i32>(countOneBits(func_3(Struct_3(vec4<i32>(-25596i, 35293i, -24913i, -2147483647i), arg_2, false, -2147483647i, -135f), 1i)), 2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-19969i, 1i, 0i, -6163i), vec4<i32>(1i, -13956i, 52931i, 43126i)), vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_mult_i32(-38401i << (u_input.a % 32u), _wgslsmith_mult_i32(_wgslsmith_mod_i32(0i, 1i), ~1i))), all(vec2<bool>(true, true)));
    var_0 = -vec4<i32>(-8356i, ~countOneBits(_wgslsmith_div_i32(0i, -9066i)), _wgslsmith_mod_i32(var_0.x, ~var_0.x), _wgslsmith_mod_i32(67589i, ~(i32(-1i) * -57102i)));
    var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, var_0.x, _wgslsmith_add_i32(max(-1i, abs(1i)), -67312i), var_0.x), ~vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(var_0.x, 0i, var_0.x), var_0.xxz), ~(-var_0.x), -abs(var_0.x), var_0.x));
    let var_1 = firstTrailingBit(select(u_input.c.x, _wgslsmith_mult_u32(~69534u, 1u), 1162f <= _wgslsmith_div_f32(728f, arg_1))) >= _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(select(min(vec3<u32>(4294967295u, 54025u, u_input.d.x), vec3<u32>(23311u, 54794u, u_input.b.x)), ~vec3<u32>(u_input.a, u_input.d.x, u_input.c.x), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), vec3<u32>(u_input.c.x | 4294967295u, u_input.c.x, u_input.d.x)), 25430u);
    var_0 = max(min(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, -2747i, 16160i, var_0.x), reverseBits(vec4<i32>(-19027i, -11355i, var_0.x, -1i))), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, -1i, var_0.x, 1i) << (vec4<u32>(1u, 45738u, u_input.b.x, 0u) % vec4<u32>(32u)), vec4<i32>(var_0.x, var_0.x, -22609i, -42029i) << (u_input.d % vec4<u32>(32u)))), select(~vec4<i32>(var_0.x, 0i, var_0.x, 2147483647i) ^ vec4<i32>(2147483647i, 0i, var_0.x, 19367i), vec4<i32>(_wgslsmith_clamp_i32(-1i, 1546i, var_0.x), -2147483647i, min(var_0.x, 0i), -37702i), var_1)) ^ (_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(select(vec4<i32>(var_0.x, var_0.x, var_0.x, -2147483647i), vec4<i32>(var_0.x, -1i, 8240i, var_0.x), vec4<bool>(false, false, var_1, var_1)), -vec4<i32>(var_0.x, var_0.x, var_0.x, -3261i)), vec4<i32>(func_3(Struct_3(vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x), arg_2, var_1, var_0.x, arg_0), var_0.x), _wgslsmith_clamp_i32(-2147483647i, 0i, var_0.x), ~0i, var_0.x)) & countOneBits(reverseBits(vec4<i32>(var_0.x, var_0.x, var_0.x, -2147483647i) << (vec4<u32>(u_input.a, 27814u, u_input.a, u_input.b.x) % vec4<u32>(32u)))));
    return vec2<bool>(var_1, true);
}

fn func_1() -> vec2<f32> {
    var var_0 = true;
    var_0 = false;
    let var_1 = u_input.b.x;
    var_0 = any(!(!func_5(214f, _wgslsmith_f_op_f32(f32(-1f) * -1582f), func_2())));
    var_0 = true;
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(425f + _wgslsmith_f_op_f32(f32(-1f) * -453f)), _wgslsmith_f_op_f32(f32(-1f) * -1072f)) * vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2374f * 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1143f)))), _wgslsmith_f_op_f32(max(465f, _wgslsmith_f_op_f32(sign(-389f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 1i, 8889i, 14571i), reverseBits(vec4<i32>(-60705i, -57893i, -44548i, -9913i) << (vec4<u32>(u_input.b.x, 6551u, 36565u, 76948u) % vec4<u32>(32u)))), vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(32153i, 2147483647i), vec2<i32>(-18806i, -68796i)), 1i, -1i, -_wgslsmith_sub_i32(-27978i, -28387i)), ~(-abs(vec4<i32>(-30007i, -30194i, -2147483647i, 0i)))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_1()))))), true, -50598i, -1526f);
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_0.e, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-var_0.e))), var_0.b.a.x, var_0.b.a.x, 1000f) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.b.a.x, 935f, var_0.e, var_0.b.a.x))))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.a.x), 1108f, var_0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_4(Struct_2(Struct_1(var_0.b.a), var_0.b, var_0.b, Struct_1(var_0.b.a), Struct_1(vec2<f32>(1287f, var_0.e))), 2147483647i, vec3<bool>(false, var_0.c, var_0.c), var_0.c)).x)))));
    let var_2 = ~13418u;
    var var_3 = 0i;
    var var_4 = ~(~(~_wgslsmith_add_vec2_u32(~vec2<u32>(5507u, var_2), select(u_input.b.xy, u_input.c.xz, vec2<bool>(false, var_0.c)))));
    let var_5 = Struct_4(var_2 << (~countOneBits(var_4.x << (27771u % 32u)) % 32u), Struct_3(vec4<i32>(0i, -2147483647i, select(_wgslsmith_mod_i32(var_0.d, 84438i), 0i, false), max(-2147483647i, firstLeadingBit(2147483647i))), func_2(), var_0.c, 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1022f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1052f)))));
    var var_6 = ~min(u_input.c.yx, u_input.c.zx);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(521f + var_1.x) + var_5.b.b.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e * 1839f) - -173f)), _wgslsmith_f_op_f32(var_0.b.a.x - -1298f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_1.wwy))))));
}

