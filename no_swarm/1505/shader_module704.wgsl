struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: vec3<bool>,
    d: vec2<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: bool = false;

var<private> global2: Struct_2;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = _wgslsmith_sub_vec3_u32(~vec3<u32>(1u, 1u, 1u), max(~select(~vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(4294967295u, 1u, 18783u), global2.a.a), _wgslsmith_mod_vec3_u32(abs(countOneBits(vec3<u32>(27424u, 0u, 62809u))), countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 0u, 0u), vec3<u32>(78775u, 40192u, 4294967295u))))));
    global0 = -_wgslsmith_dot_vec2_i32(u_input.b.xy, u_input.c);
    var var_1 = Struct_3(global2.a.a, _wgslsmith_clamp_i32(~global2.c, reverseBits(-57722i), select(arg_1.b, _wgslsmith_clamp_i32(-arg_1.b, -1i, -1i), false)), vec3<bool>(!(arg_1.a.x & arg_1.c) || false, _wgslsmith_f_op_f32(f32(-1f) * -1148f) == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global2.a.d)))), false != arg_1.a.x), ~vec2<u32>(45778u, var_0.x >> (~var_0.x % 32u)), vec3<bool>(arg_1.c, false, any(vec4<bool>(global2.a.c, global2.b, true, false)) || any(arg_0.xx)));
    var var_2 = 0i;
    let var_3 = select(vec3<bool>(arg_1.a.x, global2.b, true), vec3<bool>(all(vec4<bool>(var_1.a.x, false, false, false)) || global2.b, var_1.c.x, all(vec3<bool>(false, arg_1.d > 1000f, !arg_1.c))), arg_1.a.x);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-960f, global2.a.d, arg_1.d, -1520f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(665f, arg_1.d, arg_1.d, arg_1.d)) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d, -1180f, arg_1.d, global2.a.d)))))));
}

fn func_4(arg_0: vec4<f32>) -> bool {
    global2 = Struct_2(Struct_1(vec3<bool>(true, !global2.b, global2.a.a.x), ~u_input.b.x, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.e))), global2.b, _wgslsmith_sub_i32(global2.c, 1i), 2147483647i >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(26907u, 5995u, 0u), vec3<u32>(1u, 1u, 1u)))) % 32u), global2.e);
    let var_0 = Struct_2(global2.a, true, -1i, ~_wgslsmith_mod_i32(i32(-1i) * -1i, _wgslsmith_mult_i32(-global2.d, -35417i)), _wgslsmith_div_f32(1000f, arg_0.x));
    var var_1 = _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(~abs(~vec4<i32>(41417i, 1i, 1i, 1i)), ~(vec4<i32>(var_0.a.b, global2.a.b, 0i, -3896i) & countOneBits(vec4<i32>(var_0.d, 1i, 2147483647i, var_0.c)))), min(_wgslsmith_mult_vec4_i32(select(vec4<i32>(u_input.a, u_input.a, var_0.d, -2147483647i), vec4<i32>(u_input.b.x, -31179i, u_input.c.x, global2.d), var_0.b), abs(vec4<i32>(-33697i, 1i, -93016i, -34912i))), firstTrailingBit(vec4<i32>(-2147483647i, 0i, -36782i, global2.a.b)) << (firstTrailingBit(vec4<u32>(0u, 41722u, 1u, 0u)) % vec4<u32>(32u))) | ((vec4<i32>(1i, u_input.b.x, -2147483647i, var_0.d) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))) << (vec4<u32>(_wgslsmith_clamp_u32(1u, 4294967295u, 28652u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 31985u), vec2<u32>(4294967295u, 1u)), firstLeadingBit(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, 1434u), vec4<u32>(38109u, 1u, 13537u, 32527u))) % vec4<u32>(32u))));
    let var_2 = -982f;
    global1 = true;
    return true;
}

fn func_2() -> Struct_2 {
    let var_0 = u_input.a;
    global1 = select(global2.b, func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec4<bool>(true, true, global2.b, global2.a.a.x), Struct_1(global2.a.a, u_input.c.x, global2.b, global2.e))) - vec4<f32>(global2.e, global2.a.d, global2.e, 316f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.e, 1403f, global2.a.d, global2.e), vec4<f32>(global2.a.d, -1506f, global2.a.d, 550f))) * vec4<f32>(global2.a.d, 1038f, -942f, 1335f)))), !global2.b);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1345f, global2.a.d, 1048f), vec3<f32>(global2.a.d, global2.e, global2.a.d))))));
    var var_2 = global2.a;
    global1 = all(select(vec4<bool>(false, !var_2.a.x, false, true), select(select(select(vec4<bool>(false, var_2.c, false, true), vec4<bool>(var_2.a.x, global2.a.a.x, false, true), vec4<bool>(true, global2.b, global2.a.c, false)), select(vec4<bool>(false, false, var_2.a.x, true), vec4<bool>(true, global2.b, true, global2.b), global2.a.c), func_4(vec4<f32>(-166f, -440f, -1009f, var_1.x))), vec4<bool>(global2.b, var_2.a.x, !var_2.c, !var_2.a.x), !(!global2.a.a.x)), !global2.b));
    return Struct_2(Struct_1(!vec3<bool>(true, false, !var_2.c), -30535i, false, _wgslsmith_f_op_f32(var_2.d - 1208f)), false, 40160i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0, u_input.c.x), u_input.c), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-433f - var_2.d), _wgslsmith_f_op_vec4_f32(func_3(vec4<bool>(global2.a.a.x, var_2.a.x, global2.a.c, false), global2.a)).x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(var_1.x * global2.a.d)))))));
}

fn func_1() -> vec4<bool> {
    global1 = false;
    global2 = func_2();
    var var_0 = vec3<u32>(1u, ~(~0u >> (firstTrailingBit(1u) % 32u)), 4294967295u) | (~vec3<u32>(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(70849u, 4294967295u, 19901u, 9071u), vec4<u32>(11478u, 46349u, 4294967295u, 4294967295u)), _wgslsmith_add_u32(57904u, 32367u)) & ~max(vec3<u32>(3107u, 20900u, 0u), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 43839u, 27779u), vec3<u32>(25564u, 13615u, 38533u))));
    global0 = global2.d;
    let var_1 = Struct_2(func_2().a, all(func_2().a.a), 1i, ~u_input.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -718f))))));
    return vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global2.e)))) - _wgslsmith_f_op_f32(func_2().a.d * _wgslsmith_f_op_f32(1000f + global2.e))) > 315f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -936f)) + var_1.e) == -1569f, var_1.a.c, all(!(!(!vec4<bool>(var_1.b, false, false, var_1.b)))));
}

fn func_5(arg_0: bool) -> Struct_1 {
    global0 = max(global2.c, global2.a.b);
    let var_0 = Struct_3(vec3<bool>(true, true, -44411i > global2.a.b), _wgslsmith_clamp_i32(-2147483647i, 2147483647i, -1i), func_1().xzy, _wgslsmith_mult_vec2_u32(select(_wgslsmith_clamp_vec2_u32(~vec2<u32>(18252u, 109878u), vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), vec2<u32>(1u, 1u), global2.a.a.yz), ~(~reverseBits(vec2<u32>(9497u, 33026u)))), global2.a.a);
    global0 = global2.c;
    return func_2().a;
}

fn func_6(arg_0: Struct_1) -> Struct_2 {
    let var_0 = func_5(any(!(!vec2<bool>(global2.b, global2.b)))).a;
    global1 = func_2().b;
    global0 = global2.c >> (39479u % 32u);
    let var_1 = countOneBits(99135u);
    global0 = global2.d >> ((var_1 & ((_wgslsmith_sub_u32(10401u, var_1) ^ (8281u << (var_1 % 32u))) & var_1)) % 32u);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_6(func_5(!all(func_1())));
    global1 = !select(any(vec2<bool>(false, global2.b)), u_input.a < 2147483647i, func_2().a.a.x);
    global2 = Struct_2(global2.a, global2.b, _wgslsmith_mod_i32(0i, ~u_input.a), -_wgslsmith_sub_i32(countOneBits(~57903i), global2.a.b), _wgslsmith_div_f32(func_2().a.d, 737f));
    var var_0 = func_2();
    global2 = func_2();
    let var_1 = func_2();
    var var_2 = var_0.a;
    global1 = var_0.b;
    let var_3 = 19622i;
    let x = u_input.a;
    s_output = StorageBuffer(0u, -1275f, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-446f - -1809f) * _wgslsmith_f_op_f32(abs(var_1.a.d))), _wgslsmith_f_op_f32(func_6(var_0.a).e + 367f), var_0.a.d, _wgslsmith_f_op_f32(round(-2280f))))), ~max(16539u, ~(~1u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(2280f, -109f, -285f, 1414f), vec4<f32>(global2.a.d, var_2.d, 1334f, -609f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.d, global2.a.d, var_2.d, 369f)), vec4<bool>(var_0.a.a.x, true, global2.b, var_0.a.a.x))) * vec4<f32>(global2.a.d, _wgslsmith_div_f32(744f, 456f), var_2.d, _wgslsmith_f_op_f32(-var_2.d))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e, 480f, var_2.d, 557f) - vec4<f32>(-1919f, var_2.d, 1000f, -148f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-722f, 1620f, -1708f, var_0.a.d), vec4<f32>(910f, -296f, 1000f, var_1.a.d), vec4<bool>(false, true, global2.b, var_0.b)))))));
}

