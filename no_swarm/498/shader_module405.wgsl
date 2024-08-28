struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2) -> vec4<f32> {
    let var_0 = 1i;
    let var_1 = -1527f;
    var var_2 = true;
    var_2 = arg_1.a.c;
    let var_3 = u_input.a.wyw;
    return vec4<f32>(_wgslsmith_f_op_f32(ceil(var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1), arg_1.b.x))) + _wgslsmith_f_op_f32(trunc(var_1))), _wgslsmith_f_op_f32(1000f - -1178f), _wgslsmith_f_op_f32(step(-1164f, var_1)));
}

fn func_2() -> f32 {
    var var_0 = Struct_2(Struct_1(u_input.a.xxz, _wgslsmith_f_op_vec4_f32(func_3(u_input.d.yyy, Struct_2(Struct_1(vec3<i32>(18293i, u_input.a.x, 2147483647i), vec4<f32>(-411f, -247f, -718f, -519f), true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(814f, -667f, 1478f)), Struct_1(u_input.a.yzy, vec4<f32>(-875f, 1128f, 147f, -609f), true), Struct_1(vec3<i32>(1i, u_input.c, -43438i), vec4<f32>(-1000f, -510f, 277f, 122f), false)))), true), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1576f + 493f), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(449f, 450f), _wgslsmith_f_op_f32(f32(-1f) * -282f))), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1823f, -975f, true)) * -776f), 139f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -313f) - 707f))), Struct_1(vec3<i32>(u_input.a.x, countOneBits(9659i), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.c, u_input.b.x), u_input.a.xzw), vec3<i32>(u_input.c, 19887i, 30600i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(330f, -1142f, -1000f, 791f) - vec4<f32>(836f, 775f, -434f, -232f))) * vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3(u_input.d.zzz, Struct_2(Struct_1(vec3<i32>(-51439i, u_input.b.x, u_input.b.x), vec4<f32>(920f, 564f, 1000f, -1608f), false), vec3<f32>(832f, 1406f, -1486f), Struct_1(u_input.a.wyz, vec4<f32>(-775f, 420f, -1391f, 916f), false), Struct_1(vec3<i32>(-30184i, u_input.a.x, -1i), vec4<f32>(-677f, -1000f, -1603f, 644f), false)))).x, -192f, _wgslsmith_f_op_f32(-1052f * -447f), -1703f)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), true))), Struct_1(-_wgslsmith_sub_vec3_i32(~u_input.a.yzw, _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.b.x), u_input.a.zxx, vec3<i32>(u_input.c, u_input.b.x, u_input.b.x))), vec4<f32>(2420f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1567f * -1269f)), _wgslsmith_f_op_f32(f32(-1f) * -208f), _wgslsmith_f_op_f32(-2118f - _wgslsmith_f_op_f32(229f * -163f))), any(vec3<bool>(true, any(vec4<bool>(false, false, true, false)), true))));
    var_0 = Struct_2(Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(select(var_0.a.a.x, var_0.c.a.x, var_0.d.c), 1i, _wgslsmith_clamp_i32(u_input.b.x, 1i, var_0.c.a.x)), reverseBits(min(u_input.a.wyw, vec3<i32>(2147483647i, 0i, var_0.c.a.x)))), var_0.a.b, false), vec3<f32>(1000f, _wgslsmith_f_op_f32(-var_0.a.b.x), 262f), var_0.a, var_0.d);
    var_0 = Struct_2(Struct_1(max(vec3<i32>(2147483647i, 7697i, -1i) & -var_0.a.a, u_input.a.ywz), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.b.x, _wgslsmith_f_op_f32(abs(190f)), 872f, var_0.b.x)), -51420i != ~_wgslsmith_dot_vec2_i32(var_0.c.a.yz, u_input.a.zx)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(var_0.c.b.wzy, vec3<f32>(-1341f, var_0.c.b.x, 465f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_0.c.b.zxy, var_0.c.b.ywx)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(147f, -803f, -800f)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-347f + 499f), -383f, -390f), vec3<f32>(_wgslsmith_f_op_f32(abs(1000f)), -2336f, _wgslsmith_f_op_f32(select(766f, 620f, true)))))), var_0.d, Struct_1(var_0.c.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a.b + var_0.d.b) + _wgslsmith_f_op_vec4_f32(-var_0.c.b)), false));
    var_0 = Struct_2(Struct_1(var_0.d.a, vec4<f32>(1009f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b.x), 703f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(717f * 768f), _wgslsmith_div_f32(var_0.b.x, var_0.d.b.x)))), !var_0.c.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-964f * var_0.c.b.x) + -538f), var_0.b.x) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_0.d.b.yxz)))))), Struct_1(firstLeadingBit(select(vec3<i32>(u_input.a.x, var_0.a.a.x, u_input.b.x), vec3<i32>(u_input.c, u_input.a.x, u_input.a.x), select(vec3<bool>(true, false, var_0.c.c), vec3<bool>(var_0.a.c, false, true), true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.a.b.x)), 398f, _wgslsmith_f_op_f32(408f + -1140f), 332f)), false), var_0.c);
    var var_1 = !vec4<bool>(true, true, true, any(!(!vec2<bool>(var_0.a.c, true))));
    return _wgslsmith_f_op_f32(abs(var_0.a.b.x));
}

fn func_1(arg_0: u32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(min(-298f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - -1000f)));
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(u_input.d.xzx, Struct_2(Struct_1(u_input.a.xwy, vec4<f32>(1000f, 594f, 658f, 1390f), true), vec3<f32>(-231f, 154f, -1047f), Struct_1(u_input.a.zzx, vec4<f32>(913f, -1955f, -378f, 1189f), false), Struct_1(u_input.a.wwx, vec4<f32>(1184f, -356f, -575f, -2406f), false)))).x)), _wgslsmith_f_op_f32(-111f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -308f), _wgslsmith_f_op_f32(1000f * -490f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-400f)), -246f, select(true, true, true)))))));
    let var_1 = ~(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, u_input.a.x), ~firstLeadingBit(vec2<i32>(u_input.a.x, 52300i))) & u_input.b);
    var var_2 = !vec3<bool>(true, select(any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), false)), true, true), true);
    var var_3 = vec3<u32>(u_input.e, arg_0, ~4294967295u);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(func_1(max(38927u, u_input.d.x)), (i32(-1i) * -13988i) != u_input.b.x);
    let var_1 = vec4<i32>(-countOneBits(~(~u_input.b.x)), ~u_input.a.x, -2147483647i, max(~(i32(-1i) * -29036i), -15909i));
    let var_2 = 1231f;
    let var_3 = true;
    let var_4 = Struct_1(u_input.a.zyy >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(~u_input.e, u_input.d.x, 10382u), firstLeadingBit(_wgslsmith_clamp_vec3_u32(u_input.d.xzw, vec3<u32>(u_input.d.x, u_input.e, u_input.e), u_input.d.xxy)), ~countOneBits(u_input.d.zxw)) % vec3<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(2128f, -321f)), _wgslsmith_f_op_f32(-var_2)))), var_2, _wgslsmith_f_op_vec4_f32(func_3(vec3<u32>(~57872u, _wgslsmith_mod_u32(u_input.d.x, u_input.d.x), 0u), Struct_2(Struct_1(u_input.a.xyy, vec4<f32>(var_2, var_2, var_2, var_2), var_3), _wgslsmith_div_vec3_f32(vec3<f32>(584f, 110f, var_2), vec3<f32>(var_2, -429f, var_2)), Struct_1(var_1.xzx, vec4<f32>(-523f, var_2, var_2, -328f), true), Struct_1(vec3<i32>(1i, var_1.x, var_1.x), vec4<f32>(-146f, 1316f, var_2, 834f), var_3)))).x, var_2), _wgslsmith_f_op_vec4_f32(func_3(min(u_input.d.xyx, vec3<u32>(u_input.d.x, 0u, u_input.e)), Struct_2(Struct_1(vec3<i32>(u_input.a.x, 1i, u_input.c), vec4<f32>(-176f, -1056f, -490f, var_2), false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, -885f, 884f)), Struct_1(u_input.a.xxy, vec4<f32>(769f, 224f, 526f, var_2), false), Struct_1(var_1.zzx, vec4<f32>(var_2, var_2, var_2, 630f), var_0.x)))).x == _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(-var_2)))));
    let x = u_input.a;
    s_output = StorageBuffer(17731u, _wgslsmith_mult_vec3_u32(u_input.d.wyw, (vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x) | select(u_input.d.wwx, u_input.d.wyy, vec3<bool>(var_0.x, true, var_0.x))) | ~(~u_input.d.zyx)), var_4.b, var_2, 1u);
}

