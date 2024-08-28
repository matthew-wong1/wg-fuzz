struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<bool> {
    let var_0 = (~(~(u_input.a.wx & vec2<u32>(u_input.a.x, 0u))) & vec2<u32>(abs(u_input.a.x | 4294967295u), select(reverseBits(29656u), ~u_input.a.x, all(vec3<bool>(true, true, true))))) >> (vec2<u32>(_wgslsmith_dot_vec2_u32(~(~u_input.a.zy), u_input.a.zw), ~(~u_input.a.x | u_input.a.x)) % vec2<u32>(32u));
    let var_1 = i32(-1i) * -15822i;
    return !(!vec4<bool>(true, true, true, select(true, all(vec3<bool>(true, false, true)), u_input.a.x != u_input.a.x)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = abs(firstTrailingBit(max(countOneBits(vec4<i32>(-2147483647i, 0i, -1i, 40499i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 13513i, -1i, 1i), vec4<i32>(-39132i, 16378i, -19127i, -1i)) >> (u_input.a % vec4<u32>(32u)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-615f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-330f + -269f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1439f - 620f))))));
    var_1 = 1900f;
    var_1 = _wgslsmith_f_op_f32(872f + _wgslsmith_f_op_f32(trunc(-1082f)));
    var var_2 = func_3();
    return Struct_1(arg_1.x, arg_1.yx, arg_0.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> u32 {
    var var_0 = arg_2.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -559f))), 865f, -1842f));
    let var_2 = u_input.a.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_1, vec3<f32>(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_div_f32(var_1.x, var_1.x)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, var_1.x)))))));
    var_0 = _wgslsmith_dot_vec3_i32(-_wgslsmith_mult_vec3_i32((arg_2.wxw ^ vec3<i32>(1i, 0i, -74371i)) ^ arg_2.zxx, arg_2.wxw), vec3<i32>(arg_2.x, ~(0i << (1u % 32u)), -arg_2.x));
    return var_2;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_2(arg_2.x, Struct_1(arg_2.x, arg_2.yz, true), i32(-1i) * -1i, _wgslsmith_mod_i32(~_wgslsmith_mult_i32(-11183i, 60608i) << (func_4(Struct_1(u_input.a.x, u_input.a.ww, arg_0), func_2(vec3<bool>(false, arg_0, true), vec3<u32>(39045u, arg_2.x, arg_2.x)), vec4<i32>(65952i, 1i, -1i, 69966i)) % 32u), i32(-1i) * -(i32(-1i) * -7631i)));
    var_0 = Struct_2(5136u, func_2(select(!(!vec3<bool>(arg_0, var_0.b.c, false)), select(!vec3<bool>(arg_0, var_0.b.c, arg_0), select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(false, false, arg_0), vec3<bool>(arg_0, false, true)), vec3<bool>(arg_0, false, var_0.b.c)), _wgslsmith_dot_vec2_i32(vec2<i32>(-37791i, var_0.d), vec2<i32>(29308i, -1491i)) < _wgslsmith_sub_i32(var_0.d, var_0.d)), countOneBits(u_input.a.wwx)), _wgslsmith_mult_i32(var_0.d, -9602i), ~firstLeadingBit(52802i));
    var_0 = Struct_2(~0u, var_0.b, var_0.c, var_0.c);
    var_0 = Struct_2(abs(~arg_2.x), var_0.b, (4380i ^ abs(~var_0.d)) >> (~_wgslsmith_add_u32(u_input.a.x, _wgslsmith_add_u32(u_input.a.x, arg_2.x)) % 32u), firstLeadingBit(_wgslsmith_add_i32(1i, select(1i, _wgslsmith_sub_i32(var_0.c, var_0.c), false))));
    var_0 = Struct_2(~abs(72830u), Struct_1(arg_2.x, ~(abs(vec2<u32>(70828u, var_0.b.a)) >> (firstTrailingBit(var_0.b.b) % vec2<u32>(32u))), func_2(select(select(vec3<bool>(var_0.b.c, false, false), vec3<bool>(true, arg_0, var_0.b.c), vec3<bool>(false, var_0.b.c, var_0.b.c)), vec3<bool>(var_0.b.c, var_0.b.c, arg_0), !vec3<bool>(false, arg_0, var_0.b.c)), ~u_input.a.zxx).c), -27550i, 21143i);
    return Struct_1(_wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(1u | firstTrailingBit(0u), arg_2.x)), ~firstLeadingBit(reverseBits(arg_2.yw & vec2<u32>(u_input.a.x, var_0.a))), !func_2(!vec3<bool>(arg_0, arg_0, true), u_input.a.wxx >> (u_input.a.xzz % vec3<u32>(32u))).c | (any(vec3<bool>(true, arg_0, true)) == true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mult_i32(~1i, _wgslsmith_add_i32(countOneBits(-54283i), -21327i));
    var var_1 = Struct_2(_wgslsmith_sub_u32(~0u, u_input.a.x), func_1(true, -786f, _wgslsmith_mod_vec4_u32(u_input.a, min(u_input.a << (vec4<u32>(4294967295u, u_input.a.x, 0u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(u_input.a.x, 241u, u_input.a.x, 32500u) >> (vec4<u32>(1u, u_input.a.x, u_input.a.x, 22830u) % vec4<u32>(32u))))), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(max(1i, 1i), 1837i), _wgslsmith_add_i32(firstTrailingBit(~(-2147483647i)), 20522i), 1i), ~14157i);
    var var_2 = func_1(func_1(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-339f * _wgslsmith_f_op_f32(f32(-1f) * -211f)) * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1045f, 2527f), _wgslsmith_f_op_f32(968f - -1000f)))), u_input.a).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(500f, -890f))))), vec4<u32>(abs(0u), _wgslsmith_div_u32(5972u, u_input.a.x), ~1u, ~_wgslsmith_mult_u32(_wgslsmith_div_u32(var_1.a, 22944u), _wgslsmith_dot_vec2_u32(u_input.a.wz, var_1.b.b))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1267f, _wgslsmith_f_op_f32(max(954f, 1025f))))))) * -352f);
    let var_4 = var_1.b.c;
    var var_5 = func_2(!vec3<bool>(false, true, (var_2.b.x < var_2.b.x) & true), abs(vec3<u32>(var_2.a, 21107u, _wgslsmith_dot_vec2_u32(var_2.b, ~var_1.b.b))));
    var var_6 = vec3<bool>(true, all(!vec4<bool>(any(vec3<bool>(var_5.c, var_1.b.c, true)), all(vec2<bool>(false, var_2.c)), any(vec4<bool>(var_2.c, var_5.c, true, false)), true)), var_2.c);
    var var_7 = Struct_2(~var_1.b.b.x, Struct_1(var_5.b.x | 125380u, abs(select(var_1.b.b, reverseBits(vec2<u32>(7077u, var_1.a)), var_6.zz)), false), var_1.d, min(35473i | ~var_1.c, ~abs(-40801i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(576f))))), vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_1.d, 0i), vec2<i32>(var_7.c, var_1.d)), vec2<i32>(0i, var_7.d)) << (~(~63467u) % 32u), var_7.c), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(456f, 703f, 1777f, 956f)), vec4<f32>(1f, 1f, 1f, 1f), vec4<bool>(true, var_5.c, true, true))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1744f, -2758f, 1427f, 1319f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1639f, 1086f, 1119f, -623f)))))), true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1179f))), -476f) + vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(870f)))), 177f)));
}

