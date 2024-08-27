struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> i32 {
    return -_wgslsmith_mod_i32(u_input.d >> (4294967295u % 32u), 1i);
}

fn func_2(arg_0: vec2<bool>) -> vec4<bool> {
    let var_0 = Struct_1(~u_input.a);
    var var_1 = vec2<bool>(any(vec3<bool>(true, true, false)) != all(arg_0), false);
    var var_2 = Struct_1(vec2<u32>(_wgslsmith_clamp_u32(max(u_input.a.x, 0u), ~u_input.a.x, ~(var_0.a.x << (0u % 32u))), abs(reverseBits(u_input.a.x & 17247u))));
    let var_3 = vec3<i32>(firstLeadingBit(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.d, u_input.d, -2147483647i) << (vec4<u32>(var_2.a.x, 23992u, 0u, 1u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, -8369i, -42980i, u_input.d), vec4<i32>(u_input.c, -12947i, u_input.d, 15239i)))), 1i, min(-u_input.c, func_3()));
    var_2 = var_0;
    return select(!vec4<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(17248u, 0u, 35268u), vec3<u32>(59103u, 0u, var_2.a.x)) >= _wgslsmith_mult_u32(1u, 39665u), any(select(vec3<bool>(var_1.x, false, arg_0.x), vec3<bool>(false, arg_0.x, true), false)), any(select(vec2<bool>(arg_0.x, var_1.x), arg_0, arg_0)), !arg_0.x), vec4<bool>(false, var_1.x, all(vec4<bool>(!var_1.x, var_1.x, false, false)), true), false);
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: bool, arg_3: u32) -> vec2<f32> {
    var var_0 = -3805i;
    var_0 = _wgslsmith_dot_vec3_i32(abs(vec3<i32>(reverseBits(u_input.d & 75391i), _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.d, -1i), select(vec2<i32>(34778i, 2147483647i), vec2<i32>(42602i, u_input.c), vec2<bool>(arg_1, true))), u_input.b.x >> (4294967295u % 32u))), (u_input.b >> (vec3<u32>(~8736u, 0u, u_input.a.x) % vec3<u32>(32u))) & abs(vec3<i32>(-u_input.d, -u_input.d, u_input.c)));
    let var_1 = abs(min(_wgslsmith_mod_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, 1i, 1i, u_input.b.x), vec4<i32>(u_input.c, 1i, u_input.b.x, u_input.d)), abs(-vec4<i32>(u_input.b.x, -20572i, u_input.d, u_input.d))), vec4<i32>(firstLeadingBit(-1i), ~u_input.c, u_input.c << (800u % 32u), u_input.b.x) ^ ((vec4<i32>(8463i, u_input.d, u_input.c, 0i) << (vec4<u32>(4341u, 31898u, arg_3, 58868u) % vec4<u32>(32u))) ^ abs(vec4<i32>(-38491i, u_input.d, -20037i, u_input.d)))));
    let var_2 = select(!vec2<bool>(any(arg_0), (-1i != u_input.c) || false), !arg_0.yy, arg_0.wz);
    let var_3 = !(all(select(vec3<bool>(arg_2, arg_1, var_2.x), vec3<bool>(false, arg_2, false), vec3<bool>(false, var_2.x, true))) && (~u_input.d == ~var_1.x)) & arg_0.x;
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1008f, 1143f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(276f, 1115f) - vec2<f32>(-1555f, 363f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(862f, 493f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-853f, 1000f), vec2<f32>(168f, -121f), false)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 318f), vec2<f32>(587f, 1606f), true)), true || arg_0.x)) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -553f), vec2<f32>(1225f, -1000f)), vec2<f32>(-750f, 233f))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-649f, -1993f)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1271f, 1434f), vec2<f32>(-1442f, 388f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1612f, 482f) - vec2<f32>(1000f, -1332f))))))));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = vec4<u32>(~0u, ~reverseBits(arg_1.x) & firstTrailingBit(_wgslsmith_div_u32(arg_2.a.x, 61768u)), arg_1.x, firstLeadingBit(abs(~4294967295u))) << (reverseBits(vec4<u32>(4294967295u, ~(~69626u), ~4294967295u, u_input.a.x | 1u)) % vec4<u32>(32u));
    var var_1 = Struct_1(u_input.a);
    var var_2 = arg_2;
    var_2 = arg_2;
    let var_3 = Struct_1(vec2<u32>(abs(4294967295u), _wgslsmith_dot_vec3_u32(var_0.yxx, var_0.zyw)));
    return var_3;
}

fn func_1() -> Struct_1 {
    let var_0 = func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(func_2(select(vec2<bool>(false, true), vec2<bool>(false, true), true)), true, any(select(vec2<bool>(false, false), vec2<bool>(true, true), false)), ~109425u)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(497f, 734f)))), _wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), u_input.a.x, ~1u)), vec3<u32>(25078u, u_input.a.x << (min(u_input.a.x, 0u) % 32u), 15827u), abs(abs(select(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 1u), false)))), Struct_1(u_input.a));
    let var_1 = u_input.d;
    let var_2 = var_0;
    let var_3 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-550f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(299f - -439f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-284f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(516f)), 1f)) - _wgslsmith_f_op_f32(f32(-1f) * -313f))), vec3<f32>(_wgslsmith_f_op_f32(sign(369f)), _wgslsmith_f_op_f32(-812f + -1351f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-177f * 382f)))), !(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true)))));
    var var_4 = 4294967295u;
    return func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_3.zy, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(162f, var_3.x) * var_3.yy), vec2<f32>(-1051f, var_3.x)), true)) * vec2<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(-614f * var_3.x))), ~_wgslsmith_add_vec3_u32(~reverseBits(vec3<u32>(42960u, 1u, var_0.a.x)), vec3<u32>(~89486u, 50041u, 1u)), Struct_1(~var_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(-339f, 995f), vec2<f32>(-617f, -345f))))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -849f), -2137f)), firstLeadingBit(vec3<u32>(~(~var_0.a.x), _wgslsmith_add_u32(var_0.a.x << (u_input.a.x % 32u), var_0.a.x), _wgslsmith_mod_u32(4294967295u, 4294967295u ^ u_input.a.x))), func_5(vec2<f32>(797f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1532f, -463f) * 1f)), vec3<u32>(countOneBits(~var_0.a.x), _wgslsmith_dot_vec2_u32(u_input.a, abs(var_0.a)), ~func_1().a.x), func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -881f), vec2<f32>(868f, -668f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(169f, 611f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1331f, 986f) * vec2<f32>(-290f, -2278f)))))), -10785i);
}

