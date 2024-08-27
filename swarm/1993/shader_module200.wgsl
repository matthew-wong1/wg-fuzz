struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_4, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.a.b.d)), _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(arg_1.b.d * arg_3.b.d)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1039f), _wgslsmith_f_op_f32(arg_2.b - arg_3.b.c.x))), _wgslsmith_f_op_vec2_f32(arg_3.b.c.xz - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(224f, -115f), vec2<f32>(arg_2.c.c.d, 1229f)))))))));
    var var_1 = arg_2.c.a;
    var_1 = arg_1;
    let var_2 = min(0i, arg_3.a);
    var_1 = Struct_2(var_1.a, var_1.b);
    return select(!vec3<bool>((arg_2.c.b.x && arg_2.c.b.x) | (arg_2.c.b.x || false), all(arg_2.c.b), any(vec4<bool>(false, arg_2.c.b.x, arg_2.c.b.x, arg_2.c.b.x))), select(vec3<bool>(any(arg_2.c.b), !(!arg_2.c.b.x), ~arg_3.b.a.x < abs(arg_1.b.a.x)), arg_2.c.b.zyx, select(vec3<bool>(!arg_2.c.b.x, all(arg_2.c.b.xz), arg_2.c.b.x), !(!vec3<bool>(arg_2.c.b.x, arg_2.c.b.x, arg_2.c.b.x)), true)), arg_2.c.b.x);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: vec4<u32>) -> vec4<f32> {
    var var_0 = arg_2.a.b;
    var var_1 = arg_3.x & ~(~4294967295u);
    var_1 = arg_3.x;
    let var_2 = arg_2.c;
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_2.c.x, _wgslsmith_f_op_f32(round(var_0.c.x))))))));
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1083f, -238f, -1372f, var_0.d))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-207f, var_3, var_2.c.x, -2177f)), arg_2.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, var_3, 1060f, 791f)), !(!arg_2.b))))), vec4<f32>(_wgslsmith_div_f32(arg_1.x, var_0.c.x), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_3)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(158f + _wgslsmith_div_f32(-289f, arg_2.c.d)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1233f + var_2.c.x)))))));
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_3(!select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), func_2(vec3<f32>(761f, 1105f, 168f), Struct_2(u_input.a.x, Struct_1(vec2<u32>(u_input.c.x, u_input.c.x), -30871i, vec3<f32>(842f, -464f, 1307f), 1131f)), Struct_4(Struct_1(vec2<u32>(12635u, u_input.b), u_input.a.x, vec3<f32>(-2112f, -232f, -347f), -1654f), -674f, Struct_3(Struct_2(u_input.a.x, Struct_1(u_input.c, -25126i, vec3<f32>(-668f, -150f, -1000f), -322f)), vec4<bool>(true, true, true, false), Struct_1(vec2<u32>(0u, u_input.b), u_input.a.x, vec3<f32>(-566f, -747f, -726f), -132f))), Struct_2(u_input.a.x, Struct_1(u_input.c, u_input.a.x, vec3<f32>(-516f, 2530f, 101f), 314f))), all(vec4<bool>(false, true, false, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(292f, -2033f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(386f, -539f))))), Struct_3(Struct_2(u_input.a.x, Struct_1(u_input.c, u_input.a.x, vec3<f32>(-1170f, 1000f, 261f), 1258f)), vec4<bool>(u_input.b == u_input.c.x, true, false, any(vec2<bool>(false, false))), Struct_1(_wgslsmith_add_vec2_u32(u_input.c, vec2<u32>(17100u, 0u)), 1i, vec3<f32>(1000f, -778f, -1000f), -1385f)), vec4<u32>(_wgslsmith_mult_u32(u_input.b, u_input.b << (0u % 32u)), ~8141u, u_input.b, _wgslsmith_sub_u32(u_input.c.x, 1u)))), vec4<f32>(906f, 1771f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(vec3<bool>(true, true, true), vec2<f32>(939f, -875f), Struct_3(Struct_2(u_input.a.x, Struct_1(u_input.c, -1i, vec3<f32>(-885f, 1780f, -443f), 1194f)), vec4<bool>(false, false, true, true), Struct_1(vec2<u32>(u_input.b, u_input.b), 1i, vec3<f32>(1300f, -1311f, 515f), 2573f)), vec4<u32>(66105u, 14541u, 4294967295u, u_input.b))).x - _wgslsmith_f_op_f32(f32(-1f) * -936f)))), -600f)));
    var var_1 = Struct_1(~(~(~u_input.c << (u_input.c % vec2<u32>(32u)))), _wgslsmith_div_i32(reverseBits(-2147483647i), -_wgslsmith_dot_vec2_i32(reverseBits(u_input.a.yx), vec2<i32>(2147483647i, u_input.a.x))), _wgslsmith_f_op_vec4_f32(func_3(vec3<bool>(true, true, true), var_0.xz, Struct_3(Struct_2(u_input.a.x >> (u_input.b % 32u), Struct_1(u_input.c, u_input.a.x, vec3<f32>(848f, -532f, var_0.x), 1446f)), vec4<bool>(true, true, true, true), Struct_1(u_input.c, ~1i, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_f32(-var_0.x))), reverseBits(vec4<u32>(16424u, ~45203u, u_input.b << (63681u % 32u), 0u)))).xyz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-942f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    return Struct_3(Struct_2(_wgslsmith_add_i32(-18565i, 2147483647i | ~u_input.a.x), Struct_1(abs(u_input.c) & abs(vec2<u32>(var_1.a.x, var_1.a.x)), _wgslsmith_mult_i32(_wgslsmith_div_i32(var_1.b, 7777i), u_input.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1979f, 184f)), var_0.x)), vec4<bool>(func_2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-279f, 251f, 1703f))), Struct_2(-9794i, Struct_1(vec2<u32>(var_1.a.x, u_input.b), -1i, vec3<f32>(var_1.d, 749f, -243f), -183f)), Struct_4(Struct_1(u_input.c, var_1.b, var_0.yyx, var_1.d), _wgslsmith_f_op_f32(var_0.x * 381f), Struct_3(Struct_2(u_input.a.x, Struct_1(u_input.c, var_1.b, var_1.c, var_1.c.x)), vec4<bool>(true, true, false, false), Struct_1(var_1.a, var_1.b, vec3<f32>(906f, -641f, 1584f), var_0.x))), Struct_2(u_input.a.x, Struct_1(u_input.c, -44238i, vec3<f32>(var_0.x, var_0.x, 1000f), var_1.c.x))).x, all(vec3<bool>(false, false, false)) | false, !all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false))), true), Struct_1(select(~reverseBits(vec2<u32>(var_1.a.x, 0u)), u_input.c, vec2<bool>(any(vec4<bool>(true, false, true, false)), any(vec3<bool>(true, true, false)))), _wgslsmith_dot_vec2_i32(min(~vec2<i32>(-36101i, u_input.a.x), _wgslsmith_div_vec2_i32(vec2<i32>(-1i, u_input.a.x), vec2<i32>(u_input.a.x, 1i))), firstLeadingBit(vec2<i32>(0i, -5389i))), var_1.c, var_1.c.x));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: Struct_4, arg_3: bool) -> bool {
    let var_0 = func_1().c;
    let var_1 = arg_2.c.a;
    var var_2 = abs(0i);
    var_2 = var_0.b;
    let var_3 = arg_0.b.x;
    return var_3;
}

fn func_5(arg_0: i32, arg_1: vec3<bool>) -> f32 {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1473f * 293f)), 1f)), 1000f), 562f, _wgslsmith_f_op_f32(-935f + _wgslsmith_f_op_f32(f32(-1f) * -998f)));
    let var_1 = func_1().c;
    var var_2 = func_1().a;
    let var_3 = u_input.a.zx;
    var var_4 = ~var_2.b.b >= _wgslsmith_div_i32(~(-6783i), abs(max(-33822i, ~var_2.b.b)));
    return _wgslsmith_f_op_f32(exp2(var_2.b.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -410f;
    var_0 = 766f;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(firstTrailingBit(-3929i), vec3<bool>(select(true, true, true), func_4(func_1(), u_input.b, Struct_4(Struct_1(u_input.c, 662i, vec3<f32>(-311f, 408f, 1000f), 512f), -1168f, Struct_3(Struct_2(u_input.a.x, Struct_1(u_input.c, 19679i, vec3<f32>(-1233f, 1205f, -226f), 301f)), vec4<bool>(true, true, true, false), Struct_1(u_input.c, u_input.a.x, vec3<f32>(851f, -343f, 160f), -398f))), true), false))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1070f + _wgslsmith_div_f32(-1932f, 1838f)), -1641f)))));
    var_0 = _wgslsmith_f_op_f32(-var_1);
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(-var_1), true))))));
    var_0 = 988f;
    var var_2 = func_1();
    let var_3 = firstLeadingBit(0u);
    var var_4 = Struct_4(Struct_1(vec2<u32>(var_3, u_input.c.x), var_2.c.b, var_2.a.b.c, var_2.c.d), _wgslsmith_f_op_f32(-1000f - 1f), Struct_3(var_2.a, select(vec4<bool>(!var_2.b.x, !var_2.b.x, func_2(var_2.a.b.c, var_2.a, Struct_4(Struct_1(vec2<u32>(var_3, 0u), 28982i, var_2.c.c, var_2.a.b.d), -564f, Struct_3(var_2.a, vec4<bool>(var_2.b.x, true, var_2.b.x, var_2.b.x), var_2.c)), Struct_2(u_input.a.x, var_2.c)).x, var_2.b.x), func_1().b, var_2.b), Struct_1(_wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(4294967295u, 1u)), select(vec2<u32>(u_input.c.x, var_3), vec2<u32>(30154u, var_3), var_2.b.yz), vec2<u32>(u_input.c.x, u_input.b)), firstLeadingBit(_wgslsmith_add_i32(u_input.a.x, 0i)), var_2.c.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~(i32(-1i) * -12091i), -1i), _wgslsmith_div_vec4_f32(vec4<f32>(var_1, _wgslsmith_f_op_f32(-var_4.c.c.d), _wgslsmith_div_f32(-255f, 932f), 1175f), vec4<f32>(_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(-465f + var_4.b)), -654f, var_4.a.d, _wgslsmith_f_op_f32(f32(-1f) * -2488f))), max(1u, abs(3330u)));
}

