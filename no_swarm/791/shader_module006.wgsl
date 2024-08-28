struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_1, 6>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: f32, arg_1: vec4<u32>) -> Struct_1 {
    return global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0.x, u_input.b), 6u)];
}

fn func_3() -> vec3<i32> {
    let var_0 = abs(~(~vec3<u32>(0u, 12435u, 0u) & vec3<u32>(45090u, u_input.a, _wgslsmith_div_u32(0u, u_input.a))));
    let var_1 = global1[_wgslsmith_index_u32(934u, 6u)];
    var var_2 = !(var_1.a.x || false);
    let var_3 = _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(var_0.x, 7566u, global0.x, 4294967295u)), ~vec4<u32>(u_input.b, 22460u, u_input.b, global0.x)), firstLeadingBit(abs(vec4<u32>(78408u, global0.x, 59387u, u_input.b)))) << (abs(~(~vec4<u32>(57772u, var_0.x, 1u, 16598u))) % vec4<u32>(32u)), (vec4<u32>(_wgslsmith_mod_u32(0u, u_input.a), 20584u, min(u_input.b, 1u), ~u_input.a) << (min(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 4294967295u, u_input.b, var_0.x), vec4<u32>(4294967295u, u_input.a, global0.x, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, var_0.x, global0.x, 4294967295u), vec4<u32>(var_0.x, u_input.a, u_input.b, 90448u))) % vec4<u32>(32u))) << (~_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(var_0.x, global0.x, global0.x, 37018u)), _wgslsmith_mod_vec4_u32(vec4<u32>(4808u, 4294967295u, global0.x, 88427u), vec4<u32>(global0.x, u_input.a, 4294967295u, u_input.a))) % vec4<u32>(32u)));
    return u_input.d.wyw;
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> vec3<f32> {
    let var_0 = func_3();
    var var_1 = func_1(_wgslsmith_f_op_f32(trunc(-637f)), ~_wgslsmith_mult_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 0u, 0u, 1u), vec4<u32>(4294967295u, 4078u, 11187u, 4294967295u)), ~vec4<u32>(u_input.a, global0.x, global0.x, 0u)));
    var var_2 = vec2<u32>(1u, abs(~(1u ^ u_input.b) | ~(~4294967295u)));
    var var_3 = Struct_1(vec2<bool>(true, !select(all(vec4<bool>(arg_0.a.x, true, arg_0.a.x, true)), arg_0.a.x, arg_0.a.x)), -_wgslsmith_sub_i32(var_1.b, _wgslsmith_div_i32(_wgslsmith_clamp_i32(1i, var_1.c, arg_0.c), func_3().x)), countOneBits(~var_1.b));
    var var_4 = _wgslsmith_f_op_f32(699f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-658f, _wgslsmith_div_f32(-1216f, 144f), true))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -755f))), var_1.a.x)));
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-113f, 309f, 478f))), vec3<f32>(-349f, -227f, -171f)))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<f32>) -> f32 {
    var var_0 = func_1(arg_2.x, vec4<u32>(global0.x, min(global0.x, u_input.a), ~select(4294967295u, select(global0.x, 23557u, arg_1.a.x), arg_0.x < 110f), ~4294967295u));
    var_0 = Struct_1(!(!select(select(vec2<bool>(false, false), vec2<bool>(var_0.a.x, false), true), func_1(1295f, vec4<u32>(71960u, global0.x, 0u, u_input.a)).a, vec2<bool>(var_0.a.x, true))), arg_1.c, -1i);
    var_0 = arg_1;
    global0 = min(~(~select(vec2<u32>(global0.x, u_input.b), vec2<u32>(18334u, global0.x), arg_1.a)), ~vec2<u32>(abs(0u), global0.x ^ 128500u)) >> (vec2<u32>(114735u, 27687u) % vec2<u32>(32u));
    let var_1 = global0.x ^ _wgslsmith_clamp_u32(global0.x | (_wgslsmith_clamp_u32(u_input.a, 106797u, 16569u) >> (u_input.b % 32u)), select(~(~u_input.b), 13487u | u_input.b, false), 0u);
    return 325f;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> vec3<bool> {
    var var_0 = vec3<i32>(_wgslsmith_sub_i32(arg_0.c, arg_0.b), -1i, ~90014i);
    var var_1 = abs(~1u);
    let var_2 = vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, -600f == _wgslsmith_f_op_f32(min(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 - 1255f) + _wgslsmith_f_op_f32(arg_2 * -127f)))));
    var var_3 = Struct_1(select(vec2<bool>(any(func_1(-631f, vec4<u32>(4294967295u, u_input.b, u_input.b, 0u)).a), true), vec2<bool>(_wgslsmith_f_op_f32(-1000f - arg_2) >= 1000f, false), true), -abs(-_wgslsmith_sub_i32(arg_0.c, arg_0.c)), _wgslsmith_clamp_i32(u_input.d.x, ~0i, (arg_0.b | reverseBits(-34278i)) | _wgslsmith_mod_i32(arg_0.b, _wgslsmith_sub_i32(arg_0.c, 29551i))));
    var var_4 = global1[_wgslsmith_index_u32(~global0.x, 6u)];
    return !vec3<bool>(!func_1(-509f, vec4<u32>(global0.x, arg_1, u_input.b, u_input.b)).a.x, any(select(vec4<bool>(false, false, var_4.a.x, true), vec4<bool>(false, arg_0.a.x, var_3.a.x, false), vec4<bool>(false, var_2.x, var_4.a.x, var_4.a.x))), arg_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!func_5(func_1(_wgslsmith_f_op_f32(1774f + -1000f), ~vec4<u32>(87467u, 21652u, 5268u, global0.x)), 31282u, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(func_2(global1[_wgslsmith_index_u32(global0.x, 6u)], u_input.d.x)), Struct_1(vec2<bool>(true, false), u_input.d.x, 39046i), vec3<f32>(1f, 1f, 1f)))), vec3<bool>(!(~u_input.a == firstLeadingBit(1u)), true, func_5(func_1(-312f, reverseBits(vec4<u32>(17915u, global0.x, u_input.a, 15861u))), ~30805u, 1f).x), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(false, true, true, false)), true, true)));
    global1 = array<Struct_1, 6>();
    var var_1 = 4294967295u;
    var var_2 = global1[_wgslsmith_index_u32(~global0.x, 6u)];
    global1 = array<Struct_1, 6>();
    let var_3 = vec3<bool>(false, select(true, var_2.a.x, u_input.c >= 1i), !((-u_input.d.x != u_input.c) || !var_2.a.x));
    let var_4 = Struct_1(vec2<bool>(any(!(!vec4<bool>(var_2.a.x, var_3.x, var_3.x, true))), all(vec4<bool>(var_2.b <= 14450i, var_0.x, all(vec3<bool>(true, true, true)), true & var_2.a.x))), -50337i, ~var_2.b);
    let var_5 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(floor(211f)), 1741f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-369f)) + _wgslsmith_f_op_f32(f32(-1f) * -493f))))), Struct_1(!vec2<bool>(false | var_0.x, !var_4.a.x), _wgslsmith_sub_i32(1i, firstTrailingBit(0i)) << (52661u % 32u), -_wgslsmith_clamp_i32(-2147483647i, var_4.c, max(-22150i, u_input.d.x))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-948f, -866f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-120f, -461f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-104f, 1382f, -983f)))))))));
    var var_6 = func_1(var_5, ~select(~vec4<u32>(global0.x, u_input.b, 43985u, 1u), vec4<u32>(u_input.a, global0.x, global0.x, 1u), vec4<bool>(var_4.a.x, true, var_4.a.x, var_2.a.x))).b ^ 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_add_vec4_i32(u_input.d, _wgslsmith_mod_vec4_i32(min(vec4<i32>(6893i, 2147483647i, var_2.b, 0i), -u_input.d), reverseBits(firstTrailingBit(vec4<i32>(-2147483647i, u_input.c, u_input.c, 41379i))))), abs(~firstLeadingBit(~vec4<u32>(u_input.a, u_input.a, global0.x, 1u))), abs((~(-1i) | _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, 71421i, var_2.b), u_input.d)) & _wgslsmith_clamp_i32(select(var_4.b, 13442i, var_2.a.x), u_input.c, u_input.d.x)));
}

