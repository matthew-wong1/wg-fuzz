struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: bool,
    d: vec3<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-4053i, i32(-2147483648), 29642i);

var<private> global1: Struct_3 = Struct_3(499f, 1u, Struct_2(vec2<u32>(0u, 28825u)), Struct_1(1u, vec4<u32>(32692u, 4294967295u, 1u, 1u), true, vec3<u32>(26352u, 1u, 0u), vec2<bool>(false, false)));

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1140f, _wgslsmith_f_op_f32(global1.a - -990f))))));
    global0 = ~(~(-abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-36213i, 0i, global0.x), vec3<i32>(-12932i, 0i, global0.x)))));
    global1 = Struct_3(global1.a, _wgslsmith_mod_u32(global1.c.a.x << (~6636u % 32u), max(~(~arg_0.x), ~(~u_input.a.x))), global1.c, Struct_1(reverseBits(_wgslsmith_dot_vec2_u32(arg_0.yz, global1.d.d.zy)), vec4<u32>(0u, 42008u, arg_0.x, _wgslsmith_dot_vec2_u32(u_input.a.yx, firstTrailingBit(vec2<u32>(u_input.a.x, 1u)))), _wgslsmith_f_op_f32(1422f * _wgslsmith_f_op_f32(floor(global1.a))) != _wgslsmith_f_op_f32(-global1.a), u_input.a.zxz, !global1.d.e));
    var var_1 = global1.d;
    var var_2 = ~(~(~(~_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, global0.x, -23150i), vec3<i32>(-5869i, 0i, 34636i), vec3<i32>(1i, 11587i, global0.x)))));
    return var_0.x;
}

fn func_2(arg_0: u32) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, _wgslsmith_f_op_f32(step(global1.a, -1094f)), _wgslsmith_f_op_f32(global1.a - 713f), global1.a)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, -1096f, global1.a, global1.a) * vec4<f32>(-719f, global1.a, global1.a, global1.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, global1.a, 324f, -273f))))))) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(firstLeadingBit(u_input.a))), _wgslsmith_f_op_f32(func_3(global1.d.b)), -713f, global1.a), vec4<f32>(global1.a, _wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-631f)) + _wgslsmith_f_op_f32(f32(-1f) * -1036f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.a))))));
    var var_1 = Struct_1(53006u << (0u % 32u), global1.d.b, all(!global1.d.e) & (global0.x == ~2147483647i), vec3<u32>(6996u, arg_0, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(global1.d.b, u_input.a), abs(min(u_input.a.x, 1u)))), global1.d.e);
    let var_2 = global0.xz;
    global0 = _wgslsmith_div_vec3_i32(~firstLeadingBit(vec3<i32>(32007i, global0.x, ~var_2.x)), ~vec3<i32>(~_wgslsmith_mult_i32(2147483647i, -1i), ~_wgslsmith_sub_i32(31876i, global0.x), global0.x));
    let var_3 = 1u;
    return global1.d.d;
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: u32) -> f32 {
    let var_0 = Struct_1(countOneBits(u_input.a.x), firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(global1.c.a.x, 1u, 86293u, arg_2), vec4<u32>(42036u, 0u, 0u, 65009u) & vec4<u32>(arg_0.c.a.x, arg_0.c.a.x, 1u, global1.c.a.x)) | vec4<u32>(8792u, u_input.a.x & u_input.a.x, 18477u, 4294967295u)), false || global1.d.e.x, ~func_2(global1.c.a.x ^ 4294967295u) >> (abs(global1.d.d) % vec3<u32>(32u)), vec2<bool>(false, true));
    global0 = _wgslsmith_mod_vec3_i32(vec3<i32>(-(~global0.x ^ ~(-2147483647i)), min(_wgslsmith_clamp_i32(global0.x, 1i, firstLeadingBit(-30297i)), 0i), _wgslsmith_clamp_i32(0i, global0.x, global0.x)), (vec3<i32>(-62369i, _wgslsmith_mod_i32(-1i, global0.x), global0.x & global0.x) & _wgslsmith_add_vec3_i32(-vec3<i32>(-34727i, -2147483647i, 6656i), vec3<i32>(4948i, global0.x, global0.x))) >> (firstTrailingBit(abs(_wgslsmith_sub_vec3_u32(global1.d.b.yyw, arg_0.d.d))) % vec3<u32>(32u)));
    var var_1 = arg_0.c;
    let var_2 = firstLeadingBit(var_0.b.zw);
    let var_3 = select(vec3<bool>((abs(global0.x) & 36904i) != global0.x, true, var_0.c), select(vec3<bool>(!(global1.d.e.x & true), !var_0.e.x, false), !select(select(vec3<bool>(var_0.c, false, true), vec3<bool>(false, false, var_0.e.x), vec3<bool>(false, global1.d.c, arg_0.d.c)), select(vec3<bool>(true, global1.d.e.x, var_0.e.x), vec3<bool>(arg_0.d.e.x, false, global1.d.c), vec3<bool>(global1.d.e.x, true, var_0.c)), vec3<bool>(true, arg_0.d.e.x, false)), select(select(vec3<bool>(global1.d.c, global1.d.c, false), vec3<bool>(global1.d.e.x, global1.d.e.x, false), !vec3<bool>(global1.d.e.x, true, false)), vec3<bool>(true, true, true), all(!arg_0.d.e))), select(select(!select(vec3<bool>(false, global1.d.c, global1.d.e.x), vec3<bool>(global1.d.e.x, var_0.e.x, true), false), !(!vec3<bool>(arg_0.d.e.x, var_0.e.x, arg_0.d.e.x)), select(true, true, any(vec4<bool>(false, true, global1.d.c, global1.d.c)))), vec3<bool>(!(!global1.d.c), var_0.c, true), any(select(!vec4<bool>(false, true, global1.d.e.x, true), !vec4<bool>(false, false, global1.d.c, arg_0.d.c), global1.d.c))));
    return global1.a;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = global0.x;
    var_0 = -11816i;
    global1 = Struct_3(_wgslsmith_f_op_f32(step(724f, arg_1.x)), _wgslsmith_mult_u32(1u, min(79130u, ~(~9485u))), global1.c, global1.d);
    let var_1 = vec2<u32>(firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, global1.c.a.x), select(vec2<u32>(4294967295u, global1.d.a), vec2<u32>(u_input.a.x, 0u), global1.d.e.x)), u_input.a.x << (0u % 32u))), 32527u);
    let var_2 = arg_1.yz;
    return global1.d;
}

fn func_5(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_div_vec2_i32(global0.zx, vec2<i32>(global0.x ^ global0.x, reverseBits(45892i)));
    var_0 = reverseBits(-(vec2<i32>(-12452i, _wgslsmith_mult_i32(global0.x, 36575i)) & vec2<i32>(~global0.x, var_0.x)));
    global0 = reverseBits(~vec3<i32>(-47259i, 0i, ~22399i)) << (vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(arg_0.d, ~vec3<u32>(21944u, 4695u, arg_0.a)), _wgslsmith_add_u32(24169u, u_input.a.x)), ~u_input.a.x, 0u) % vec3<u32>(32u));
    global1 = Struct_3(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) * _wgslsmith_f_op_f32(sign(532f))) * global1.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(global1.c.a.x, 66779u), func_2(u_input.a.x).x, 21076u), ~global1.b & u_input.a.x, ~countOneBits(4294967295u)), arg_0.d), Struct_2(firstTrailingBit(vec2<u32>(_wgslsmith_mult_u32(arg_0.d.x, u_input.a.x), ~arg_0.b.x))), global1.d);
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1015f, 2171f, 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, global1.a, global1.a))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 166f, 1459f), vec3<f32>(global1.a, 251f, -489f), vec3<bool>(true, arg_0.c, global1.d.c)))))), vec4<f32>(427f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global1.a, _wgslsmith_div_f32(global1.a, global1.a), !arg_0.e.x)))), -755f, global1.a), vec2<i32>(-2147483647i, -_wgslsmith_clamp_i32(abs(1836i), _wgslsmith_div_i32(var_0.x, 12426i), -45086i)), any(select(arg_0.e, !select(arg_0.e, global1.d.e, vec2<bool>(global1.d.e.x, false)), select(arg_0.e, select(global1.d.e, global1.d.e, global1.d.e), !vec2<bool>(false, arg_0.e.x)))));
    return _wgslsmith_f_op_f32(748f * -3221f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(global1.a, firstTrailingBit(~45899u), global1.c, global1.d);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(func_5(func_4(reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, 38870i, global0.x, global0.x), vec4<i32>(-2147483647i, global0.x, 2147483647i, 8224i))), vec4<f32>(_wgslsmith_f_op_f32(func_1(Struct_3(675f, 32984u, Struct_2(vec2<u32>(4294967295u, 42548u)), var_0.d), var_0.a, 29292u)), -282f, _wgslsmith_div_f32(var_0.a, 676f), _wgslsmith_f_op_f32(abs(-446f)))))), global1.d.b.x, global1.c, global1.d);
    global1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-325f - var_1.a) * 782f), ~reverseBits(func_2(~var_1.d.a).x), Struct_2(_wgslsmith_sub_vec2_u32(vec2<u32>(func_2(u_input.a.x).x, ~u_input.a.x), _wgslsmith_mod_vec2_u32(var_1.c.a, min(var_1.d.d.yz, vec2<u32>(0u, 0u))))), func_4(vec4<i32>(abs(select(global0.x, global0.x, var_1.d.e.x)), -countOneBits(1i), 21494i, -25339i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(338f, -449f, -1507f, var_1.a)))))));
    var_0 = Struct_3(_wgslsmith_f_op_f32(abs(-827f)), global1.b, Struct_2(global1.d.b.wz), Struct_1(~24256u, _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(49393u, 1u, global1.c.a.x, 81379u), vec4<u32>(4294967295u, var_1.d.a, 59579u, global1.d.a)), vec4<u32>(~var_0.c.a.x, reverseBits(u_input.a.x), u_input.a.x, 13370u), func_4(vec4<i32>(global0.x, -2147483647i, -1i, 2147483647i), vec4<f32>(var_1.a, 1542f, var_0.a, 1000f)).b), !(abs(var_0.d.a) < ~68537u), abs(~abs(global1.d.b.zxx)), !global1.d.e));
    let var_2 = ~11115i;
    let var_3 = ~_wgslsmith_sub_vec3_u32(~u_input.a.zyx, ~(~vec3<u32>(1u, global1.c.a.x, 0u))) | var_1.d.d;
    var_0 = Struct_3(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(floor(1538f))), _wgslsmith_add_u32(u_input.a.x, 4294967295u << (_wgslsmith_mod_u32(~0u, max(global1.d.d.x, u_input.a.x)) % 32u)), Struct_2(reverseBits(var_3.xy)), var_1.d);
    let x = u_input.a;
    s_output = StorageBuffer(var_2, 6451u);
}

