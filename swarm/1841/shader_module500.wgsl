struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec4<f32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_5 {
    a: f32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<u32>) -> vec2<f32> {
    let var_0 = Struct_1(vec3<bool>(any(vec2<bool>(true, true)), all(vec3<bool>(true, true, true)), false), select(vec3<bool>(true, true, select(false, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, select(u_input.b.x != arg_0.x, all(vec3<bool>(true, true, false)), true), false)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-249f, 745f), _wgslsmith_f_op_f32(f32(-1f) * -391f))), _wgslsmith_f_op_f32(f32(-1f) * -358f), abs(~u_input.c) <= u_input.c)), !(!(!all(vec2<bool>(false, true)))));
    var var_1 = Struct_2(var_0, select(~firstLeadingBit(-1i), 0i, true));
    var_1 = Struct_2(Struct_1(var_1.a.b, select(var_0.b, select(select(vec3<bool>(false, var_0.a.x, false), var_1.a.b, var_1.a.b.x), select(var_1.a.b, var_0.a, var_1.a.b), !vec3<bool>(false, var_0.b.x, false)), false), _wgslsmith_f_op_f32(ceil(var_1.a.c)), !select(var_0.d, var_0.d, false) & select(var_0.b.x == true, true, var_0.b.x)), firstTrailingBit(-24120i));
    let var_2 = firstTrailingBit(arg_0.x);
    let var_3 = Struct_4(var_1.a, Struct_1(!(!select(var_1.a.b, var_0.b, var_0.a.x)), select(var_0.a, var_1.a.b, !var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.c + _wgslsmith_f_op_f32(-var_0.c))), all(!vec3<bool>(var_1.a.b.x, true, var_0.d))), var_0, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(var_0.c * var_0.c)), var_1.a.c))));
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(564f * -1512f), 1000f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-2908f, var_3.c.c), vec2<f32>(-124f, var_0.c)))))));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec2<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, _wgslsmith_f_op_f32(arg_0.c - arg_0.c))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(549f, arg_0.c) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, arg_0.c)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_sub_vec3_u32(u_input.b.yxx & vec3<u32>(1u, u_input.c, 0u), vec3<u32>(u_input.b.x, 16119u, u_input.a) >> (vec3<u32>(u_input.a, u_input.b.x, 1u) % vec3<u32>(32u))))))));
    var var_1 = var_0;
    var var_2 = Struct_4(Struct_1(arg_0.a, !(!arg_0.b), arg_0.c, true), arg_0, Struct_1(select(vec3<bool>(arg_0.a.x, arg_1 & arg_0.a.x, !arg_0.b.x), arg_0.b, select(arg_1, any(arg_0.b), !arg_0.b.x)), arg_0.a, _wgslsmith_f_op_f32(-1043f - _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(step(-1229f, -1000f)))), arg_0.d), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1277f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(min(-416f, -163f)))));
    var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(946f, var_2.a.c), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.b.c, arg_0.c), vec2<f32>(-1199f, var_1.x))), all(var_2.b.b))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(443f, -3081f), _wgslsmith_f_op_vec2_f32(-var_0), !var_2.a.a.xy))) - _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_mod_vec3_u32(u_input.b.wyw, u_input.b.xwy)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_0, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.a.c, 431f), vec2<f32>(var_0.x, -1101f), var_2.a.d))))), _wgslsmith_f_op_vec2_f32(floor(var_0)))), !arg_0.a.yx));
    var var_3 = var_2.a;
    return _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-845f * 2818f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-854f + var_0.x))))), _wgslsmith_f_op_f32(step(arg_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -426f), _wgslsmith_f_op_f32(round(-185f))))))));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: u32) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(arg_0, arg_1.x), -1i), vec2<i32>(~arg_1.x, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(arg_0, -5542i, 24689i), vec3<i32>(2147483647i, arg_1.x, arg_0) | vec3<i32>(-1i, -27964i, -689i), -vec3<i32>(1i, arg_1.x, 41882i)), vec3<i32>(-2147483647i << (u_input.c % 32u), ~14899i, -1i))));
    var var_1 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -712f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-338f, _wgslsmith_f_op_f32(f32(-1f) * -116f))))), _wgslsmith_f_op_f32(f32(-1f) * -399f), 1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-565f)), -148f, _wgslsmith_f_op_f32(func_2(Struct_1(vec3<bool>(true, false, false), vec3<bool>(false, true, false), 129f, false), false, arg_1)), _wgslsmith_f_op_f32(-521f - 370f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(func_2(Struct_1(vec3<bool>(false, true, true), vec3<bool>(false, false, false), -594f, true), false, vec2<i32>(arg_1.x, arg_1.x))), -634f, _wgslsmith_f_op_f32(1662f - 452f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1240f, 1578f, -2068f, -1000f) * vec4<f32>(2827f, 735f, -724f, 652f)))))));
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(478f, -1222f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-883f * 1080f)) + _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-1452f + var_1.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))))) * vec4<f32>(var_1.x, -338f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_1.x) - var_1.x), 1213f));
    var_3 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(792f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-603f + var_1.x) + _wgslsmith_f_op_f32(var_3.x * -2099f)) - _wgslsmith_f_op_f32(func_2(Struct_1(vec3<bool>(false, var_2, var_2), vec3<bool>(var_2, var_2, var_2), 1000f, false), var_2 & var_2, vec2<i32>(0i, arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, var_3.x)))), 1129f), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.x), -1050f))), _wgslsmith_f_op_f32(f32(-1f) * -463f), -886f, _wgslsmith_f_op_f32(floor(-914f)))));
    return Struct_1(select(vec3<bool>(!var_2, true, var_2), !select(vec3<bool>(var_2, true, true), vec3<bool>(var_2, var_2, false), var_2), !vec3<bool>(true, select(false, var_2, var_2), var_2)), select(select(vec3<bool>(!var_2, true, var_2), select(vec3<bool>(false, var_2, var_2), vec3<bool>(false, var_2, var_2), vec3<bool>(true, var_2, false)), true), !vec3<bool>(any(vec3<bool>(false, true, var_2)), true, var_2), (var_3.x >= _wgslsmith_f_op_f32(var_1.x + var_1.x)) && true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3.x), -717f, true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(var_3.x, var_3.x, false)), _wgslsmith_div_f32(var_3.x, 174f))))) + _wgslsmith_f_op_f32(-var_1.x)), false);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_mult_i32(arg_0.b, 37423i);
    var_0 = _wgslsmith_dot_vec3_i32(select(vec3<i32>(~0i, min(~14977i, firstTrailingBit(arg_0.b)), abs(_wgslsmith_sub_i32(-1i, -34258i))), select(vec3<i32>(countOneBits(1i), arg_0.b, 2147483647i >> (0u % 32u)), -(vec3<i32>(0i, arg_0.b, 2134i) >> (vec3<u32>(u_input.c, 4294967295u, 1u) % vec3<u32>(32u))), arg_0.a.b.x), 1u < ~(~arg_2.x)), min(abs(select(vec3<i32>(arg_0.b, 38384i, -16360i), vec3<i32>(-1i, -28372i, arg_0.b), true) ^ vec3<i32>(2201i, arg_0.b, arg_0.b)), vec3<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_0.b, 37307i, -26239i, arg_0.b)), vec4<i32>(-12965i, -34589i, -10444i, arg_0.b) ^ vec4<i32>(-44717i, arg_0.b, arg_0.b, arg_0.b)), -27104i, _wgslsmith_clamp_i32(abs(0i), 0i, arg_0.b))));
    var var_1 = select(_wgslsmith_mod_vec2_u32(~(~(~vec2<u32>(u_input.b.x, arg_2.x))), vec2<u32>(max(1u, arg_2.x), ~u_input.a) & vec2<u32>(1u, 0u)), ~_wgslsmith_sub_vec2_u32(u_input.b.xx, arg_2.zw), false);
    var_0 = 2147483647i;
    var var_2 = select(func_1(abs(_wgslsmith_mod_i32(min(673i, -2147483647i), ~(-19632i))), _wgslsmith_mod_vec2_i32(max(vec2<i32>(arg_0.b, arg_0.b), vec2<i32>(arg_0.b, arg_0.b)), vec2<i32>(13773i, -15853i)) << (~arg_2.zy % vec2<u32>(32u)), ~arg_2.x).a.yx, !arg_0.a.b.xz, all(vec2<bool>(arg_0.a.d, true)));
    return Struct_2(arg_1, ~(~_wgslsmith_add_i32(~21718i, 56055i)));
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: bool) -> Struct_5 {
    let var_0 = func_1(-arg_1.a.b, (abs(firstTrailingBit(vec2<i32>(2147483647i, arg_1.a.b))) >> (_wgslsmith_add_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(u_input.b.x, u_input.c)) % vec2<u32>(32u))) ^ -(~vec2<i32>(-1i, arg_1.a.b)), 140073u);
    var var_1 = select(vec4<bool>(any(vec4<bool>(false, 31378i <= arg_1.a.b, arg_1.a.a.c <= 237f, true)), any(func_1(arg_1.a.b, vec2<i32>(arg_1.a.b, arg_1.a.b), arg_0).b.zy) || all(!arg_1.b.yx), -_wgslsmith_add_i32(arg_1.a.b, arg_1.a.b) == arg_1.a.b, true), !arg_1.b, vec4<bool>(!(select(arg_2, true, true) & (arg_2 & true)), !(min(u_input.c, arg_0) <= 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.a.c + -197f) * _wgslsmith_div_f32(var_0.c, arg_1.c.x)) != func_1(countOneBits(-2147483647i), _wgslsmith_mod_vec2_i32(vec2<i32>(-29655i, -54695i), vec2<i32>(-58973i, -16817i)), arg_0).c, all(vec2<bool>(arg_1.b.x, arg_2))));
    var_1 = vec4<bool>(var_0.a.x, func_1(0i, vec2<i32>(-arg_1.a.b, 0i) ^ -vec2<i32>(-40223i, 0i), 4294967295u).b.x, _wgslsmith_add_i32(-arg_1.a.b, arg_1.a.b & (arg_1.a.b << (23674u % 32u))) < firstLeadingBit(abs(_wgslsmith_mod_i32(arg_1.a.b, arg_1.a.b))), arg_1.a.a.a.x);
    let var_2 = Struct_3(arg_1.a, !vec4<bool>(true, var_0.b.x, true & any(arg_1.b.yzx), any(vec4<bool>(var_0.a.x, false, true, var_0.a.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-func_4(Struct_2(Struct_1(vec3<bool>(var_1.x, false, false), vec3<bool>(arg_1.b.x, var_1.x, false), var_0.c, true), arg_1.a.b), arg_1.a.a, u_input.b).a.c), _wgslsmith_f_op_f32(var_0.c - arg_1.a.a.c), arg_1.a.a.c, func_4(func_4(Struct_2(Struct_1(var_0.a, vec3<bool>(false, var_1.x, false), 436f, true), -17245i), arg_1.a.a, vec4<u32>(u_input.b.x, 43898u, 0u, u_input.a)), arg_1.a.a, _wgslsmith_clamp_vec4_u32(u_input.b, vec4<u32>(52652u, u_input.b.x, 25369u, arg_0), u_input.b)).a.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(829f, -719f, var_0.c, var_0.c), _wgslsmith_f_op_vec4_f32(arg_1.c + arg_1.c))), select(arg_1.b, arg_1.b, true && (arg_1.d != var_0.c)))), -563f);
    var var_3 = func_4(arg_1.a, Struct_1(!(!vec3<bool>(arg_1.b.x, false, var_2.b.x)), !select(vec3<bool>(true, var_2.a.a.d, true), !arg_1.a.a.b, true), _wgslsmith_f_op_vec2_f32(func_3(u_input.b.zwy & ~u_input.b.yww)).x, true), ~u_input.b);
    return Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(393f * var_0.c)))), vec3<u32>(8402u, ~(~u_input.b.x), ~(~abs(arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~(~u_input.a), Struct_3(func_4(Struct_2(func_1(-2147483647i, vec2<i32>(1i, -1i), 6766u), 65718i >> (u_input.b.x % 32u)), func_1(0i, ~vec2<i32>(-1i, 14452i), ~1u), vec4<u32>(u_input.a >> (3705u % 32u), ~u_input.b.x, countOneBits(u_input.c), 9602u)), select(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), true), vec4<bool>(true, true, true, true), func_4(func_4(Struct_2(Struct_1(vec3<bool>(false, true, true), vec3<bool>(true, false, true), -379f, false), 16843i), Struct_1(vec3<bool>(false, false, false), vec3<bool>(false, true, false), -343f, true), u_input.b), func_4(Struct_2(Struct_1(vec3<bool>(true, false, true), vec3<bool>(false, false, true), -1860f, false), 1944i), Struct_1(vec3<bool>(true, false, true), vec3<bool>(false, false, false), 1000f, true), u_input.b).a, select(u_input.b, u_input.b, true)).a.d), vec4<f32>(_wgslsmith_f_op_f32(-1037f * _wgslsmith_f_op_f32(select(-429f, -119f, true))), _wgslsmith_f_op_f32(select(-1677f, _wgslsmith_f_op_f32(floor(-979f)), true)), -1043f, func_1(-1i, -vec2<i32>(1i, -1i), _wgslsmith_mod_u32(u_input.a, u_input.a)).c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-237f + _wgslsmith_f_op_f32(-1273f - -348f)), _wgslsmith_f_op_f32(f32(-1f) * -1600f))), true);
    var var_1 = vec3<f32>(1036f, var_0.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a))));
    let var_2 = true;
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(393f, var_1.x, -1643f))) * vec3<f32>(_wgslsmith_f_op_f32(-1068f * 295f), _wgslsmith_f_op_f32(-481f - 239f), func_1(-10194i, vec2<i32>(-35564i, 1i), u_input.c).c)))));
    let var_3 = Struct_1(func_1(firstLeadingBit(1i << (_wgslsmith_mod_u32(u_input.b.x, 1u) % 32u)), _wgslsmith_clamp_vec2_i32(~vec2<i32>(2147483647i, 27003i), min(vec2<i32>(2147483647i, -1i), vec2<i32>(498i, 0i)), vec2<i32>(2147483647i, 42117i)) << (select(~vec2<u32>(40469u, 0u), u_input.b.xz, vec2<bool>(true, true)) % vec2<u32>(32u)), u_input.c).a, vec3<bool>(func_4(Struct_2(func_4(Struct_2(Struct_1(vec3<bool>(var_2, true, var_2), vec3<bool>(var_2, var_2, false), var_0.a, var_2), 0i), Struct_1(vec3<bool>(true, false, var_2), vec3<bool>(var_2, var_2, true), var_1.x, false), vec4<u32>(u_input.c, 10320u, var_0.b.x, var_0.b.x)).a, 223i), func_1(-2147483647i, max(vec2<i32>(0i, 2147483647i), vec2<i32>(-19385i, 7166i)), 31891u >> (var_0.b.x % 32u)), vec4<u32>(u_input.b.x, ~u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.a, 0u, var_0.b.x), vec4<u32>(u_input.a, 1882u, u_input.c, var_0.b.x)), u_input.a)).a.a.x, var_2, all(select(!vec2<bool>(true, var_2), !vec2<bool>(var_2, false), var_2))), 142f, var_2);
    var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 1647f, 1309f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_3.c, var_1.x, var_1.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-900f, var_3.c, -519f), vec3<f32>(var_3.c, var_1.x, -495f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_3.c, var_3.c))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-951f, var_0.a, 1000f), vec3<f32>(713f, -1313f, var_1.x))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1658f, var_3.c, var_3.c)))))));
    var var_4 = 21717u ^ var_0.b.x;
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_3.c + -719f))), 126f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(240f, _wgslsmith_f_op_f32(f32(-1f) * -449f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(999f - var_3.c))) - -614f));
}

