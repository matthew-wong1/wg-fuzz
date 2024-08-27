struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: Struct_1,
    d: vec2<i32>,
    e: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct Struct_4 {
    a: bool,
    b: vec3<bool>,
    c: vec2<bool>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<bool, 30>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1() -> vec2<bool> {
    let var_0 = Struct_4(!all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 30u)] & true, any(vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.b, 30u)])), global1[_wgslsmith_index_u32(u_input.b, 30u)] && false)), !(!(!select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 30u)], true, true), vec3<bool>(false, true, global1[_wgslsmith_index_u32(u_input.b, 30u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 30u)], global1[_wgslsmith_index_u32(4294967295u, 30u)], true)))), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 30u)], false), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(u_input.b, 4294967295u, 44212u))), firstTrailingBit(59921u)), vec2<u32>(~firstLeadingBit(4294967295u), _wgslsmith_mult_u32(_wgslsmith_add_u32(1u, 0u), ~79614u))));
    let var_1 = all(select(var_0.b, vec3<bool>(var_0.c.x, var_0.c.x, var_0.b.x), false));
    global1 = array<bool, 30>();
    var var_2 = _wgslsmith_f_op_f32(min(332f, 1298f));
    var var_3 = var_0;
    return !var_3.c;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_2, arg_3: bool) -> f32 {
    global0 = reverseBits(~(-arg_1.a.ww));
    var var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(max(27897u, 1u), arg_2.c.b) >> (countOneBits(vec2<u32>(4294967295u, arg_2.c.b)) % vec2<u32>(32u)), ~arg_0.c.c.xx) | ~_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.c.b, 3528u) | arg_2.c.c.wx, vec2<u32>(arg_1.b, 4294967295u)), abs(arg_0.c.c.yw));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1672f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1307f, 1575f, _wgslsmith_f_op_f32(arg_2.c.a * _wgslsmith_f_op_f32(-arg_2.e))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-357f, 436f, -710f)) + arg_0.b))), arg_0.c, arg_0.d, _wgslsmith_f_op_f32(floor(arg_2.a)));
    let var_2 = ~var_1.c.c.ww;
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.a * -1867f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.a))), arg_3));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(572f * 503f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(702f))), _wgslsmith_f_op_f32(f32(-1f) * -403f)))));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_2, arg_3: Struct_3) -> i32 {
    let var_0 = abs(abs(select(vec4<i32>(global0.x, u_input.a, 26323i, i32(-1i) * -1i), select(arg_3.c, arg_3.c, true), all(select(vec3<bool>(global1[_wgslsmith_index_u32(63036u, 30u)], global1[_wgslsmith_index_u32(5935u, 30u)], false), vec3<bool>(true, false, global1[_wgslsmith_index_u32(4294967295u, 30u)]), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 30u)], true, false))))));
    let var_1 = arg_1;
    global1 = array<bool, 30>();
    global0 = _wgslsmith_mod_vec2_i32(select(min(var_0.zz, -(vec2<i32>(arg_0, arg_2.d.x) ^ arg_2.d)), vec2<i32>(arg_2.d.x, ~(i32(-1i) * -1i)), func_1()), ~(arg_3.a.ww & arg_2.d));
    global1 = array<bool, 30>();
    return -6236i;
}

fn func_2(arg_0: Struct_4) -> i32 {
    global0 = firstLeadingBit(_wgslsmith_clamp_vec2_i32(-abs(firstTrailingBit(vec2<i32>(u_input.a, u_input.a))), -vec2<i32>(u_input.a, -1i), ~(-vec2<i32>(-2147483647i, -2147483647i))));
    let var_0 = vec4<i32>(-u_input.a, min(-u_input.a, global0.x), _wgslsmith_dot_vec4_i32(-firstLeadingBit(~vec4<i32>(global0.x, global0.x, -1i, 2147483647i)), select(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a)), vec4<i32>(43874i, u_input.a, 0i, u_input.a)), (vec4<i32>(-2147483647i, 2147483647i, -61223i, 11331i) ^ vec4<i32>(u_input.a, -3742i, global0.x, u_input.a)) & (vec4<i32>(global0.x, 2996i, 1i, 23016i) >> (vec4<u32>(39838u, 0u, arg_0.d, 42422u) % vec4<u32>(32u))), !(u_input.a != u_input.a))), func_4(_wgslsmith_mult_i32(u_input.a, u_input.a), -760f, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(-286f, vec3<f32>(-1000f, 251f, -1561f), Struct_1(-867f, 0u, vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b)), vec2<i32>(-2147483647i, -2688i), 495f), Struct_3(vec4<i32>(global0.x, -2147483647i, 16774i, 0i), u_input.b, vec4<i32>(-1i, -10831i, -43146i, 0i), u_input.a), Struct_2(583f, vec3<f32>(-1040f, 989f, 1451f), Struct_1(-119f, u_input.b, vec4<u32>(0u, arg_0.d, 35106u, u_input.b)), vec2<i32>(-1i, 16687i), -196f), false)) - -298f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1300f, -533f, 1000f)), Struct_1(-316f, u_input.b, vec4<u32>(u_input.b, 55827u, 4294967295u, 101819u) ^ vec4<u32>(53972u, u_input.b, arg_0.d, 92575u)), abs(vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(global0.x, global0.x)), 1f), Struct_3(_wgslsmith_clamp_vec4_i32(~vec4<i32>(global0.x, 3928i, -2147483647i, global0.x), -vec4<i32>(u_input.a, -3581i, global0.x, global0.x), _wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, u_input.a, global0.x, -1i), vec4<i32>(global0.x, u_input.a, global0.x, u_input.a))), _wgslsmith_mod_u32(arg_0.d << (u_input.b % 32u), arg_0.d), vec4<i32>(-1i, global0.x, -8208i ^ u_input.a, ~(-16823i)), 2147483647i | u_input.a)));
    var var_1 = 20611u;
    global0 = vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(~firstLeadingBit(u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), var_0.zzx ^ var_0.zzx), -firstLeadingBit(0i), ~_wgslsmith_dot_vec4_i32(var_0, vec4<i32>(u_input.a, 51946i, var_0.x, -1i))), vec4<i32>(-1i) * -(~var_0)), ~_wgslsmith_mult_i32(~_wgslsmith_mod_i32(-2147483647i, 1i), 59714i));
    let var_2 = !(u_input.a < select(var_0.x, -11302i, u_input.a < (-1i | var_0.x)));
    return ~_wgslsmith_div_i32(15512i, -_wgslsmith_add_i32(~(-2147483647i), -global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(-max(max(vec2<i32>(0i, -2147483647i), vec2<i32>(1i, 0i)), ~vec2<i32>(-35142i, u_input.a)), vec2<i32>(-_wgslsmith_sub_i32(global0.x, global0.x), global0.x)), _wgslsmith_mod_vec2_i32(max(_wgslsmith_mult_vec2_i32(vec2<i32>(global0.x, -14584i), vec2<i32>(-2147483647i, -1i) << (vec2<u32>(23652u, u_input.b) % vec2<u32>(32u))), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, 1i), countOneBits(vec2<i32>(1897i, u_input.a)))), ~min(_wgslsmith_sub_vec2_i32(vec2<i32>(global0.x, u_input.a), vec2<i32>(32600i, 31075i)), min(vec2<i32>(6467i, u_input.a), vec2<i32>(u_input.a, -2147483647i)))));
    let var_0 = func_2(Struct_4(global1[_wgslsmith_index_u32(u_input.b, 30u)], vec3<bool>(true, any(!vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 30u)], false, true)), global1[_wgslsmith_index_u32(firstLeadingBit(34942u), 30u)]), !func_1(), 16991u));
    var var_1 = vec3<i32>(-66738i, -(u_input.a >> (_wgslsmith_div_u32(u_input.b, u_input.b) % 32u)), _wgslsmith_add_i32(-889i, u_input.a)) & (vec3<i32>(0i, 2147483647i, max(u_input.a, var_0)) << (vec3<u32>(43591u, max(56258u, select(4294967295u, u_input.b, true)), ~89182u) % vec3<u32>(32u)));
    let var_2 = ~(~_wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, 0u, u_input.b)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(0u, u_input.b, 4294967295u), vec3<u32>(u_input.b, u_input.b, 16202u)) | _wgslsmith_add_vec3_u32(vec3<u32>(11838u, 47417u, 6803u), vec3<u32>(u_input.b, 38074u, u_input.b))));
    global1 = array<bool, 30>();
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-203f + _wgslsmith_f_op_f32(step(1958f, -668f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-898f + -358f), _wgslsmith_f_op_f32(f32(-1f) * -215f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1595f)))));
    let var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + var_3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1370f * -213f) - _wgslsmith_f_op_f32(-var_3.x)), any(select(!vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(var_2, 30u)], true, global1[_wgslsmith_index_u32(var_2, 30u)]), select(vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 30u)], true, true), vec4<bool>(true, global1[_wgslsmith_index_u32(var_2, 30u)], global1[_wgslsmith_index_u32(52711u, 30u)], false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 30u)], global1[_wgslsmith_index_u32(var_2, 30u)], true, global1[_wgslsmith_index_u32(0u, 30u)])), vec4<bool>(true, false, false, false))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x + -1731f) + var_3.x)))))));
    global1 = array<bool, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(_wgslsmith_mult_u32(~var_2, u_input.b), ~(~4294967295u)), 0u, -var_0, vec2<f32>(var_3.x, _wgslsmith_f_op_f32(min(1139f, _wgslsmith_f_op_f32(f32(-1f) * -899f)))), _wgslsmith_f_op_f32(-1118f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_4 + 748f))) + _wgslsmith_f_op_f32(696f - 538f))));
}

