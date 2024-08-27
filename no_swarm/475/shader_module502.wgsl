struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: Struct_3,
    d: u32,
    e: vec3<bool>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool) -> vec2<u32> {
    let var_0 = select(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(abs(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.e, u_input.d, u_input.e, 1i), vec4<i32>(0i, -2147483647i, 35386i, -2147483647i))), abs(~vec4<i32>(2147483647i, 17316i, u_input.d, u_input.e))), u_input.e), 1i, !arg_0);
    global0 = 1242f;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(708f, _wgslsmith_f_op_f32(round(173f))));
    let var_2 = -2147483647i;
    let var_3 = Struct_1(~abs(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(224u, 33583u))), vec4<f32>(1f, _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -177f))), 1063f, -1082f), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -225f, -1000f, -1935f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-265f, -290f, -1160f, var_1)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, -525f, var_1) + vec4<f32>(var_1, var_1, 828f, var_1))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, var_1, var_1) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1, 1805f, 2030f, -1305f)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, -1000f, -1067f))))))));
    return select(vec2<u32>(~(~var_3.a.x) & 4116u, var_3.a.x), var_3.a, select(select(vec2<bool>(false, all(vec3<bool>(arg_0, true, false))), !(!vec2<bool>(true, arg_0)), any(!vec3<bool>(false, false, arg_0))), !vec2<bool>(arg_0, var_3.a.x == 4294967295u), select(true, arg_0 | false, true) | (13674i == var_2)));
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_5) -> Struct_1 {
    global0 = -565f;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-270f + -545f)));
    let var_1 = 1u;
    global0 = var_0;
    var var_2 = Struct_1(_wgslsmith_add_vec2_u32(~firstLeadingBit(func_3(false)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, var_1, var_1, var_1), vec4<u32>(38216u, var_1, 0u, 4294967295u)), _wgslsmith_add_u32(var_1, var_1))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1757f), -1788f, 1619f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1362f, -317f)) * _wgslsmith_f_op_f32(-1693f - arg_0))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -1391f), _wgslsmith_f_op_f32(round(var_0))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1457f, -1542f, arg_0, 457f)))) - vec4<f32>(_wgslsmith_f_op_f32(-369f * 127f), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(var_0 * var_0), _wgslsmith_f_op_f32(arg_0 - -2114f)))));
    return Struct_1(select(vec2<u32>(countOneBits(~var_1), min(var_2.a.x, var_2.a.x | 4294967295u)), abs(vec2<u32>(var_2.a.x, 37615u)) >> (var_2.a % vec2<u32>(32u)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), true)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0))) * var_0), 140f, _wgslsmith_f_op_f32(min(-2003f, arg_0)), _wgslsmith_f_op_f32(min(506f, _wgslsmith_f_op_f32(min(-574f, var_0))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_2.b))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec2<bool>) -> Struct_5 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.b.x))));
    var var_0 = func_2(arg_1.c.x, -(vec3<i32>(-1i) * -abs(u_input.b.yyy)), Struct_5(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b))).a.x;
    var var_1 = Struct_5(u_input.d);
    let var_2 = Struct_5(_wgslsmith_mult_i32(_wgslsmith_mult_i32(-1i, _wgslsmith_mod_i32(u_input.d, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a, var_1.a), u_input.b.wy))), 1i));
    var var_3 = 1312f;
    return Struct_5(var_2.a);
}

fn func_1() -> Struct_5 {
    var var_0 = -min(~12976i, firstTrailingBit(abs(u_input.d)));
    var_0 = _wgslsmith_mod_i32(-2147483647i, 2147483647i);
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(717f * 617f), _wgslsmith_f_op_f32(-1283f + -659f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1594f + -2873f))) * _wgslsmith_f_op_f32(f32(-1f) * -782f))));
    var var_2 = func_4(func_2(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(floor(-427f))), u_input.b.zzz, Struct_5(~u_input.e)), func_2(1f, ~(reverseBits(vec3<i32>(14032i, -1i, u_input.e)) | _wgslsmith_mod_vec3_i32(u_input.b.wyz, vec3<i32>(2147483647i, 2147483647i, u_input.c))), Struct_5(u_input.c)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, _wgslsmith_add_u32(23802u, 1u), select(24363u, 1u, true)), vec4<u32>(4294967295u, 66386u, _wgslsmith_mod_u32(4294967295u, 1u), 4294967295u)) & vec4<u32>(40418u, _wgslsmith_dot_vec2_u32(select(vec2<u32>(33339u, 4294967295u), vec2<u32>(32452u, 4294967295u), vec2<bool>(false, true)), vec2<u32>(1u, 1u)), 49422u, 0u), vec2<bool>(true, !(true | select(false, true, true))));
    var_1 = -216f;
    return Struct_5(~(-2147483647i));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_5) -> vec4<bool> {
    var var_0 = ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(~4294967295u, ~41956u, select(4294967295u, 8688u, true), 1u), vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(29648u, 10943u, 1u, 34532u)));
    var var_1 = arg_0;
    let var_2 = Struct_2(vec4<bool>(var_1.x, !(true | (arg_0.x || false)), !arg_0.x, select(false, true, !arg_0.x)), arg_0.x, true, _wgslsmith_f_op_f32(ceil(-1229f)));
    return vec4<bool>(all(var_2.a), (var_1.x || true) || select(any(arg_0.xz), all(!vec2<bool>(true, var_1.x)), !(!arg_0.x)), var_2.b, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = true;
    var_0 = any(!vec2<bool>(true | all(vec3<bool>(false, false, false)), false));
    global0 = 103f;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1603f)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(866f * _wgslsmith_f_op_f32(f32(-1f) * -290f))))));
    let var_1 = Struct_2(select(select(func_5(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), func_1()), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false)), true), select(!func_5(vec3<bool>(false, true, true), Struct_5(u_input.a)), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), true), vec4<bool>(any(vec2<bool>(true, false)), true, true, true)), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), true)), !(!all(vec4<bool>(false, true, false, true))), -2147483647i >= u_input.d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(790f, -1876f))))));
    let var_2 = 65415u;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.d, min(i32(-1i) * -2147483647i, u_input.e), u_input.a), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, 574f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 859f), vec2<f32>(-681f, -813f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(516f, var_1.d) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d, -937f) - vec2<f32>(-1003f, -1470f)))))), _wgslsmith_mult_vec2_u32(select(vec2<u32>(var_2, 0u) << (_wgslsmith_div_vec2_u32(vec2<u32>(var_2, var_2), vec2<u32>(0u, 0u)) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(var_2, 47361u), vec2<u32>(var_2, 343u)) >> ((vec2<u32>(var_2, var_2) ^ vec2<u32>(var_2, var_2)) % vec2<u32>(32u)), var_1.a.yx), max(_wgslsmith_sub_vec2_u32(vec2<u32>(var_2, var_2), vec2<u32>(var_2, 0u)), reverseBits(vec2<u32>(var_2, 4294967295u)))), func_4(Struct_1((vec2<u32>(27904u, 0u) | vec2<u32>(var_2, 94617u)) >> (~vec2<u32>(0u, var_2) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, 657f, var_1.d, 1608f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2017f, var_1.d, var_1.d, var_1.d))))), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d * var_1.d) + -1632f), ~(~u_input.b.yxx), Struct_5(_wgslsmith_sub_i32(u_input.e, u_input.a))), countOneBits(vec4<u32>(_wgslsmith_sub_u32(var_2, 4294967295u), reverseBits(14060u), ~0u, _wgslsmith_clamp_u32(4294967295u, var_2, var_2))), vec2<bool>(true, (var_2 << (4294967295u % 32u)) >= _wgslsmith_mod_u32(var_2, 104083u))).a, ~vec3<u32>(_wgslsmith_mod_u32(4294967295u, 10384u) & ~var_2, var_2, var_2));
}

