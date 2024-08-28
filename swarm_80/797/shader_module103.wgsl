struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    var var_0 = u_input.c.x;
    var_0 = 4294967295u;
    var var_1 = Struct_1(~min(vec2<u32>(~0u, _wgslsmith_dot_vec2_u32(u_input.c.xz, u_input.c.xy)), (u_input.c.yx & u_input.c.zz) >> (select(u_input.c.yz, vec2<u32>(4294967295u, u_input.b), vec2<bool>(false, true)) % vec2<u32>(32u))));
    var_0 = 12075u;
    var_1 = Struct_1(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(4294967295u, u_input.d)), var_1.a), max(u_input.c.xw, vec2<u32>(var_1.a.x, 65126u) ^ vec2<u32>(u_input.c.x, u_input.c.x))));
    return -1933f;
}

fn func_2(arg_0: vec3<bool>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -489f)), 666f, true)))));
    var var_1 = Struct_3(67728u);
    let var_2 = !arg_0.x;
    let var_3 = Struct_2(Struct_1(~_wgslsmith_clamp_vec2_u32(u_input.c.zw, _wgslsmith_mult_vec2_u32(vec2<u32>(var_1.a, 1u), u_input.c.yy), vec2<u32>(79426u, 4294967295u))), var_1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(847f, _wgslsmith_f_op_f32(1652f * 223f), _wgslsmith_f_op_f32(f32(-1f) * -1354f)))));
    var_0 = _wgslsmith_f_op_f32(func_3());
    return max(countOneBits(~(vec2<u32>(4294967295u, 36644u) & min(vec2<u32>(var_1.a, 27005u), vec2<u32>(4294967295u, u_input.b)))), ~var_3.a.a);
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-436f - -505f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1000f, -1000f)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(165f, 832f)) + 713f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(236f, -152f))))));
    let var_1 = false;
    let var_2 = Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(arg_2, 72607u), func_2(!(!vec3<bool>(false, arg_1, var_1)))));
    var var_3 = Struct_1(min(max(vec2<u32>(0u, u_input.b) & var_2.a, vec2<u32>(u_input.b << (var_2.a.x % 32u), _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(21773u, 46122u, 1u, arg_2)))), abs(countOneBits(countOneBits(vec2<u32>(32611u, u_input.c.x))))));
    var_0 = -1931f;
    return Struct_2(var_2, 4294967295u, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1836f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -399f) + _wgslsmith_f_op_f32(f32(-1f) * -258f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1643f, 332f, 535f) + vec3<f32>(1828f, 585f, 339f)) + _wgslsmith_div_vec3_f32(vec3<f32>(-228f, 762f, -1278f), vec3<f32>(625f, 428f, -140f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-123f, 151f, -718f))))), vec3<bool>(var_1, false, true))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec4<bool>) -> i32 {
    let var_0 = Struct_2(arg_1.a, arg_1.b, vec3<f32>(_wgslsmith_f_op_f32(arg_1.c.x * 647f), _wgslsmith_div_f32(197f, _wgslsmith_f_op_f32(f32(-1f) * -512f)), -568f));
    var var_1 = !(!all(select(vec3<bool>(false, arg_2.x, arg_2.x), vec3<bool>(arg_2.x, arg_2.x, arg_2.x), vec3<bool>(true, true, true))) && ((arg_2.x && !arg_2.x) && true));
    let var_2 = func_1(reverseBits(-reverseBits(vec4<i32>(u_input.a, arg_0.x, -61926i, 2147483647i)) << (vec4<u32>(u_input.d, func_1(vec4<i32>(arg_0.x, -1i, 1i, -3419i), arg_2.x, 2652u).b, var_0.b, 1548u) % vec4<u32>(32u))), (firstTrailingBit(arg_0.x) > _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(arg_0, arg_0), abs(-26727i))) || (687f == _wgslsmith_f_op_f32(-var_0.c.x)), 0u).a;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c.xy + arg_1.c.xy));
    var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_1.c.xz)) * _wgslsmith_f_op_vec2_f32(var_0.c.zx - vec2<f32>(1385f, var_3.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-951f, arg_1.c.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-534f, arg_1.c.x)) - _wgslsmith_f_op_vec2_f32(var_0.c.zz - var_0.c.yx))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-366f, var_0.c.x))) + _wgslsmith_f_op_vec2_f32(-arg_1.c.yx))));
    return _wgslsmith_mult_i32(13752i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(2147483647i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.a, 2147483647i, -1i, arg_0.x), vec4<i32>(-2147483647i, 20218i, -1i, -2209i), false), firstTrailingBit(vec4<i32>(-23240i, 2147483647i, -33012i, 0i)))), ~(i32(-1i) * -37982i) << (~(arg_1.b ^ 61846u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec4_i32(min(vec4<i32>(_wgslsmith_mult_i32(-u_input.a, reverseBits(u_input.a)), func_4(-vec2<i32>(-47817i, u_input.a), func_1(vec4<i32>(u_input.a, 0i, 2147483647i, u_input.a), true, u_input.b), vec4<bool>(true, false, true, false)), 58036i, u_input.a), select(~(-vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), _wgslsmith_add_vec4_i32(min(vec4<i32>(-1i, 1i, u_input.a, 2147483647i), vec4<i32>(-19681i, u_input.a, -32126i, u_input.a)), vec4<i32>(-30175i, u_input.a, u_input.a, -1i) >> (u_input.c % vec4<u32>(32u))), vec4<bool>(true, true, true, true))), vec4<i32>(~u_input.a, 9168i ^ u_input.a, 39022i, 1i));
    let var_1 = Struct_3(0u);
    var_0 = _wgslsmith_mult_vec4_i32(~(min(~vec4<i32>(u_input.a, 30129i, -1i, 5725i), ~vec4<i32>(u_input.a, -2147483647i, var_0.x, 22199i)) | abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -2147483647i, 18877i, u_input.a), vec4<i32>(u_input.a, 1i, u_input.a, -2147483647i), vec4<i32>(var_0.x, 1i, var_0.x, -1i)))), vec4<i32>(30744i, -14639i >> (1u % 32u), var_0.x, u_input.a));
    var var_2 = vec4<bool>(!all(vec2<bool>(true, true)), true, true, all(select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))) != true);
    let var_3 = abs(vec4<u32>(17983u, u_input.b, var_1.a, ~1u));
    var_2 = vec4<bool>(!(var_2.x && var_2.x), var_2.x, !(all(select(var_2.xzz, var_2.wxw, true)) & (-9555i < var_0.x)), true);
    let var_4 = vec4<i32>(u_input.a, ~(i32(-1i) * -1i), max(-23765i, ~1i), ~u_input.a);
    var var_5 = ~var_3.yzw;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, ~_wgslsmith_mod_vec2_i32(vec2<i32>(-18711i, 8520i), -vec2<i32>(-20609i, var_4.x)), (var_5.yy & firstTrailingBit(vec2<u32>(var_5.x, var_1.a))) | _wgslsmith_sub_vec2_u32(~vec2<u32>(15372u, 65276u) << (u_input.c.zw % vec2<u32>(32u)), ~(~vec2<u32>(u_input.b, var_5.x))), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, 0i, -1i, -15956i), vec4<i32>(var_4.x, 29994i, 49125i, -1149i), -vec4<i32>(-1i, -5835i, var_0.x, 1i)), vec4<i32>(_wgslsmith_add_i32(-2147483647i, 2147483647i), 1i, -1i, 1i)), vec4<i32>(~var_4.x, -1i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_4.x, u_input.a, var_0.x, 0i), var_4), ~var_4.x)));
}

