struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<i32>,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: vec2<i32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<f32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: f32) -> vec4<i32> {
    let var_0 = arg_1.a;
    let var_1 = all(vec4<bool>((-arg_0.x > var_0.a.x) || true, true, arg_1.a.d.x < _wgslsmith_f_op_f32(abs(arg_1.a.b)), any(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true))));
    let var_2 = var_0.d.x;
    let var_3 = var_0;
    let var_4 = 1i ^ _wgslsmith_dot_vec2_i32(var_0.a.xx, vec2<i32>(-(~20197i), max(-var_3.c.x, 34497i)));
    return vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(var_4, ~arg_1.a.c.x), -(~(-10944i)), -750i | (arg_1.a.c.x >> (20856u % 32u))), firstLeadingBit(reverseBits(_wgslsmith_mult_vec3_i32(var_0.a.zyy, vec3<i32>(0i, var_0.a.x, -2147483647i))))), -5727i, 0i, _wgslsmith_mult_i32(abs(_wgslsmith_clamp_i32(var_3.a.x, arg_0.x, ~12535i)), -2147483647i));
}

fn func_2(arg_0: vec4<u32>) -> Struct_4 {
    let var_0 = -_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -22914i, (i32(-1i) * -23299i) >> (_wgslsmith_dot_vec2_u32(arg_0.ww, vec2<u32>(u_input.a.x, u_input.a.x)) % 32u), 0i), vec4<i32>(48485i, 13241i, 0i, _wgslsmith_mult_i32(1i, u_input.c)), func_3(vec2<i32>(u_input.c, ~u_input.c), Struct_3(Struct_2(vec4<i32>(u_input.c, 2147483647i, u_input.c, u_input.c), -1000f, vec2<i32>(u_input.c, -10595i), vec3<f32>(-260f, -953f, -1135f))), 1000f));
    let var_1 = select(vec2<bool>(true, true), vec2<bool>(true, any(vec3<bool>(true, true, false))), vec2<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(307f, 1464f, true))) < -1000f));
    var var_2 = ~countOneBits(13651u);
    var_2 = 4294967295u;
    let var_3 = Struct_1(true, var_1.x, var_0.zz, -1i, func_3(vec2<i32>(var_0.x, var_0.x), Struct_3(Struct_2(var_0, _wgslsmith_f_op_f32(max(-494f, 1000f)), min(var_0.zw, vec2<i32>(var_0.x, var_0.x)), vec3<f32>(-1034f, 221f, 321f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(770f - 600f) + _wgslsmith_f_op_f32(753f * -250f)) - -125f)));
    return Struct_4(~var_3.e.wx, true);
}

fn func_1() -> Struct_2 {
    let var_0 = func_2(select(abs(~vec4<u32>(4253u, u_input.b, 98095u, 10512u)), ~select(~vec4<u32>(1u, 1u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.b, u_input.a.x, u_input.b, 0u), false), !(!(u_input.a.x < 52548u))));
    let var_1 = _wgslsmith_mod_vec4_i32(abs(max(_wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.c, u_input.c, -1i), vec4<i32>(-15344i, -39071i, 1i, 10800i)), vec4<i32>(-26263i, var_0.a.x, u_input.c, var_0.a.x) | vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u, 4294967295u, u_input.b), min(vec4<u32>(1u, 26626u, u_input.a.x, u_input.b), vec4<u32>(2711u, 41888u, 67020u, 34781u)), ~vec4<u32>(0u, u_input.b, 0u, u_input.a.x)) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, -43372i, var_0.a.x), vec3<i32>(u_input.c, 1i, -2147483647i)), func_3(var_0.a, Struct_3(Struct_2(vec4<i32>(-55585i, u_input.c, -85780i, 16848i), 1299f, vec2<i32>(var_0.a.x, u_input.c), vec3<f32>(685f, 432f, -1738f))), 814f).x), u_input.c, 1i, _wgslsmith_clamp_i32(select(-2147483647i, u_input.c, false), 2147483647i, var_0.a.x)), (vec4<i32>(-1i) * -vec4<i32>(20670i, 2147483647i, u_input.c, var_0.a.x)) | reverseBits(vec4<i32>(u_input.c, -2147483647i, u_input.c, -81418i))));
    let var_2 = var_0;
    var var_3 = var_2.b;
    var var_4 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(103f, 1872f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2072f)) + _wgslsmith_div_f32(458f, 306f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(556f, 1000f, -197f)), vec3<f32>(912f, 723f, -327f))))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-486f, -1253f, 611f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2623f, 667f, -379f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1356f, -1000f, 476f) - vec3<f32>(-985f, 1074f, -1685f))), !select(select(vec3<bool>(false, var_0.b, false), vec3<bool>(var_0.b, var_2.b, var_0.b), vec3<bool>(false, var_0.b, var_2.b)), vec3<bool>(var_0.b, var_2.b, var_2.b), var_0.b)))));
    return Struct_2(~vec4<i32>(var_2.a.x, ~(~2147483647i), 1i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(var_2.a.x, var_0.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(20518i, u_input.c, var_1.x, 1i), var_1))), _wgslsmith_f_op_f32(max(var_4.x, _wgslsmith_f_op_f32(-var_4.x))), _wgslsmith_div_vec2_i32(vec2<i32>(-(~41702i), _wgslsmith_clamp_i32(-2147483647i, u_input.c, -2147483647i)), -(vec2<i32>(0i, 4566i) >> (vec2<u32>(140391u, u_input.a.x) % vec2<u32>(32u))) & ~_wgslsmith_div_vec2_i32(vec2<i32>(1i, var_1.x), var_2.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_4.x))), var_4.x, _wgslsmith_f_op_f32(var_4.x - _wgslsmith_f_op_f32(var_4.x + 1259f)))));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: u32) -> StorageBuffer {
    var var_0 = vec3<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -944f))) == -791f, arg_0, !(!(_wgslsmith_f_op_f32(min(-690f, -499f)) < _wgslsmith_f_op_f32(ceil(-1255f)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.x) + -1646f), 351f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -183f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.b)) - arg_1.d.x))));
    var var_2 = func_1();
    var_0 = vec3<bool>(arg_0, var_0.x, any(!select(vec3<bool>(var_0.x, arg_0, var_0.x), select(vec3<bool>(var_0.x, true, true), vec3<bool>(arg_0, false, false), false), vec3<bool>(var_0.x, true, var_0.x))));
    let var_3 = Struct_3(arg_1);
    return StorageBuffer(select(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(select(vec3<u32>(4294967295u, 4804u, 1u), vec3<u32>(0u, 0u, 24987u), vec3<bool>(false, arg_0, arg_0)), _wgslsmith_div_vec3_u32(vec3<u32>(12606u, arg_2, 3495u), vec3<u32>(1u, arg_2, arg_2))), vec3<u32>(_wgslsmith_clamp_u32(arg_2, 1u, 5857u), 0u, ~1u)), ~vec3<u32>(~2549u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_2, u_input.b), vec3<u32>(arg_2, 1u, u_input.a.x)), arg_2), arg_0), arg_1.c.x, var_3.a.d.yx, vec4<u32>(reverseBits(4294967295u), ~4294967295u, ~(~arg_2), select(~(~u_input.a.x), countOneBits(13225u), false)), _wgslsmith_f_op_f32(f32(-1f) * -1371f));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(!(any(vec2<bool>(true, true)) && all(vec3<bool>(true, false, false))), func_1(), u_input.b);
}

