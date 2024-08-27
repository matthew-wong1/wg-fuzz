struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: f32,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec4<bool>) -> i32 {
    return ~_wgslsmith_clamp_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.c.x >> (0u % 32u), -43848i), u_input.c.x), -26914i, u_input.c.x);
}

fn func_3(arg_0: f32) -> vec3<i32> {
    global0 = select(vec3<bool>(any(global0.xz), global0.x, false), select(!(!vec3<bool>(global0.x, global0.x, global0.x)), vec3<bool>(!(global0.x && true), true, !global0.x), global0.x), any(!select(global0.zx, !vec2<bool>(true, global0.x), select(vec2<bool>(false, false), global0.xz, global0.x))));
    let var_0 = -2147483647i;
    global0 = !vec3<bool>(true & (any(vec3<bool>(false, global0.x, true)) & true), !global0.x, global0.x);
    var var_1 = Struct_1(1710f, any(global0.yz));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, arg_0, var_1.a) * vec3<f32>(arg_0, -791f, var_1.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(299f, var_1.a, arg_0))))), vec3<f32>(arg_0, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1.a, -1006f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, arg_0, 1374f)))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1017f, -1486f, var_1.a)))))));
    return ~vec3<i32>(var_0, reverseBits(~firstLeadingBit(0i)), var_0);
}

fn func_1() -> Struct_5 {
    global0 = vec3<bool>(true, !(!any(!vec4<bool>(false, false, global0.x, global0.x))), global0.x);
    let var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(1i, abs(func_2(!vec4<bool>(global0.x, true, global0.x, global0.x))), u_input.a.x), func_3(_wgslsmith_f_op_f32(f32(-1f) * -254f)) & vec3<i32>(firstLeadingBit(_wgslsmith_div_i32(0i, u_input.a.x)), u_input.a.x, -2112i));
    var var_1 = vec3<u32>(firstTrailingBit(~(~abs(u_input.b.x))), 45631u, ~(~min(~u_input.b.x, u_input.b.x)));
    let var_2 = Struct_5(!global0.yz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(430f, -1529f)))))), Struct_2(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-876f - 1008f), _wgslsmith_f_op_f32(min(-1440f, 1000f)))), true), select(countOneBits(~u_input.b), firstTrailingBit(_wgslsmith_clamp_vec4_u32(u_input.b, u_input.b, u_input.b)), ~0i == u_input.c.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, u_input.c.x, 0i, -2147483647i) ^ min(vec4<i32>(u_input.c.x, -1i, var_0.x, u_input.a.x), vec4<i32>(var_0.x, -2147483647i, 2147483647i, var_0.x)), abs(~vec4<i32>(-8344i, var_0.x, -1i, var_0.x)), vec4<i32>(_wgslsmith_div_i32(var_0.x, 12927i), ~var_0.x, u_input.c.x, 0i))), min(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(2936u, u_input.b.x, u_input.b.x, var_1.x), vec4<u32>(0u, 32983u, u_input.b.x, var_1.x)), var_1.x) << (_wgslsmith_sub_u32(_wgslsmith_add_u32(var_1.x, 34038u), 2668u ^ var_1.x) % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, _wgslsmith_add_u32(u_input.b.x, var_1.x)), abs(vec2<u32>(14025u, u_input.b.x)))));
    var_1 = ~var_2.c.b.wwy;
    return Struct_5(!select(select(vec2<bool>(false, true), !vec2<bool>(global0.x, global0.x), select(global0.yy, global0.zx, global0.x)), vec2<bool>(true, true), any(vec4<bool>(var_2.c.a.b, var_2.a.x, global0.x, false))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 491f))), Struct_2(var_2.c.a, vec4<u32>(var_1.x << (max(var_2.d, u_input.b.x) % 32u), var_2.c.b.x, var_2.d, reverseBits(_wgslsmith_dot_vec2_u32(u_input.b.zz, vec2<u32>(32265u, var_2.c.b.x)))), abs(-vec4<i32>(u_input.a.x, u_input.a.x, var_0.x, -13470i))), _wgslsmith_add_u32(_wgslsmith_clamp_u32(var_2.d, reverseBits(~1u), u_input.b.x), 4294967295u));
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_5, arg_3: vec2<f32>) -> u32 {
    global0 = select(vec3<bool>(global0.x, false | any(select(vec4<bool>(arg_2.c.a.b, global0.x, global0.x, global0.x), vec4<bool>(true, global0.x, false, true), false)), true), vec3<bool>(arg_2.c.a.b, arg_2.a.x, !global0.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_3.x + 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_2.c.a.a)), _wgslsmith_f_op_f32(exp2(arg_2.b))))) <= arg_3.x);
    global0 = !(!select(vec3<bool>(!global0.x, func_1().a.x, true), vec3<bool>(any(vec3<bool>(true, true, true)), arg_2.a.x, all(vec2<bool>(false, global0.x))), select(all(vec2<bool>(false, arg_2.c.a.b)), true & global0.x, global0.x)));
    var var_0 = ~_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, 0u), vec2<u32>(2493u, 1u)), u_input.b.ww), vec2<u32>(select(_wgslsmith_div_u32(u_input.b.x, 111233u), ~12981u, !arg_2.c.a.b), ~arg_2.c.b.x >> (arg_1 % 32u)));
    var_0 = u_input.b.yz;
    var var_1 = func_1().c;
    return arg_2.c.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-990f - 1171f) + 120f), 493f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -205f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -180f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(789f, 538f, 382f, -293f)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(165f, -819f, 488f, 141f), vec4<f32>(-1000f, 468f, -413f, 163f), global0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(623f, -724f, -235f, 275f) * vec4<f32>(-2188f, -1807f, 392f, 689f)))))));
    var var_1 = vec2<i32>(-1i << (func_4(u_input.c | u_input.c, _wgslsmith_sub_u32(29013u, 1u), func_1(), _wgslsmith_f_op_vec2_f32(-var_0.yz)) % 32u), -2090i) | (_wgslsmith_clamp_vec2_i32(u_input.c.yx, u_input.c.zx, _wgslsmith_clamp_vec2_i32(u_input.a, _wgslsmith_mod_vec2_i32(vec2<i32>(6227i, u_input.a.x), vec2<i32>(u_input.c.x, u_input.c.x)), u_input.a)) | ~abs(func_3(407f).xx));
    var var_2 = select(global0.zy, global0.yz, !func_1().c.a.b);
    var var_3 = Struct_3(func_1().c, u_input.b.x, abs(((vec3<i32>(-21676i, -49132i, 10372i) >> (vec3<u32>(27753u, u_input.b.x, 33075u) % vec3<u32>(32u))) << ((vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u) >> (vec3<u32>(1u, 1u, u_input.b.x) % vec3<u32>(32u))) % vec3<u32>(32u))) << (_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.b.x, u_input.b.x) >> (u_input.b.wxz % vec3<u32>(32u)), ~u_input.b.ywx) % vec3<u32>(32u))));
    var var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1055f + -1527f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1358f, _wgslsmith_f_op_f32(f32(-1f) * -1949f)))), -464f))));
    var var_5 = Struct_3(var_3.a, 69245u, select(min(-min(vec3<i32>(-75558i, var_3.c.x, 0i), var_3.c), ~_wgslsmith_div_vec3_i32(var_3.c, u_input.c)), ~(-firstTrailingBit(var_3.c)), any(!vec3<bool>(var_2.x, var_2.x, false))));
    var var_6 = Struct_5(vec2<bool>(true, any(vec2<bool>(var_2.x, false))), _wgslsmith_div_f32(1157f, 1f), var_5.a, 65727u);
    var var_7 = Struct_4(var_0.yyw);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1602f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_7.a.x)), 236f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_6.c.a.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.a.a) * 2373f)), -_wgslsmith_div_i32(u_input.c.x, var_1.x) == -1i)), var_7.a.zx);
}

