struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> u32 {
    let var_0 = vec4<u32>(19995u, 43142u, 84727u, u_input.a.x);
    var var_1 = Struct_1(countOneBits(88170u) >> (_wgslsmith_div_u32(0u, 20704u) % 32u), min(vec2<u32>(_wgslsmith_dot_vec3_u32(var_0.yzz | vec3<u32>(1u, u_input.a.x, 4294967295u), ~vec3<u32>(var_0.x, var_0.x, u_input.a.x)), ~_wgslsmith_dot_vec2_u32(var_0.zy, var_0.yz)), _wgslsmith_clamp_vec2_u32(abs(_wgslsmith_sub_vec2_u32(vec2<u32>(18048u, 13079u), u_input.a.xy)), ~var_0.zw & firstTrailingBit(vec2<u32>(var_0.x, 4294967295u)), ~(~vec2<u32>(var_0.x, u_input.a.x)))), u_input.a.x);
    var_1 = Struct_1(~1u, abs(var_1.b), max(0u, _wgslsmith_clamp_u32(58672u, select(29746u, var_0.x, false), _wgslsmith_mod_u32(u_input.a.x, var_1.a)) | 4294967295u));
    let var_2 = select(vec4<bool>(true, all(vec4<bool>(true, true, true, true)), true, _wgslsmith_dot_vec4_i32(-vec4<i32>(0i, 2147483647i, -2147483647i, u_input.b.x), ~vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, -1i)) == 4671i), !(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true)))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false), true))));
    var var_3 = Struct_1(~(~(~0u)), u_input.a.zy, var_0.x);
    return ~4294967295u;
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.b.x;
    var var_1 = vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~min(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), u_input.a), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 0u, 0u), vec3<u32>(u_input.a.x, u_input.a.x, 1u))), _wgslsmith_mult_u32(u_input.a.x, 0u)), abs(select(56472u ^ ~u_input.a.x, 0u, true)), 4294967295u);
    var_1 = firstTrailingBit(u_input.a);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2289f), _wgslsmith_f_op_f32(trunc(-2000f)), -442f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(257f, 294f, -865f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2163f, 1852f, -1615f)), vec3<f32>(-1000f, -543f, -1263f)))))));
    return Struct_1((u_input.a.x ^ abs(~var_1.x)) | 1405u, vec2<u32>(min(var_1.x, 1u), 4294967295u), func_3());
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3;
    let var_1 = var_0.b;
    return Struct_1(min(min(0u, 0u) >> (_wgslsmith_div_u32(~u_input.a.x, firstTrailingBit(1420u)) % 32u), ~43372u), arg_2.wx, func_3() | 61166u);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-257f * -928f)), _wgslsmith_f_op_f32(trunc(1278f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-919f - 1950f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(190f, 344f, -723f))))), vec3<bool>(arg_2, true, !arg_2)))));
    var var_1 = -u_input.b.x;
    let var_2 = u_input.b.x;
    var var_3 = Struct_1(23532u, arg_1.b ^ arg_0.b, arg_1.a & ~reverseBits(_wgslsmith_mod_u32(1u, u_input.a.x)));
    return u_input.b;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: i32) -> Struct_1 {
    var var_0 = u_input.b;
    var_0 = func_5(Struct_1(2127u, vec2<u32>(32220u, ~1466u), 4294967295u), func_4(~(0u >> (arg_0.x % 32u)) >= 22698u, vec2<bool>(true, true), _wgslsmith_add_vec4_u32(~_wgslsmith_div_vec4_u32(arg_0, arg_0), select(~vec4<u32>(38316u, 93582u, arg_0.x, u_input.a.x), ~arg_0, vec4<bool>(false, false, false, true))), func_2()), !all(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false), select(vec2<bool>(true, false), vec2<bool>(false, false), true))));
    let var_1 = func_4(!any(vec3<bool>(true, all(vec2<bool>(true, false)), true)), vec2<bool>(all(vec3<bool>(true, true, true)), !all(vec3<bool>(true, true, true)) || true), ~_wgslsmith_add_vec4_u32(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.a.x, 15855u), arg_0)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(arg_0, vec4<u32>(0u, arg_1.x, arg_1.x, 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 382u, 4294967295u, arg_1.x), vec4<u32>(u_input.a.x, arg_1.x, arg_0.x, 4294967295u)), vec4<u32>(arg_1.x, 1u, u_input.a.x, 1u))), Struct_1(~((u_input.a.x << (arg_1.x % 32u)) >> (min(u_input.a.x, 1u) % 32u)), ~countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, arg_0.x), arg_0.yz)), max(arg_1.x & reverseBits(arg_0.x), ~(~1u))));
    let var_2 = arg_0.xw;
    let var_3 = vec2<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 1i, -40390i), vec3<i32>(arg_2, -29354i, -1112i))), u_input.b.x), 2147483647i), 78859i);
    return var_1;
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    var_0 = arg_0;
    let var_1 = func_2();
    var var_2 = arg_2;
    var_0 = arg_0;
    return arg_0;
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    return func_4(arg_2, select(select(vec2<bool>(any(vec3<bool>(true, true, true)), !arg_2), vec2<bool>(true, true), _wgslsmith_f_op_f32(select(924f, -573f, true)) < -770f), vec2<bool>(all(vec3<bool>(arg_2, arg_2, true)), !(arg_2 | arg_2)), true), ~(~vec4<u32>(arg_0.b.x, func_3(), u_input.a.x, arg_1.a)), func_6(func_2(), 19238u >= (arg_0.b.x >> (4294967295u % 32u)), Struct_1(~_wgslsmith_div_u32(13157u, arg_1.c), vec2<u32>(1u, arg_1.b.x & 4294967295u), arg_1.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(Struct_1(30530u, ~(~vec2<u32>(u_input.a.x, u_input.a.x)), 78499u), true && any(vec4<bool>(true, true, false, false)), func_1(select(~vec4<u32>(u_input.a.x, u_input.a.x, 19882u, 1u), vec4<u32>(0u, 39745u, u_input.a.x, u_input.a.x) & vec4<u32>(0u, 15320u, 2692u, u_input.a.x), true), _wgslsmith_div_vec3_u32(select(u_input.a, u_input.a, vec3<bool>(false, false, true)), min(vec3<u32>(u_input.a.x, 0u, 33437u), u_input.a)), ~(25722i << (0u % 32u)))), Struct_1(~(~u_input.a.x), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.a.x), _wgslsmith_mult_vec2_u32(u_input.a.zy, ~vec2<u32>(1u, u_input.a.x))), func_2().b.x), all(select(vec4<bool>(all(vec3<bool>(false, true, true)), false, true, false), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)))));
    var var_1 = 7188u;
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f)));
    let var_3 = func_7(var_0, Struct_1(u_input.a.x, _wgslsmith_div_vec2_u32(vec2<u32>(0u, max(21715u, var_0.a)), vec2<u32>(u_input.a.x & 0u, 14844u ^ u_input.a.x)), 1u), !any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true)))));
    let var_4 = Struct_1(select(var_3.b.x, 1780u, true), vec2<u32>(func_6(Struct_1(4294967295u, u_input.a.yz, var_3.c), select(true, false, true), Struct_1(0u, vec2<u32>(59212u, var_0.c), 0u)).c << (func_3() % 32u), u_input.a.x), var_3.c);
    var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-495f, _wgslsmith_f_op_f32(abs(-315f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1756f)))));
    var var_5 = reverseBits(-1i);
    var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-562f, var_2.x, var_2.x)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1184f, 1008f, 1006f) - vec3<f32>(868f, var_2.x, var_2.x)) - _wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, var_2.x, -376f), vec3<f32>(-616f, var_2.x, 1000f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_2.x))))), -1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(var_2.x - var_2.x)))))));
    var_5 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(~max(~32556u, ~6246u), ~min(~(~var_3.b), var_0.b), firstLeadingBit(countOneBits(~abs(vec2<i32>(-1i, u_input.b.x)))));
}

