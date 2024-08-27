struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(313f, 182f, 267f);

var<private> global1: vec4<bool>;

var<private> global2: vec2<f32> = vec2<f32>(601f, 1327f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = all(vec4<bool>(all(select(arg_2.a, vec2<bool>(arg_3.a.x, arg_3.a.x), arg_1.a)) || select(any(vec3<bool>(true, false, false)), arg_3.a.x, any(global1.yyw)), arg_3.a.x || !arg_3.a.x, arg_2.a.x, !global1.x));
    var var_1 = 1i;
    var_1 = _wgslsmith_dot_vec2_i32(u_input.a.yy ^ u_input.a.xy, vec2<i32>(i32(-1i) * -27470i, i32(-1i) * -2147483647i) >> (~vec2<u32>(select(4294967295u, 40454u, global1.x), abs(1u)) % vec2<u32>(32u)));
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.x))), 1966f) + global0.yx) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(global0.zx, global0.xz)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1367f, 591f) - global0.zz)))))));
    var var_2 = _wgslsmith_f_op_f32(-1f);
    return all(vec2<bool>(!global1.x & true, !(~u_input.b != -1i)));
}

fn func_2() -> vec4<bool> {
    global2 = vec2<f32>(-648f, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_0 = vec3<bool>(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-310f, global2.x, true)) - _wgslsmith_f_op_f32(global2.x * global0.x)), Struct_1(global1.yz), Struct_1(vec2<bool>(false, false)), Struct_1(global1.zz)) | true, global1.x, !any(select(global1.yxw, vec3<bool>(false, false, true), !global1.x)));
    global0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(298f, global0.x, -1017f), vec3<f32>(-1373f, global0.x, 425f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(646f, global0.x, -981f) * vec3<f32>(-988f, global0.x, global0.x)) + vec3<f32>(global2.x, global2.x, -465f)))))));
    let var_1 = Struct_1(vec2<bool>(any(!vec2<bool>(var_0.x, global1.x)), true));
    global0 = vec3<f32>(-1729f, global2.x, _wgslsmith_f_op_f32(f32(-1f) * -871f));
    return !select(vec4<bool>((global1.x & var_0.x) && true, any(!vec3<bool>(global1.x, true, false)), false, any(select(vec2<bool>(false, var_1.a.x), vec2<bool>(var_1.a.x, var_1.a.x), true))), !(!vec4<bool>(global1.x, true, global1.x, true)), true);
}

fn func_1() -> i32 {
    global1 = !func_2();
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(279f, global0.x, global2.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(486f))), global2.x, global2.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, -1237f, 1663f), vec3<f32>(407f, global2.x, global0.x))))))));
    let var_0 = func_2().xyx;
    let var_1 = 4294967295u;
    let var_2 = Struct_1(!(!(!global1.wx)));
    return _wgslsmith_mod_i32(1i, ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -28315i, u_input.b) << (vec3<u32>(0u, var_1, var_1) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, 5146i, -18041i), vec3<i32>(u_input.a.x, u_input.b, 6050i)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !vec4<bool>(false && global1.x, global1.x, global1.x, _wgslsmith_div_f32(391f, _wgslsmith_f_op_f32(-global0.x)) < 1000f);
    var var_0 = vec2<bool>(global1.x, !global1.x);
    let var_1 = _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(u_input.b, 2147483647i, _wgslsmith_div_i32(-6559i, -2147483647i)), select(u_input.b, ~2147483647i, false), _wgslsmith_mod_i32(-26993i | u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.b), vec2<i32>(2147483647i, u_input.a.x))), abs(func_1())), u_input.a), -vec4<i32>(~u_input.a.x, u_input.b, u_input.b ^ u_input.a.x, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x >> (17910u % 32u), _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(u_input.a.x, var_1.x), var_1.x & -37670i), var_1.xw, ~u_input.a.xw), min(vec2<i32>(u_input.a.x | -78150i, var_1.x), u_input.a.yy)), global2.x);
}

