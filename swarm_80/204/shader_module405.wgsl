struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: vec2<f32>) -> f32 {
    global0 = array<f32, 2>();
    return -337f;
}

fn func_3(arg_0: vec3<f32>) -> vec3<bool> {
    global0 = array<f32, 2>();
    let var_0 = !select(select(vec3<bool>(all(vec4<bool>(false, false, false, true)), true, all(vec2<bool>(false, false))), vec3<bool>(true, true, true), all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), !vec3<bool>(any(vec2<bool>(false, true)), false, false), vec3<bool>(true, 127f <= _wgslsmith_f_op_f32(select(568f, global0[_wgslsmith_index_u32(u_input.b.x, 2u)], true)), -u_input.c < 0i));
    global0 = array<f32, 2>();
    global0 = array<f32, 2>();
    global0 = array<f32, 2>();
    return var_0;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: bool, arg_3: vec3<bool>) -> vec4<f32> {
    let var_0 = Struct_1(arg_1.a, select(4294967295u, ~4294967295u, all(!func_3(vec3<f32>(456f, 1126f, 1000f)))), arg_1.c, -2551f, -350f);
    let var_1 = u_input.a.yxz & (firstTrailingBit(vec3<u32>(var_0.b, 1u, var_0.b)) | vec3<u32>(_wgslsmith_mod_u32(105255u, arg_1.b) & u_input.a.x, _wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_1.b, 29230u, var_0.b), u_input.a.wzy, vec3<bool>(false, false, false)), vec3<u32>(73647u, 10687u, arg_1.b)), u_input.a.x));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(439f, global0[_wgslsmith_index_u32(61458u, 2u)], var_0.a.x, arg_1.d))), select(vec4<bool>(arg_3.x, true, arg_2, false), vec4<bool>(true, true, false, arg_3.x), arg_2), _wgslsmith_f_op_vec2_f32(-vec2<f32>(955f, -126f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-2107f)), _wgslsmith_f_op_f32(arg_1.a.x * var_0.d))))) - arg_0);
    let var_3 = true;
    global0 = array<f32, 2>();
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1211f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_1.d, arg_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.a.x)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(64859u, 2u)]))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0, global0[_wgslsmith_index_u32(33597u, 2u)], -436f, 482f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, 1000f, -982f, global0[_wgslsmith_index_u32(var_1.x, 2u)]), vec4<f32>(-1495f, 1635f, 545f, arg_0), vec4<bool>(true, arg_3.x, var_3, true))), vec4<bool>(true, arg_3.x, false, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(-541f, var_0.a.x) + vec2<f32>(1000f, var_0.a.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_1.x, 2u)] - 194f), -1027f)), _wgslsmith_f_op_f32(-765f + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 2u)])), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.a.x - arg_1.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, ~(~countOneBits(u_input.a.x))), 2u)];
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1337f, -187f)), ~(~0u), _wgslsmith_mod_i32(~abs(_wgslsmith_dot_vec4_i32(vec4<i32>(28482i, u_input.c, u_input.c, u_input.c), vec4<i32>(u_input.c, u_input.c, u_input.c, -2147483647i))), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.c, u_input.c, u_input.c, 52733i) << (u_input.a % vec4<u32>(32u))), vec4<i32>(u_input.c, ~u_input.c, firstLeadingBit(u_input.c), 2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1274f - 342f) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 2u)])))), _wgslsmith_f_op_f32(trunc(-474f)));
    var var_2 = ~firstLeadingBit(_wgslsmith_div_u32(~(~var_1.b), var_1.b));
    var_0 = 977f;
    var var_3 = Struct_2(!select(!select(vec2<bool>(true, true), vec2<bool>(true, false), true), !select(vec2<bool>(true, false), vec2<bool>(false, true), true), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), false)), _wgslsmith_f_op_vec4_f32(func_2(269f, Struct_1(vec2<f32>(-305f, _wgslsmith_f_op_f32(min(var_1.d, -1000f))), ~u_input.b.x ^ var_1.b, var_1.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.e, 1192f) - _wgslsmith_f_op_f32(func_1(vec4<f32>(-456f, -268f, global0[_wgslsmith_index_u32(var_1.b, 2u)], global0[_wgslsmith_index_u32(u_input.a.x, 2u)]), vec4<bool>(true, false, false, false), vec2<f32>(-922f, -388f)))), -1702f), !(select(false, true, true) & any(vec4<bool>(true, false, true, true))), select(vec3<bool>(true, any(vec3<bool>(true, true, true)), true), vec3<bool>(all(vec3<bool>(true, false, true)), all(vec4<bool>(true, false, false, false)), 20793i != u_input.c), select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), any(vec3<bool>(false, false, false)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(417f + 125f), _wgslsmith_f_op_f32(round(-1385f)))) - global0[_wgslsmith_index_u32(~var_1.b, 2u)]), 863f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(100899u, 2u)]))), var_1.a.x)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2641f, _wgslsmith_f_op_f32(max(-457f, var_1.e)))), countOneBits(4294967295u), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(1i, 21295i, var_1.c), -vec3<i32>(u_input.c, var_1.c, u_input.c)), vec3<i32>(53735i, var_1.c, var_1.c) & firstLeadingBit(vec3<i32>(0i, var_1.c, -10006i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 2u)])), 581f), any(!select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false)), all(vec4<bool>(true, false, true, false)))));
    var var_4 = 1u;
    let var_5 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3.c.x)) - _wgslsmith_div_f32(var_1.a.x, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.a.zwx, vec3<u32>(1u, var_3.d.b, 4294967295u)), u_input.b.x), 2u)])), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(var_3.b, select(select(vec4<bool>(false, false, var_3.a.x, false), vec4<bool>(false, var_3.e, true, var_3.e), vec4<bool>(false, true, true, var_3.e)), !vec4<bool>(var_3.e, false, var_3.e, var_3.e), vec4<bool>(false, var_3.e, false, true)), vec2<f32>(159f, global0[_wgslsmith_index_u32(1576u, 2u)]))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.c.x))))), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(-16886i, var_3.d.c, var_1.c, var_3.d.c) ^ min(vec4<i32>(var_3.d.c, -8127i, 1i, var_1.c), vec4<i32>(-2147483647i, 2147483647i, -15017i, 1i)), ~(-vec4<i32>(14690i, var_1.c, u_input.c, var_1.c))), select(select(max(vec4<i32>(-17265i, -32135i, 34860i, 2147483647i), vec4<i32>(var_1.c, -1i, var_3.d.c, var_1.c)), vec4<i32>(0i, 2147483647i, u_input.c, 1i), all(vec3<bool>(var_3.a.x, false, true))), _wgslsmith_add_vec4_i32(-vec4<i32>(0i, u_input.c, var_3.d.c, -29094i), ~vec4<i32>(var_3.d.c, -23120i, 0i, var_3.d.c)), vec4<bool>(false, false, true, select(var_3.a.x, false, true)))), select(vec2<i32>(~_wgslsmith_clamp_i32(-1i, -1i, 38309i), u_input.c ^ -2147483647i), ~(-(~vec2<i32>(var_3.d.c, var_3.d.c))), func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.c))).xy), var_1.a);
}

