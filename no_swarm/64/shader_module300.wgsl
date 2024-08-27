struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 8071u;

var<private> global1: Struct_3;

var<private> global2: u32 = 55141u;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = ~_wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(0u, select(_wgslsmith_div_u32(arg_1.a, 18602u), 0u, true), 0u, reverseBits(global1.c)));
    let var_1 = vec3<i32>(min(_wgslsmith_dot_vec4_i32(-vec4<i32>(1i, global1.b.x, 10635i, global1.b.x), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, global1.b.x, global1.b.x, global1.b.x), vec4<i32>(arg_0.b, 32844i, global1.b.x, global1.b.x)) >> (~var_0 % vec4<u32>(32u))), global1.b.x), _wgslsmith_clamp_i32(arg_0.b, (arg_0.b << (50911u % 32u)) ^ -47685i, ~max(arg_0.b, global1.b.x)), _wgslsmith_mod_i32(countOneBits(arg_0.b), global1.b.x));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-727f))) + _wgslsmith_f_op_f32(trunc(198f))))), _wgslsmith_f_op_f32(f32(-1f) * -3883f));
    let var_3 = reverseBits(abs(global1.c));
    var var_4 = Struct_2(var_3);
    return !(!select(select(!arg_0.a.a, vec4<bool>(arg_0.a.a.x, true, arg_0.a.a.x, global1.a), !arg_0.a.a), !vec4<bool>(global1.a, global1.a, global1.a, arg_0.a.a.x), select(vec4<bool>(arg_0.a.a.x, true, false, true), vec4<bool>(false, arg_0.a.a.x, global1.a, global1.a), global1.a)));
}

fn func_2(arg_0: bool) -> Struct_3 {
    var var_0 = Struct_1(!vec4<bool>(any(func_3(Struct_4(Struct_1(vec4<bool>(false, arg_0, global1.a, global1.a)), -1i, vec2<f32>(1000f, -1553f)), Struct_2(global1.c))), global1.a, global1.a, global1.b.x <= global1.b.x));
    var var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-292f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(109f, 451f)) + _wgslsmith_f_op_f32(min(1011f, -139f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(373f + 427f), _wgslsmith_f_op_f32(-584f + 1060f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1113f)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-585f + _wgslsmith_f_op_f32(ceil(-233f)))), _wgslsmith_f_op_f32(f32(-1f) * -653f))));
    let var_2 = ~vec4<i32>(global1.b.x, global1.b.x, ~(-1i) ^ global1.b.x, countOneBits(global1.b.x));
    global2 = 0u;
    var var_3 = var_1.x;
    return Struct_3(any(vec2<bool>(var_0.a.x, false)), _wgslsmith_mod_vec3_i32(~(~vec3<i32>(2147483647i, 2147483647i, var_2.x)) | global1.b, ~select(_wgslsmith_add_vec3_i32(vec3<i32>(0i, global1.b.x, 0i), vec3<i32>(42550i, 28688i, global1.b.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 9457i, 1i), vec3<i32>(var_2.x, -43624i, global1.b.x)), !vec3<bool>(true, true, global1.a))), 20422u);
}

fn func_1() -> Struct_3 {
    global1 = func_2(any(!(!vec2<bool>(false, global1.a))) == (!all(vec2<bool>(true, false)) && true));
    var var_0 = Struct_1(vec4<bool>(global1.a, func_3(Struct_4(Struct_1(vec4<bool>(false, false, global1.a, global1.a)), _wgslsmith_dot_vec3_i32(vec3<i32>(6269i, 75731i, global1.b.x), global1.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-165f, -473f))), Struct_2(65028u)).x, global1.a, u_input.b != ~(~u_input.b)));
    let var_1 = u_input.a.yyy;
    var var_2 = global1.b;
    let var_3 = true;
    return Struct_3(!any(select(select(vec2<bool>(false, global1.a), vec2<bool>(var_0.a.x, var_0.a.x), var_0.a.yw), vec2<bool>(true, true), func_3(Struct_4(Struct_1(vec4<bool>(global1.a, true, var_3, var_3)), 1i, vec2<f32>(1484f, 449f)), Struct_2(global1.c)).yw)), global1.b, u_input.a.x);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_4) -> vec4<bool> {
    var var_0 = false;
    return select(!vec4<bool>(global1.a, arg_1.a, select(global1.a || false, arg_2.a.a.x, 1192f <= arg_3.c.x), arg_3.a.a.x), !select(arg_3.a.a, func_3(arg_2, Struct_2(79527u)), func_1().b.x > abs(-3814i)), !(!select(vec4<bool>(global1.a, arg_1.a, arg_3.a.a.x, global1.a), vec4<bool>(arg_1.a, global1.a, true, arg_2.a.a.x), select(vec4<bool>(true, arg_3.a.a.x, global1.a, global1.a), vec4<bool>(global1.a, global1.a, false, arg_1.a), true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_4(~0u, func_1(), Struct_4(Struct_1(!vec4<bool>(global1.a, true, global1.a, true)), -_wgslsmith_mult_i32(global1.b.x, 17798i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-618f, -1210f))), Struct_4(Struct_1(vec4<bool>(global1.a, global1.a, true, global1.a)), 957i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-448f, -234f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-106f, -1636f))))));
    let var_1 = ~global1.c;
    var var_2 = true;
    var var_3 = _wgslsmith_div_vec4_u32(vec4<u32>(var_1, 0u, ~(~u_input.a.x), _wgslsmith_clamp_u32(0u, u_input.a.x, var_1)) >> (~(~(~vec4<u32>(0u, var_1, 1u, u_input.b))) % vec4<u32>(32u)), ~(~(~u_input.a)));
    global1 = func_2(any(func_4(u_input.b, func_2(false), Struct_4(Struct_1(vec4<bool>(global1.a, global1.a, false, true)), firstLeadingBit(-33904i), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1000f) * vec2<f32>(479f, -423f))), Struct_4(Struct_1(vec4<bool>(false, true, global1.a, global1.a)), _wgslsmith_mod_i32(22392i, global1.b.x), vec2<f32>(-1077f, 359f))).xy));
    var var_4 = vec4<i32>(47500i, _wgslsmith_div_i32(-_wgslsmith_mult_i32(17363i, global1.b.x), _wgslsmith_sub_i32(func_1().b.x, global1.b.x)), _wgslsmith_mult_i32(_wgslsmith_add_i32(-60860i, -27217i), global1.b.x), abs(global1.b.x)) >> (~vec4<u32>(96360u, 0u, max(~9803u, 1u), func_2(global1.a & var_0.a.x).c) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_4.x, var_4.x, 0i, var_4.x), vec4<i32>(var_4.x, 0i, 2147483647i, -4461i)), -global1.b.x, ~var_4.x) >> (vec3<u32>(~1u, 8488u, _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.b, var_1), min(u_input.b, u_input.b))) % vec3<u32>(32u)), _wgslsmith_mult_u32(global1.c, global1.c), var_4.wx, firstLeadingBit(_wgslsmith_sub_i32(~var_4.x, -global1.b.x) & global1.b.x));
}

