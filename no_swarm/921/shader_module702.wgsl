struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 15> = array<vec3<f32>, 15>(vec3<f32>(-858f, 794f, -428f), vec3<f32>(-631f, -1956f, 256f), vec3<f32>(1876f, 1280f, 532f), vec3<f32>(-418f, -652f, 831f), vec3<f32>(-293f, -591f, 295f), vec3<f32>(-435f, 1000f, -1962f), vec3<f32>(-887f, -804f, -171f), vec3<f32>(1065f, -311f, 479f), vec3<f32>(307f, 918f, 1189f), vec3<f32>(311f, 2160f, 1000f), vec3<f32>(-1595f, -141f, -1551f), vec3<f32>(-261f, 1000f, 520f), vec3<f32>(-213f, 658f, -521f), vec3<f32>(-922f, 1000f, 1383f), vec3<f32>(-676f, -982f, 801f));

var<private> global1: bool;

var<private> global2: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> vec2<f32> {
    global1 = true | (true || global2.x);
    let var_0 = u_input.a.x >> (firstLeadingBit(~3023u) % 32u);
    global2 = select(select(select(!(!vec2<bool>(global2.x, global2.x)), vec2<bool>(true, true), true), !select(vec2<bool>(true, global2.x), vec2<bool>(true, false), !global2.x), vec2<bool>(true, !(!global2.x))), !vec2<bool>(global2.x, global2.x), global2.x);
    let var_1 = select(vec3<bool>(true, all(vec3<bool>(!global2.x, global2.x, true)), true), select(vec3<bool>(all(vec2<bool>(global2.x, global2.x)), true, (22666i & u_input.e) == -u_input.e), !select(select(vec3<bool>(global2.x, global2.x, true), vec3<bool>(true, global2.x, global2.x), global2.x), !vec3<bool>(false, false, global2.x), global2.x), select(select(!vec3<bool>(global2.x, false, false), vec3<bool>(global2.x, global2.x, global2.x), false), vec3<bool>(global2.x, global2.x, true), true)), select(u_input.b.x <= _wgslsmith_div_u32(~62301u, u_input.d.x & 1u), true, select(all(vec2<bool>(global2.x, true)), global2.x, all(vec3<bool>(false, global2.x, global2.x)))));
    let var_2 = 1u;
    return vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1255f - -302f)), _wgslsmith_f_op_f32(sign(-995f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(466f))))) + -333f));
}

fn func_2(arg_0: f32) -> Struct_1 {
    global1 = true;
    let var_0 = Struct_1(u_input.d.x >= 1u, _wgslsmith_f_op_f32(floor(1104f)), _wgslsmith_f_op_f32(f32(-1f) * -933f), vec3<u32>(u_input.c.x, u_input.b.x, u_input.c.x));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0, -134f)))))))));
    let var_2 = vec3<i32>(select(-firstLeadingBit(u_input.e ^ u_input.a.x), _wgslsmith_div_i32(0i, u_input.e), true), 0i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(0i, -u_input.e), u_input.e));
    let var_3 = 1u;
    return var_0;
}

fn func_1() -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(439f, -1000f, -953f) - vec3<f32>(-520f, 3087f, -1681f))))), vec3<f32>(-1894f, 614f, _wgslsmith_div_f32(_wgslsmith_div_f32(-643f, 995f), _wgslsmith_div_f32(600f, 713f))))));
    var var_1 = func_2(_wgslsmith_f_op_f32(abs(-1805f)));
    global0 = array<vec3<f32>, 15>();
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3()).x), var_1.b);
    var var_2 = func_2(var_0.x);
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(select(var_2.d.x, u_input.c.x, true), 1u, 95354u), 15u)], global0[_wgslsmith_index_u32(6704u, 15u)]))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.c), var_2.b)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(select(809f, -677f, false)))), 915f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 572f;
    global1 = any(!(!select(!vec3<bool>(global2.x, global2.x, global2.x), !vec3<bool>(global2.x, false, global2.x), select(vec3<bool>(false, global2.x, global2.x), vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(global2.x, global2.x, global2.x)))));
    global1 = true;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0, var_0, var_0), vec3<f32>(var_0, -873f, -1328f)))), _wgslsmith_f_op_vec3_f32(func_1()), vec3<bool>(!global2.x && any(vec3<bool>(global2.x, global2.x, true)), all(vec3<bool>(true, true, true)), any(select(!vec2<bool>(global2.x, global2.x), select(vec2<bool>(global2.x, false), vec2<bool>(false, global2.x), vec2<bool>(false, true)), all(vec4<bool>(false, global2.x, false, global2.x)))))));
    global1 = select(global2.x, select(global2.x, false, true), false);
    global2 = vec2<bool>(global2.x, !global2.x);
    let var_2 = _wgslsmith_div_vec3_i32(u_input.a, -u_input.a);
    global2 = select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(all(!vec4<bool>(false, global2.x, global2.x, global2.x)), false)), vec2<bool>(((var_2.x >> (u_input.b.x % 32u)) <= _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, -2147483647i, -2147483647i))) & global2.x, global2.x || false), !(!(select(global2.x, false, global2.x) & (global2.x & global2.x))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3()).x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_0, -381f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0, 961f), var_0)) * var_1.x))), _wgslsmith_f_op_f32(-313f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(189f + 229f)) - var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, _wgslsmith_f_op_f32(floor(var_0)), -991f, var_0))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-131f, _wgslsmith_f_op_f32(330f - 619f), var_0, -2038f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(min(979f, 1033f)), var_1.x, var_0) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1045f, var_1.x, -488f, var_0)))))));
}

