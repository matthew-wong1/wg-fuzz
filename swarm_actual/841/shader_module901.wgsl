struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32, arg_1: f32) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_0, -768f), arg_1, _wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -386f, arg_1)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_1)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1653f, -598f, -1148f), vec3<f32>(arg_0, 1683f, arg_1))))), vec3<bool>(global0.x, !global0.x, global0.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(711f, arg_0, arg_0)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-754f, 2027f, -251f), vec3<f32>(-289f, arg_0, arg_0)))))));
    global0 = vec2<bool>(true, any(select(vec4<bool>(true, global0.x, all(vec3<bool>(true, global0.x, false)), false), vec4<bool>(select(global0.x, true, false), 305f == arg_0, true, any(vec3<bool>(true, false, global0.x))), global0.x)));
    let var_1 = select(-((~vec3<i32>(30722i, u_input.a, 65266i) | _wgslsmith_add_vec3_i32(vec3<i32>(-104846i, u_input.a, 0i), vec3<i32>(u_input.b, -2147483647i, -32450i))) << (~vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u) % vec3<u32>(32u))), -(~_wgslsmith_div_vec3_i32(select(vec3<i32>(-21045i, u_input.a, -22340i), vec3<i32>(-2147483647i, 2147483647i, -1i), vec3<bool>(global0.x, false, true)), _wgslsmith_mult_vec3_i32(vec3<i32>(-23739i, u_input.a, -12737i), vec3<i32>(-28305i, u_input.a, u_input.a)))), !any(!(!vec4<bool>(true, global0.x, global0.x, global0.x))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(152f * _wgslsmith_f_op_f32(f32(-1f) * -1968f)));
    let var_3 = _wgslsmith_div_vec4_u32(max(countOneBits(vec4<u32>(19605u, 4294967295u, 1u, ~u_input.c.x)), min(abs(select(vec4<u32>(51758u, 33515u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, 44543u, 1u, 1u), vec4<bool>(true, global0.x, false, true))), ~(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x) ^ vec4<u32>(u_input.c.x, u_input.c.x, 20705u, u_input.c.x)))), ~vec4<u32>(min(4294967295u, u_input.c.x) ^ ~4294967295u, _wgslsmith_sub_u32(~u_input.c.x, firstLeadingBit(36046u)), _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, 102455u)), ~_wgslsmith_div_u32(0u, u_input.c.x)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.xz));
}

fn func_2(arg_0: vec3<u32>, arg_1: bool, arg_2: i32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1290f), 1000f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-548f, -605f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(-1017f, 365f)))))));
    var var_1 = Struct_1(var_0.x);
    global0 = vec2<bool>(true, true);
    let var_2 = Struct_2(~1i, select(!vec4<bool>(true, arg_1, false, true), vec4<bool>(!(var_0.x > var_1.a), select(select(arg_1, global0.x, true), true, all(vec4<bool>(false, arg_1, global0.x, global0.x))), all(select(vec3<bool>(false, global0.x, false), vec3<bool>(arg_1, false, false), true)), arg_1), any(vec3<bool>(global0.x, any(vec3<bool>(arg_1, true, arg_1)), u_input.c.x > 112822u))));
    let var_3 = max(vec3<u32>(~(~6643u), _wgslsmith_mult_u32(0u, ~u_input.c.x), countOneBits(min(arg_0.x, 62729u))) << (arg_0 % vec3<u32>(32u)), ~((~arg_0 >> (_wgslsmith_mod_vec3_u32(arg_0, arg_0) % vec3<u32>(32u))) & ~(~arg_0)));
    return select(var_2.b.wz, !var_2.b.wz, true);
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    global0 = arg_0.yw;
    global0 = func_2(vec3<u32>(~(~u_input.c.x), u_input.c.x, _wgslsmith_div_u32(u_input.c.x, ~(~4294967295u))), arg_0.x, -2147483647i);
    global0 = vec2<bool>(all(!select(!vec2<bool>(false, global0.x), arg_0.xw, select(vec2<bool>(global0.x, true), arg_0.zx, false))), !all(!(!vec3<bool>(arg_0.x, true, arg_0.x))));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(744f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -511f)) - -280f)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-var_0.a));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(-230f, _wgslsmith_f_op_f32(-1064f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(!vec4<bool>(false, global0.x, global0.x, false))))), _wgslsmith_f_op_f32(min(1279f, 1537f)), 864f);
    let var_1 = -vec4<i32>(abs(-(u_input.b | u_input.b)), -u_input.b, reverseBits(i32(-1i) * -2147483647i), -(firstLeadingBit(u_input.a) ^ u_input.b));
    let var_2 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(abs(min(-4205i, _wgslsmith_mod_i32(-1i, u_input.b))), -u_input.a, ~_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, -1i), vec2<i32>(2147483647i, u_input.a)), -606i)));
}

