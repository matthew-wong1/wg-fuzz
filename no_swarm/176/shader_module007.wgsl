struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: Struct_3,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_4,
    c: bool,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 4294967295u, 65503u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_5, arg_1: vec2<f32>, arg_2: vec4<bool>) -> i32 {
    global0 = vec3<u32>(4294967295u, global0.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(global0.x, arg_0.d >> (4294967295u % 32u)) ^ 35786u, ~(_wgslsmith_sub_u32(1u, arg_0.d) ^ 1u)));
    let var_0 = _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(arg_0.b.a, ~(-arg_0.b.a)), vec3<i32>(min(-19571i, -2147483647i), -40198i & u_input.a, firstLeadingBit(arg_0.b.a.x))) & _wgslsmith_add_vec3_i32(-(~(~vec3<i32>(arg_0.a.x, arg_0.b.b, 7127i))), arg_0.b.a);
    var var_1 = vec2<bool>(all(vec3<bool>(!(var_0.x > arg_0.a.x), 1f < arg_1.x, false)), false);
    var var_2 = Struct_1(select(vec3<bool>(var_1.x, !(-2080i > arg_0.a.x), all(!vec3<bool>(arg_2.x, arg_2.x, var_1.x))), vec3<bool>(true, all(vec4<bool>(true, true, true, true)), true), all(arg_2)), arg_0.b.a, ~arg_0.d >= abs(~0u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(25889u, global0.x, u_input.b), ~vec3<u32>(17479u, 1u, 1u)) ^ min(min(select(89341u, 6084u, arg_2.x), select(0u, 129117u, arg_2.x)), ~(81975u & arg_0.d)));
    var var_3 = arg_0;
    return -(~u_input.a);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_5(-_wgslsmith_div_vec2_i32(vec2<i32>(min(u_input.a, 8767i), func_3(Struct_5(vec2<i32>(-2626i, u_input.a), Struct_4(vec3<i32>(u_input.a, u_input.a, 1i), -1i, 44814i, Struct_3(true, u_input.b)), true, global0.x, Struct_2(vec2<f32>(1106f, -611f), global0.x)), vec2<f32>(110f, 1000f), vec4<bool>(true, true, false, true))), abs(vec2<i32>(2147483647i, -27740i)) & (vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(u_input.a, u_input.a))), Struct_4(vec3<i32>(~_wgslsmith_sub_i32(u_input.a, u_input.a), 0i, firstLeadingBit(-2147483647i)), _wgslsmith_sub_i32(max(u_input.a, 1i) & ~(-1i), _wgslsmith_mod_i32(~(-2147483647i), u_input.a ^ u_input.a)), u_input.a, Struct_3(true, countOneBits(global0.x))), false, (abs(_wgslsmith_add_u32(global0.x, 1u)) | 54225u) & ~8009u, Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1056f) * _wgslsmith_f_op_f32(-1343f - -395f)), _wgslsmith_f_op_f32(1055f + _wgslsmith_f_op_f32(-194f * -1064f))), u_input.b));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_0.e.a.x, _wgslsmith_f_op_f32(-1114f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1091f)))))))));
    var var_2 = var_0;
    var var_3 = select(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-113f * var_0.e.a.x), var_0.e.a.x), var_1) != -1795f, true && var_0.c, var_0.c);
    var var_4 = var_0;
    return Struct_1(!vec3<bool>(true, true, var_2.b.d.a), reverseBits(_wgslsmith_mult_vec3_i32((vec3<i32>(u_input.a, -22733i, u_input.a) | vec3<i32>(-1i, var_2.a.x, var_4.b.b)) | vec3<i32>(u_input.a, -8042i, u_input.a), _wgslsmith_sub_vec3_i32(select(var_0.b.a, vec3<i32>(25335i, var_2.b.c, 0i), vec3<bool>(var_2.c, false, true)), _wgslsmith_add_vec3_i32(var_4.b.a, vec3<i32>(u_input.a, var_4.b.b, u_input.a))))), !any(vec2<bool>(var_2.c, var_0.c)), firstLeadingBit(var_0.e.b));
}

fn func_1() -> f32 {
    var var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(678f, -373f) * vec2<f32>(1030f, 728f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-364f, 1526f), vec2<f32>(243f, 1747f))))))));
    let var_2 = !vec4<bool>(var_0.c, u_input.a > -_wgslsmith_mult_i32(2147483647i, var_0.b.x), var_0.a.x, var_0.c);
    global0 = _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, u_input.b, 27069u), firstLeadingBit(vec3<u32>(9992u, 1u, 11904u))), ~max(vec3<u32>(31612u, u_input.b, 0u), vec3<u32>(110209u, 1u, global0.x))) >> (~(~select(vec3<u32>(var_0.d, var_0.d, global0.x), vec3<u32>(global0.x, global0.x, global0.x), var_2.x)) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(~vec3<u32>(63015u >> (0u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(15203u, u_input.b, 4294967295u), vec3<u32>(75411u, 0u, 19356u)), ~4294967295u), ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.d, var_0.d, u_input.b), vec4<u32>(global0.x, u_input.b, var_0.d, global0.x)), 0u, ~var_0.d)), vec3<u32>(_wgslsmith_div_u32(14890u, firstLeadingBit(global0.x)), global0.x, 9394u));
    global0 = ~(~abs(firstLeadingBit(vec3<u32>(var_0.d, u_input.b, 8368u) >> (vec3<u32>(316u, 0u, 19822u) % vec3<u32>(32u)))));
    return _wgslsmith_div_f32(-1372f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-728f - -905f), -796f)), -479f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~_wgslsmith_add_i32(select(-20105i >> (u_input.b % 32u), select(u_input.a, 28566i, false), true), u_input.a));
    let var_1 = false;
    var var_2 = vec3<f32>(-1393f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(178f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1021f + -688f) + _wgslsmith_f_op_f32(-1000f * -558f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(f32(-1f) * -290f)) * 1000f)));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1861f) + _wgslsmith_div_f32(-1559f, var_2.x)) + var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_2.x)) - _wgslsmith_f_op_f32(round(-1176f))))), 887f);
    var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1086f, var_2.x, -1000f))) * vec3<f32>(var_2.x, var_2.x, var_2.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, var_3.x, var_3.x)));
    let var_4 = func_2();
    var_2 = vec3<f32>(776f, var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - var_3.x))));
    var var_5 = func_2();
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -1215f, _wgslsmith_f_op_f32(f32(-1f) * -473f)), vec3<f32>(_wgslsmith_f_op_f32(var_2.x + var_2.x), var_2.x, _wgslsmith_f_op_f32(-var_2.x)), vec3<bool>(!var_5.a.x, !var_1, true)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-985f, -312f, var_5.a.x)), -1197f, _wgslsmith_f_op_f32(f32(-1f) * -210f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-333f, 415f, var_2.x) + vec3<f32>(1274f, var_3.x, var_3.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1470f, var_2.x, -1501f) + vec3<f32>(413f, var_3.x, -1746f)), vec3<f32>(1073f, 961f, var_2.x))), _wgslsmith_div_vec3_f32(vec3<f32>(1730f, var_3.x, 240f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, -1167f, var_2.x))), select(select(var_5.a, var_5.a, var_5.a), func_2().a, u_input.b != 47695u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -976f)) * -2296f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1007f - 1138f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(562f * -239f) * var_3.x)) * -1644f), vec4<u32>(0u, func_2().d, abs(~firstLeadingBit(var_5.d)), u_input.b));
}

