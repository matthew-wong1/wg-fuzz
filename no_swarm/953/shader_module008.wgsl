struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 16200u;

var<private> global1: Struct_2 = Struct_2(false, Struct_1(vec2<u32>(62886u, 214u)));

var<private> global2: bool;

var<private> global3: Struct_2 = Struct_2(true, Struct_1(vec2<u32>(19219u, 4294967295u)));

var<private> global4: i32 = 1i;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec3<u32>) -> vec4<i32> {
    global3 = Struct_2(global1.a, Struct_1(_wgslsmith_mod_vec2_u32(select(vec2<u32>(4294967295u, global1.b.a.x), max(vec2<u32>(global1.b.a.x, arg_1.a.x), global3.b.a), select(vec2<bool>(global1.a, false), vec2<bool>(false, false), true)), vec2<u32>(4294967295u | arg_2.x, arg_1.a.x))));
    global2 = false;
    var var_0 = -2147483647i;
    global1 = Struct_2(true, Struct_1(vec2<u32>(~(~global1.b.a.x), _wgslsmith_mult_u32(~arg_1.a.x, global3.b.a.x))));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1466f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-440f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-288f)))))));
    return vec4<i32>(-1i) * -(-min(vec4<i32>(u_input.d, -42366i, arg_0, -1i), vec4<i32>(u_input.c.x, arg_0, -52454i, u_input.c.x)) >> ((_wgslsmith_sub_vec4_u32(vec4<u32>(25650u, 1u, 53767u, 42211u), vec4<u32>(4362u, global3.b.a.x, 31691u, 4294967295u)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e, 1u, 12707u, 4294967295u), vec4<u32>(0u, global1.b.a.x, global3.b.a.x, 39378u), vec4<u32>(arg_2.x, global1.b.a.x, global3.b.a.x, 66206u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: vec2<u32>) -> vec2<i32> {
    global2 = all(vec4<bool>(global1.a, !(global1.a != global3.a), all(!vec2<bool>(true, global1.a)), true)) == global1.a;
    var var_0 = select(!select(!vec3<bool>(global1.a, false, global3.a), !(!vec3<bool>(global1.a, false, false)), all(!vec4<bool>(true, global1.a, true, true))), !(!vec3<bool>(!global1.a, all(vec3<bool>(global1.a, global1.a, true)), false)), false);
    let var_1 = Struct_2(global1.a, Struct_1(~abs(abs(vec2<u32>(9633u, arg_2.x)))));
    let var_2 = !vec3<bool>(!(-u_input.c.x != _wgslsmith_add_i32(arg_1.x, -24019i)), var_0.x, global3.a);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(1469f + _wgslsmith_f_op_f32(f32(-1f) * -1096f)), -891f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1293f, 185f)))), -1813f), -1380f);
    return min(reverseBits(vec2<i32>(firstTrailingBit(u_input.d), arg_0) >> (select(~vec2<u32>(2373u, 11391u), arg_2, !var_0.x) % vec2<u32>(32u))), vec2<i32>(abs(_wgslsmith_mod_i32(-1i, reverseBits(arg_1.x))), -16705i));
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: vec2<f32>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    let var_1 = func_4(u_input.c.x, ~(func_3(~u_input.d, global1.b, firstLeadingBit(vec3<u32>(u_input.e, global1.b.a.x, global3.b.a.x))) << ((~vec4<u32>(u_input.e, global3.b.a.x, 0u, 1u) | ~vec4<u32>(0u, 4294967295u, global3.b.a.x, 1u)) % vec4<u32>(32u))), _wgslsmith_mult_vec2_u32(max(global3.b.a, ~_wgslsmith_div_vec2_u32(vec2<u32>(global3.b.a.x, 21797u), vec2<u32>(4294967295u, 1706u))), global3.b.a));
    var var_2 = u_input.c;
    let var_3 = var_1.x;
    let var_4 = Struct_2(global1.a, global1.b);
    return _wgslsmith_mult_vec4_u32(~(~_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, 75018u, 6886u, global1.b.a.x), vec4<u32>(global1.b.a.x, 25123u, 4294967295u, 6095u)), vec4<u32>(u_input.a.x, global3.b.a.x, global3.b.a.x, global1.b.a.x))), vec4<u32>(global3.b.a.x, var_4.b.a.x, 1u, _wgslsmith_dot_vec4_u32(~select(vec4<u32>(4294967295u, global3.b.a.x, global3.b.a.x, 8427u), vec4<u32>(0u, 12952u, var_4.b.a.x, 33717u), vec4<bool>(true, true, global1.a, true)), vec4<u32>(min(global1.b.a.x, global1.b.a.x), ~5u, _wgslsmith_mult_u32(1u, 6482u), u_input.a.x << (4294967295u % 32u)))));
}

fn func_5(arg_0: bool, arg_1: vec4<u32>) -> vec3<u32> {
    return countOneBits(vec3<u32>((0u | arg_1.x) >> (1u % 32u), 4294967295u, global1.b.a.x)) >> ((u_input.a & vec3<u32>(reverseBits(38493u), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.b.a.x, 4294967295u, global3.b.a.x, 43545u) | arg_1, ~arg_1), 1u)) % vec3<u32>(32u));
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    global2 = all(!select(vec4<bool>(global1.a | global1.a, any(vec3<bool>(true, global3.a, true)), true, !global3.a), !(!vec4<bool>(global3.a, false, false, true)), all(!vec3<bool>(true, global3.a, true))));
    global0 = u_input.a.x;
    var var_0 = u_input.c;
    var var_1 = global1.b;
    var var_2 = ~func_5(arg_0.x == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.x))), ~(firstLeadingBit(vec4<u32>(34315u, u_input.b, 0u, 1u)) << (func_2(arg_0.wzy, arg_0.x, vec2<f32>(628f, 1000f)) % vec4<u32>(32u))));
    return _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 21883u, 63133u, 67292u), vec4<u32>(1u, 1u, var_2.x, 3951u))), vec4<u32>(~select(1u, 73432u, global3.a), ~global3.b.a.x, var_2.x, abs(0u))), 24412u);
}

fn func_6(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_1, arg_3: vec4<f32>) -> vec4<f32> {
    var var_0 = Struct_2(true, Struct_1(abs(arg_2.a)));
    let var_1 = _wgslsmith_f_op_f32(sign(-1577f));
    var var_2 = _wgslsmith_f_op_f32(ceil(1432f));
    global2 = all(select(vec4<bool>(!global1.a, global3.a, global1.a, true), select(select(!vec4<bool>(global3.a, arg_0.x, var_0.a, false), select(vec4<bool>(true, true, var_0.a, true), vec4<bool>(true, true, global1.a, false), vec4<bool>(false, true, global1.a, global3.a)), select(vec4<bool>(global1.a, true, global3.a, arg_0.x), vec4<bool>(arg_0.x, true, false, global3.a), vec4<bool>(true, global1.a, var_0.a, true))), vec4<bool>(all(vec4<bool>(global3.a, false, arg_0.x, global1.a)), true, true, !arg_0.x), vec4<bool>(true, arg_0.x, global3.a, any(vec3<bool>(arg_0.x, false, global1.a)))), vec4<bool>(any(!vec4<bool>(true, true, true, arg_0.x)), all(vec4<bool>(false, var_0.a, true, false)) == true, all(select(vec3<bool>(true, false, global1.a), vec3<bool>(global1.a, true, true), vec3<bool>(false, false, arg_0.x))), true)));
    global4 = _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.c.x, _wgslsmith_clamp_i32(u_input.d, u_input.d, u_input.c.x)) & -_wgslsmith_dot_vec4_i32(vec4<i32>(35529i, 2147483647i, u_input.d, u_input.d), vec4<i32>(u_input.c.x, u_input.c.x, -55433i, u_input.d)), 0i), abs(-20i));
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-arg_3))), _wgslsmith_f_op_vec4_f32(arg_3 + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(arg_3, arg_3, vec4<bool>(global3.a, true, var_0.a, false))), _wgslsmith_f_op_vec4_f32(abs(arg_3)))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(step(-264f, arg_3.x)), _wgslsmith_div_f32(arg_3.x, var_1))))), true));
}

fn func_7(arg_0: vec4<f32>, arg_1: vec2<bool>) -> Struct_1 {
    global3 = Struct_2(false, Struct_1(func_2(_wgslsmith_div_vec3_f32(vec3<f32>(134f, -1000f, arg_0.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(229f, arg_0.x, arg_0.x), vec3<f32>(arg_0.x, -1000f, arg_0.x), false))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_f_op_f32(trunc(-819f)), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1035f, -1461f))).zx));
    global4 = 1i;
    global0 = max(1u, u_input.a.x);
    var var_0 = Struct_2(global1.a, global1.b);
    let var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(~(~var_0.b.a.x), 26329u), _wgslsmith_div_vec2_u32(u_input.a.yx, ~u_input.a.xz));
    return global1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(_wgslsmith_f_op_vec4_f32(func_6(!select(vec2<bool>(global3.a, global1.a), vec2<bool>(true, true), !vec2<bool>(global1.a, false)), firstLeadingBit(func_1(vec4<f32>(-427f, 512f, -1000f, -1261f)) >> (_wgslsmith_mult_u32(global1.b.a.x, global1.b.a.x) % 32u)), global3.b, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-943f, -279f, -1000f, 2117f) * vec4<f32>(578f, -2097f, -2255f, 537f)) + vec4<f32>(1f, 1f, 1f, 1f)))))), select(select(select(select(vec2<bool>(true, global3.a), vec2<bool>(global3.a, true), vec2<bool>(true, true)), select(vec2<bool>(true, global1.a), vec2<bool>(true, global1.a), vec2<bool>(global3.a, global1.a)), true), vec2<bool>(true, true), select(select(vec2<bool>(global3.a, false), vec2<bool>(false, global1.a), vec2<bool>(global1.a, global3.a)), select(vec2<bool>(true, global3.a), vec2<bool>(global3.a, true), vec2<bool>(global3.a, global1.a)), select(vec2<bool>(false, global3.a), vec2<bool>(false, true), vec2<bool>(global3.a, global3.a)))), !vec2<bool>(any(vec4<bool>(global1.a, global1.a, true, global3.a)), !global3.a), select(vec2<bool>(global3.a, global3.a), select(select(vec2<bool>(true, false), vec2<bool>(global3.a, global1.a), vec2<bool>(true, global3.a)), vec2<bool>(true, global1.a), select(vec2<bool>(false, global3.a), vec2<bool>(false, global3.a), false)), vec2<bool>(true, !global1.a))));
    let var_1 = ~(~vec4<u32>(~var_0.a.x, func_7(_wgslsmith_div_vec4_f32(vec4<f32>(1035f, -199f, -2416f, -1338f), vec4<f32>(-1070f, 274f, -556f, -2080f)), select(vec2<bool>(false, global3.a), vec2<bool>(global3.a, global1.a), vec2<bool>(global1.a, global1.a))).a.x, 0u | func_2(vec3<f32>(885f, -1081f, -796f), 134f, vec2<f32>(-777f, -1152f)).x, func_5(u_input.a.x <= global3.b.a.x, ~vec4<u32>(0u, 0u, 4294967295u, u_input.a.x)).x));
    var var_2 = u_input.c.x;
    let var_3 = any(!select(!vec3<bool>(false, global1.a, true), !vec3<bool>(global1.a, false, true), !global1.a));
    var var_4 = vec3<bool>(all(!select(!vec3<bool>(global1.a, false, true), vec3<bool>(var_3, false, false), select(vec3<bool>(var_3, false, var_3), vec3<bool>(true, false, global3.a), global3.a))), any(select(!select(vec3<bool>(global1.a, var_3, global1.a), vec3<bool>(true, false, false), false), vec3<bool>(true, var_3, true), any(select(vec3<bool>(global3.a, global3.a, true), vec3<bool>(global1.a, global1.a, var_3), false)))), false);
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_dot_vec2_u32(u_input.a.yx, ~func_5(false, var_1).zx), _wgslsmith_mod_u32(_wgslsmith_sub_u32(abs(1u), select(var_0.a.x, global3.b.a.x, global3.a)), _wgslsmith_sub_u32(func_2(vec3<f32>(-579f, 148f, -1503f), -157f, vec2<f32>(-1416f, -915f)).x, var_1.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(922f, -297f)), _wgslsmith_f_op_f32(abs(-1299f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(209f, 972f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(710f, 422f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(596f, 518f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(2559f, 1093f) - vec2<f32>(1036f, 1024f)))), vec3<i32>(u_input.d, 2147483647i, -2147483647i), global1.b.a.x >> (u_input.a.x % 32u));
}

