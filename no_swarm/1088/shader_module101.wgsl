struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 3> = array<vec3<f32>, 3>(vec3<f32>(-758f, 215f, 1159f), vec3<f32>(1187f, -2048f, -958f), vec3<f32>(462f, -975f, 1583f));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: f32) -> i32 {
    let var_0 = Struct_2(~(27681u << (~(~arg_1) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(433f, 1295f))))))), arg_2);
    var var_1 = _wgslsmith_sub_i32(reverseBits(~(u_input.c << (64091u % 32u)) ^ u_input.c), ~u_input.c);
    var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(i32(-1i) * -1i, ~max(-46028i, u_input.c), abs(i32(-1i) * -13082i), max(~1i, i32(-1i) * -4646i)), vec4<i32>(u_input.c, -51267i, ~(~1i), 2147483647i)), vec4<i32>(_wgslsmith_mod_i32(30008i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 17461i, u_input.c, -2147483647i), vec4<i32>(-1i, 2147483647i, u_input.c, u_input.c))), 0i, -u_input.c, u_input.c));
    var var_2 = Struct_1(select(vec4<bool>(36741i > -u_input.c, true, true, _wgslsmith_f_op_f32(-1000f * var_0.c) != arg_2), select(vec4<bool>(true, all(vec3<bool>(true, false, false)), true, false), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), false), false), vec4<bool>(any(vec2<bool>(true, false)), ~0u <= u_input.d.x, true, all(vec4<bool>(true, true, true, true)))), any(vec4<bool>(false, !select(true, true, true), false | any(vec2<bool>(true, false)), false)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(899f))))))), min(vec3<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(-22158i, 1618i, u_input.c), vec3<i32>(u_input.c, u_input.c, 0i)), u_input.c, -_wgslsmith_dot_vec2_i32(vec2<i32>(1586i, u_input.c), vec2<i32>(21643i, 2147483647i))), vec3<i32>(-u_input.c, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -1i), vec2<i32>(u_input.c, u_input.c)), _wgslsmith_div_i32(13816i, -16682i)), _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.c, u_input.c), -2147483647i))));
    var_2 = Struct_1(!vec4<bool>(any(var_2.a.wy), true, true, !any(var_2.a.xzy)), !((var_2.a.x && true) || var_2.a.x), _wgslsmith_f_op_f32(var_2.c + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1735f), _wgslsmith_f_op_f32(792f * arg_2), true)) + var_2.c)), _wgslsmith_clamp_vec3_i32(select(vec3<i32>(-16719i, var_2.d.x, -9127i), vec3<i32>(-62770i, var_2.d.x, u_input.c), u_input.c >= var_2.d.x), _wgslsmith_clamp_vec3_i32(var_2.d >> (vec3<u32>(1u, u_input.b, 30119u) % vec3<u32>(32u)), ~var_2.d, ~var_2.d), _wgslsmith_div_vec3_i32(firstTrailingBit(var_2.d), vec3<i32>(2147483647i, 2147483647i, var_2.d.x) | var_2.d)) & _wgslsmith_sub_vec3_i32(vec3<i32>(var_2.d.x, u_input.c, var_2.d.x), var_2.d));
    return _wgslsmith_add_i32(1i, 1i);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec3<i32>) -> Struct_3 {
    let var_0 = Struct_2(4294967295u, arg_0.c, arg_0.c);
    global0 = array<vec3<f32>, 3>();
    global0 = array<vec3<f32>, 3>();
    global0 = array<vec3<f32>, 3>();
    let var_1 = Struct_5(arg_0, Struct_4(Struct_2(~(~var_0.a), _wgslsmith_f_op_f32(floor(1000f)), arg_0.c), select(select(select(arg_0.a.wyx, vec3<bool>(arg_0.a.x, false, arg_0.a.x), arg_0.b), arg_0.a.www, arg_0.a.zwy), arg_0.a.xww, arg_0.a.x || (var_0.b <= var_0.c))), var_0.b);
    return Struct_3(Struct_1(vec4<bool>(true, true | any(arg_0.a.yzz), true, arg_0.a.x), true, -505f, ~vec3<i32>(func_3(vec3<u32>(1u, 41361u, u_input.b), u_input.b, var_1.a.c), -42806i, -2147483647i)));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    let var_0 = Struct_3(arg_0.a);
    return var_0.a;
}

fn func_1() -> Struct_5 {
    global0 = array<vec3<f32>, 3>();
    let var_0 = u_input.d.x;
    let var_1 = Struct_5(func_4(func_2(Struct_1(vec4<bool>(true, true, true, true), true, 636f, min(vec3<i32>(u_input.c, u_input.c, 13156i), vec3<i32>(u_input.c, u_input.c, u_input.c))), var_0, _wgslsmith_sub_vec3_i32(vec3<i32>(-4031i, u_input.c, u_input.c) | vec3<i32>(u_input.c, 1i, u_input.c), vec3<i32>(u_input.c, 16125i, 0i)))), Struct_4(Struct_2(select(~var_0, 4294967295u, true), func_4(Struct_3(Struct_1(vec4<bool>(false, true, false, false), false, -658f, vec3<i32>(1i, u_input.c, 2147483647i)))).c, -407f), vec3<bool>(func_4(func_2(Struct_1(vec4<bool>(true, true, false, false), false, 1376f, vec3<i32>(-12688i, 0i, 53023i)), 39931u, vec3<i32>(2147483647i, -64926i, u_input.c))).a.x, true, ~u_input.c >= ~u_input.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -905f) - _wgslsmith_f_op_f32(1468f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -607f) * _wgslsmith_f_op_f32(f32(-1f) * -1348f)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(443f, _wgslsmith_f_op_f32(-var_1.a.c)))), var_1.b.a.b));
    global0 = array<vec3<f32>, 3>();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = 11076u;
    let var_2 = _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_add_i32(u_input.c, ~1i), func_3(vec3<u32>(6737u, var_1, 4294967295u) ^ vec3<u32>(0u, 75851u, var_0.b.a.a), firstLeadingBit(4294967295u), var_0.c), var_0.a.d.x, u_input.c), select(firstLeadingBit(~vec4<i32>(-58223i, u_input.c, -23212i, -30699i)), select(_wgslsmith_add_vec4_i32(vec4<i32>(11716i, -19514i, u_input.c, -2147483647i), vec4<i32>(-2147483647i, 67801i, var_0.a.d.x, var_0.a.d.x)), vec4<i32>(u_input.c, var_0.a.d.x, u_input.c, var_0.a.d.x) | vec4<i32>(u_input.c, var_0.a.d.x, var_0.a.d.x, u_input.c), u_input.c <= 1i), u_input.c == max(var_0.a.d.x, var_0.a.d.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(func_3(vec3<u32>(0u, 1u, 26387u), u_input.d.x, -1718f), _wgslsmith_mult_i32(93268i, 2659i), 2147483647i, _wgslsmith_sub_i32(1785i, -20848i)), ~vec4<i32>(4132i, -1i, var_0.a.d.x, u_input.c) ^ vec4<i32>(2147483647i, u_input.c, -1i, -358i))), ~vec4<i32>(_wgslsmith_div_i32(-65706i, -1i), _wgslsmith_mod_i32(~var_0.a.d.x, _wgslsmith_div_i32(0i, 26440i)), 39081i, -reverseBits(2147483647i)));
    global0 = array<vec3<f32>, 3>();
    global0 = array<vec3<f32>, 3>();
    var var_3 = -_wgslsmith_mult_vec4_i32(vec4<i32>(-7254i, var_2.x << (4294967295u % 32u), func_1().a.d.x, 0i), vec4<i32>(_wgslsmith_add_i32(func_4(Struct_3(Struct_1(var_0.a.a, var_0.a.a.x, var_0.a.c, vec3<i32>(u_input.c, var_0.a.d.x, var_2.x)))).d.x, reverseBits(u_input.c)), var_0.a.d.x, select(~u_input.c, ~(-14777i), !var_0.b.b.x), 2147483647i));
    var var_4 = !func_2(func_4(func_2(var_0.a, _wgslsmith_mod_u32(22357u, var_0.b.a.a), reverseBits(var_2.yxz))), (~0u >> (min(0u, 26898u) % 32u)) >> (~u_input.a % 32u), func_1().a.d).a.a.x;
    var var_5 = func_2(Struct_1(var_0.a.a, true, var_0.a.c, ~var_0.a.d), ~var_0.b.a.a, firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(max(var_0.a.d.x, -2147483647i), var_0.a.d.x ^ var_3.x, -1i), -(~vec3<i32>(var_2.x, var_2.x, var_2.x)))));
    var var_6 = Struct_4(Struct_2(u_input.b, 224f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-346f))))), select(vec3<bool>(true, true, true), select(vec3<bool>(var_0.a.b || true, false, true), vec3<bool>(var_5.a.b, var_5.a.c <= -1218f, true), func_1().b.b.x), true));
    let x = u_input.a;
    s_output = StorageBuffer(46441u, _wgslsmith_mod_vec2_u32(~u_input.d, u_input.d));
}

