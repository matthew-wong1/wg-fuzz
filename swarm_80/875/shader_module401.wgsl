struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
    c: Struct_2,
    d: u32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: u32 = 9431u;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>) -> i32 {
    global1 = 30096u;
    let var_0 = ~(~(~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 22127u, 1u), vec3<u32>(60350u, u_input.c, 1u)), max(u_input.c, u_input.c), u_input.c)));
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(-852f, _wgslsmith_f_op_f32(floor(arg_0.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_0.ww)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-734f, arg_0.x)))), 4294967295u), abs(_wgslsmith_mod_i32(u_input.b, -_wgslsmith_mod_i32(1i, u_input.b))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1681f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.x)) - arg_0.x)), _wgslsmith_mult_u32(abs(~71373u), 0u)));
    var var_2 = Struct_2(var_1.c, var_1.b, var_1.c);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.c.a.x)) * arg_0.x) * _wgslsmith_f_op_f32(ceil(var_2.a.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -2342f)) - _wgslsmith_f_op_f32(-var_2.a.a.x));
    return 8154i;
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> Struct_3 {
    let var_0 = vec3<i32>(~(~u_input.a), -_wgslsmith_add_i32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(381f, arg_1.a.a.x, 160f, arg_1.a.a.x))), 30762i), reverseBits(32007i));
    let var_1 = ~_wgslsmith_clamp_u32(arg_1.a.b, u_input.d, arg_1.c.b) >> ((firstLeadingBit(arg_1.c.b) ^ arg_1.c.b) % 32u);
    global1 = _wgslsmith_div_u32(~(~reverseBits(37108u)), _wgslsmith_clamp_u32(73368u, 0u, arg_1.c.b));
    var var_2 = _wgslsmith_f_op_f32(exp2(arg_1.a.a.x));
    let var_3 = arg_1.c;
    return Struct_3(_wgslsmith_mult_i32(arg_1.b, max(arg_0, _wgslsmith_clamp_i32(2147483647i, -1i, 0i)) << (~(~u_input.d) % 32u)), vec2<bool>(any(global0.wy), any(!(!vec2<bool>(global0.x, false)))), arg_1, u_input.c, ~_wgslsmith_add_vec2_u32(~countOneBits(vec2<u32>(42304u, var_3.b)), ~(~vec2<u32>(var_3.b, u_input.c))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: u32) -> Struct_1 {
    var var_0 = global0.zy;
    var_0 = arg_1.b;
    let var_1 = arg_1.c.c;
    global1 = ~4294967295u;
    var var_2 = 603f;
    return Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -632f), _wgslsmith_f_op_f32(min(var_1.a.x, arg_1.c.c.a.x))))), var_1.b);
}

fn func_1(arg_0: Struct_2) -> vec2<u32> {
    global0 = select(!(!select(select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(global0.x, true, global0.x, true), global0.x), select(vec4<bool>(global0.x, false, true, false), vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(true, global0.x, false, true)), vec4<bool>(false, global0.x, false, global0.x))), !vec4<bool>(false, all(!global0.zx), !global0.x, !(arg_0.a.a.x <= -598f)), any(global0.xx));
    let var_0 = func_4(~vec4<i32>(-1i, ~(-2147483647i), 1i, abs(-2147483647i)), func_2(-9314i, Struct_2(Struct_1(vec2<f32>(913f, -880f), u_input.d), -50330i, Struct_1(arg_0.a.a, 27947u | arg_0.a.b))), ~vec2<u32>(arg_0.a.b, reverseBits(~4050u)), ~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 26829u, 44609u, arg_0.a.b), vec4<u32>(arg_0.c.b, 4294967295u, arg_0.c.b, u_input.d)))));
    global1 = ~((~(~13970u) << ((firstLeadingBit(u_input.d) ^ (var_0.b & u_input.d)) % 32u)) >> (func_2(-2147483647i, arg_0).c.c.b % 32u));
    global1 = 0u & u_input.c;
    var var_1 = Struct_3(u_input.a, select(func_2(-1i, Struct_2(Struct_1(arg_0.c.a, 50030u), func_2(arg_0.b, Struct_2(Struct_1(vec2<f32>(var_0.a.x, arg_0.a.a.x), 1u), u_input.a, Struct_1(var_0.a, u_input.d))).a, func_2(arg_0.b, arg_0).c.c)).b, select(vec2<bool>(global0.x, select(true, global0.x, false)), !global0.yw, global0.zz), false), func_2(arg_0.b, arg_0).c, ((_wgslsmith_mult_u32(1757u, 45019u) ^ u_input.c) >> (var_0.b % 32u)) & u_input.c, _wgslsmith_div_vec2_u32(abs(~vec2<u32>(arg_0.c.b, 4294967295u)), ~min(~vec2<u32>(45143u, 39693u), vec2<u32>(arg_0.c.b, 45384u) & vec2<u32>(arg_0.c.b, 1u))));
    return _wgslsmith_mult_vec2_u32(var_1.e, var_1.e);
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<f32>) -> bool {
    var var_0 = vec3<bool>(true, !(!global0.x) || !(!(u_input.b < 1i)), !all(func_2(u_input.b, func_2(u_input.a, Struct_2(Struct_1(vec2<f32>(1751f, 304f), 1u), 1i, Struct_1(vec2<f32>(-599f, 634f), u_input.c))).c).b));
    global1 = u_input.c;
    let var_1 = vec3<bool>(global0.x, all(!(!vec4<bool>(var_0.x, var_0.x, false, true))), (((9007i ^ u_input.a) << (u_input.d % 32u)) | func_3(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.x, arg_1.x, 1653f, 119f), vec4<f32>(1861f, arg_1.x, -395f, 1247f))))) < _wgslsmith_div_i32(-(u_input.a << (u_input.c % 32u)), u_input.b | countOneBits(u_input.b)));
    let var_2 = Struct_1(vec2<f32>(-452f, func_4((vec4<i32>(-53461i, u_input.a, -37052i, u_input.a) >> (vec4<u32>(4294967295u, 4746u, 21651u, arg_0.x) % vec4<u32>(32u))) << (vec4<u32>(arg_0.x, 18726u, 19508u, arg_0.x) % vec4<u32>(32u)), func_2(28750i, func_2(u_input.a, Struct_2(Struct_1(vec2<f32>(arg_1.x, arg_1.x), 55356u), u_input.b, Struct_1(vec2<f32>(arg_1.x, arg_1.x), arg_0.x))).c), arg_0, _wgslsmith_add_u32(func_1(Struct_2(Struct_1(arg_1.yy, 4294967295u), 46990i, Struct_1(arg_1.yx, u_input.c))).x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 18143u, u_input.c, u_input.c), vec4<u32>(arg_0.x, u_input.d, 1u, arg_0.x)))).a.x), ~arg_0.x);
    var_0 = select(vec3<bool>(true, global0.x, func_2(1i, Struct_2(func_4(vec4<i32>(u_input.b, 37052i, u_input.a, u_input.a), Struct_3(1i, global0.zw, Struct_2(var_2, 0i, var_2), 0u, arg_0), arg_0, u_input.d), max(7195i, u_input.b), Struct_1(vec2<f32>(var_2.a.x, arg_1.x), 1u))).b.x), !(!(!select(vec3<bool>(var_0.x, false, global0.x), global0.wxy, var_0.x))), var_1.x);
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 61143u;
    let var_0 = select(!(!global0.xzy), !global0.zyx, all(global0.yw));
    global0 = vec4<bool>(false, !func_5(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 36825u), vec2<u32>(4294967295u, 11987u)), func_1(Struct_2(Struct_1(vec2<f32>(411f, -130f), 1u), -68923i, Struct_1(vec2<f32>(-901f, -342f), u_input.d)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(179f, -379f, -344f) * vec3<f32>(974f, -369f, 1487f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-181f, 1301f, -708f)))), true, !all(select(var_0, global0.zxz, vec3<bool>(false, var_0.x, false))) | func_5(_wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(u_input.d, u_input.d)), vec2<u32>(0u, 54186u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1586f, -575f)), vec3<f32>(-964f, -1234f, -852f), !vec3<bool>(true, global0.x, false)))));
    let var_1 = ~_wgslsmith_sub_vec3_u32(~(~vec3<u32>(u_input.d, 16674u, u_input.c)), vec3<u32>(1u, 1u, u_input.d) << (~firstLeadingBit(vec3<u32>(u_input.d, 20500u, u_input.d)) % vec3<u32>(32u)));
    global0 = !(!select(!(!vec4<bool>(false, global0.x, true, false)), !select(vec4<bool>(false, var_0.x, false, false), vec4<bool>(false, var_0.x, true, true), global0.x), !(!vec4<bool>(true, global0.x, global0.x, false))));
    global0 = vec4<bool>(true, false, any(select(select(!vec3<bool>(global0.x, var_0.x, false), vec3<bool>(true, true, var_0.x), select(vec3<bool>(true, true, false), vec3<bool>(true, global0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true))), !select(vec3<bool>(global0.x, true, global0.x), global0.yyx, var_0), false)), select((-u_input.a == _wgslsmith_div_i32(u_input.a, -6728i)) & any(!vec4<bool>(false, global0.x, false, global0.x)), true, func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -7897i, u_input.a, u_input.b), vec4<i32>(0i, u_input.b, u_input.a, u_input.a)), Struct_2(Struct_1(vec2<f32>(-514f, 664f), 1u), ~(-34872i), func_2(-2147483647i, Struct_2(Struct_1(vec2<f32>(815f, 395f), var_1.x), u_input.a, Struct_1(vec2<f32>(-258f, 462f), u_input.d))).c.c)).b.x));
    var var_2 = ~u_input.b;
    var_2 = (i32(-1i) * -(~u_input.b)) ^ 5734i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-658f - -1000f), func_2(u_input.b, Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(670f, -1000f), vec2<f32>(-260f, 1433f))), u_input.d ^ 0u), _wgslsmith_mult_i32(abs(29715i), u_input.a), func_2(~(-2147483647i), func_2(u_input.b, Struct_2(Struct_1(vec2<f32>(453f, 417f), 47178u), u_input.b, Struct_1(vec2<f32>(-648f, 930f), 14910u))).c).c.c)).c.b);
}

