struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct Struct_4 {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 27>;

var<private> global1: Struct_3;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: i32) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(0u & min(u_input.b, u_input.b), 13867u), vec2<u32>(global1.a, ~(4294967295u >> (~4294967295u % 32u))));
    global0 = array<vec2<f32>, 27>();
    let var_1 = Struct_4(arg_0.b.x, _wgslsmith_f_op_vec3_f32(sign(arg_0.b.wwz)), arg_3, Struct_3(min(~u_input.b, ~var_0), firstTrailingBit(abs(~vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.b))), -43749i, _wgslsmith_dot_vec2_u32(global1.b.xx, abs(vec2<u32>(4294967295u, 29466u))), -733i));
    global0 = array<vec2<f32>, 27>();
    let var_2 = vec2<u32>(firstTrailingBit(_wgslsmith_mult_u32(var_1.d.d, _wgslsmith_div_u32(4294967295u, var_0))), _wgslsmith_div_u32(reverseBits(~7480u), ~var_0 | 13772u)) << (arg_2.yx % vec2<u32>(32u));
    return arg_1.a;
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec4<bool>, arg_3: i32) -> vec4<f32> {
    let var_0 = 3728i != ~(_wgslsmith_mod_i32(-11477i, global1.c) >> (_wgslsmith_mult_u32(u_input.b, arg_1.x) % 32u));
    var var_1 = vec2<bool>(arg_2.x, var_0);
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1222f * _wgslsmith_f_op_f32(arg_0.a.b.x + arg_0.a.b.x))), _wgslsmith_f_op_f32(trunc(arg_0.a.b.x))));
    let var_3 = firstLeadingBit(vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 22895u, 46816u), ~arg_1.zyw), 45947u, 50796u, u_input.a.x));
    let var_4 = _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -336f) - 533f))));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(1103f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-var_4), -479f) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1298f, 688f, arg_0.a.b.x, arg_0.a.b.x))))))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_2 {
    global1 = Struct_3(~arg_1.a, firstLeadingBit(global1.b), arg_1.c, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(1586u, ~countOneBits(global1.d))), abs(global1.c));
    let var_0 = Struct_1(arg_3.zww, _wgslsmith_f_op_vec4_f32(func_3(Struct_2(Struct_1(vec3<bool>(true, arg_0.a.x, arg_0.a.x), _wgslsmith_f_op_vec4_f32(-arg_0.b))), ~u_input.a, !arg_3, -47937i)));
    let var_1 = all(!vec2<bool>(_wgslsmith_f_op_f32(-var_0.b.x) <= _wgslsmith_f_op_f32(abs(-274f)), all(vec4<bool>(arg_0.a.x, true, var_0.a.x, true))));
    let var_2 = Struct_3(u_input.a.x, firstLeadingBit(~abs(vec4<u32>(arg_1.b.x, 4294967295u, 10777u, 0u))), -22516i, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~u_input.a.xx, ~(~arg_1.b.xx)), u_input.a.x), -15513i);
    let var_3 = vec4<u32>(1u, 1u, _wgslsmith_sub_u32(1u, ~(~abs(0u))), ~(~_wgslsmith_div_u32(1u, 4294967295u)));
    return Struct_2(func_1(var_0, Struct_2(arg_0), reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.d, var_3.x, 71388u), vec3<u32>(4294967295u, 19986u, var_2.d))) | _wgslsmith_clamp_vec3_u32(global1.b.yzz, _wgslsmith_sub_vec3_u32(global1.b.wxx, u_input.a.wwz), _wgslsmith_mod_vec3_u32(var_2.b.xyx, global1.b.wzw)), ~(_wgslsmith_add_i32(arg_1.e, -71174i) | global1.e)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec2<bool>) -> Struct_2 {
    global1 = Struct_3(firstTrailingBit(arg_1.x), u_input.a, ~global1.e & abs(2147483647i), u_input.a.x, 34139i);
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(~72264i, ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(4115i, global1.e, -2147483647i, 0i), vec4<i32>(-18783i, global1.c, -2147483647i, global1.c))), firstTrailingBit(global1.e), _wgslsmith_dot_vec3_i32(-(vec3<i32>(global1.e, global1.e, -1i) >> (vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u))), min(vec3<i32>(0i, -6432i, global1.e) >> (arg_1.yxw % vec3<u32>(32u)), ~vec3<i32>(1i, 6522i, 5431i)))), ~vec4<i32>(_wgslsmith_mod_i32(20271i >> (global1.d % 32u), -global1.c), abs(global1.c | global1.c), 1i, i32(-1i) * -global1.e));
    var var_1 = _wgslsmith_mult_vec4_u32(~firstTrailingBit(vec4<u32>(global1.a, min(u_input.a.x, 48415u), global1.b.x, arg_1.x)), ~(arg_1 | reverseBits(u_input.a)));
    var var_2 = arg_0.a.b.x;
    let var_3 = Struct_4(_wgslsmith_f_op_f32(122f * arg_0.a.b.x), arg_0.a.b.zzw, global1.c, Struct_3(_wgslsmith_div_u32(global1.a, min(global1.a, 1u)) & arg_1.x, _wgslsmith_div_vec4_u32(~u_input.a, ~global1.b >> (_wgslsmith_mult_vec4_u32(vec4<u32>(59161u, 0u, var_1.x, 19141u), vec4<u32>(global1.d, 0u, arg_1.x, arg_1.x)) % vec4<u32>(32u))), global1.e, max(~(~u_input.a.x), 21189u), i32(-1i) * -(~global1.e)));
    return arg_0;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>) -> Struct_3 {
    global1 = Struct_3(global1.b.x, vec4<u32>(~max(~u_input.b, global1.a), 4294967295u, 4294967295u, u_input.b), -(i32(-1i) * -_wgslsmith_add_i32(-23633i, -24538i)), ~(~global1.d), global1.e);
    global0 = array<vec2<f32>, 27>();
    global1 = Struct_3((~global1.d & 1076u) | 4294967295u, vec4<u32>(global1.a, firstTrailingBit(0u) | firstLeadingBit(u_input.b | 51419u), _wgslsmith_sub_u32(u_input.b, global1.a), ~_wgslsmith_mult_u32(global1.d, 36588u)), global1.e, ~0u, 1i);
    global0 = array<vec2<f32>, 27>();
    var var_0 = select(!select(!select(vec4<bool>(false, arg_0.a.a.x, true, arg_0.a.a.x), vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, false, arg_0.a.a.x), true), !select(vec4<bool>(true, false, arg_0.a.a.x, false), vec4<bool>(false, true, true, false), true), arg_0.a.a.x), vec4<bool>(true, arg_0.a.a.x | false, !(0i <= global1.e), false), select(vec4<bool>(arg_0.a.a.x, arg_1.x <= -941f, arg_0.a.a.x, true), vec4<bool>(!arg_0.a.a.x, arg_0.a.a.x, true, arg_0.a.a.x), !all(select(vec4<bool>(true, false, true, arg_0.a.a.x), vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, false, arg_0.a.a.x), arg_0.a.a.x))));
    return Struct_3(~(~_wgslsmith_div_u32(~0u, u_input.b)), u_input.a, _wgslsmith_mult_i32(-2147483647i, reverseBits(max(firstLeadingBit(global1.c), abs(1i)))), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.a.zx, vec2<u32>(4294967295u, 1u)), _wgslsmith_dot_vec2_u32(global1.b.zx, _wgslsmith_sub_vec2_u32(global1.b.yw, global1.b.yx))) ^ global1.d, global1.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1337f, -540f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(272f)), _wgslsmith_f_op_f32(round(900f))), _wgslsmith_f_op_f32(-1265f - _wgslsmith_f_op_f32(sign(-534f)))))));
    var var_1 = Struct_4(-995f, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, 1000f, var_0.x), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(686f, -913f, var_0.x))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1000f, -742f) * vec3<f32>(var_0.x, var_0.x, 559f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1098f, var_0.x, -382f))), true))))), firstLeadingBit(min(abs(34432i), firstTrailingBit(-1i))), func_5(func_4(func_2(Struct_1(vec3<bool>(false, true, false), vec4<f32>(var_0.x, var_0.x, 1000f, var_0.x)), Struct_3(u_input.b, vec4<u32>(51811u, 22022u, 65114u, 4294967295u), -25691i, global1.a, global1.c), func_1(Struct_1(vec3<bool>(false, true, true), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)), Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<f32>(var_0.x, var_0.x, 482f, var_0.x))), u_input.a.zwz, global1.c), vec4<bool>(true, true, true, true)), ~global1.b, vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1896f, 990f, 1559f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -699f, 1000f, 1630f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -133f, var_0.x, var_0.x) - vec4<f32>(var_0.x, var_0.x, -896f, var_0.x))))));
    let var_2 = _wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(var_1.b.x + _wgslsmith_f_op_f32(-var_0.x)));
    var var_3 = 16181u >> (((~_wgslsmith_div_u32(4294967295u, 108088u) | _wgslsmith_clamp_u32(u_input.a.x, 41848u, 102664u)) << (_wgslsmith_sub_u32(abs(u_input.b ^ global1.b.x), 4294967295u) % 32u)) % 32u);
    var_0 = vec3<f32>(var_0.x, -1712f, -425f);
    var var_4 = Struct_4(-1128f, _wgslsmith_div_vec3_f32(var_1.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b), vec3<f32>(_wgslsmith_f_op_f32(ceil(2805f)), _wgslsmith_f_op_f32(var_1.a + -289f), var_0.x))), _wgslsmith_mod_i32(~min(2147483647i, -1i), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(global1.e, global1.c, 0i), _wgslsmith_sub_i32(-10550i, var_1.d.c), ~0i)) ^ -global1.e, Struct_3(~0u, vec4<u32>(_wgslsmith_sub_u32(var_1.d.b.x, var_1.d.d), 0u, u_input.a.x, ~var_1.d.a), -72752i, 135023u, ~(~(-1i)) & global1.e));
    var var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(floor(718f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(476f - 403f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_1.b, vec3<f32>(851f, -869f, var_2)))) - vec3<f32>(var_2, 760f, _wgslsmith_div_f32(var_2, var_4.a)))));
    let var_6 = Struct_3(_wgslsmith_sub_u32(firstLeadingBit(var_1.d.a << (~25447u % 32u)), 14625u), u_input.a, -2147483647i, _wgslsmith_mod_u32(~var_1.d.d, _wgslsmith_mult_u32(~(~3705u), ~(~1u))), countOneBits(-_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c, 9169i, var_4.c), vec3<i32>(var_1.c, var_1.d.c, 12912i)), i32(-1i) * -25498i)));
    var var_7 = func_2(func_4(Struct_2(Struct_1(vec3<bool>(true, false, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, -1086f, 531f, 1084f)))), _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, var_4.d.d, u_input.a.x, 18929u) & abs(vec4<u32>(u_input.a.x, var_4.d.a, var_1.d.a, 9152u)), vec4<u32>(18483u, var_6.b.x, var_1.d.b.x, 11661u) | _wgslsmith_sub_vec4_u32(var_6.b, u_input.a)), vec2<bool>(true, true)).a, func_5(func_4(Struct_2(Struct_1(vec3<bool>(false, true, false), vec4<f32>(319f, var_1.a, var_4.b.x, var_1.a))), _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.d.a, 0u, var_1.d.b.x, 75236u) << (var_4.d.b % vec4<u32>(32u)), var_4.d.b), vec2<bool>(true, 1u >= global1.b.x)), _wgslsmith_f_op_vec4_f32(func_3(Struct_2(func_2(Struct_1(vec3<bool>(true, false, true), vec4<f32>(-381f, 521f, var_5.x, var_2)), var_4.d, Struct_1(vec3<bool>(false, false, true), vec4<f32>(1000f, 293f, -542f, -2032f)), vec4<bool>(true, true, false, true)).a), u_input.a, select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), false), vec4<bool>(false, false, false, true)), 0i))), Struct_1(vec3<bool>(func_1(func_2(Struct_1(vec3<bool>(true, true, false), vec4<f32>(var_1.a, var_1.a, 1453f, 1000f)), var_4.d, Struct_1(vec3<bool>(false, false, true), vec4<f32>(1204f, var_4.b.x, var_2, var_2)), vec4<bool>(true, true, true, false)).a, func_4(Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<f32>(-1156f, var_1.b.x, var_5.x, 989f))), global1.b, vec2<bool>(false, false)), vec3<u32>(global1.a, 1u, 4294967295u), var_4.d.c).a.x, 999f > _wgslsmith_f_op_f32(var_2 - -1420f), _wgslsmith_sub_u32(1u, u_input.a.x) >= 0u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-296f, -792f, 1000f, -1079f), vec4<f32>(var_4.a, var_1.b.x, var_5.x, var_4.b.x))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-404f, 598f, var_4.b.x, -1558f)))), !select(vec4<bool>(select(false, true, true), all(vec2<bool>(true, true)), false, true), vec4<bool>(89754u > var_6.d, true, true, any(vec3<bool>(true, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true))).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1614f));
}

