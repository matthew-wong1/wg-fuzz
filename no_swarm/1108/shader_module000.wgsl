struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: i32, arg_3: vec3<i32>) -> u32 {
    let var_0 = abs(u_input.a);
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1962f), -363f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-1000f)))), arg_1.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, -1240f, -540f)) - vec4<f32>(arg_1.x, -867f, arg_1.x, -319f)) * vec4<f32>(_wgslsmith_f_op_f32(arg_1.x + arg_1.x), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1232f), _wgslsmith_div_f32(289f, arg_1.x)))), Struct_1(~select(~u_input.b, u_input.b, select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false)), u_input.a));
    global0 = true;
    let var_2 = var_1;
    global0 = _wgslsmith_f_op_f32(floor(-1130f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1.a.x)), _wgslsmith_f_op_f32(-var_2.a.x))));
    return var_1.b.b;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec2<f32>) -> i32 {
    var var_0 = vec2<i32>(abs(u_input.b.x), -1i);
    let var_1 = arg_1.x;
    let var_2 = max(~(_wgslsmith_div_vec3_u32(max(vec3<u32>(1u, 4294967295u, u_input.a), vec3<u32>(arg_0.b, 40975u, arg_2.b)), ~vec3<u32>(10251u, arg_2.b, arg_0.b)) & ~vec3<u32>(4294967295u, 4294967295u, 0u)), _wgslsmith_mult_vec3_u32(~vec3<u32>(~1u, _wgslsmith_clamp_u32(arg_2.b, 53740u, 1u), ~u_input.a), vec3<u32>(~(arg_0.b & 55240u), ~arg_0.b, 1u)));
    let var_3 = abs(min(-arg_0.a, -vec3<i32>(arg_2.a.x, 2147483647i, arg_2.a.x) | arg_0.a));
    var var_4 = _wgslsmith_mult_i32(firstTrailingBit(~var_0.x), u_input.b.x) & _wgslsmith_clamp_i32(2147483647i, -33946i, 0i ^ arg_2.a.x);
    return 7466i & arg_2.a.x;
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = Struct_1(~u_input.b, ~(~min(_wgslsmith_div_u32(0u, 14157u), ~85927u)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_0, arg_0, arg_0), vec4<f32>(-1960f, -708f, 195f, -1154f), false)))))), var_0);
    global0 = func_4(Struct_1(vec3<i32>(var_0.a.x, u_input.b.x, ~(-13243i)), func_3(49740i, var_1.a.zz, var_0.a.x, vec3<i32>(u_input.b.x, -4076i, var_0.a.x)) >> (1u % 32u)), var_1.a, var_1.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.a.x, 734f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(var_1.a.zz)))))) <= _wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_sub_vec2_i32(var_1.b.a.yx, vec2<i32>(u_input.b.x, u_input.b.x))) & var_0.a.yx, countOneBits(vec2<i32>(countOneBits(232i), _wgslsmith_sub_i32(var_1.b.a.x, var_1.b.a.x))));
    let var_2 = Struct_1(min(var_0.a, u_input.b), u_input.a);
    global0 = true;
    return var_1;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_2 {
    var var_0 = func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -185f) - -1333f)))));
    var var_1 = 1u;
    let var_2 = !vec4<bool>(!any(vec4<bool>(true, true, false, true)) | false, any(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(false, true), false))), any(vec2<bool>(arg_0.b < 1u, any(vec2<bool>(true, false)))), all(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), any(vec4<bool>(true, true, true, true)))));
    global0 = true;
    let var_3 = ~(~(~27812u)) & _wgslsmith_mult_u32(u_input.a, ~countOneBits(~1u));
    return Struct_2(_wgslsmith_f_op_vec4_f32(-var_0.a), Struct_1(arg_0.a, 1u));
}

fn func_5(arg_0: Struct_2, arg_1: f32) -> vec3<bool> {
    var var_0 = select(firstTrailingBit(~21282u) >> (arg_0.b.b % 32u), firstTrailingBit(arg_0.b.b), true && ((true & (arg_1 > 772f)) || (false || (arg_1 != 485f))));
    let var_1 = select(select(select(vec3<u32>(86997u, select(u_input.a, 4294967295u, true), func_1(Struct_1(arg_0.b.a, 11780u), vec4<u32>(0u, u_input.a, 4294967295u, 1u)).b.b), firstLeadingBit(vec3<u32>(1u, 1u, 1u)), any(vec3<bool>(true, false, false)) || all(vec4<bool>(false, false, true, true))), abs(countOneBits(vec3<u32>(1u, 4294967295u, 4294967295u))) ^ ~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, arg_0.b.b), vec3<u32>(u_input.a, 1u, arg_0.b.b)), !vec3<bool>(false, true, arg_0.b.a.x < 2147483647i)), vec3<u32>(u_input.a, func_2(_wgslsmith_f_op_f32(arg_0.a.x * -149f)).b.b, arg_0.b.b), !select(true, true, true) || false);
    let var_2 = func_1(Struct_1(_wgslsmith_mod_vec3_i32(firstLeadingBit(u_input.b), ~(vec3<i32>(u_input.b.x, arg_0.b.a.x, arg_0.b.a.x) & u_input.b)), 38563u), ~vec4<u32>(4294967295u, arg_0.b.b, ~61594u, ~(~22796u))).b;
    let var_3 = arg_0.a.xx;
    let var_4 = _wgslsmith_sub_vec2_u32(~(~(~_wgslsmith_div_vec2_u32(vec2<u32>(var_1.x, var_2.b), var_1.zz))), firstLeadingBit(countOneBits(var_1.yx)));
    return vec3<bool>(false, any(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), all(vec2<bool>(false, false)))), select(any(vec3<bool>(true, true, true)), false, true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = all(func_5(func_1(Struct_1(vec3<i32>(11903i, u_input.b.x, -2147483647i), firstLeadingBit(105146u)), ~vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1660f, -183f))));
    var var_0 = _wgslsmith_div_vec2_i32((select(~u_input.b.zx, u_input.b.zx, all(vec3<bool>(true, false, false))) >> (~vec2<u32>(3647u, 1u) % vec2<u32>(32u))) << (_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 44442u) | vec2<u32>(5462u, u_input.a)), _wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(u_input.a, 4574u)), ~vec2<u32>(u_input.a, 46734u))) % vec2<u32>(32u)), vec2<i32>((_wgslsmith_clamp_i32(u_input.b.x, 38278i, -2147483647i) >> ((u_input.a | u_input.a) % 32u)) ^ u_input.b.x, select(u_input.b.x, 22497i, true)));
    var var_1 = 1328f;
    var var_2 = u_input.a;
    var var_3 = any(vec2<bool>(!all(vec3<bool>(true, true, true)), true));
    var_2 = ~_wgslsmith_add_u32(0u, ~(0u >> (u_input.a % 32u))) | (u_input.a | _wgslsmith_sub_u32(~u_input.a, countOneBits(u_input.a)));
    var_1 = func_1(Struct_1(func_1(Struct_1(~u_input.b, 46904u), ~vec4<u32>(u_input.a, 2986u, 0u, 4294967295u)).b.a, min(_wgslsmith_mod_u32(~u_input.a, u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), max(vec2<u32>(u_input.a, 0u), vec2<u32>(18953u, u_input.a))))), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_add_u32(u_input.a, u_input.a) | _wgslsmith_sub_u32(14568u, u_input.a), 0u & (71488u ^ u_input.a), 99907u, 4294967295u), vec4<u32>(16081u, 45100u, u_input.a, reverseBits(348u)))).a.x;
    var_1 = 534f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1075f, 1355f, all(vec3<bool>(false, true, true))))) - _wgslsmith_f_op_f32(select(-424f, _wgslsmith_f_op_f32(-func_1(Struct_1(u_input.b, u_input.a), vec4<u32>(u_input.a, 21243u, 0u, 75862u)).a.x), false))), ~(vec4<i32>(-22879i, abs(u_input.b.x), ~22413i, -15723i) >> (~(~vec4<u32>(1u, 1u, 10862u, u_input.a)) % vec4<u32>(32u))), u_input.a);
}

