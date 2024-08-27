struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: vec4<bool>, arg_3: vec2<bool>) -> u32 {
    let var_0 = vec3<u32>(4294967295u, _wgslsmith_sub_u32(u_input.a, ~4294967295u), _wgslsmith_add_u32(abs(~72658u << (firstTrailingBit(1u) % 32u)), ~7613u));
    var var_1 = _wgslsmith_mult_vec3_u32(var_0, var_0);
    var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(select(arg_0.x, var_1.x, any(vec2<bool>(true, false)) | (arg_0.x > 97167u)), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0.x >> (35952u % 32u)), arg_1.yz), var_0.x), arg_1.zyw);
    var var_2 = ~_wgslsmith_mult_u32(_wgslsmith_add_u32(var_0.x, 34827u), countOneBits(~4294967295u));
    let var_3 = u_input.a;
    return min(0u, u_input.a) >> (0u % 32u);
}

fn func_3(arg_0: i32, arg_1: vec4<i32>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-422f - -1000f) * _wgslsmith_f_op_f32(-1625f + -723f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-772f)))), -1923f)), max(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 4775u, u_input.a, u_input.a), ~vec4<u32>(1u, u_input.a, 4294967295u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 16778u)), ~vec4<u32>(u_input.a, u_input.a, 4294967295u, 4294967295u) ^ vec4<u32>(u_input.a, 65088u, 16763u, 4294967295u), vec4<bool>(true, all(vec3<bool>(true, true, false)), false, true)), vec4<u32>(76786u | u_input.a, u_input.a, _wgslsmith_mult_u32(firstTrailingBit(u_input.a), u_input.a), _wgslsmith_clamp_u32(u_input.a, _wgslsmith_add_u32(u_input.a, 4294967295u), 4294967295u))));
    var var_1 = var_0;
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(202f, 874f, false)), var_1.a)), vec4<u32>(16262u, 105316u, ~var_1.b.x, ~1u));
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-var_0.a)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-1011f, var_1.a, false)), _wgslsmith_f_op_f32(trunc(-1000f)), 2029f > var_1.a)))), _wgslsmith_add_vec4_u32(countOneBits(~var_1.b) & var_0.b, var_1.b));
    let var_2 = ~vec2<u32>(78921u ^ ~(~var_1.b.x), (1u >> (_wgslsmith_dot_vec2_u32(var_1.b.zz, vec2<u32>(var_1.b.x, 1u)) % 32u)) & var_0.b.x);
    return ~var_2.x;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(913f, -281f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-275f, -519f) * _wgslsmith_f_op_f32(-437f + -1075f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(396f))), _wgslsmith_div_f32(1979f, 1f)))));
    var var_1 = vec2<u32>(func_2((abs(vec2<u32>(4579u, u_input.a)) & _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 5886u), vec2<u32>(u_input.a, 27510u))) & countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, 4294967295u))), vec4<u32>(~u_input.a >> (u_input.a % 32u), max(u_input.a, u_input.a), 1u << (max(u_input.a, u_input.a) % 32u), _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a, u_input.a), min(u_input.a, 53001u))), vec4<bool>(true, true, _wgslsmith_f_op_f32(var_0.x + 1000f) == _wgslsmith_f_op_f32(-1000f - 198f), true), !vec2<bool>(true, var_0.x > 2262f)), func_3(abs(~0i), -vec4<i32>(-1i, -1i, -1940i, 1i) << (~(~vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.a)) % vec4<u32>(32u))));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(var_0.x + var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), -2314f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.x, var_0.x)))), 431f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, -1506f, -173f, 989f), vec4<f32>(-436f, var_0.x, var_0.x, -2473f)))))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(355f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_0.x, -852f, true)))))), firstTrailingBit(vec4<u32>(65374u, var_1.x, 1u, var_1.x) >> (_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, u_input.a, 0u, 1u)), ~vec4<u32>(2651u, u_input.a, 15994u, 1u), ~vec4<u32>(var_1.x, var_1.x, u_input.a, 19641u)) % vec4<u32>(32u))));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f));
    return Struct_1(600f, min(vec4<u32>(~0u, 0u, _wgslsmith_mod_u32(15802u, 2221u), _wgslsmith_mod_u32(4294967295u, 1u) << ((u_input.a >> (u_input.a % 32u)) % 32u)), ~select(var_2.b, _wgslsmith_mult_vec4_u32(vec4<u32>(1825u, 4294967295u, 4294967295u, 44742u), vec4<u32>(var_2.b.x, u_input.a, 0u, 4236u)), select(true, false, true))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: i32) -> bool {
    var var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(arg_1.b.xwy, func_1().b.yyy), vec3<u32>(~countOneBits(~u_input.a), arg_1.b.x, firstTrailingBit(~1u)));
    var_0 = arg_1.b.x;
    var_0 = arg_1.b.x;
    let var_1 = func_1();
    let var_2 = all(vec4<bool>(true, true, true, true));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(all(vec4<bool>(true, true, true, true)), true, false, !func_4(Struct_1(-342f, vec4<u32>(855u, 0u, u_input.a, u_input.a)), func_1(), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1156f, -227f, 1203f, -967f)), _wgslsmith_mod_i32(-1i, 79944i))), !(!select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), true), all(vec4<bool>(true, true, true, false)))), true);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(2029f * _wgslsmith_f_op_f32(-199f - 687f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1331f)), _wgslsmith_f_op_f32(max(304f, 1000f))), _wgslsmith_div_f32(func_1().a, -306f), _wgslsmith_f_op_f32(f32(-1f) * -470f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-511f, 1471f, 346f, -236f)))), true)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -953f), vec4<u32>(_wgslsmith_sub_u32(u_input.a, 0u), _wgslsmith_add_u32(u_input.a, 63571u), (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 14482u, 20721u), vec4<u32>(u_input.a, 0u, 37103u, u_input.a)) << (_wgslsmith_add_u32(u_input.a, 4294967295u) % 32u)) >> (~(u_input.a & 23724u) % 32u), (~0u ^ func_2(vec2<u32>(u_input.a, 34021u), vec4<u32>(u_input.a, 88641u, u_input.a, u_input.a), var_0, var_0.yw)) ^ ~u_input.a));
    let var_3 = countOneBits(vec4<i32>(1i, 1i, 1i, 1i));
    let var_4 = func_1();
    let var_5 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.a, 1f) * _wgslsmith_f_op_f32(ceil(var_1.x))), vec4<u32>(_wgslsmith_clamp_u32(30585u, 4294967295u & var_2.b.x, func_1().b.x), ~(~var_4.b.x), ~var_4.b.x, 4294967295u));
    let var_6 = func_1();
    var var_7 = vec3<i32>(-max(var_3.x ^ var_3.x, ~var_3.x), 0i, var_3.x);
    let var_8 = Struct_1(-410f, var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(vec2<i32>(-36251i, ~(-18694i)) | ~(-var_3.wy), var_3.zz));
}

