struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<i32> = vec3<i32>(44433i, -41132i, 1146i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32) -> f32 {
    let var_0 = Struct_1(-(i32(-1i) * -19332i), _wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(sign(global0.b))), reverseBits(~abs(38042u)), true, global0.e);
    let var_1 = select(!vec4<bool>(true, all(vec4<bool>(true, true, true, true)), !(!var_0.d), all(vec4<bool>(false, false, global0.d, false))), !vec4<bool>(global0.d | any(vec4<bool>(global0.d, true, var_0.d, false)), false, (false | var_0.d) || false, false), true);
    global1 = arg_0;
    var var_2 = var_0.b;
    var var_3 = ~u_input.b.x;
    return -1030f;
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    global1 = vec3<i32>(~global0.e.x, global1.x, countOneBits(u_input.c));
    var var_0 = vec4<f32>(-747f, arg_0.x, _wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_f_op_f32(func_3(countOneBits(vec3<i32>(1i, 0i, global1.x)), 4294967295u)));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-228f, var_0.x), 1927f))))), 1017f, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(func_3(vec3<i32>(~0i, u_input.c, 54035i), _wgslsmith_mod_u32(~global0.c, _wgslsmith_clamp_u32(global0.c, 22394u, u_input.b.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - 149f)), _wgslsmith_div_f32(834f, _wgslsmith_f_op_f32(ceil(219f))), any(!select(vec3<bool>(false, global0.d, true), vec3<bool>(global0.d, false, false), vec3<bool>(true, true, true))))));
    let var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(global1.x << (1u % 32u), firstTrailingBit(~u_input.c << (1u % 32u)), min(max(i32(-1i) * -12833i, max(-48314i, 12171i)), _wgslsmith_dot_vec4_i32(global0.e, ~vec4<i32>(56079i, global1.x, global0.e.x, -11058i))), firstLeadingBit(u_input.c)), -_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(global0.e, global0.e), global0.e) | abs(~global0.e));
    var_0 = vec4<f32>(386f, global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-223f - _wgslsmith_f_op_f32(-arg_0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1438f + 173f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1765f, var_0.x)));
    return Struct_1(1i, _wgslsmith_f_op_f32(f32(-1f) * -160f), ~(~79872u), any(vec4<bool>(!(global0.d | global0.d), true, ~u_input.b.x > ~global0.c, true | global0.d)), -(~_wgslsmith_clamp_vec4_i32(global0.e, -global0.e, global0.e)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.b, arg_1.b, arg_1.b), vec3<f32>(337f, arg_0.b, 1376f)) * _wgslsmith_div_vec3_f32(vec3<f32>(148f, -507f, arg_0.b), vec3<f32>(1948f, arg_0.b, 1000f)))))));
    global0 = arg_1;
    global1 = _wgslsmith_mod_vec3_i32(~vec3<i32>(52701i, countOneBits(countOneBits(38783i)), u_input.c), abs(arg_0.e.yyy) ^ ~_wgslsmith_clamp_vec3_i32(~vec3<i32>(2147483647i, 0i, arg_1.e.x), vec3<i32>(2147483647i, global0.a, arg_1.a), arg_0.e.yzy));
    var var_1 = 16263i;
    let var_2 = arg_0.d;
    return vec3<bool>(all(!(!(!vec4<bool>(global0.d, true, var_2, var_2)))), true, false);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = any(select(!vec3<bool>(any(vec4<bool>(true, global0.d, global0.d, true)), -2147483647i == arg_0.e.x, true), select(func_4(func_2(vec4<f32>(global0.b, arg_0.b, arg_0.b, arg_0.b)), func_2(vec4<f32>(1402f, -1154f, -284f, arg_0.b))), func_4(func_2(vec4<f32>(-1525f, global0.b, 478f, global0.b)), arg_0), select(select(vec3<bool>(false, arg_0.d, global0.d), vec3<bool>(false, true, false), vec3<bool>(arg_0.d, true, true)), vec3<bool>(false, arg_0.d, arg_0.d), !vec3<bool>(arg_0.d, true, true))), global0.d));
    var var_1 = true;
    let var_2 = func_2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(448f, _wgslsmith_f_op_f32(-global0.b)), _wgslsmith_f_op_f32(1343f - _wgslsmith_f_op_f32(arg_0.b + global0.b))), arg_0.b, _wgslsmith_f_op_f32(round(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-583f, 181f, 985f, 682f) + vec4<f32>(424f, global0.b, 322f, arg_0.b))).b)), _wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec3_i32(global0.e.zxz ^ vec3<i32>(global0.e.x, -64366i, global0.e.x), arg_0.e.wxz), ~(42495u & arg_0.c)))));
    var var_3 = arg_0;
    var_1 = any(vec3<bool>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1781f + -1000f), _wgslsmith_f_op_f32(arg_0.b * global0.b))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b)), true && var_0, ((var_0 && arg_0.d) | func_2(vec4<f32>(1166f, var_3.b, global0.b, global0.b)).d) & true));
    return func_2(vec4<f32>(568f, global0.b, arg_0.b, _wgslsmith_f_op_f32(-578f - -106f)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = func_1(arg_1);
    global1 = ~(abs(reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(global1.x, 81686i, u_input.c), arg_0.e.yyx))) << (vec3<u32>(66609u, arg_0.c, 1u & _wgslsmith_add_u32(56387u, u_input.a.x)) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -464f) - 472f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-807f - global0.b))), 1103f, arg_1.b)));
    let var_2 = arg_0;
    let var_3 = u_input.b;
    return 47246u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(49817i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1668f, global0.b)), _wgslsmith_mod_u32(~29971u, ~func_5(func_1(Struct_1(-9551i, global0.b, 1u, false, vec4<i32>(global0.a, 28169i, u_input.c, 28440i))), func_2(vec4<f32>(global0.b, global0.b, -174f, global0.b)))), any(!(!vec4<bool>(global0.d, true, global0.d, true))), vec4<i32>(-2147483647i, max(global1.x, -1i), 0i, -2147483647i));
    global0 = func_1(func_1(Struct_1(select(11282i, global1.x, global0.d & global0.d), _wgslsmith_f_op_f32(f32(-1f) * -1000f), func_1(func_2(vec4<f32>(global0.b, 184f, global0.b, -676f))).c, all(vec2<bool>(global0.d, global0.d)), -firstLeadingBit(global0.e))));
    let var_0 = Struct_1(_wgslsmith_sub_i32(-2147483647i, 1i) | u_input.c, -126f, firstTrailingBit(u_input.b.x), func_1(Struct_1(global0.e.x, global0.b, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0.c, 0u, 17746u), vec4<u32>(4294967295u, u_input.b.x, 27614u, u_input.b.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(23596u, 35910u, u_input.b.x, global0.c), vec4<u32>(u_input.b.x, 51471u, global0.c, 103923u))), true, _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(global0.e, global0.e), ~vec4<i32>(global0.e.x, 7212i, -2147483647i, u_input.c)))).d, vec4<i32>(1i, ~(-65802i), func_1(Struct_1(_wgslsmith_sub_i32(global1.x, u_input.c), global0.b, func_1(Struct_1(-38409i, 491f, 85182u, false, vec4<i32>(u_input.c, -30312i, -41323i, -2147483647i))).c, true, vec4<i32>(global1.x, global1.x, 7226i, -19211i))).e.x, i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 23717i, 2147483647i, u_input.c), vec4<i32>(u_input.c, u_input.c, global1.x, 1i))));
    let var_1 = -615f;
    let var_2 = -var_0.e.x;
    global0 = Struct_1(var_2 & (_wgslsmith_div_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, u_input.c), vec3<i32>(0i, -6115i, 2147483647i))) | 11900i), _wgslsmith_f_op_f32(-209f * var_0.b), ~func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -1210f, var_0.b, global0.b)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, global0.b, 232f)))).c, -abs(~var_2) <= _wgslsmith_add_i32(global0.e.x >> (~1u % 32u), 29631i), vec4<i32>(u_input.c << (firstTrailingBit(func_1(Struct_1(u_input.c, 529f, 39411u, false, var_0.e)).c) % 32u), firstLeadingBit(1i), ~var_2, 1i));
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1103f, _wgslsmith_f_op_f32(step(1492f, -630f))))), _wgslsmith_f_op_f32(f32(-1f) * -1845f))));
    global0 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, var_1, 1711f) - vec3<f32>(var_0.b, var_0.b, -281f)))))), _wgslsmith_sub_u32(max(~(~1u), countOneBits(_wgslsmith_sub_u32(25425u, global0.c))), select(_wgslsmith_sub_u32(select(var_0.c, var_0.c, var_0.d), 60043u), ~0u, true)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-711f, 2737f, var_1, var_3.x)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(266f, var_1, var_0.b, var_3.x)))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, 467f, var_1, var_3.x) - vec4<f32>(var_1, 603f, var_1, global0.b)))))), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-var_1))) * var_0.b));
}

