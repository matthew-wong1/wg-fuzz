struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<u32> {
    let var_0 = !select(!vec2<bool>(true, any(vec4<bool>(true, true, false, false))), vec2<bool>(true, true), false);
    var var_1 = 1i;
    let var_2 = Struct_3(Struct_1(select(select(vec3<bool>(true, var_0.x, var_0.x), !vec3<bool>(var_0.x, false, false), var_0.x), vec3<bool>(true, all(vec3<bool>(true, var_0.x, false)), var_0.x), !select(true, true, var_0.x)), _wgslsmith_mod_vec4_i32(~vec4<i32>(-18056i, u_input.a, u_input.a, 9889i), vec4<i32>(1i, -31851i, 0i, u_input.a)) ^ select(select(vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a), vec4<i32>(-2147483647i, -17280i, u_input.a, -20728i), var_0.x), vec4<i32>(54857i, u_input.a, u_input.a, -1i), true)), -vec4<i32>(u_input.a, u_input.a, u_input.a, ~max(u_input.a, u_input.a)), !var_0.x);
    var var_3 = var_2.a;
    var var_4 = Struct_2(var_2.a, Struct_1(vec3<bool>(all(var_3.a.zx), true | !var_2.a.a.x, !var_2.c), -max(var_2.a.b, vec4<i32>(1i, u_input.a, var_3.b.x, -60391i)) | _wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.a, -16131i, 16398i, u_input.a), vec4<i32>(17715i, u_input.a, u_input.a, 5302i) << (vec4<u32>(1u, 60025u, u_input.b, u_input.b) % vec4<u32>(32u)), var_2.b)), var_2.a, var_0.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-542f, 239f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(371f, 1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-185f, -906f)))))));
    return vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(0u, 4294967295u | _wgslsmith_add_u32(u_input.b, 1u)), u_input.b), firstLeadingBit(7424u), u_input.b | 1u, ~(~7998u));
}

fn func_2() -> Struct_2 {
    var var_0 = min(vec4<i32>(-31033i, firstLeadingBit(24632i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 24561u, 75995u, 37030u), vec4<u32>(0u, 0u, 7372u, u_input.b)) % 32u)), u_input.a, u_input.a), _wgslsmith_clamp_vec4_i32(-firstTrailingBit(vec4<i32>(-1i, -74159i, -12095i, -11208i)) >> (select(vec4<u32>(37028u, 1u, u_input.b, u_input.b) << (vec4<u32>(u_input.b, 0u, u_input.b, u_input.b) % vec4<u32>(32u)), func_3(), vec4<bool>(true, true, true, true)) % vec4<u32>(32u)), vec4<i32>(-u_input.a, reverseBits(-1i) | u_input.a, u_input.a & select(u_input.a, u_input.a, true), _wgslsmith_mult_i32(u_input.a, -23989i) ^ abs(46595i)), max(~vec4<i32>(u_input.a, 2147483647i, u_input.a, -10781i) & vec4<i32>(u_input.a, u_input.a, 0i, -18448i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 9701i) << (vec4<u32>(u_input.b, 0u, u_input.b, u_input.b) % vec4<u32>(32u)), vec4<i32>(u_input.a, 1i, u_input.a, 2147483647i)))));
    return Struct_2(Struct_1(vec3<bool>(any(vec2<bool>(true, true)) & true, any(vec4<bool>(true, true, true, true)), !(0i <= u_input.a)), vec4<i32>(var_0.x, min(var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -61536i, 55139i, u_input.a), vec4<i32>(u_input.a, var_0.x, 1i, var_0.x))), i32(-1i) * -2147483647i, _wgslsmith_sub_i32(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_0.x, 69623i, 12623i), vec4<i32>(var_0.x, -11627i, var_0.x, u_input.a))))), Struct_1(vec3<bool>(true, true, true), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-83955i, var_0.x, -14316i, u_input.a), vec4<i32>(u_input.a, var_0.x, var_0.x, 11639i)) >> (func_3() % vec4<u32>(32u))), Struct_1(vec3<bool>(true, true, true), vec4<i32>(u_input.a, -1i, var_0.x, var_0.x) | vec4<i32>(-8544i, countOneBits(-5508i), -27483i, var_0.x)), any(vec4<bool>(false, all(vec2<bool>(true, false)) || any(vec2<bool>(true, false)), _wgslsmith_sub_i32(u_input.a, var_0.x) >= (44689i << (u_input.b % 32u)), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-559f, -1638f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(152f, 206f) + vec2<f32>(-1128f, 1000f)))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -579f), _wgslsmith_f_op_f32(466f - 1000f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(1298f)), _wgslsmith_f_op_f32(round(-1107f))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = vec4<bool>(arg_0.c.a.x, _wgslsmith_div_i32(-22159i, _wgslsmith_mod_i32(-u_input.a, 58328i)) >= 0i, false, all(vec4<bool>(!(-1i < arg_1.x), any(vec2<bool>(false, arg_0.d)), arg_0.d, 4294967295u < _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, 48432u), vec3<u32>(103885u, 0u, 18644u)))));
    var var_1 = arg_0.a;
    var var_2 = Struct_2(func_2().c, func_2().c, func_2().b, var_0.x, func_2().e);
    return Struct_1(select(!(!select(var_0.wzw, vec3<bool>(var_2.a.a.x, true, true), var_1.a)), !vec3<bool>(false, true, arg_0.e.x == var_2.e.x), select(var_1.a, vec3<bool>(!var_1.a.x, false, arg_0.a.a.x), !vec3<bool>(var_2.b.a.x, true, var_1.a.x))), firstLeadingBit(countOneBits(~var_1.b)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: bool) -> bool {
    let var_0 = !select(!vec3<bool>(func_4(Struct_2(Struct_1(vec3<bool>(arg_0.c.a.x, arg_3, arg_1.b.a.x), arg_0.a.b), arg_1.b, Struct_1(arg_0.c.a, vec4<i32>(u_input.a, -24709i, 0i, arg_0.c.b.x)), arg_0.a.a.x, vec2<f32>(arg_1.e.x, 701f)), arg_1.b.b).a.x, false, true | arg_0.c.a.x), vec3<bool>(true, true, any(!vec4<bool>(arg_0.b.a.x, arg_3, true, false))), select(arg_0.a.a, !arg_1.c.a, vec3<bool>(true, false, true)));
    let var_1 = Struct_3(arg_0.c, -arg_0.a.b, !any(!vec4<bool>(false, true, true, var_0.x)));
    let var_2 = Struct_2(Struct_1(arg_0.b.a, vec4<i32>(arg_1.b.b.x, u_input.a, ~0i, -52793i)), func_2().a, Struct_1(vec3<bool>(all(!vec4<bool>(false, arg_1.d, false, false)), var_1.a.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, var_1.a.b.x, 0i), var_1.b) >= -37131i), _wgslsmith_mod_vec4_i32(arg_0.c.b, _wgslsmith_mult_vec4_i32(vec4<i32>(16703i, arg_1.c.b.x, -22267i, -18547i), arg_1.a.b)) << (max(~vec4<u32>(8916u, arg_2.x, arg_2.x, 30908u), ~vec4<u32>(7633u, u_input.b, u_input.b, 17003u)) % vec4<u32>(32u))), -1i <= arg_1.c.b.x, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, 579f), arg_0.e)) * _wgslsmith_div_vec2_f32(arg_0.e, vec2<f32>(-1177f, arg_1.e.x)))))));
    let var_3 = firstLeadingBit(_wgslsmith_mod_u32(~0u, 1u));
    var var_4 = select(!vec4<bool>(var_1.c, false, !func_4(var_2, var_1.b).a.x, true), vec4<bool>(any(func_2().b.a.xy), var_2.b.a.x, (~var_3 >> (4294967295u % 32u)) > _wgslsmith_add_u32(0u << (var_3 % 32u), _wgslsmith_mod_u32(40072u, u_input.b)), true), all(var_0));
    return any(func_4(Struct_2(Struct_1(arg_0.c.a, vec4<i32>(arg_1.c.b.x, arg_0.b.b.x, -41148i, 2147483647i) & arg_0.b.b), var_2.a, var_2.a, all(!var_4.zy), arg_0.e), var_1.a.b).a);
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: bool, arg_3: vec3<bool>) -> vec2<u32> {
    let var_0 = func_5(Struct_2(func_4(func_2(), vec4<i32>(-2147483647i, u_input.a, -19123i, u_input.a) | vec4<i32>(6141i, arg_1.b.b.x, 2147483647i, -2147483647i)), arg_1.b, Struct_1(vec3<bool>(func_4(Struct_2(Struct_1(vec3<bool>(true, false, arg_1.a.a.x), vec4<i32>(1i, u_input.a, -2147483647i, -1i)), Struct_1(arg_1.c.a, vec4<i32>(u_input.a, 2147483647i, 0i, arg_1.a.b.x)), arg_1.b, true, arg_1.e), vec4<i32>(u_input.a, arg_1.c.b.x, -1i, arg_1.c.b.x)).a.x, true, arg_1.d), vec4<i32>(_wgslsmith_clamp_i32(2147483647i, 22056i, arg_1.b.b.x), -1i, 13134i, _wgslsmith_mult_i32(arg_1.c.b.x, u_input.a))), all(vec2<bool>(arg_3.x, arg_1.b.a.x)) || true, arg_1.e), arg_1, ~min(~vec3<u32>(30192u, 55118u, 4294967295u), vec3<u32>(abs(1u), ~4294967295u, ~27761u)), func_2().d && true);
    var var_1 = _wgslsmith_f_op_vec2_f32(-arg_1.e);
    let var_2 = func_2().a;
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1288f, arg_1.e.x) * vec2<f32>(arg_1.e.x, arg_1.e.x))))));
    var var_3 = arg_1.c;
    return _wgslsmith_mod_vec2_u32(~(min(abs(vec2<u32>(u_input.b, u_input.b)), select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(4294967295u, 0u), vec2<bool>(arg_2, true))) & func_3().wz), vec2<u32>(abs(1u), 95818u) << (select(~(~vec2<u32>(0u, u_input.b)), ~vec2<u32>(19266u, 0u), func_2().c.a.zx) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 584f;
    var var_1 = !(!vec3<bool>(_wgslsmith_f_op_f32(floor(257f)) < _wgslsmith_f_op_f32(var_0 + var_0), _wgslsmith_f_op_f32(round(var_0)) < _wgslsmith_f_op_f32(select(var_0, 370f, true)), true));
    var_1 = vec3<bool>(var_1.x, false, false);
    let var_2 = ~vec3<u32>(0u, ~_wgslsmith_dot_vec2_u32(func_1(var_0, Struct_2(Struct_1(vec3<bool>(var_1.x, true, false), vec4<i32>(u_input.a, -58206i, u_input.a, u_input.a)), Struct_1(vec3<bool>(var_1.x, false, false), vec4<i32>(1i, -23128i, 29299i, u_input.a)), Struct_1(vec3<bool>(var_1.x, false, var_1.x), vec4<i32>(u_input.a, -62612i, u_input.a, 11433i)), var_1.x, vec2<f32>(1000f, var_0)), var_1.x, vec3<bool>(var_1.x, var_1.x, var_1.x)), func_1(222f, Struct_2(Struct_1(vec3<bool>(var_1.x, true, true), vec4<i32>(u_input.a, u_input.a, u_input.a, 0i)), Struct_1(vec3<bool>(var_1.x, false, var_1.x), vec4<i32>(u_input.a, 15049i, 17958i, u_input.a)), Struct_1(vec3<bool>(var_1.x, true, var_1.x), vec4<i32>(u_input.a, 2147483647i, u_input.a, 34564i)), var_1.x, vec2<f32>(1674f, var_0)), true, vec3<bool>(var_1.x, true, false))), 1u);
    var var_3 = ~(-32702i);
    let x = u_input.a;
    s_output = StorageBuffer(var_0, u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.a ^ (u_input.a | u_input.a), max(79799i, reverseBits(-1i)), _wgslsmith_mult_i32(u_input.a, u_input.a), (u_input.a & u_input.a) << (select(26583u, var_2.x, var_1.x) % 32u)), vec4<i32>(-(i32(-1i) * -9833i), reverseBits(countOneBits(u_input.a)), ~(i32(-1i) * -27189i), firstTrailingBit(u_input.a & 2528i))), var_2.zx);
}

