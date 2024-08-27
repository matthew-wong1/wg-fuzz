struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec2<bool>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: Struct_1,
    d: bool,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_4 {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: vec4<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: u32) -> vec3<i32> {
    var var_0 = select(vec3<u32>(abs(arg_2.b), ~(abs(arg_2.b) ^ ~arg_3), arg_3), min(_wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_2.b, arg_2.a.x, arg_3), _wgslsmith_add_vec3_u32(vec3<u32>(14994u, 0u, 4294967295u), vec3<u32>(0u, arg_3, 1u)), abs(vec3<u32>(41501u, 14160u, 4294967295u))), _wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(arg_3, arg_2.b, 40841u)), _wgslsmith_add_vec3_u32(vec3<u32>(arg_2.a.x, arg_2.b, arg_2.b), vec3<u32>(4294967295u, arg_3, arg_3)))) & _wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, arg_2.b, 1u) ^ vec3<u32>(1u, arg_2.b, 21785u)), reverseBits(vec3<u32>(4294967295u, arg_3, 4294967295u)), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_3, 48907u, arg_3), ~vec3<u32>(arg_3, 1u, 1u))), vec3<bool>(false, true, false));
    var_0 = ~_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(var_0.x, 4294967295u, var_0.x), ~vec3<u32>(47087u, arg_2.b, var_0.x)) >> (~max(vec3<u32>(var_0.x, 58908u, arg_2.b), vec3<u32>(4294967295u, arg_2.b, 54391u)) % vec3<u32>(32u)), abs(_wgslsmith_mult_vec3_u32(~vec3<u32>(arg_2.b, 1u, 0u), vec3<u32>(arg_3, 0u, arg_3) & vec3<u32>(1964u, var_0.x, var_0.x))), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 7504u, arg_3) | vec3<u32>(63822u, 1u, arg_3), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, 62692u, arg_3), vec3<u32>(1u, arg_2.a.x, arg_2.a.x))), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, 1u, 39986u), firstTrailingBit(vec3<u32>(arg_2.b, var_0.x, arg_2.a.x)))));
    var_0 = vec3<u32>(var_0.x, 4294967295u, 52885u);
    var var_1 = Struct_2(~(vec4<u32>(max(0u, arg_3), ~arg_3, 1u, _wgslsmith_sub_u32(0u, arg_2.b)) >> (abs(select(vec4<u32>(0u, arg_2.b, var_0.x, 4294967295u), vec4<u32>(var_0.x, var_0.x, 0u, var_0.x), vec4<bool>(arg_1.x, arg_0.d, true, arg_1.x))) % vec4<u32>(32u))), vec3<i32>(~(-firstTrailingBit(arg_0.a.x)), i32(-1i) * -2147483647i, 38584i), arg_0, arg_1.x, !arg_1);
    var var_2 = _wgslsmith_dot_vec4_i32(var_1.c.a | ~max(vec4<i32>(u_input.a.x, -1i, arg_0.a.x, -2147483647i), countOneBits(var_1.c.a)), vec4<i32>(-28706i, i32(-1i) * -arg_0.a.x, 2147483647i, select(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c.a.x, u_input.a.x, arg_0.a.x, 2147483647i), arg_0.a), var_1.c.a.x, arg_1.x) | (u_input.a.x >> (~57166u % 32u))));
    return vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, firstTrailingBit(~(-arg_0.a.x))), _wgslsmith_sub_i32(29449i, _wgslsmith_mult_i32(var_1.c.a.x, select(-2147483647i, u_input.a.x, false) & countOneBits(var_1.b.x))), 41055i);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: vec4<i32>, arg_3: u32) -> vec3<i32> {
    var var_0 = Struct_2(arg_0, _wgslsmith_mod_vec3_i32(countOneBits(arg_2.xyz), func_3(Struct_1(arg_2 & arg_2, _wgslsmith_f_op_f32(-511f * -1295f), !vec2<bool>(arg_1.x, arg_1.x), all(vec3<bool>(false, arg_1.x, arg_1.x)), _wgslsmith_f_op_f32(max(1031f, -1135f))), vec4<bool>(true, !arg_1.x, true, arg_1.x), Struct_3(~vec2<u32>(32166u, arg_0.x), 45804u), 4294967295u >> (arg_3 % 32u))), Struct_1(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, arg_2.x, arg_2.x), arg_2 | arg_2), u_input.a.x, ~u_input.a.x & -u_input.a.x, 1i << (1u % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1219f)) - 651f), arg_1.yy, false, 104f), true, !(!arg_1));
    let var_1 = vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_mult_i32(max(13695i, -43753i), 1i), u_input.a.x), _wgslsmith_clamp_i32(var_0.c.a.x, -2147483647i, u_input.a.x), 0i), u_input.a.x);
    var_0 = Struct_2(~firstTrailingBit(abs(arg_0)), func_3(var_0.c, select(select(!vec4<bool>(arg_1.x, true, false, arg_1.x), !arg_1, !vec4<bool>(var_0.c.d, false, arg_1.x, false)), !arg_1, !arg_1), Struct_3(vec2<u32>(arg_3 >> (var_0.a.x % 32u), firstLeadingBit(arg_0.x)), firstLeadingBit(_wgslsmith_dot_vec3_u32(var_0.a.yww, arg_0.wxy))), arg_3), Struct_1(firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 0i, var_0.b.x, 26849i), vec4<i32>(0i, 1i, var_1.x, 18831i))), var_0.c.b, arg_1.wz, var_0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.b)))), false, arg_1);
    let var_2 = ~(-1i);
    let var_3 = Struct_3(arg_0.yy, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(17615u, min(1u, min(49638u, var_0.a.x))), abs(~71422u) | firstTrailingBit(reverseBits(arg_3)), ~firstLeadingBit(0u)));
    return _wgslsmith_mult_vec3_i32(~vec3<i32>(1i ^ func_3(var_0.c, vec4<bool>(true, var_0.d, false, var_0.c.c.x), var_3, arg_0.x).x, var_0.c.a.x, min(-var_2, 27205i)), reverseBits(vec3<i32>(arg_2.x, ~(~u_input.a.x), ~countOneBits(var_2))));
}

fn func_1(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: Struct_2) -> vec2<bool> {
    let var_0 = arg_2.e.wxx;
    var var_1 = arg_2;
    var_1 = Struct_2(~(~vec4<u32>(4294967295u, arg_2.a.x, var_1.a.x, 1u >> (arg_2.a.x % 32u))), ~func_2(vec4<u32>(arg_2.a.x, ~10594u, arg_2.a.x, var_1.a.x), vec4<bool>(true, var_1.d, select(var_0.x, var_1.d, arg_0.e), any(var_1.e.ywy)), arg_2.c.a, abs(arg_2.a.x)), Struct_1(min(vec4<i32>(var_1.b.x, var_1.b.x, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), u_input.a.x & 2147483647i), _wgslsmith_sub_vec4_i32(~var_1.c.a, var_1.c.a)), -198f, vec2<bool>(!all(var_1.e), all(select(vec4<bool>(false, arg_2.e.x, arg_0.e, var_1.d), var_1.e, arg_2.e))), select((i32(-1i) * -1i) == _wgslsmith_dot_vec3_i32(vec3<i32>(-41748i, arg_2.c.a.x, 22623i), var_1.b), all(select(vec2<bool>(var_0.x, true), arg_2.e.yx, var_0.zy)), any(vec3<bool>(arg_0.e, true, var_1.d))), _wgslsmith_f_op_f32(682f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.c.e + var_1.c.e), _wgslsmith_f_op_f32(-arg_1.x))))), all(vec2<bool>(!arg_0.e, false)) || all(!(!vec2<bool>(arg_0.e, var_0.x))), vec4<bool>(all(select(vec2<bool>(true, arg_2.d), vec2<bool>(arg_0.e, true), !var_1.e.wy)), -640f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * arg_2.c.e) + arg_2.c.e), true, var_0.x));
    var_1 = arg_2;
    var var_2 = ~(~93792u);
    return vec2<bool>(arg_2.d, true);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_3) -> vec3<u32> {
    let var_0 = ~reverseBits(_wgslsmith_mod_i32(u_input.a.x, -15025i) | ~(-3725i)) >> (22271u % 32u);
    let var_1 = 1893f;
    var var_2 = arg_3;
    var_2 = Struct_3(reverseBits(vec2<u32>(134279u, var_2.b)), (_wgslsmith_mod_u32(arg_3.b, arg_3.a.x) ^ _wgslsmith_sub_u32(arg_3.b << (1u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.b, arg_0.x, 1u), vec3<u32>(24418u, 20037u, arg_0.x)))) ^ arg_0.x);
    var_2 = arg_3;
    return vec3<u32>(~(~_wgslsmith_add_u32(2271u >> (0u % 32u), 0u)), ~_wgslsmith_clamp_u32(63057u, max(abs(arg_3.b), arg_0.x << (11806u % 32u)), _wgslsmith_clamp_u32(var_2.b, arg_0.x, arg_0.x) | (var_2.b << (var_2.a.x % 32u))), arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~min(abs(max(1u, 36822u)), 1u);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(846f))), -1272f);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-436f, _wgslsmith_f_op_f32(f32(-1f) * -584f), -644f, 155f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 267f, var_1, var_1)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-249f, -550f, -807f, 107f))), vec4<bool>(true, true, true, true))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(401f, 1258f, var_1, var_1)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1, -619f, 2026f, 1179f))), false)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1, 1410f, -535f, 536f))))))));
    var var_3 = ~(_wgslsmith_add_vec3_u32(~(~vec3<u32>(var_0, 4294967295u, var_0)), max(reverseBits(vec3<u32>(var_0, 0u, var_0)), vec3<u32>(var_0, 1u, 1u))) | abs(vec3<u32>(4294967295u, 4294967295u, 17397u)));
    let var_4 = select(~vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(67823u, var_0, 18442u), vec3<u32>(var_3.x, 1u, 4294967295u)), var_0), firstTrailingBit(~var_3.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(11290u, 51646u), var_3.xz) << ((vec2<u32>(~var_0, _wgslsmith_mod_u32(var_3.x, 1u)) & var_3.yz) % vec2<u32>(32u)), vec2<bool>(false, true));
    let var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), -521f, _wgslsmith_f_op_f32(var_2.x + -614f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -2065f, var_2.x))))));
    var_3 = _wgslsmith_add_vec3_u32(max(func_4(abs(vec2<u32>(4294967295u, 0u)), Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -9924i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -52799i, -441i, u_input.a.x)), _wgslsmith_f_op_f32(ceil(var_2.x)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), false, _wgslsmith_f_op_f32(sign(-2731f))), Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 1i, u_input.a.x, 4385i), vec4<i32>(u_input.a.x, -9008i, u_input.a.x, u_input.a.x)), var_2.x, func_1(Struct_4(var_1, vec3<f32>(-308f, -937f, -1000f), var_5.x, vec4<f32>(var_2.x, var_2.x, var_1, var_5.x), true), var_5.yx, Struct_2(vec4<u32>(var_3.x, 10983u, var_0, var_3.x), vec3<i32>(u_input.a.x, u_input.a.x, -58066i), Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x), var_2.x, vec2<bool>(false, true), true, var_1), true, vec4<bool>(false, false, true, true))), select(true, true, true), _wgslsmith_f_op_f32(exp2(var_2.x))), Struct_3(abs(vec2<u32>(var_3.x, 27752u)), min(0u, 20918u))), (vec3<u32>(1u, 1u, 1u) | abs(vec3<u32>(var_3.x, var_3.x, 31061u))) ^ ~(~vec3<u32>(var_4.x, 21498u, var_4.x))), vec3<u32>(var_3.x, _wgslsmith_clamp_u32(4294967295u, ~4294967295u, ~77275u), ~_wgslsmith_mod_u32(104714u, var_4.x)) << (_wgslsmith_clamp_vec3_u32(min(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_0, var_3.x), vec3<u32>(0u, var_4.x, 4294967295u)), _wgslsmith_div_vec3_u32(vec3<u32>(var_0, var_3.x, var_0), vec3<u32>(var_0, 3425u, 42241u))), vec3<u32>(var_3.x, 4294967295u, 0u), ~(~vec3<u32>(var_0, 0u, var_4.x))) % vec3<u32>(32u)));
    let var_6 = !vec3<bool>(firstLeadingBit(~u_input.a.x) == _wgslsmith_sub_i32(u_input.a.x, ~18849i), select(true, true, false), false);
    var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(var_2.x * -453f), 1f, -1435f, _wgslsmith_f_op_f32(-303f * var_1))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(floor(var_1)), 178f, -551f))))), ~var_0, var_3.xz, 1u);
}

