struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: bool, arg_3: i32) -> u32 {
    let var_0 = ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(6781u), 4294967295u), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 6714u), vec2<u32>(37174u, 71537u)), ~41248u)));
    let var_1 = _wgslsmith_f_op_f32(-arg_0.x);
    let var_2 = 1u;
    return var_0;
}

fn func_3() -> i32 {
    let var_0 = Struct_1(-450f, select(vec4<bool>(true, true, true, true), vec4<bool>(!all(vec2<bool>(true, false)), all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), false)), any(select(vec2<bool>(true, false), vec2<bool>(true, true), false)), true), all(vec2<bool>(true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(898f + _wgslsmith_f_op_f32(-1f))), firstTrailingBit(~1i));
    let var_1 = u_input.a.yz;
    var var_2 = vec4<u32>(abs(4294967295u), firstTrailingBit(~max(~5656u, firstLeadingBit(18972u))), 0u, ~firstTrailingBit(0u) ^ (0u >> (abs(0u) % 32u)));
    let var_3 = vec4<i32>(firstLeadingBit(min(abs(var_1.x >> (var_2.x % 32u)), var_0.d)), ~var_1.x ^ 1i, u_input.a.x ^ _wgslsmith_add_i32(abs(~10814i), ~(-6566i) ^ _wgslsmith_div_i32(var_0.d, var_0.d)), -(~firstTrailingBit(-2147483647i)));
    var_2 = ~(~(~vec4<u32>(var_2.x, 12173u, 0u, _wgslsmith_clamp_u32(1u, var_2.x, 33626u))));
    return _wgslsmith_clamp_i32(1i, select(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(-u_input.a.zz, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), var_1)), (vec2<i32>(2147483647i, -19441i) & vec2<i32>(-7982i, var_0.d)) & _wgslsmith_add_vec2_i32(vec2<i32>(var_1.x, 6432i), vec2<i32>(var_1.x, 0i))), var_0.d, 1u > _wgslsmith_sub_u32(var_2.x >> (51799u % 32u), 49438u)), u_input.a.x);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_1 {
    return Struct_1(-695f, !select(select(vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, false), select(vec4<bool>(arg_0.b.x, true, false, false), arg_0.b, arg_0.b.x), arg_0.b.x), select(arg_0.b, !vec4<bool>(false, true, arg_0.b.x, true), select(vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, true), vec4<bool>(arg_0.b.x, true, arg_0.b.x, arg_0.b.x), true)), !arg_0.b.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(arg_0.c)))), _wgslsmith_sub_i32(max(-(~u_input.a.x), 0i), func_3()));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = _wgslsmith_mod_vec2_u32(firstLeadingBit(~(~firstLeadingBit(vec2<u32>(64898u, 55344u)))), vec2<u32>(15539u, _wgslsmith_mod_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, 1815u), vec4<u32>(55079u, 2872u, 4294967295u, 41658u))) >> (1u % 32u)));
    var_0 = vec2<u32>(abs(4294967295u), reverseBits(var_0.x));
    var_0 = abs(~(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, 4294967295u), vec2<u32>(var_0.x, var_0.x)))));
    var var_1 = func_2(arg_2, vec4<i32>(23342i, countOneBits(arg_2.d), arg_0, arg_0));
    var var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a * arg_2.c), _wgslsmith_f_op_f32(max(var_1.c, -869f)))), -248f), -288f, arg_2.a, _wgslsmith_div_f32(662f, -422f));
    return _wgslsmith_mod_vec4_u32(~select(~vec4<u32>(0u, 4294967295u, var_0.x, var_0.x), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, var_0.x, 33813u, var_0.x), vec4<u32>(4294967295u, 22099u, var_0.x, 24175u)) ^ vec4<u32>(var_0.x, var_0.x, 1u, 7191u), arg_2.b), vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(6243u, 1u), vec2<u32>(var_0.x, var_0.x)) & ~vec2<u32>(1u, 1u), ~vec2<u32>(var_0.x, 24476u)), ~133440u, ~abs(var_0.x), countOneBits(~var_0.x >> (var_0.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(reverseBits(vec4<u32>(1u, 1u, 1u, 1u)), ~vec4<u32>(1u, 1u, 1u, 1u), !(func_1(vec2<f32>(426f, -209f), 984f, false, u_input.a.x) < 1u)) & (_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(23072u, 4294967295u, 0u, 0u), vec4<u32>(1u, 1u, 1u, 1u)), func_4(~u_input.a.x, any(vec4<bool>(true, true, false, true)), func_2(Struct_1(-665f, vec4<bool>(true, true, true, true), -291f, u_input.a.x), vec4<i32>(1i, u_input.a.x, -2147483647i, u_input.a.x)))) >> (~(~vec4<u32>(8731u, 1u, 4294967295u, 17187u) >> (firstTrailingBit(vec4<u32>(11585u, 31458u, 18348u, 35955u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-707f, 372f)), 1531f, _wgslsmith_f_op_f32(max(438f, 106f))), vec3<f32>(func_2(Struct_1(-1000f, vec4<bool>(true, false, false, false), 867f, u_input.a.x), vec4<i32>(-3631i, u_input.a.x, u_input.a.x, -15250i)).c, _wgslsmith_f_op_f32(f32(-1f) * -998f), -216f))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -250f) + -472f), _wgslsmith_f_op_f32(f32(-1f) * -1360f), 714f));
    var var_2 = var_0.x;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)));
    var var_4 = vec2<u32>(var_0.x, _wgslsmith_sub_u32(reverseBits(var_0.x), abs(~1u)));
    var_2 = ~var_4.x ^ select(func_4(u_input.a.x, true, Struct_1(var_1.x, vec4<bool>(false, true, false, true), -1017f, u_input.a.x)).x & (var_4.x >> (5275u % 32u)), 5357u, true);
    let var_5 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)) + 1000f))), vec4<bool>(true, func_2(func_2(Struct_1(var_3, vec4<bool>(false, false, false, false), var_1.x, 1i), vec4<i32>(u_input.a.x, 2147483647i, -57437i, u_input.a.x)), reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x))).b.x, !func_2(Struct_1(var_3, vec4<bool>(false, true, false, false), var_3, -2147483647i), ~vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x)).b.x, !all(func_2(Struct_1(1376f, vec4<bool>(false, true, true, false), -873f, 0i), vec4<i32>(2147483647i, u_input.a.x, 12430i, 21219i)).b.wx)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-291f, _wgslsmith_div_f32(-465f, -1000f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zy, var_0.x, ~(~reverseBits(var_0)));
}

