struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(reverseBits(abs(vec2<i32>(~27732i, _wgslsmith_mult_i32(-2147483647i, 0i)))), _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), ~4294967295u), ~vec2<u32>(0u, 4294967295u), firstLeadingBit(max(vec2<u32>(29792u, 0u), vec2<u32>(59388u, u_input.a.x)))), u_input.a.yy | _wgslsmith_mod_vec2_u32(select(u_input.a.yw, vec2<u32>(45395u, 3125u), vec2<bool>(false, false)), vec2<u32>(6058u, u_input.b)), reverseBits(_wgslsmith_mult_vec2_u32(u_input.a.zz | vec2<u32>(4294967295u, 0u), u_input.a.yy))), select(_wgslsmith_mod_vec3_u32(u_input.a.zzx, u_input.a.zwz), countOneBits(vec3<u32>(max(u_input.b, u_input.b), 0u, u_input.a.x)), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true))), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 26491i, -2147483647i), vec3<i32>(-13540i, -2147483647i, -1i)), ~(-vec3<i32>(0i, 0i, 53771i)), min(vec3<i32>(-1i, 0i, -1i), vec3<i32>(-2147483647i, -2147483647i, -11755i)) >> (u_input.a.zyw % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 1i, -26251i >> (u_input.a.x % 32u)), ~vec3<i32>(2147483647i, 2171i, 3353i))));
    var var_1 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-2079f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -315f))), _wgslsmith_div_f32(1571f, 2057f)), vec3<f32>(1069f, _wgslsmith_f_op_f32(abs(-860f)), _wgslsmith_f_op_f32(floor(159f)))));
    var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - 910f) - _wgslsmith_f_op_f32(380f + var_1.x)), _wgslsmith_f_op_f32(exp2(var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-772f, -881f))))));
    let var_2 = -899f;
    let var_3 = !(!(!(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(0u, var_0.c.x, var_0.c.x, 27469u)) >= 17258u)));
    return var_0.d.x;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -893f);
    var var_1 = Struct_2(~(~u_input.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0, 571f, var_0, 980f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -627f, -583f, var_0) + vec4<f32>(-1367f, 121f, -1126f, var_0))))), ~(-76496i), abs(_wgslsmith_add_i32(func_3(), 0i)));
    let var_2 = Struct_1(vec2<i32>(var_1.c, -(~min(-29174i, 0i))), ~(~vec2<u32>(u_input.b, select(4294967295u, 54072u, true))), vec3<u32>(u_input.b, ~(~1228u), u_input.a.x), ~vec3<i32>(i32(-1i) * -var_1.d, var_1.c, ~_wgslsmith_sub_i32(var_1.c, -28705i)));
    let var_3 = -593f;
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(588f)))), _wgslsmith_f_op_f32(ceil(623f)))), 590f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(367f))))), var_0);
    return Struct_2(~1u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1385f, -1000f, -1557f, 1000f)))), var_1.b, vec4<bool>(~u_input.a.x < ~var_2.b.x, !(var_1.b.x < -1285f), true, var_0 < var_1.b.x))), var_1.d, -abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, var_1.d, var_1.c), vec4<i32>(-1i, var_2.d.x, var_2.d.x, var_1.d) & vec4<i32>(39849i, var_1.c, var_1.c, 53393i))));
}

fn func_1(arg_0: vec3<bool>) -> StorageBuffer {
    let var_0 = ~_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 15054u)), _wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 0u, 1u, 0u)) | vec4<u32>(u_input.a.x, u_input.b, 27768u, u_input.b), u_input.a) >> ((~vec4<u32>(u_input.b | u_input.b, u_input.b, u_input.a.x, abs(u_input.a.x)) | ~vec4<u32>(abs(u_input.a.x), u_input.a.x, 3546u, _wgslsmith_add_u32(u_input.b, u_input.b))) % vec4<u32>(32u));
    var var_1 = !(106f != _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1406f, -785f, true)), -1504f) + _wgslsmith_f_op_f32(-1358f + _wgslsmith_f_op_f32(f32(-1f) * -2454f))));
    let var_2 = !vec3<bool>(_wgslsmith_sub_u32(u_input.a.x, 0u) > _wgslsmith_dot_vec2_u32(~var_0.wz, vec2<u32>(var_0.x, 10344u)), false, true);
    var var_3 = func_2();
    return StorageBuffer(_wgslsmith_f_op_f32(var_3.b.x + 131f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var var_1 = Struct_2(u_input.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(196f, -711f, -444f, 1572f))))) * vec4<f32>(_wgslsmith_f_op_f32(-1353f - _wgslsmith_f_op_f32(-1965f - 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1108f + -868f) - -529f), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -149f)))), -1i << (_wgslsmith_div_u32(u_input.a.x >> (~70208u % 32u), (u_input.b << (89316u % 32u)) | u_input.a.x) % 32u), -(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -8713i, 0i, -58652i), vec4<i32>(1i, -1i, 15117i, 5458i)), -63962i, _wgslsmith_sub_i32(-52136i, 1i)) & -1958i));
    var_0 = ~_wgslsmith_dot_vec3_u32(u_input.a.yww, select(vec3<u32>(var_1.a, _wgslsmith_mult_u32(1u, var_1.a), u_input.b), countOneBits(abs(vec3<u32>(2895u, 0u, 4294967295u))), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, false, true), true)));
    var var_2 = ~(~(~(~u_input.a.x)));
    var var_3 = abs(~u_input.a.zyz >> (vec3<u32>(u_input.a.x, _wgslsmith_div_u32(1u, u_input.b), _wgslsmith_add_u32(1u, 73795u)) % vec3<u32>(32u))) ^ u_input.a.zyy;
    let var_4 = Struct_1(~_wgslsmith_mult_vec2_i32(abs(~vec2<i32>(40240i, var_1.c)), ~vec2<i32>(var_1.c, -2147483647i)), ~(((vec2<u32>(var_3.x, var_1.a) >> (vec2<u32>(4294967295u, var_1.a) % vec2<u32>(32u))) & _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(var_1.a, u_input.a.x))) | var_3.yx), ~vec3<u32>(firstLeadingBit(firstLeadingBit(23826u)), ~(var_3.x & var_3.x), abs(~4294967295u)), firstTrailingBit(firstTrailingBit(firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.d, 20935i, -41226i), vec3<i32>(-1i, var_1.d, var_1.d))))));
    let x = u_input.a;
    s_output = func_1(vec3<bool>(var_1.b.x > -986f, all(vec2<bool>(true, true)), false));
}

