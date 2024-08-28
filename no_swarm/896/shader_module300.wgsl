struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: array<vec2<bool>, 27> = array<vec2<bool>, 27>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> vec2<bool> {
    let var_0 = 16769u;
    let var_1 = vec3<bool>(global0.x, false, true);
    let var_2 = -max(17939i, select(-arg_0.a.a, arg_0.a.a, !all(vec2<bool>(arg_0.a.b, var_1.x))));
    var var_3 = false;
    global1 = array<vec2<bool>, 27>();
    return vec2<bool>(-16964i >= -countOneBits(abs(u_input.d)), any(!vec3<bool>(true, var_1.x, var_0 > var_0)));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    global0 = select(func_3(arg_1, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 0u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(1396u, u_input.a)))), vec2<bool>(all(select(vec4<bool>(global0.x, arg_2.b, arg_2.b, arg_2.b), vec4<bool>(true, true, true, arg_0.x), vec4<bool>(false, false, arg_0.x, global0.x))) & true, true), vec2<bool>(func_3(arg_1, u_input.a).x, arg_0.x));
    let var_0 = arg_1;
    let var_1 = arg_1.a;
    var var_2 = true;
    let var_3 = var_1.a;
    return arg_1.a;
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = vec3<i32>(0i, func_2(vec3<bool>(false, !(false == arg_2.b), func_3(Struct_2(Struct_1(arg_2.a, true), -2147483647i, arg_1.x), min(u_input.c, u_input.a)).x), Struct_2(arg_3, ~(-33090i ^ arg_2.a), -755i), arg_2).a, firstLeadingBit(_wgslsmith_div_i32(~arg_3.a, -u_input.b.x)));
    var var_1 = !(!(!select(!vec4<bool>(true, false, arg_2.b, global0.x), select(vec4<bool>(arg_2.b, arg_3.b, arg_3.b, arg_2.b), vec4<bool>(arg_3.b, false, true, true), vec4<bool>(true, global0.x, arg_3.b, arg_2.b)), select(vec4<bool>(true, arg_2.b, arg_2.b, true), vec4<bool>(true, false, global0.x, true), vec4<bool>(arg_3.b, arg_2.b, arg_3.b, arg_3.b)))));
    var var_2 = -832f;
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * -578f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(arg_0)))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(select(arg_0, arg_0, false))))))));
    return Struct_1(-func_2(vec3<bool>(true, select(global0.x, true, true), true), Struct_2(arg_2, var_0.x ^ 17230i, arg_2.a ^ 0i), Struct_1(u_input.d, true)).a, !func_2(vec3<bool>(false, false, arg_2.b), Struct_2(arg_2, arg_3.a, 0i), func_2(vec3<bool>(true, false, false), Struct_2(Struct_1(arg_2.a, arg_2.b), arg_1.x, 2839i), Struct_1(var_0.x, var_1.x))).b & !func_2(!var_1.zyx, Struct_2(arg_3, arg_1.x, 1i), Struct_1(arg_2.a, false)).b);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: vec3<u32>) -> i32 {
    global1 = array<vec2<bool>, 27>();
    global1 = array<vec2<bool>, 27>();
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -243f);
    global1 = array<vec2<bool>, 27>();
    return ~var_0.c;
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = vec2<i32>(u_input.d, -20500i);
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1059f));
    let var_3 = func_2(select(vec3<bool>(any(select(vec3<bool>(global0.x, true, false), vec3<bool>(false, arg_1.a.b, true), vec3<bool>(arg_1.a.b, true, false))), func_3(arg_1, 1u).x, any(!global1[_wgslsmith_index_u32(u_input.c, 27u)])), !(!vec3<bool>(global0.x, false, global0.x)), false), arg_1, Struct_1(abs(_wgslsmith_sub_i32(~1i, -u_input.d)), arg_1.a.b));
    var var_4 = arg_1;
    return func_4(_wgslsmith_f_op_f32(round(var_2)), -u_input.b, var_3, var_4.a);
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_2) -> Struct_1 {
    global1 = array<vec2<bool>, 27>();
    var var_0 = arg_2.b;
    var_0 = 2364i << (~u_input.a % 32u);
    let var_1 = -1499f;
    var_0 = _wgslsmith_mult_i32(~(~arg_2.a.a), 0i);
    return func_6(u_input.b.xx, Struct_2(arg_2.a, func_5(func_4(var_1, vec3<i32>(-19444i, u_input.d, arg_2.a.a), Struct_1(arg_2.c, false), func_2(vec3<bool>(global0.x, arg_1.x, global0.x), arg_2, arg_2.a)), Struct_2(arg_2.a, _wgslsmith_sub_i32(2147483647i, u_input.d), 0i), abs(-u_input.b), ~vec3<u32>(0u, u_input.c, arg_0)), countOneBits(arg_2.a.a) << (_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 47653u, 45445u), vec3<u32>(52686u, 79672u, 1u)), vec3<u32>(0u, u_input.a, u_input.c)) % 32u)));
}

fn func_7(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: u32) -> vec2<bool> {
    var var_0 = func_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-131f - -587f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1038f, 1000f)))), any(!select(arg_1, arg_1, arg_1.x)))), select(~(vec3<i32>(-13036i, -2147483647i, arg_2.a) | ~u_input.b), u_input.b, vec3<bool>(true, global0.x, arg_2.a < _wgslsmith_dot_vec2_i32(u_input.b.zy, u_input.b.yy))), func_2(!vec3<bool>(true, arg_1.x, true), Struct_2(arg_2, _wgslsmith_div_i32(arg_2.a, u_input.d), 2147483647i), Struct_1(arg_2.a, false)), func_1(_wgslsmith_sub_u32(~arg_3, 1u), !select(arg_1, !vec4<bool>(false, true, true, global0.x), !arg_0), Struct_2(Struct_1(-u_input.d, func_2(vec3<bool>(false, false, true), Struct_2(arg_2, -25205i, u_input.d), arg_2).b), 21772i, u_input.d)));
    let var_1 = arg_2;
    let var_2 = Struct_2(Struct_1(2147483647i, arg_2.b && func_6(vec2<i32>(arg_2.a, arg_2.a), Struct_2(var_1, 2147483647i, arg_2.a)).b), firstLeadingBit(-1i), select(-27967i, arg_2.a, any(global1[_wgslsmith_index_u32(arg_3, 27u)])));
    return global1[_wgslsmith_index_u32(~1u, 27u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<bool>, 27>();
    global0 = func_7((global0.x | true) && !any(select(vec2<bool>(global0.x, true), vec2<bool>(true, true), global1[_wgslsmith_index_u32(114392u, 27u)])), vec4<bool>(global0.x, false, true, any(select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, true, false), vec3<bool>(true, false, false)))), func_1(min(0u, _wgslsmith_mult_u32(u_input.a, u_input.a)), vec4<bool>(false, !any(vec2<bool>(global0.x, global0.x)), global0.x, (true | global0.x) == any(vec2<bool>(global0.x, global0.x))), Struct_2(Struct_1(u_input.d, false && global0.x), reverseBits(_wgslsmith_mod_i32(0i, -2147483647i)), i32(-1i) * -u_input.d)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(31858u, u_input.a, 71829u, 34906u), abs(vec4<u32>(u_input.c, u_input.c, 31274u, 91292u))) << (max(firstLeadingBit(u_input.c), u_input.c) % 32u));
    var var_0 = global0.x;
    var_0 = func_4(1000f, vec3<i32>(_wgslsmith_dot_vec2_i32(select(vec2<i32>(-3635i, 53015i), vec2<i32>(u_input.d, u_input.b.x), vec2<bool>(false, global0.x)), ~u_input.b.xx), firstTrailingBit(22842i), ~firstLeadingBit(u_input.d)), Struct_1(3106i, !func_4(552f, vec3<i32>(u_input.b.x, u_input.d, u_input.b.x), Struct_1(-5340i, true), Struct_1(u_input.b.x, true)).b), func_2(!select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, false, false), vec3<bool>(true, global0.x, true)), Struct_2(Struct_1(u_input.d, global0.x), min(u_input.b.x, u_input.d), func_6(u_input.b.yy, Struct_2(Struct_1(u_input.b.x, global0.x), u_input.b.x, 48614i)).a), Struct_1(u_input.b.x & u_input.d, global0.x))).b && false;
    var var_1 = vec4<u32>(_wgslsmith_dot_vec3_u32(abs(~(vec3<u32>(0u, 1937u, u_input.a) | vec3<u32>(0u, u_input.a, 72254u))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 53874u, 4294967295u) & vec3<u32>(4294967295u, u_input.c, 0u), vec3<u32>(4294967295u, u_input.a, 1u) ^ vec3<u32>(1u, 48597u, 1u))), ~(~u_input.c), u_input.c, 1396u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(min(8044i, _wgslsmith_dot_vec2_i32(u_input.b.xy, u_input.b.zy)), _wgslsmith_mod_i32(-26369i, ~51795i)), 1i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-102f - _wgslsmith_f_op_f32(f32(-1f) * -447f)), _wgslsmith_f_op_f32(1150f - _wgslsmith_f_op_f32(abs(228f))), 421f)), vec4<i32>(-1i, min(func_5(func_4(-1289f, vec3<i32>(u_input.b.x, 2147483647i, -49i), Struct_1(0i, true), Struct_1(u_input.b.x, global0.x)), Struct_2(Struct_1(u_input.d, global0.x), u_input.b.x, u_input.b.x), vec3<i32>(1i, 1i, 2970i), abs(var_1.www)), -59817i), 2147483647i, 26950i), vec3<i32>(u_input.d, u_input.d, u_input.b.x) >> ((~(vec3<u32>(var_1.x, var_1.x, var_1.x) << (vec3<u32>(1u, u_input.c, var_1.x) % vec3<u32>(32u))) << ((abs(vec3<u32>(1u, 4294967295u, u_input.a)) ^ firstLeadingBit(vec3<u32>(u_input.c, 0u, var_1.x))) % vec3<u32>(32u))) % vec3<u32>(32u)));
}

