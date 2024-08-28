struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: u32, arg_3: vec4<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(286f + 1000f);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(267f, 488f, 698f, _wgslsmith_f_op_f32(floor(var_0))) * vec4<f32>(_wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_f_op_f32(277f + var_0), var_0, 1189f))));
    var_1 = vec4<f32>(-185f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-227f)) * var_1.x), var_1.x, var_1.x);
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0, var_0, var_0, -308f))), vec4<f32>(var_1.x, 1254f, var_0, var_0), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))))), vec4<f32>(_wgslsmith_f_op_f32(select(1000f, -515f, u_input.e <= arg_0.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1310f * var_1.x))), _wgslsmith_div_f32(-1526f, _wgslsmith_f_op_f32(-var_0)), 292f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0, var_0, -2071f, -949f))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(561f, var_1.x, 299f, var_1.x) * vec4<f32>(-1000f, -1824f, 899f, var_0))))), vec4<f32>(671f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(var_1.x, var_1.x, arg_1.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1153f, var_0))))))));
    let var_2 = 1i;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-102f - -820f)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: vec3<f32>) -> f32 {
    var var_0 = vec4<f32>(arg_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) - _wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(f32(-1f) * -210f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_3.x)), arg_3.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_3.x), -1366f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_3.x))))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.zx) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-596f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(vec3<u32>(u_input.d, 18877u, 55173u), vec3<bool>(arg_1.b.x, true, arg_0.b.x), 34070u, u_input.a)), 190f))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_0.xy)))))));
    let var_2 = var_0.wz;
    let var_3 = -37945i;
    var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.x, var_0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.yx) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-276f, arg_3.x))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, _wgslsmith_f_op_f32(-1000f - -1053f))))));
    return arg_3.x;
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-110f, _wgslsmith_f_op_f32(func_2(Struct_2(44384i, vec2<bool>(false, true), vec3<i32>(-32032i, 2147483647i, -1i)), Struct_1(u_input.e, vec4<bool>(true, false, true, true), u_input.c.x, u_input.c.x), arg_0.x, vec3<f32>(-2799f, -1306f, 813f))))), -1497f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-743f)) + 1027f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -132f, 763f) + vec3<f32>(-577f, 1609f, 564f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-979f, -555f, 1473f)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, 938f, -640f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(567f, _wgslsmith_f_op_f32(-455f + var_0.x), -1370f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(sign(var_0.x)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 1000f, var_0.x), vec3<f32>(1224f, var_0.x, -533f))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1000f, -1272f) * vec3<f32>(var_0.x, var_0.x, -368f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -652f))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(1289f, var_0.x, -954f), vec3<f32>(878f, var_0.x, 1856f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(106f, 186f, var_0.x))))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(abs(vec3<u32>(0u, u_input.e, 13594u)), vec3<bool>(true, true, false), arg_0.x ^ 1u, reverseBits(u_input.a))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))))) + -912f);
    var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), var_1, _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1000f, 729f)) - vec3<f32>(-1234f, _wgslsmith_f_op_f32(-172f * -3038f), _wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 108f)), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, 549f)) * _wgslsmith_f_op_f32(-var_0.x))))));
    return Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(reverseBits(~vec3<u32>(7519u, 0u, u_input.e)), vec3<u32>(arg_0.x, ~0u, u_input.d), ~firstTrailingBit(vec3<u32>(1u, 0u, u_input.e))), ~_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.x, 1u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 29927u)), reverseBits(vec3<u32>(arg_0.x, u_input.d, 4294967295u)))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !vec4<bool>(all(vec3<bool>(true, true, false)), any(vec2<bool>(false, false)), true, true)), _wgslsmith_div_i32(abs(_wgslsmith_dot_vec2_i32(u_input.a.zz, u_input.a.xx)) & 27573i, 2147483647i), abs(-2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(abs(~firstLeadingBit(max(vec2<u32>(0u, u_input.d), vec2<u32>(u_input.d, 37146u)))));
    let var_1 = -666f;
    let var_2 = _wgslsmith_f_op_f32(-549f * _wgslsmith_f_op_f32(-1194f + _wgslsmith_f_op_f32(ceil(-690f))));
    var var_3 = Struct_1(~0u, !var_0.b, u_input.c.x, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.a ^ u_input.a, u_input.a ^ vec4<i32>(var_0.d, var_0.c, 0i, u_input.b.x), -vec4<i32>(u_input.a.x, u_input.b.x, u_input.a.x, -2147483647i)), vec4<i32>(-2147483647i, -70079i, var_0.c, var_0.c) & (vec4<i32>(var_0.d, 0i, var_0.d, u_input.b.x) | u_input.b), vec4<i32>(i32(-1i) * -49910i, 0i ^ u_input.a.x, 24599i, 1i)), min(-u_input.b, -vec4<i32>(7409i, 48097i, u_input.b.x, u_input.a.x))));
    var var_4 = var_3.b.zx;
    var_3 = Struct_1(abs(_wgslsmith_mult_u32(~u_input.d, _wgslsmith_div_u32(var_0.a, var_3.a))), var_0.b, countOneBits(-(i32(-1i) * -2147483647i)) << (var_0.a % 32u), select(-41885i, _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_div_i32(0i, var_3.c), i32(-1i) * -46558i) & -24343i, !(_wgslsmith_mult_u32(4294967295u, var_0.a) != _wgslsmith_mod_u32(var_3.a, 77776u))));
    let var_5 = firstLeadingBit(u_input.a);
    var_4 = !select(var_3.b.xy, vec2<bool>(var_0.b.x, !any(var_0.b.yyw)), func_1(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a, var_0.a) | vec2<u32>(13993u, 0u), ~vec2<u32>(var_0.a, var_3.a))).b.zx);
    var_3 = func_1(~(_wgslsmith_add_vec2_u32(~vec2<u32>(var_3.a, 0u), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_3.a, 29235u), vec2<u32>(var_3.a, 4294967295u), vec2<u32>(var_3.a, 10907u))) << (firstLeadingBit(vec2<u32>(var_0.a, 4294967295u) ^ vec2<u32>(0u, var_3.a)) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1427f, 1011f), vec2<f32>(-1729f, var_2), var_3.b.wz)))))))));
}

