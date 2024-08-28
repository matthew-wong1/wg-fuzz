struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: i32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: f32,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32) -> f32 {
    let var_0 = _wgslsmith_dot_vec3_u32(select(~u_input.a, ~u_input.a, !(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false))), vec3<u32>(u_input.a.x ^ (107446u ^ (58875u ^ arg_0.x)), arg_0.x, 16065u));
    let var_1 = true;
    var var_2 = Struct_2(Struct_1(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), 1u, min(~vec2<u32>(u_input.a.x, u_input.b.x), vec2<u32>(33389u, 0u)) & vec2<u32>(u_input.b.x, _wgslsmith_add_u32(u_input.b.x, arg_0.x)), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(2232u, arg_0.x, 51633u, 18643u), vec4<u32>(var_0, var_0, 0u, 11561u)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(641f, arg_1, arg_1), vec3<f32>(-1339f, arg_1, 421f), var_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_1)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, 1725f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_1))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-452f, 1792f, -1116f), vec3<f32>(828f, 1820f, arg_1), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_1)), any(vec3<bool>(var_1, false, false)))))), 0i, _wgslsmith_f_op_f32(-arg_1), Struct_1(1624f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), 34472u, vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) ^ 28780u, var_0), vec4<u32>(arg_0.x, firstLeadingBit(max(44802u, arg_0.x)), arg_0.x, 2975u)));
    var var_3 = Struct_2(Struct_1(_wgslsmith_div_f32(-213f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-784f - arg_1))), 798f, 4294967295u, var_2.a.e.yz, _wgslsmith_mult_vec4_u32(~firstTrailingBit(vec4<u32>(u_input.b.x, 0u, var_0, arg_0.x)), vec4<u32>(_wgslsmith_mod_u32(var_0, u_input.b.x), ~18742u, u_input.b.x, var_0))), _wgslsmith_f_op_vec3_f32(select(var_2.b, _wgslsmith_div_vec3_f32(var_2.b, var_2.b), vec3<bool>(-286f < _wgslsmith_f_op_f32(839f * arg_1), any(!vec4<bool>(var_1, false, var_1, var_1)), all(select(vec2<bool>(true, true), vec2<bool>(var_1, var_1), false))))), 40742i, -2266f, var_2.e);
    var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -162f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.e.b)) + _wgslsmith_f_op_f32(-1065f + 2025f)))), ~92127u, reverseBits(_wgslsmith_mod_vec2_u32(select(arg_0.xy, arg_0.xy, var_1), vec2<u32>(u_input.a.x, 0u) & vec2<u32>(33242u, 50838u))), min((vec4<u32>(4294967295u, 0u, 1u, var_2.a.e.x) << (vec4<u32>(4294967295u, 48069u, 70704u, var_3.e.d.x) % vec4<u32>(32u))) >> (var_3.e.e % vec4<u32>(32u)), ~vec4<u32>(var_3.e.d.x, var_0, 1u, var_2.e.e.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_2.b)), var_2.b), _wgslsmith_add_i32(i32(-1i) * -_wgslsmith_mod_i32(14286i, -2147483647i), -_wgslsmith_div_i32(var_2.c, var_3.c ^ -1i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1000f, arg_1)), _wgslsmith_f_op_f32(var_2.e.a - _wgslsmith_div_f32(var_2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -703f)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1 + arg_1)))), -377f, 1u & var_3.a.c, arg_0.zz, ~select(var_2.e.e, vec4<u32>(89416u, 70569u, var_3.a.e.x, 3280u) >> (var_2.a.e % vec4<u32>(32u)), true)));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-810f))), var_2.b.x, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-377f, var_3.a.b)) * _wgslsmith_f_op_f32(f32(-1f) * -342f))));
}

fn func_2(arg_0: vec3<i32>) -> vec3<f32> {
    var var_0 = Struct_5(true, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-630f, _wgslsmith_f_op_f32(func_3(u_input.a, 584f))) * _wgslsmith_f_op_f32(trunc(-241f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1643f, 699f) + _wgslsmith_f_op_f32(func_3(u_input.b, 1102f))), 234f), u_input.a.x, _wgslsmith_div_vec2_u32(~u_input.a.xz, _wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.a.x), u_input.b.zz)) | _wgslsmith_div_vec2_u32(~u_input.b.xz, u_input.b.yz), _wgslsmith_mult_vec4_u32(vec4<u32>(~u_input.b.x, 6298u, 23552u << (1u % 32u), u_input.b.x), vec4<u32>(max(120u, u_input.b.x), ~3743u, 16136u << (0u % 32u), _wgslsmith_mod_u32(u_input.a.x, 0u)))), 370f, Struct_4(Struct_3(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true), true), 1f), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-866f - _wgslsmith_f_op_f32(floor(179f))) + _wgslsmith_f_op_f32(f32(-1f) * -869f))));
    let var_1 = Struct_4(Struct_3(select(select(vec2<bool>(true, false), var_0.d.a.a, false), select(!var_0.d.a.a, !var_0.d.a.a, vec2<bool>(true, var_0.d.a.a.x)), var_0.d.a.a), _wgslsmith_f_op_f32(-var_0.b.a)), var_0.d.b, var_0.d.a.b);
    var_0 = Struct_5(~_wgslsmith_sub_i32(-58716i >> (u_input.a.x % 32u), abs(1i)) <= 10969i, Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-672f * var_0.d.a.b) - _wgslsmith_f_op_f32(var_0.c - var_1.c)))), _wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.b.a)), _wgslsmith_f_op_f32(-907f + 1577f))), 1u, u_input.a.yz, firstTrailingBit(abs(~vec4<u32>(0u, 4294967295u, u_input.b.x, 0u)))), _wgslsmith_f_op_f32(step(-1578f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(u_input.a, 485f))))))), var_1);
    let var_2 = Struct_5(-5809i == _wgslsmith_dot_vec4_i32(min(~vec4<i32>(var_1.b, var_0.d.b, var_1.b, -25883i), reverseBits(vec4<i32>(arg_0.x, -8218i, arg_0.x, 31452i))), select(vec4<i32>(var_1.b, 2147483647i, 23564i, -1i), vec4<i32>(4738i, var_0.d.b, 1i, -11584i), vec4<bool>(true, var_0.a, false, var_0.a)) | -vec4<i32>(var_0.d.b, var_1.b, 67748i, var_0.d.b)), var_0.b, 1067f, var_0.d);
    var var_3 = false;
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-122f - var_0.c))), var_2.c, _wgslsmith_f_op_f32(420f * var_2.b.a)));
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: i32) -> Struct_2 {
    var var_0 = arg_1.a.x;
    var var_1 = Struct_4(Struct_3(vec2<bool>(false, !arg_1.a.x), _wgslsmith_f_op_f32(-arg_0)), -1638i, _wgslsmith_f_op_f32(round(arg_1.b)));
    let var_2 = Struct_2(Struct_1(1053f, 1637f, countOneBits(arg_2.x), _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a.x, 5825u), _wgslsmith_sub_vec2_u32(abs(vec2<u32>(arg_2.x, arg_2.x)), _wgslsmith_div_vec2_u32(vec2<u32>(53561u, u_input.a.x), u_input.a.yz))), ~(~vec4<u32>(arg_2.x, 14555u, 72508u, arg_2.x) << (vec4<u32>(29496u, 65337u, u_input.b.x, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a.b, -176f, -1991f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-433f, var_1.c, -1859f)), !arg_1.a.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -1218f, -266f) - _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, -162f, -1305f), vec3<f32>(var_1.a.b, -483f, -431f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(vec3<i32>(var_1.b, var_1.b, -12855i))))))), -1i, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(ceil(arg_0)))), _wgslsmith_f_op_f32(f32(-1f) * -2475f))), Struct_1(arg_0, arg_0, min((arg_2.x >> (79774u % 32u)) ^ 0u, ~arg_2.x), ~(firstLeadingBit(arg_2.zx) & (u_input.a.yx >> (u_input.b.zx % vec2<u32>(32u)))), _wgslsmith_mult_vec4_u32(countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.a.x, arg_2.x, u_input.a.x), vec4<u32>(arg_2.x, 1u, u_input.a.x, 22847u))), abs(~vec4<u32>(43855u, arg_2.x, arg_2.x, arg_2.x)))));
    var_1 = Struct_4(arg_1, select(1i, arg_3, true) >> (reverseBits(~(~0u)) % 32u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1010f + arg_0) + _wgslsmith_f_op_f32(-var_1.c)))))));
    let var_3 = var_2;
    return Struct_2(var_2.a, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.x - 762f) - var_1.c), var_2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b.x - -964f) - _wgslsmith_f_op_f32(-869f - 147f))))), _wgslsmith_dot_vec3_i32(reverseBits(_wgslsmith_clamp_vec3_i32(~vec3<i32>(0i, 54154i, -1i), -vec3<i32>(-1i, -67359i, var_1.b), _wgslsmith_div_vec3_i32(vec3<i32>(var_3.c, 1i, arg_3), vec3<i32>(-44751i, var_2.c, 0i)))), firstLeadingBit(vec3<i32>(-73496i, ~51092i, -arg_3))), -1493f, var_3.e);
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(~1u, func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(902f))))), Struct_3(vec2<bool>(true, true), _wgslsmith_f_op_f32(_wgslsmith_div_f32(496f, 271f) * 1f)), u_input.a, -21235i));
    let var_1 = -1i;
    var var_2 = Struct_3(select(vec2<bool>(!all(vec4<bool>(true, false, false, false)), false), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(false, false)), true), var_0.b);
    var var_3 = Struct_5(!var_2.a.x, var_0, _wgslsmith_div_f32(1552f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1399f * 1336f) * _wgslsmith_f_op_f32(floor(var_2.b))) * -472f)), Struct_4(Struct_3(vec2<bool>(true, true), var_0.b), countOneBits(abs(var_1 & var_1)), _wgslsmith_f_op_vec3_f32(func_2(vec3<i32>(-14703i, i32(-1i) * -33849i, ~(-28282i)))).x));
    var_2 = Struct_3(!(!var_3.d.a.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -255f)))));
    var_2 = Struct_3(select(!select(select(var_3.d.a.a, var_3.d.a.a, var_3.d.a.a), vec2<bool>(false, var_3.d.a.a.x), any(vec2<bool>(var_2.a.x, true))), select(!var_2.a, vec2<bool>(!var_3.d.a.a.x, var_2.a.x), !(-67982i <= var_3.d.b)), vec2<bool>(var_2.a.x, false)), 1f);
    var_3 = Struct_5(!any(!(!vec3<bool>(var_3.a, var_2.a.x, false))), func_1(-1171f, var_3.d.a, vec3<u32>(u_input.b.x, ~var_0.d.x, _wgslsmith_add_u32(69907u, _wgslsmith_dot_vec2_u32(u_input.b.zx, var_3.b.e.wy))), var_3.d.b).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_3.b.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1790f + var_2.b))), Struct_4(var_3.d.a, func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_2(vec3<i32>(-2147483647i, var_1, 0i))).x * _wgslsmith_f_op_f32(f32(-1f) * -482f)), var_3.d.a, var_0.e.yyx, abs(select(1i, 2147483647i, true))).c, -364f));
    var_3 = Struct_5(var_3.d.a.a.x, var_3.b, func_1(-1352f, var_3.d.a, vec3<u32>(abs(var_0.e.x), ~abs(var_0.e.x), ~_wgslsmith_div_u32(var_3.b.c, 4294967295u)), _wgslsmith_sub_i32(func_1(_wgslsmith_f_op_f32(trunc(var_3.c)), Struct_3(vec2<bool>(false, true), -640f), var_3.b.e.ywy << (u_input.b % vec3<u32>(32u)), -1i << (var_3.b.c % 32u)).c, _wgslsmith_sub_i32(_wgslsmith_sub_i32(1i, 1i), _wgslsmith_add_i32(var_3.d.b, var_1)))).a.b, Struct_4(Struct_3(var_3.d.a.a, _wgslsmith_f_op_f32(-var_0.b)), ~(-(~var_3.d.b)), var_3.d.c));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -_wgslsmith_add_i32(var_1 >> (var_3.b.c % 32u), 0i), _wgslsmith_f_op_f32(-var_3.c), var_1, 4347u, max(_wgslsmith_div_vec4_i32(vec4<i32>(var_3.d.b ^ var_3.d.b, 2147483647i, abs(0i), ~25857i), vec4<i32>(-16894i, _wgslsmith_mult_i32(var_3.d.b, 1i), max(1i, -4573i), var_3.d.b >> (u_input.b.x % 32u))), countOneBits(vec4<i32>(-1i << (0u % 32u), _wgslsmith_clamp_i32(0i, -4321i, var_3.d.b), var_3.d.b, 13601i))));
}

