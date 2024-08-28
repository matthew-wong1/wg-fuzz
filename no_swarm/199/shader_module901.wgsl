struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-282f, 932f, -227f, -1482f);

var<private> global1: i32;

var<private> global2: vec3<i32> = vec3<i32>(-18774i, 29752i, -1i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = Struct_1(u_input.a.wxy);
    global2 = vec3<i32>(-u_input.d, 10159i >> (~(~_wgslsmith_dot_vec2_u32(vec2<u32>(400u, 27603u), var_0.a.zy)) % 32u), ~(~(i32(-1i) * -52989i)));
    let var_1 = vec2<bool>(true || arg_0, true);
    let var_2 = Struct_1(_wgslsmith_div_vec3_u32(var_0.a, _wgslsmith_mod_vec3_u32(u_input.c.xwy, var_0.a)) & ~_wgslsmith_div_vec3_u32(~vec3<u32>(17487u, 55893u, u_input.c.x), u_input.a.yxy));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1019f)) - _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(round(1238f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(select(-297f, global0.x, false)), var_1.x)), -1029f) + _wgslsmith_div_vec4_f32(vec4<f32>(-374f, _wgslsmith_f_op_f32(-1555f + global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -523f) + 1502f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, 195f, global0.x), vec4<f32>(-1000f, -1164f, global0.x, -162f)), vec4<f32>(1378f, global0.x, global0.x, 1813f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1004f, global0.x, -561f, 1326f) + vec4<f32>(global0.x, 772f, -1715f, 1904f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x) * vec4<f32>(global0.x, global0.x, -1812f, global0.x))))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(global0.x))));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(func_3(false)), _wgslsmith_f_op_f32(-global0.x), arg_1))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1, 590f, 284f, -2515f), vec4<f32>(global0.x, global0.x, arg_1, arg_1))))))));
    var var_0 = -19114i;
    var var_1 = u_input.b;
    let var_2 = -654f;
    let var_3 = arg_2;
    return var_3;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = vec4<bool>(all(arg_0) | arg_0.x, !(arg_0.x & arg_0.x), any(select(vec3<bool>(any(arg_0), !arg_0.x, arg_0.x), vec3<bool>(all(vec3<bool>(arg_0.x, false, arg_0.x)), true, 2028i != u_input.b.x), arg_0.x)), true);
    var var_1 = var_0;
    global1 = _wgslsmith_sub_i32(global2.x, global2.x);
    var var_2 = !var_0;
    let var_3 = -vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(-1i, 1i, u_input.d, global2.x) & vec4<i32>(global2.x, u_input.d, -2147483647i, u_input.b.x)), (~global2.x | 1i) << (u_input.a.x % 32u), _wgslsmith_dot_vec2_i32(global2.zx, ~firstTrailingBit(u_input.b.yz)), u_input.d);
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> vec3<i32> {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-1245f, global0.x, -495f, global0.x), vec4<f32>(1219f, global0.x, global0.x, 2106f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-134f, global0.x, global0.x, global0.x))), vec4<bool>(true, all(vec3<bool>(false, true, false)), all(vec3<bool>(true, false, false)), arg_2.x <= 32448u)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x))), -593f, _wgslsmith_f_op_f32(f32(-1f) * -1271f), -220f)));
    global0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(282f)) - global0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1224f), _wgslsmith_f_op_f32(max(298f, _wgslsmith_f_op_f32(exp2(global0.x)))), (global0.x <= global0.x) && all(vec3<bool>(false, true, true)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-678f, 400f), 1721f))))));
    var var_0 = u_input.d;
    var var_1 = all(vec2<bool>(true, true));
    global1 = u_input.b.x;
    return abs(vec3<i32>(_wgslsmith_mult_i32(global2.x, global2.x), global2.x, max(_wgslsmith_dot_vec3_i32(u_input.b.wwy, u_input.b.yxw), _wgslsmith_mult_i32(u_input.b.x, global2.x)) << (~4294967295u % 32u)));
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(727f + _wgslsmith_f_op_f32(global0.x + 299f)), _wgslsmith_f_op_f32(exp2(global0.x)), -863f))));
    let var_1 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(min(u_input.c.x, u_input.a.x & u_input.a.x) >> (~(~u_input.a.x) % 32u), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(min(1u, 5490u), 2461u, u_input.a.x), _wgslsmith_mod_u32(27728u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 46961u, 4294967295u, u_input.a.x), u_input.c)))), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, abs(u_input.c.x), abs(u_input.c.x)), u_input.c.wyz));
    var var_2 = vec2<u32>(1u, reverseBits(~(var_1 | _wgslsmith_mod_u32(4294967295u, 6569u))));
    global2 = func_5(func_4(vec2<bool>(false && (u_input.a.x != 72351u), _wgslsmith_f_op_f32(abs(global0.x)) > global0.x), func_2(Struct_1(vec3<u32>(1u, var_1, 30651u)), 1463f, Struct_1(vec3<u32>(var_2.x, 113270u, 26452u))), func_2(func_2(Struct_1(vec3<u32>(var_1, 4294967295u, 1u)), _wgslsmith_f_op_f32(var_0.x - global0.x), func_2(Struct_1(u_input.c.wzx), global0.x, Struct_1(u_input.a.xzx))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))), Struct_1(func_2(Struct_1(u_input.c.yzz), 1000f, Struct_1(vec3<u32>(var_1, var_2.x, 4294967295u))).a))), func_2(func_4(!select(vec2<bool>(arg_0, false), vec2<bool>(true, true), vec2<bool>(true, arg_0)), func_2(func_2(Struct_1(u_input.c.ywx), var_0.x, Struct_1(u_input.a.wwz)), var_0.x, func_2(Struct_1(u_input.a.zzy), var_0.x, Struct_1(u_input.c.yww))), Struct_1(func_4(vec2<bool>(false, false), Struct_1(u_input.c.xww), Struct_1(u_input.c.xxz)).a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-781f, -585f)), func_4(vec2<bool>(true, true), Struct_1(vec3<u32>(var_1, 4294967295u, 20657u)), Struct_1(vec3<u32>(u_input.a.x, u_input.c.x, 0u)))), ~u_input.a);
    let var_3 = global2.x;
    return func_4(!select(vec2<bool>(arg_0 && arg_0, false || arg_0), select(select(vec2<bool>(true, arg_0), vec2<bool>(false, false), vec2<bool>(arg_0, true)), select(vec2<bool>(false, false), vec2<bool>(false, arg_0), arg_0), true), vec2<bool>(arg_0, any(vec2<bool>(false, arg_0)))), Struct_1(abs(_wgslsmith_add_vec3_u32(u_input.c.zyx, u_input.c.xyw ^ vec3<u32>(1u, var_1, 1u)))), func_2(Struct_1(_wgslsmith_div_vec3_u32(u_input.c.ywz, _wgslsmith_mod_vec3_u32(u_input.a.wxz, vec3<u32>(u_input.c.x, 0u, u_input.c.x)))), _wgslsmith_f_op_f32(-var_0.x), Struct_1(u_input.a.zxy)));
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = select(abs(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, min(12845u, u_input.a.x)), arg_1.a.yy)), abs(arg_2.a.zy), true);
    var var_1 = 32105u;
    var_0 = ~(vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_1.a.zx, arg_2.a.xx, arg_1.a.xz), vec2<u32>(0u, 4294967295u) & vec2<u32>(1u, arg_2.a.x)), 18828u) >> (vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1696u), arg_2.a), ~var_0.x) % vec2<u32>(32u)));
    var var_2 = Struct_1(func_1(global2.x > _wgslsmith_dot_vec4_i32(vec4<i32>(112216i, -2147483647i, global2.x, 29637i), ~u_input.b)).a);
    var var_3 = func_2(arg_2, _wgslsmith_f_op_f32(step(global0.x, global0.x)), Struct_1(vec3<u32>(_wgslsmith_dot_vec2_u32(var_2.a.xy, vec2<u32>(arg_1.a.x, 0u) >> (vec2<u32>(var_0.x, 7271u) % vec2<u32>(32u))), ~20612u, abs(var_0.x))));
    return Struct_1(vec3<u32>(61504u, _wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(var_0.x, 1u, 4294967295u, 4294967295u))), firstLeadingBit(abs(0u))), arg_1.a.x));
}

fn func_7(arg_0: Struct_1, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = func_6(select(vec2<bool>(arg_2, !(global0.x == global0.x)), !select(!vec2<bool>(false, arg_1), !vec2<bool>(arg_2, true), u_input.a.x <= 0u), select(!(!vec2<bool>(false, arg_1)), select(select(vec2<bool>(true, true), vec2<bool>(arg_1, true), false), !vec2<bool>(arg_2, true), select(vec2<bool>(false, true), vec2<bool>(true, arg_2), false)), all(!vec3<bool>(arg_1, true, arg_1)))), arg_0, Struct_1(~min(func_4(vec2<bool>(true, true), Struct_1(u_input.c.zwy), arg_3).a, vec3<u32>(arg_3.a.x, u_input.c.x, u_input.a.x) | u_input.c.zwy)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -731f, global0.x)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 824f, -133f)))), vec3<bool>(false, false, false))) + _wgslsmith_f_op_vec3_f32(-global0.wyy)));
    let var_1 = any(vec2<bool>(!(!any(vec3<bool>(false, arg_2, arg_2))), arg_2));
    var var_2 = (_wgslsmith_dot_vec2_u32(func_2(var_0, 1f, Struct_1(u_input.c.xxz)).a.yz, _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 20896u), arg_3.a.xz) ^ arg_0.a.yx) <= ~(~1u)) | arg_2;
    var var_3 = vec3<i32>(~(u_input.d ^ _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(u_input.d, -2257i, -14941i, u_input.d))), _wgslsmith_add_i32(max(abs(global2.x), _wgslsmith_div_i32(_wgslsmith_mod_i32(1i, 635i), abs(global2.x))), 1i), -abs(_wgslsmith_sub_i32(u_input.d, -2147483647i)));
    var_3 = -(~u_input.b.wwx);
    return -min(_wgslsmith_clamp_vec3_i32(vec3<i32>(-13091i, -21981i, _wgslsmith_div_i32(var_3.x, u_input.d)), _wgslsmith_mult_vec3_i32(u_input.b.ywx, vec3<i32>(global2.x, global2.x, 52552i)), u_input.b.zxz), -u_input.b.zxw);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    global2 = abs(func_7(func_6(vec2<bool>(true, true), func_1(any(vec3<bool>(false, true, false))), func_4(vec2<bool>(false, false), func_2(Struct_1(u_input.a.xyx), -243f, Struct_1(u_input.a.xwx)), Struct_1(vec3<u32>(0u, u_input.c.x, 4294967295u))), global0.wyx), false, false, Struct_1(_wgslsmith_add_vec3_u32(u_input.a.yxz, ~vec3<u32>(u_input.c.x, 33167u, u_input.c.x)))));
    global1 = -44635i;
    global1 = -u_input.d;
    global0 = vec4<f32>(global0.x, -1364f, 1064f, 128f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(-min(func_7(Struct_1(u_input.c.wyz), false, false, Struct_1(u_input.c.xxz)).yy, _wgslsmith_mult_vec2_i32(global2.yx, vec2<i32>(-18536i, global2.x))), ~vec2<i32>(_wgslsmith_div_i32(0i, -1i), _wgslsmith_div_i32(global2.x, u_input.d))), abs(vec2<u32>(36761u, 1u)), 8300i, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1227f)), _wgslsmith_f_op_vec2_f32(select(global0.zy, vec2<f32>(240f, global0.x), false)), true))))));
}

