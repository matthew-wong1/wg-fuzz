struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec3<i32>,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: u32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> f32 {
    let var_0 = Struct_4(_wgslsmith_sub_i32(~(firstLeadingBit(-46029i) << (u_input.c.x % 32u)), u_input.a), true, Struct_2(u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -496f)))), select(-(vec2<i32>(-26430i, -1i) | vec2<i32>(1029i, u_input.b)), ~_wgslsmith_add_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(u_input.a, -35456i)), vec2<bool>(true, true)), ~reverseBits(u_input.c.x)), Struct_1(vec4<i32>(min(-1i, _wgslsmith_sub_i32(9437i, u_input.b)), -u_input.b, 0i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(-99582i, -34848i), vec2<i32>(1i, 24242i)), countOneBits(~u_input.b)), !all(vec2<bool>(false, true)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-20306i, _wgslsmith_dot_vec3_i32(vec3<i32>(-25810i, global0.x, global0.x), vec3<i32>(39074i, global0.x, u_input.b)), u_input.b), -(vec3<i32>(u_input.b, u_input.a, 2147483647i) ^ vec3<i32>(u_input.a, u_input.b, -107604i)), select(~vec3<i32>(u_input.a, -6424i, -9186i), vec3<i32>(global0.x, 6251i, u_input.b), vec3<bool>(true, true, true))), -24215i));
    global0 = var_0.d.a.zx;
    let var_1 = abs(_wgslsmith_div_vec2_u32(vec2<u32>(countOneBits(u_input.c.x), ~_wgslsmith_add_u32(4294967295u, var_0.c.a)), u_input.c));
    let var_2 = -((var_0.c.c << (~(~vec2<u32>(u_input.c.x, u_input.c.x)) % vec2<u32>(32u))) ^ vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global0.x, 2147483647i), var_0.c.c), -vec2<i32>(u_input.b, u_input.a)), ~var_0.d.d));
    var var_3 = var_0.c.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_0.c.b)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.c.b)))))));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(~countOneBits(0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1057f) * _wgslsmith_f_op_f32(step(-145f, -1160f))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(553f, 1550f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3()))))), abs(select(vec2<i32>(_wgslsmith_mod_i32(48649i, -124879i), i32(-1i) * -6905i), vec2<i32>(firstLeadingBit(global0.x), -1i), true)), ~_wgslsmith_mod_u32(u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(31093u, u_input.c.x, 1u, u_input.c.x), firstTrailingBit(vec4<u32>(4294967295u, 43899u, 26730u, u_input.c.x)))));
    global0 = vec2<i32>(-4544i, reverseBits(0i));
    let var_1 = true;
    return var_0;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: bool, arg_3: f32) -> Struct_2 {
    return Struct_2(1u, _wgslsmith_f_op_f32(func_3()), vec2<i32>(-2147483647i, arg_1.d.c.x), ~(arg_1.c.d ^ u_input.c.x));
}

fn func_1() -> vec2<u32> {
    var var_0 = vec2<i32>(17930i, firstLeadingBit(abs(2147483647i))) | min(~vec2<i32>(-5621i, countOneBits(u_input.a)), abs(-(vec2<i32>(u_input.b, global0.x) >> (u_input.c % vec2<u32>(32u)))));
    var var_1 = abs(~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c.x), u_input.c >> (u_input.c % vec2<u32>(32u))), 27835u, _wgslsmith_clamp_u32(u_input.c.x, ~51987u, 37946u), min(~u_input.c.x, abs(u_input.c.x))));
    var var_2 = ~vec3<u32>(~var_1.x, _wgslsmith_mult_u32((var_1.x ^ 31885u) | 52333u, 4294967295u), abs(u_input.c.x));
    var var_3 = func_4(func_2(), Struct_4(0i, 14062u == var_1.x, func_2(), Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(-17630i, -33389i, 406i, 2147483647i), abs(vec4<i32>(global0.x, u_input.b, global0.x, -23523i))), global0.x == 1i, _wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, u_input.a, 1i) << (var_1.ywz % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(u_input.b, var_0.x, 6821i))), u_input.a)), all(select(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(true, false)), true, true))), _wgslsmith_f_op_f32(615f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1148f - -136f)) * 1000f)));
    let var_4 = Struct_3(vec2<bool>(!((var_3.b < var_3.b) && false), true));
    return _wgslsmith_clamp_vec2_u32(~_wgslsmith_sub_vec2_u32(u_input.c, vec2<u32>(var_1.x, u_input.c.x) ^ ~vec2<u32>(4294967295u, 28315u)), vec2<u32>(0u, 1u), ~abs(reverseBits(var_1.yw)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(min(func_1(), select(u_input.c, vec2<u32>(68464u, u_input.c.x), true)) << (min(~vec2<u32>(u_input.c.x, 1396u), _wgslsmith_clamp_vec2_u32(u_input.c, vec2<u32>(0u, 50491u), vec2<u32>(36710u, u_input.c.x))) % vec2<u32>(32u))) << (vec2<u32>(u_input.c.x, countOneBits(u_input.c.x)) % vec2<u32>(32u));
    var var_1 = Struct_2(u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(round(991f))))), _wgslsmith_sub_vec2_i32(firstLeadingBit(-vec2<i32>(u_input.b, global0.x)), ~(~(-vec2<i32>(global0.x, 1i)))), ~(~_wgslsmith_dot_vec2_u32(~u_input.c, vec2<u32>(var_0.x, 2521u) ^ vec2<u32>(98790u, 1u))));
    var var_2 = Struct_4(-2147483647i, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a, 47896u, 53037u), ~vec3<u32>(var_0.x, var_0.x, var_1.d)), (1u >> (1u % 32u)) << (func_2().d % 32u)) != var_0.x, Struct_2(_wgslsmith_mod_u32(8992u, func_4(Struct_2(var_1.a, var_1.b, vec2<i32>(2147483647i, -18741i), var_0.x), Struct_4(var_1.c.x, false, Struct_2(602u, var_1.b, var_1.c, 52429u), Struct_1(vec4<i32>(var_1.c.x, global0.x, -1i, u_input.b), true, vec3<i32>(-1i, -1i, var_1.c.x), global0.x)), 1713f != var_1.b, _wgslsmith_f_op_f32(var_1.b + 1947f)).a), 1069f, _wgslsmith_mod_vec2_i32(var_1.c, ~(~vec2<i32>(global0.x, global0.x))), ~12572u), Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -1i, 0i, global0.x), vec4<i32>(u_input.b, 59991i, 1i, global0.x)) ^ (-vec4<i32>(-15159i, u_input.a, -2147483647i, 59535i) ^ min(vec4<i32>(3175i, -9049i, global0.x, global0.x), vec4<i32>(global0.x, u_input.b, -1i, -7815i))), func_2().b == 216f, _wgslsmith_mult_vec3_i32(abs(vec3<i32>(u_input.a, u_input.a, -98001i)), vec3<i32>(-29604i, countOneBits(0i), func_4(Struct_2(0u, -2600f, vec2<i32>(636i, var_1.c.x), u_input.c.x), Struct_4(-2147483647i, true, Struct_2(0u, 269f, var_1.c, var_0.x), Struct_1(vec4<i32>(32715i, -37585i, global0.x, -41399i), true, vec3<i32>(u_input.b, 1i, 17386i), -47972i)), true, var_1.b).c.x)), _wgslsmith_div_i32(-var_1.c.x, -(~1i))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.c.x, vec3<u32>(_wgslsmith_clamp_u32(~u_input.c.x, ~(~4294967295u), ~6296u), (reverseBits(50030u) >> ((u_input.c.x << (41427u % 32u)) % 32u)) >> (_wgslsmith_sub_u32(4294967295u, ~var_1.d) % 32u), ~(~(~u_input.c.x))), ~(~firstLeadingBit(~43994u)), vec3<f32>(1226f, -987f, var_2.c.b));
}

