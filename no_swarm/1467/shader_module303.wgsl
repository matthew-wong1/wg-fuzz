struct Struct_1 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(-924f, i32(-2147483648));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: i32) -> vec3<u32> {
    global0 = arg_0;
    global1 = Struct_1(global0.a, -2147483647i);
    let var_0 = any(vec2<bool>(!(!(global1.b >= global1.b)), true));
    global1 = Struct_1(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a, global1.a) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), -1i);
    let var_1 = arg_0;
    return vec3<u32>(~38944u, _wgslsmith_div_u32(u_input.a, 54548u), 1u);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<i32>, arg_3: vec3<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-1135f, _wgslsmith_f_op_f32(f32(-1f) * -376f))), _wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1662f + global1.a) + global0.a)), -203f, -949f));
    let var_1 = !(!vec2<bool>(true, any(select(vec2<bool>(false, false), vec2<bool>(false, false), false))));
    global1 = arg_0;
    let var_2 = arg_0;
    var var_3 = var_2;
    return _wgslsmith_mult_i32(_wgslsmith_mod_i32(~_wgslsmith_clamp_i32(firstTrailingBit(var_2.b), select(global0.b, -77416i, true), _wgslsmith_dot_vec3_i32(arg_2.yzz, vec3<i32>(var_2.b, global1.b, 2147483647i))), arg_0.b), -2147483647i);
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(3117f + -814f) + -547f), _wgslsmith_sub_i32(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.b, global0.b, global1.b) << ((vec3<u32>(u_input.a, u_input.a, u_input.a) ^ vec3<u32>(1u, u_input.a, 4294967295u)) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(global0.b, global1.b, global0.b) >> (vec3<u32>(0u, u_input.a, 40008u) % vec3<u32>(32u)), vec3<i32>(global1.b, global0.b, global1.b)))));
    let var_0 = 2147483647i;
    global0 = Struct_1(872f, i32(-1i) * -2147483647i);
    let var_1 = all(vec3<bool>(true, true, true));
    var var_2 = Struct_1(1303f, var_0);
    return Struct_1(global1.a, max(func_4(Struct_1(-1134f, global1.b), func_3(Struct_1(global0.a, 24020i), vec4<f32>(833f, global1.a, -333f, var_2.a), global0.b), -vec4<i32>(var_2.b, 16276i, var_0, 2147483647i), vec3<i32>(-2147483647i, global1.b, 2147483647i)) & abs(global0.b), -global1.b));
}

fn func_1(arg_0: u32) -> vec4<bool> {
    global1 = func_2();
    var var_0 = vec2<u32>(func_3(Struct_1(_wgslsmith_f_op_f32(-313f * 1000f), 1i), vec4<f32>(global1.a, 587f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1229f, global1.a))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(global0.a, global0.a))))), min(global1.b, 1i)).x, 94287u);
    var_0 = _wgslsmith_mult_vec2_u32(~(~select(select(vec2<u32>(u_input.a, arg_0), vec2<u32>(u_input.a, 28606u), false), select(vec2<u32>(1u, 100581u), vec2<u32>(9152u, 0u), true), true)), abs(vec2<u32>(arg_0, 83880u) << ((min(vec2<u32>(arg_0, arg_0), vec2<u32>(37470u, arg_0)) >> (vec2<u32>(1u, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u))));
    var var_1 = false;
    var var_2 = _wgslsmith_f_op_f32(-global0.a);
    return vec4<bool>(all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), global1.b > global0.b), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), true, !select(false, false, any(vec2<bool>(false, true))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), true)), true), func_1(firstLeadingBit(u_input.a)), vec4<bool>(true, !func_1(_wgslsmith_mult_u32(10362u, u_input.a)).x, !any(vec4<bool>(false, false, false, true)) || true, all(vec2<bool>(true, true))));
    let var_1 = Struct_1(global0.a, _wgslsmith_dot_vec3_i32(-vec3<i32>(-global0.b, _wgslsmith_div_i32(-2147483647i, 26249i), -global1.b), min(vec3<i32>(global1.b, global1.b, 0i) ^ ~vec3<i32>(-2147483647i, global0.b, global0.b), _wgslsmith_add_vec3_i32(vec3<i32>(global0.b, global1.b, global1.b) & vec3<i32>(25175i, 2147483647i, 1i), _wgslsmith_add_vec3_i32(vec3<i32>(global0.b, 11842i, global1.b), vec3<i32>(global0.b, global0.b, global1.b))))));
    var var_2 = -190f;
    var var_3 = func_2();
    let var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a * 352f) - 259f))), 1000f);
}

