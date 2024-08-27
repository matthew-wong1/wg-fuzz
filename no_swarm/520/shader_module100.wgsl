struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<f32> = vec4<f32>(-1264f, -253f, -580f, 233f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> bool {
    return global0.c.b;
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: vec2<u32>) -> vec3<f32> {
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_1.xyx, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1299f, global0.a.x, arg_0))))) - global0.a), 1u, global0.c);
    return _wgslsmith_f_op_vec3_f32(global0.a + _wgslsmith_f_op_vec3_f32(-global1.xzz));
}

fn func_2(arg_0: vec3<f32>) -> vec4<f32> {
    let var_0 = global0.c.a.zx;
    var var_1 = _wgslsmith_f_op_vec2_f32(-arg_0.xy);
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-752f, -766f, _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(trunc(arg_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-879f, global1.x, arg_0.x, arg_0.x) + _wgslsmith_div_vec4_f32(vec4<f32>(335f, 1916f, 344f, 1000f), vec4<f32>(global0.a.x, global0.a.x, arg_0.x, -791f))), countOneBits(_wgslsmith_mod_vec2_u32(u_input.a.yx, vec2<u32>(28769u, 0u))))))), 53582u, global0.c);
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(1000f, -1307f, all(select(vec2<bool>(false, global0.c.b), vec2<bool>(global0.c.b, global0.c.b), vec2<bool>(false, true))))), global1.x));
    let var_2 = ~min(~29759i, i32(-1i) * -2147483647i);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, global1.x, -805f, -1000f), vec4<f32>(var_1.x, -1433f, 447f, global1.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, 779f, -1370f, -278f), _wgslsmith_div_vec4_f32(vec4<f32>(global0.a.x, global0.a.x, arg_0.x, 2142f), vec4<f32>(arg_0.x, global1.x, var_1.x, arg_0.x)), select(vec4<bool>(true, true, true, global0.c.b), vec4<bool>(global0.c.b, global0.c.b, global0.c.b, global0.c.b), global0.c.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(938f, 547f, 430f, 666f), vec4<f32>(1075f, -908f, arg_0.x, arg_0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(global0.c.b, true, global0.c.b || true, !global0.c.b), vec4<bool>(true, false, !global0.c.b, true)), !select(!vec4<bool>(true, true, false, global0.c.b), !vec4<bool>(global0.c.b, false, true, global0.c.b), true), !(func_1() && true)));
    var_0 = global0.c.b;
    var_0 = true;
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(global0.a)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global1.x, global0.a.x, global0.a.x)))))))));
    global1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_f_op_f32(sign(-2234f)), global1.x, _wgslsmith_f_op_f32(step(global1.x, global0.a.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_f_op_f32(global0.a.x * var_1.x), 730f, var_1.x)))));
    let var_2 = !all(!(!select(vec4<bool>(global0.c.b, true, false, global0.c.b), vec4<bool>(false, false, global0.c.b, false), vec4<bool>(false, global0.c.b, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_sub_vec4_i32(-vec4<i32>(-2147483647i, 24985i, -56713i, -25127i), -vec4<i32>(global0.c.a.x, 5916i, 2147483647i, 0i))), _wgslsmith_add_vec4_i32(vec4<i32>(~1i, ~global0.c.a.x, 7561i, -11901i), ~_wgslsmith_add_vec4_i32(vec4<i32>(1i, global0.c.a.x, global0.c.a.x, global0.c.a.x), vec4<i32>(global0.c.a.x, -16723i, 1i, global0.c.a.x)))));
}

