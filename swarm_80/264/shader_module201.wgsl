struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: vec4<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> u32 {
    global0 = _wgslsmith_clamp_vec2_u32(max(vec2<u32>(~4294967295u, arg_2) ^ _wgslsmith_clamp_vec2_u32(reverseBits(arg_1.a), ~vec2<u32>(1u, u_input.b), abs(arg_1.a)), select(~arg_1.a, ~(vec2<u32>(21957u, arg_2) << (vec2<u32>(u_input.b, 0u) % vec2<u32>(32u))), !(!vec2<bool>(false, arg_0)))), vec2<u32>(~arg_1.a.x, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(arg_1.a.x, arg_2)), vec2<u32>(4294967295u, 27360u ^ arg_2))), countOneBits(~_wgslsmith_div_vec2_u32(arg_1.a, max(vec2<u32>(67885u, arg_2), vec2<u32>(arg_2, 4294967295u)))));
    var var_0 = Struct_1(~vec2<u32>(1531u, 1u));
    var var_1 = -_wgslsmith_clamp_vec4_i32(-firstLeadingBit(-vec4<i32>(u_input.c, u_input.a, 1i, 2147483647i)), (_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, 0i, u_input.c, 3516i), vec4<i32>(u_input.a, 2147483647i, u_input.c, u_input.c)) >> (~vec4<u32>(4294967295u, arg_2, 13464u, 1u) % vec4<u32>(32u))) >> (~firstLeadingBit(vec4<u32>(15738u, 6554u, 74071u, arg_1.a.x)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(-(vec4<i32>(1i, u_input.c, 2147483647i, 2147483647i) << (vec4<u32>(arg_2, 1u, var_0.a.x, global0.x) % vec4<u32>(32u))), vec4<i32>(-54878i, u_input.a, ~(-2147483647i), _wgslsmith_add_i32(u_input.c, 18879i)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, -1i, u_input.c, -55681i) & vec4<i32>(u_input.a, u_input.c, -7586i, -2147483647i), vec4<i32>(-1i, 4288i, u_input.a, -1i))));
    var var_2 = arg_2;
    var var_3 = -1212f;
    return 1u;
}

fn func_2(arg_0: u32, arg_1: vec4<f32>) -> vec2<u32> {
    let var_0 = Struct_1(abs(~vec2<u32>(62333u, u_input.b)) ^ ~abs(_wgslsmith_mod_vec2_u32(vec2<u32>(global0.x, arg_0), vec2<u32>(global0.x, arg_0))));
    let var_1 = select(1u, _wgslsmith_mod_u32(global0.x, var_0.a.x) << (select(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, arg_0), var_0.a), true) % 32u), false) << (min(func_3(any(vec4<bool>(true, true, true, true)), Struct_1(var_0.a | var_0.a), 1u), firstTrailingBit(func_3(true, var_0, var_0.a.x))) % 32u);
    return vec2<u32>(~(u_input.d | var_1), 23032u);
}

fn func_1() -> Struct_1 {
    let var_0 = any(vec3<bool>(!all(vec4<bool>(false, false, false, true)), true, false));
    global0 = _wgslsmith_sub_vec2_u32(max(~(vec2<u32>(17353u, 30419u) >> (func_2(u_input.d, vec4<f32>(-285f, 1347f, 1967f, 443f)) % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, 4294967295u), ~vec2<u32>(u_input.d, 0u)) >> (vec2<u32>(global0.x, u_input.d & 0u) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_u32(max(func_2(7892u, vec4<f32>(1f, 1f, 1f, 1f)), max(select(vec2<u32>(0u, 4294967295u), vec2<u32>(global0.x, u_input.b), var_0), vec2<u32>(4294967295u, u_input.b))), ~(~vec2<u32>(37191u, 17845u)), _wgslsmith_div_vec2_u32(~vec2<u32>(global0.x, 48724u), ~(vec2<u32>(1u, u_input.b) << (vec2<u32>(global0.x, 54669u) % vec2<u32>(32u))))));
    var var_1 = select(vec4<bool>(true, !var_0, select(var_0, any(!vec2<bool>(true, var_0)), false), !var_0), vec4<bool>(false, var_0, var_0, false), vec4<bool>(false, true, var_0 & !(4294967295u == global0.x), true));
    global0 = ~((~firstTrailingBit(vec2<u32>(global0.x, 47890u)) >> (abs(~vec2<u32>(0u, 1470u)) % vec2<u32>(32u))) >> (vec2<u32>(~(~u_input.b), ~u_input.b ^ 1403u) % vec2<u32>(32u)));
    var_1 = select(vec4<bool>(true, !(-11268i < _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, 2135i), vec3<i32>(8642i, 1i, 25605i))), var_1.x, !var_1.x), !(!(!(!vec4<bool>(var_1.x, var_0, var_0, false)))), !(!select(select(vec4<bool>(true, true, var_1.x, var_0), vec4<bool>(true, false, var_1.x, var_0), var_0), select(vec4<bool>(false, false, true, true), vec4<bool>(true, var_0, var_0, var_0), vec4<bool>(true, var_1.x, true, false)), var_1.x)));
    return Struct_1(~vec2<u32>(~1u, ~22977u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = vec4<i32>(u_input.c, _wgslsmith_sub_i32(1i, 1i), _wgslsmith_clamp_i32(-1i, u_input.c, abs(u_input.c)), _wgslsmith_mod_i32(65511i, u_input.a | ~52169i));
    var var_1 = ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(44867u, 42626u, global0.x) & vec3<u32>(arg_2.a.x, arg_2.a.x, arg_2.a.x), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 50411u, arg_0.a.x), vec3<u32>(63254u, arg_1.a.x, u_input.b)))) << (31861u % 32u);
    let var_2 = arg_2;
    var_1 = arg_1.a.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-111f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1191f)), _wgslsmith_div_f32(-1000f, -663f)))), _wgslsmith_f_op_f32(392f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1688f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-192f - _wgslsmith_f_op_f32(911f + -863f))), 988f)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(sign(-776f)))) * 1338f) * 374f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(199f, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-374f - -1150f), _wgslsmith_f_op_f32(664f * -595f), 1360f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -797f) * 1f)))), ~reverseBits(~global0.x), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-217f)), -224f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(275f))) * -245f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-936f - 1261f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1434f * -573f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_4(func_1(), Struct_1(vec2<u32>(global0.x, 6557u)), Struct_1(vec2<u32>(8452u, 1u))))))), vec2<i32>(-1i) * -vec2<i32>(u_input.c, -1i));
}

