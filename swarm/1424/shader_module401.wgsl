struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<bool>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: Struct_1,
    d: f32,
    e: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: vec4<f32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_5, arg_2: bool) -> u32 {
    var var_0 = all(vec3<bool>(arg_1.a, !((u_input.a > 15566i) || all(global0.zy)), arg_0.a.c.x));
    global0 = select(arg_0.a.c.yyx, !arg_0.a.c.zwz, !arg_0.a.c.wzy);
    global0 = vec3<bool>(arg_1.a, all(vec4<bool>(false, _wgslsmith_clamp_u32(4294967295u, 4294967295u, arg_0.b.x) < ~53172u, !arg_1.a, all(!arg_0.a.c.zxx))), true);
    var_0 = false;
    var var_1 = Struct_5(false, arg_0.a.d, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(arg_1.c.x)))), 241f, _wgslsmith_div_f32(arg_1.c.x, _wgslsmith_div_f32(arg_1.c.x, arg_1.c.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.c.x * arg_1.c.x)))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1466f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-533f)) * -689f), -482f, -439f)), 1u);
    return _wgslsmith_div_u32(65386u, abs(22364u) << (_wgslsmith_add_u32(var_1.b, _wgslsmith_mod_u32(1u, ~arg_1.b)) % 32u));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(Struct_1(77274u, 1i, vec4<bool>(any(!vec3<bool>(global0.x, global0.x, global0.x)), global0.x, 25240u <= ~u_input.b, true), firstLeadingBit(min(u_input.b, _wgslsmith_clamp_u32(u_input.b, 1u, u_input.b))), firstTrailingBit(~19759u) != u_input.b), vec2<i32>(-u_input.a, i32(-1i) * -1i));
    let var_1 = abs(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 0u, var_0.a.a) >> (vec4<u32>(49308u, var_0.a.d, var_0.a.a, u_input.b) % vec4<u32>(32u)), abs(vec4<u32>(39625u, u_input.b, 24353u, u_input.b))), u_input.b, 4294967295u));
    let var_2 = _wgslsmith_f_op_f32(-1662f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(656f)) + _wgslsmith_f_op_f32(f32(-1f) * -1121f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(171f + 1665f)))) + -880f));
    global0 = !vec3<bool>(global0.x, !global0.x, !global0.x);
    let var_3 = var_1;
    return Struct_1(0u, -(~_wgslsmith_mult_i32(25423i, u_input.a)) << (func_3(Struct_3(var_0.a, var_3.zx), Struct_5(any(vec2<bool>(false, false)), var_0.a.d >> (16690u % 32u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(878f, var_2, var_2, var_2)), _wgslsmith_clamp_u32(35936u, 7795u, 0u)), var_0.a.e || false) % 32u), var_0.a.c, ~countOneBits(u_input.b), false);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = ~(~vec3<i32>(~2147483647i | abs(arg_1.b), -1i, u_input.a << (~arg_1.d % 32u)));
    let var_1 = _wgslsmith_clamp_i32(-(i32(-1i) * -1i), 870i, _wgslsmith_sub_i32(max(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(var_0.yz, vec2<i32>(-42868i, u_input.a)), ~(-9603i), 43568i), _wgslsmith_mod_i32(abs(var_0.x), abs(arg_1.b))), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.b, -1i), -var_0.yx), var_0.yx)));
    global0 = func_2().c.yzy;
    global0 = arg_1.c.yyx;
    var_0 = -(~abs(vec3<i32>(~20109i, _wgslsmith_add_i32(1i, 1i), arg_0.b)));
    return true;
}

fn func_1(arg_0: Struct_5, arg_1: vec2<u32>, arg_2: i32, arg_3: Struct_1) -> vec2<u32> {
    global0 = select(vec3<bool>((_wgslsmith_clamp_i32(-38796i, -31877i, arg_2) >= ~u_input.a) & arg_0.a, func_4(func_2(), arg_3), all(vec4<bool>(func_2().e, -2147483647i >= arg_2, func_2().c.x, true))), select(arg_3.c.wyw, vec3<bool>(u_input.c <= arg_2, func_2().c.x, true), select(_wgslsmith_f_op_f32(-arg_0.c.x) > 1429f, true, arg_3.c.x)), !select(!vec3<bool>(true, arg_3.e, arg_0.a), vec3<bool>(all(vec2<bool>(false, true)), func_4(Struct_1(0u, 0i, vec4<bool>(arg_3.e, global0.x, global0.x, true), 0u, global0.x), arg_3), arg_0.c.x <= arg_0.c.x), false));
    global0 = vec3<bool>(any(vec3<bool>(!arg_3.e, -1647f != _wgslsmith_f_op_f32(-arg_0.c.x), ~(-2147483647i) != _wgslsmith_sub_i32(28407i, u_input.c))), arg_0.a, true);
    global0 = arg_3.c.wzz;
    global0 = arg_3.c.wzz;
    let var_0 = (abs(~(~4294967295u)) >> (abs(abs(arg_1.x)) % 32u)) << (~(~48915u) % 32u);
    return ~(~arg_1) | vec2<u32>(~(~reverseBits(4294967295u)), min(_wgslsmith_div_u32(abs(arg_3.d), var_0 << (0u % 32u)), 6993u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(true & all(!(!vec4<bool>(global0.x, false, true, global0.x))), u_input.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(1493f, -196f)), 1062f, -1602f, _wgslsmith_f_op_f32(ceil(-1000f)))) * vec4<f32>(1510f, _wgslsmith_f_op_f32(-209f + _wgslsmith_f_op_f32(f32(-1f) * -167f)), 840f, _wgslsmith_f_op_f32(f32(-1f) * -555f))), _wgslsmith_dot_vec2_u32(abs(max(func_1(Struct_5(global0.x, 57143u, vec4<f32>(-1413f, 1987f, -139f, -1000f), u_input.b), vec2<u32>(u_input.b, 1u), u_input.c, Struct_1(u_input.b, u_input.c, vec4<bool>(true, false, false, global0.x), 20315u, global0.x)), vec2<u32>(u_input.b, 1u))), firstTrailingBit(vec2<u32>(34941u, 68137u) >> (~vec2<u32>(0u, u_input.b) % vec2<u32>(32u)))));
    let var_1 = Struct_5(!(!global0.x), ~(~4294967295u), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2871f, 1000f, var_0.c.x, var_0.c.x), vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, 1818f), vec4<bool>(var_0.a, global0.x, global0.x, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.c, var_0.c)), global0.x)))), ~(~_wgslsmith_mod_u32(18525u, select(var_0.b, 41616u, var_0.a))));
    let var_2 = Struct_1(~(~reverseBits(1u)), ~_wgslsmith_add_i32(u_input.a, abs(u_input.a)), select(!vec4<bool>(true, true, true, var_1.a), !vec4<bool>(true, var_1.a, func_2().e, false), !(reverseBits(0i) <= u_input.c)), var_1.d & u_input.b, (~u_input.b <= ~1u) == global0.x);
    let var_3 = 1i;
    global0 = select(vec3<bool>(!((-572f <= var_0.c.x) & true), true, !(var_2.b != var_3) | true), vec3<bool>(func_2().c.x, var_2.c.x, all(!(!vec3<bool>(var_1.a, var_1.a, false)))), var_2.b <= _wgslsmith_div_i32(-1i, firstTrailingBit(18628i << (u_input.b % 32u))));
    global0 = !vec3<bool>(var_3 > (-var_3 ^ 1i), var_1.a, any(vec4<bool>(var_0.d <= var_1.d, any(var_2.c.ywy), true, !global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(71487u, 0u, 4294967295u, var_0.d)), firstLeadingBit(vec4<u32>(var_1.d, 47856u, u_input.b, var_2.a)))), u_input.a);
}

