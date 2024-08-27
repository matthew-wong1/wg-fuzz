struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-2056f, -1033f, 261f);

var<private> global1: Struct_1;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: i32) -> bool {
    let var_0 = arg_0;
    let var_1 = u_input.a;
    global1 = Struct_1(-arg_3 < _wgslsmith_sub_i32(arg_3, _wgslsmith_sub_i32(-arg_3, arg_3)));
    let var_2 = Struct_2(Struct_1(!arg_1.a.a));
    let var_3 = vec2<f32>(-574f, global0.x);
    return arg_1.a.a;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: Struct_1) -> vec3<bool> {
    global1 = arg_2;
    global0 = arg_1;
    var var_0 = Struct_2(arg_2);
    return select(select(!(!arg_0), arg_0, global1.a), arg_0, !arg_0);
}

fn func_2(arg_0: u32, arg_1: bool) -> Struct_1 {
    let var_0 = vec4<bool>(!arg_1, any(func_4(vec3<bool>(true, any(vec3<bool>(true, true, false)), func_3(Struct_2(Struct_1(false)), Struct_2(Struct_1(true)), vec4<bool>(true, arg_1, arg_1, global1.a), 1i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, 983f), vec3<f32>(global0.x, global0.x, global0.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1031f, global0.x))), Struct_1(func_3(Struct_2(Struct_1(global1.a)), Struct_2(Struct_1(true)), vec4<bool>(global1.a, global1.a, arg_1, arg_1), -6276i)))), global1.a, func_3(Struct_2(Struct_1(func_3(Struct_2(Struct_1(false)), Struct_2(Struct_1(global1.a)), vec4<bool>(arg_1, true, arg_1, true), 6087i))), Struct_2(Struct_1(global1.a)), !vec4<bool>(global1.a, any(vec3<bool>(false, false, arg_1)), global1.a && false, !arg_1), -1i));
    let var_1 = Struct_1(!any(vec4<bool>(any(var_0), arg_1, true, true)));
    var var_2 = ~vec3<u32>(~(firstLeadingBit(u_input.b) | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, arg_0), vec2<u32>(arg_0, 4294967295u))), _wgslsmith_dot_vec3_u32(~vec3<u32>(65390u, arg_0, 0u) << (min(vec3<u32>(arg_0, 0u, arg_0), vec3<u32>(12598u, arg_0, arg_0)) % vec3<u32>(32u)), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, arg_0, u_input.a), vec3<u32>(0u, 105111u, 51836u))), arg_0);
    let var_3 = _wgslsmith_mod_u32(u_input.a, ~(~(~(var_2.x ^ u_input.a))));
    let var_4 = firstTrailingBit(~(-max(vec2<i32>(36093i, 1i), vec2<i32>(-41544i, -47576i)) >> ((~var_2.yz << (var_2.zx % vec2<u32>(32u))) % vec2<u32>(32u))));
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = true;
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1648f, _wgslsmith_div_f32(-961f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(774f + global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -410f))));
    var var_1 = global1.a;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1287f);
    global1 = func_2(countOneBits(~(~u_input.a)), false);
    return Struct_1(false);
}

fn func_1(arg_0: u32) -> Struct_1 {
    global1 = Struct_1(!all(vec3<bool>(!global1.a, global1.a, global1.a)));
    global1 = Struct_1(global1.a);
    let var_0 = Struct_2(func_5(func_2(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(97415u, 4294967295u, 1u), vec3<u32>(1u, arg_0, u_input.a))), global1.a), !select(vec3<bool>(false, true, true), vec3<bool>(global1.a, true, global1.a), vec3<bool>(false, global1.a, true))));
    let var_1 = vec3<i32>(16412i, -1i, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(1i, 1i, 1i)), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 54897i, -31662i), vec3<i32>(-1i, 2147483647i, 48775i), vec3<i32>(28263i, 41543i, 39992i)), ~vec3<i32>(-63833i, 2147483647i, 11554i))) >> (56336u % 32u));
    global1 = var_0.a;
    return Struct_1(func_3(var_0, Struct_2(var_0.a), vec4<bool>(var_0.a.a, global1.a, -var_1.x <= -31565i, global1.a), 2147483647i));
}

fn func_6(arg_0: Struct_1) -> Struct_2 {
    var var_0 = ~vec2<i32>(3575i, select(2821i, select(2511i, min(-1i, 1i), func_2(u_input.b, false).a), !all(vec2<bool>(true, arg_0.a))));
    var var_1 = select(vec3<bool>(arg_0.a, false, _wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, var_0.x), -vec2<i32>(var_0.x, 35187i)) <= firstTrailingBit(_wgslsmith_mult_i32(var_0.x, -1i))), select(vec3<bool>(true, !func_2(u_input.b, true).a, arg_0.a), !vec3<bool>(true, arg_0.a | false, true), all(vec4<bool>(true, func_1(19147u).a, arg_0.a, false))), true);
    var_0 = _wgslsmith_add_vec2_i32(~max(~(~vec2<i32>(var_0.x, -5238i)), _wgslsmith_add_vec2_i32(select(vec2<i32>(var_0.x, var_0.x), vec2<i32>(0i, var_0.x), vec2<bool>(var_1.x, global1.a)), -vec2<i32>(34814i, 0i))), vec2<i32>(var_0.x, ~max(var_0.x, max(1i, 8689i))));
    var var_2 = false;
    return Struct_2(Struct_1(!(-1i >= var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true);
    let var_1 = 355f;
    global1 = Struct_1(!global1.a);
    global1 = var_0;
    let var_2 = func_6(func_1(~(_wgslsmith_sub_u32(u_input.a, u_input.a) & 1u)));
    let var_3 = vec4<f32>(var_1, _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1))))), _wgslsmith_f_op_f32(370f * 2020f), _wgslsmith_f_op_f32(floor(var_1)));
    var var_4 = Struct_2(func_5(func_6(func_5(func_1(0u), !vec3<bool>(var_2.a.a, true, true))).a, !vec3<bool>(func_4(vec3<bool>(var_0.a, var_0.a, false), vec3<f32>(var_1, global0.x, global0.x), Struct_1(false)).x, !global1.a, true)));
    var var_5 = func_5(var_0, vec3<bool>(var_0.a, var_1 != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(454f * -1189f))), true));
    global1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(var_3, u_input.a, _wgslsmith_clamp_vec3_u32(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.a, 0u), vec3<u32>(9029u, 4294967295u, 1796u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a | 29334u, 4294967295u, u_input.b), ~(~vec3<u32>(u_input.a, u_input.b, u_input.b)), vec3<u32>(u_input.b, 0u, u_input.b) & _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, 30270u), vec3<u32>(1u, 29388u, u_input.a), vec3<u32>(20286u, u_input.b, 67369u))), vec3<u32>(u_input.a, _wgslsmith_add_u32(u_input.a, u_input.b) ^ u_input.b, 31351u)), 1i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, 613f, 1f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.zzz)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1, var_3.x, var_3.x))))));
}

