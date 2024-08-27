struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32) -> f32 {
    var var_0 = u_input.e.x;
    let var_1 = 1472f;
    var_0 = 44167u;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, -1000f) - vec2<f32>(var_1, arg_1)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(721f, 1272f) + vec2<f32>(arg_1, -975f))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, var_1) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1383f, 914f) * vec2<f32>(arg_1, var_1)) + _wgslsmith_div_vec2_f32(vec2<f32>(var_1, arg_1), vec2<f32>(402f, var_1))))));
    global0 = Struct_3(Struct_1(select(firstLeadingBit(~u_input.e.yx), (global0.a.a >> (arg_0 % vec2<u32>(32u))) & vec2<u32>(53480u, 37707u), global0.a.b), false), arg_0.x, min(vec3<i32>(9335i, global0.c.x, countOneBits(-global0.c.x)), ~(u_input.a >> (u_input.e.zxx % vec3<u32>(32u)))), ~global0.a.a.x);
    return arg_1;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: f32) -> vec3<bool> {
    let var_0 = !arg_0.xy;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 * arg_2) + _wgslsmith_f_op_f32(696f - 600f)))))), _wgslsmith_f_op_f32(exp2(arg_2)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -354f), _wgslsmith_f_op_f32(f32(-1f) * -370f), all(arg_0))), _wgslsmith_f_op_f32(arg_2 - arg_2))), -1433f);
    var var_2 = -vec4<i32>(_wgslsmith_mod_i32(u_input.a.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(global0.c.x, u_input.d, 2147483647i, -1i), vec4<i32>(global0.c.x, u_input.d, global0.c.x, global0.c.x))), u_input.d, abs(firstLeadingBit(_wgslsmith_clamp_i32(global0.c.x, global0.c.x, -2147483647i))), ~u_input.d | reverseBits(-u_input.a.x));
    let var_3 = global0.b >= 4294967295u;
    global0 = Struct_3(Struct_1(~arg_1.a, true), 67200u, var_2.xzx & (~(~vec3<i32>(u_input.a.x, var_2.x, var_2.x)) | vec3<i32>(i32(-1i) * -1i, 54790i, _wgslsmith_clamp_i32(-30225i, global0.c.x, -1i))), u_input.b.x);
    return !(!arg_0);
}

fn func_1(arg_0: vec3<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    var var_1 = any(!select(func_2(select(vec3<bool>(global0.a.b, false, global0.a.b), vec3<bool>(global0.a.b, false, global0.a.b), global0.a.b), Struct_1(u_input.b, global0.a.b), -577f), func_2(select(vec3<bool>(global0.a.b, true, false), vec3<bool>(global0.a.b, false, global0.a.b), vec3<bool>(false, false, false)), global0.a, _wgslsmith_f_op_f32(-1000f + -1117f)), global0.a.b));
    var var_2 = -_wgslsmith_add_vec4_i32(-select(vec4<i32>(-25632i, 7983i, u_input.d, 8618i), vec4<i32>(-2147483647i, 9920i, -1i, u_input.a.x), select(vec4<bool>(global0.a.b, false, true, global0.a.b), vec4<bool>(global0.a.b, true, true, false), true)), ~(_wgslsmith_mod_vec4_i32(vec4<i32>(20358i, 34573i, 2147483647i, 7632i), vec4<i32>(u_input.a.x, -14874i, global0.c.x, global0.c.x)) & vec4<i32>(global0.c.x, 727i, -37970i, 1i)));
    var var_3 = global0.a;
    var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 50014u;
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(u_input.d, _wgslsmith_add_i32(-global0.c.x, u_input.a.x)), ~(~(~(~u_input.b.x))), 48588u, -func_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1015f, -1000f, 2706f) - vec3<f32>(-690f, 128f, 290f))))));
}

