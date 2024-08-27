struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(2147483647i);

var<private> global1: u32 = 49074u;

var<private> global2: Struct_2 = Struct_2(-34045i);

var<private> global3: bool = false;

var<private> global4: array<vec2<bool>, 1>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: u32) -> vec3<bool> {
    let var_0 = select(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true))), vec3<bool>(true, false, true), !all(vec4<bool>(true, false, true, true))), select(vec3<bool>(arg_2 <= u_input.a, true, any(vec2<bool>(false, false))), select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false), arg_2 >= 41822u), vec3<bool>(true, all(vec4<bool>(false, false, false, true)), 3801i < global2.a)), select(vec3<bool>(true, arg_2 > 24314u, any(vec3<bool>(true, true, false))), vec3<bool>(true, false, true), any(vec2<bool>(false, true)))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(-2147483647i == global2.a, true, true)), select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), vec3<bool>(false, true, false), any(vec3<bool>(false, true, false))), all(vec3<bool>(true, true, true))), u_input.d.x < arg_0.x), vec3<bool>(u_input.d.x < u_input.d.x, all(global4[_wgslsmith_index_u32(firstLeadingBit(firstLeadingBit(1u)), 1u)]), true));
    return !var_0;
}

fn func_2(arg_0: vec4<f32>) -> vec3<i32> {
    var var_0 = all(select(vec3<bool>(u_input.b >= -u_input.b, true, select(false, true, true)), func_3(vec3<i32>(-2147483647i, -50348i, firstLeadingBit(-2147483647i)), Struct_3(_wgslsmith_f_op_vec3_f32(sign(arg_0.yww))), u_input.a), !(false && any(vec4<bool>(true, true, false, true)))));
    global2 = Struct_2(~u_input.b ^ global0.a);
    let var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(trunc(arg_0.x)), arg_0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1720f + arg_0.x), -2287f, _wgslsmith_f_op_f32(arg_0.x * arg_0.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -403f, arg_0.x)) * vec3<f32>(arg_0.x, arg_0.x, 104f))))));
    let var_2 = 36775i;
    var var_3 = _wgslsmith_div_u32(~u_input.a | 762u, countOneBits(abs(~4294967295u)));
    return ~reverseBits(vec3<i32>(-1i) * -vec3<i32>(-2147483647i, u_input.d.x, -1i));
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = func_2(vec4<f32>(-848f, _wgslsmith_f_op_f32(min(143f, _wgslsmith_f_op_f32(f32(-1f) * -1040f))), 587f, 1309f));
    var_0 = vec3<i32>(global0.a, max(var_0.x, 1i), max(var_0.x, ~(i32(-1i) * -1i)));
    var var_1 = ~_wgslsmith_mult_vec4_u32(firstLeadingBit(~vec4<u32>(0u, arg_0, u_input.c.x, u_input.c.x) ^ firstTrailingBit(vec4<u32>(1u, 0u, 0u, arg_0))), abs(vec4<u32>(1u, 20396u, 90783u, 28103u) | (vec4<u32>(arg_0, 0u, u_input.a, 25083u) << (vec4<u32>(0u, arg_0, u_input.a, u_input.c.x) % vec4<u32>(32u)))));
    global1 = ~(~(~var_1.x));
    global2 = Struct_2(-(_wgslsmith_add_i32(~global2.a, func_2(vec4<f32>(-357f, -1388f, 239f, -536f)).x) | min(global2.a, 1i)));
    return Struct_2(51868i);
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> u32 {
    let var_0 = _wgslsmith_add_i32(global0.a, arg_1.a);
    let var_1 = Struct_3(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-460f + _wgslsmith_f_op_f32(-589f * -439f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 752f))), 1307f), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-735f, 1045f, -2445f)), vec3<f32>(366f, -474f, 162f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(534f, 453f, 1638f), vec3<f32>(1000f, -2343f, -1454f)))))));
    var var_2 = Struct_1(select(!func_3(vec3<i32>(-11595i, arg_1.a, global0.a), Struct_3(vec3<f32>(955f, -632f, var_1.a.x)), ~u_input.c.x), !vec3<bool>(var_1.a.x < var_1.a.x, true, true), true), ~u_input.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 424f, var_1.a.x, var_1.a.x) * vec4<f32>(var_1.a.x, 347f, -1149f, var_1.a.x))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -823f), _wgslsmith_div_f32(var_1.a.x, var_1.a.x), _wgslsmith_f_op_f32(var_1.a.x * var_1.a.x), var_1.a.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.a.x, 1070f, var_1.a.x, var_1.a.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1072f, -1860f, -680f, 734f) - vec4<f32>(var_1.a.x, -574f, var_1.a.x, -807f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x)))) - vec4<f32>(-1612f, -891f, _wgslsmith_div_f32(-1282f, 2046f), _wgslsmith_f_op_f32(var_1.a.x - var_1.a.x))))));
    var_2 = Struct_1(var_2.a, vec3<u32>(~4294967295u, 0u, u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_2.d, var_2.c))))) - var_2.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-816f, var_1.a.x, -527f, var_1.a.x) + _wgslsmith_f_op_vec4_f32(-var_2.d)))));
    let var_3 = var_1;
    return var_2.b.x & ~var_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 0u;
    global1 = 4294967295u;
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -299f), _wgslsmith_div_f32(-126f, 455f), -172f))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 177f, -489f))))));
    let var_1 = ~(~88761u);
    global1 = _wgslsmith_add_u32(func_4(true, func_1(_wgslsmith_add_u32(17894u, u_input.a) ^ 45430u)), ~8513u);
    global1 = _wgslsmith_clamp_u32(~(~u_input.c.x), 1u, 146825u);
    global1 = 7973u;
    var var_2 = _wgslsmith_div_i32(-_wgslsmith_clamp_i32(abs(u_input.d.x), reverseBits(global0.a), _wgslsmith_div_i32(1i, 48829i)), 1i) ^ u_input.d.x;
    var var_3 = Struct_1(vec3<bool>(false, false, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1398f, -338f) - -1135f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-258f, var_0.a.x)) * _wgslsmith_f_op_f32(var_0.a.x - var_0.a.x))), ~(~(~vec3<u32>(1u, 1u, 1u))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.a.x, -1001f, var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-840f, -1000f, -1637f, 1000f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 223f, 111f, var_0.a.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1496f, var_0.a.x, var_0.a.x, var_0.a.x))))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(415f, -649f, 1641f, var_0.a.x) - vec4<f32>(var_0.a.x, 514f, 1000f, -1000f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.a.x, -1045f, 835f, -1618f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(837f, var_0.a.x, var_0.a.x, -1342f))), all(vec2<bool>(true, true))))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.yx);
}

