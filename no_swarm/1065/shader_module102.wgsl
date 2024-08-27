struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec4<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: bool = false;

var<private> global2: array<Struct_3, 19>;

var<private> global3: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(Struct_2(Struct_1(vec2<bool>(false, true), -1016f, vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true), -1235f, vec2<bool>(false, true))), true, vec4<f32>(515f, 142f, 132f, -909f), 4294967295u), Struct_3(Struct_2(Struct_1(vec2<bool>(true, true), -1299f, vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true), 1109f, vec2<bool>(false, false))), false, vec4<f32>(248f, -271f, 1389f, -582f), 54444u), Struct_3(Struct_2(Struct_1(vec2<bool>(false, true), 1134f, vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true), 406f, vec2<bool>(true, true))), true, vec4<f32>(-1000f, -190f, -2238f, -767f), 4294967295u), Struct_3(Struct_2(Struct_1(vec2<bool>(false, true), -303f, vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false), -230f, vec2<bool>(true, true))), true, vec4<f32>(886f, -257f, 748f, -2831f), 0u), Struct_3(Struct_2(Struct_1(vec2<bool>(false, true), 675f, vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true), -147f, vec2<bool>(false, true))), false, vec4<f32>(405f, 997f, -345f, 101f), 4294967295u), Struct_3(Struct_2(Struct_1(vec2<bool>(true, false), -301f, vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true), -1013f, vec2<bool>(true, false))), true, vec4<f32>(520f, 770f, -109f, 741f), 20003u), Struct_3(Struct_2(Struct_1(vec2<bool>(false, false), 2648f, vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false), -462f, vec2<bool>(false, false))), true, vec4<f32>(1641f, 1685f, -671f, -1000f), 0u), Struct_3(Struct_2(Struct_1(vec2<bool>(false, false), -837f, vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true), 922f, vec2<bool>(false, false))), false, vec4<f32>(-1211f, 1787f, 1000f, 1171f), 0u));

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_2) -> bool {
    global0 = select(!(!vec3<bool>(false, true, any(global4.a))), vec3<bool>(true, arg_2.a.a.x || any(select(vec3<bool>(true, global4.a.x, true), vec3<bool>(false, global4.a.x, arg_2.a.a.x), true)), true), any(vec4<bool>(!(!arg_2.b.c.x), any(vec4<bool>(true, false, arg_0, false)), !all(global4.a), all(vec2<bool>(false, arg_0)))));
    global1 = all(select(vec4<bool>(-700f < arg_2.a.b, true, arg_2.a.a.x, true), vec4<bool>(true, !all(vec3<bool>(arg_0, false, true)), any(vec3<bool>(arg_0, false, false)), select(true, true, all(vec4<bool>(global0.x, true, false, global4.c.x)))), arg_2.a.a.x));
    var var_0 = -43283i;
    return all(global4.c);
}

fn func_2(arg_0: f32, arg_1: vec2<f32>) -> Struct_3 {
    global2 = array<Struct_3, 19>();
    var var_0 = any(!global0.yz);
    global2 = array<Struct_3, 19>();
    global0 = select(!(!vec3<bool>(false, global4.a.x && global4.a.x, func_3(false, vec3<f32>(658f, 1074f, -541f), Struct_2(Struct_1(vec2<bool>(true, true), arg_0, global4.a), Struct_1(vec2<bool>(global4.c.x, global4.a.x), arg_1.x, global0.xx))))), !vec3<bool>(true, all(select(vec4<bool>(global4.a.x, false, true, false), vec4<bool>(global0.x, global0.x, true, global4.c.x), global4.c.x)), true), select(!select(global0.x, any(vec4<bool>(global0.x, global4.a.x, true, global0.x)), all(global0.xx)), true, global4.c.x));
    var var_1 = global0.x;
    return global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(~firstTrailingBit(u_input.e), ~(~0u), ~14684u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x | 127848u, ~2614u, u_input.d, abs(u_input.e)), firstLeadingBit(firstLeadingBit(vec4<u32>(u_input.a.x, 1u, u_input.e, u_input.e))))), u_input.d), 19u)];
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: vec4<f32>) -> vec3<i32> {
    let var_0 = !(any(vec4<bool>(false, all(arg_1), any(arg_1), false)) || false);
    var var_1 = true && any(select(vec4<bool>(select(arg_1.x, arg_2.b, global0.x), var_0, false, true), select(vec4<bool>(arg_1.x, global4.c.x, arg_2.a.a.a.x, true), vec4<bool>(arg_1.x, var_0, false, false), true), vec4<bool>(var_0, true, !var_0, false)));
    var var_2 = Struct_2(arg_2.a.a, arg_2.a.a);
    global4 = var_2.a;
    let var_3 = 1100f;
    return vec3<i32>(1i, (firstLeadingBit(countOneBits(-26623i)) >> (_wgslsmith_dot_vec4_u32(max(vec4<u32>(4294967295u, 0u, 4294967295u, u_input.b), vec4<u32>(30514u, 4294967295u, 21828u, u_input.c)), vec4<u32>(1u, 4294967295u, 0u, arg_2.d)) % 32u)) >> (max(~arg_2.d, ~(~4294967295u)) % 32u), firstLeadingBit(2147483647i) >> (~(~abs(arg_2.d)) % 32u));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_3) -> vec4<bool> {
    global3 = array<Struct_3, 8>();
    var var_0 = _wgslsmith_f_op_f32(sign(-187f));
    return !vec4<bool>(true, all(vec3<bool>(false, arg_1.b, true)), any(vec4<bool>(!arg_1.a.a.a.x, all(vec4<bool>(false, global0.x, arg_1.b, true)), arg_1.b, global4.a.x)), false);
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: f32) -> Struct_2 {
    let var_0 = arg_0;
    let var_1 = vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(30229u, u_input.d, u_input.a.x), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(4294967295u, u_input.b, u_input.c)), ~(~vec3<u32>(u_input.d, 0u, 4294967295u))), ~countOneBits(vec3<u32>(13812u, 0u, u_input.b) >> (vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x) % vec3<u32>(32u)))), max(reverseBits(u_input.d), abs((u_input.a.x | 33213u) | u_input.a.x)));
    global1 = true;
    global4 = arg_1.b;
    global0 = func_5(~firstTrailingBit(vec3<i32>(i32(-1i) * -44701i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -58051i), vec2<i32>(0i, 11638i)), countOneBits(70415i))), func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-757f - 214f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.a.b, arg_2), vec2<f32>(global4.b, arg_2), vec2<bool>(var_0.x, global4.a.x))), vec2<f32>(arg_2, -1016f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global4.b, -1297f))))))).xzx;
    return func_2(2308f, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_2, global4.b)))))).a;
}

fn func_1() -> Struct_1 {
    var var_0 = func_6(!func_5(func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4.b, -776f, global4.b, global4.b), vec4<f32>(426f, -262f, -134f, -889f), vec4<bool>(false, true, global0.x, global4.a.x))), select(vec4<bool>(true, false, global4.a.x, global4.a.x), vec4<bool>(global4.a.x, global0.x, false, global4.a.x), global4.a.x), func_2(global4.b, vec2<f32>(1880f, global4.b)), vec4<f32>(628f, global4.b, global4.b, global4.b)), Struct_3(Struct_2(Struct_1(global4.c, global4.b, vec2<bool>(global4.c.x, false)), Struct_1(global0.xx, global4.b, vec2<bool>(true, global4.a.x))), func_3(global4.c.x, vec3<f32>(396f, -317f, global4.b), Struct_2(Struct_1(global0.yx, 612f, global0.yx), Struct_1(vec2<bool>(true, false), global4.b, vec2<bool>(false, true)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-3476f, global4.b, 926f, global4.b), vec4<f32>(global4.b, -215f, global4.b, -1211f))), 7783u ^ u_input.e)), func_2(-1561f, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-291f, global4.b) + vec2<f32>(global4.b, -494f)) + vec2<f32>(-288f, global4.b))))).a, _wgslsmith_div_f32(-672f, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1053f)) - _wgslsmith_div_f32(-1043f, global4.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.b, 908f) + vec2<f32>(global4.b, global4.b)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(570f, -1023f)))).a.a.b));
    var_0 = func_6(!select(!vec4<bool>(false, global0.x, false, false), !(!vec4<bool>(var_0.b.c.x, global0.x, false, global0.x)), u_input.c == _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.d, u_input.a.x))), Struct_2(func_2(_wgslsmith_f_op_f32(exp2(global4.b)), _wgslsmith_div_vec2_f32(vec2<f32>(1551f, 2671f), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.b, var_0.a.b) * vec2<f32>(763f, 231f)))).a.b, var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.b) + 1000f));
    global2 = array<Struct_3, 19>();
    global1 = !(_wgslsmith_add_i32(abs(select(35263i, 1i, var_0.a.a.x)), 2147483647i) >= _wgslsmith_div_i32(_wgslsmith_mult_i32(0i, abs(1i)), 1i));
    var var_1 = !select(vec2<bool>(all(vec3<bool>(global4.a.x, var_0.b.a.x, global4.c.x)), true), !vec2<bool>(true, var_0.b.c.x), select(global0.xz, func_5(select(vec3<i32>(-12210i, 1i, 2147483647i), vec3<i32>(2147483647i, -1i, -37049i), false), func_2(var_0.a.b, vec2<f32>(651f, 544f))).yx, func_3(global4.c.x, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-879f, global4.b, 1533f), vec3<f32>(global4.b, 106f, var_0.b.b), false)), Struct_2(var_0.b, var_0.a))));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_1();
    global3 = array<Struct_3, 8>();
    global1 = true;
    let var_0 = vec4<u32>(_wgslsmith_div_u32(~1u, func_2(_wgslsmith_f_op_f32(-1000f + -172f), vec2<f32>(860f, global4.b)).d), ~u_input.d, ~_wgslsmith_mod_u32(firstTrailingBit(11045u), 20930u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.b, u_input.a.x), reverseBits(0u)), ~u_input.c)) >> (~vec4<u32>(~u_input.a.x & 17657u, u_input.d >> (~48955u % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.e, u_input.a.x, 120373u, u_input.a.x), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 38217u, u_input.a.x, u_input.c), vec4<u32>(u_input.d, u_input.e, u_input.a.x, 27521u))), max(firstLeadingBit(u_input.e), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, u_input.a.x, u_input.a.x), vec3<u32>(4294967295u, u_input.b, 56716u)))) % vec4<u32>(32u));
    var var_1 = func_2(global4.b, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(select(global4.b, _wgslsmith_f_op_f32(step(-536f, global4.b)), true)), -524f))));
    var var_2 = Struct_1(!func_2(func_2(_wgslsmith_f_op_f32(-var_1.a.b.b), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global4.b, var_1.c.x)))).a.a.b, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global4.b, global4.b)))).a.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global4.b, 1848f, true)) - _wgslsmith_f_op_f32(floor(-235f)))) * _wgslsmith_f_op_f32(-810f - _wgslsmith_f_op_f32(-700f + _wgslsmith_f_op_f32(-global4.b)))), func_1().c);
    var_2 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.x * _wgslsmith_f_op_f32(f32(-1f) * -433f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-497f)) * _wgslsmith_f_op_f32(var_2.b * 1437f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(141f - _wgslsmith_f_op_f32(-135f * 1973f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.b, -254f)))) - _wgslsmith_div_vec2_f32(var_1.c.ww, var_1.c.wz))).a.b;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.c.x, var_1.c.x, -982f), var_1.c.zwx))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.x, -337f, global4.b) * var_1.c.xzx), var_1.c.zyy))))) - vec3<f32>(global4.b, -710f, 1390f));
    let x = u_input.a;
    s_output = StorageBuffer(-1460f, ~(vec4<u32>(_wgslsmith_div_u32(4294967295u, var_1.d), 40423u, var_1.d, var_1.d) >> (reverseBits(var_0) % vec4<u32>(32u))), ~(-39177i), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(func_4(vec4<f32>(global4.b, var_1.c.x, var_2.b, -611f), vec4<bool>(global0.x, false, var_2.a.x, false), Struct_3(Struct_2(var_1.a.b, Struct_1(var_1.a.a.c, var_3.x, vec2<bool>(var_2.a.x, var_1.a.a.c.x))), global0.x, vec4<f32>(-1504f, -1000f, 227f, global4.b), var_0.x), var_1.c).xy, countOneBits(vec2<i32>(-1i, -2147483647i))), countOneBits(vec2<i32>(1i, 1i))) | -12751i);
}

