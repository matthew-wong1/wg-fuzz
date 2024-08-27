struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: Struct_3) -> bool {
    var var_0 = Struct_4(~firstTrailingBit((vec4<u32>(u_input.a.x, arg_2.a.a.x, arg_0.c.a.c.x, arg_0.c.a.c.x) ^ vec4<u32>(arg_3.c.a.c.x, 28983u, 4294967295u, u_input.a.x)) ^ ~vec4<u32>(17187u, arg_0.c.a.a.x, u_input.a.x, arg_2.a.a.x)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.c.a.b.x, arg_3.c.a.b.x, -644f)))), vec3<f32>(_wgslsmith_f_op_f32(min(-667f, -496f)), arg_1.x, _wgslsmith_div_f32(361f, -1601f)))))), vec3<i32>(-28452i, ~0i, 0i));
    var_0 = Struct_4(vec4<u32>(var_0.a.x, arg_2.a.a.x ^ ~u_input.a.x, abs(4326u), abs(0u)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(var_0.b)), var_0.b)))), countOneBits(var_0.c));
    var_0 = Struct_4(firstTrailingBit(var_0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_0.b))), vec3<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(var_0.c.x, var_0.c.x, var_0.c.x) >> (var_0.a.yxx % vec3<u32>(32u)), var_0.c), var_0.c.x, 37245i));
    var_0 = Struct_4(vec4<u32>(arg_3.c.a.c.x, ~(~arg_3.c.a.c.x), 36811u, 4294967295u), var_0.b, -(~_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(-21697i, var_0.c.x, 17399i)), ~vec3<i32>(var_0.c.x, 1110i, var_0.c.x))));
    var_0 = Struct_4(vec4<u32>(1u, arg_2.a.a.x, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(arg_0.c.a.a, arg_2.a.c), arg_2.a.c), 4503u) & firstTrailingBit(~vec4<u32>(arg_3.c.a.a.x, u_input.a.x, 22885u, var_0.a.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(var_0.b + var_0.b), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(154f, -1073f, arg_0.c.a.b.x)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(814f))), 204f, var_0.b.x)), var_0.c);
    return firstLeadingBit(arg_2.a.c.x) <= arg_3.c.a.a.x;
}

fn func_2() -> vec3<f32> {
    let var_0 = Struct_3(any(vec4<bool>(select(true, true, true), true, false, all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), false)))), vec3<bool>(all(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true))), any(vec3<bool>(true, func_3(Struct_3(true, vec3<bool>(true, false, false), Struct_2(Struct_1(u_input.a, vec2<f32>(435f, 945f), vec2<u32>(u_input.a.x, 15652u)))), vec2<f32>(-1415f, 966f), Struct_2(Struct_1(u_input.a, vec2<f32>(290f, -917f), u_input.a)), Struct_3(true, vec3<bool>(false, false, true), Struct_2(Struct_1(vec2<u32>(25999u, 12184u), vec2<f32>(665f, 1255f), vec2<u32>(u_input.a.x, u_input.a.x))))), true)), all(vec3<bool>(true, true, true))), Struct_2(Struct_1(~_wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, u_input.a.x), u_input.a), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(623f, -1935f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(259f, 478f)))), _wgslsmith_clamp_vec2_u32(firstTrailingBit(u_input.a), ~vec2<u32>(8925u, 10237u), reverseBits(vec2<u32>(u_input.a.x, u_input.a.x))))));
    let var_1 = Struct_4(_wgslsmith_mult_vec4_u32(max(~(~vec4<u32>(u_input.a.x, 66173u, 0u, 4294967295u)), max(reverseBits(vec4<u32>(1u, var_0.c.a.c.x, u_input.a.x, 19328u)), firstTrailingBit(vec4<u32>(41530u, 25452u, 0u, 0u)))), vec4<u32>(18472u, 1u, 1u, 5167u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.c.a.b.x, 1421f, 2117f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.a.b.x, 2222f, 183f) + vec3<f32>(var_0.c.a.b.x, var_0.c.a.b.x, var_0.c.a.b.x))))), vec3<i32>(1i, 1i, 1i));
    let var_2 = -var_1.c.xx;
    let var_3 = var_0.c;
    let var_4 = var_0.b;
    return _wgslsmith_f_op_vec3_f32(var_1.b + vec3<f32>(_wgslsmith_f_op_f32(-var_3.a.b.x), var_0.c.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1430f - 1647f) - -1416f))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: vec2<f32>, arg_3: vec4<bool>) -> Struct_4 {
    var var_0 = Struct_4(_wgslsmith_clamp_vec4_u32(firstLeadingBit(reverseBits(vec4<u32>(0u, 52324u, 0u, 28710u)) ^ (arg_1 & vec4<u32>(arg_1.x, arg_1.x, 4294967295u, 14031u))), select(~(~arg_1), firstTrailingBit(arg_1), arg_3.x), abs(~arg_1) ^ arg_1), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0)) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1110f, arg_0.x, -576f))))))), _wgslsmith_sub_vec3_i32(-reverseBits(min(vec3<i32>(-1i, -10493i, -72126i), vec3<i32>(-42683i, 35486i, 1i))), (vec3<i32>(1i, 1i, 1i) >> (vec3<u32>(arg_1.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u))) ^ countOneBits(vec3<i32>(-33796i, 0i, 1i))));
    var_0 = Struct_4(select(min(~vec4<u32>(14819u, 13137u, 1u, 82233u), var_0.a), _wgslsmith_mult_vec4_u32(countOneBits(~vec4<u32>(35390u, 1u, var_0.a.x, arg_1.x)), var_0.a), arg_3), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.x))), _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1550f) + -1000f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(var_0.b.x * var_0.b.x), _wgslsmith_f_op_f32(var_0.b.x + 581f), _wgslsmith_f_op_f32(-arg_2.x)), vec3<f32>(-2294f, arg_2.x, _wgslsmith_f_op_f32(-arg_0.x)), true)))), countOneBits(vec3<i32>(var_0.c.x >> (_wgslsmith_dot_vec2_u32(var_0.a.ww, arg_1.ww) % 32u), 2147483647i, ~33963i)));
    var_0 = Struct_4(~(~select(var_0.a, ~arg_1, true)), arg_0, firstLeadingBit(var_0.c));
    var_0 = Struct_4(arg_1, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-323f, -1034f, 2404f))), var_0.c);
    var_0 = Struct_4(~vec4<u32>(12517u, ~1u, _wgslsmith_div_u32(u_input.a.x, 1u), _wgslsmith_mult_u32(51030u, u_input.a.x)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(292f, -352f)))), _wgslsmith_f_op_f32(f32(-1f) * -2360f), 1753f))), max(vec3<i32>(_wgslsmith_mult_i32(-1i, abs(var_0.c.x)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(2147483647i, 34562i), 0i), _wgslsmith_mod_i32(var_0.c.x, ~var_0.c.x)), ~(~var_0.c)));
    return Struct_4(vec4<u32>(abs(1u), ~1u, _wgslsmith_mult_u32(u_input.a.x, 7579u), _wgslsmith_dot_vec2_u32(~var_0.a.xy, ~(~u_input.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(arg_0, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1022f, arg_2.x, -554f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0 * arg_0)))), var_0.c);
}

fn func_1() -> f32 {
    var var_0 = true;
    var var_1 = firstTrailingBit(firstTrailingBit(~u_input.a.x));
    var var_2 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1820f, -2035f, -1000f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(437f, -451f, 1000f), vec3<f32>(1644f, -758f, 781f))))), vec4<u32>(1u, firstLeadingBit(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(11949u, u_input.a.x), vec2<u32>(50980u, 4294967295u)), _wgslsmith_mult_u32(45656u, _wgslsmith_div_u32(u_input.a.x, 68136u))) >> ((~vec4<u32>(u_input.a.x, 24338u, u_input.a.x, u_input.a.x) | vec4<u32>(_wgslsmith_div_u32(u_input.a.x, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, 45694u, u_input.a.x, u_input.a.x)), u_input.a.x, 1u)) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1227f, -1694f))))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_2()).zy), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-887f, 576f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-853f, -1178f), vec2<f32>(-1878f, 1922f), false))))))), !vec4<bool>(false, true, false, all(vec3<bool>(false, false, true))));
    var_2 = func_4(_wgslsmith_f_op_vec3_f32(var_2.b * var_2.b), ~(vec4<u32>(select(var_2.a.x, u_input.a.x, false), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_2.a.x, u_input.a.x), var_2.a.zzy), reverseBits(u_input.a.x), _wgslsmith_add_u32(4294967295u, var_2.a.x)) >> (_wgslsmith_div_vec4_u32(func_4(vec3<f32>(var_2.b.x, 498f, -766f), vec4<u32>(u_input.a.x, var_2.a.x, u_input.a.x, 44259u), var_2.b.zz, vec4<bool>(true, false, false, false)).a, vec4<u32>(30339u, 63002u, var_2.a.x, var_2.a.x)) % vec4<u32>(32u))), vec2<f32>(1023f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) + 2004f))), vec4<bool>(var_2.b.x < var_2.b.x, !(var_2.b.x >= -451f) && true, true, any(select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, false), true)))));
    var var_3 = true;
    return var_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(266f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-355f, 1715f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1346f))))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1030f, _wgslsmith_f_op_f32(func_1()), 365f, -535f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1229f, -940f, 396f, -1000f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1325f, 1374f, -730f, 1057f), vec4<f32>(-1716f, -1818f, 845f, -1630f), true))) * vec4<f32>(_wgslsmith_f_op_f32(1185f + 600f), -2493f, _wgslsmith_f_op_f32(f32(-1f) * -664f), _wgslsmith_f_op_f32(round(615f))))));
    let var_1 = !all(vec3<bool>(all(vec4<bool>(true, true, true, true)), true, true & (var_0.x == var_0.x)));
    let var_2 = _wgslsmith_clamp_u32(~(~4294967295u), _wgslsmith_div_u32(~21296u, countOneBits(u_input.a.x << (u_input.a.x % 32u))), abs(_wgslsmith_mod_u32(25662u, u_input.a.x))) & ~(_wgslsmith_add_u32(4294967295u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)) >> (~(~u_input.a.x) % 32u));
    var var_3 = countOneBits(vec3<u32>(56263u ^ min(var_2, ~var_2), ~_wgslsmith_add_u32(~u_input.a.x, ~1u), ~(~(~4294967295u))));
    var var_4 = func_4(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(ceil(-317f))) - vec3<f32>(_wgslsmith_f_op_f32(trunc(-577f)), _wgslsmith_f_op_f32(func_1()), -1087f)), _wgslsmith_f_op_vec3_f32(ceil(var_0.zzw)))), firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 93182u, 0u), vec4<u32>(1u, var_3.x, 4844u, var_3.x)), ~u_input.a.x, max(u_input.a.x, 1u), ~91407u)) ^ firstTrailingBit(firstTrailingBit(vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, 4294967295u))), _wgslsmith_f_op_vec2_f32(var_0.zx * _wgslsmith_f_op_vec2_f32(round(var_0.yw))), !select(vec4<bool>(var_1, true, any(vec3<bool>(false, var_1, true)), var_1), vec4<bool>(all(vec3<bool>(var_1, var_1, var_1)), select(true, var_1, var_1), true, true), all(vec2<bool>(var_1, true)) | true));
    var var_5 = Struct_3(var_4.c.x >= _wgslsmith_clamp_i32(_wgslsmith_sub_i32(abs(0i), var_4.c.x >> (4294967295u % 32u)), 2147483647i, var_4.c.x), vec3<bool>(var_1, select(var_1, !any(vec4<bool>(true, false, var_1, var_1)), true), func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1068f, var_4.b.x, 132f) - vec3<f32>(188f, -756f, 252f)), abs(var_4.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 140f) - vec2<f32>(var_4.b.x, 722f)), !vec4<bool>(var_1, true, false, var_1)).b.x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -690f) - _wgslsmith_f_op_f32(var_4.b.x - -1066f))), Struct_2(Struct_1(vec2<u32>(~0u, u_input.a.x), _wgslsmith_f_op_vec2_f32(trunc(var_4.b.xy)), (vec2<u32>(var_3.x, var_3.x) >> (var_3.zy % vec2<u32>(32u))) | vec2<u32>(u_input.a.x, var_3.x))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, _wgslsmith_f_op_vec3_f32(func_2()).x, var_0.x, -1521f)))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.c.a.b.x, 1158f, var_0.x, -390f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-423f, var_4.b.x, 2157f, 1411f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -774f, 634f, var_0.x)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, var_5.c.a.b.x, 274f, var_0.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c.x);
}

