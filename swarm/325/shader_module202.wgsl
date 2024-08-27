struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec4<u32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec3<bool>,
}

struct Struct_5 {
    a: f32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, true, false);

var<private> global1: vec2<i32> = vec2<i32>(-33154i, 506i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_2, arg_3: vec2<u32>) -> vec4<i32> {
    let var_0 = Struct_5(978f, vec4<i32>(arg_2.e.a, 1i, -2147483647i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(i32(-1i) * -27734i, arg_2.e.b, ~u_input.b), u_input.b)));
    global0 = arg_2.b;
    let var_1 = Struct_3(vec3<bool>(any(vec3<bool>(global0.x, true, arg_2.b.x)), any(select(global0.zzx, select(vec3<bool>(arg_2.b.x, true, global0.x), global0.wyw, vec3<bool>(true, false, false)), global0.x)), false), arg_2, Struct_1(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(global1.x, _wgslsmith_dot_vec3_i32(var_0.b.ywx, vec3<i32>(71796i, 11894i, global1.x)))), u_input.a.x, vec3<u32>(~u_input.c, firstLeadingBit(0u), 1u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d - var_0.a)), 1446f, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1872f) * var_0.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.e.e - arg_2.e.d), arg_2.e.e)), arg_2);
    global0 = vec4<bool>(var_1.d.b.x & !global0.x, !(!any(!vec2<bool>(var_1.a.x, true))), arg_2.b.x, !var_1.b.b.x);
    global0 = vec4<bool>((_wgslsmith_f_op_f32(ceil(var_0.a)) == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2.e.d.x * arg_0)))) & true, true, false, !(var_1.a.x && false));
    return vec4<i32>(arg_2.e.b, -17118i, var_1.b.e.b, 2147483647i);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_5, arg_2: Struct_3, arg_3: Struct_2) -> i32 {
    let var_0 = !select(arg_0.a.b, vec4<bool>(true, true, any(vec4<bool>(global0.x, arg_3.b.x, false, false)) && !global0.x, all(!arg_3.b.www)), _wgslsmith_f_op_f32(select(144f, _wgslsmith_f_op_f32(-700f + arg_3.e.d.x), false)) < arg_2.c.d.x);
    var var_1 = _wgslsmith_add_vec3_u32(~(~countOneBits(vec3<u32>(arg_2.d.e.c.x, arg_3.c.x, 17205u))), firstLeadingBit(arg_3.e.c));
    var var_2 = arg_0;
    var var_3 = arg_1;
    var_1 = arg_3.c.xzz;
    return arg_3.e.a | -(~(~global1.x));
}

fn func_2() -> bool {
    var var_0 = select(func_4(Struct_4(Struct_2(vec3<u32>(4294967295u, 1u, 0u), vec4<bool>(global0.x, true, false, false), vec4<u32>(u_input.d, u_input.c, 3009u, u_input.d), 631f, Struct_1(u_input.a.x, global1.x, vec3<u32>(u_input.d, 8293u, u_input.c), vec4<f32>(-669f, 730f, -647f, 775f), vec4<f32>(615f, -1527f, 301f, -348f))), global0.yx, select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(false, true, global0.x), vec3<bool>(true, global0.x, false))), Struct_5(-2376f, func_3(-1599f, u_input.c, Struct_2(vec3<u32>(67715u, 1u, 0u), vec4<bool>(global0.x, global0.x, false, false), vec4<u32>(u_input.c, 55997u, 4294967295u, 44289u), 563f, Struct_1(13119i, u_input.b, vec3<u32>(4294967295u, 4294967295u, 1u), vec4<f32>(-619f, 447f, -1901f, -872f), vec4<f32>(2226f, 567f, 700f, 1161f))), vec2<u32>(78305u, 53910u))), Struct_3(!global0.xxx, Struct_2(vec3<u32>(43392u, u_input.c, u_input.c), vec4<bool>(global0.x, global0.x, false, global0.x), vec4<u32>(u_input.d, u_input.c, u_input.c, u_input.c), -540f, Struct_1(4647i, global1.x, vec3<u32>(u_input.d, 4294967295u, 1u), vec4<f32>(-1046f, -835f, 138f, 1000f), vec4<f32>(848f, -206f, -262f, 623f))), Struct_1(global1.x, u_input.a.x, vec3<u32>(41595u, 38879u, 5210u), vec4<f32>(797f, -409f, 1244f, 265f), vec4<f32>(409f, -540f, 275f, -410f)), Struct_2(vec3<u32>(u_input.c, 13031u, 74256u), vec4<bool>(global0.x, true, global0.x, true), vec4<u32>(4294967295u, u_input.d, u_input.d, u_input.d), 799f, Struct_1(32108i, u_input.b, vec3<u32>(1u, u_input.d, u_input.d), vec4<f32>(889f, -634f, 1957f, -193f), vec4<f32>(-409f, -809f, -1833f, 2226f)))), Struct_2(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, u_input.d, 35942u), vec3<u32>(0u, 63610u, 1u)), vec4<bool>(true, true, true, true), vec4<u32>(1u, 4294967295u, 1u, u_input.d), _wgslsmith_f_op_f32(-1762f * 1467f), Struct_1(global1.x, u_input.b, vec3<u32>(1u, u_input.c, u_input.c), vec4<f32>(174f, -299f, 1083f, -1000f), vec4<f32>(132f, 509f, 1235f, -377f)))) != (i32(-1i) * -16193i), global0.x, any(!select(vec4<bool>(false, global0.x, false, true), select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(true, true, false, true)), vec4<bool>(false, false, global0.x, global0.x))));
    let var_1 = Struct_3(global0.zwy, Struct_2(vec3<u32>(17878u, _wgslsmith_add_u32(min(7591u, u_input.c), u_input.d), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.d), vec2<u32>(u_input.d, u_input.c))), vec4<bool>(global0.x, false, any(select(global0.xwz, global0.wxx, vec3<bool>(true, false, true))), global0.x), reverseBits(abs(~vec4<u32>(39297u, 0u, 4294967295u, u_input.c))), -692f, Struct_1(-4938i & _wgslsmith_div_i32(-11579i, u_input.a.x), global1.x, select(select(vec3<u32>(u_input.d, u_input.d, 35133u), vec3<u32>(57939u, u_input.d, u_input.c), global0.x), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, u_input.c, 24327u), vec3<u32>(12689u, u_input.c, u_input.d)), all(global0.yw)), vec4<f32>(_wgslsmith_f_op_f32(sign(-267f)), _wgslsmith_f_op_f32(1566f + 997f), _wgslsmith_f_op_f32(-625f * -1000f), -1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1886f, -1423f, 344f, 1704f))))), Struct_1(-global1.x, _wgslsmith_clamp_i32(2147483647i, _wgslsmith_mult_i32(u_input.b, -global1.x), i32(-1i) * -13943i), vec3<u32>(~u_input.c, max(firstTrailingBit(30768u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 1u, u_input.c), vec3<u32>(u_input.d, u_input.d, 1u))), u_input.c >> (~46039u % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(116f, -201f, -1000f, -221f), vec4<f32>(-2906f, 1851f, 128f, 890f)))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -625f, -2401f, -784f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1469f, 1247f, -102f, -1288f) * vec4<f32>(635f, 779f, -1262f, -326f)), false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, -807f, -677f, 2179f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-224f, 913f, -1139f, 362f), vec4<f32>(-2046f, -519f, 2130f, 849f), vec4<bool>(true, global0.x, true, global0.x)))))), Struct_2(countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, 1u, 81313u), vec3<u32>(1u, u_input.c, u_input.c)) << ((vec3<u32>(u_input.c, 48266u, u_input.c) >> (vec3<u32>(11873u, u_input.c, 4263u) % vec3<u32>(32u))) % vec3<u32>(32u))), vec4<bool>(select(true, true, !global0.x), _wgslsmith_sub_i32(global1.x, u_input.a.x) < _wgslsmith_mult_i32(global1.x, -14680i), false, all(select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(false, true, true, global0.x), vec4<bool>(true, false, false, global0.x)))), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.d, 21432u), vec4<u32>(4294967295u, 38651u, 823u, 0u)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, 30123u), vec4<u32>(1u, 4294967295u, u_input.d, 31557u)) % vec4<u32>(32u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.c, u_input.c, 0u), vec4<u32>(u_input.c, 0u, u_input.c, 1u))), 246f, Struct_1(~select(global1.x, global1.x, global0.x), global1.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 10753u), vec2<u32>(88778u, u_input.d)) % 32u), ~firstTrailingBit(vec3<u32>(u_input.c, u_input.d, u_input.d)), vec4<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(ceil(-1001f)), _wgslsmith_f_op_f32(round(1578f)), _wgslsmith_f_op_f32(182f - -286f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(395f, -1365f, 1814f, -2931f) + vec4<f32>(208f, 835f, 683f, 1102f)))));
    var_0 = select(all(select(!select(vec4<bool>(var_1.a.x, true, var_1.a.x, var_1.d.b.x), vec4<bool>(true, false, global0.x, true), var_1.d.b), var_1.d.b, all(vec2<bool>(var_1.d.b.x, true)))), global0.x, var_1.d.b.x);
    var var_2 = Struct_1(global1.x, -max(~(global1.x | -39352i), -12650i), var_1.c.c, var_1.c.e, vec4<f32>(var_1.c.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.e.e.x) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(902f * var_1.b.d)))), -915f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.d.e.e.x)))));
    let var_3 = var_1;
    return false;
}

fn func_1(arg_0: Struct_4) -> Struct_2 {
    global1 = u_input.a;
    global0 = !vec4<bool>(false, !(!global0.x), false, false);
    global0 = vec4<bool>(arg_0.b.x | global0.x, true, true, (false | any(vec3<bool>(arg_0.b.x, true, false))) & select(any(vec3<bool>(false, global0.x, true)) && all(global0.yzx), true, global0.x));
    let var_0 = select(countOneBits(abs(_wgslsmith_clamp_vec3_i32(-vec3<i32>(2147483647i, 32405i, u_input.b), ~vec3<i32>(arg_0.a.e.b, 1i, 6970i), firstTrailingBit(vec3<i32>(global1.x, -37218i, u_input.b))))), _wgslsmith_sub_vec3_i32(countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(global1.x, arg_0.a.e.b, u_input.a.x), vec3<i32>(-18985i, 4525i, -60564i))) & vec3<i32>(countOneBits(36743i), ~u_input.a.x, u_input.a.x), ~(-_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, 2147483647i, -1i), vec3<i32>(arg_0.a.e.b, global1.x, -67406i)))), func_2());
    global0 = select(select(arg_0.a.b, vec4<bool>(arg_0.c.x, any(vec2<bool>(false, arg_0.c.x)) && true, any(vec4<bool>(true, global0.x, global0.x, global0.x)), false), !select(!arg_0.a.b, select(arg_0.a.b, arg_0.a.b, arg_0.a.b), u_input.d > 47718u)), arg_0.a.b, arg_0.a.b);
    return Struct_2(countOneBits(arg_0.a.e.c), vec4<bool>(all(arg_0.a.b), all(arg_0.c), global0.x, all(!vec4<bool>(true, global0.x, false, global0.x))), vec4<u32>(17521u, u_input.d, select(_wgslsmith_add_u32(u_input.c ^ u_input.d, 1u), ~u_input.c << (_wgslsmith_mult_u32(arg_0.a.c.x, 6133u) % 32u), arg_0.a.b.x), 122256u << (_wgslsmith_div_u32(~106379u, ~140273u) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.d, arg_0.a.d) + _wgslsmith_f_op_f32(arg_0.a.e.d.x + -672f)) - 1000f)), arg_0.a.e);
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: bool) -> vec2<i32> {
    let var_0 = func_3(arg_0.e.e.x, _wgslsmith_mult_u32(~u_input.d, u_input.d), Struct_2(abs(vec3<u32>(20986u, ~17066u, ~1u)), vec4<bool>(func_2(), u_input.a.x <= -arg_0.e.b, !all(global0.zw), _wgslsmith_f_op_f32(sign(-1919f)) <= arg_0.e.d.x), _wgslsmith_mod_vec4_u32(~vec4<u32>(arg_0.e.c.x, u_input.d, 0u, 0u) & ~vec4<u32>(arg_0.c.x, 21315u, 4294967295u, u_input.c), arg_0.c), _wgslsmith_div_f32(-978f, arg_0.e.e.x), arg_0.e), vec2<u32>(max(1u, 27082u), _wgslsmith_mod_u32(4294967295u, u_input.c))).zzx;
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(arg_0.e.d.yyy))));
    var var_2 = func_1(Struct_4(arg_0, !select(arg_0.b.yz, arg_0.b.wy, arg_2), vec3<bool>(!arg_0.b.x, !all(global0.ywx), any(vec4<bool>(arg_0.b.x, false, arg_2, true))))).e;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.x, var_1.x, true)) * _wgslsmith_f_op_f32(-var_2.e.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(263f - var_2.e.x)))) != -744f;
    global0 = !vec4<bool>(!(!arg_2), func_2(), ~(~global1.x) >= ~func_1(Struct_4(Struct_2(arg_0.c.wxx, vec4<bool>(global0.x, true, global0.x, false), vec4<u32>(u_input.c, 75923u, u_input.c, 4294967295u), var_2.e.x, arg_0.e), vec2<bool>(false, true), global0.yyw)).e.b, arg_0.b.x);
    return vec2<i32>(~_wgslsmith_dot_vec2_i32(reverseBits(var_0.zy), vec2<i32>(var_2.b, 14295i)) << ((102030u << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, arg_0.c.x, u_input.d) >> (vec3<u32>(25909u, arg_0.e.c.x, 22464u) % vec3<u32>(32u)), ~arg_0.e.c) % 32u)) % 32u), -1i);
}

fn func_6(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: i32) -> i32 {
    var var_0 = func_1(Struct_4(Struct_2(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.d, u_input.d) ^ vec3<u32>(4294967295u, u_input.d, u_input.d), ~vec3<u32>(u_input.c, 19937u, 7298u)), !arg_1, ~(~vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(146f + 2246f) - -1653f), func_1(Struct_4(Struct_2(vec3<u32>(4294967295u, 1707u, 4294967295u), vec4<bool>(arg_1.x, global0.x, false, global0.x), vec4<u32>(1u, u_input.c, 19580u, 13243u), -1121f, Struct_1(-13195i, arg_0.x, vec3<u32>(1u, u_input.d, 0u), vec4<f32>(1000f, -1894f, -1301f, 2138f), vec4<f32>(1120f, -864f, 434f, 501f))), vec2<bool>(false, true), global0.wwz)).e), arg_1.yx, arg_1.xyy)).e;
    var var_1 = Struct_3(func_1(Struct_4(Struct_2(~vec3<u32>(4294967295u, u_input.c, u_input.c), vec4<bool>(global0.x, false, false, global0.x), select(vec4<u32>(u_input.c, u_input.d, var_0.c.x, 22332u), vec4<u32>(u_input.d, 1u, 14904u, var_0.c.x), arg_1.x), var_0.e.x, Struct_1(arg_0.x, arg_2, vec3<u32>(var_0.c.x, 4294967295u, u_input.d), vec4<f32>(1343f, var_0.e.x, var_0.e.x, var_0.d.x), vec4<f32>(-1000f, 295f, var_0.e.x, 774f))), vec2<bool>(arg_1.x | arg_1.x, true), vec3<bool>(!arg_1.x, true, global0.x))).b.wxx, Struct_2(select(_wgslsmith_div_vec3_u32(var_0.c, select(vec3<u32>(var_0.c.x, var_0.c.x, 4294967295u), var_0.c, false)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(32580u, 0u, 82868u), ~vec3<u32>(u_input.d, var_0.c.x, var_0.c.x), firstLeadingBit(vec3<u32>(var_0.c.x, 6541u, u_input.d))), select(select(vec3<bool>(true, arg_1.x, true), global0.yzw, vec3<bool>(arg_1.x, arg_1.x, global0.x)), !arg_1.ywz, arg_1.www)), select(select(arg_1, vec4<bool>(global0.x, arg_1.x, arg_1.x, global0.x), func_1(Struct_4(Struct_2(var_0.c, vec4<bool>(global0.x, false, arg_1.x, true), vec4<u32>(4294967295u, 107982u, 0u, var_0.c.x), var_0.e.x, Struct_1(-1i, 1i, vec3<u32>(17351u, 29921u, 1u), var_0.d, vec4<f32>(-579f, -248f, var_0.d.x, -357f))), vec2<bool>(global0.x, arg_1.x), vec3<bool>(global0.x, arg_1.x, arg_1.x))).b), arg_1, select(vec4<bool>(true, true, arg_1.x, arg_1.x), arg_1, func_1(Struct_4(Struct_2(vec3<u32>(26466u, u_input.d, u_input.d), vec4<bool>(false, global0.x, global0.x, true), vec4<u32>(4294967295u, 0u, u_input.d, var_0.c.x), -776f, Struct_1(var_0.b, -2147483647i, var_0.c, vec4<f32>(-521f, 1172f, var_0.e.x, 451f), vec4<f32>(var_0.d.x, 962f, var_0.e.x, 1396f))), global0.xz, vec3<bool>(true, true, arg_1.x))).b)), ~func_1(Struct_4(Struct_2(vec3<u32>(86212u, var_0.c.x, 1u), vec4<bool>(arg_1.x, arg_1.x, false, false), vec4<u32>(u_input.c, var_0.c.x, var_0.c.x, 4294967295u), 300f, Struct_1(-29467i, -1i, vec3<u32>(1u, var_0.c.x, 22487u), vec4<f32>(148f, var_0.e.x, var_0.e.x, var_0.d.x), vec4<f32>(-774f, var_0.e.x, 297f, var_0.d.x))), vec2<bool>(false, true), arg_1.wzz)).c, _wgslsmith_f_op_f32(-var_0.e.x), Struct_1(~(arg_2 << (115630u % 32u)), _wgslsmith_clamp_i32(arg_2, -30816i, ~arg_0.x), firstLeadingBit(vec3<u32>(4294967295u, 69588u, 56110u)) & (var_0.c & var_0.c), _wgslsmith_f_op_vec4_f32(select(var_0.d, var_0.e, true)), vec4<f32>(var_0.d.x, _wgslsmith_f_op_f32(max(var_0.d.x, var_0.d.x)), _wgslsmith_f_op_f32(-1559f + var_0.d.x), _wgslsmith_f_op_f32(190f + -444f)))), func_1(Struct_4(Struct_2(~var_0.c, vec4<bool>(true, true, true, global0.x), ~vec4<u32>(11531u, var_0.c.x, var_0.c.x, var_0.c.x), var_0.d.x, func_1(Struct_4(Struct_2(var_0.c, arg_1, vec4<u32>(0u, 5724u, var_0.c.x, var_0.c.x), var_0.e.x, Struct_1(arg_2, -12805i, var_0.c, var_0.e, var_0.e)), arg_1.yz, arg_1.yyx)).e), !select(global0.wx, arg_1.xw, false), select(!vec3<bool>(true, arg_1.x, global0.x), func_1(Struct_4(Struct_2(var_0.c, arg_1, vec4<u32>(u_input.c, 0u, 1u, u_input.d), 957f, Struct_1(u_input.b, 1i, var_0.c, var_0.e, var_0.d)), arg_1.xw, vec3<bool>(true, false, global0.x))).b.zyw, vec3<bool>(false, true, true)))).e, func_1(Struct_4(func_1(Struct_4(Struct_2(var_0.c, vec4<bool>(global0.x, global0.x, global0.x, false), vec4<u32>(var_0.c.x, var_0.c.x, 0u, 4294967295u), 456f, Struct_1(u_input.b, 0i, vec3<u32>(1u, var_0.c.x, u_input.c), var_0.e, vec4<f32>(var_0.e.x, -152f, var_0.d.x, -914f))), vec2<bool>(false, true), vec3<bool>(arg_1.x, global0.x, false))), func_1(Struct_4(Struct_2(var_0.c, vec4<bool>(false, global0.x, arg_1.x, false), vec4<u32>(var_0.c.x, 39387u, u_input.d, u_input.d), -364f, Struct_1(22372i, var_0.b, var_0.c, var_0.d, vec4<f32>(var_0.d.x, 601f, var_0.e.x, var_0.e.x))), arg_1.zx, global0.zxz)).b.xx, vec3<bool>(true, true, arg_1.x))));
    let var_2 = Struct_1(-arg_2, ~reverseBits(firstLeadingBit(-global1.x)), firstLeadingBit(func_1(Struct_4(func_1(Struct_4(var_1.b, vec2<bool>(false, global0.x), global0.xyy)), !vec2<bool>(arg_1.x, false), var_1.a)).a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.e.x, 582f, var_1.c.d.x, 609f), var_0.d)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.d - vec4<f32>(1071f, var_1.c.e.x, var_0.d.x, -666f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_0.e))));
    var var_3 = 737f;
    let var_4 = _wgslsmith_div_vec2_i32(-(-arg_0 << (vec2<u32>(~u_input.c, ~2825u) % vec2<u32>(32u))), vec2<i32>(var_1.c.a, 3114i));
    return -2147483647i;
}

fn func_7(arg_0: vec2<u32>, arg_1: Struct_5, arg_2: vec3<i32>, arg_3: vec2<u32>) -> StorageBuffer {
    global0 = vec4<bool>(_wgslsmith_div_i32(_wgslsmith_sub_i32(arg_1.b.x, select(0i, u_input.b, global0.x)), _wgslsmith_sub_i32(~arg_1.b.x, ~arg_1.b.x)) <= (i32(-1i) * -u_input.a.x), all(vec2<bool>(select(false | global0.x, !global0.x, true), global0.x)), true && global0.x, true);
    var var_0 = vec2<bool>(true | global0.x, !(arg_0.x == u_input.c));
    var var_1 = _wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(-(0i | arg_2.x), _wgslsmith_sub_i32(2147483647i, u_input.b), 4748i, -1i)), vec4<i32>(_wgslsmith_clamp_i32(-8837i, _wgslsmith_dot_vec2_i32(~arg_2.zx, arg_1.b.ww), ~u_input.b), _wgslsmith_add_i32(firstTrailingBit(-arg_1.b.x), _wgslsmith_mult_i32(~(-14826i), global1.x << (32426u % 32u))), global1.x, _wgslsmith_clamp_i32(func_4(Struct_4(Struct_2(vec3<u32>(arg_3.x, 45976u, u_input.c), vec4<bool>(var_0.x, var_0.x, global0.x, true), vec4<u32>(arg_0.x, 14397u, u_input.d, arg_0.x), arg_1.a, Struct_1(arg_1.b.x, -2147483647i, vec3<u32>(23316u, arg_3.x, u_input.c), vec4<f32>(-887f, arg_1.a, arg_1.a, 205f), vec4<f32>(arg_1.a, -315f, -263f, -1475f))), vec2<bool>(false, false), global0.wzw), Struct_5(arg_1.a, vec4<i32>(arg_2.x, -2147483647i, arg_1.b.x, 0i)), Struct_3(vec3<bool>(var_0.x, true, global0.x), Struct_2(vec3<u32>(4294967295u, arg_0.x, 3192u), vec4<bool>(var_0.x, var_0.x, true, true), vec4<u32>(1u, 17819u, u_input.c, 44545u), arg_1.a, Struct_1(arg_1.b.x, -38802i, vec3<u32>(1u, 0u, 14475u), vec4<f32>(arg_1.a, arg_1.a, arg_1.a, 804f), vec4<f32>(478f, arg_1.a, arg_1.a, -1536f))), Struct_1(-26595i, global1.x, vec3<u32>(arg_3.x, 4294967295u, u_input.c), vec4<f32>(-962f, -1222f, arg_1.a, 262f), vec4<f32>(arg_1.a, -1382f, arg_1.a, arg_1.a)), Struct_2(vec3<u32>(arg_0.x, 23395u, 0u), vec4<bool>(var_0.x, var_0.x, true, false), vec4<u32>(arg_3.x, 4294967295u, 1u, 0u), 642f, Struct_1(-2147483647i, arg_1.b.x, vec3<u32>(u_input.d, 0u, 17106u), vec4<f32>(arg_1.a, arg_1.a, 1000f, arg_1.a), vec4<f32>(-2257f, -1300f, -460f, 1375f)))), func_1(Struct_4(Struct_2(vec3<u32>(0u, 4294967295u, arg_0.x), vec4<bool>(true, var_0.x, global0.x, global0.x), vec4<u32>(u_input.c, 46582u, 1u, 0u), arg_1.a, Struct_1(8500i, 0i, vec3<u32>(u_input.d, 24262u, 1u), vec4<f32>(arg_1.a, -168f, arg_1.a, -602f), vec4<f32>(arg_1.a, arg_1.a, arg_1.a, arg_1.a))), vec2<bool>(true, false), global0.yyw))), -2147483647i, -global1.x)));
    let var_2 = arg_3;
    var var_3 = arg_1.b;
    return StorageBuffer(~0u, -953f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_7(~countOneBits(~vec2<u32>(u_input.d, u_input.c)) | _wgslsmith_mult_vec2_u32(firstTrailingBit(select(vec2<u32>(45063u, u_input.c), vec2<u32>(49355u, u_input.d), vec2<bool>(true, true))), ~select(vec2<u32>(61309u, u_input.c), vec2<u32>(u_input.c, 73923u), global0.xx)), Struct_5(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1401f, 238f))))), (min(vec4<i32>(45248i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(global1.x, 7010i, 27200i, 48043i)) & _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, global1.x, u_input.b, 1i), vec4<i32>(-20319i, u_input.a.x, 1i, u_input.a.x))) | ~vec4<i32>(u_input.a.x, global1.x, 1i, global1.x)), vec3<i32>(-(u_input.a.x | -u_input.a.x), func_6(func_5(func_1(Struct_4(Struct_2(vec3<u32>(59989u, u_input.d, 15510u), vec4<bool>(false, true, global0.x, global0.x), vec4<u32>(u_input.c, u_input.c, 0u, 19505u), -117f, Struct_1(global1.x, global1.x, vec3<u32>(u_input.c, 88808u, u_input.d), vec4<f32>(399f, 232f, 1000f, -1000f), vec4<f32>(-761f, -1499f, -836f, 218f))), global0.wx, vec3<bool>(global0.x, true, true))), global1.x, !global0.x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, global0.x, true, global0.x), !global0.x), global1.x), ~(-countOneBits(-2147483647i))), min(~_wgslsmith_mod_vec2_u32(~vec2<u32>(96757u, u_input.c), ~vec2<u32>(u_input.c, 0u)), vec2<u32>(4294967295u, _wgslsmith_sub_u32(2965u, u_input.d))));
}

