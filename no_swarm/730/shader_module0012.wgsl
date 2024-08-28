struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
    d: u32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1519f;

var<private> global1: vec4<bool>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: bool, arg_3: Struct_3) -> f32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b.b.x - _wgslsmith_div_f32(-1053f, -570f))) - _wgslsmith_f_op_f32(-arg_3.b.b.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-811f))));
    let var_0 = Struct_2(arg_3.b, Struct_1(4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-836f, 1000f, 161f, arg_3.b.b.x) * vec4<f32>(arg_3.b.b.x, arg_0, -1417f, -159f)))), vec4<u32>(~arg_3.b.a, ~(~arg_3.d), firstTrailingBit(~1u), 80251u)), !arg_3.e);
    global1 = select(vec4<bool>(!all(vec4<bool>(true, arg_2, false, true)) || arg_2, var_0.c.x, arg_3.e.x && (4294967295u < ~var_0.a.c.x), false), !(!select(vec4<bool>(false, global1.x, global1.x, true), vec4<bool>(true, var_0.c.x, false, arg_2), select(vec4<bool>(global1.x, global1.x, true, false), vec4<bool>(var_0.c.x, false, false, false), var_0.c.x))), !(!select(vec4<bool>(true, true, true, arg_2), vec4<bool>(global1.x, false, var_0.c.x, var_0.c.x), arg_2 | false)));
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(step(-390f, _wgslsmith_f_op_f32(-arg_3.b.b.x)))));
    return _wgslsmith_f_op_f32(1684f - var_0.b.b.x);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: i32) -> u32 {
    let var_0 = Struct_2(Struct_1(u_input.a, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, 1f, 1f, 1f))), (_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a, 0u, 4294967295u), vec4<u32>(4294967295u, u_input.a, 4162u, u_input.a)) ^ (vec4<u32>(0u, 24241u, u_input.a, u_input.a) << (vec4<u32>(u_input.a, u_input.a, 1u, u_input.a) % vec4<u32>(32u)))) ^ vec4<u32>(~u_input.a, 38861u, ~96864u, ~u_input.a)), Struct_1(u_input.a, vec4<f32>(_wgslsmith_f_op_f32(-1471f * -1000f), -1189f, _wgslsmith_f_op_f32(-1161f - _wgslsmith_f_op_f32(-1021f + 1947f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-311f, 2147483647i, true, Struct_3(vec2<i32>(1i, u_input.b.x), Struct_1(u_input.a, vec4<f32>(692f, 146f, -499f, -1829f), vec4<u32>(86506u, u_input.a, u_input.a, u_input.a)), global1.x, u_input.a, arg_1.xx))))), ~(max(vec4<u32>(u_input.a, u_input.a, u_input.a, 60904u), vec4<u32>(0u, u_input.a, u_input.a, 91193u)) ^ ~vec4<u32>(54760u, 22513u, u_input.a, 36575u))), global1.xx);
    let var_1 = Struct_1(reverseBits(0u), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.b.b.x, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f + -191f), _wgslsmith_f_op_f32(-var_0.b.b.x)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b.x)), var_0.b.b.x, var_0.a.b.x))), _wgslsmith_mod_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(110206u, 20479u, var_0.a.c.x, var_0.a.a), var_0.b.c), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.a.a), var_0.b.c.wy), _wgslsmith_clamp_u32(var_0.a.a, 1u, var_0.a.c.x), 44393u), ~(vec4<u32>(u_input.a, 44020u, 1u, u_input.a) | vec4<u32>(0u, u_input.a, 13526u, 1u))));
    var var_2 = var_1;
    var var_3 = Struct_3(arg_0.xy, var_1, any(vec3<bool>(arg_1.x, false, true)), ~_wgslsmith_div_u32(firstTrailingBit(var_1.a), _wgslsmith_clamp_u32(var_2.a, var_1.a, _wgslsmith_mult_u32(u_input.a, var_0.a.a))), vec2<bool>(all(vec2<bool>(var_0.c.x, true)), var_0.c.x || global1.x));
    var var_4 = Struct_1(33457u, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(var_2.b, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.a.b.x, 1894f, -1977f, var_1.b.x), var_2.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_3.b.b - vec4<f32>(-257f, 635f, var_2.b.x, -395f))))))), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.a, _wgslsmith_mod_u32(_wgslsmith_sub_u32(5589u, var_2.a), reverseBits(var_1.c.x)), ~var_1.c.x, min(var_3.d ^ u_input.a, _wgslsmith_mod_u32(9669u, var_0.a.c.x))), countOneBits(reverseBits(firstTrailingBit(vec4<u32>(1u, var_2.a, 1u, var_0.b.a))))));
    return 0u;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec2<f32>, arg_3: Struct_2) -> vec4<bool> {
    global0 = _wgslsmith_div_f32(-366f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_3.a.b.x)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(arg_0.b.x, arg_0.b.x))))))));
    global1 = vec4<bool>(select(!global1.x, arg_3.c.x, global1.x != !arg_3.c.x) != global1.x, true, true, true);
    var var_0 = 1000f;
    let var_1 = select(select(select(select(!global1.zyw, select(global1.wzy, vec3<bool>(arg_3.c.x, false, true), false), !vec3<bool>(arg_3.c.x, global1.x, false)), !vec3<bool>(true, arg_3.c.x, false), select(false, true, false)), select(global1.zxw, !(!vec3<bool>(global1.x, global1.x, false)), global1.x), true), global1.yww, !select(select(vec3<bool>(arg_3.c.x, true, true), vec3<bool>(true, true, true), !arg_3.c.x), select(global1.xzy, !global1.xyz, !global1.wxx), global1.xyz));
    let var_2 = Struct_1(arg_0.c.x, vec4<f32>(arg_0.b.x, 1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(782f)))), arg_1), vec4<u32>(697u, firstLeadingBit(min(func_2(u_input.b, vec4<bool>(true, true, false, var_1.x), -1i), ~13207u)), u_input.a, u_input.a));
    return !vec4<bool>(var_1.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(2209f, arg_2.x)), _wgslsmith_f_op_f32(-1069f - var_2.b.x), true)) != _wgslsmith_f_op_f32(-arg_2.x), !arg_3.c.x & any(!global1.xwz), _wgslsmith_clamp_i32(u_input.b.x, countOneBits(u_input.b.x), 2147483647i | u_input.b.x) > u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -776f);
    let var_0 = Struct_1(0u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(2354f, 1327f, 1361f, -176f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(402f, -392f, -328f, 104f) * vec4<f32>(1218f, -106f, -538f, 686f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-710f, -1407f, -1000f, _wgslsmith_f_op_f32(-430f * -406f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(244f, -393f, -1000f, 640f) + vec4<f32>(1681f, -2230f, -1016f, -339f)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-596f, -315f, 2824f, -527f)))))), vec4<u32>(_wgslsmith_mod_u32(57334u, u_input.a), 19677u, abs(min(1u, 4294967295u)), 1u));
    global1 = !(!select(!vec4<bool>(global1.x, true, false, true), !(!vec4<bool>(global1.x, false, true, true)), !select(vec4<bool>(false, global1.x, global1.x, true), vec4<bool>(true, global1.x, global1.x, true), global1.x)));
    global1 = select(select(vec4<bool>(all(select(vec4<bool>(false, true, global1.x, global1.x), vec4<bool>(false, global1.x, global1.x, false), true)), true, false, false), vec4<bool>(all(func_1(var_0, -1802f, vec2<f32>(-608f, -1879f), Struct_2(var_0, Struct_1(u_input.a, vec4<f32>(1950f, var_0.b.x, var_0.b.x, 1180f), var_0.c), global1.yw))), false, u_input.b.x < -u_input.b.x, global1.x), !global1.x), vec4<bool>(global1.x, false, !select(false, 26262u >= u_input.a, all(global1.xyz)), true), vec4<bool>((_wgslsmith_f_op_f32(func_3(237f, 28848i, false, Struct_3(u_input.b.wx, var_0, true, u_input.a, vec2<bool>(global1.x, false)))) > 526f) | (u_input.b.x < (i32(-1i) * -2147483647i)), global1.x, false, any(vec2<bool>(true, true))));
    let var_1 = _wgslsmith_mod_vec3_i32(~vec3<i32>(_wgslsmith_sub_i32(2147483647i, 1i), _wgslsmith_mod_i32(u_input.b.x, u_input.b.x), abs(0i)), _wgslsmith_mult_vec3_i32(u_input.b.zyw, u_input.b.xzy));
    global1 = func_1(Struct_1(~(var_0.c.x >> (u_input.a % 32u)), var_0.b, ~vec4<u32>(_wgslsmith_div_u32(u_input.a, u_input.a), _wgslsmith_mod_u32(u_input.a, var_0.a), max(var_0.c.x, var_0.a), ~var_0.a)), _wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(min(var_0.b.x, _wgslsmith_f_op_f32(var_0.b.x + -302f)))), vec2<f32>(_wgslsmith_f_op_f32(step(411f, _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(-var_0.b.x)))), _wgslsmith_f_op_f32(abs(-1010f))), Struct_2(var_0, var_0, select(!(!vec2<bool>(global1.x, global1.x)), vec2<bool>(all(global1.yw), !global1.x), any(!vec2<bool>(global1.x, true)))));
    let var_2 = Struct_2(var_0, var_0, select(!global1.yz, func_1(var_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.x, var_0.b.x) + -1002f), vec2<f32>(_wgslsmith_f_op_f32(min(135f, -1000f)), _wgslsmith_f_op_f32(ceil(-1000f))), Struct_2(var_0, var_0, vec2<bool>(false, global1.x))).zz, func_1(var_0, _wgslsmith_f_op_f32(var_0.b.x - var_0.b.x), _wgslsmith_f_op_vec2_f32(var_0.b.xx * var_0.b.zz), Struct_2(Struct_1(1u, vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x), vec4<u32>(22104u, u_input.a, 1u, u_input.a)), Struct_1(u_input.a, vec4<f32>(-810f, var_0.b.x, var_0.b.x, 480f), vec4<u32>(var_0.c.x, 4294967295u, 15663u, 4294967295u)), global1.wx)).x && global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(var_2.a.c.xw | vec2<u32>(u_input.a, 78203u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1627f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - _wgslsmith_f_op_f32(-var_2.b.b.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.a.b.x, var_2.a.b.x), var_2.b.b.zz, global1.x))))));
}

