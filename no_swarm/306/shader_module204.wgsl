struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_sub_i32(u_input.c.x, ~(min(-1i, arg_3.a) ^ max(arg_2.d.a, u_input.c.x)));
    var_0 = _wgslsmith_add_i32(i32(-1i) * -19207i, -arg_2.d.a) >> (u_input.d.x % 32u);
    let var_1 = u_input.c.x;
    var_0 = u_input.c.x;
    let var_2 = false;
    return !(!select(vec4<bool>(true, true, !arg_1.x, true), arg_2.d.c, arg_2.e.c));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_mod_i32(u_input.c.x, max(u_input.c.x | u_input.c.x, ~2147483647i)) ^ u_input.c.x, u_input.d, select(!vec4<bool>(false, any(vec2<bool>(false, false)), any(vec4<bool>(true, true, false, false)), all(vec2<bool>(true, true))), !func_3(vec2<bool>(true, true), vec2<bool>(true, false), Struct_2(vec2<u32>(82399u, 4294967295u), vec4<f32>(1424f, 609f, 981f, -572f), false, Struct_1(1i, u_input.d, vec4<bool>(true, true, false, true), vec3<f32>(409f, 328f, -230f), 73250u), Struct_1(36542i, u_input.d, vec4<bool>(true, false, false, true), vec3<f32>(-936f, -1129f, -200f), u_input.a)), Struct_1(u_input.c.x, u_input.d, vec4<bool>(true, false, true, true), vec3<f32>(-902f, 1000f, 497f), 1u)), all(!func_3(vec2<bool>(false, true), vec2<bool>(false, false), Struct_2(u_input.d.wx, vec4<f32>(-1000f, -122f, 1180f, 677f), false, Struct_1(0i, vec4<u32>(70155u, 4294967295u, u_input.d.x, u_input.b), vec4<bool>(true, true, false, false), vec3<f32>(1000f, -2581f, 479f), u_input.b), Struct_1(u_input.c.x, vec4<u32>(u_input.d.x, u_input.d.x, 4294967295u, u_input.d.x), vec4<bool>(false, false, true, true), vec3<f32>(331f, -1865f, 629f), 0u)), Struct_1(u_input.c.x, vec4<u32>(0u, 17086u, 23554u, u_input.b), vec4<bool>(true, false, true, false), vec3<f32>(208f, 860f, 931f), 1u)).wyy)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(-806f, -444f), -1524f, -1207f))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(700f, -288f, 1181f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(462f, 1563f, -504f) - vec3<f32>(215f, -643f, -891f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(988f, -1346f, -251f) - vec3<f32>(2210f, -374f, 554f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(398f, 339f, 179f) * vec3<f32>(-469f, 653f, -139f))))))), ~reverseBits(u_input.a));
    var var_1 = vec3<u32>(u_input.d.x, 19873u, ~((0u << (1u % 32u)) ^ _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.e, var_0.b.x), u_input.d.zy)));
    return Struct_2(vec2<u32>(var_0.b.x, var_1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)), 2043f, var_0.d.x)), false, Struct_1(u_input.c.x, var_0.b, vec4<bool>(all(var_0.c.wy), true, true, ~var_0.a != _wgslsmith_mod_i32(u_input.c.x, var_0.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.d)), ~var_1.x), var_0);
}

fn func_1(arg_0: bool) -> f32 {
    let var_0 = func_2();
    var var_1 = var_0;
    var var_2 = _wgslsmith_div_vec3_i32(abs(-min(vec3<i32>(var_1.e.a, -7690i, u_input.c.x), vec3<i32>(u_input.c.x, var_0.d.a, u_input.c.x))), ~_wgslsmith_mult_vec3_i32(vec3<i32>(6228i, var_0.d.a, var_1.d.a), vec3<i32>(1i, -1i, u_input.c.x)) ^ _wgslsmith_add_vec3_i32(vec3<i32>(var_1.e.a, 0i, -39871i) << (vec3<u32>(20713u, 4294967295u, var_1.e.e) % vec3<u32>(32u)), -vec3<i32>(var_1.d.a, -2147483647i, -9249i))) | max(vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.e.a, 30556i, var_0.d.a), vec3<i32>(-2147483647i, -2147483647i, -14558i), vec3<i32>(u_input.c.x, -18719i, 24106i)), vec3<i32>(var_1.e.a, 1i, u_input.c.x)), u_input.c.x, _wgslsmith_div_i32(1i << (var_0.d.e % 32u), var_1.e.a)), vec3<i32>(~22201i, var_1.e.a, firstTrailingBit(-2147483647i)));
    var_1 = func_2();
    let var_3 = var_0.d;
    return _wgslsmith_f_op_f32(func_2().b.x + var_0.d.d.x);
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: f32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = Struct_2(~select(~u_input.d.xy, vec2<u32>(arg_1, select(1u, 47592u, arg_3.d.c.x)), func_2().e.c.xw), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(arg_3.b))), arg_3.d.c.x, func_2().e, func_2().d);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -2274f);
    let var_2 = _wgslsmith_div_f32(-536f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.d.d.x)));
    var_0 = arg_3;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1403f - var_2)));
    return arg_3.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(-514f, 4294967295u, -952f, Struct_2(~(~_wgslsmith_mult_vec2_u32(u_input.d.wx, u_input.d.yy)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1(false)), _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(743f - 834f), -1107f) * vec4<f32>(_wgslsmith_f_op_f32(floor(1029f)), _wgslsmith_f_op_f32(445f + 673f), 1396f, 1381f)), all(vec2<bool>(false, false)) | true, func_2().e, Struct_1(~(~u_input.c.x), firstTrailingBit(u_input.d & u_input.d), select(func_3(vec2<bool>(false, true), vec2<bool>(false, true), Struct_2(vec2<u32>(u_input.a, u_input.b), vec4<f32>(272f, -3317f, -1000f, 870f), false, Struct_1(u_input.c.x, vec4<u32>(0u, 16500u, 24209u, 38489u), vec4<bool>(false, false, true, false), vec3<f32>(596f, -1627f, -551f), 21087u), Struct_1(u_input.c.x, u_input.d, vec4<bool>(true, true, true, false), vec3<f32>(-416f, 848f, -525f), 48950u)), Struct_1(u_input.c.x, vec4<u32>(u_input.b, 21470u, u_input.d.x, 1443u), vec4<bool>(false, false, false, true), vec3<f32>(-283f, -821f, 134f), 4527u)), func_3(vec2<bool>(false, false), vec2<bool>(false, false), Struct_2(u_input.d.xz, vec4<f32>(-504f, -641f, -1823f, -1534f), true, Struct_1(u_input.c.x, u_input.d, vec4<bool>(true, false, false, true), vec3<f32>(-397f, 955f, -981f), u_input.a), Struct_1(1i, vec4<u32>(4294967295u, 4294967295u, u_input.d.x, u_input.a), vec4<bool>(true, true, true, true), vec3<f32>(-2090f, 216f, 2270f), 73328u)), Struct_1(-16939i, u_input.d, vec4<bool>(true, true, true, false), vec3<f32>(-415f, -1169f, -389f), 1u)), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(671f, -458f, 557f) + vec3<f32>(2173f, 523f, -443f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1566f, 1000f, 321f), vec3<f32>(-1362f, 1684f, -1037f))), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)))), reverseBits(~u_input.a))));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(115f, 686f, 1000f, -147f) - vec4<f32>(var_0.d.x, 181f, 306f, 137f)) + vec4<f32>(_wgslsmith_f_op_f32(var_0.d.x - 1337f), _wgslsmith_f_op_f32(f32(-1f) * -3501f), _wgslsmith_f_op_f32(var_0.d.x * 128f), _wgslsmith_f_op_f32(1512f * var_0.d.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, 1123f, -2383f, -1534f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, var_0.d.x, var_0.d.x, var_0.d.x))))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.d.x, var_0.d.x, 203f, var_0.d.x), vec4<f32>(-896f, 1118f, var_0.d.x, var_0.d.x)), vec4<f32>(119f, 1406f, 615f, -566f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.d.x, -305f, 1187f, var_0.d.x), vec4<f32>(var_0.d.x, -858f, var_0.d.x, 1374f), var_0.c))), any(!vec4<bool>(false, var_0.c.x, true, var_0.c.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, 157f, 594f, var_0.d.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2107f, 1243f, -1275f, 323f))), false))));
    var_0 = func_4(_wgslsmith_f_op_f32(var_0.d.x * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(2072f * var_1.x), var_1.x) * var_0.d.x)), ~(~1u), _wgslsmith_f_op_f32(func_1(all(select(!var_0.c, func_3(var_0.c.wy, var_0.c.wz, Struct_2(var_0.b.xw, vec4<f32>(136f, -1064f, var_1.x, -121f), true, Struct_1(var_0.a, vec4<u32>(38427u, 4294967295u, var_0.e, u_input.d.x), vec4<bool>(var_0.c.x, var_0.c.x, false, false), var_1.yxz, 4294967295u), Struct_1(var_0.a, vec4<u32>(u_input.b, var_0.b.x, var_0.e, 4294967295u), var_0.c, var_1.xxw, 4294967295u)), Struct_1(u_input.c.x, var_0.b, vec4<bool>(true, true, true, var_0.c.x), var_1.wzy, 19308u)), var_0.c.x)))), func_2());
    var_0 = func_4(_wgslsmith_f_op_f32(var_0.d.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1445f * var_0.d.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + -679f)))), ~1u, _wgslsmith_f_op_f32(-678f + -706f), Struct_2(vec2<u32>(_wgslsmith_div_u32(u_input.d.x, var_0.b.x), 0u) >> (vec2<u32>(4294967295u | u_input.d.x, _wgslsmith_sub_u32(u_input.a, var_0.b.x)) % vec2<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1497f))), var_0.d.x, _wgslsmith_div_f32(117f, _wgslsmith_f_op_f32(var_1.x - var_0.d.x)), var_0.d.x), var_0.c.x, Struct_1(u_input.c.x, u_input.d, vec4<bool>(!var_0.c.x, false, func_3(var_0.c.xy, vec2<bool>(var_0.c.x, var_0.c.x), Struct_2(vec2<u32>(var_0.b.x, u_input.a), var_1, true, Struct_1(-2147483647i, u_input.d, vec4<bool>(true, var_0.c.x, false, true), var_1.wyy, var_0.e), Struct_1(-83501i, var_0.b, var_0.c, vec3<f32>(-1000f, -637f, var_0.d.x), u_input.d.x)), Struct_1(-17439i, var_0.b, var_0.c, vec3<f32>(var_0.d.x, -229f, -729f), 0u)).x, all(vec3<bool>(true, false, false))), vec3<f32>(_wgslsmith_f_op_f32(select(-151f, -625f, false)), var_0.d.x, func_2().b.x), ~8952u), func_2().d));
    var var_2 = func_2().c;
    var var_3 = 2359f;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_div_u32(abs(~var_0.b.x), ~_wgslsmith_dot_vec4_u32(var_0.b, vec4<u32>(4294967295u, 4294967295u, 6143u, 4294967295u))), countOneBits(~_wgslsmith_sub_u32(var_0.b.x, 10175u)), 4294967295u), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.x, 0u, 22158u), var_0.b.wxy), var_1.xy);
}

