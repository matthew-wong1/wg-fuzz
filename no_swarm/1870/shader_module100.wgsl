struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: i32, arg_3: Struct_1) -> Struct_2 {
    let var_0 = arg_3;
    return Struct_2(Struct_1(_wgslsmith_sub_i32(countOneBits(var_0.a) >> (1u % 32u), ~var_0.a), true), Struct_1(~(-25681i), !(!arg_3.b)), firstLeadingBit(abs(1u)), arg_1.wzz);
}

fn func_3(arg_0: f32, arg_1: vec3<u32>, arg_2: vec3<i32>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(reverseBits(1i), true);
    var var_1 = Struct_2(func_2(-1i & (22527i << (_wgslsmith_mod_u32(arg_1.x, arg_3.c) % 32u)), vec4<f32>(arg_0, arg_0, -1426f, arg_3.d.x), select(countOneBits(min(-1i, -38656i)), _wgslsmith_add_i32(func_2(-10937i, vec4<f32>(arg_3.d.x, 912f, arg_0, -1719f), 3301i, arg_3.a).b.a, _wgslsmith_sub_i32(-46613i, u_input.c.x)), var_0.b), Struct_1(_wgslsmith_dot_vec2_i32(max(arg_2.zy, arg_2.yy), abs(arg_2.zx)), all(select(vec2<bool>(false, true), vec2<bool>(arg_3.b.b, true), vec2<bool>(true, true))))).a, Struct_1(-1i, !(!any(vec3<bool>(var_0.b, arg_3.a.b, false)))), 28687u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(arg_3.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(487f, arg_0, arg_0))))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.d.x, -237f)))))) * vec2<f32>(arg_3.d.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-3180f + arg_3.d.x))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(arg_3.d.yx, var_1.d.yx))) * vec2<f32>(_wgslsmith_f_op_f32(-1674f * arg_3.d.x), 856f)), _wgslsmith_f_op_vec2_f32(-arg_3.d.zx)), !vec2<bool>(any(vec2<bool>(true, false)) & any(vec3<bool>(true, false, true)), any(!vec3<bool>(var_1.a.b, arg_3.a.b, var_1.b.b)))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1682f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1421f), var_1.d.x))) * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1229f, -263f), var_2.x))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(func_2(-5054i, vec4<f32>(820f, arg_3.d.x, 561f, var_1.d.x), var_1.a.a, var_1.b).d.x)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.x + var_1.d.x), _wgslsmith_f_op_f32(-1000f - var_1.d.x))))));
    var var_4 = arg_3;
    return Struct_2(Struct_1(var_1.a.a, (-u_input.b.x >= -2147483647i) & ((var_1.c == var_4.c) && all(vec2<bool>(false, false)))), var_4.a, _wgslsmith_add_u32(0u, _wgslsmith_dot_vec3_u32(arg_1, arg_1)), var_3);
}

fn func_1() -> bool {
    var var_0 = u_input.b.x;
    var_0 = u_input.d.x;
    var_0 = u_input.d.x;
    var var_1 = func_3(780f, ~(~select(firstTrailingBit(vec3<u32>(43416u, 6519u, 10019u)), ~vec3<u32>(15958u, 22903u, 11630u), vec3<bool>(true, true, false))), abs(vec3<i32>(countOneBits(_wgslsmith_sub_i32(835i, u_input.a.x)), -58591i | (u_input.b.x | 0i), (u_input.d.x | u_input.a.x) >> (1u % 32u))), func_2(-41956i, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-730f, -1000f, 765f, 1000f), vec4<f32>(708f, 1319f, 1311f, 2800f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(649f, 1522f, 933f, -448f))))), reverseBits(~(-1i >> (0u % 32u))), Struct_1(-u_input.d.x, true)));
    let var_2 = Struct_1(1i, var_1.a.b);
    return ~var_1.c > var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 41747u;
    var var_1 = vec4<bool>(true, all(vec3<bool>(select(func_1(), func_3(-764f, vec3<u32>(36103u, 37718u, 7401u), vec3<i32>(-11491i, 4358i, 0i), Struct_2(Struct_1(u_input.a.x, true), Struct_1(u_input.b.x, true), 0u, vec3<f32>(1174f, 581f, 409f))).a.b, true), false, all(select(vec2<bool>(false, false), vec2<bool>(true, true), false)))), true, func_1() || !select(any(vec2<bool>(true, true)), true, -2147483647i > u_input.b.x));
    var var_2 = Struct_1(54160i, select(any(!vec2<bool>(var_1.x, false)), var_1.x, var_1.x));
    var_0 = _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(max(vec3<u32>(0u, 60186u, 35414u), vec3<u32>(4294967295u, 122u, 16523u)), firstTrailingBit(vec3<u32>(49148u, 5338u, 35569u))), ~vec3<u32>(1u, 1u, 1u)), reverseBits(vec3<u32>(1u, 1u, 1u)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1258f, -276f, -223f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-947f, -1468f, 1512f) + vec3<f32>(-1000f, 475f, -1098f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1078f, -1000f, 1422f), vec3<f32>(-270f, -809f, -122f)))))));
    let var_4 = reverseBits(-max(u_input.d, max(~vec3<i32>(7941i, 0i, -2147483647i), ~u_input.a)));
    let var_5 = any(vec4<bool>(true, any(var_1.zx), var_1.x, false));
    let var_6 = _wgslsmith_f_op_f32(f32(-1f) * -1295f);
    let var_7 = var_6;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(~(~firstLeadingBit(vec2<u32>(131845u, 0u))), _wgslsmith_add_vec2_u32(~vec2<u32>(1u, 27155u) | select(vec2<u32>(64540u, 31194u), vec2<u32>(4294967295u, 4294967295u), var_1.xz), ~reverseBits(vec2<u32>(2088u, 1u)))));
}

