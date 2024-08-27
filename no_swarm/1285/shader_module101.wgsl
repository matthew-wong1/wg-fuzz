struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: i32,
    d: bool,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<bool>;

var<private> global2: i32 = -1i;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: i32, arg_1: f32) -> i32 {
    let var_0 = countOneBits(~countOneBits(_wgslsmith_mult_i32(reverseBits(u_input.e), arg_0)));
    var var_1 = any(select(global1.xxz, vec3<bool>(~u_input.b == _wgslsmith_mod_u32(0u, 39564u), !global1.x, global1.x), true));
    var var_2 = -466f;
    var var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(963f, _wgslsmith_f_op_f32(-arg_1), arg_0 >= var_0)), arg_1)), arg_1), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) - vec2<f32>(191f, -679f))) - vec2<f32>(arg_1, arg_1))));
    return _wgslsmith_sub_i32(countOneBits(-(~(~(-32283i)))), reverseBits(var_0));
}

fn func_2() -> vec3<i32> {
    let var_0 = Struct_1(vec4<u32>(countOneBits(u_input.b) << (u_input.b % 32u), min(u_input.b ^ _wgslsmith_div_u32(69183u, u_input.b), 2694u), firstTrailingBit(~u_input.b), u_input.b), func_3(~(-1i >> (1u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1077f + -3125f))), countOneBits(u_input.d.x) << (~1u % 32u), vec2<u32>(_wgslsmith_sub_u32(min(u_input.b, u_input.b), u_input.b), _wgslsmith_dot_vec2_u32(vec2<u32>(40422u, u_input.b), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(10584u, 11757u), vec2<u32>(15032u, u_input.b))) | 0u));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-499f, 401f, 1170f)) - vec3<f32>(1f, 1f, 1f)), vec3<f32>(1f, 1f, 1f), true)));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1815f, -299f, var_1.x)))))));
    var var_2 = Struct_1(var_0.a, i32(-1i) * -(~(-var_0.c)), u_input.d.x, var_0.a.zw);
    return select(u_input.d.zzx, -_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(u_input.d.x, 16261i, -2147483647i)), -vec3<i32>(var_2.b, -48905i, var_2.c)), !global1.xyz) >> (vec3<u32>(34245u, _wgslsmith_clamp_u32(14094u, reverseBits(var_0.d.x), u_input.b), var_2.d.x) % vec3<u32>(32u));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: bool) -> Struct_2 {
    global1 = arg_1.b;
    let var_0 = vec4<u32>(firstTrailingBit(u_input.b), ~reverseBits(~abs(u_input.b)), ~(~u_input.b), 0u);
    let var_1 = select(false, arg_1.d, true);
    global2 = -64985i;
    let var_2 = arg_1;
    return arg_1;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>) -> f32 {
    var var_0 = vec2<u32>(61004u, ~(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, 123031u), ~vec3<u32>(u_input.b, 77974u, 11601u)) ^ _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(1u, u_input.b)), _wgslsmith_add_vec2_u32(vec2<u32>(99318u, u_input.b), vec2<u32>(u_input.b, u_input.b)))));
    global1 = vec4<bool>(false, arg_0.d, global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-416f - arg_0.a), 1000f)) * arg_0.a) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(ceil(arg_0.a)))));
    global1 = !select(vec4<bool>(false, arg_0.d, all(vec2<bool>(true, true)), true), !(!vec4<bool>(arg_0.d, arg_1.x, false, true)), arg_0.b);
    let var_1 = func_4(_wgslsmith_mod_vec3_i32(func_2(), -(u_input.d.yww ^ select(u_input.d.wxx, vec3<i32>(arg_0.c, -9627i, u_input.e), global1.x))), Struct_2(arg_0.a, !vec4<bool>(arg_0.d, false, arg_1.x, arg_0.d && false), -_wgslsmith_mod_i32(-16175i, arg_0.e.x) & -21109i, all(select(!arg_0.b, select(arg_0.b, arg_0.b, global1.x), arg_0.b)), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -u_input.d.yz, vec2<i32>(u_input.c.x << (17682u % 32u), 2147483647i))), arg_1.x);
    var_0 = ~vec2<u32>(max(~34895u, ~u_input.b << (35786u % 32u)), ~(~u_input.b));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1135f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -236f)))))));
    global1 = vec4<bool>(!all(global1.xz), all(global1.zy), global1.x, false);
    global0 = var_0.x;
    let var_1 = ~(~127370u);
    global1 = vec4<bool>(false, var_0.x == _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(1528f, vec4<bool>(true, false, global1.x, global1.x), u_input.e, global1.x, vec2<i32>(u_input.a, u_input.e)), global1.wz)))), global1.x, (((u_input.c.x | 4406i) & u_input.d.x) ^ u_input.a) < -_wgslsmith_mod_i32(_wgslsmith_mod_i32(14552i, 20245i), i32(-1i) * -5479i));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<i32>(u_input.a, _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.c.x, -40029i, 0i), -29968i), select(_wgslsmith_mult_i32(u_input.a, 0i), i32(-1i) * -30484i, global1.x), ~(-40220i) >> (select(53431u, 1u, global1.x) % 32u)), min(countOneBits(~vec4<i32>(u_input.a, u_input.d.x, u_input.a, u_input.c.x)), min(-vec4<i32>(56510i, 1i, -1996i, u_input.a), -vec4<i32>(u_input.c.x, u_input.c.x, u_input.a, u_input.c.x))), !(!(!vec4<bool>(global1.x, false, global1.x, global1.x)))), _wgslsmith_div_i32(_wgslsmith_sub_i32(-26097i, select(0i, _wgslsmith_clamp_i32(u_input.c.x, -27357i, u_input.e), false)), -u_input.a), 19173i, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(var_1, 85903u), countOneBits(vec2<u32>(u_input.b, var_1))) ^ _wgslsmith_mod_u32(min(~var_1, ~379u), (1u << (var_1 % 32u)) << (_wgslsmith_div_u32(var_1, u_input.b) % 32u)), 12174i);
}

