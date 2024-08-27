struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: bool,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1411f;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    global0 = 915f;
    var var_0 = ~(~(u_input.b & max(u_input.b, countOneBits(u_input.b))));
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -981f)), 215f)));
    var_0 = 4294967295u;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1344f * _wgslsmith_f_op_f32(-1592f * var_1.x)), var_1.x)))), firstLeadingBit(_wgslsmith_div_vec4_u32(max(firstLeadingBit(vec4<u32>(82791u, u_input.b, 4294967295u, 4294967295u)), ~vec4<u32>(81009u, u_input.b, 4294967295u, u_input.b)), ~vec4<u32>(u_input.b, u_input.b, u_input.b, 0u))), arg_0.x, i32(-1i) * -min(-1i, -u_input.c), select(~(vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, 1101u) ^ vec4<u32>(u_input.a.x, 1u, u_input.b, 417u)) & (select(vec4<u32>(u_input.b, 0u, u_input.b, u_input.b), vec4<u32>(22688u, u_input.a.x, u_input.b, 73602u), arg_0.x) >> (abs(vec4<u32>(u_input.a.x, u_input.b, 1u, 0u)) % vec4<u32>(32u))), abs(~vec4<u32>(0u, 12165u, u_input.b, u_input.a.x)), vec4<bool>(false, (u_input.c <= -9631i) != (u_input.c > u_input.c), true || arg_0.x, true)));
    return ~var_2.e.x;
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = u_input.b;
    let var_1 = 4294967295u;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(trunc(arg_0)), max(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(var_0, 26068u), 32761u, var_1 >> (var_1 % 32u), ~var_0), vec4<u32>(func_3(vec2<bool>(true, false)), var_1, ~u_input.a.x, var_0), ~reverseBits(vec4<u32>(0u, var_1, var_0, 25821u))), reverseBits(vec4<u32>(var_1, 1u, var_0, 1u)) << (abs(select(vec4<u32>(var_0, var_0, var_1, 34353u), vec4<u32>(28942u, var_0, u_input.a.x, u_input.a.x), vec4<bool>(true, false, false, true))) % vec4<u32>(32u))), any(!select(vec2<bool>(true, true), vec2<bool>(true, true), false)), (_wgslsmith_mod_i32(2147483647i, 1i) << (~(~var_0) % 32u)) << (~4294967295u % 32u), ~(~_wgslsmith_add_vec4_u32(~vec4<u32>(var_0, var_0, var_0, var_0), vec4<u32>(2261u, 4294967295u, var_1, var_1))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.a, var_2.a))) * _wgslsmith_f_op_f32(step(-1544f, _wgslsmith_f_op_f32(-var_2.a))));
    var var_3 = select(vec2<bool>(~var_2.d > var_2.d, any(!vec4<bool>(false, true, var_2.c, var_2.c)) || (1u > _wgslsmith_add_u32(var_0, u_input.b))), !(!(!vec2<bool>(var_2.c, var_2.c))), vec2<bool>(true, var_2.c & var_2.c));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(482f * 1459f), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0, var_2.e.x, 58867u, var_1) << (vec4<u32>(var_2.e.x, u_input.b, 1u, var_2.e.x) % vec4<u32>(32u)), vec4<u32>(u_input.b, var_1, u_input.a.x, 1u)), vec4<u32>(abs(var_0), 90031u, ~u_input.a.x, 1u)), var_2.c, 16480i, _wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, 1u, var_0), _wgslsmith_sub_vec4_u32(var_2.e, var_2.b)) << (vec4<u32>(~29030u, _wgslsmith_add_u32(var_2.b.x, var_2.e.x), var_0, _wgslsmith_clamp_u32(var_1, var_0, u_input.b)) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1637f, _wgslsmith_f_op_f32(var_2.a + -471f), _wgslsmith_f_op_f32(-var_2.a)) - _wgslsmith_div_vec3_f32(vec3<f32>(-399f, 1013f, arg_0), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a, 779f, -1342f) * vec3<f32>(-991f, -746f, var_2.a)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-646f, 100f, var_2.a)))))), Struct_1(var_2.a, _wgslsmith_mod_vec4_u32(~_wgslsmith_div_vec4_u32(var_2.e, vec4<u32>(var_0, 1u, var_1, 164629u)), ~vec4<u32>(1u, var_0, var_0, 1u)), true, -1i, ~vec4<u32>(var_1, ~u_input.a.x, ~39431u, ~19701u)));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_2(arg_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1280f), arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1335f) * 1184f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, arg_0.a, _wgslsmith_f_op_f32(step(-546f, arg_0.a))))), arg_0);
    var var_1 = func_2(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1162f))))));
    var_1 = Struct_2(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a), var_1.b.x)).a, var_0.b, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1783f), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a, var_0.a.b.ww), ~var_1.c.b.x >> (select(128562u, var_0.a.b.x, true) % 32u), countOneBits(4294967295u), 0u), !(!any(vec2<bool>(var_1.a.c, var_0.c.c))), _wgslsmith_clamp_i32(max(19829i, var_1.a.d), arg_0.d, -arg_0.d), arg_0.b));
    let var_2 = _wgslsmith_div_vec2_u32(var_1.a.e.yz | vec2<u32>(99997u, arg_0.e.x), countOneBits(var_0.a.e.wy));
    return func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2372f))) + -185f))).a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> vec3<i32> {
    global0 = arg_1.a;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1015f + 404f), _wgslsmith_f_op_f32(step(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(658f, -202f, true))))), arg_1.c)));
    var var_0 = func_2(_wgslsmith_f_op_f32(-arg_2.a));
    let var_1 = select(vec4<bool>(!arg_0.c, !func_2(_wgslsmith_f_op_f32(-arg_0.a)).c.c, var_0.c.c, func_1(func_2(_wgslsmith_f_op_f32(f32(-1f) * -527f)).c, 32153i).c), vec4<bool>(any(!(!vec4<bool>(arg_0.c, arg_0.c, true, var_0.a.c))), arg_2.c, true, !(false == all(vec2<bool>(var_0.a.c, arg_2.c)))), true);
    let var_2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1327f))));
    return ~_wgslsmith_sub_vec3_i32(~vec3<i32>(var_0.c.d, abs(-2147483647i), _wgslsmith_dot_vec2_i32(arg_3.zx, arg_3.xz)), vec3<i32>(_wgslsmith_mod_i32(var_2.c.d, ~0i), arg_1.d, arg_1.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_clamp_u32(~4294967295u ^ abs(u_input.b), abs(u_input.b), ~firstTrailingBit(20077u));
    let x = u_input.a;
    s_output = StorageBuffer(47312i, 64945i, select(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, _wgslsmith_div_i32(2147483647i, 1i)), func_4(func_1(Struct_1(1138f, vec4<u32>(55559u, 0u, u_input.a.x, 27092u), false, u_input.c, vec4<u32>(var_0, var_0, var_0, var_0)), u_input.c), Struct_1(-1644f, vec4<u32>(u_input.a.x, u_input.b, 4294967295u, 3455u), true, -34377i, vec4<u32>(var_0, 50863u, var_0, 48060u)), Struct_1(-1467f, vec4<u32>(u_input.b, u_input.a.x, 1594u, 10109u), false, u_input.c, vec4<u32>(var_0, u_input.b, u_input.a.x, 0u)), vec3<i32>(2147483647i, u_input.c, 0i))), ~abs(u_input.c), any(vec2<bool>(true, true))), var_0, u_input.c);
}

