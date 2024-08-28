struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec2<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 12>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1() -> vec2<u32> {
    global0 = array<vec2<f32>, 12>();
    var var_0 = !vec2<bool>(!(_wgslsmith_f_op_f32(step(170f, 445f)) <= -977f), -(u_input.c & u_input.c) > _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.b, u_input.b), -9779i, -45572i));
    var_0 = vec2<bool>(false & !any(select(vec3<bool>(true, var_0.x, false), vec3<bool>(var_0.x, false, true), vec3<bool>(false, var_0.x, var_0.x))), true);
    var var_1 = vec2<bool>(false | !var_0.x, true);
    var var_2 = _wgslsmith_sub_i32(u_input.b, -_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a.x, -u_input.a.x), ~countOneBits(u_input.a.x)));
    return vec2<u32>(81318u, ~4294967295u);
}

fn func_3() -> f32 {
    global0 = array<vec2<f32>, 12>();
    global0 = array<vec2<f32>, 12>();
    global0 = array<vec2<f32>, 12>();
    global0 = array<vec2<f32>, 12>();
    let var_0 = select(abs(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 15551u), vec3<u32>(4294967295u, 1u, 1u))), _wgslsmith_mult_u32(21031u, _wgslsmith_dot_vec3_u32(vec3<u32>(23631u, 74549u, 18356u), vec3<u32>(17020u, 1u, 4294967295u))), 1u)), vec3<u32>(~firstLeadingBit(~4294967295u), ~(~67389u), ~1u), vec3<bool>(false, true, false));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1604f - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(264f, 144f)), -787f)))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1269f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), all(vec3<bool>(false, true, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2557f) * _wgslsmith_f_op_f32(1183f - 227f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1392f, _wgslsmith_f_op_f32(-690f + -1630f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(190f - -1590f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), ~abs(vec4<u32>(~53643u, 4294967295u, countOneBits(51235u), ~5874u)), ~1u, -u_input.a);
    let var_1 = vec2<u32>(50335u, 4294967295u);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_0.a)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-338f, var_0.b)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1348f + 384f) + _wgslsmith_f_op_f32(exp2(var_0.b))))), _wgslsmith_f_op_f32(var_0.b + var_0.b), var_0.c, 4294967295u, -countOneBits(_wgslsmith_mod_vec4_i32(var_0.e, var_0.e)));
    let var_3 = var_0.c.x;
    var var_4 = var_0;
    return var_0;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = _wgslsmith_add_u32(arg_1.d, 0u);
    var_0 = _wgslsmith_dot_vec2_u32(~(~select(vec2<u32>(46163u, arg_3.d) & arg_2.c.wz, vec2<u32>(0u, arg_2.d), true)), ~arg_1.c.xy);
    global0 = array<vec2<f32>, 12>();
    let var_1 = !vec4<bool>(any(vec2<bool>(true, true)), -2147483647i == _wgslsmith_add_i32(arg_0.x, min(1i, arg_3.e.x)), true, !(any(vec2<bool>(false, true)) && true));
    var_0 = arg_3.c.x ^ min(_wgslsmith_mult_u32(arg_2.d, abs(arg_2.c.x | 0u)), _wgslsmith_mult_u32(~arg_3.d ^ arg_1.c.x, 2527u));
    return _wgslsmith_f_op_f32(ceil(-813f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~_wgslsmith_mod_i32(u_input.b, u_input.c))) >> (1u % 32u);
    global0 = array<vec2<f32>, 12>();
    global0 = array<vec2<f32>, 12>();
    var var_1 = func_1();
    let var_2 = -(~var_0);
    var var_3 = var_2;
    global0 = array<vec2<f32>, 12>();
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_mod_vec2_i32(select(u_input.a.wz ^ u_input.a.zy, u_input.a.xy | vec2<i32>(0i, -2147483647i), true), u_input.a.yz), func_2(), func_2(), func_2())), _wgslsmith_f_op_f32(-1603f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, -664f)) * 151f)))));
    let var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(-var_0, var_4, -342f, select(select(reverseBits(vec2<u32>(var_1.x, var_1.x) << (vec2<u32>(61033u, var_1.x) % vec2<u32>(32u))), _wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(38645u, 32655u)), ~vec2<u32>(var_1.x, var_1.x)), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, false))), vec2<u32>(1u, _wgslsmith_add_u32(~var_1.x, 4294967295u)), true), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_0, var_5), u_input.a.yx), _wgslsmith_mod_vec2_i32(u_input.a.zw >> (vec2<u32>(0u, 25403u) % vec2<u32>(32u)), u_input.a.zw)), _wgslsmith_clamp_vec2_i32(abs(select(u_input.a.wy, vec2<i32>(u_input.a.x, 23854i), vec2<bool>(false, true))), u_input.a.wx, select(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), u_input.a.xw), ~u_input.a.yw, vec2<bool>(false, false)))));
}

