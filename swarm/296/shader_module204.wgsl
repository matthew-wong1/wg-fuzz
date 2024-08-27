struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, false);

var<private> global1: i32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>) -> u32 {
    let var_0 = 214f;
    global1 = 2147483647i;
    global1 = _wgslsmith_clamp_i32(-(~_wgslsmith_add_i32(_wgslsmith_add_i32(arg_1.x, 8516i), abs(arg_0))), (-select(-2147483647i, arg_0, global0.x) & _wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.a.x, 0i), arg_0, arg_0)) << (firstLeadingBit(14048u) % 32u), max(-1i, _wgslsmith_div_i32(arg_1.x ^ arg_1.x, 2147483647i) & arg_0));
    let var_1 = Struct_2(select(select(!(!vec3<bool>(global0.x, global0.x, false)), vec3<bool>(select(false, false, false), true, true), false), !vec3<bool>(all(vec4<bool>(false, global0.x, global0.x, global0.x)), true, any(global0.wyy)), vec3<bool>(true, global0.x, all(global0.xz))), Struct_1(arg_1.x, select(global0.xzz, vec3<bool>(var_0 == 249f, select(global0.x, global0.x, global0.x), global0.x), true)), Struct_1(1i, !global0.yxz), _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_div_i32(arg_1.x, u_input.a.x) >> (_wgslsmith_clamp_u32(7698u, 4294967295u, 9585u) % 32u), reverseBits(_wgslsmith_mod_i32(21827i, -2147483647i))), u_input.a.xw));
    var var_2 = var_1;
    return _wgslsmith_dot_vec4_u32((vec4<u32>(29192u, 1u, abs(34932u), 0u) ^ vec4<u32>(4160u, 1u, ~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(53173u, 1u, 0u, 4294967295u), vec4<u32>(0u, 24506u, 53529u, 1u)))) >> (vec4<u32>(_wgslsmith_mult_u32(1u, _wgslsmith_div_u32(22500u, 20275u)), _wgslsmith_add_u32(1u, reverseBits(24263u)), firstTrailingBit(~64087u), 1u) % vec4<u32>(32u)), min(vec4<u32>(1u, 1u, 1u, 1u), ~select(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(4294967295u, 4294967295u, 88095u, 28501u), select(vec4<bool>(true, false, true, var_2.c.b.x), vec4<bool>(global0.x, global0.x, var_1.c.b.x, var_1.a.x), true))));
}

fn func_4(arg_0: vec2<u32>) -> u32 {
    var var_0 = Struct_1(0i, global0.wxz);
    let var_1 = ~(~vec4<i32>(0i, -2147483647i, var_0.a, 1i));
    let var_2 = Struct_2(!var_0.b, Struct_1(-1i, var_0.b), Struct_1(~reverseBits(u_input.a.x), select(select(select(global0.xyy, vec3<bool>(true, false, global0.x), var_0.b), !global0.xxx, global0.x), !vec3<bool>(true, var_0.b.x, true), true)), countOneBits(_wgslsmith_mult_vec2_i32(countOneBits(var_1.xz), vec2<i32>(var_1.x, 2147483647i)) << (min(reverseBits(arg_0), vec2<u32>(44200u, 61922u)) % vec2<u32>(32u))));
    let var_3 = 24336u ^ arg_0.x;
    var var_4 = ~(~abs(min(vec4<u32>(var_3, arg_0.x, 1u, 15612u), vec4<u32>(1u, 52315u, 638u, arg_0.x))) | min(vec4<u32>(select(4294967295u, 1u, true), 1u, reverseBits(arg_0.x), _wgslsmith_add_u32(arg_0.x, var_3)), vec4<u32>(countOneBits(0u), max(1u, 1u), ~arg_0.x, 4294967295u << (0u % 32u))));
    return ~arg_0.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec2<u32>) -> Struct_3 {
    var var_0 = Struct_3(func_4(vec2<u32>(select(21645u, arg_3.x, true), func_3(u_input.a.x, u_input.a))), u_input.a.x, Struct_2(!select(select(arg_1.b, vec3<bool>(true, global0.x, false), arg_0.b.x), arg_2.wxx, any(vec3<bool>(false, arg_2.x, true))), arg_1, arg_0, vec2<i32>(arg_1.a >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.x, arg_3.x, arg_3.x, arg_3.x), vec4<u32>(61169u, arg_3.x, arg_3.x, arg_3.x)) % 32u), arg_1.a)));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1481f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -246f), -155f))))));
    var var_2 = arg_0;
    var var_3 = vec3<bool>(any(vec2<bool>(true, true)), true, !any(select(select(vec2<bool>(true, false), var_2.b.yy, vec2<bool>(true, true)), var_2.b.yx, false)));
    global0 = !select(select(arg_2, !(!vec4<bool>(var_2.b.x, arg_1.b.x, true, false)), arg_0.b.x == false), select(vec4<bool>(!arg_1.b.x, arg_2.x & global0.x, any(arg_2), true), arg_2, _wgslsmith_mult_u32(785u, 1u) < ~arg_3.x), select(vec4<bool>(any(vec4<bool>(true, false, true, var_2.b.x)), true, var_1 == var_1, select(true, arg_0.b.x, false)), select(vec4<bool>(false, var_3.x, false, arg_0.b.x), arg_2, true), !(var_3.x | arg_0.b.x)));
    return Struct_3(arg_3.x, -25821i, Struct_2(var_2.b, Struct_1(~40316i, select(vec3<bool>(true, var_0.c.c.b.x, false), vec3<bool>(true, false, var_2.b.x), vec3<bool>(arg_1.b.x, false, var_2.b.x))), arg_0, u_input.a.xw));
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: i32, arg_3: vec4<u32>) -> f32 {
    let var_0 = func_2(arg_1.c.b, func_2(Struct_1(_wgslsmith_dot_vec2_i32(arg_1.c.d, -arg_1.c.d), select(arg_1.c.a, !vec3<bool>(global0.x, true, false), vec3<bool>(true, true, global0.x))), Struct_1(_wgslsmith_dot_vec4_i32(u_input.a, max(u_input.a, u_input.a)), vec3<bool>(true, global0.x, func_2(arg_1.c.c, arg_1.c.b, vec4<bool>(true, arg_1.c.b.b.x, global0.x, global0.x), arg_3.zy).c.b.b.x)), select(vec4<bool>(false, arg_1.c.a.x, any(vec2<bool>(true, true)), any(vec3<bool>(false, false, arg_1.c.a.x))), !vec4<bool>(false, global0.x, global0.x, global0.x), select(!vec4<bool>(true, false, true, arg_1.c.b.b.x), select(vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(global0.x, true, global0.x, true), true), select(vec4<bool>(false, arg_1.c.b.b.x, false, arg_1.c.b.b.x), vec4<bool>(false, true, arg_1.c.b.b.x, global0.x), false))), arg_3.yw).c.c, vec4<bool>(false, any(vec4<bool>(true, arg_0 < -226f, false, arg_2 >= 1i)), false, false), vec2<u32>(_wgslsmith_mult_u32((arg_3.x & 32194u) << (47232u % 32u), _wgslsmith_mult_u32(~30903u, arg_1.a)), ~0u)).c.c;
    var var_1 = select(vec2<bool>(!(!all(vec4<bool>(global0.x, arg_1.c.c.b.x, global0.x, false))), true), vec2<bool>(global0.x, all(global0.yy)), !(arg_0 != arg_0));
    return arg_0;
}

fn func_6(arg_0: f32, arg_1: vec4<f32>, arg_2: bool, arg_3: bool) -> i32 {
    global1 = select(_wgslsmith_dot_vec3_i32(vec3<i32>(max(u_input.a.x, u_input.a.x), 24389i, i32(-1i) * -18622i), u_input.a.zzy), u_input.a.x, true) >> (_wgslsmith_clamp_u32(125804u, 55658u, firstLeadingBit(_wgslsmith_mod_u32(1u, abs(22096u)))) % 32u);
    global0 = !vec4<bool>(global0.x, all(global0.zzw), arg_2, select(true, arg_3, false));
    var var_0 = func_2(Struct_1(1i, !vec3<bool>(false, -944f != arg_0, u_input.a.x > u_input.a.x)), func_2(Struct_1(u_input.a.x, !func_2(Struct_1(1i, vec3<bool>(arg_3, arg_2, arg_3)), Struct_1(17286i, global0.wxx), vec4<bool>(arg_2, true, true, arg_3), vec2<u32>(104286u, 0u)).c.b.b), Struct_1(u_input.a.x, vec3<bool>(true, true, true)), vec4<bool>(select(false || arg_2, true, true), true, !global0.x, arg_2), ~vec2<u32>(1u, firstLeadingBit(1u))).c.c, select(select(!select(vec4<bool>(global0.x, arg_2, arg_2, false), vec4<bool>(true, global0.x, true, global0.x), vec4<bool>(false, true, true, global0.x)), !vec4<bool>(global0.x, false, global0.x, true), all(global0.zz)), vec4<bool>(true, !(!global0.x), true || (arg_2 || global0.x), !arg_3), true), _wgslsmith_div_vec2_u32(vec2<u32>(1u, _wgslsmith_div_u32(min(1u, 0u), 33417u)), ~abs(firstLeadingBit(vec2<u32>(56600u, 19499u))))).c.b.b.x;
    var_0 = true;
    global0 = !select(vec4<bool>(1i == _wgslsmith_mod_i32(26829i, u_input.a.x), true, true, global0.x), vec4<bool>(arg_2, select(any(vec2<bool>(false, true)), true, global0.x && arg_2), arg_2, !arg_3), vec4<bool>(true, any(vec3<bool>(true, false, arg_3)), true, func_2(Struct_1(u_input.a.x, global0.yyz), func_2(Struct_1(-37034i, vec3<bool>(global0.x, arg_2, true)), Struct_1(u_input.a.x, vec3<bool>(arg_3, arg_2, false)), vec4<bool>(false, false, arg_2, true), vec2<u32>(4294967295u, 4294967295u)).c.c, !vec4<bool>(arg_3, arg_2, true, true), ~vec2<u32>(1u, 57780u)).c.c.b.x));
    return _wgslsmith_dot_vec2_i32(u_input.a.ww, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i) ^ vec2<i32>(1i, 68292i), max(firstLeadingBit(u_input.a.zw), vec2<i32>(u_input.a.x, u_input.a.x)))) & u_input.a.x;
}

fn func_1() -> u32 {
    var var_0 = ~func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(-2327f, func_2(Struct_1(u_input.a.x, vec3<bool>(false, true, true)), Struct_1(u_input.a.x, vec3<bool>(true, global0.x, true)), vec4<bool>(false, false, global0.x, true), vec2<u32>(78451u, 4294967295u)), u_input.a.x, firstLeadingBit(vec4<u32>(44818u, 4294967295u, 6997u, 41594u))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(374f, -878f, 262f, -1461f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(229f, -1393f, -683f, -933f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1246f, 933f, 608f, 274f)))), global0.x, any(global0.yzz));
    global0 = vec4<bool>(all(!select(select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(false, false, global0.x, global0.x), global0.x), !vec4<bool>(false, true, global0.x, global0.x), global0.x)), all(!select(func_2(Struct_1(u_input.a.x, global0.xxx), Struct_1(u_input.a.x, vec3<bool>(global0.x, true, global0.x)), vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec2<u32>(3241u, 0u)).c.a, global0.zyw, true)), any(!global0.wzy), all(select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, true), false && global0.x)) & global0.x);
    let var_1 = u_input.a.x;
    let var_2 = abs(~firstLeadingBit(func_4(vec2<u32>(53713u, 4294967295u))) | 0u);
    var var_3 = Struct_3(~var_2, var_1, Struct_2(select(!vec3<bool>(global0.x, true, true), func_2(Struct_1(u_input.a.x, global0.xyw), func_2(Struct_1(-24046i, vec3<bool>(true, global0.x, global0.x)), Struct_1(-2147483647i, vec3<bool>(true, false, true)), vec4<bool>(true, true, global0.x, false), vec2<u32>(4294967295u, 0u)).c.b, select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(true, true, global0.x, true), false), vec2<u32>(var_2, var_2)).c.c.b, true), Struct_1(0i, vec3<bool>(global0.x, true, false)), func_2(func_2(func_2(Struct_1(1i, global0.ywx), Struct_1(-20707i, vec3<bool>(global0.x, global0.x, global0.x)), vec4<bool>(global0.x, true, global0.x, false), vec2<u32>(6295u, var_2)).c.b, func_2(Struct_1(var_1, vec3<bool>(true, global0.x, true)), Struct_1(-11570i, vec3<bool>(false, global0.x, false)), vec4<bool>(false, false, false, global0.x), vec2<u32>(var_2, 84688u)).c.c, !vec4<bool>(global0.x, global0.x, false, global0.x), select(vec2<u32>(4294967295u, var_2), vec2<u32>(1u, var_2), global0.x)).c.c, Struct_1(firstLeadingBit(-23962i), vec3<bool>(true, global0.x, global0.x)), vec4<bool>(true, !global0.x, true, true), firstTrailingBit(~vec2<u32>(4294967295u, var_2))).c.c, vec2<i32>(-var_1, min(-38434i, u_input.a.x) >> (~var_2 % 32u))));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(func_1() | _wgslsmith_clamp_u32(~min(4294967295u, 30836u), 0u, ~(86868u << (1u % 32u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-137f, -1000f, 1000f, -401f) * vec4<f32>(1978f, 1700f, -742f, -350f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1407f, 377f, -146f, -458f))))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1052f, -116f, 282f)))))));
    var_0 = _wgslsmith_div_u32(4294967295u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(4294967295u, 1u, 9652u)), _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(0u, 5343u, 55535u)), min(vec3<u32>(48562u, 87897u, 3783u), vec3<u32>(34602u, 1u, 1u)))), ~(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 15895u, 5486u, 19240u), vec4<u32>(3742u, 9453u, 0u, 4294967295u)) ^ 4294967295u)));
    let var_2 = u_input.a.x;
    var var_3 = func_2(Struct_1(countOneBits(_wgslsmith_mult_i32(var_2, 0i)), !select(select(vec3<bool>(true, global0.x, global0.x), global0.yyy, true), vec3<bool>(global0.x, global0.x, global0.x), global0.xwy)), func_2(func_2(func_2(func_2(Struct_1(10947i, vec3<bool>(false, global0.x, global0.x)), Struct_1(u_input.a.x, global0.yxw), vec4<bool>(false, false, false, false), vec2<u32>(36087u, 41500u)).c.c, func_2(Struct_1(u_input.a.x, vec3<bool>(false, true, global0.x)), Struct_1(1i, global0.xzy), vec4<bool>(false, true, global0.x, global0.x), vec2<u32>(0u, 35862u)).c.b, !vec4<bool>(global0.x, true, global0.x, global0.x), ~vec2<u32>(0u, 4294967295u)).c.c, func_2(Struct_1(var_2, vec3<bool>(false, global0.x, true)), func_2(Struct_1(var_2, global0.wwx), Struct_1(2147483647i, vec3<bool>(true, true, true)), vec4<bool>(global0.x, true, global0.x, global0.x), vec2<u32>(1415u, 1u)).c.b, vec4<bool>(true, true, true, true), _wgslsmith_div_vec2_u32(vec2<u32>(11987u, 31826u), vec2<u32>(47u, 4294967295u))).c.b, !vec4<bool>(global0.x, false, false, global0.x), countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(41965u, 9316u), vec2<u32>(33949u, 59325u), vec2<u32>(3884u, 0u)))).c.c, func_2(func_2(Struct_1(var_2, vec3<bool>(true, false, true)), func_2(Struct_1(var_2, global0.xwz), Struct_1(u_input.a.x, vec3<bool>(false, false, true)), vec4<bool>(global0.x, false, global0.x, global0.x), vec2<u32>(33297u, 1u)).c.b, !vec4<bool>(false, global0.x, false, global0.x), vec2<u32>(1u, 1u)).c.c, func_2(func_2(Struct_1(32761i, global0.zxw), Struct_1(-2147483647i, global0.wxz), vec4<bool>(true, false, global0.x, true), vec2<u32>(31031u, 7605u)).c.b, Struct_1(-36364i, vec3<bool>(global0.x, global0.x, false)), vec4<bool>(global0.x, true, true, true), vec2<u32>(20605u, 17108u)).c.b, vec4<bool>(!global0.x, !global0.x, global0.x, !global0.x), abs(firstTrailingBit(vec2<u32>(21116u, 3878u)))).c.b, !select(select(vec4<bool>(global0.x, true, false, false), vec4<bool>(global0.x, global0.x, global0.x, global0.x), global0.x), vec4<bool>(true, true, true, true), !vec4<bool>(false, global0.x, true, global0.x)), ~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(32279u, 1u), vec2<u32>(45375u, 0u), vec2<u32>(4294967295u, 1u)))).c.c, select(select(!(!vec4<bool>(global0.x, true, true, true)), !(!vec4<bool>(global0.x, global0.x, global0.x, global0.x)), ~u_input.a.x > _wgslsmith_add_i32(-2147483647i, var_2)), select(vec4<bool>(false, global0.x || global0.x, !global0.x, true), select(vec4<bool>(global0.x, global0.x, false, global0.x), !vec4<bool>(global0.x, true, global0.x, true), select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(global0.x, global0.x, true, false), global0.x)), global0.x), !(u_input.a.x < var_2)), vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(22345u, 87896u, 67587u), vec3<u32>(67991u, 1u, 62145u), vec3<u32>(1u, 0u, 1u)) >> (vec3<u32>(1u, 7262u, 4294967295u) % vec3<u32>(32u))), _wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 0u, 85138u), vec3<u32>(71966u, 55204u, 56875u), vec3<u32>(29089u, 26849u, 4294967295u)), vec3<u32>(1u, 1u, 1u)))).c;
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(sign(var_1.x))))), var_1.x, var_1.x) - var_1);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xx);
}

