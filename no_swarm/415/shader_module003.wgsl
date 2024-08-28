struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: vec2<u32>) -> vec3<i32> {
    var var_0 = vec4<bool>(true | all(!arg_1.c.yw), (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))) >= _wgslsmith_f_op_f32(f32(-1f) * -1165f)) & (all(!arg_1.c.ywy) & any(select(vec2<bool>(arg_1.c.x, arg_1.c.x), vec2<bool>(arg_1.c.x, arg_1.c.x), arg_1.c.x))), all(arg_1.c.yz), !(!all(arg_1.c)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(809f))) + _wgslsmith_div_f32(-151f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * -844f)));
    var_0 = !select(!select(select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, arg_1.c.x), false), arg_1.c, arg_1.c.x), vec4<bool>(all(select(vec4<bool>(false, arg_1.c.x, true, true), arg_1.c, false)), !all(arg_1.c.wwx), var_0.x, true), ~(~arg_1.a.a.a.x) < _wgslsmith_mod_u32(~arg_1.a.a.a.x, 4294967295u & arg_2.x));
    let var_2 = Struct_4(false, arg_1.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(466f, var_1, _wgslsmith_div_f32(678f, var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * -870f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 1860f, -944f, var_1)))));
    let var_3 = arg_1;
    return -(_wgslsmith_mult_vec3_i32(var_3.d.xwx, arg_1.d.yzz | arg_1.d.zzy) >> (vec3<u32>(arg_2.x, var_3.b.a.a.x & arg_2.x, arg_0) % vec3<u32>(32u)));
}

fn func_2() -> Struct_1 {
    var var_0 = select(select(func_3(1u, Struct_3(Struct_2(Struct_1(vec4<u32>(u_input.c, u_input.c, 30728u, 38700u))), Struct_2(Struct_1(vec4<u32>(u_input.c, 38059u, 0u, u_input.b))), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), true), ~vec4<i32>(-1i, -17002i, -27027i, 7187i)), ~vec2<u32>(1u, 1u)), _wgslsmith_mult_vec3_i32(-countOneBits(vec3<i32>(2147483647i, 2147483647i, -35076i)), vec3<i32>(1i, 1i, 1i) >> (reverseBits(vec3<u32>(u_input.d, 1u, 4294967295u)) % vec3<u32>(32u))), any(vec4<bool>(true, true, true, true))), vec3<i32>(4033i, 53600i, 33895i), false);
    var_0 = vec3<i32>(-var_0.x, 21937i, -1i);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(214f, -485f, _wgslsmith_f_op_f32(f32(-1f) * -999f), _wgslsmith_f_op_f32(584f - 1000f)) * vec4<f32>(_wgslsmith_f_op_f32(trunc(1237f)), _wgslsmith_f_op_f32(trunc(-884f)), -1780f, 1f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), true)));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1407f, _wgslsmith_div_f32(1000f, 230f), _wgslsmith_f_op_f32(trunc(var_1.x)), 192f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -859f, 118f, var_1.x) - vec4<f32>(693f, var_1.x, -1322f, -123f))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x))) * vec4<f32>(130f, var_1.x, var_1.x, var_1.x)))), true)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-681f - var_1.x), _wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(var_1.x + 161f))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1842f, 109f, var_1.x, var_1.x)))))))));
    var_0 = _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(-50230i, -1i), var_0.x, var_0.x), select(vec3<i32>(0i, var_0.x, var_0.x), vec3<i32>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, true, true)), ~(vec3<i32>(var_0.x, 1i, 8279i) << (vec3<u32>(31097u, u_input.b, 31645u) % vec3<u32>(32u)))) >> ((vec3<u32>(u_input.e, u_input.e, _wgslsmith_mod_u32(0u, u_input.a)) ^ vec3<u32>(abs(u_input.a), u_input.b | u_input.a, u_input.c)) % vec3<u32>(32u)), vec3<i32>(firstLeadingBit(select(1i, ~var_0.x, true)), ~(~(var_0.x >> (1u % 32u))), var_0.x));
    return Struct_1(~countOneBits(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.c, 44018u, u_input.c), vec4<u32>(2365u, 4294967295u, u_input.d, 1u)), min(vec4<u32>(u_input.c, u_input.d, u_input.d, u_input.b), vec4<u32>(0u, 107349u, 24798u, u_input.e)))));
}

fn func_1(arg_0: vec4<bool>) -> Struct_2 {
    var var_0 = Struct_4(arg_0.x, Struct_2(func_2()), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(532f, -334f, -834f, -747f)))) * vec4<f32>(_wgslsmith_div_f32(-439f, -1000f), _wgslsmith_div_f32(1000f, -192f), 1336f, _wgslsmith_f_op_f32(floor(958f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(220f, 805f, -289f, 656f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(130f, 1619f, 1000f, -985f)), _wgslsmith_div_vec4_f32(vec4<f32>(949f, 211f, 471f, 1048f), vec4<f32>(-114f, -1385f, -1007f, 806f))))));
    var_0 = Struct_4(true, Struct_2(func_2()), vec4<f32>(-1614f, -946f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(994f - var_0.c.x))), -1000f), var_0.c.x));
    var var_1 = Struct_1(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(var_0.b.a.a, ~vec4<u32>(37643u, 0u, u_input.c, var_0.b.a.a.x), firstTrailingBit(var_0.b.a.a)), ~vec4<u32>(~79428u, firstLeadingBit(62233u), ~4294967295u, ~4294967295u), max(min(_wgslsmith_add_vec4_u32(var_0.b.a.a, var_0.b.a.a), vec4<u32>(0u, 50971u, 6349u, var_0.b.a.a.x) | var_0.b.a.a), (var_0.b.a.a << (vec4<u32>(4294967295u, var_0.b.a.a.x, u_input.c, var_0.b.a.a.x) % vec4<u32>(32u))) >> (~var_0.b.a.a % vec4<u32>(32u)))));
    let var_2 = _wgslsmith_dot_vec4_i32(abs(~vec4<i32>(1i, 1i, 1i, 1i)), ~(-firstLeadingBit(vec4<i32>(1i, 1i, 1i, 1i))));
    var var_3 = vec3<bool>(!(!var_0.a), all(select(!arg_0, arg_0, true)) & true, var_0.a);
    return var_0.b;
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = Struct_4(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, _wgslsmith_mod_u32(u_input.b, var_0.b.a.a.x), 31419u), _wgslsmith_sub_vec4_u32(~vec4<u32>(26340u, 87738u, arg_1.b.a.a.x, 11689u), arg_1.b.a.a)) == max(~_wgslsmith_div_u32(0u, u_input.b), 2454u), Struct_2(arg_1.b.a), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(arg_1.c)))));
    var var_2 = func_1(vec4<bool>(true, !any(!vec2<bool>(var_1.a, false)), select(true, -2147483647i > -arg_0, !var_1.a), true));
    var var_3 = Struct_3(Struct_2(Struct_1(_wgslsmith_mult_vec4_u32(var_1.b.a.a >> (arg_1.b.a.a % vec4<u32>(32u)), var_2.a.a))), Struct_2(var_1.b.a), select(select(select(select(vec4<bool>(var_1.a, arg_1.a, false, var_0.a), vec4<bool>(var_0.a, false, var_1.a, var_0.a), vec4<bool>(var_1.a, var_1.a, true, true)), select(vec4<bool>(arg_1.a, false, var_1.a, var_1.a), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, var_1.a)), select(vec4<bool>(false, false, var_1.a, true), vec4<bool>(false, true, true, false), vec4<bool>(arg_1.a, false, false, arg_1.a))), vec4<bool>(true, arg_1.a, var_1.a, false), true & !var_1.a), !vec4<bool>(arg_0 == arg_0, var_1.a, false, any(vec4<bool>(true, var_1.a, var_0.a, true))), !select(select(vec4<bool>(arg_1.a, true, var_0.a, false), vec4<bool>(arg_1.a, false, var_0.a, true), vec4<bool>(arg_1.a, arg_1.a, true, arg_1.a)), vec4<bool>(var_1.a, true, true, false), false)), vec4<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-arg_0, select(arg_0, arg_0, var_1.a), 33089i), vec3<i32>(arg_0, arg_0 << (4294967295u % 32u), firstLeadingBit(arg_0))), min(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, 3577i, arg_0), vec3<i32>(arg_0, 2147483647i, arg_0))), arg_0 | ~arg_0), arg_0));
    var_2 = var_3.b;
    return func_1(vec4<bool>(true, false, !(-arg_0 == 1i), all(!var_3.c))).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -256f;
    let var_1 = Struct_4(true, Struct_2(func_4(1i, Struct_4(true, func_1(vec4<bool>(false, false, false, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -251f, var_0, 373f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(857f, var_0, var_0))))), vec4<f32>(895f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-883f, var_0))), -122f, 2178f));
    let var_2 = var_1.b.a.a.xxz;
    var var_3 = select(!vec3<bool>(select(select(var_1.a, false, false), !var_1.a, true), false, var_1.a), select(vec3<bool>(true, var_1.a, false), select(!(!vec3<bool>(var_1.a, var_1.a, true)), vec3<bool>(true, true, true), vec3<bool>(var_1.a, 14761u == u_input.a, var_1.a)), vec3<bool>(true, true, false)), vec3<bool>(!var_1.a, true, var_1.a));
    let var_4 = Struct_4(_wgslsmith_dot_vec4_u32(vec4<u32>(8186u >> (1u % 32u), func_1(vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a)).a.a.x, u_input.b, _wgslsmith_add_u32(var_2.x, 10943u)), func_2().a) >= (var_2.x ^ ~(~var_2.x)), Struct_2(func_4(-2147483647i, var_1, vec3<f32>(var_0, var_1.c.x, _wgslsmith_f_op_f32(-498f + -1994f)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-967f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.x + -1016f) - _wgslsmith_f_op_f32(round(665f))), var_0, _wgslsmith_f_op_f32(var_1.c.x + _wgslsmith_f_op_f32(floor(var_1.c.x)))))));
    let var_5 = -abs(-firstTrailingBit(vec4<i32>(2821i, -1i, -2616i, 12012i) >> (var_4.b.a.a % vec4<u32>(32u))));
    var var_6 = var_1;
    var_3 = vec3<bool>(false, var_3.x, all(!select(var_3.yx, !var_3.zx, vec2<bool>(var_4.a, false))));
    var var_7 = func_1(!vec4<bool>(true && all(vec3<bool>(var_4.a, true, false)), !(var_1.a | false), true, true));
    let x = u_input.a;
    s_output = StorageBuffer(~select(select(_wgslsmith_add_vec4_u32(var_1.b.a.a, var_6.b.a.a), ~vec4<u32>(var_6.b.a.a.x, var_7.a.a.x, 4294967295u, var_4.b.a.a.x), true), _wgslsmith_mod_vec4_u32(var_6.b.a.a, var_1.b.a.a) | vec4<u32>(4294967295u, var_4.b.a.a.x, var_6.b.a.a.x, 1u), !vec4<bool>(var_4.a, var_1.a, var_4.a, var_6.a)), i32(-1i) * -_wgslsmith_sub_i32(func_3(var_1.b.a.a.x, Struct_3(Struct_2(Struct_1(var_7.a.a)), Struct_2(var_1.b.a), vec4<bool>(var_4.a, var_1.a, var_4.a, true), vec4<i32>(var_5.x, 0i, -1i, var_5.x)), vec2<u32>(var_1.b.a.a.x, 5163u)).x, -13402i << (1u % 32u)));
}

