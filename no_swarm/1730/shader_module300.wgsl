struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: bool,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1773f, arg_0.a.b.x)))) - -2674f);
    global0 = false;
    let var_1 = Struct_1(-_wgslsmith_mod_i32(arg_0.a.a, 36204i), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + arg_1.x) * _wgslsmith_f_op_f32(arg_1.x * arg_0.a.b.x))), _wgslsmith_f_op_f32(-var_0), arg_0.a.b.x, 721f), select(true, all(!vec2<bool>(arg_0.a.c, arg_0.b.x)), !all(arg_0.b.xwy)) & (_wgslsmith_f_op_f32(floor(var_0)) >= arg_1.x), arg_0.a.e & 7749i, arg_0.a.e);
    global0 = !arg_0.a.c;
    var var_2 = arg_0.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.x), var_0))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: i32) -> vec4<f32> {
    global0 = true;
    var var_0 = -384f;
    let var_1 = Struct_1(30152i, _wgslsmith_f_op_vec4_f32(arg_0.a.b + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(arg_0.a.b)), _wgslsmith_f_op_vec4_f32(-arg_0.a.b), arg_0.a.c))), all(arg_0.b.xy), abs(~(-2147483647i)), _wgslsmith_sub_i32(_wgslsmith_sub_i32(arg_2, arg_2), arg_2));
    let var_2 = arg_0.a;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.b.xx - vec2<f32>(var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -747f, var_1.c))))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.a.b.x, 913f, -942f, var_3.x))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.a.b), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(928f, 264f, 1000f, var_3.x)))))) + arg_0.a.b);
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(arg_0.a.d, _wgslsmith_f_op_vec4_f32(func_3(arg_0, _wgslsmith_mult_vec4_i32(vec4<i32>(6122i, 30616i, 0i, 9453i) | vec4<i32>(arg_0.a.d, 0i, arg_0.a.e, arg_0.a.d), -vec4<i32>(arg_0.a.d, 1i, -48424i, -34259i)), ~arg_0.a.d | -arg_0.a.e)), false, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.a, 5218i, -59464i, arg_0.a.d) << (vec4<u32>(u_input.b, u_input.b, u_input.a, u_input.a) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.a.d, arg_0.a.d, arg_0.a.a, arg_0.a.a), vec4<i32>(arg_0.a.a, 23404i, 64536i, arg_0.a.d), vec4<i32>(-17114i, arg_0.a.a, arg_0.a.d, -35717i))) >> (~firstLeadingBit(u_input.a) % 32u), ~_wgslsmith_mod_i32(arg_0.a.d, ~arg_0.a.d)), select(arg_0.b, arg_0.b, !all(arg_0.b.zxz)));
    global0 = _wgslsmith_f_op_f32(round(-464f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(659f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.b.x) * arg_0.a.b.x))) - 2415f);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-236f, arg_0.a.b.x))) * _wgslsmith_f_op_f32(min(1958f, _wgslsmith_f_op_f32(abs(arg_0.a.b.x)))))), 760f, _wgslsmith_f_op_f32(ceil(-1585f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a.b.x))), _wgslsmith_div_f32(-311f, _wgslsmith_f_op_f32(-arg_0.a.b.x)), all(select(vec2<bool>(true, true), arg_0.b.xy, arg_0.b.yz))))));
    var var_2 = arg_0.a;
    let var_3 = _wgslsmith_dot_vec3_u32(~vec3<u32>(22940u, 17074u, u_input.a), reverseBits(countOneBits(~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.b, u_input.a), vec3<u32>(u_input.b, u_input.b, u_input.b)))));
    return arg_0;
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_2) -> vec4<f32> {
    global0 = true;
    var var_0 = Struct_2(func_2(arg_2).a, select(vec4<bool>(!func_2(Struct_2(arg_2.a, vec4<bool>(true, arg_2.b.x, false, false))).b.x, arg_1 <= 0u, arg_2.b.x, false), vec4<bool>(arg_2.a.c, arg_2.a.c, all(vec3<bool>(true, arg_2.a.c, true)), true), arg_2.b));
    global0 = arg_2.a.c;
    var var_1 = arg_2;
    var_1 = func_2(func_2(arg_2));
    return vec4<f32>(-758f, var_0.a.b.x, arg_2.a.b.x, var_1.a.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-214f, 166f, 730f, -894f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1264f, 862f, -542f, 1298f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-1268f)), 109f, _wgslsmith_f_op_f32(-857f * -1018f), _wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(-2147483647i, vec4<f32>(-1547f, 1356f, 186f, -978f), false, -41744i, 0i), vec4<bool>(true, true, false, false)), vec3<f32>(1008f, 685f, -104f)))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1434f, -763f, 841f, -248f)))), _wgslsmith_f_op_vec4_f32(func_4(u_input.a, ~u_input.a, func_2(Struct_2(Struct_1(0i, vec4<f32>(-392f, -2026f, 504f, -1000f), true, 0i, -163i), vec4<bool>(true, true, true, true))))), func_2(Struct_2(Struct_1(16315i, vec4<f32>(-1000f, -218f, 1195f, 1072f), false, 3814i, 2147483647i), vec4<bool>(true, true, true, true))).b)))), !(u_input.b != 32967u)));
    var var_2 = func_2(func_2(Struct_2(func_2(func_2(Struct_2(Struct_1(1i, vec4<f32>(-999f, -443f, var_1.x, var_1.x), false, 1i, 1i), vec4<bool>(false, true, false, true)))).a, vec4<bool>(true, 4294967295u > u_input.a, true, true)))).a;
    let var_3 = _wgslsmith_mult_u32(~0u & ~((u_input.b ^ 0u) & 49588u), ~_wgslsmith_clamp_u32(0u, 1u, ~(35981u >> (u_input.a % 32u))));
    var var_4 = max(vec2<u32>(~_wgslsmith_sub_u32(var_3, ~var_3), ~_wgslsmith_add_u32(var_3, reverseBits(u_input.b))), ~(~(~max(vec2<u32>(u_input.a, var_3), vec2<u32>(2308u, var_3)))));
    var var_5 = func_2(Struct_2(Struct_1(abs(var_2.a) | (var_2.a & var_2.a), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(218f, var_2.b.x, var_2.b.x, var_2.b.x)), var_1, vec4<bool>(var_2.c, var_2.c, var_2.c, true))), true, -12068i, _wgslsmith_div_i32(-var_2.a, -41878i)), select(select(vec4<bool>(var_2.c, var_2.c, var_2.c, false), vec4<bool>(var_2.c, var_2.c, var_2.c, true), !vec4<bool>(var_2.c, var_2.c, var_2.c, var_2.c)), select(!vec4<bool>(false, var_2.c, false, true), func_2(Struct_2(Struct_1(32991i, var_2.b, var_2.c, var_2.d, var_2.e), vec4<bool>(var_2.c, false, var_2.c, false))).b, false & var_2.c), vec4<bool>(var_2.c | var_2.c, u_input.b < 1u, !var_2.c, var_2.c))));
    var_2 = func_2(func_2(func_2(Struct_2(func_2(Struct_2(var_5.a, var_5.b)).a, !var_5.b)))).a;
    let var_6 = ~(~(_wgslsmith_add_vec2_i32(-vec2<i32>(var_2.d, var_2.d), _wgslsmith_div_vec2_i32(vec2<i32>(26342i, 2147483647i), vec2<i32>(91574i, var_5.a.a))) << (vec2<u32>(~60634u, ~var_3) % vec2<u32>(32u))));
    let var_7 = _wgslsmith_add_vec3_u32(select(vec3<u32>(4294967295u, 1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(21343u, 0u), vec2<u32>(u_input.b, var_3) << (vec2<u32>(var_3, u_input.a) % vec2<u32>(32u)))), _wgslsmith_mult_vec3_u32(firstLeadingBit(~vec3<u32>(28546u, 13178u, u_input.a)), _wgslsmith_div_vec3_u32(vec3<u32>(var_4.x, u_input.a, 102391u), reverseBits(vec3<u32>(u_input.a, 6590u, var_3)))), !var_5.b.xzx), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(var_3, abs(var_4.x)), reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_4.x, var_4.x), vec3<u32>(var_4.x, var_4.x, 1u))), ~(~51429u)), ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 1u, var_3), vec3<u32>(var_4.x, u_input.b, 1u), vec3<u32>(var_4.x, var_4.x, 0u)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(max(var_7, min(~var_7, vec3<u32>(0u, 59170u, 1u)))), var_7, var_7 << (var_7 % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.a.b.x, var_2.b.x, 2591f)) + _wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_5.a.b.x), vec3<f32>(819f, var_5.a.b.x, var_1.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.yyz - vec3<f32>(-281f, 228f, 1429f)))))));
}

