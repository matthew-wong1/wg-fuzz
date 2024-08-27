struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec3<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1072f, arg_0)))), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(~u_input.a, 15117u, max(11795u, 11958u)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.c, 0u), vec3<u32>(1u, u_input.d.x, 14698u)) & ~vec3<u32>(u_input.b, u_input.d.x, 1u), ~vec3<u32>(u_input.c, 1u, 4294967295u)), vec3<u32>(_wgslsmith_dot_vec4_u32(max(vec4<u32>(0u, u_input.a, 4294967295u, 9900u), vec4<u32>(58531u, u_input.d.x, u_input.c, 0u)), vec4<u32>(69590u, u_input.d.x, u_input.c, u_input.a) | vec4<u32>(u_input.c, 4294967295u, u_input.b, 16113u)), u_input.c, u_input.c)), vec3<bool>(true, true, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -38672i), vec2<i32>(-1i, 1i)), -1i) >= -_wgslsmith_sub_i32(28442i, 0i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-586f, 1000f, 203f, arg_0)))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0, 191f, _wgslsmith_f_op_f32(trunc(1240f)))))));
    var_0 = Struct_1(1f, _wgslsmith_div_vec3_u32(~vec3<u32>(var_0.b.x, var_0.b.x, u_input.a), var_0.b) >> (var_0.b % vec3<u32>(32u)), var_0.c, _wgslsmith_div_vec4_f32(var_0.d, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-955f - -1000f)), 172f, var_0.d.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), -718f, any(vec2<bool>(var_0.c.x, var_0.c.x)))))));
    let var_1 = abs(abs(-3083i) << (u_input.d.x % 32u)) >> (min(4294967295u, u_input.c) % 32u);
    var_0 = Struct_1(1921f, ~var_0.b, select(select(vec3<bool>(var_0.c.x | true, any(vec2<bool>(true, false)), true), !var_0.c, var_0.c), var_0.c, var_0.c), var_0.d);
    var_0 = Struct_1(var_0.d.x, var_0.b, var_0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.d))));
    return max(var_1, -16045i);
}

fn func_2(arg_0: vec2<i32>, arg_1: i32) -> Struct_1 {
    let var_0 = _wgslsmith_add_i32(func_3(_wgslsmith_f_op_f32(-722f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-579f, -1782f)))), arg_0.x);
    let var_1 = all(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)))) & true;
    var var_2 = Struct_1(520f, min(~abs(~vec3<u32>(1u, u_input.d.x, u_input.c)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 72678u, 16543u), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.c) << (vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x) % vec3<u32>(32u)), select(vec3<u32>(u_input.d.x, 32984u, 9479u), vec3<u32>(49697u, u_input.c, u_input.d.x), false)), vec3<u32>(u_input.c, u_input.d.x, u_input.d.x) | vec3<u32>(u_input.b, u_input.d.x, 0u))), !(!(!(!vec3<bool>(true, var_1, var_1)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1342f)) - -1690f), -493f, -417f, 465f));
    let var_3 = var_2.d.x;
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-941f, _wgslsmith_f_op_f32(ceil(var_2.d.x)), var_2.d.x)))) - _wgslsmith_f_op_vec3_f32(-var_2.d.xzz));
    return Struct_1(_wgslsmith_div_f32(-120f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-328f)))))), var_2.b, var_2.c, var_2.d);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = arg_0.b.b.x == countOneBits(~_wgslsmith_clamp_u32(1u, 1u, arg_0.a.b.x));
    let var_2 = _wgslsmith_f_op_f32(-arg_0.b.a);
    var_1 = true;
    var_1 = false;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-var_0.c.d.x), false)))), vec3<u32>(var_0.c.b.x, _wgslsmith_dot_vec2_u32(~u_input.d, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.c.b.x, arg_0.c.b.x), arg_0.c.b.xz, u_input.d)), 0u | _wgslsmith_add_u32(var_0.a.b.x, func_2(vec2<i32>(-6536i, 0i), var_0.e).b.x)), !(!vec3<bool>(true, arg_2.x, !arg_0.c.c.x)), _wgslsmith_f_op_vec4_f32(var_0.a.d * var_0.c.d));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -970f) - _wgslsmith_f_op_f32(round(-292f)))))), 248f);
    var var_1 = func_4(Struct_2(Struct_1(-170f, vec3<u32>(min(45777u, u_input.d.x), u_input.c, abs(u_input.c)), vec3<bool>(true, u_input.a <= 1u, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, 516f, var_0.x, var_0.x))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(949f, var_0.x, 295f, -1362f))))), func_2(reverseBits(firstTrailingBit(vec2<i32>(arg_0, arg_0))), arg_0), Struct_1(_wgslsmith_f_op_f32(-var_0.x), countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(20340u, u_input.d.x, 0u), vec3<u32>(10968u, 19998u, u_input.d.x))), select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, 498f)))), 103f, _wgslsmith_clamp_i32(arg_0 >> ((u_input.d.x << (u_input.d.x % 32u)) % 32u), 21539i ^ arg_0, -2147483647i)), _wgslsmith_add_vec3_i32(select(vec3<i32>(arg_0, -26898i, 1i), ~vec3<i32>(-1i, arg_0, -54441i), vec3<bool>(true, true, true)) ^ vec3<i32>(_wgslsmith_div_i32(17609i, 6969i), arg_0, arg_0), _wgslsmith_clamp_vec3_i32(~(~vec3<i32>(arg_0, arg_0, 19757i)), vec3<i32>(-arg_0, reverseBits(arg_0), ~arg_0), vec3<i32>(-arg_0, arg_0, arg_0))), vec2<bool>(any(vec2<bool>(true, true)), true));
    var_1 = func_2(-firstTrailingBit(vec2<i32>(~arg_0, -936i)), abs(min(3888i, abs(17628i) | -arg_0)));
    var var_2 = select(_wgslsmith_dot_vec3_i32(~vec3<i32>(-45447i, arg_0 | arg_0, i32(-1i) * -5146i), _wgslsmith_mod_vec3_i32(~vec3<i32>(1i, 0i, arg_0), -(vec3<i32>(-1i, 1i, arg_0) << (vec3<u32>(0u, var_1.b.x, 50362u) % vec3<u32>(32u))))), 2147483647i, false);
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, 1310f)) + _wgslsmith_f_op_f32(ceil(var_1.d.x))) * _wgslsmith_f_op_f32(max(-1614f, var_0.x)))), ~var_1.b, !vec3<bool>(!any(vec4<bool>(true, var_1.c.x, true, var_1.c.x)), false, var_1.c.x), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.a, _wgslsmith_f_op_f32(abs(var_1.a)), _wgslsmith_f_op_f32(-957f - var_1.d.x), 878f))))));
    return Struct_1(var_0.x, ~var_1.b, !func_4(Struct_2(func_4(Struct_2(Struct_1(var_1.a, vec3<u32>(var_1.b.x, var_1.b.x, 16832u), var_1.c, var_1.d), Struct_1(108f, var_1.b, vec3<bool>(false, var_1.c.x, var_1.c.x), var_1.d), Struct_1(var_0.x, vec3<u32>(39434u, 14220u, u_input.c), vec3<bool>(false, true, var_1.c.x), var_1.d), 634f, -2147483647i), vec3<i32>(arg_0, -2147483647i, -2147483647i), vec2<bool>(var_1.c.x, var_1.c.x)), Struct_1(var_1.a, var_1.b, var_1.c, var_1.d), Struct_1(var_0.x, var_1.b, vec3<bool>(true, var_1.c.x, false), var_1.d), _wgslsmith_div_f32(-979f, var_1.a), firstLeadingBit(-29804i)), ~vec3<i32>(arg_0, 33412i, 4799i), vec2<bool>(all(vec3<bool>(true, false, var_1.c.x)), var_1.c.x)).c, _wgslsmith_f_op_vec4_f32(floor(var_1.d)));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: Struct_1) -> f32 {
    var var_0 = 1000f;
    var_0 = _wgslsmith_f_op_f32(abs(-208f));
    let var_1 = arg_1.x;
    var var_2 = -arg_1.xxw;
    let var_3 = (select(0i, arg_1.x, false) << (59032u % 32u)) >> (~select(3275u, arg_0.x, func_1(_wgslsmith_mod_i32(var_1, var_1)).c.x) % 32u);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.d.x), func_2(firstLeadingBit(select(var_2.yy & vec2<i32>(var_1, arg_1.x), vec2<i32>(var_2.x, var_1), select(arg_2.c.yx, arg_2.c.zz, vec2<bool>(false, true)))), var_3).d.x);
}

fn func_6(arg_0: f32, arg_1: vec4<i32>, arg_2: vec3<u32>) -> bool {
    var var_0 = arg_2.x;
    var_0 = firstTrailingBit(~_wgslsmith_div_u32(~arg_2.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c, 4294967295u), vec3<u32>(15345u, 11213u, arg_2.x))) | _wgslsmith_sub_u32(arg_2.x, u_input.a));
    var_0 = u_input.c;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(139f + arg_0))))), 1605f)));
    let var_2 = _wgslsmith_mult_i32(-9064i, -43310i);
    return !func_4(Struct_2(Struct_1(arg_0, arg_2, func_1(arg_1.x).c, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 936f, -806f) * vec4<f32>(1316f, arg_0, arg_0, arg_0))), Struct_1(_wgslsmith_f_op_f32(floor(2926f)), arg_2 ^ arg_2, vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -605f, -207f, arg_0) - vec4<f32>(635f, 538f, -1204f, arg_0))), func_2(vec2<i32>(arg_1.x, arg_1.x) ^ arg_1.yy, var_2), arg_0, ~var_2), vec3<i32>(_wgslsmith_dot_vec3_i32(arg_1.wyz, _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.x, arg_1.x, 12214i), vec3<i32>(arg_1.x, -11111i, arg_1.x), vec3<i32>(var_2, arg_1.x, 1i))), 32671i, arg_1.x), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, var_2 >= var_2), vec2<bool>(u_input.d.x <= u_input.a, 10072i == arg_1.x))).c.x;
}

fn func_7(arg_0: u32, arg_1: bool, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = !arg_1;
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -299f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -831f))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(8518u, arg_2.a.b.x, 0u) ^ vec3<u32>(u_input.d.x, 13644u, 1787u), ~vec3<u32>(arg_2.c.b.x, arg_2.a.b.x, arg_0)), vec3<bool>(any(!vec3<bool>(arg_1, true, true)), arg_2.a.c.x, false), _wgslsmith_f_op_vec4_f32(arg_2.c.d * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(388f, arg_2.a.a, -865f, arg_2.b.a)), _wgslsmith_f_op_vec4_f32(trunc(arg_2.c.d))))), arg_2.c, arg_2.c, 632f, firstTrailingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(4780i, arg_2.e, 2147483647i, arg_2.e), vec4<i32>(-1i, arg_2.e, arg_2.e, -2147483647i)), vec4<i32>(1i, 19084i, arg_2.e, arg_2.e) | vec4<i32>(-2147483647i, -21257i, -5674i, 1i)), countOneBits(vec4<i32>(arg_2.e, 1i, arg_2.e, -1i) << (vec4<u32>(4294967295u, u_input.c, arg_2.b.b.x, 1u) % vec4<u32>(32u))))));
    var_0 = -1000f <= func_4(arg_2, -(~vec3<i32>(var_1.e, arg_2.e, -25985i)), !var_1.c.c.yy).d.x;
    let var_2 = arg_0;
    var_0 = arg_2.b.c.x | !any(vec3<bool>(arg_1, arg_1, !var_1.b.c.x));
    return !vec3<bool>(select(!arg_2.b.c.x, true, arg_2.b.c.x), all(arg_2.a.c), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(13499u, func_6(_wgslsmith_f_op_f32(func_5(~(~vec2<u32>(28874u, 10735u)), max(countOneBits(vec4<i32>(11727i, 1i, 27904i, 66060i)), vec4<i32>(-1i, -15495i, -16334i, 1i)), func_1(2147483647i))), vec4<i32>(6921i, ~_wgslsmith_div_i32(5089i, -2147483647i), _wgslsmith_sub_i32(~21284i, _wgslsmith_mod_i32(46913i, -41295i)), 32690i), vec3<u32>(u_input.c, ~(u_input.b & u_input.d.x), u_input.c)), Struct_2(Struct_1(1203f, vec3<u32>(42310u, 1u, 14835u), vec3<bool>(true, any(vec3<bool>(false, true, true)), true), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(410f, -986f, -265f, -1495f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-351f, 310f, -690f, -193f)), vec4<bool>(true, true, true, true)))), Struct_1(func_4(Struct_2(Struct_1(295f, vec3<u32>(u_input.a, u_input.c, 41572u), vec3<bool>(true, false, false), vec4<f32>(-475f, 1303f, -666f, -1332f)), Struct_1(-697f, vec3<u32>(u_input.d.x, u_input.c, u_input.d.x), vec3<bool>(false, false, false), vec4<f32>(1567f, -345f, 1799f, 1635f)), Struct_1(-1582f, vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<bool>(false, false, true), vec4<f32>(-1736f, 1000f, 693f, 1000f)), -1598f, 24481i), -vec3<i32>(-25154i, -32417i, -2147483647i), vec2<bool>(true, true)).a, reverseBits(vec3<u32>(u_input.c, 103397u, 3226u)), select(func_2(vec2<i32>(11329i, 1i), -1i).c, vec3<bool>(true, true, true), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1268f, 1243f, -1788f, -578f)), vec4<f32>(1f, 1f, 1f, 1f)))), func_2(vec2<i32>(abs(1i), ~74754i), 1i), -1000f, abs(_wgslsmith_mod_i32(0i, 21465i))));
    var_0 = vec3<bool>(func_1(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-56496i, 563i, 0i), vec3<i32>(2077i, 35626i, -1i)), vec3<i32>(1i, 1i, 1i)), max(-vec3<i32>(-2147483647i, 39418i, 1i), vec3<i32>(1i, 1i, 1i)))).c.x, true, !var_0.x);
    var var_1 = select(select(vec4<bool>(true, var_0.x, true, var_0.x), !vec4<bool>(any(vec3<bool>(true, var_0.x, true)), true, true, var_0.x), !(!(!vec4<bool>(true, var_0.x, true, true)))), !(!vec4<bool>(func_6(765f, vec4<i32>(2147483647i, 1i, -1i, -1i), vec3<u32>(19257u, 1u, u_input.b)), var_0.x || false, var_0.x, !var_0.x)), false);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(func_2(-(vec2<i32>(-1i, 270i) << (u_input.d % vec2<u32>(32u))), _wgslsmith_sub_i32(countOneBits(-2147483647i), i32(-1i) * -23817i)).d.wy, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1312f, 884f)), vec2<f32>(1f, 1f)))));
    var var_3 = -(~vec3<i32>(1i, func_3(1727f), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1577i, 2040i), vec3<i32>(-36835i, -2147483647i, -31615i))) | ~(~vec3<i32>(1i, 1i, 1i)));
    var var_4 = func_2(abs(~var_3.zy), 0i | firstTrailingBit(var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(~(~vec4<u32>(var_4.b.x, 1u, 28052u, 4294967295u) | min(vec4<u32>(62325u, 4294967295u, u_input.a, 7463u), vec4<u32>(var_4.b.x, 71901u, u_input.b, var_4.b.x))), ~vec4<u32>(~69557u, var_4.b.x, ~u_input.b, ~var_4.b.x)));
}

