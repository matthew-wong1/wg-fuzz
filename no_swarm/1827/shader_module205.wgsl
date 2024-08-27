struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: u32,
    c: vec4<f32>,
    d: Struct_2,
    e: vec3<f32>,
}

struct Struct_5 {
    a: f32,
    b: vec2<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> f32 {
    let var_0 = Struct_2(arg_1.ww, Struct_1(select(arg_1.yyy << ((arg_0.a & vec3<u32>(arg_1.x, u_input.a, u_input.a)) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(arg_1.zwy, arg_0.a), !all(vec3<bool>(false, false, true)))), !select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(false, false)), vec2<bool>(true, true)));
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2124f, 118f, -2095f))))), _wgslsmith_mult_u32(countOneBits(var_0.a.x), arg_1.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(357f, -768f, -899f, -398f)))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-480f, -414f, 1000f, 221f), vec4<f32>(-1908f, -109f, 311f, 1194f))))), var_0, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-643f, 423f, 486f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1366f, 992f, 837f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(109f, -946f, -329f)))))));
    let var_2 = var_1.d;
    let var_3 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f * 1025f), -1710f, true)))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.a.x * 409f), 700f, var_1.d.c.x)), _wgslsmith_f_op_f32(abs(-596f))))), vec2<u32>(~(~arg_0.a.x), 0u) ^ var_1.d.b.a.yx, var_1.d);
    let var_4 = Struct_2(select(var_2.b.a.zy, ~vec2<u32>(_wgslsmith_clamp_u32(arg_1.x, arg_0.a.x, arg_0.a.x), 4294967295u), any(var_0.c) == true), var_1.d.b, vec2<bool>(!any(select(vec3<bool>(var_0.c.x, true, var_3.c.c.x), vec3<bool>(var_0.c.x, var_0.c.x, true), vec3<bool>(var_3.c.c.x, true, false))), true));
    return -222f;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_5) -> vec2<bool> {
    let var_0 = Struct_3(min(arg_2.b.x, arg_2.b.x), Struct_1(arg_2.c.b.a), vec3<u32>(35353u, max(reverseBits(arg_0), _wgslsmith_add_u32(u_input.a, 4294967295u)) | 0u, arg_2.b.x));
    var var_1 = Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, arg_2.a, arg_2.a) * vec3<f32>(171f, -210f, arg_2.a)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-478f * arg_2.a))), _wgslsmith_div_f32(-325f, arg_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a - arg_2.a)))), ~(~countOneBits(_wgslsmith_clamp_u32(1u, 102511u, arg_1.a.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2.a, -342f, 1000f, 1810f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_2.a)), -1532f, _wgslsmith_f_op_f32(arg_2.a * arg_2.a), _wgslsmith_f_op_f32(round(282f)))), all(!vec2<bool>(arg_2.c.c.x, arg_2.c.c.x)))), Struct_2(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.a, arg_0), _wgslsmith_mult_vec2_u32(arg_2.c.b.a.xy, arg_2.c.b.a.xz)), ~select(vec2<u32>(u_input.a, 20030u), vec2<u32>(45234u, arg_1.a.x), vec2<bool>(true, arg_2.c.c.x)), vec2<u32>(abs(arg_2.c.a.x), ~arg_1.a.x)), Struct_1(vec3<u32>(_wgslsmith_mult_u32(12029u, var_0.c.x), ~arg_1.a.x, min(arg_1.a.x, 701u))), select(arg_2.c.c, !vec2<bool>(arg_2.c.c.x, true), !(!arg_2.c.c.x))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1675f, arg_2.a, 1430f))), vec3<f32>(arg_2.a, -965f, arg_2.a))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, 693f, -899f) + vec3<f32>(arg_2.a, 837f, 1635f))))), vec3<f32>(_wgslsmith_f_op_f32(min(1456f, _wgslsmith_f_op_f32(arg_2.a + 711f))), _wgslsmith_f_op_f32(f32(-1f) * -1094f), _wgslsmith_f_op_f32(min(-707f, -1932f))))));
    let var_2 = select(select(vec4<bool>(true, any(vec3<bool>(var_1.d.c.x, true, arg_2.c.c.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -12736i, 26337i), vec3<i32>(-23318i, 34902i, 3483i)) == (2147483647i >> (arg_0 % 32u)), arg_0 <= _wgslsmith_div_u32(var_0.b.a.x, var_0.a)), select(!select(vec4<bool>(var_1.d.c.x, true, arg_2.c.c.x, var_1.d.c.x), vec4<bool>(false, arg_2.c.c.x, true, arg_2.c.c.x), false), !vec4<bool>(false, var_1.d.c.x, true, arg_2.c.c.x), select(vec4<bool>(true, arg_2.c.c.x, false, false), !vec4<bool>(var_1.d.c.x, arg_2.c.c.x, var_1.d.c.x, true), !vec4<bool>(var_1.d.c.x, arg_2.c.c.x, true, false))), true), vec4<bool>(any(vec2<bool>(arg_2.c.c.x, !arg_2.c.c.x)), var_1.d.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(367f + var_1.c.x) * 478f) == _wgslsmith_f_op_f32(floor(1000f)), !var_1.d.c.x), !vec4<bool>(true, all(vec4<bool>(true, var_1.d.c.x, arg_2.c.c.x, true)) && true, true, !all(vec3<bool>(true, false, true))));
    let var_3 = _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(~max(~var_1.d.b.a.zz, vec2<u32>(arg_1.a.x, arg_2.c.a.x)), var_0.c.zy), _wgslsmith_clamp_vec2_u32(min(reverseBits(vec2<u32>(var_1.d.b.a.x, arg_2.c.a.x) << (var_0.c.zy % vec2<u32>(32u))), countOneBits(_wgslsmith_mod_vec2_u32(var_1.d.b.a.zy, var_1.d.b.a.yy))), select(~abs(vec2<u32>(arg_2.b.x, 60782u)), ~var_1.d.b.a.xy, arg_2.c.c.x), ~(~arg_2.b)));
    var_1 = Struct_4(var_1.e, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, min(arg_2.b.x, 40711u), arg_2.c.b.a.x), vec3<u32>(1u, ~_wgslsmith_div_u32(58855u, arg_2.b.x), arg_0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_1.c)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(527f, -1394f), arg_2.a, arg_2.a, _wgslsmith_f_op_f32(select(-788f, var_1.e.x, arg_2.c.c.x))))), Struct_2(vec2<u32>(var_1.b, abs(~arg_1.a.x)), arg_1, vec2<bool>(false, true)), var_1.c.yxy);
    return arg_2.c.c;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>) -> bool {
    let var_0 = arg_1.x;
    let var_1 = true;
    let var_2 = select(func_4(0u, arg_0.b, Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0.b, vec4<u32>(u_input.a, arg_0.a.x, arg_0.a.x, arg_0.a.x)))), arg_0.a << (~arg_0.a % vec2<u32>(32u)), Struct_2(_wgslsmith_clamp_vec2_u32(arg_0.a, vec2<u32>(49706u, u_input.a), arg_0.b.a.yx), arg_0.b, !arg_0.c))), !arg_0.c, arg_0.c);
    var var_3 = vec4<u32>(_wgslsmith_sub_u32(5401u, _wgslsmith_div_u32(u_input.a << (67278u % 32u), arg_0.a.x) & 0u), 34180u, 4294967295u, countOneBits(min(abs(~49017u), ~arg_0.a.x)));
    var var_4 = arg_0;
    return true;
}

fn func_5(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec2<bool>) -> i32 {
    return _wgslsmith_mult_i32(-(~(_wgslsmith_sub_i32(arg_1.x, 69208i) & (arg_1.x | arg_1.x))), -2147483647i);
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-1f);
    let var_1 = arg_0;
    let var_2 = func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1343f, 1000f, arg_1.x) * vec3<f32>(arg_1.x, arg_1.x, var_0))), vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), -1226f, arg_1.x), vec3<bool>(func_2(Struct_2(vec2<u32>(0u, 35815u), Struct_1(vec3<u32>(u_input.a, 12951u, 0u)), vec2<bool>(false, true)), vec2<i32>(26866i, arg_0)), true, true))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + -403f)), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1985f, arg_1.x))))), ~(-(~vec4<i32>(arg_0, arg_0, -29381i, -2147483647i))), Struct_1(vec3<u32>(arg_2, ~(~arg_2), _wgslsmith_add_u32(arg_2, abs(2964u)))), vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))) && all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true))), any(vec3<bool>(true, true, true))));
    let var_3 = Struct_2(_wgslsmith_mult_vec2_u32(countOneBits(~vec2<u32>(1u, 11573u) & _wgslsmith_mod_vec2_u32(vec2<u32>(arg_2, 1u), vec2<u32>(21674u, 4294967295u))), abs(countOneBits(select(vec2<u32>(1u, 4294967295u), vec2<u32>(1u, arg_2), true)))), Struct_1(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(min(vec3<u32>(0u, arg_2, u_input.a), vec3<u32>(4294967295u, arg_2, 56965u)), vec3<u32>(42123u, 60972u, 52553u) & vec3<u32>(arg_2, arg_2, 4294967295u)), abs(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 1u, arg_2), vec3<u32>(4294967295u, u_input.a, 4294967295u))))), vec2<bool>(any(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), true), vec4<bool>(false, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), false))), true));
    let var_4 = Struct_3(abs(~_wgslsmith_add_u32(0u, var_3.a.x)), var_3.b, var_3.b.a);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var var_1 = _wgslsmith_mult_i32(-min(1i, func_1(i32(-1i) * -8467i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-298f, 687f)), ~u_input.a)), i32(-1i) * -1129i);
    var var_2 = Struct_3(~0u, Struct_1(select(firstLeadingBit(~vec3<u32>(1u, 1u, u_input.a)), _wgslsmith_clamp_vec3_u32(vec3<u32>(9045u, u_input.a, 0u) & vec3<u32>(4294967295u, 60138u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(0u, u_input.a, u_input.a)), vec3<bool>(true, true, any(vec3<bool>(false, false, false))))), ~(reverseBits(countOneBits(vec3<u32>(79998u, 20322u, 15752u))) | firstLeadingBit(~vec3<u32>(u_input.a, 0u, u_input.a))));
    let var_3 = Struct_1(_wgslsmith_add_vec3_u32(var_2.b.a, _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, 1u, 4294967295u) << (select(var_2.c, vec3<u32>(26038u, 1u, u_input.a), true) % vec3<u32>(32u)), var_2.b.a)));
    let var_4 = Struct_5(399f, select(abs(~(~vec2<u32>(var_2.a, u_input.a))), ~(var_3.a.yy ^ _wgslsmith_add_vec2_u32(var_3.a.xy, var_3.a.yx)), !all(vec2<bool>(true, true))), Struct_2(~_wgslsmith_mult_vec2_u32(min(vec2<u32>(var_2.a, 1u), vec2<u32>(26859u, 4294967295u)), abs(vec2<u32>(var_2.b.a.x, var_2.a))), var_2.b, vec2<bool>(true, false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-1i) * -vec4<i32>(-43325i, 18553i, 69325i, 5692i)), ~(~(~vec4<i32>(-15770i, 1i, -2147483647i, -2147483647i)))));
}

