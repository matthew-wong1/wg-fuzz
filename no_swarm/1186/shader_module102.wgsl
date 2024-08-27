struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<u32>) -> vec2<f32> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(102f)), _wgslsmith_f_op_f32(step(453f, -1215f)))), true, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1379f, 771f), vec2<f32>(176f, 106f)))))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(401f, 1475f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1081f, 1059f)))), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-2193f, -610f), vec2<f32>(-679f, 202f)))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(148f, 345f, 598f, -953f), vec4<f32>(2551f, -126f, 1323f, -885f), vec4<bool>(true, true, false, false)))))), vec4<f32>(-559f, _wgslsmith_f_op_f32(trunc(-927f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-313f + -504f))), _wgslsmith_f_op_f32(-346f * _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(step(-643f, 1f)), _wgslsmith_f_op_f32(-1603f * -597f)), all(vec4<bool>(true, true, true, true)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1056f, -1140f), vec2<f32>(-236f, -1346f))))), vec2<f32>(_wgslsmith_f_op_f32(502f + 2385f), _wgslsmith_f_op_f32(489f * -224f)))));
    let var_1 = !(!select(select(vec2<bool>(var_0.b.b, var_0.b.b), vec2<bool>(false, true), var_0.a.b || var_0.d.b), select(vec2<bool>(true, var_0.a.b), vec2<bool>(false, true), vec2<bool>(var_0.a.b, false)), !(!vec2<bool>(var_0.a.b, var_0.d.b))));
    var var_2 = _wgslsmith_mult_u32(max(abs(u_input.a), 4294967295u), _wgslsmith_div_u32(~countOneBits(33028u), _wgslsmith_add_u32(4294967295u, select(_wgslsmith_sub_u32(0u, 0u), 50411u, var_1.x))));
    var_2 = 26909u;
    var var_3 = select(select(!select(vec3<bool>(var_1.x, var_1.x, true), !vec3<bool>(true, var_0.d.b, true), var_1.x), vec3<bool>(any(vec4<bool>(var_1.x, var_1.x, false, true)), true, true), vec3<bool>(!var_0.a.b, all(vec4<bool>(false, var_1.x, var_0.d.b, false)), true)), !select(vec3<bool>(true, var_0.d.b != true, select(var_0.b.b, var_0.b.b, var_1.x)), select(select(vec3<bool>(true, var_0.b.b, var_1.x), vec3<bool>(true, var_0.b.b, var_0.b.b), false), vec3<bool>(false, var_1.x, var_0.d.b), true), vec3<bool>(u_input.b.x >= 15468i, any(vec2<bool>(var_1.x, var_0.d.b)), var_0.b.b)), select(select(vec3<bool>(any(vec4<bool>(false, false, true, false)), select(var_0.a.b, false, var_1.x), all(var_1)), vec3<bool>(true, all(vec4<bool>(var_1.x, var_1.x, true, true)), any(var_1)), (false != var_1.x) | select(var_0.b.b, false, false)), select(select(!vec3<bool>(false, var_1.x, false), vec3<bool>(var_1.x, true, true), vec3<bool>(var_1.x, var_0.a.b, var_0.d.b)), select(vec3<bool>(var_0.a.b, false, var_1.x), !vec3<bool>(var_0.d.b, var_1.x, false), var_1.x || var_0.a.b), false), all(vec3<bool>(var_1.x, var_0.d.b, var_0.d.b)) || true));
    return var_0.b.c;
}

fn func_2() -> vec4<f32> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-440f, 1000f))) + vec2<f32>(_wgslsmith_f_op_f32(1249f + 1000f), -2002f)), true, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(378f, -1397f))), _wgslsmith_f_op_f32(-1000f + 115f))), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-425f, -1255f))), vec2<f32>(_wgslsmith_f_op_f32(abs(-472f)), _wgslsmith_f_op_f32(f32(-1f) * -830f)), true)), true, _wgslsmith_f_op_vec2_f32(func_3(~(~vec4<u32>(u_input.c, 55706u, u_input.c, u_input.c))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -729f), _wgslsmith_f_op_f32(min(476f, -772f)), _wgslsmith_f_op_f32(ceil(-487f)), -814f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1383f, 960f, 1000f) * vec4<f32>(1508f, 191f, -196f, -1728f)))) - vec4<f32>(-2338f, 1029f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, -551f)) * _wgslsmith_f_op_f32(1540f + -459f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-654f))))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1802f, 160f)))), any(!select(vec2<bool>(true, true), vec2<bool>(true, false), true)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-482f + -468f)), _wgslsmith_div_f32(-323f, _wgslsmith_f_op_f32(step(2539f, -395f))))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a.c) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-2125f, -269f), var_0.d.a)))), !var_0.b.b, _wgslsmith_f_op_vec2_f32(var_0.b.a - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_0.a.a * var_0.b.c))))), var_0.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.c - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, var_0.c.x, 486f, var_0.d.c.x))) + _wgslsmith_f_op_vec4_f32(min(var_0.c, var_0.c))), var_0.d);
    var_1 = var_0;
    var var_2 = var_0;
    var var_3 = Struct_2(var_2.a, var_1.a, var_1.c, Struct_1(var_2.d.c, true, var_2.c.wz));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(~vec4<u32>(1u, u_input.a, 1u, u_input.a))).x * var_2.b.c.x)), var_1.a.a.x, var_1.d.c.x, var_0.c.x);
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, _wgslsmith_mod_i32(u_input.b.x, u_input.b.x), 1i, ~37719i), vec4<i32>(0i << (u_input.a % 32u), _wgslsmith_mult_i32(u_input.b.x, 2147483647i), 1i, u_input.b.x ^ u_input.b.x)), vec4<i32>(~abs(-74809i), -10578i, 0i ^ u_input.b.x, 1i)), vec4<i32>(countOneBits(u_input.b.x) | (i32(-1i) * -33365i), ~u_input.b.x, -_wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.b.x, 1i), u_input.b.x ^ u_input.b.x), 18482i));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) * vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1376f * 678f) + _wgslsmith_f_op_f32(-1053f * -164f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1083f * 1000f), 689f))), -1517f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1094f + 128f)))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(var_1.wx)), ~u_input.c >= ~u_input.c, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(var_1.xz)), vec2<f32>(var_1.x, 1400f))), _wgslsmith_f_op_vec2_f32(-var_1.xz), true)))));
    var_0 = min(firstTrailingBit(vec4<i32>(u_input.b.x, select(var_0.x, var_0.x, var_1.x <= var_2.c.x), -(i32(-1i) * -20929i), abs(u_input.b.x & u_input.b.x))), countOneBits(abs(vec4<i32>(-1037i, var_0.x | u_input.b.x, _wgslsmith_clamp_i32(-1i, 25354i, 0i), i32(-1i) * -16555i))));
    var var_3 = ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, u_input.a) ^ countOneBits(vec2<u32>(17971u, 0u)), ~vec2<u32>(u_input.c, u_input.c)), u_input.c, _wgslsmith_mod_u32(~firstTrailingBit(u_input.c), 20814u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, 0u), vec4<u32>(0u, u_input.c, u_input.c, u_input.a)) % 32u)));
    return Struct_2(var_2, Struct_1(var_1.wz, var_2.b, vec2<f32>(var_2.a.x, 1024f)), _wgslsmith_f_op_vec4_f32(-var_1), Struct_1(var_2.a, true, vec2<f32>(_wgslsmith_f_op_vec4_f32(func_2()).x, var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(1443f * -1233f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1921f + _wgslsmith_f_op_f32(353f + 2321f)))), 585f);
    var var_1 = func_1();
    let var_2 = vec4<f32>(832f, _wgslsmith_f_op_f32(var_1.d.c.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1364f - -688f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(438f + -1289f) + _wgslsmith_f_op_f32(abs(var_1.c.x))))), _wgslsmith_f_op_f32(f32(-1f) * -367f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1441f + var_0.x) * _wgslsmith_div_f32(var_1.c.x, var_1.c.x)), var_0.x)));
    var_1 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -851f), func_1().c.x), var_1.b.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-382f, 1662f)), vec2<f32>(var_1.a.c.x, var_2.x))))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_0.wx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1245f, -1212f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.x, -123f), vec2<f32>(1792f, var_1.d.a.x))))), var_1.b.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a.a) + _wgslsmith_f_op_vec2_f32(var_2.xz * vec2<f32>(-164f, var_2.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-var_2)))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.xw + vec2<f32>(var_0.x, var_2.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-286f)), _wgslsmith_f_op_f32(f32(-1f) * -2061f))) == -2676f, _wgslsmith_f_op_vec2_f32(step(var_2.zx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.x, var_2.x) - var_1.a.a) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 1000f) * vec2<f32>(174f, var_2.x)))))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - -302f);
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.b.c + vec2<f32>(var_3, -1882f)))), var_1.d.b, var_2.ww);
    let var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~4294967295u >> (~_wgslsmith_mod_u32(4294967295u, u_input.a) % 32u), 1431u, 4294967295u), firstTrailingBit(vec3<u32>(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_mult_u32(u_input.c, u_input.c), u_input.c), abs(u_input.c) & u_input.a, u_input.a & 1u)), ~vec3<i32>(-(~27896i), -57031i, -15275i), reverseBits(_wgslsmith_add_u32(firstTrailingBit(4294967295u), u_input.a)), ~(~14513u));
}

