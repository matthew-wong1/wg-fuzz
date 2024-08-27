struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<u32> = vec2<u32>(37258u, 16114u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: u32) -> bool {
    global1 = ~(~(arg_1.a.zz | (vec2<u32>(global1.x, 50575u) & arg_1.a.xz))) << (arg_1.a.xz % vec2<u32>(32u));
    global1 = vec2<u32>(global1.x << ((~arg_1.a.x & (global1.x >> (~u_input.a % 32u))) % 32u), u_input.a);
    var var_0 = select(-(i32(-1i) * -2147483647i), -12086i, true) & -23796i;
    var var_1 = Struct_2(arg_1.a, arg_2.x);
    global0 = _wgslsmith_f_op_f32(-arg_2.x);
    return arg_0;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: i32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-982f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(209f, _wgslsmith_f_op_f32(-arg_1)))))), ~_wgslsmith_mod_vec4_i32(-vec4<i32>(15204i, arg_2, arg_2, arg_2), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_2, -53002i, -2147483647i, 11556i) << (vec4<u32>(u_input.a, global1.x, arg_0, 4294967295u) % vec4<u32>(32u)), max(vec4<i32>(arg_2, arg_2, 43125i, arg_2), vec4<i32>(-15784i, arg_2, arg_2, arg_2)))), true, any(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false))) | func_3(true, Struct_2(vec3<u32>(0u, arg_3.a.x, arg_3.a.x), 433f), _wgslsmith_div_vec4_f32(vec4<f32>(138f, arg_1, arg_1, arg_3.b), _wgslsmith_div_vec4_f32(vec4<f32>(1023f, arg_1, -356f, 1807f), vec4<f32>(arg_3.b, 114f, arg_1, arg_3.b))), ~1u));
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(-1002f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1699f))), vec2<f32>(_wgslsmith_f_op_f32(1f - arg_3.b), arg_1));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(-429f - _wgslsmith_div_f32(-284f, _wgslsmith_f_op_f32(-arg_1)))), -(~var_0.b & select(vec4<i32>(1i, var_0.b.x, var_0.b.x, arg_2) >> (vec4<u32>(33393u, u_input.a, arg_0, 43545u) % vec4<u32>(32u)), firstTrailingBit(var_0.b), var_0.c)), false, all(vec3<bool>(abs(0u) <= firstTrailingBit(arg_3.a.x), all(select(vec2<bool>(var_0.c, var_0.d), vec2<bool>(false, var_0.c), var_0.c)), (arg_3.a.x <= 0u) || (false || var_0.c))));
    var var_3 = arg_3;
    let var_4 = 29196i;
    return arg_3;
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = select(!(!vec4<bool>(true, true, any(vec2<bool>(true, true)), any(vec3<bool>(false, false, true)))), !(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), vec4<bool>(false, false, true, true));
    let var_1 = select(vec2<bool>(var_0.x, !select(var_0.x, var_0.x, true)), !(!(!(!vec2<bool>(var_0.x, false)))), var_0.x);
    global1 = vec2<u32>(1u, 1u);
    let var_2 = vec3<f32>(arg_0.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(arg_0.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(531f)) + 438f));
    var_0 = vec4<bool>(!all(vec4<bool>(var_0.x || true, any(var_1), all(vec3<bool>(var_0.x, true, true)), all(var_1))), false, true, var_1.x);
    return Struct_1(var_2.x, ~(~vec4<i32>(1i, 1i, 1i, 1i)) ^ _wgslsmith_sub_vec4_i32(-vec4<i32>(1i, -33885i, -2147483647i, 23398i) << (_wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, 19631u, u_input.a, 4294967295u), vec4<u32>(u_input.a, 73004u, u_input.a, u_input.a)) % vec4<u32>(32u)), countOneBits(-vec4<i32>(66839i, -2147483647i, -1i, -15622i))), true, true);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: f32) -> Struct_3 {
    var var_0 = true;
    let var_1 = func_4(func_2(_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(arg_1.a, vec3<u32>(26058u, 17997u, arg_1.a.x)), vec3<u32>(arg_1.a.x, _wgslsmith_mod_u32(arg_1.a.x, 4294967295u), global1.x)), -626f, arg_0.b.x, arg_1));
    var var_2 = Struct_1(_wgslsmith_div_f32(-1171f, func_4(func_2(u_input.a | arg_1.a.x, arg_0.a, var_1.b.x, func_2(arg_1.a.x, var_1.a, 9727i, arg_1))).a), arg_0.b, true, true);
    var var_3 = func_4(arg_1);
    var_0 = -1345f >= arg_0.a;
    return Struct_3(arg_1.a, var_3.b.x);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> vec3<f32> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b, -1328f) + arg_0.b))));
    let var_0 = arg_1;
    global0 = arg_0.b;
    let var_1 = arg_1;
    global1 = vec2<u32>(_wgslsmith_mod_u32((0u | var_1.a.x) << ((10808u | global1.x) % 32u), 1u) >> (4294967295u % 32u), 4294967295u);
    return _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(657f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b))), _wgslsmith_f_op_f32(min(707f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.b))))))));
}

fn func_6(arg_0: vec3<f32>, arg_1: vec3<i32>) -> Struct_3 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), -1472f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(928f + -820f)));
    var var_1 = false;
    var_1 = false;
    var var_2 = arg_1.xx;
    let var_3 = vec3<i32>(max(-264i, var_2.x), var_2.x, var_2.x | func_4(Struct_2(~vec3<u32>(u_input.a, global1.x, 40484u), arg_0.x)).b.x);
    return func_1(func_4(func_2(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), ~abs(-2147483647i), Struct_2(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, global1.x), vec3<u32>(global1.x, 1u, global1.x)), arg_0.x))), Struct_2(~_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a, 39133u, 73346u)), func_1(Struct_1(arg_0.x, vec4<i32>(var_2.x, -5978i, var_2.x, var_3.x), false, false), Struct_2(vec3<u32>(u_input.a, 4294967295u, global1.x), 778f), vec3<bool>(true, false, true), 468f).a), -276f), !(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)), _wgslsmith_f_op_f32(-func_4(Struct_2(firstTrailingBit(vec3<u32>(global1.x, 1u, global1.x)), var_0.x)).a));
}

fn func_7(arg_0: Struct_3, arg_1: vec2<f32>) -> StorageBuffer {
    global0 = _wgslsmith_f_op_f32(sign(arg_1.x));
    let var_0 = 2065i;
    let var_1 = arg_0.a.yy;
    global0 = 1608f;
    let var_2 = select(vec3<bool>(all(vec2<bool>(true, false)), _wgslsmith_f_op_f32(round(-695f)) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_1.x)), arg_1.x), func_4(Struct_2(~vec3<u32>(arg_0.a.x, 60859u, u_input.a), _wgslsmith_f_op_f32(-arg_1.x))).d), !vec3<bool>(~var_0 >= firstLeadingBit(2147483647i), true, false), select(vec3<bool>(!func_4(Struct_2(vec3<u32>(1u, 21359u, global1.x), arg_1.x)).c, !any(vec4<bool>(false, true, false, false)), (var_1.x << (global1.x % 32u)) >= ~var_1.x), select(vec3<bool>(func_3(true, Struct_2(arg_0.a, 419f), vec4<f32>(arg_1.x, -1533f, arg_1.x, 780f), global1.x), all(vec2<bool>(false, true)), true), vec3<bool>(any(vec3<bool>(false, true, false)), true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false)), all(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true), true))));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x, _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(round(arg_1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_7(func_6(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-386f, 1890f, 581f)), vec3<f32>(328f, -913f, -541f)), _wgslsmith_f_op_vec3_f32(func_5(Struct_2(vec3<u32>(69785u, u_input.a, 60798u), -1641f), func_1(Struct_1(1346f, vec4<i32>(0i, 0i, 2147483647i, -40637i), true, false), Struct_2(vec3<u32>(global1.x, 33418u, global1.x), 1000f), vec3<bool>(false, true, true), -643f))))), _wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(-1i, 31139i, 2147483647i)), vec3<i32>(1i, -69156i, 17745i)) >> (vec3<u32>(u_input.a, 91692u, 39380u) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(496f, 928f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1683f, -3656f) + vec2<f32>(708f, 1291f)))))));
}

