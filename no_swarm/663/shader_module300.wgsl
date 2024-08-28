struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: vec3<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    var var_0 = Struct_1(-399f, _wgslsmith_f_op_f32(ceil(-694f)), abs(countOneBits(vec4<u32>(1u, 1u, 1u, 1u))), 43822u & select(1u, 4294967295u, true));
    var var_1 = ~(~vec4<u32>(0u, 1u, ~1u, ~var_0.d));
    var_1 = vec4<u32>(min(var_1.x, _wgslsmith_div_u32(_wgslsmith_add_u32(1u, var_1.x), 4294967295u)), 0u, var_0.d, ~(~8116u));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(728f, _wgslsmith_f_op_f32(-346f + _wgslsmith_f_op_f32(floor(var_0.b))), var_0.b))));
    let var_3 = true;
    return true;
}

fn func_2(arg_0: vec3<f32>) -> bool {
    var var_0 = !(!select(vec2<bool>(true, true), vec2<bool>(arg_0.x != arg_0.x, func_3()), vec2<bool>(false, true)));
    let var_1 = _wgslsmith_dot_vec2_u32(~vec2<u32>(~(~0u), ~(~4294967295u)), vec2<u32>(1u, 1u));
    let var_2 = ~(~(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(15237u, 5643u, 0u, 4294967295u), vec4<u32>(1u, var_1, var_1, var_1)), var_1 << (var_1 % 32u), ~1u, ~4294967295u)));
    let var_3 = Struct_1(1229f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))))), ~vec4<u32>(var_2.x, _wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, 4294967295u), _wgslsmith_sub_u32(0u, 0u)), (var_1 >> (72997u % 32u)) ^ _wgslsmith_mod_u32(94295u, var_1), var_1), 5823u);
    var_0 = !select(vec2<bool>(true, 4294967295u > reverseBits(var_2.x)), vec2<bool>(func_3() != true, !any(vec2<bool>(var_0.x, false))), false);
    return !var_0.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = 0u;
    var_0 = 59943u;
    var_0 = 16319u;
    let var_1 = Struct_2(abs(_wgslsmith_mult_vec4_i32(~select(vec4<i32>(arg_1.x, arg_1.x, 0i, 1i), vec4<i32>(-30428i, arg_1.x, arg_1.x, arg_1.x), true), vec4<i32>(u_input.a, -37434i, _wgslsmith_dot_vec3_i32(arg_1, arg_1), u_input.a << (4294967295u % 32u)))), Struct_1(-405f, _wgslsmith_f_op_f32(step(-685f, 178f)), vec4<u32>(1u, 1u, 1u, 1u), ~1u), Struct_1(-1190f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -712f) + _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), abs(vec4<u32>(firstLeadingBit(5973u), _wgslsmith_mult_u32(0u, 0u), 1u, 45280u)), _wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, 1u, 4294967295u), 1366u)), _wgslsmith_sub_vec4_i32(~_wgslsmith_clamp_vec4_i32(~vec4<i32>(0i, arg_1.x, -2147483647i, arg_1.x), ~vec4<i32>(8939i, u_input.a, arg_1.x, -1i), vec4<i32>(-71078i, 3296i, arg_1.x, u_input.a) >> (vec4<u32>(4294967295u, 12137u, 1u, 17931u) % vec4<u32>(32u))), abs(abs(vec4<i32>(-1i, 2147483647i, -2147483647i, 1i)))), _wgslsmith_f_op_f32(f32(-1f) * -996f));
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_1.e) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.a, -238f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(520f, var_1.b.a) + vec2<f32>(-880f, var_1.c.b))), true))))));
    return Struct_1(var_1.c.a, var_1.e, _wgslsmith_mod_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(38369u, 0u, var_1.c.c.x, 64977u), var_1.c.c, vec4<u32>(var_1.c.d, var_1.b.c.x, var_1.c.c.x, 57159u)) >> (var_1.c.c % vec4<u32>(32u)), abs(_wgslsmith_mult_vec4_u32(var_1.b.c, var_1.b.c) >> (vec4<u32>(42042u, var_1.b.c.x, var_1.c.c.x, 83713u) % vec4<u32>(32u)))), countOneBits(firstLeadingBit(var_1.c.c.x)));
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(!vec4<bool>(true, false, true, all(vec4<bool>(false, false, true, false))), select(_wgslsmith_div_vec3_i32(-vec3<i32>(25447i, u_input.a, u_input.a), -min(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, 7482i))), vec3<i32>(u_input.a, ~(~(-16190i)), 43223i), vec3<bool>(func_2(_wgslsmith_div_vec3_f32(vec3<f32>(-977f, 1195f, -708f), vec3<f32>(-713f, -980f, -188f))), true, false)));
    var var_1 = !any(select(vec3<bool>(true, all(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, false, true, true))), vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(false, false, false, false)), all(vec4<bool>(false, false, false, false)), true)));
    var_1 = !(var_0.b >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(868f - var_0.b)))));
    var_1 = reverseBits(_wgslsmith_div_i32(~40640i, _wgslsmith_div_i32(u_input.a, _wgslsmith_div_i32(u_input.a, -2147483647i)))) < _wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.a, 0i, u_input.a), -vec3<i32>(u_input.a, u_input.a, -2147483647i)), reverseBits(vec3<i32>(30586i, u_input.a, ~(-21503i))));
    var_1 = select(-515f <= _wgslsmith_f_op_f32(trunc(var_0.a)), ((_wgslsmith_add_u32(var_0.c.x, 4294967295u) & var_0.d) < 1u) || (u_input.a >= abs(_wgslsmith_mod_i32(-1i, 3152i))), u_input.a > countOneBits(~u_input.a));
    return func_4(select(select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, func_3()), vec4<bool>(true, select(true, false, false), false, false)), !vec4<bool>(all(vec3<bool>(true, true, true)), true, false, var_0.b <= var_0.b), true), _wgslsmith_sub_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, 27338i), vec3<i32>(-6742i, u_input.a, -84278i), ~vec3<i32>(9500i, -2147483647i, u_input.a)), vec3<i32>(9525i, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, 1i), vec2<i32>(37759i, 0i)), -_wgslsmith_mod_i32(u_input.a, u_input.a))));
}

fn func_5(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = !(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(select(false, true, true), func_2(vec3<f32>(arg_3.c.b, 738f, 719f)), any(vec2<bool>(true, false)))));
    let var_1 = Struct_2(~arg_3.d, Struct_1(_wgslsmith_f_op_f32(min(arg_3.b.b, 1308f)), _wgslsmith_f_op_f32(func_4(vec4<bool>(true, true, true, true), reverseBits(vec3<i32>(-2147483647i, u_input.a, u_input.a))).b - 1324f), ~vec4<u32>(1u, 29976u, _wgslsmith_sub_u32(arg_1.x, arg_1.x), arg_3.b.d), ~_wgslsmith_sub_u32(arg_1.x, arg_0 << (arg_2.c.x % 32u))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b) * 1000f)), arg_2.b, arg_3.c.c, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(44869u, arg_1.x, 54344u, 22498u)), ~arg_2.c)), -vec4<i32>(_wgslsmith_sub_i32(1i, arg_3.a.x), -1i & u_input.a, -_wgslsmith_dot_vec3_i32(arg_3.a.zyw, vec3<i32>(u_input.a, u_input.a, arg_3.a.x)), ~arg_3.d.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.a, arg_3.c.b)));
    let var_2 = countOneBits(~_wgslsmith_dot_vec2_i32(-select(var_1.d.xw, var_1.a.xw, true), var_1.a.xx));
    var var_3 = _wgslsmith_clamp_vec4_i32(vec4<i32>(firstTrailingBit(~u_input.a), select(-1i, abs(970i), !(!var_0.x)), _wgslsmith_div_i32(_wgslsmith_div_i32(~arg_3.a.x, 0i), 1i), 0i), vec4<i32>(_wgslsmith_mod_i32(~reverseBits(16054i), u_input.a), -27477i, 26324i, 1i), -vec4<i32>(17049i, var_1.d.x, ~arg_3.d.x, firstTrailingBit(1i)));
    let var_4 = var_1;
    return select(select(vec3<bool>(!func_2(vec3<f32>(var_4.e, -1501f, var_1.e)), var_0.x, false), select(vec3<bool>(all(vec3<bool>(false, var_0.x, var_0.x)), true, !var_0.x), vec3<bool>(!var_0.x, false, var_0.x), all(!vec2<bool>(true, var_0.x))), !any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)))), select(select(select(!vec3<bool>(true, var_0.x, false), select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x)), true), !vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true)), vec3<bool>(true, true, _wgslsmith_dot_vec2_i32(var_3.yz, var_1.a.yy) <= 2135i), false), !(!vec3<bool>(any(vec3<bool>(var_0.x, var_0.x, false)), any(vec3<bool>(var_0.x, true, true)), 4294967295u > var_1.c.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec3<bool>(true, true, !any(vec3<bool>(true, false, false))), vec3<bool>(select(false, true, true), true || all(vec3<bool>(false, true, true)), true), func_5(firstLeadingBit(1u) << (_wgslsmith_clamp_u32(12010u, 0u, 4294967295u) % 32u), vec3<u32>(1u, 1u, _wgslsmith_mult_u32(19629u, 1u)), func_1(), Struct_2(countOneBits(vec4<i32>(-19501i, u_input.a, u_input.a, -2147483647i)), Struct_1(1968f, -359f, vec4<u32>(1u, 21761u, 4294967295u, 28704u), 4294967295u), Struct_1(-752f, 865f, vec4<u32>(0u, 63695u, 48312u, 4294967295u), 93449u), -vec4<i32>(u_input.a, u_input.a, u_input.a, 1i), _wgslsmith_f_op_f32(select(519f, 1667f, false))))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(all(vec3<bool>(true, true, false)) || true, all(func_5(117829u, vec3<u32>(72361u, 4294967295u, 4294967295u), Struct_1(145f, 763f, vec4<u32>(4294967295u, 12932u, 0u, 67184u), 2596u), Struct_2(vec4<i32>(u_input.a, u_input.a, u_input.a, 26474i), Struct_1(748f, 537f, vec4<u32>(17981u, 64676u, 38226u, 1u), 0u), Struct_1(-264f, -1000f, vec4<u32>(0u, 4294967295u, 8524u, 35685u), 4294967295u), vec4<i32>(1894i, u_input.a, u_input.a, u_input.a), -1922f))), true), true), false);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(960f)), 862f)) * _wgslsmith_f_op_f32(-func_1().b))), _wgslsmith_f_op_f32(1543f + _wgslsmith_f_op_f32(abs(1f))));
    var_0 = !func_5(0u, vec3<u32>(~(~48091u), ~reverseBits(15034u), ~(~4294967295u)), func_4(!select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, true, false, false)), vec3<i32>(select(3457i, u_input.a, var_0.x), u_input.a << (5600u % 32u), 0i)), Struct_2(vec4<i32>(u_input.a, min(u_input.a, 0i), -46784i, _wgslsmith_div_i32(u_input.a, u_input.a)), Struct_1(_wgslsmith_f_op_f32(var_1 - 373f), var_1, firstTrailingBit(vec4<u32>(0u, 0u, 31622u, 107008u)), ~1u), func_1(), -reverseBits(vec4<i32>(1i, 1i, 1i, -1i)), func_1().a));
    var var_2 = min(-2147483647i, abs(firstLeadingBit(u_input.a))) << (abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, firstLeadingBit(17032u)), reverseBits(vec3<u32>(1u, 1u, 1u)))) % 32u);
    var_2 = ~(~u_input.a);
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(378f, 420f, -914f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-772f, -705f, 1707f)) - vec3<f32>(-661f, var_1, 284f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1273f, 643f, 1000f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(551f, var_1, 978f), vec3<f32>(-883f, 675f, var_1)))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-564f, var_1, var_1)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1790f, -777f, var_1)))))))));
    let var_4 = select(vec4<bool>(func_5(_wgslsmith_clamp_u32(_wgslsmith_div_u32(20921u, 8172u), _wgslsmith_dot_vec3_u32(vec3<u32>(57825u, 10896u, 0u), vec3<u32>(4294967295u, 12023u, 0u)), 0u), ~vec3<u32>(1u, 1u, 57145u), Struct_1(540f, _wgslsmith_f_op_f32(floor(868f)), min(vec4<u32>(21607u, 77229u, 1u, 69331u), vec4<u32>(20996u, 4294967295u, 43895u, 6471u)), 21513u), Struct_2(abs(vec4<i32>(-6432i, u_input.a, -1i, 1i)), func_4(vec4<bool>(false, false, var_0.x, false), vec3<i32>(2147483647i, u_input.a, -25797i)), Struct_1(-267f, var_1, vec4<u32>(20616u, 7477u, 1u, 60266u), 1u), vec4<i32>(-2147483647i, u_input.a, -2147483647i, -35366i) >> (vec4<u32>(1u, 4294967295u, 76048u, 44760u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(abs(var_3.x)))).x, reverseBits(select(u_input.a, u_input.a, true)) <= u_input.a, true, func_2(_wgslsmith_f_op_vec3_f32(var_3 - var_3))), vec4<bool>(var_0.x, !any(vec2<bool>(false, true)), var_3.x > _wgslsmith_f_op_f32(1442f - _wgslsmith_f_op_f32(trunc(203f))), true), !var_0.x);
    var_0 = var_4.wyy;
    let var_5 = Struct_2(firstTrailingBit(max(_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), min(vec4<i32>(34955i, u_input.a, -2147483647i, u_input.a), vec4<i32>(2147483647i, u_input.a, 28061i, u_input.a)), vec4<i32>(u_input.a, u_input.a, -41131i, u_input.a) >> (vec4<u32>(0u, 1u, 45022u, 1u) % vec4<u32>(32u))), vec4<i32>(-1i) * -vec4<i32>(u_input.a, -1i, u_input.a, u_input.a))), func_1(), func_1(), _wgslsmith_sub_vec4_i32(vec4<i32>(abs(select(-2147483647i, u_input.a, var_0.x)), ~(-1i), abs(max(u_input.a, -57697i)), 0i), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, 2147483647i, -2147483647i, u_input.a)), -vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.a, -17252i, u_input.a) & vec4<i32>(u_input.a, -1i, -1i, -1i), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 6968i, u_input.a, 2147483647i), vec4<i32>(u_input.a, -8982i, -15592i, u_input.a)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 63460i, 58133i, -2147483647i), vec4<i32>(0i, -91213i, u_input.a, u_input.a), vec4<i32>(2147483647i, -48164i, -9042i, u_input.a))))), _wgslsmith_div_f32(var_3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(f32(-1f) * -878f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1343f + -873f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-67343i), var_3, -1202f, -vec3<i32>(9622i, _wgslsmith_mod_i32(abs(u_input.a), firstTrailingBit(17421i)), -2147483647i), vec4<u32>(0u, ~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(55430u, var_5.c.d), _wgslsmith_sub_u32(var_5.c.d, 0u), var_5.b.d), ~max(var_5.c.d | 46410u, var_5.c.c.x | var_5.c.d), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(var_5.c.c.x, var_5.b.d), 1u >> (var_5.c.c.x % 32u), 104046u, 30798u & var_5.c.c.x), vec4<u32>(var_5.c.d, func_1().c.x, 0u, 1u))));
}

