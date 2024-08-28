struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec3<i32>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(244f, vec4<bool>(true, true, true, false), vec3<i32>(-20223i, -26027i, 37399i), 311f, vec4<f32>(-1267f, -166f, 102f, -1083f)));

var<private> global1: bool = false;

var<private> global2: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: vec4<f32>) -> vec3<bool> {
    let var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(53155u, ~u_input.c), ~(~vec2<u32>(u_input.c, u_input.a))), _wgslsmith_clamp_u32(0u, 4294967295u, _wgslsmith_mult_u32(select(reverseBits(u_input.c), 0u, u_input.c < u_input.a), select(u_input.a, u_input.c, global2.x))), 4294967295u);
    global2 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(861f * -677f)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * -572f)), all(select(arg_1.b.b, !arg_1.a.b, arg_1.b.b)), select(arg_1.b.b.x, ~(4294967295u & u_input.a) >= var_0.x, global2.x));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-1200f - _wgslsmith_f_op_f32(max(-1483f, 878f))), vec4<bool>(u_input.d == _wgslsmith_div_i32(arg_2.x, -41202i), all(!arg_1.b.b), true, true), arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1284f + -1070f)) - _wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(exp2(arg_1.a.d)))), _wgslsmith_f_op_vec4_f32(-arg_3)), Struct_1(arg_0, arg_1.b.b, firstLeadingBit(vec3<i32>(-1i, -30054i, 1i)), -124f, vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0 + arg_1.b.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-137f)) * _wgslsmith_div_f32(111f, arg_0)), -551f, -553f)));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, 1229f)))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0, arg_1.a.e.x))), all(arg_1.a.b))) - _wgslsmith_f_op_vec2_f32(min(arg_3.wz, vec2<f32>(-635f, _wgslsmith_f_op_f32(f32(-1f) * -2173f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -1156f), vec2<f32>(-1021f, 548f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-753f, arg_1.b.e.x))))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-695f)), _wgslsmith_f_op_f32(-arg_1.b.e.x), -937f, _wgslsmith_f_op_f32(-arg_3.x)), _wgslsmith_f_op_vec4_f32(abs(arg_3))), var_1.a.e, !select(vec4<bool>(var_1.a.b.x, false, arg_1.a.b.x, var_1.a.b.x), vec4<bool>(global2.x, true, arg_1.b.b.x, false), select(arg_1.a.b, var_1.b.b, vec4<bool>(var_1.a.b.x, var_1.a.b.x, true, false))))) * arg_3);
    return !select(select(!arg_1.a.b.yzy, var_1.a.b.zwy, var_1.a.b.x), var_1.b.b.zyx, select(arg_1.b.b.yyy, arg_1.b.b.zwy, select(select(var_1.b.b.yyz, var_1.b.b.ywz, vec3<bool>(false, false, false)), !arg_1.a.b.yxz, vec3<bool>(false, arg_1.b.b.x, global2.x))));
}

fn func_2(arg_0: f32) -> Struct_1 {
    global2 = select(!select(func_3(_wgslsmith_f_op_f32(round(arg_0)), Struct_2(Struct_1(1000f, vec4<bool>(true, true, false, global2.x), vec3<i32>(-59816i, u_input.d, -2147483647i), -631f, vec4<f32>(arg_0, arg_0, arg_0, 558f)), Struct_1(570f, vec4<bool>(global2.x, true, global2.x, global2.x), vec3<i32>(u_input.b, -1i, u_input.b), -2436f, vec4<f32>(-2066f, -1492f, arg_0, arg_0))), vec3<i32>(u_input.b, -29889i, u_input.d), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, arg_0, arg_0, arg_0), vec4<f32>(-1457f, 1000f, -2069f, arg_0)))), !(!vec3<bool>(false, global2.x, global2.x)), vec3<bool>(global2.x, u_input.d >= -2147483647i, true)), !func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_0)), Struct_2(Struct_1(arg_0, vec4<bool>(global2.x, false, true, false), vec3<i32>(u_input.b, u_input.d, 11416i), arg_0, vec4<f32>(-354f, -757f, arg_0, arg_0)), global0[_wgslsmith_index_u32(u_input.c, 1u)]), ~vec3<i32>(u_input.d, u_input.b, u_input.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, arg_0, -2033f, -357f))))), select(vec3<bool>(global2.x, !all(vec4<bool>(true, false, true, true)), any(!vec4<bool>(global2.x, global2.x, false, true))), select(func_3(_wgslsmith_div_f32(arg_0, arg_0), Struct_2(Struct_1(739f, vec4<bool>(true, false, global2.x, global2.x), vec3<i32>(0i, -35841i, 2147483647i), arg_0, vec4<f32>(-130f, -113f, arg_0, arg_0)), global0[_wgslsmith_index_u32(67451u, 1u)]), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, 2147483647i, u_input.b), vec3<i32>(u_input.b, u_input.d, -1i)), vec4<f32>(arg_0, 128f, 546f, 770f)), vec3<bool>(true, true, all(vec4<bool>(true, true, false, global2.x))), false), vec3<bool>(!global2.x, true, (u_input.b >= u_input.b) & false)));
    let var_0 = _wgslsmith_f_op_f32(min(arg_0, arg_0));
    global0 = array<Struct_1, 1>();
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, arg_0, var_0, var_0), vec4<f32>(-2490f, -1191f, arg_0, -408f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -828f, 1607f, arg_0)))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2137f, arg_0, -615f, 1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, -1191f, arg_0) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_0, 888f, var_0)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-163f, 1000f, 339f, 1000f), vec4<f32>(1884f, arg_0, arg_0, arg_0))))) - vec4<f32>(_wgslsmith_f_op_f32(select(1252f, var_0, true)), _wgslsmith_f_op_f32(-arg_0), 656f, _wgslsmith_f_op_f32(max(arg_0, var_0))))), global2.x));
    global2 = vec3<bool>(true, false, false);
    return global0[_wgslsmith_index_u32(27851u, 1u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = vec4<u32>(u_input.a, u_input.c, ~u_input.c, max(_wgslsmith_div_u32(u_input.c, u_input.c), ~(~u_input.c))) ^ vec4<u32>(_wgslsmith_dot_vec4_u32(min(vec4<u32>(59133u, u_input.a, 89944u, 1u), vec4<u32>(0u, 2025u, 48647u, 10061u)), vec4<u32>(0u, 4013u, u_input.c, u_input.a)) << (u_input.a % 32u), ~(~0u), _wgslsmith_clamp_u32(firstTrailingBit(0u), reverseBits(4294967295u), max(u_input.a, u_input.c)) | u_input.c, firstTrailingBit(70016u));
    global2 = vec3<bool>(false, arg_0.b.x, all(!(!arg_0.b)));
    var var_1 = false;
    var var_2 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~abs(var_0.wyx), firstLeadingBit(var_0.xww)), 68243u);
    let var_3 = countOneBits(vec2<i32>(countOneBits(arg_1.c.x) | 27915i, ~arg_1.c.x));
    return arg_1.c.zx | vec2<i32>(u_input.b, _wgslsmith_div_i32(~arg_0.c.x, ~_wgslsmith_mult_i32(u_input.b, arg_1.c.x)));
}

fn func_5(arg_0: vec2<i32>, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = vec2<bool>(global2.x, select(false, arg_3.b.x & false, all(arg_2.xzz)));
    let var_1 = Struct_2(func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-404f))))), arg_3);
    var var_2 = vec3<bool>(false, true, any(vec4<bool>(all(vec3<bool>(arg_3.b.x, false, global2.x)), true, !(arg_3.c.x < 25946i), false)));
    global1 = !var_0.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(step(func_2(var_1.a.e.x).e, var_1.a.e));
    return var_1.a.b.wzx;
}

fn func_1(arg_0: f32, arg_1: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -420f), arg_0));
    global2 = func_5(_wgslsmith_sub_vec2_i32(~vec2<i32>(0i, ~(-2147483647i)), ~func_4(Struct_1(arg_0, vec4<bool>(true, arg_1, global2.x, arg_1), vec3<i32>(u_input.b, u_input.d, 2147483647i), -1450f, vec4<f32>(arg_0, 668f, -467f, arg_0)), func_2(var_0))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1019f)))), _wgslsmith_f_op_f32(-216f - -525f))), func_2(_wgslsmith_f_op_f32(round(-1000f))).b, Struct_1(_wgslsmith_f_op_f32(step(910f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-2386f, 251f, arg_1)), var_0))), vec4<bool>(_wgslsmith_f_op_f32(-var_0) == _wgslsmith_f_op_f32(-631f - arg_0), !arg_1, global2.x, true), vec3<i32>(~(-u_input.b), -8235i, -u_input.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2204f * arg_0)) + _wgslsmith_f_op_f32(sign(var_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, arg_0, -1000f, var_0), vec4<f32>(arg_0, -608f, 867f, 386f)))) * vec4<f32>(arg_0, _wgslsmith_f_op_f32(abs(453f)), -585f, _wgslsmith_div_f32(arg_0, var_0)))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -289f))), select(select(!vec4<bool>(global2.x, global2.x, arg_1, true), vec4<bool>(global2.x, global2.x, false, true), func_2(658f).b), !func_2(-1000f).b, true), firstLeadingBit(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.d, u_input.d), vec3<i32>(0i, 3368i, 29860i)), vec3<i32>(u_input.b, u_input.d, u_input.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + 1538f)) * arg_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1005f, _wgslsmith_div_f32(1672f, arg_0), _wgslsmith_div_f32(var_0, var_0), _wgslsmith_f_op_f32(step(var_0, arg_0))))), global0[_wgslsmith_index_u32(select(43028u, abs(_wgslsmith_mult_u32(u_input.a, ~u_input.c)), global2.x), 1u)]);
    var var_2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-626f, arg_0)))) + -621f)));
    var var_3 = func_2(arg_0);
    return var_3.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(-278f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -397f) + _wgslsmith_f_op_f32(482f + -1287f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-725f * _wgslsmith_f_op_f32(-509f - 1459f))), true)), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(floor(416f)), any(select(global2.xx, global2.yz, true)) || true)), _wgslsmith_div_f32(124f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(232f, -421f))))));
    global0 = array<Struct_1, 1>();
    global1 = any(vec4<bool>(false, !(global2.x || false), 0u <= (0u & u_input.c), global2.x)) && global2.x;
    let var_1 = func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-433f, var_1.d, _wgslsmith_f_op_f32(max(var_1.d, var_0.x)), _wgslsmith_f_op_f32(round(1000f)))));
    var var_2 = var_1.e.zx;
    global2 = var_1.b.www;
    var var_3 = vec3<i32>(var_1.c.x, ~_wgslsmith_dot_vec2_i32(var_1.c.zx, ~(-vec2<i32>(-2147483647i, u_input.b))), ~firstTrailingBit(u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(-605f, _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(min(vec3<u32>(u_input.a, 1u, 20231u), vec3<u32>(u_input.a, u_input.c, u_input.a)), abs(vec3<u32>(u_input.c, 1u, 47951u))), ~(vec3<u32>(22584u, u_input.a, 35972u) >> (vec3<u32>(46983u, 1u, 34144u) % vec3<u32>(32u)))), vec3<u32>(u_input.c, ~11185u >> (~u_input.a % 32u), ~88799u)));
}

