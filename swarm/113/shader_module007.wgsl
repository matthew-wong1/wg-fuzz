struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: i32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<i32>(2147483647i, -1694i), vec2<i32>(-13565i, -5140i), vec4<i32>(-1i, i32(-2147483648), -1i, 1i)), vec3<bool>(false, true, false), -1i);

var<private> global2: Struct_3 = Struct_3(-26931i);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2(arg_0: u32, arg_1: bool) -> vec3<u32> {
    let var_0 = 1u;
    var var_1 = Struct_2(global1.a, !(!global1.b), max(-22410i, ~(-48378i)));
    global2 = Struct_3(_wgslsmith_mult_i32(~1i, ~_wgslsmith_mod_i32(-9670i, u_input.a)));
    global0 = 0u;
    global0 = 1u;
    return u_input.b;
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>) -> u32 {
    global0 = abs(reverseBits(func_2(~u_input.b.x >> (_wgslsmith_div_u32(u_input.b.x, 24963u) % 32u), !arg_0.b.x || true).x));
    let var_0 = _wgslsmith_sub_vec3_i32(global1.a.c.xwz, global1.a.c.wwz >> (~(~vec3<u32>(1u, u_input.b.x, 0u)) % vec3<u32>(32u)));
    let var_1 = Struct_3(-14154i);
    let var_2 = ~_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, ~38383u), reverseBits(~u_input.b.yz)), ~max(_wgslsmith_clamp_vec2_u32(u_input.b.yx, vec2<u32>(47981u, u_input.b.x), vec2<u32>(u_input.b.x, 74044u)), ~vec2<u32>(u_input.b.x, 16661u)), firstLeadingBit(_wgslsmith_sub_vec2_u32(abs(vec2<u32>(u_input.b.x, u_input.b.x)), u_input.b.zy ^ u_input.b.xy)));
    return 1u & (_wgslsmith_mod_u32(var_2.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, 1u, var_2.x), u_input.b), firstLeadingBit(var_2.x))) << (abs(abs(42379u)) % 32u));
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = Struct_2(arg_2, global1.b, -(_wgslsmith_add_i32(-global2.a, global2.a) >> (~_wgslsmith_add_u32(u_input.b.x, 9076u) % 32u)));
    let var_1 = _wgslsmith_mod_vec3_u32(func_2(~u_input.b.x, var_0.b.x), vec3<u32>(_wgslsmith_add_u32(10286u, firstLeadingBit(u_input.b.x)) & func_3(Struct_2(Struct_1(global1.a.b, vec2<i32>(-19685i, -23629i), vec4<i32>(-12070i, global1.c, 45069i, arg_2.a.x)), var_0.b, -22213i), vec4<bool>(false, var_0.b.x, true, var_0.b.x)), _wgslsmith_div_u32(max(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 34414u, 1u, 19552u), vec4<u32>(u_input.b.x, 55848u, 4617u, u_input.b.x))), u_input.b.x), _wgslsmith_dot_vec3_u32(abs(~u_input.b), vec3<u32>(78637u, 1u, select(1u, u_input.b.x, global1.b.x)))));
    let var_2 = arg_1;
    let var_3 = 1u;
    var var_4 = abs(var_0.c);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1642f)), -1000f)), 911f), -696f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1361f + 1185f)), -1768f, _wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -239f, 1268f), vec3<f32>(-795f, -342f, 906f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(vec2<i32>(64086i, -2147483647i), -706f, global1.a)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-779f, 500f, -1479f), vec3<f32>(-433f, 1000f, -2198f))))), vec3<bool>(true, all(vec4<bool>(false, true, true, global1.b.x)) || true, true))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(vec2<i32>(2147483647i, 13245i), 320f, global1.a))) - vec3<f32>(_wgslsmith_f_op_f32(-1584f * -246f), -646f, _wgslsmith_f_op_f32(604f + -1666f)))));
    let var_1 = select(abs(countOneBits(~(~vec4<u32>(u_input.b.x, 1u, 4294967295u, u_input.b.x)))), abs(vec4<u32>(abs(4294967295u), _wgslsmith_div_u32(41359u, 1166u), _wgslsmith_clamp_u32(1u, ~39128u, ~61059u), select(_wgslsmith_sub_u32(1u, 1u), 4294967295u, global1.b.x))), vec4<bool>(false, !(!(u_input.a != -2147483647i)), false, true));
    global0 = u_input.b.x >> (~(~20259u) % 32u);
    global1 = Struct_2(global1.a, global1.b, ~_wgslsmith_sub_i32(global1.c, 1i));
    var var_2 = var_1.xzx;
    let var_3 = _wgslsmith_dot_vec3_i32(-vec3<i32>(min(-1i << (var_2.x % 32u), _wgslsmith_mult_i32(global2.a, -16240i)), -14718i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(-21359i, u_input.a, 2147483647i, -24301i), vec4<i32>(global1.c, u_input.a, u_input.a, global1.c), false), global1.a.c)), global1.a.c.yzw);
    var_2 = vec3<u32>(firstLeadingBit(~_wgslsmith_add_u32(_wgslsmith_clamp_u32(4294967295u, var_1.x, var_2.x), ~0u)), 1u, func_3(Struct_2(global1.a, !(!vec3<bool>(global1.b.x, global1.b.x, global1.b.x)), global1.a.a.x), vec4<bool>(true, true, true, select(any(vec2<bool>(global1.b.x, true)), global1.b.x, false))));
    let x = u_input.a;
    s_output = StorageBuffer(-1447f, vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(894f, -672f)), -467f))), var_0.x), min(~max(var_1, _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, var_2.x, var_1.x, var_1.x), var_1)), var_1));
}

