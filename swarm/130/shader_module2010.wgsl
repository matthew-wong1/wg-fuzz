struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: i32,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 20785i;

var<private> global1: vec4<f32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec4<f32> {
    var var_0 = u_input.a;
    global1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-280f, global1.x, global1.x, 701f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, 133f, global1.x, -445f), vec4<f32>(-153f, global1.x, global1.x, global1.x)) - vec4<f32>(global1.x, global1.x, global1.x, global1.x))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -493f, -1124f, -669f)))));
    var_0 = ~_wgslsmith_clamp_u32(arg_0.b.d.x, arg_0.b.b, arg_0.b.b);
    global0 = ~(-arg_0.b.c.x) | -72772i;
    var var_1 = Struct_3(Struct_2(vec2<bool>(true, true), arg_0.b), ~vec4<u32>(u_input.a << (~32570u % 32u), ~_wgslsmith_clamp_u32(arg_0.b.d.x, 0u, arg_0.b.b), _wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_0.b.d.x, u_input.a, 11697u), arg_0.b.d, arg_0.a.x), ~arg_0.b.d), abs(u_input.a)), !vec3<bool>(all(!vec4<bool>(false, arg_0.a.x, false, true)), arg_0.a.x, true));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, -432f, global1.x, global1.x), vec4<f32>(global1.x, global1.x, 888f, global1.x), vec4<bool>(false, arg_0.a.x, arg_0.a.x, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-822f, -1191f, global1.x, global1.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(640f, -1063f, global1.x, 1264f), vec4<f32>(global1.x, global1.x, 1656f, -2080f)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.x, global1.x, global1.x, global1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, 320f, global1.x) - vec4<f32>(-453f, global1.x, 375f, 1083f)) * vec4<f32>(global1.x, -823f, global1.x, global1.x)), select(!vec4<bool>(false, false, var_1.c.x, false), !vec4<bool>(false, true, arg_0.a.x, true), true)))));
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: i32, arg_3: f32) -> f32 {
    global1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(331f, 973f, 753f, global1.x), vec4<f32>(arg_1, 1000f, 307f, -302f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1062f, 1365f, arg_3, arg_1))))), vec4<f32>(-1000f, _wgslsmith_div_f32(arg_1, -137f), -557f, 743f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_2(vec2<bool>(true, true), Struct_1(vec4<u32>(u_input.a, u_input.a, 0u, 25086u), 4294967295u, arg_0, vec3<u32>(4294967295u, u_input.a, u_input.a)))))))), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true), vec4<bool>(arg_2 == arg_0.x, true, any(vec4<bool>(true, false, false, false)), u_input.a >= 14235u), vec4<bool>(true, true, true, true)), select(vec4<bool>(u_input.a == u_input.a, false, false, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), true)), vec4<bool>(true, true, true, true)))));
    let var_0 = !(!(!all(vec4<bool>(false, true, true, false))));
    var var_1 = -557f;
    var_1 = global1.x;
    var var_2 = Struct_3(Struct_2(vec2<bool>(var_0, var_0), Struct_1(vec4<u32>(firstTrailingBit(34752u), 0u << (u_input.a % 32u), 4294967295u, u_input.a), abs(u_input.a), arg_0 >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(96720u, u_input.a, u_input.a), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 25865u, 11938u), vec3<u32>(62020u, 18303u, u_input.a))))), ~vec4<u32>(1u, u_input.a, u_input.a, ~0u | countOneBits(u_input.a)), select(select(vec3<bool>(true, true, true), select(!vec3<bool>(true, false, var_0), vec3<bool>(var_0, true, false), vec3<bool>(false, true, var_0)), select(select(vec3<bool>(true, true, var_0), vec3<bool>(false, true, var_0), true), !vec3<bool>(true, var_0, var_0), !var_0)), !(!vec3<bool>(var_0, var_0, var_0)), !all(select(vec3<bool>(false, var_0, false), vec3<bool>(var_0, true, var_0), vec3<bool>(var_0, true, false)))));
    return _wgslsmith_f_op_f32(sign(arg_3));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> Struct_4 {
    global1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), global1.x == arg_0), Struct_1(~vec4<u32>(arg_2.d.x, 14604u, u_input.a, 1u), 25264u, reverseBits(arg_2.c), select(vec3<u32>(arg_1, u_input.a, 23008u), vec3<u32>(19705u, arg_1, 1u), vec3<bool>(false, true, true))))))));
    let var_0 = countOneBits(countOneBits(49016u));
    global0 = -reverseBits(firstTrailingBit(-24628i));
    global0 = ~_wgslsmith_add_i32(~(_wgslsmith_dot_vec2_i32(arg_2.c.yz, arg_2.c.yy) | ~arg_2.c.x), 9874i);
    let var_1 = Struct_2(vec2<bool>(true, true), Struct_1(~(~vec4<u32>(36296u, var_0, 1u, arg_1)), 108908u, _wgslsmith_div_vec3_i32(arg_2.c, firstTrailingBit(vec3<i32>(0i, -1i, arg_2.c.x))), vec3<u32>(_wgslsmith_mod_u32(arg_2.a.x, u_input.a), arg_1, ~_wgslsmith_clamp_u32(1u, arg_1, arg_2.b))));
    return Struct_4(~(~6069u), Struct_3(var_1, _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.d.x, arg_1, arg_1, 0u), arg_2.a), 4294967295u, 43163u, 9078u), arg_2.a), select(select(select(vec3<bool>(false, true, true), vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), var_1.a.x), !vec3<bool>(true, true, var_1.a.x), vec3<bool>(var_1.a.x, true, var_1.a.x)), !select(vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), vec3<bool>(false, var_1.a.x, true), vec3<bool>(var_1.a.x, false, true)), vec3<bool>(arg_0 >= -179f, true, false))), (abs(arg_2.c.x) >> (u_input.a % 32u)) << (_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, arg_1) >> (_wgslsmith_mod_vec2_u32(arg_2.a.yy, vec2<u32>(27289u, var_1.b.a.x)) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, arg_2.a.x), vec2<u32>(u_input.a, 1u)), vec2<u32>(var_1.b.d.x, 8781u))) % 32u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-694f, _wgslsmith_f_op_f32(max(178f, -644f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(160f)), _wgslsmith_f_op_f32(func_2(arg_2.c, -265f, -4008i, -1359f)))))), arg_2);
}

fn func_1() -> Struct_5 {
    global0 = _wgslsmith_div_i32(1i, -_wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, -28508i, -38012i, -1505i) >> (vec4<u32>(u_input.a, 77581u, u_input.a, u_input.a) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(~vec4<i32>(-1i, 4310i, 0i, -1i), vec4<i32>(1i, 1i, 1i, 1i))));
    let var_0 = true;
    var var_1 = vec3<i32>(-1685i, -6144i, -2147483647i);
    let var_2 = func_4(_wgslsmith_f_op_f32(func_2(vec3<i32>(-1i) * -select(vec3<i32>(var_1.x, 0i, 49192i), vec3<i32>(1i, var_1.x, var_1.x), vec3<bool>(var_0, var_0, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.x), global1.x))), reverseBits(var_1.x), _wgslsmith_f_op_f32(-global1.x))), u_input.a & 0u, Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, _wgslsmith_div_u32(u_input.a, 22950u), 2853u, ~4294967295u), ~(~vec4<u32>(u_input.a, 4294967295u, 0u, 0u))), 3856u, vec3<i32>(countOneBits(_wgslsmith_dot_vec2_i32(var_1.yy, vec2<i32>(32031i, 1i))), abs(21655i >> (u_input.a % 32u)), -(~var_1.x)), ~(~(~vec3<u32>(u_input.a, u_input.a, u_input.a)))));
    global0 = _wgslsmith_sub_i32(-var_1.x | -var_2.c, -7782i);
    return Struct_5(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_2.d.zwx), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(global1.xwx, var_2.d.zzy)))), vec3<bool>(true, var_2.b.a.a.x & var_0, !var_2.b.a.a.x))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * var_2.d.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_add_u32(u_input.a, ~16969u);
    var var_2 = Struct_5(vec3<f32>(global1.x, -1103f, -356f), _wgslsmith_f_op_vec2_f32(-global1.wx));
    global0 = _wgslsmith_dot_vec2_i32(~reverseBits(~firstLeadingBit(vec2<i32>(-15405i, 12760i))), vec2<i32>(-2147483647i, select(_wgslsmith_div_i32(abs(-19190i), -43821i), 0i, true)));
    let var_3 = select(!(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), vec3<bool>(all(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false))), all(vec2<bool>(false, true)), false), any(vec4<bool>(any(vec4<bool>(true, false, false, true)), true, any(vec3<bool>(false, true, false)), false)) == all(!func_4(var_2.b.x, u_input.a, Struct_1(vec4<u32>(0u, u_input.a, 12997u, 0u), 1u, vec3<i32>(1i, 18256i, 32598i), vec3<u32>(1u, 27855u, u_input.a))).b.c.zz));
    let var_4 = func_1();
    let var_5 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-805f, var_2.b.x, var_0.b.x));
    global0 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(~((-vec4<i32>(1i, 14020i, -15291i, 0i) << ((vec4<u32>(0u, u_input.a, 1u, 0u) >> (vec4<u32>(4294967295u, u_input.a, u_input.a, 67042u) % vec4<u32>(32u))) % vec4<u32>(32u))) >> (_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 1u, 17520u), select(vec4<u32>(u_input.a, 11054u, u_input.a, u_input.a), vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), vec4<bool>(true, false, true, var_3.x))) % vec4<u32>(32u))));
}

