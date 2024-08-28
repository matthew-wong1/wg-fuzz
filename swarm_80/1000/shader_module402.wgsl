struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(879f, -425f, -152f, 2559f), 1i, vec4<i32>(1i, 0i, -24288i, -1i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    var var_0 = Struct_3(vec4<bool>(global1.b != global1.c.x, _wgslsmith_dot_vec4_u32(abs(u_input.a), vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, u_input.b)) == (u_input.a.x & abs(4294967295u)), true, false), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(floor(global1.a.x))), global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(603f)))))), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(global1.a - _wgslsmith_div_vec4_f32(vec4<f32>(global1.a.x, 1339f, global1.a.x, global0.x), vec4<f32>(-226f, -756f, global1.a.x, -1830f))))), global1.b, select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-22230i, 0i, 9767i, -1i), vec4<i32>(global1.b, 0i, global1.b, global1.b), global1.c) & vec4<i32>(global1.c.x, 16077i, 1436i, global1.b), global1.c, !any(vec3<bool>(false, true, true)))));
    var var_1 = Struct_2(select(var_0.a.ywz, !select(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), !vec3<bool>(var_0.a.x, true, false), vec3<bool>(var_0.a.x, true, var_0.a.x)), select(var_0.a.x, false, true)), _wgslsmith_f_op_vec3_f32(abs(global0.wxx)), ~countOneBits(max(_wgslsmith_div_vec4_i32(global1.c, var_0.c.c), vec4<i32>(2147483647i, var_0.c.c.x, 1i, var_0.c.c.x))), vec2<i32>(min(~min(global1.c.x, global1.c.x), var_0.c.c.x), -1i));
    return firstTrailingBit(~u_input.b);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_3) -> bool {
    var var_0 = vec3<u32>(4294967295u, func_3(), ~abs(u_input.a.x)) >> (max(reverseBits(u_input.a.yyx), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 0u, u_input.b), u_input.a.wxz))) % vec3<u32>(32u));
    global1 = arg_1.c;
    var var_1 = -firstTrailingBit(reverseBits(global1.c.www));
    let var_2 = var_0.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.a.wyw, vec3<u32>(12316u, var_0.x, u_input.a.x)), ~10040u), ~(~18626u), select(4294967295u, u_input.a.x, arg_1.a.x), var_0.x), u_input.a) % 32u);
    let var_3 = (_wgslsmith_sub_u32(~(~u_input.a.x), 41800u) & 20363u) << (countOneBits(0u) % 32u);
    return !arg_0.a.x || (arg_1.a.x && arg_1.a.x);
}

fn func_1() -> f32 {
    global1 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, global1.a.x, -178f), _wgslsmith_f_op_vec4_f32(global1.a * vec4<f32>(global0.x, global0.x, 851f, global0.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.a) - _wgslsmith_f_op_vec4_f32(-global1.a)) * _wgslsmith_f_op_vec4_f32(global1.a - _wgslsmith_f_op_vec4_f32(vec4<f32>(683f, global0.x, global0.x, -517f) * vec4<f32>(1648f, -413f, -120f, global1.a.x))))), ~(~_wgslsmith_mult_i32(-1i, global1.c.x)) | ~_wgslsmith_mult_i32(global1.b & -1i, abs(global1.b)), vec4<i32>(~(global1.c.x & _wgslsmith_div_i32(19629i, global1.b)), global1.c.x | -2147483647i, global1.c.x, global1.b));
    let var_0 = global1.c;
    var var_1 = !vec2<bool>(!(-3226i >= _wgslsmith_dot_vec2_i32(global1.c.yz, global1.c.zy)), _wgslsmith_sub_i32(max(var_0.x, global1.b), ~(-2147483647i)) > _wgslsmith_add_i32(_wgslsmith_clamp_i32(-2147483647i, global1.b, -2147483647i), var_0.x));
    var_1 = select(select(!(!vec2<bool>(var_1.x, var_1.x)), vec2<bool>(true, !func_2(Struct_4(vec2<bool>(true, var_1.x)), Struct_3(vec4<bool>(false, false, true, true), vec3<f32>(276f, global1.a.x, 612f), Struct_1(vec4<f32>(global0.x, global1.a.x, 183f, 1000f), 6103i, vec4<i32>(var_0.x, 44964i, global1.b, -1i))))), vec2<bool>(true, var_1.x)), vec2<bool>(false, _wgslsmith_clamp_i32(reverseBits(global1.b), var_0.x, var_0.x) < global1.b), !select(!select(vec2<bool>(var_1.x, true), vec2<bool>(true, false), false), select(vec2<bool>(true, true), select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(false, var_1.x), true), 46026u == u_input.a.x), select(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, var_1.x), vec2<bool>(true, var_1.x)), vec2<bool>(var_1.x, var_1.x), true)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global1.a.zyy)))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, 458f, global0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, global1.a.x, -124f))))))));
    return _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-856f, global1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(648f, 821f))), _wgslsmith_f_op_f32(func_1())) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(global1.a, vec4<f32>(1049f, -929f, global1.a.x, 813f))))), abs(~abs(global1.c.x)) | global1.b, ~vec4<i32>(-9493i, -2147483647i, global1.b, _wgslsmith_clamp_i32(-27452i, global1.c.x, global1.c.x << (48327u % 32u))));
    let var_0 = 0i;
    var var_1 = u_input.a.x;
    let var_2 = _wgslsmith_mult_i32(_wgslsmith_div_i32(40541i, _wgslsmith_mult_i32(-32035i, 22852i)), _wgslsmith_dot_vec4_i32(min(global1.c, reverseBits(~vec4<i32>(global1.b, global1.c.x, global1.c.x, var_0))), global1.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-125f * 1000f), global0.x)) - 295f)));
}

