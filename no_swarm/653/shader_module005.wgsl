struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, false);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> bool {
    global1 = vec4<bool>(true, !(all(!global1.yz) & !select(true, true, true)), false, any(!vec4<bool>(false && global1.x, any(vec3<bool>(global1.x, true, false)), global1.x, 1i > u_input.b)));
    let var_0 = 1i;
    var var_1 = vec4<i32>(var_0, _wgslsmith_sub_i32(-firstLeadingBit(0i & var_0), ~27587i), u_input.b, 0i);
    var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x << (41077u % 32u), -_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-7659i, -2121i, var_0), var_0), _wgslsmith_div_i32(-2147483647i, 1i), 26954i), vec4<i32>(var_1.x, -var_1.x, _wgslsmith_div_i32(_wgslsmith_mult_i32(var_1.x, var_0), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_1.x, 1i, -1i), vec4<i32>(0i, var_0, -62334i, -38748i))), 1i) ^ (-vec4<i32>(u_input.b, var_1.x, var_1.x, 0i) | select(-vec4<i32>(u_input.b, u_input.b, var_0, var_1.x), vec4<i32>(0i, -28334i, var_1.x, var_1.x), vec4<bool>(global1.x, global1.x, true, true))), vec4<i32>(u_input.b, 2147483647i, 0i, var_1.x));
    let var_2 = _wgslsmith_sub_i32(var_1.x, _wgslsmith_mult_i32(~_wgslsmith_mult_i32(firstTrailingBit(-2147483647i), var_0), -15744i));
    return var_0 == var_2;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: Struct_3) -> Struct_1 {
    global1 = !select(select(!vec4<bool>(global1.x, global1.x, true, true), vec4<bool>(true, !global1.x, func_3(), true), global1.x), !(!select(vec4<bool>(global1.x, true, global1.x, true), vec4<bool>(true, false, global1.x, true), vec4<bool>(global1.x, false, true, false))), global1.x);
    global0 = abs(0u);
    let var_0 = select(select(vec4<bool>(any(!global1.ww), u_input.b == _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, arg_2.a.x, arg_0.x), arg_0.wxw), false, true), vec4<bool>(global1.x | any(vec4<bool>(global1.x, true, true, false)), global1.x, true, func_3()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-729f)), _wgslsmith_div_f32(575f, 321f)) >= _wgslsmith_f_op_f32(-227f - 701f)), !select(vec4<bool>(true, true, true, true), vec4<bool>(any(global1.wx), any(vec2<bool>(true, global1.x)), global1.x, global1.x), !vec4<bool>(false, global1.x, global1.x, global1.x)), true);
    let var_1 = var_0.x;
    let var_2 = u_input.a.yyz;
    return Struct_1(all(vec4<bool>(var_0.x, false, var_0.x, var_1)), !vec3<bool>(var_0.x, func_3(), true), var_2.yx);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> i32 {
    global1 = select(select(!select(vec4<bool>(true, arg_1.b.a, false, global1.x), vec4<bool>(true, arg_1.b.b.x, arg_1.b.b.x, global1.x), vec4<bool>(true, arg_1.b.a, true, false)), vec4<bool>(all(select(vec2<bool>(true, arg_0.b.x), vec2<bool>(true, false), false)), true, false, true), !(!vec4<bool>(arg_0.b.x, global1.x, true, false))), select(vec4<bool>(any(arg_1.b.b.zy), true, -1i == countOneBits(u_input.b), false), !vec4<bool>(global1.x, true, all(vec3<bool>(true, arg_1.b.a, arg_0.b.x)), arg_0.a || arg_0.b.x), all(!vec3<bool>(true, arg_0.b.x, arg_0.a))), vec4<bool>(arg_1.a.x > ~u_input.b, false, all(vec4<bool>(arg_0.b.x, true, true, !arg_0.b.x)), arg_1.b.b.x));
    var var_0 = -min(vec2<i32>(_wgslsmith_mod_i32(i32(-1i) * -1i, arg_1.a.x), firstLeadingBit(u_input.b)), arg_1.a.ww);
    global1 = select(vec4<bool>(false, any(!select(vec4<bool>(arg_1.b.b.x, arg_1.b.a, arg_1.b.a, global1.x), vec4<bool>(true, false, true, false), false)), func_3(), arg_1.b.b.x), select(!(!vec4<bool>(arg_0.b.x, false, false, false)), !select(select(vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(true, global1.x, arg_0.b.x, global1.x), vec4<bool>(global1.x, false, true, arg_1.b.a)), vec4<bool>(false, global1.x, false, true), vec4<bool>(false, false, false, arg_0.b.x)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), func_2(vec4<i32>(arg_1.a.x, u_input.b, var_0.x, 35053i), vec3<u32>(arg_1.b.c.x, 4294967295u, arg_1.b.c.x), Struct_3(vec3<i32>(-2428i, 37910i, -314i))).b.xz))), vec4<bool>(arg_0.b.x != false, true, !all(vec3<bool>(false, arg_0.b.x, false)), arg_1.b.b.x));
    let var_1 = ~(~_wgslsmith_dot_vec3_u32(min(u_input.a.zxx, u_input.a.yzx), u_input.a.xyy | vec3<u32>(35065u, arg_0.c.x, 61341u))) == 1u;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-561f)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-429f)) * _wgslsmith_div_f32(-1000f, 1054f))))));
    return _wgslsmith_mod_i32(1i << ((~_wgslsmith_div_u32(arg_1.b.c.x, 69881u) << (~(~4294967295u) % 32u)) % 32u), countOneBits(-14013i));
}

fn func_1() -> vec3<bool> {
    var var_0 = vec3<i32>(-7855i, -1i, func_4(Struct_1(true, select(vec3<bool>(global1.x, true, true), global1.ywy, true), vec2<u32>(5394u, u_input.a.x)), Struct_2(vec4<i32>(-57950i, u_input.b, u_input.b, u_input.b) | vec4<i32>(18320i, u_input.b, u_input.b, u_input.b), func_2(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), u_input.a.xwy, Struct_3(vec3<i32>(31765i, u_input.b, 1i)))))) >> (u_input.a.yzw % vec3<u32>(32u));
    var_0 = min(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(var_0.x, -31354i, u_input.b)), ~vec3<i32>(9332i, u_input.b, var_0.x), vec3<i32>(u_input.b, u_input.b, var_0.x)), vec3<i32>(_wgslsmith_add_i32(0i, u_input.b), firstLeadingBit(u_input.b), ~u_input.b)), select(vec3<i32>(var_0.x, -1i, var_0.x) | vec3<i32>(22257i, -9446i, -2147483647i), abs(select(vec3<i32>(var_0.x, 2147483647i, 0i), vec3<i32>(-2147483647i, var_0.x, -5175i), global1.yxz)), vec3<bool>(select(global1.x, global1.x, global1.x), !global1.x, false))) << (_wgslsmith_add_vec3_u32(~select(~u_input.a.zwy, _wgslsmith_div_vec3_u32(u_input.a.zwx, vec3<u32>(u_input.a.x, 0u, u_input.a.x)), global1.x), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 105234u, 26267u), u_input.a.zzx) ^ select(u_input.a.x, u_input.a.x, false), u_input.a.x, _wgslsmith_add_u32(_wgslsmith_add_u32(0u, u_input.a.x), _wgslsmith_add_u32(0u, 64790u)))) % vec3<u32>(32u));
    let var_1 = 36653u;
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-931f, -365f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(802f)) * -1463f), _wgslsmith_f_op_f32(f32(-1f) * -2095f)) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -718f), -218f, -287f, _wgslsmith_f_op_f32(f32(-1f) * -436f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-835f, 461f, 1000f, -783f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1387f, 1139f, 824f, -1226f)))), vec4<f32>(1f, 1f, 1f, 1f)), select(select(vec4<bool>(true, true, true, true), select(!vec4<bool>(global1.x, false, true, false), vec4<bool>(true, false, global1.x, global1.x), vec4<bool>(false, global1.x, true, true)), vec4<bool>(select(true, global1.x, global1.x), !global1.x, global1.x, var_1 > var_1)), vec4<bool>(select(func_2(vec4<i32>(-2147483647i, 7648i, 11179i, 0i), u_input.a.yyx, Struct_3(vec3<i32>(var_0.x, 56112i, 0i))).b.x, true & global1.x, false), func_2(vec4<i32>(19i, 2147483647i, 0i, u_input.b), vec3<u32>(1u, var_1, u_input.a.x), Struct_3(vec3<i32>(0i, 6759i, 39441i))).a == global1.x, any(select(vec4<bool>(false, global1.x, true, false), vec4<bool>(global1.x, false, true, global1.x), vec4<bool>(true, global1.x, false, true))), (true & global1.x) || all(global1.xwx)), select(!vec4<bool>(global1.x, global1.x, false, global1.x), select(vec4<bool>(false, true, false, global1.x), !vec4<bool>(global1.x, false, global1.x, false), !vec4<bool>(global1.x, global1.x, global1.x, global1.x)), global1.x))));
    var var_3 = _wgslsmith_mult_vec3_i32(vec3<i32>(max(-1i, var_0.x), 1i, min(-24699i, -2147483647i)) >> (_wgslsmith_mult_vec3_u32(max(vec3<u32>(4294967295u, var_1, var_1), u_input.a.yzw), vec3<u32>(var_1, u_input.a.x, u_input.a.x)) % vec3<u32>(32u)), -vec3<i32>(2147483647i, func_4(Struct_1(false, vec3<bool>(true, true, false), vec2<u32>(u_input.a.x, var_1)), Struct_2(vec4<i32>(var_0.x, 0i, 31753i, 17226i), Struct_1(false, global1.zyw, u_input.a.ww))), _wgslsmith_mod_i32(-12201i, var_0.x))) | firstLeadingBit(_wgslsmith_add_vec3_i32(max(-vec3<i32>(34659i, u_input.b, var_0.x), reverseBits(vec3<i32>(u_input.b, u_input.b, 2147483647i))), _wgslsmith_div_vec3_i32(-vec3<i32>(u_input.b, 1i, var_0.x), vec3<i32>(u_input.b, u_input.b, var_0.x))));
    return vec3<bool>(_wgslsmith_f_op_f32(ceil(var_2.x)) == _wgslsmith_f_op_f32(588f - -1000f), global1.x, any(!vec2<bool>(false, func_2(vec4<i32>(u_input.b, -4936i, 54381i, u_input.b), vec3<u32>(22081u, 12505u, var_1), Struct_3(vec3<i32>(0i, 23323i, -48039i))).b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = Struct_2(vec4<i32>(_wgslsmith_mult_i32(abs(u_input.b), countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, -2147483647i), vec3<i32>(0i, u_input.b, u_input.b)))), u_input.b | -1i, -2147483647i, _wgslsmith_clamp_i32(i32(-1i) * -56857i, _wgslsmith_sub_i32(u_input.b, -30520i), 12635i | u_input.b)), Struct_1(any(func_1()), !global1.yww, vec2<u32>(~u_input.a.x << (abs(8238u) % 32u), ~(u_input.a.x >> (u_input.a.x % 32u)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-383f - 1089f), 612f) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1141f, -103f)) - vec2<f32>(655f, -112f))), vec2<f32>(-354f, -1298f)));
    global1 = !vec4<bool>(!var_1.b.b.x, ~(-1i) >= _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.b, -2147483647i), ~0i), true, ~(~u_input.a.x) >= 1u);
    var_1 = Struct_2(abs(min(countOneBits(vec4<i32>(u_input.b, -18254i, 34972i, -1i)), vec4<i32>(max(var_1.a.x, u_input.b), _wgslsmith_clamp_i32(u_input.b, -26507i, -40871i), _wgslsmith_mod_i32(var_1.a.x, var_1.a.x), abs(37904i)))), Struct_1(var_1.b.a, vec3<bool>(var_1.a.x >= _wgslsmith_add_i32(13712i, var_1.a.x), all(!vec4<bool>(global1.x, var_1.b.a, global1.x, global1.x)), _wgslsmith_f_op_f32(var_2.x * 293f) < _wgslsmith_f_op_f32(-var_2.x)), vec2<u32>(1u, _wgslsmith_div_u32(_wgslsmith_div_u32(0u, var_1.b.c.x), reverseBits(4294967295u)))));
    var_0 = global1.x;
    let var_3 = var_1.a.x;
    var var_4 = Struct_3(-max(vec3<i32>(2147483647i, u_input.b, select(2147483647i, 1i, true)), ~var_1.a.wxy));
    let x = u_input.a;
    s_output = StorageBuffer(~(max(-12210i, var_4.a.x) << (var_1.b.c.x % 32u)), 11713u, _wgslsmith_clamp_u32(var_1.b.c.x, _wgslsmith_add_u32(~(~u_input.a.x), select(var_1.b.c.x, ~0u, var_1.b.b.x)), var_1.b.c.x), var_2.x);
}

