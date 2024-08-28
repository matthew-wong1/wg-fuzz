struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: u32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2) -> f32 {
    var var_0 = select(_wgslsmith_dot_vec4_u32(vec4<u32>(6717u, _wgslsmith_mod_u32(arg_0.c, 0u) >> (arg_0.c % 32u), _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(13842u, 52194u)), vec2<u32>(98801u, arg_0.d)), ~1u), vec4<u32>(0u, 4294967295u, 1u, ~arg_0.d & select(arg_0.d, u_input.a, false))), _wgslsmith_div_u32(~0u, u_input.a), !any(vec3<bool>(true, any(arg_0.b.b.yz), any(vec2<bool>(arg_0.b.b.x, true)))));
    let var_1 = _wgslsmith_dot_vec2_u32(min(~(~vec2<u32>(arg_0.c, 0u)) >> (~reverseBits(vec2<u32>(48017u, 4294967295u)) % vec2<u32>(32u)), countOneBits(~firstTrailingBit(vec2<u32>(1u, 0u)))), ~_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(max(vec2<u32>(u_input.a, u_input.a), vec2<u32>(15079u, arg_0.c)), vec2<u32>(36661u, 4677u)), max(vec2<u32>(24983u, u_input.a), ~vec2<u32>(0u, 0u))));
    var_0 = firstLeadingBit(~(~(~_wgslsmith_add_u32(4294967295u, 0u))));
    var_0 = 1u;
    var_0 = ~(~u_input.a);
    return arg_2.c.x;
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> Struct_2 {
    let var_0 = vec2<i32>(54426i, arg_1.a.x) << (vec2<u32>(u_input.a, ~(53364u & u_input.a)) % vec2<u32>(32u));
    let var_1 = u_input.a;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(vec4<i32>(27976i, var_0.x, arg_1.a.x, 0i), arg_1.a.x, arg_1.c), arg_1, 7886u, _wgslsmith_mult_u32(var_1, var_1)), arg_1.c.x, Struct_2(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 9483i, arg_1.a.x, -2147483647i), vec4<i32>(2147483647i, 1i, arg_1.a.x, -3772i)), _wgslsmith_mult_i32(1i, var_0.x), _wgslsmith_f_op_vec3_f32(exp2(arg_1.c)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * arg_1.c.x), arg_1.c.x));
    var var_3 = _wgslsmith_add_i32(var_0.x, -1i & var_0.x);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-263f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + 1921f)))) < _wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(vec4<i32>(0i, var_0.x, var_0.x, arg_1.a.x), var_0.x, arg_1.c), Struct_1(arg_1.a, arg_1.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-199f, -335f, 1293f))), select(~u_input.a, reverseBits(var_1), true), 361u), _wgslsmith_div_f32(-1748f, var_2.x), Struct_2(vec4<i32>(arg_1.a.x, firstLeadingBit(var_0.x), _wgslsmith_clamp_i32(1i, arg_1.a.x, -10520i), -2015i), var_0.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.c) * arg_1.c))));
    return Struct_2(vec4<i32>(-(~arg_1.a.x), arg_1.a.x, var_0.x, _wgslsmith_mod_i32(max(_wgslsmith_add_i32(28371i, var_0.x), countOneBits(-40151i)), _wgslsmith_sub_i32(~arg_1.a.x, var_0.x))), abs(arg_1.a.x), _wgslsmith_f_op_vec3_f32(max(arg_1.c, vec3<f32>(_wgslsmith_f_op_f32(abs(arg_1.c.x)), var_2.x, var_2.x))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<u32>) -> vec3<bool> {
    var var_0 = Struct_3(func_2((1u ^ u_input.a) < 1u, Struct_1(_wgslsmith_mod_vec2_i32(~arg_0, countOneBits(arg_0)), vec3<bool>(true, all(vec4<bool>(true, false, false, true)), false), vec3<f32>(_wgslsmith_f_op_f32(min(1000f, -1965f)), _wgslsmith_f_op_f32(f32(-1f) * -718f), _wgslsmith_f_op_f32(f32(-1f) * -988f)))), Struct_1(-reverseBits(countOneBits(arg_0)), vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2183f, -307f, 786f)))))), ~57477u, ~_wgslsmith_dot_vec2_u32(arg_1.ww, arg_1.xz));
    let var_1 = Struct_1(vec2<i32>(~2147483647i, var_0.b.a.x), vec3<bool>(!var_0.b.b.x, false, true), vec3<f32>(var_0.a.c.x, _wgslsmith_f_op_f32(-var_0.a.c.x), -1345f));
    var var_2 = ~_wgslsmith_dot_vec2_i32(var_0.b.a, firstLeadingBit(~arg_0));
    var var_3 = var_0.b;
    let var_4 = 2147483647i;
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec3<bool>(any(vec4<bool>(false, true, false, true)) | all(vec3<bool>(true, true, false)), true, true));
    var var_1 = select(var_0, !select(vec3<bool>(false, all(vec2<bool>(true, var_0.x)), var_0.x), select(var_0, select(var_0, vec3<bool>(false, true, true), vec3<bool>(var_0.x, var_0.x, false)), var_0.x), vec3<bool>(var_0.x | true, true, !var_0.x)), any(var_0));
    var_1 = var_0;
    let var_2 = vec4<bool>(any(var_1.yx), var_1.x | false, all(select(!select(var_0.yz, var_1.yz, var_1.x), !select(var_1.xy, vec2<bool>(false, var_1.x), false), any(!var_0))), var_1.x);
    var_1 = select(var_2.wxz, !vec3<bool>(all(func_1(vec2<i32>(-21923i, -4477i), vec4<u32>(u_input.a, 0u, u_input.a, 8573u))), true, _wgslsmith_div_u32(u_input.a, u_input.a) != ~71702u), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(var_1.x, Struct_1(vec2<i32>(58074i, -20596i), var_0, vec3<f32>(1485f, -944f, -208f))).c.x + _wgslsmith_div_f32(-1629f, -1625f)))) > _wgslsmith_f_op_f32(floor(-1248f)));
    var_1 = select(vec3<bool>(true, var_1.x, !all(!vec4<bool>(var_1.x, var_0.x, true, true))), !vec3<bool>(true, !var_1.x | var_1.x, true), select(vec3<bool>(true, _wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(vec4<i32>(-7058i, -31053i, -2147483647i, 2147483647i), -2147483647i, vec3<f32>(-2768f, -370f, -625f)), Struct_1(vec2<i32>(-63122i, 1i), var_2.xww, vec3<f32>(165f, -1622f, 879f)), 0u, 77217u), -1606f, Struct_2(vec4<i32>(-2147483647i, 0i, 1i, -46944i), -7669i, vec3<f32>(-2430f, -1304f, -791f)))) == -951f, var_2.x), vec3<bool>(var_1.x, _wgslsmith_f_op_f32(select(-558f, 221f, var_1.x)) < _wgslsmith_f_op_f32(abs(-2066f)), false), var_0));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(221f - _wgslsmith_f_op_f32(2187f * -559f)))));
    let var_4 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1261f, 1232f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1111f, 1014f), vec2<f32>(-494f, -851f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1005f, 433f))))), _wgslsmith_dot_vec3_i32(vec3<i32>(~0i, -(-2147483647i << (u_input.a % 32u)), -2147483647i), _wgslsmith_clamp_vec3_i32(vec3<i32>(~(-3898i), ~(-51146i), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(-2147483647i, 2147483647i))), abs(vec3<i32>(2147483647i, -1i, 2147483647i)), select(vec3<i32>(-70877i, -1i, 69841i), vec3<i32>(1i, 0i, 51232i), var_1.x) << (min(vec3<u32>(u_input.a, 62800u, 4294967295u), vec3<u32>(u_input.a, 4294967295u, 30396u)) % vec3<u32>(32u)))), var_2);
    var var_5 = Struct_2(vec4<i32>(var_4.b, var_4.b, i32(-1i) * -29249i, var_4.b) << (vec4<u32>(4294967295u, abs(firstLeadingBit(1u)), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(4294967295u, u_input.a, 26149u)), ~vec3<u32>(1u, u_input.a, 27944u)), 1u ^ u_input.a) % vec4<u32>(32u)), 18456i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1264f, var_4.a.x, var_4.a.x), vec3<f32>(var_4.a.x, var_4.a.x, var_4.a.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_4.a.x, 214f, var_4.a.x))))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(min(var_4.a.x, -1145f)), _wgslsmith_f_op_f32(var_4.a.x + -1177f), -392f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~select((vec3<u32>(u_input.a, u_input.a, u_input.a) | vec3<u32>(38725u, 58048u, 5224u)) ^ ~vec3<u32>(3362u, 12156u, 4294967295u), select(vec3<u32>(3116u, u_input.a, u_input.a), countOneBits(vec3<u32>(u_input.a, 170u, u_input.a)), all(var_2.yy)), !(1i <= var_4.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_4.a.x))), vec2<i32>(-2147483647i, 9935i) | -vec2<i32>(16244i, var_4.b), _wgslsmith_div_f32(var_4.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -511f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.c.x)), true))));
}

