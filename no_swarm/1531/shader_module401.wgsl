struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: vec3<i32>,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_3;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1193f + 826f)), false)), global0.x, global0.x, 1616f));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.ywy), vec3<f32>(var_0.x, global0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.xzx), vec3<f32>(-1077f, 465f, global0.x), true)))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1345f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1918f), _wgslsmith_f_op_f32(f32(-1f) * -623f), all(vec2<bool>(true, false))))))));
    var var_3 = Struct_3(_wgslsmith_dot_vec2_i32(abs(abs(reverseBits(global1.c.b.xx))), vec2<i32>(~arg_1, firstTrailingBit(-1i))), arg_1, Struct_1(~vec3<u32>(u_input.c, global1.d.x, 10992u), abs(_wgslsmith_clamp_vec3_i32(countOneBits(global1.c.b), select(arg_0.b, arg_0.b, false), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_1, -23011i, -1i), vec3<i32>(arg_0.b.x, 19725i, 0i))))), global1.d);
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(ceil(164f)), _wgslsmith_f_op_f32(exp2(var_1.x)), global0.x);
    return select(!vec4<bool>(!any(vec3<bool>(true, false, false)), any(vec4<bool>(true, true, false, true)), !any(vec3<bool>(true, true, false)), !any(vec3<bool>(true, false, false))), !(!select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true))), !select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: Struct_3) -> f32 {
    global0 = vec3<f32>(-2134f, -500f, global0.x);
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), -569f, _wgslsmith_f_op_f32(-871f * 1192f)))), vec3<f32>(332f, -1093f, global0.x), !(false & (global1.c.b.x != 0i)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_f_op_f32(f32(-1f) * -207f), global0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, global0.x, 218f)))))));
    var var_0 = Struct_2(min(abs(global1.a), _wgslsmith_mult_i32(~0i, min(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.b, 2147483647i), vec2<i32>(-2107i, -1i)), global1.c.b.x))), vec2<bool>(arg_0.x, ~arg_1.x <= ~global1.d.x), -abs(arg_2.c.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(global0.x, -589f)), _wgslsmith_f_op_f32(exp2(global0.x)), -1176f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1226f * -258f), global0.x))), arg_2.c);
    let var_1 = _wgslsmith_f_op_f32(-249f * _wgslsmith_f_op_f32(-1360f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1084f + _wgslsmith_f_op_f32(var_0.d.x * global0.x)), global0.x))));
    global1 = Struct_3(-38376i, global1.a, arg_2.c, reverseBits(vec4<u32>(1u, 4294967295u, arg_1.x, 4294967295u) & (arg_2.d | vec4<u32>(arg_2.d.x, 3229u, 11477u, 1959u))) >> ((arg_1 & vec4<u32>(_wgslsmith_mod_u32(u_input.b.x, global1.d.x), u_input.e, ~u_input.b.x, 4294967295u)) % vec4<u32>(32u)));
    return -304f;
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.x)) * _wgslsmith_f_op_f32(func_4(func_3(arg_0.c, abs(-33600i)), abs(firstTrailingBit(~vec4<u32>(42206u, 0u, 35759u, u_input.b.x))), Struct_3(global1.c.b.x, max(1i, ~40992i), Struct_1(~vec3<u32>(global1.c.a.x, 1u, u_input.e), vec3<i32>(32654i, arg_0.b, 1i) >> (vec3<u32>(11779u, arg_0.c.a.x, 4294967295u) % vec3<u32>(32u))), ~vec4<u32>(global1.d.x, 40136u, 10917u, u_input.c)))));
    let var_1 = vec3<u32>(~arg_0.c.a.x, ~_wgslsmith_div_u32(abs(_wgslsmith_dot_vec2_u32(arg_0.c.a.zy, global1.d.yz)), arg_0.d.x), _wgslsmith_dot_vec4_u32(vec4<u32>(select(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.a.x, 4294967295u), u_input.b.zz), ~0u, true), _wgslsmith_dot_vec2_u32(~global1.d.zx, ~vec2<u32>(arg_0.c.a.x, 0u)), select(reverseBits(78054u), 20057u, any(vec2<bool>(false, arg_2))), 59672u), ~_wgslsmith_sub_vec4_u32(firstLeadingBit(global1.d), ~vec4<u32>(35741u, 3423u, arg_0.d.x, 41635u))));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1015f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), -1203f);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x))));
    let var_3 = var_1.yy;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-833f, global0.x)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2)))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(global0.x - -1021f))));
}

fn func_1() -> vec4<u32> {
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_3(2147483647i, 2147483647i, global1.c, vec4<u32>(1u, 4294967295u, global1.c.a.x, 39324u)), 1i, any(vec2<bool>(true, false))))), global0.x, _wgslsmith_f_op_f32(-global0.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1233f, global0.x, global0.x))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-813f, global0.x, 503f) - vec3<f32>(global0.x, global0.x, global0.x)))))));
    let var_0 = select(false, false, true);
    let var_1 = Struct_2(global1.b, select(vec2<bool>(var_0, select(true, false, !var_0)), vec2<bool>(var_0, var_0), vec2<bool>(true & select(false, true, false), true & any(vec2<bool>(var_0, true)))), firstLeadingBit(global1.c.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -477f), -564f, -110f, -984f)), Struct_1(vec3<u32>(u_input.b.x, 1u, 76687u), ~_wgslsmith_clamp_vec3_i32(~vec3<i32>(global1.a, global1.b, global1.a), vec3<i32>(global1.c.b.x, 58858i, global1.b), _wgslsmith_sub_vec3_i32(vec3<i32>(global1.c.b.x, 49909i, global1.a), global1.c.b))));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-607f, global0.x) - vec2<f32>(-657f, -264f));
    var var_3 = Struct_2(15474i, vec2<bool>(true, any(var_1.b) && all(func_3(var_1.e, var_1.c.x).wwx)), var_1.c & (abs(global1.c.b) | select(global1.c.b >> (global1.d.xzx % vec3<u32>(32u)), var_1.e.b, !var_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1166f, var_1.d.x, var_1.d.x, var_2.x) + vec4<f32>(-2460f, var_2.x, 1226f, var_1.d.x))))))), Struct_1(vec3<u32>(53054u, ~(~var_1.e.a.x), _wgslsmith_mult_u32(12547u, global1.c.a.x)), reverseBits(global1.c.b)));
    return reverseBits(reverseBits(vec4<u32>(_wgslsmith_sub_u32(var_1.e.a.x, global1.c.a.x), 4294967295u, 0u, ~global1.d.x)) ^ (vec4<u32>(4294967295u | var_1.e.a.x, var_3.e.a.x, ~1u, 1u) >> (vec4<u32>(var_3.e.a.x, ~25454u, global1.c.a.x << (var_3.e.a.x % 32u), _wgslsmith_mod_u32(global1.d.x, 1u)) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(true, false, all(vec3<bool>(true, true, true)));
    global1 = Struct_3(-global1.c.b.x ^ -global1.c.b.x, select(-20423i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(global1.c.b.x, 0i >> (u_input.b.x % 32u)), ~global1.a), !(!(var_0.x && true))), global1.c, _wgslsmith_sub_vec4_u32(firstLeadingBit(func_1()), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(global1.d, u_input.b), _wgslsmith_mod_vec4_u32(vec4<u32>(38158u, 0u, global1.d.x, global1.d.x), vec4<u32>(0u, global1.d.x, u_input.d, 1u))) | u_input.b));
    let var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(global1.c.a.x, firstTrailingBit(4294967295u)), _wgslsmith_div_u32(u_input.d, u_input.e)), global1.d.x, _wgslsmith_mod_u32(27580u, u_input.a ^ global1.c.a.x) << (~_wgslsmith_clamp_u32(u_input.c, 0u, 1u) % 32u)), ~(~(~u_input.b.xzz & ~global1.c.a)));
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(global1.b, -20097i | (-5544i << (global1.c.a.x % 32u)), countOneBits(~global1.c.b.x), global1.b) | vec4<i32>(_wgslsmith_add_i32(-global1.b, 7400i), -(global1.c.b.x << (2372u % 32u)), -2147483647i, 0i), -firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(0i, global1.b, -2147483647i, 1i), -vec4<i32>(global1.c.b.x, global1.c.b.x, global1.b, 19161i))));
    var var_3 = ~global1.c.b;
    var_3 = -_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(global1.c.b, global1.c.b, _wgslsmith_clamp_vec3_i32(global1.c.b, vec3<i32>(global1.c.b.x, global1.a, var_3.x), global1.c.b)), max(global1.c.b | vec3<i32>(var_3.x, var_3.x, global1.c.b.x), vec3<i32>(26348i, 2147483647i, global1.c.b.x))), -vec3<i32>(21414i, 40103i, 2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, 28819u, select(_wgslsmith_div_u32(_wgslsmith_add_u32(var_1.x & 11096u, var_1.x), ~8211u), (0u & _wgslsmith_mod_u32(global1.c.a.x, 0u)) << (_wgslsmith_div_u32(_wgslsmith_sub_u32(global1.c.a.x, 66384u), 7693u) % 32u), all(!vec3<bool>(var_0.x, true, var_0.x))), u_input.b.x, ~(-8073i));
}

