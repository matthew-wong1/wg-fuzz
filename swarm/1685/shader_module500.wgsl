struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec4<u32>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_3, arg_2: f32) -> f32 {
    var var_0 = -min(~reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, 2147483647i, arg_0.b, 46550i), vec4<i32>(arg_0.b, u_input.c, arg_0.b, arg_0.b), vec4<i32>(arg_0.b, u_input.c, -1i, 1i))), vec4<i32>(u_input.c ^ 39463i, firstLeadingBit(arg_0.b), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, arg_0.b), vec2<i32>(arg_0.b, arg_0.b)), u_input.c) >> (vec4<u32>(u_input.a.x, 4294967295u, 1u, arg_1.c.x << (4294967295u % 32u)) % vec4<u32>(32u)));
    var var_1 = arg_0.b;
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(arg_0.a)))), vec4<f32>(_wgslsmith_f_op_f32(min(-609f, -100f)), -466f, arg_2, arg_0.a.x), vec4<bool>(true, arg_1.b.x, true, arg_1.b.x)));
    let var_3 = Struct_2(var_2.x);
    let var_4 = _wgslsmith_add_i32(var_0.x, 13606i) <= _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(abs(vec2<i32>(0i, -21748i)), ~vec2<i32>(u_input.c, arg_0.b) & ~var_0.zz), vec2<i32>(abs(var_0.x), arg_0.b));
    return _wgslsmith_f_op_f32(trunc(-2048f));
}

fn func_2() -> Struct_3 {
    let var_0 = u_input.c;
    var var_1 = Struct_4(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(172f)), _wgslsmith_f_op_f32(f32(-1f) * -516f), true)) - _wgslsmith_f_op_f32(min(-911f, -429f)))), vec2<i32>(-25195i, ~(-_wgslsmith_clamp_i32(-3103i, -5691i, -36834i))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(403f - var_1.a.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + var_1.a.a)), -861f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.a, var_1.a.a, -537f) + vec3<f32>(var_1.a.a, var_1.a.a, var_1.a.a))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a.a, var_1.a.a, var_1.a.a), vec3<f32>(1239f, -385f, var_1.a.a)), vec3<f32>(var_1.a.a, var_1.a.a, var_1.a.a), true)))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(var_1.a.a - var_1.a.a), _wgslsmith_f_op_f32(-var_1.a.a), -668f), vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_5(vec4<f32>(1013f, 1098f, var_1.a.a, var_1.a.a), u_input.c), Struct_3(u_input.a.zwy, vec4<bool>(true, true, true, true), vec4<u32>(u_input.a.x, 54386u, u_input.b.x, u_input.a.x), vec4<bool>(false, false, false, true)), var_1.a.a)), -1249f, var_1.a.a), true))));
    var var_3 = Struct_3(u_input.a.zyz, select(vec4<bool>(true, true, true, u_input.a.x <= _wgslsmith_mult_u32(u_input.a.x, 15456u)), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), true)), vec4<bool>(true, true, any(vec2<bool>(true, false)), true)), vec4<u32>(_wgslsmith_div_u32(u_input.b.x | 5888u, _wgslsmith_clamp_u32(4294967295u, 4294967295u, u_input.a.x)) << (_wgslsmith_mod_u32(~60200u, u_input.b.x) % 32u), _wgslsmith_dot_vec3_u32(~u_input.a.yxy, vec3<u32>(countOneBits(u_input.b.x), _wgslsmith_dot_vec2_u32(u_input.b, u_input.a.zx), u_input.b.x)), 4294967295u, 0u), !select(vec4<bool>(select(false, true, true), all(vec4<bool>(true, false, false, true)), true, any(vec3<bool>(false, false, true))), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false)), true));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.a.a, 1049f, _wgslsmith_f_op_f32(func_3(Struct_5(vec4<f32>(var_2.x, var_2.x, -1000f, -675f), -4441i), Struct_3(u_input.a.xzx, var_3.d, vec4<u32>(857u, u_input.b.x, 12828u, u_input.b.x), vec4<bool>(false, false, var_3.b.x, false)), _wgslsmith_f_op_f32(-var_1.a.a))), _wgslsmith_f_op_f32(f32(-1f) * -1471f)))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1645f, var_1.a.a, var_1.a.a, var_2.x), vec4<f32>(var_2.x, var_1.a.a, var_1.a.a, var_1.a.a))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.a, var_1.a.a, 1576f, var_1.a.a) - vec4<f32>(var_1.a.a, -1002f, var_2.x, var_1.a.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2130f, -1030f, 1215f, var_1.a.a), vec4<f32>(1333f, 381f, 192f, var_2.x), var_3.b))))))));
    return Struct_3(vec3<u32>(~(~(var_3.a.x >> (0u % 32u))), 7694u, 1u), var_3.b, var_3.c, var_3.d);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: bool) -> Struct_3 {
    var var_0 = ~u_input.a.ywy;
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(883f - -221f), _wgslsmith_f_op_f32(trunc(1264f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1365f, -1312f), vec2<f32>(1611f, -265f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(378f, -714f) + vec2<f32>(118f, 1549f)))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2206f, -1453f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-919f, 1740f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, -2131f))));
    var var_2 = 100863u;
    let var_3 = func_2().d.x;
    var var_4 = Struct_3(_wgslsmith_clamp_vec3_u32(abs(u_input.a.yxx), _wgslsmith_sub_vec3_u32(u_input.a.wzx >> (arg_0.c.xwy % vec3<u32>(32u)), u_input.a.zxz), arg_0.a), arg_0.b, ~(u_input.a | select(vec4<u32>(104822u, u_input.b.x, arg_0.c.x, var_0.x) << (arg_0.c % vec4<u32>(32u)), select(arg_0.c, arg_0.c, arg_0.d), false)), vec4<bool>(any(vec3<bool>(arg_0.a.x < u_input.a.x, arg_0.b.x || arg_0.b.x, true)), all(arg_0.b.yx), 4294967295u >= _wgslsmith_clamp_u32(var_0.x << (0u % 32u), ~4691u, u_input.b.x), true));
    return Struct_3(~var_4.a, !var_4.d, ~vec4<u32>(~u_input.a.x << (var_0.x % 32u), var_4.a.x & 49137u, arg_0.c.x, ~(~arg_0.c.x)), vec4<bool>(func_2().b.x, true, true, false && var_4.d.x));
}

fn func_1() -> i32 {
    let var_0 = ~(~(~vec2<u32>(4294967295u, 11605u)) << (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)));
    var var_1 = func_4(func_2(), select(vec3<bool>(true, false, abs(var_0.x) < u_input.a.x), func_2().b.yxx, !vec3<bool>(any(vec3<bool>(true, false, true)), false, all(vec3<bool>(true, false, true)))), true);
    var var_2 = Struct_2(-667f);
    let var_3 = Struct_1(reverseBits(firstTrailingBit(1u)), ~vec2<u32>(abs(~u_input.a.x), 1u));
    var_2 = Struct_2(_wgslsmith_f_op_f32(-var_2.a));
    return firstLeadingBit(-_wgslsmith_add_i32(u_input.c, -u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_i32(1i, u_input.c, u_input.c);
    var_0 = func_1();
    var_0 = u_input.c;
    let var_1 = Struct_5(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(380f + -1808f)), 517f, 979f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1222f, -545f, 1895f, -321f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(400f, 1295f, 1218f, -367f)))), u_input.c & -u_input.c);
    let var_2 = Struct_2(var_1.a.x);
    let var_3 = ~(-23459i >> (~4294967295u % 32u));
    var var_4 = ~abs(u_input.a.x) | (u_input.a.x << (_wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(u_input.a.ywx, u_input.a.yzy), u_input.a.x, 4294967295u) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_mod_vec3_i32(~vec3<i32>(0i, -1i, var_3), abs(vec3<i32>(2147483647i, -1i, var_1.b)) << (vec3<u32>(9513u, u_input.a.x, 12519u) % vec3<u32>(32u))), select(-select(vec3<i32>(2147483647i, 9056i, u_input.c), vec3<i32>(-42875i, -8132i, 3659i), false), _wgslsmith_sub_vec3_i32(vec3<i32>(-9509i, 50719i, 1i), vec3<i32>(-49347i, u_input.c, -1i)), select(true, true, true))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(509f + _wgslsmith_f_op_f32(floor(683f))))), ~u_input.a.x, ~firstTrailingBit(u_input.a.xwy));
}

