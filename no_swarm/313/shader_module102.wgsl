struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(-1i, 36602i, -17051i), 664f, vec2<i32>(9108i, i32(-2147483648)), true);

var<private> global1: vec4<f32> = vec4<f32>(-353f, 1794f, 196f, -904f);

var<private> global2: Struct_2;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    var var_0 = Struct_2(~_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(91768u, global2.a, u_input.d.x, global2.a)), min(~vec4<u32>(4294967295u, 38094u, u_input.c.x, u_input.b), ~vec4<u32>(56230u, u_input.e.x, 38499u, 52031u))), global2.b, select(select(select(!vec4<bool>(global0.d, global0.d, false, true), select(global2.c, global2.c, vec4<bool>(global2.c.x, false, true, global2.c.x)), vec4<bool>(true, global0.d, false, true)), vec4<bool>(true, select(true, global0.d, global2.b.d), global0.d, global2.c.x), false && global0.d), vec4<bool>(true, !(global2.b.d && global0.d), global2.c.x, !any(global2.c.xzy)), global2.b.d), global1.xwz);
    let var_1 = global2.b;
    var_0 = Struct_2(var_0.a, var_0.b, var_0.c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -357f, 123f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b.b, -967f, 332f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1546f))), 1412f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(151f))))));
    var_0 = Struct_2(0u, global2.b, select(select(vec4<bool>(1267f != global0.b, true, global2.c.x, !var_0.c.x), var_0.c, false), vec4<bool>(select(true, select(global0.d, var_0.c.x, true), !global2.c.x), var_1.d, -804f <= global1.x, true), ~(-var_1.a.x) < 0i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.d))))));
    let var_2 = !vec4<bool>(any(!vec3<bool>(var_0.c.x, false, true)), !var_1.d, false, select(~global2.a != 64697u, false, global2.b.d));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(516f, global2.d.x))), global0.b)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global2.d.x)), _wgslsmith_f_op_f32(-2319f - 305f)))))));
}

fn func_2() -> Struct_2 {
    global0 = global2.b;
    global0 = Struct_1(firstLeadingBit(-vec3<i32>(5040i, -global2.b.a.x, _wgslsmith_div_i32(-46599i, -3621i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.x)))))), vec2<i32>(18975i, select(0i, reverseBits(-36313i), global2.a > ~u_input.b)), global2.c.x);
    let var_0 = global2.b;
    let var_1 = Struct_2(u_input.b >> (global2.a % 32u), global2.b, vec4<bool>(global2.c.x, true, global2.c.x || !(!global2.b.d), u_input.e.x > (reverseBits(43357u) & u_input.d.x)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-344f * 969f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-482f - 192f) - var_0.b)), 849f, -274f));
    let var_2 = _wgslsmith_sub_i32(firstTrailingBit(0i), 46079i);
    return Struct_2(27212u, Struct_1(select(vec3<i32>(firstLeadingBit(-3542i), 1i, var_0.c.x), -vec3<i32>(var_1.b.a.x, var_2, global0.c.x), _wgslsmith_div_f32(-768f, var_1.d.x) <= _wgslsmith_f_op_f32(-var_1.d.x)), global1.x, ~((vec2<i32>(1i, -30115i) | global0.a.xy) & (var_1.b.c << (vec2<u32>(u_input.e.x, u_input.c.x) % vec2<u32>(32u)))), global0.d), vec4<bool>(!var_0.d, global2.b.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + -400f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) + _wgslsmith_f_op_f32(exp2(global1.x))), (789f != _wgslsmith_f_op_f32(1188f + global2.b.b)) || var_0.d), _wgslsmith_f_op_vec3_f32(floor(global1.yxz)));
}

fn func_1() -> Struct_2 {
    var var_0 = global2.b.d;
    global2 = func_2();
    var var_1 = global2.b;
    var var_2 = var_1.c;
    let var_3 = -1i;
    return Struct_2(_wgslsmith_dot_vec2_u32(~(select(u_input.c.yz, u_input.e.yz, vec2<bool>(false, global0.d)) & max(u_input.c.yx, vec2<u32>(84252u, 52027u))), max(_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(93294u, u_input.e.x)), abs(vec2<u32>(global2.a, 71902u)), u_input.e.zz), vec2<u32>(_wgslsmith_div_u32(global2.a, 4294967295u), 1897u))), global2.b, select(global2.c, select(global2.c, global2.c, vec4<bool>(all(vec4<bool>(true, false, global2.c.x, global2.c.x)), u_input.a != 2046i, true, true)), vec4<bool>(true, true, false, global0.d)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(503f, global1.x, global1.x) * _wgslsmith_div_vec3_f32(vec3<f32>(global0.b, -124f, -322f), global2.d))))));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    global0 = arg_1.b;
    var var_0 = select(vec4<bool>(all(select(!vec2<bool>(arg_0, false), !global2.c.yw, arg_1.c.x && false)), !global0.d, arg_1.c.x, _wgslsmith_f_op_f32(round(global0.b)) <= 1767f), func_1().c, func_2().b.d);
    let var_1 = _wgslsmith_sub_vec2_i32(~vec2<i32>(reverseBits(arg_1.b.c.x), func_2().b.c.x), vec2<i32>(select(1439i, arg_1.b.a.x, all(select(vec4<bool>(true, var_0.x, true, true), vec4<bool>(false, global0.d, true, true), vec4<bool>(true, arg_0, arg_2.d, global2.b.d)))), func_2().b.a.x));
    global2 = Struct_2(97924u, Struct_1(_wgslsmith_mult_vec3_i32(arg_1.b.a, -arg_2.a) ^ -(~arg_1.b.a), func_2().b.b, arg_1.b.c, all(var_0.ww)), select(!global2.c, vec4<bool>(!any(global2.c), true, arg_1.b.d, all(func_2().c.zyx)), !arg_0 && arg_0), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.b.b))), _wgslsmith_f_op_f32(global0.b - 1121f), global0.b));
    var var_2 = ~u_input.c;
    return global2.b;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: bool, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = arg_0;
    let var_1 = !global2.c.x && (func_2().b.c.x != ~(~arg_0.b.a.x));
    let var_2 = arg_0.c.x;
    var var_3 = Struct_2(4294967295u, Struct_1(_wgslsmith_sub_vec3_i32(-global2.b.a, -_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.b.a.x, global2.b.c.x, u_input.a), vec3<i32>(global2.b.c.x, var_0.b.c.x, global0.c.x))), 421f, -vec2<i32>(18081i, -arg_0.b.a.x), any(!(!global2.c.wy))), vec4<bool>(true, arg_0.c.x, any(vec3<bool>(global0.d, global0.d, var_1 || arg_3.x)), var_2), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(var_0.b.b, global0.b)), _wgslsmith_div_f32(global2.b.b, global2.b.b), _wgslsmith_div_f32(arg_0.b.b, 1557f)))));
    global0 = global2.b;
    return Struct_2(max(var_0.a, 4294967295u), Struct_1(-_wgslsmith_add_vec3_i32(vec3<i32>(global0.c.x, 0i, var_3.b.c.x), ~vec3<i32>(var_0.b.c.x, 9763i, 22576i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global1.x, -557f)), 763f), -(~vec2<i32>(global2.b.c.x, var_0.b.a.x)) << (arg_1 % vec2<u32>(32u)), !func_1().c.x), func_1().c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.d - _wgslsmith_f_op_vec3_f32(-global1.yyy)) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_3.b.b, 1256f, arg_0.d.x), var_3.d)), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.d.x, -854f, var_3.d.x), global1.yxx)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-var_3.d))) + arg_0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_5(Struct_2(4294967295u, func_4(true, func_1(), Struct_1(vec3<i32>(46961i, u_input.a, u_input.a), global1.x, vec2<i32>(1i, 2403i), global0.d), ~4294967295u), !func_1().c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global2.d)) + _wgslsmith_f_op_vec3_f32(global1.wyy * global1.zyw)) * vec3<f32>(global2.d.x, global2.d.x, _wgslsmith_f_op_f32(round(global0.b))))), _wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(global2.a, global2.a)), firstTrailingBit(vec2<u32>(u_input.e.x, 0u))) & ~vec2<u32>(_wgslsmith_clamp_u32(global2.a, 13252u, u_input.d.x), 7919u), all(global2.c), global2.c.yz);
    var var_0 = Struct_2(~global2.a, global2.b, global2.c, global1.wyx);
    let var_1 = ~_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(min(u_input.c.yy, vec2<u32>(4294967295u, 4294967295u)), u_input.d.zz), u_input.c.zy) >> (_wgslsmith_add_vec2_u32(abs(~vec2<u32>(4294967295u, 1u)), vec2<u32>(firstLeadingBit(0u), ~var_0.a)) % vec2<u32>(32u));
    global1 = vec4<f32>(func_5(Struct_2(var_0.a, func_2().b, !(!vec4<bool>(global0.d, global2.b.d, var_0.c.x, var_0.c.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -534f, var_0.d.x)))), max(select(_wgslsmith_sub_vec2_u32(vec2<u32>(48926u, 1u), vec2<u32>(var_1.x, 11638u)), _wgslsmith_sub_vec2_u32(vec2<u32>(var_1.x, 1u), vec2<u32>(13131u, 0u)), vec2<bool>(var_0.c.x, var_0.c.x)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(63930u, var_1.x), vec2<u32>(14204u, 4294967295u))), global2.b.d, !var_0.c.xx).d.x, _wgslsmith_f_op_f32(ceil(var_0.b.b)), 914f, -1480f);
    var var_2 = 1130f;
    global2 = func_2();
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-175f, global2.b.b, _wgslsmith_f_op_f32(global0.b + global2.d.x), 738f) + vec4<f32>(-932f, global1.x, 253f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.b), global1.x, true)))));
    var var_3 = Struct_1(~var_0.b.a, _wgslsmith_f_op_f32(f32(-1f) * -1896f), countOneBits(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-12056i, u_input.a), vec2<i32>(1i, global2.b.c.x), vec2<i32>(50315i, 33964i)), -global2.b.a.yy), _wgslsmith_sub_vec2_i32(func_5(Struct_2(78508u, Struct_1(vec3<i32>(45188i, 33464i, 0i), global0.b, vec2<i32>(32719i, -1i), false), var_0.c, global1.zzz), vec2<u32>(37068u, 0u), global2.b.d, vec2<bool>(var_0.c.x, global0.d)).b.a.xz, var_0.b.c << (vec2<u32>(0u, var_0.a) % vec2<u32>(32u))))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.d.zy * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -795f), _wgslsmith_f_op_f32(exp2(var_0.d.x))))));
}

