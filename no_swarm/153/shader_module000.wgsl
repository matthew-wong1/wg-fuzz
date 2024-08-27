struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: u32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_4,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<f32>) -> i32 {
    return ~16359i;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2034f, _wgslsmith_f_op_f32(f32(-1f) * -1975f)))), _wgslsmith_f_op_f32(f32(-1f) * -268f)), true, ~(_wgslsmith_add_u32(~17466u, ~u_input.a.x) ^ ~u_input.c));
    var var_1 = _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(~(vec4<i32>(u_input.b.x, -16342i, -37424i, -23820i) & vec4<i32>(-23174i, u_input.b.x, 0i, 54826i)), firstLeadingBit(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))) ^ ~(~firstLeadingBit(vec4<i32>(u_input.b.x, u_input.b.x, 0i, -2147483647i))), -(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, -1i, u_input.b.x, u_input.b.x)) | ~vec4<i32>(func_3(vec4<f32>(var_0.a, var_0.a, 520f, 686f), vec2<f32>(var_0.a, -1041f)), u_input.b.x, u_input.b.x, -u_input.b.x));
    var var_2 = true;
    var var_3 = var_0;
    var var_4 = var_1.x;
    return Struct_1(~_wgslsmith_add_i32(1i, select(countOneBits(-2147483647i), -2147483647i, true)), select(~(vec4<i32>(-1i) * -vec4<i32>(var_1.x, var_1.x, var_1.x, 0i)), firstTrailingBit(-select(vec4<i32>(-2147483647i, var_1.x, u_input.b.x, var_1.x), vec4<i32>(u_input.b.x, u_input.b.x, var_1.x, -1i), var_0.b)), !var_0.b), u_input.a.ywz, _wgslsmith_f_op_vec3_f32(vec3<f32>(-181f, _wgslsmith_f_op_f32(var_0.a - 252f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_3.a)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, var_3.a)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(333f, -1033f, var_0.a)))));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = firstTrailingBit(~vec4<u32>(~firstTrailingBit(17326u), ~u_input.c >> (arg_1.c.x % 32u), arg_1.c.x, ~4294967295u));
    let var_1 = true;
    let var_2 = Struct_4(-367f, false, arg_1.c.x);
    let var_3 = func_2();
    let var_4 = countOneBits(_wgslsmith_dot_vec3_i32(~vec3<i32>(1i, u_input.b.x & var_3.b.x, -23656i), vec3<i32>(var_3.a, ~(~u_input.b.x), (var_3.b.x << (var_3.c.x % 32u)) | _wgslsmith_mult_i32(-1i, arg_1.b.x))));
    return Struct_1(2147483647i, vec4<i32>(-44230i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(arg_1.a, u_input.b.x), func_2().b.x), _wgslsmith_mod_i32(~(~var_4), 6271i), (~var_4 ^ firstTrailingBit(var_3.a)) >> (abs(_wgslsmith_sub_u32(arg_0, 0u)) % 32u)), vec3<u32>(arg_1.c.x, max(abs(abs(u_input.c)), 0u << (1u % 32u)), arg_1.c.x), _wgslsmith_f_op_vec3_f32(var_3.d * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.d) * _wgslsmith_f_op_vec3_f32(-arg_1.d))));
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec3<i32>) -> f32 {
    let var_0 = arg_2.a.d;
    var var_1 = Struct_2(func_1(firstLeadingBit(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a.x, arg_2.b.c.x, 1u, u_input.c), u_input.a, true), ~u_input.a)), Struct_1(48228i, arg_2.b.b, min(u_input.a.yyy, vec3<u32>(arg_2.a.c.x, 0u, arg_2.b.c.x)), vec3<f32>(var_0.x, var_0.x, -1355f)), !arg_0), Struct_1(~(-30123i << (_wgslsmith_mod_u32(arg_2.a.c.x, 76458u) % 32u)), reverseBits(arg_2.a.b), u_input.a.yxy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, arg_2.b.d.x, var_0.x), vec3<f32>(arg_2.b.d.x, var_0.x, var_0.x))))));
    var var_2 = var_1.a.c.x;
    let var_3 = _wgslsmith_add_vec4_i32(arg_2.a.b, arg_2.b.b);
    var_1 = Struct_2(func_2(), func_2());
    return -1047f;
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: vec4<i32>, arg_3: i32) -> i32 {
    let var_0 = u_input.a.x;
    let var_1 = ~firstLeadingBit(_wgslsmith_clamp_vec2_i32(arg_2.xx & arg_2.xw, -abs(u_input.b), -vec2<i32>(arg_2.x, -1i)));
    var var_2 = firstTrailingBit(arg_2.wzz);
    var_2 = -select(func_1(var_0, Struct_1(15877i, vec4<i32>(arg_3, arg_3, u_input.b.x, arg_3), u_input.a.yyw, vec3<f32>(arg_0.x, arg_0.x, arg_0.x)), arg_1.x).b.zxz & vec3<i32>(var_2.x, 77416i, -9518i), abs(-arg_2.ywx), arg_1.x) >> (vec3<u32>(u_input.c, ~u_input.a.x, ~_wgslsmith_sub_u32(~var_0, 30596u)) % vec3<u32>(32u));
    var var_3 = arg_1;
    return _wgslsmith_dot_vec3_i32(vec3<i32>(~_wgslsmith_div_i32(arg_3 << (22493u % 32u), arg_3), arg_3, 25073i), -countOneBits(arg_2.zxy));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec2<f32>(_wgslsmith_f_op_f32(func_4(all(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), vec2<i32>(u_input.b.x, u_input.b.x ^ u_input.b.x), Struct_2(Struct_1(-2147483647i, vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 13816i), u_input.a.zxw, vec3<f32>(653f, 210f, 118f)), func_1(u_input.c, Struct_1(u_input.b.x, vec4<i32>(16142i, u_input.b.x, u_input.b.x, -2147483647i), vec3<u32>(29524u, 0u, u_input.c), vec3<f32>(1242f, 851f, -138f)), true)), abs(select(vec3<i32>(u_input.b.x, u_input.b.x, -19618i), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), false)))), _wgslsmith_f_op_f32(max(-1153f, _wgslsmith_div_f32(-500f, 388f)))), select(select(vec4<bool>(false, true, true, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), true)), !all(vec2<bool>(false, true))), !(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), false)), !(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true)))), -vec4<i32>(-32184i, ~u_input.b.x, u_input.b.x, func_1(~u_input.c, func_2(), true).a), i32(-1i) * -_wgslsmith_clamp_i32(~0i, u_input.b.x | u_input.b.x, func_1(47965u, Struct_1(u_input.b.x, vec4<i32>(-11948i, 22483i, -58172i, 24247i), vec3<u32>(u_input.a.x, 14092u, u_input.a.x), vec3<f32>(-997f, -1738f, 377f)), true).a));
    let var_1 = Struct_5(abs(u_input.b), Struct_4(_wgslsmith_f_op_f32(516f + -269f), all(vec2<bool>(false, false)), ~abs(u_input.c << (6938u % 32u))), Struct_2(Struct_1(~15801i, vec4<i32>(min(-2147483647i, var_0), _wgslsmith_mod_i32(var_0, var_0), -1i, -25587i), ~u_input.a.ywz, vec3<f32>(_wgslsmith_f_op_f32(377f * 675f), func_1(u_input.a.x, Struct_1(var_0, vec4<i32>(u_input.b.x, var_0, u_input.b.x, u_input.b.x), vec3<u32>(25505u, u_input.c, 4294967295u), vec3<f32>(-1000f, -680f, -199f)), false).d.x, _wgslsmith_f_op_f32(max(-257f, 868f)))), Struct_1(func_2().a << (_wgslsmith_sub_u32(u_input.c, 28590u) % 32u), -_wgslsmith_mult_vec4_i32(vec4<i32>(33939i, u_input.b.x, var_0, u_input.b.x), vec4<i32>(u_input.b.x, 2147483647i, 63353i, u_input.b.x)), ~firstLeadingBit(vec3<u32>(u_input.c, u_input.c, u_input.c)), vec3<f32>(_wgslsmith_f_op_f32(select(1000f, 1947f, false)), _wgslsmith_f_op_f32(1181f + -1762f), 906f))));
    let var_2 = Struct_5(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(18187i, var_0), vec2<i32>(u_input.b.x, var_1.a.x)), u_input.b.x), vec2<i32>(71948i, u_input.b.x) << (vec2<u32>(u_input.a.x, 19667u) % vec2<u32>(32u)), u_input.b) << (u_input.a.wz % vec2<u32>(32u)), var_1.b, var_1.c);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.c.a.d * _wgslsmith_f_op_vec3_f32(-var_2.c.b.d)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_2.c.b.d, var_2.c.b.d))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(637f, var_2.b.a, -233f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.a, 1000f, -1067f)), _wgslsmith_f_op_vec3_f32(-var_2.c.a.d))))));
    var_3 = _wgslsmith_f_op_vec3_f32(ceil(func_1(~(~(~var_1.c.a.c.x)), func_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 0u), vec2<u32>(9046u, 49534u)), var_1.c.b, any(!vec4<bool>(var_2.b.b, false, false, var_2.b.b))), true).d));
    let var_4 = var_2.c.a;
    let var_5 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<i32>(var_4.b.x, var_4.a, 62945i), ~var_1.c.a.b.ywx, all(vec4<bool>(all(vec4<bool>(true, var_2.b.b, true, false)), var_1.b.b, any(vec4<bool>(true, false, false, true)), true))), ~0u, 13552u);
}

