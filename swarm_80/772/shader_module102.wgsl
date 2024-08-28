struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<f32>) -> bool {
    let var_0 = Struct_4(abs(-2147483647i), Struct_1(true, 21110i, true, vec3<bool>(true, true, true)), 61716i, Struct_2(u_input.a >> (firstTrailingBit(1u) % 32u), ~arg_1.b | arg_0));
    let var_1 = Struct_1(true, ~_wgslsmith_dot_vec4_i32(max(_wgslsmith_add_vec4_i32(vec4<i32>(-26680i, -28778i, 1i, -64591i), vec4<i32>(2147483647i, 0i, u_input.a, arg_2.a)), ~vec4<i32>(arg_0.x, 21673i, arg_2.b.x, arg_0.x)), -(~vec4<i32>(arg_0.x, arg_1.b.x, arg_0.x, 8369i))), all(!(!var_0.b.d.zz)), var_0.b.d);
    return var_1.d.x;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_4(0i, Struct_1(!any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false))), ~1i, func_3(vec3<i32>(-u_input.a, _wgslsmith_sub_i32(u_input.a, -2147483647i), abs(76790i)), Struct_2(_wgslsmith_clamp_i32(u_input.a, -2147483647i, -3838i), vec3<i32>(u_input.a, 20710i, u_input.b) << (vec3<u32>(4294967295u, 54046u, 41821u) % vec3<u32>(32u))), Struct_2(_wgslsmith_sub_i32(22516i, -49151i), ~vec3<i32>(u_input.b, u_input.b, u_input.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(175f, -3354f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-338f, -109f) + vec2<f32>(1000f, 715f)))), vec3<bool>(true, true, true)), u_input.a, Struct_2(-39848i, ~vec3<i32>(u_input.b, 50674i, -15214i) << ((select(vec3<u32>(1u, 27086u, 26593u), vec3<u32>(9u, 4294967295u, 1u), vec3<bool>(true, true, false)) & vec3<u32>(39652u, 12540u, 31843u)) % vec3<u32>(32u))));
    let var_1 = min(reverseBits(vec3<i32>(firstLeadingBit(~u_input.b), u_input.b, u_input.a)), -vec3<i32>(var_0.d.a, i32(-1i) * -30516i, var_0.b.b) ^ _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.c, 43728i, -2147483647i), vec3<i32>(15127i, var_0.a, u_input.b)), max(var_0.d.b, vec3<i32>(var_0.c, u_input.b, 45876i)), vec3<i32>(_wgslsmith_add_i32(u_input.a, u_input.b), var_0.d.b.x, 0i)));
    return Struct_1(!var_0.b.a, max(-u_input.b, -u_input.a >> (~10507u % 32u)) << (max(1u, 0u) % 32u), true, select(vec3<bool>(var_0.b.a, !(u_input.b == 0i), true || all(var_0.b.d.yz)), !select(!var_0.b.d, select(var_0.b.d, vec3<bool>(false, false, var_0.b.a), var_0.b.d), !var_0.b.a), var_0.b.a || false));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_4) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1295f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1310f, 541f)), 1000f, arg_2.b.a)), 610f)))));
    let var_1 = 1017f;
    let var_2 = Struct_4(arg_0.b >> (1u % 32u), Struct_1(false, ~_wgslsmith_sub_i32(abs(44462i), 2147483647i), all(arg_1.d.zx), vec3<bool>(true | !arg_1.a, func_3(vec3<i32>(0i, arg_0.b, -1i), Struct_2(arg_2.d.a, vec3<i32>(arg_1.b, 0i, arg_1.b)), Struct_2(u_input.b, arg_2.d.b), vec2<f32>(122f, -210f)) || arg_0.c, all(vec3<bool>(arg_0.c, true, arg_2.b.c)))), abs(reverseBits(reverseBits(-42906i & u_input.b))), arg_2.d);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), _wgslsmith_div_f32(var_1, -488f)) - _wgslsmith_div_f32(var_1, var_1)));
    var var_3 = vec3<f32>(-1459f, var_1, -930f);
    return ~abs(~(i32(-1i) * -9425i));
}

fn func_5(arg_0: vec3<i32>) -> i32 {
    var var_0 = Struct_4(0i, func_2(), -25709i, Struct_2(~2326i, arg_0));
    var var_1 = Struct_3(vec4<u32>(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(94516u, 41175u, 41711u)), vec3<u32>(1u, 1u, 1u)), _wgslsmith_mod_u32(0u, ~60464u), ~27425u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(53208u, 95u, 4381u), vec3<u32>(57438u, 36685u, 24195u)) % 32u), ~4294967295u) >> (_wgslsmith_add_vec4_u32(min(~vec4<u32>(18773u, 89410u, 4294967295u, 1u), vec4<u32>(25635u, 0u, 19965u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)), vec4<u32>(firstLeadingBit(firstLeadingBit(1u)) ^ _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 79180u), vec3<u32>(58735u, 9240u, 68041u)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 11287u, 76686u), vec3<u32>(7061u, 1u, 68122u))), 1u, _wgslsmith_mod_u32(~(~4294967295u), 7441u), ~(~0u)), func_2(), vec3<f32>(642f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-809f)))), -1107f));
    var var_2 = Struct_4(u_input.a, var_0.b, abs(var_1.c.b) & _wgslsmith_add_i32(-15524i, firstTrailingBit(abs(var_0.b.b))), Struct_2(u_input.b, _wgslsmith_clamp_vec3_i32(arg_0, select(var_0.d.b, vec3<i32>(var_0.c, arg_0.x, -36586i), var_0.b.a) >> (_wgslsmith_add_vec3_u32(vec3<u32>(var_1.b.x, 4294967295u, var_1.b.x), vec3<u32>(var_1.a.x, 15624u, 1u)) % vec3<u32>(32u)), countOneBits(vec3<i32>(var_0.b.b, 0i, u_input.b)))));
    let var_3 = Struct_3(~(~_wgslsmith_add_vec4_u32(~vec4<u32>(97332u, var_1.b.x, var_1.b.x, 37701u), firstLeadingBit(vec4<u32>(0u, 1u, var_1.a.x, var_1.b.x)))), vec4<u32>(0u, var_1.a.x ^ var_1.a.x, 1u, ~_wgslsmith_sub_u32(~var_1.a.x, 1u)), func_2(), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_1.d, _wgslsmith_f_op_vec3_f32(-var_1.d), var_1.c.a))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.d))));
    var_2 = Struct_4(var_2.b.b, var_3.c, 0i, var_2.d);
    return u_input.a;
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = any(vec4<bool>(true, true, true, true));
    var var_1 = false;
    var var_2 = -((arg_0 >> (47118u % 32u)) << (49448u % 32u));
    var_0 = !all(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true))));
    var_2 = ~func_5(vec3<i32>(_wgslsmith_div_i32(-u_input.a, arg_0), func_4(Struct_1(false, 48801i, true, vec3<bool>(false, true, true)), func_2(), Struct_4(-2147483647i, Struct_1(true, arg_0, true, vec3<bool>(false, false, true)), u_input.a, Struct_2(1i, vec3<i32>(arg_0, 0i, u_input.b)))), _wgslsmith_mod_i32(2147483647i, -1i)));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.b);
    let var_1 = Struct_2(u_input.b, vec3<i32>(var_0.b, u_input.a, -39440i));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_mult_i32(countOneBits(-20303i), -var_1.b.x), 2147483647i)));
}

