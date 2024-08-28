struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32) -> vec3<i32> {
    let var_0 = -firstLeadingBit(-1i);
    var var_1 = ~(~vec3<u32>(27381u, u_input.a.x << (1u % 32u), u_input.b) ^ vec3<u32>(select(arg_0 >> (11551u % 32u), 1u, true), _wgslsmith_div_u32(~23529u, ~u_input.e), ~u_input.e));
    global0 = Struct_3(select(select(vec4<bool>(global0.a.x, true, var_1.x <= 0u, global0.a.x), !select(vec4<bool>(false, global0.a.x, global0.a.x, false), vec4<bool>(false, global0.a.x, global0.a.x, global0.a.x), false), !all(vec4<bool>(global0.a.x, false, false, true))), select(vec4<bool>(true, true, false, false), global0.a, global0.a), true));
    var_1 = vec3<u32>(arg_0, _wgslsmith_clamp_u32((0u & u_input.a.x) >> (~4294967295u % 32u), ~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.x, 1u, 0u), vec3<u32>(37771u, var_1.x, var_1.x)), min(vec3<u32>(6725u, var_1.x, u_input.a.x), vec3<u32>(u_input.e, 53676u, 9643u))), ~var_1.x), ~4294967295u);
    var var_2 = vec4<i32>(~var_0, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-44160i, u_input.c, -1i), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(u_input.d, -2147483647i, -2147483647i)), vec3<i32>(u_input.c, u_input.c, -37734i))), -var_0, -select(_wgslsmith_mod_i32(2147483647i, u_input.d), i32(-1i) * -1i, all(global0.a.wx))) >> (_wgslsmith_div_vec4_u32(vec4<u32>(1670u | u_input.a.x, abs(80345u) >> (var_1.x % 32u), u_input.e, 4294967295u), ~(~(vec4<u32>(var_1.x, 124771u, u_input.a.x, 0u) ^ vec4<u32>(1u, u_input.e, u_input.b, 1u)))) % vec4<u32>(32u));
    return var_2.yzy;
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_2) -> vec3<f32> {
    global0 = Struct_3(vec4<bool>(false, true, false, true));
    global0 = Struct_3(select(select(select(vec4<bool>(true, arg_0, false, true), !global0.a, any(vec3<bool>(global0.a.x, arg_0, arg_0))), vec4<bool>(any(vec4<bool>(arg_0, global0.a.x, global0.a.x, true)), true, all(global0.a.xyy), u_input.b == 1u), vec4<bool>(arg_0, any(global0.a.zyy), u_input.d >= arg_1.x, true)), !vec4<bool>(true, all(global0.a.yy), any(vec3<bool>(arg_0, true, arg_0)), u_input.e != 95992u), !vec4<bool>(any(vec4<bool>(arg_0, false, false, true)), arg_2.a == arg_2.a, arg_0 && true, global0.a.x)));
    var var_0 = _wgslsmith_dot_vec4_u32(min(~(~vec4<u32>(u_input.e, u_input.e, 37633u, 38959u)), ~countOneBits(vec4<u32>(u_input.e, u_input.b, u_input.e, u_input.e))), select(~vec4<u32>(u_input.b, 80083u, u_input.e, 0u) >> (max(vec4<u32>(22823u, u_input.b, 0u, 0u), vec4<u32>(21831u, u_input.a.x, u_input.b, 4294967295u)) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(u_input.b, 0u, 1u, u_input.b)), ~vec4<u32>(u_input.b, u_input.b, u_input.e, u_input.a.x)), countOneBits(arg_1.x) >= 1i)) > 1u;
    var_0 = firstLeadingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(13162i, -14146i, u_input.d, u_input.c)), vec4<i32>(u_input.c, -13067i, arg_1.x, 2147483647i)), abs(vec4<i32>(-21078i, -21220i, -10898i, -31210i)))) > _wgslsmith_mod_i32(~(-_wgslsmith_clamp_i32(2825i, 1i, -1i)), -(i32(-1i) * -arg_1.x));
    var var_1 = vec4<f32>(-543f, _wgslsmith_f_op_f32(arg_2.a * arg_2.a), _wgslsmith_f_op_f32(f32(-1f) * -1076f), _wgslsmith_f_op_f32(arg_2.a * arg_2.a));
    return vec3<f32>(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(-var_1.x)) + 1958f)), arg_2.a, arg_2.a);
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1001f, -340f, 404f)))) - _wgslsmith_f_op_vec3_f32(func_4(all(global0.a), func_3(u_input.b), Struct_2(855f))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-105f - -622f), _wgslsmith_f_op_f32(floor(-534f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1000f)))))));
    global0 = Struct_3(global0.a);
    let var_1 = _wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(reverseBits(min(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, u_input.a.x)), u_input.e | 44713u)), ~0u));
    var var_2 = _wgslsmith_mult_i32(_wgslsmith_div_i32(abs(_wgslsmith_mod_i32(max(u_input.d, u_input.c), 2147483647i >> (u_input.b % 32u))), -_wgslsmith_mult_i32(~u_input.d, 1i)), 4739i);
    global0 = Struct_3(select(!vec4<bool>(true, global0.a.x, global0.a.x, true), global0.a, !global0.a));
    return firstLeadingBit(_wgslsmith_mult_i32(2147483647i, u_input.c) | u_input.d) & 4300i;
}

fn func_1() -> vec3<f32> {
    let var_0 = Struct_3(global0.a);
    var var_1 = vec2<i32>(1i, -func_2()) | (_wgslsmith_clamp_vec2_i32(reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(-2147483647i, 17757i), vec2<i32>(u_input.c, u_input.d))), select(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.d, u_input.d), vec2<bool>(false, true)) & ~vec2<i32>(u_input.d, u_input.c), ~reverseBits(vec2<i32>(u_input.d, u_input.c))) ^ -(~_wgslsmith_mod_vec2_i32(vec2<i32>(-26220i, -8523i), vec2<i32>(u_input.d, -1i))));
    let var_2 = u_input.a;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(516f, -549f, -909f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-159f, 128f, 162f)))))));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: bool, arg_3: Struct_3) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 1410f, arg_0.x))))));
    return select(global0.a, global0.a, !(!(!select(vec4<bool>(global0.a.x, true, false, global0.a.x), global0.a, arg_3.a))));
}

fn func_6(arg_0: vec4<bool>, arg_1: u32, arg_2: vec2<i32>) -> i32 {
    global0 = Struct_3(global0.a);
    var var_0 = ~_wgslsmith_mult_vec3_i32(~(-vec3<i32>(u_input.c, u_input.d, 2147483647i)), vec3<i32>(_wgslsmith_div_i32(-1i, ~arg_2.x), 47209i, -25855i));
    var var_1 = _wgslsmith_add_vec4_i32(~(~_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 26559i, arg_2.x, -2147483647i), vec4<i32>(-7269i, arg_2.x, var_0.x, arg_2.x), vec4<i32>(arg_2.x, 9639i, 30825i, arg_2.x) | vec4<i32>(u_input.d, u_input.c, 9043i, u_input.c))), vec4<i32>(-1i, -1i, reverseBits(_wgslsmith_mult_i32(1i, min(1i, var_0.x))), var_0.x));
    var var_2 = Struct_3(global0.a);
    var_2 = Struct_3(vec4<bool>(true, var_2.a.x, global0.a.x, any(vec3<bool>(false, var_2.a.x, any(vec3<bool>(var_2.a.x, arg_0.x, false))))));
    return 2380i;
}

fn func_7(arg_0: Struct_3, arg_1: Struct_3, arg_2: i32, arg_3: vec3<bool>) -> Struct_3 {
    let var_0 = -vec3<i32>(~arg_2, (0i ^ abs(arg_2)) >> (u_input.a.x % 32u), ~_wgslsmith_sub_i32(-25752i, 11210i) ^ arg_2);
    let var_1 = Struct_2(981f);
    global0 = Struct_3(arg_0.a);
    global0 = Struct_3(arg_0.a);
    let var_2 = func_2();
    return Struct_3(global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(vec4<bool>(!(!(u_input.e < u_input.b)), true, all(vec2<bool>(true, false)), false));
    let var_0 = func_7(Struct_3(select(global0.a, !select(vec4<bool>(false, true, global0.a.x, global0.a.x), vec4<bool>(global0.a.x, global0.a.x, true, true), false), !select(global0.a, global0.a, true))), Struct_3(vec4<bool>(51843u <= u_input.a.x, !any(global0.a.xyw), any(!global0.a), (u_input.c & 10882i) < (u_input.c | u_input.c))), ~func_6(func_5(_wgslsmith_f_op_vec3_f32(func_1()), _wgslsmith_f_op_vec3_f32(-vec3<f32>(747f, -1486f, -217f)), true, Struct_3(global0.a)), ~40825u, min(vec2<i32>(u_input.d, u_input.c) ^ vec2<i32>(u_input.c, -9705i), vec2<i32>(u_input.d, -23817i))), func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(422f, 1835f, -1463f)))) - vec3<f32>(-368f, _wgslsmith_f_op_f32(trunc(524f)), -838f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(971f, 1256f, 455f))), vec3<f32>(1448f, -754f, -951f)) * vec3<f32>(-502f, _wgslsmith_f_op_f32(1624f - 672f), _wgslsmith_f_op_f32(sign(700f)))), any(vec2<bool>(true, false)), Struct_3(!(!vec4<bool>(global0.a.x, false, true, global0.a.x)))).wwx);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec3_f32(func_1()).x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -181f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1094f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-444f, 184f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-839f, -1400f))), _wgslsmith_f_op_vec3_f32(func_4(true, countOneBits(vec3<i32>(abs(u_input.d), ~(-1i), func_2())), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-936f, -1296f)) - _wgslsmith_f_op_f32(471f * 921f))))).x);
    global0 = var_0;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(var_1.x - -1000f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -387f)), _wgslsmith_f_op_f32(min(-1716f, -1492f)))) + var_1.x);
    var var_3 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(617f - var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -193f)), !func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_1.x, var_1.x)), _wgslsmith_f_op_vec3_f32(-var_1.yzw), u_input.b != 16366u, Struct_3(vec4<bool>(true, var_0.a.x, false, true))).x)));
    var var_4 = var_1.yw;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(max(u_input.c, ~(-23312i)), firstLeadingBit(_wgslsmith_mod_i32(u_input.c, -1i)) >> (10918u % 32u), ~(-43470i), (u_input.d | u_input.d) >> (~u_input.e % 32u)), firstLeadingBit(u_input.d), var_1.yzw);
}

