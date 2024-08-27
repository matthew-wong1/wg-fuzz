struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: f32 = -436f;

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: i32;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1() -> f32 {
    global2 = select(!select(vec2<bool>(true, global2.x), vec2<bool>(true, true), true), vec2<bool>(!global2.x, true), true);
    global3 = -1i;
    var var_0 = u_input.a;
    return _wgslsmith_f_op_f32(abs(1f));
}

fn func_3(arg_0: vec4<bool>) -> vec4<f32> {
    global1 = _wgslsmith_f_op_f32(ceil(-119f));
    global2 = vec2<bool>(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(560f, 1000f)) + _wgslsmith_div_f32(-424f, -1570f)) > _wgslsmith_f_op_f32(f32(-1f) * -604f)), any(!select(!arg_0.wz, !arg_0.wy, arg_0.x)));
    global3 = _wgslsmith_dot_vec2_i32(~(~select(abs(u_input.a.xx), u_input.a.zw, global2.x)), u_input.a.xz);
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(495f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())))))), 134f, false));
    let var_1 = ~(~vec4<u32>(1u, 1u, 1u, 1u));
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(floor(554f))))) + 1840f), 506f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0)), var_0), _wgslsmith_f_op_f32(f32(-1f) * -579f)) - var_0), 213f);
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = vec3<u32>(1u, 4614u, firstTrailingBit(144u));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(!vec4<bool>(false, true, false, global2.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1727f, -771f), 2516f, 1f, -1580f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec4<bool>(global2.x, true, global2.x, false))))));
    let var_2 = select(!select(select(!vec3<bool>(global2.x, global2.x, true), vec3<bool>(true, false, global2.x), vec3<bool>(global2.x, false, false)), !(!vec3<bool>(global2.x, true, global2.x)), all(select(vec2<bool>(true, false), vec2<bool>(true, false), global2.x))), vec3<bool>(true, !(global2.x == !global2.x), true), false);
    global2 = !(!vec2<bool>(true, select(1599f == var_1.x, select(true, var_2.x, var_2.x), false || global2.x)));
    var var_3 = _wgslsmith_mult_vec3_u32(vec3<u32>(~(~var_0.x), firstLeadingBit(~42957u), ~9987u), vec3<u32>(4294967295u, var_0.x, 64570u));
    return all(!vec4<bool>(false, any(select(vec4<bool>(var_2.x, false, global2.x, false), vec4<bool>(true, var_2.x, false, true), false)), true, true));
}

fn func_4(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    let var_0 = arg_2;
    global3 = _wgslsmith_mult_i32(abs(_wgslsmith_add_i32(1i, ~var_0.a.x)), ~(-1i << (0u % 32u)) | (u_input.a.x | (var_0.a.x << (20381u % 32u)))) | u_input.a.x;
    var var_1 = arg_2;
    let var_2 = arg_0;
    var_1 = Struct_1(vec3<i32>(min(max(u_input.a.x, 0i), countOneBits(select(arg_2.a.x, u_input.a.x, true))), -var_1.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, 1i, -var_0.a.x, ~var_1.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(var_1.a.x, var_0.a.x, 2147483647i, arg_2.a.x), ~vec4<i32>(34047i, arg_2.a.x, 0i, 0i)))));
    return Struct_2(1000f, var_0, arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(vec3<i32>(max(76125i, u_input.a.x), _wgslsmith_dot_vec3_i32(u_input.a.zxw, vec3<i32>(1i, u_input.a.x, min(-12032i, -2147483647i))), _wgslsmith_div_i32(u_input.a.x ^ u_input.a.x, firstLeadingBit(u_input.a.x))));
    var var_1 = func_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), _wgslsmith_div_f32(1227f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -274f) + _wgslsmith_f_op_f32(520f - 1432f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1523f + -251f))))), _wgslsmith_f_op_f32(f32(-1f) * -399f)), !select(!global2.x || true, func_2(Struct_1(u_input.a.xxx)), !all(vec2<bool>(global2.x, true))), Struct_1(vec3<i32>(~_wgslsmith_sub_i32(-2147483647i, var_0.x), -_wgslsmith_div_i32(31229i, 1i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x), vec4<i32>(0i, 0i, 26249i, u_input.a.x)))));
    let var_2 = func_4(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, -559f, var_1.a, 1372f)), vec4<f32>(525f, var_1.a, var_1.a, var_1.a))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, var_1.a, 480f, 2053f)))))), (_wgslsmith_dot_vec3_u32(~vec3<u32>(14745u, 0u, 66643u), vec3<u32>(1u, 65383u, 4294967295u)) <= ~abs(1u)) | any(vec3<bool>(true, true, true)), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, -1204f, var_1.a, var_1.a))), true, var_1.c).b).c;
    var var_3 = vec2<bool>(false, true);
    let var_4 = _wgslsmith_mult_u32(~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(64208u, 98476u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(77346u, 52282u, 35496u, 9782u), vec4<u32>(97264u, 4294967295u, 36767u, 0u))), abs(~max(max(4294967295u, 4318u), _wgslsmith_mult_u32(4294967295u, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(vec2<u32>(~var_4, var_4)), _wgslsmith_div_vec2_u32(~select(firstLeadingBit(vec2<u32>(0u, var_4)), vec2<u32>(var_4, 25225u), select(vec2<bool>(var_3.x, global2.x), vec2<bool>(false, var_3.x), var_3.x)), vec2<u32>(var_4, var_4)), vec2<i32>(-9637i, ~_wgslsmith_dot_vec3_i32(abs(u_input.a.yxx), -var_2.a)), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 11284u) & vec2<u32>(var_4, 1u), vec2<u32>(var_4, var_4)) << (var_4 % 32u)));
}

