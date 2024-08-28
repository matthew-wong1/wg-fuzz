struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 14475u;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: u32) -> vec4<i32> {
    global0 = u_input.c;
    global0 = select(78269u, 8188u, u_input.a.x <= _wgslsmith_sub_i32(-10001i, min(~arg_0, -4283i)));
    var var_0 = Struct_4(Struct_2(all(select(vec2<bool>(false, false), vec2<bool>(false, true), true)) || (~1u == _wgslsmith_sub_u32(1u, u_input.c)), Struct_1(-1113f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(645f, -246f, -1000f, 1601f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 762f, -525f, -2339f) - vec4<f32>(-389f, -339f, -1733f, 596f))), all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(857f)) + -1758f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1218f, 1197f, 1271f, -1287f), vec4<f32>(-358f, -1111f, -250f, 744f), vec4<bool>(true, false, true, false))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1020f, -967f, -849f, 1939f)))), false), select(select(true, any(vec4<bool>(true, true, true, true)), false), false, select(!(-6324i > u_input.a.x), true, true)));
    let var_1 = vec2<bool>(!(~max(32803i, -2147483647i) <= _wgslsmith_clamp_i32(~arg_0, ~u_input.b, select(u_input.b, 0i, false))), true);
    let var_2 = Struct_3(-2147483647i | u_input.b, ~min(~u_input.e.x, _wgslsmith_div_u32(u_input.e.x, u_input.c)) | _wgslsmith_div_u32(17233u, ~min(u_input.e.x, arg_1)));
    return -min(select(vec4<i32>(_wgslsmith_div_i32(u_input.d.x, -1772i), -arg_0, max(26618i, arg_0), -2147483647i), min(vec4<i32>(0i, 1067i, u_input.b, arg_0), -vec4<i32>(-41685i, u_input.a.x, var_2.a, 1i)), vec4<bool>(true, select(true, true, var_0.a.b.c), true, true)), ~abs(vec4<i32>(19852i, u_input.d.x, 0i, u_input.b)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec4<i32>) -> vec4<f32> {
    let var_0 = Struct_4(Struct_2(true, Struct_1(-1133f, _wgslsmith_f_op_vec4_f32(vec4<f32>(694f, -241f, 497f, 577f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-496f, -324f, 1995f, -272f))), true)), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(832f, -608f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-396f, 518f, -597f, 943f) * vec4<f32>(1095f, 423f, -1935f, 838f)))))), true), true);
    var var_1 = select(!(!vec2<bool>(var_0.b.c, true)), select(!vec2<bool>(select(true, false, false), var_0.a.b.c), select(!(!vec2<bool>(var_0.b.c, var_0.b.c)), !vec2<bool>(var_0.b.c, true), select(select(vec2<bool>(false, var_0.c), vec2<bool>(var_0.c, var_0.c), true), vec2<bool>(true, var_0.a.b.c), select(vec2<bool>(true, false), vec2<bool>(var_0.c, false), vec2<bool>(false, true)))), all(vec3<bool>(true, true, true))), select(vec2<bool>(true != (var_0.b.b.x != var_0.a.b.a), var_0.b.c && var_0.a.a), select(vec2<bool>(true, true), vec2<bool>(var_0.a.b.a <= -586f, false), any(select(vec4<bool>(var_0.b.c, false, false, var_0.c), vec4<bool>(false, false, true, true), var_0.b.c))), true));
    var var_2 = -(~vec3<i32>(-17768i, 1i, arg_2.x));
    let var_3 = arg_2.x;
    var_1 = select(vec2<bool>(16243i <= arg_2.x, select(true, var_1.x, false)), select(select(vec2<bool>(!var_0.b.c, select(var_1.x, false, var_0.b.c)), vec2<bool>(var_1.x, true), select(any(vec4<bool>(var_0.a.a, var_1.x, true, false)), u_input.e.x == u_input.e.x, false | var_1.x)), vec2<bool>((arg_1.a ^ -45734i) != (var_2.x >> (u_input.e.x % 32u)), all(vec4<bool>(var_0.c, true, var_0.c, var_0.b.c))), !var_0.b.c), vec2<bool>(all(!select(vec2<bool>(true, true), vec2<bool>(false, var_0.b.c), var_1.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(16455u, u_input.e.x, 99420u), u_input.e << (vec3<u32>(1u, u_input.e.x, u_input.e.x) % vec3<u32>(32u))) > arg_1.b));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b.b));
}

fn func_2(arg_0: bool, arg_1: bool) -> vec2<f32> {
    let var_0 = Struct_4(Struct_2(true, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -268f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-451f, -1068f, -313f, 1000f) + vec4<f32>(1481f, 1100f, 374f, -509f))), true)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(895f, 790f))) - -1025f), _wgslsmith_div_vec4_f32(vec4<f32>(330f, -1243f, _wgslsmith_f_op_f32(floor(-554f)), -877f), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-725f, 1152f, -537f, 1432f), vec4<f32>(-1000f, 275f, -113f, 2019f)))))), arg_1), arg_0);
    global0 = select(~(~97595u) >> (min(4294967295u, ~u_input.c) % 32u), _wgslsmith_mod_u32(1u, ~u_input.c), false);
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_vec4_f32(func_4(~abs(func_3(abs(10490i), reverseBits(u_input.e.x))), Struct_3(u_input.b, ~(~0u << (u_input.e.x % 32u))), select(~func_3(2147483647i | u_input.a.x, firstLeadingBit(u_input.c)), abs(vec4<i32>(-11659i, 1i, -u_input.d.x, abs(u_input.a.x))), vec4<bool>(any(select(vec2<bool>(arg_0, false), vec2<bool>(false, arg_0), vec2<bool>(false, var_0.c))), var_0.a.a, true, true))));
    var_1 = arg_0;
    return _wgslsmith_f_op_vec2_f32(min(var_0.b.b.zz, vec2<f32>(220f, _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.b.a, var_0.a.b.a), _wgslsmith_f_op_f32(-var_0.b.a)))));
}

fn func_1(arg_0: vec4<u32>) -> vec2<u32> {
    global0 = ~reverseBits(~(~arg_0.x));
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1435f * 897f))), -532f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-297f, -252f))))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-132f, 134f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-222f, -779f) - vec2<f32>(1184f, 1485f)) + _wgslsmith_div_vec2_f32(vec2<f32>(2842f, -973f), vec2<f32>(-426f, -1000f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(true, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(189f, 919f)))))));
    var var_1 = !(!select(vec3<bool>(true, false, all(vec4<bool>(false, false, false, true))), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false), false));
    global0 = _wgslsmith_sub_u32(0u, select(~(u_input.c ^ ~arg_0.x), ~0u, all(!select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), false))));
    return _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~arg_0.www, firstTrailingBit(vec3<u32>(52646u, 1u, arg_0.x))), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(10531u, 0u, arg_0.x), vec3<u32>(u_input.c, 1u, 20240u)), u_input.e)), firstLeadingBit(max(~arg_0.x, arg_0.x))), arg_0.yx, vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(arg_0.x, u_input.c), ~51251u), select(124729u, abs(5917u), var_1.x)), ~arg_0.x));
}

fn func_5(arg_0: vec2<u32>) -> vec3<i32> {
    let var_0 = Struct_3(_wgslsmith_mod_i32(~9215i, ~reverseBits(~u_input.a.x)), arg_0.x);
    let var_1 = 50219u;
    global0 = _wgslsmith_dot_vec3_u32(~countOneBits(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(arg_0.x, var_0.b, var_1)), ~u_input.e)), vec3<u32>(_wgslsmith_add_u32(var_1, _wgslsmith_clamp_u32(arg_0.x, u_input.e.x, var_0.b) & var_1), _wgslsmith_add_u32(~_wgslsmith_add_u32(43210u, 7679u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(var_0.b, 4294967295u), ~148121u)), ~(~(~31284u))));
    global0 = max(~(~(~7013u)), var_1 & var_1);
    var var_2 = max(_wgslsmith_add_vec4_u32(firstTrailingBit(max(vec4<u32>(var_1, arg_0.x, 0u, arg_0.x), vec4<u32>(0u, 22582u, u_input.c, arg_0.x))) ^ vec4<u32>(1u, ~4294967295u, min(var_1, u_input.e.x), 0u), firstLeadingBit(vec4<u32>(u_input.c, 34195u, _wgslsmith_dot_vec2_u32(u_input.e.zy, vec2<u32>(arg_0.x, var_1)), countOneBits(u_input.c)))), vec4<u32>(u_input.c, var_1, 26189u, var_1));
    return ~vec3<i32>(_wgslsmith_mult_i32(-func_3(u_input.a.x, 4340u).x, u_input.d.x), -15467i, -(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 7480i, 0i, 0i), vec4<i32>(u_input.a.x, 1i, 2147483647i, var_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~u_input.c;
    var var_0 = -reverseBits(~u_input.a);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-450f * 591f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-530f + -238f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_div_f32(362f, -260f), _wgslsmith_f_op_f32(step(586f, 573f))))), _wgslsmith_f_op_f32(f32(-1f) * -1210f), _wgslsmith_f_op_f32(-1000f * 937f)), !(abs(u_input.d.x) < u_input.b));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(var_1.b.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * _wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(-1000f * -143f)))), var_1.b, !((i32(-1i) * -1i) >= u_input.a.x));
    var_0 = select(firstTrailingBit(u_input.a), min(u_input.a, vec3<i32>(reverseBits(-2147483647i), -min(1i, -1i), ~(-2147483647i))), !(!vec3<bool>(true, false, var_2.c)));
    var_2 = var_1;
    var_0 = func_5(func_1(vec4<u32>(~u_input.e.x, ~0u, 4294967295u, ~u_input.c)));
    global0 = 36891u;
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(-_wgslsmith_add_i32(var_0.x, var_0.x), u_input.d.x, u_input.a.x), var_1.b.x);
}

