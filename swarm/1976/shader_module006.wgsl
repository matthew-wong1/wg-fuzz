struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: bool,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(false, false));

var<private> global1: vec4<i32> = vec4<i32>(1i, i32(-2147483648), 0i, -32008i);

var<private> global2: bool;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<bool>) -> bool {
    var var_0 = select(select(arg_0.zx, !(!select(vec2<bool>(true, true), vec2<bool>(false, arg_1.x), vec2<bool>(arg_0.x, global0.a.x))), arg_1.zz), !select(!select(vec2<bool>(false, arg_1.x), vec2<bool>(true, arg_1.x), vec2<bool>(false, false)), global0.a, all(!arg_1)), vec2<bool>(global0.a.x, true));
    let var_1 = _wgslsmith_clamp_i32(u_input.d.x, global1.x, -(_wgslsmith_div_i32(u_input.c, u_input.d.x) >> (firstTrailingBit(_wgslsmith_clamp_u32(0u, 0u, u_input.a.x)) % 32u)));
    global0 = Struct_1(vec2<bool>(var_0.x, (true && var_0.x) || arg_1.x));
    var_0 = vec2<bool>(true, global0.a.x);
    let var_2 = Struct_1(arg_1.wy);
    return any(var_2.a);
}

fn func_2() -> vec2<i32> {
    let var_0 = Struct_1(vec2<bool>(true, global0.a.x || !(false && global0.a.x)));
    global2 = global0.a.x;
    var var_1 = Struct_4(func_3(vec3<bool>(any(vec3<bool>(global0.a.x, false, global0.a.x)), global0.a.x, true), !select(vec4<bool>(true, global0.a.x, global0.a.x, true), !vec4<bool>(global0.a.x, false, var_0.a.x, var_0.a.x), select(false, global0.a.x, global0.a.x))), Struct_1(vec2<bool>(all(var_0.a), global0.a.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1459f * 134f), _wgslsmith_f_op_f32(abs(-684f)), -1066f)))));
    let var_3 = ~(firstLeadingBit(u_input.a) & ((vec3<u32>(106416u, u_input.a.x, u_input.a.x) >> (_wgslsmith_sub_vec3_u32(u_input.a, u_input.a) % vec3<u32>(32u))) | ~_wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(1u, u_input.a.x, u_input.a.x))));
    return _wgslsmith_add_vec2_i32(-vec2<i32>(global1.x << (~1u % 32u), 2503i), _wgslsmith_sub_vec2_i32(vec2<i32>(firstLeadingBit(24325i), 1i), u_input.d.zz));
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_div_vec2_i32(select(-u_input.d.xw, vec2<i32>(u_input.b, -2147483647i) & vec2<i32>(global1.x, u_input.d.x), vec2<bool>(global0.a.x, global0.a.x)) << (select(u_input.a.yy ^ u_input.a.xx, vec2<u32>(u_input.a.x, u_input.a.x), vec2<bool>(global0.a.x, global0.a.x)) % vec2<u32>(32u)), vec2<i32>(u_input.d.x, global1.x)) & (vec2<i32>(select(-2147483647i ^ u_input.c, ~u_input.d.x, global0.a.x), global1.x) >> (vec2<u32>(u_input.a.x, 67369u) % vec2<u32>(32u)));
    global1 = vec4<i32>(firstLeadingBit(_wgslsmith_sub_i32(-2147483647i, var_0.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(18538i, var_0.x), ~var_0.x), func_2()) | -22279i, -8746i, -5124i);
    var var_1 = Struct_3(Struct_2(!select(!global0.a, global0.a, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-408f)))), vec3<bool>(!all(!vec2<bool>(global0.a.x, true)), any(!vec3<bool>(global0.a.x, global0.a.x, true)), true), vec2<bool>(false, false));
    let var_2 = _wgslsmith_mult_u32(max(reverseBits(_wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 1u), u_input.a.x << (0u % 32u))), firstLeadingBit(~(~51556u))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 39866u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) >> (reverseBits(_wgslsmith_dot_vec3_u32(u_input.a, _wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, 44699u)))) % 32u));
    var var_3 = true;
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: vec4<f32>) -> Struct_3 {
    var var_0 = Struct_3(Struct_2(vec2<bool>(global0.a.x, global0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * -959f)), !(!vec3<bool>(!global0.a.x, true, !global0.a.x)), !select(global0.a, global0.a, all(select(vec4<bool>(true, false, global0.a.x, global0.a.x), vec4<bool>(true, false, false, true), vec4<bool>(false, false, global0.a.x, global0.a.x)))));
    let var_1 = all(!select(!vec4<bool>(true, var_0.a.a.x, true, var_0.b.x), select(vec4<bool>(global0.a.x, var_0.c.x, global0.a.x, true), vec4<bool>(false, false, var_0.a.a.x, global0.a.x), global0.a.x), vec4<bool>(global0.a.x, true, var_0.b.x, true))) && true;
    global1 = vec4<i32>(global1.x, global1.x, abs(func_2().x), global1.x);
    var var_2 = arg_1 | 0u;
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(arg_2.wyw))), _wgslsmith_f_op_vec3_f32(-arg_2.wzy), true));
    return Struct_3(var_0.a, vec3<bool>(func_3(!vec3<bool>(var_1, true, global0.a.x), !vec4<bool>(var_1, var_0.b.x, false, true)) & true, all(!vec4<bool>(true, var_1, global0.a.x, false)), !(!global0.a.x)), select(!(!select(vec2<bool>(true, true), vec2<bool>(var_0.a.a.x, false), global0.a)), global0.a, !(!select(var_0.a.a, vec2<bool>(true, false), vec2<bool>(global0.a.x, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-261f, -725f))) * 1490f), 1u, vec4<f32>(_wgslsmith_f_op_f32(-362f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(194f - -432f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-677f)))), -573f, -811f));
    global1 = firstLeadingBit(u_input.d);
    global0 = Struct_1(select(var_0.b.xx, vec2<bool>(func_4(813f, u_input.a.x << (u_input.a.x % 32u), vec4<f32>(1000f, -357f, var_0.a.b, -1198f)).a.a.x, _wgslsmith_f_op_f32(trunc(var_0.a.b)) != 561f), any(vec3<bool>(true, true, all(vec3<bool>(true, global0.a.x, false))))));
    global2 = any(vec4<bool>(true, false, true, global0.a.x));
    let var_1 = var_0.b;
    global1 = _wgslsmith_mod_vec4_i32(max(abs(u_input.d), u_input.d), min(min(abs(vec4<i32>(-1i, global1.x, global1.x, u_input.e)), vec4<i32>(u_input.c, global1.x, global1.x, global1.x)), vec4<i32>(u_input.c, ~(-28598i), global1.x << (4294967295u % 32u), -2147483647i)) ^ (~u_input.d << (vec4<u32>(u_input.a.x, 22871u, min(11151u, u_input.a.x), 4294967295u) % vec4<u32>(32u))));
    let var_2 = max(_wgslsmith_dot_vec2_i32(u_input.d.xz, vec2<i32>(1i, -2147483647i)), 22072i);
    var var_3 = var_0;
    var var_4 = ~(firstTrailingBit(~u_input.a << (u_input.a % vec3<u32>(32u))) >> (vec3<u32>(29748u, ~1u, ~1u) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(46344u);
}

