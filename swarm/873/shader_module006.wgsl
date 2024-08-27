struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: u32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = arg_0;
    let var_1 = !var_0.b.x;
    let var_2 = arg_0;
    global0 = array<Struct_1, 27>();
    var var_3 = _wgslsmith_mult_vec3_u32(arg_0.a.zxy, arg_0.a.ywx);
    return !arg_0.b;
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: vec4<f32>, arg_3: vec3<u32>) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(arg_2, arg_2), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -984f), arg_2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(max(arg_2.x, arg_2.x)))), _wgslsmith_f_op_f32(-arg_2.x))))));
    let var_1 = abs(~(~(vec4<u32>(34944u, arg_3.x, 0u, 61113u) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(arg_3.x, arg_3.x, 35132u, 51114u), vec4<u32>(arg_3.x, 64142u, arg_3.x, 0u)))));
    global0 = array<Struct_1, 27>();
    var var_2 = any(vec4<bool>(true, !(!arg_1.x), u_input.b.x <= u_input.b.x, !(all(vec4<bool>(arg_1.x, true, true, false)) || arg_1.x)));
    var var_3 = _wgslsmith_div_vec3_i32(select(vec3<i32>(-1i, u_input.d, i32(-1i) * -u_input.d), u_input.c.wwy, select(vec3<bool>(arg_1.x, true, true), arg_1, true)), ~(vec3<i32>(-1i) * -(~vec3<i32>(27595i, u_input.b.x, 43485i))));
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_0.xwz))) * var_0.xwz))), vec3<f32>(_wgslsmith_div_f32(var_0.x, arg_2.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1350f, -138f, false)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1052f)) * 1f), arg_2.x)))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_mult_vec3_u32(firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(~0u, arg_0 ^ 1u, 1u), arg_1.d.zxy)), ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(66073u, arg_0, 13834u), arg_1.d.zxz)) & _wgslsmith_add_vec3_u32(vec3<u32>(1u, ~arg_1.a.x, arg_2.d.x), vec3<u32>(1u, arg_2.a.x, 1u) >> (arg_1.d.yyz % vec3<u32>(32u))));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0, _wgslsmith_add_u32(~min(_wgslsmith_add_u32(0u, 0u), _wgslsmith_div_u32(15503u, 1u)), min(1u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(59223u, arg_0, 4294967295u, 1u), vec4<u32>(arg_0, 1u, arg_1.a.x, 0u)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_0, 560u), vec3<u32>(arg_2.a.x, var_0.x, arg_0)), abs(33329u))))), 27u)];
    var_1 = arg_1;
    return 698f;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: u32) -> vec4<f32> {
    var var_0 = Struct_1(~(~_wgslsmith_mult_vec4_u32(max(arg_0.a, arg_0.d), arg_0.d | vec4<u32>(arg_2, arg_2, 1u, 4294967295u))), select(vec4<bool>(any(!arg_0.b.zww), all(vec2<bool>(arg_0.b.x, true)), arg_0.b.x, false), !func_2(global0[_wgslsmith_index_u32(~arg_3, 27u)]), arg_0.b), _wgslsmith_f_op_vec3_f32(arg_0.c - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1, arg_1, -1785f))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1811f, arg_1, -1537f)))))), ~arg_0.d);
    let var_1 = Struct_1(var_0.a, func_2(Struct_1(var_0.d, vec4<bool>(false, true, var_0.b.x || arg_0.b.x, arg_0.b.x | arg_0.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.c, vec3<f32>(arg_0.c.x, arg_1, arg_1))), ~(~vec4<u32>(arg_3, 4294967295u, arg_2, 1u)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(596f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x * -526f)), 1174f)), select(var_0.a, _wgslsmith_add_vec4_u32(select(arg_0.d, ~vec4<u32>(30760u, var_0.d.x, arg_2, 4294967295u), arg_0.b), vec4<u32>(50597u, arg_0.a.x & arg_3, arg_3, arg_0.d.x)), !(!func_2(arg_0))));
    var var_2 = arg_0.d.x;
    var_0 = arg_0;
    var_0 = Struct_1(var_0.d, vec4<bool>(all(select(vec3<bool>(var_0.b.x, var_1.b.x, arg_0.b.x), vec3<bool>(true, true, arg_0.b.x), arg_0.b.zxx)), true, 0i == ~_wgslsmith_mod_i32(u_input.b.x, -1i), true), var_1.c, ~arg_0.d);
    return vec4<f32>(_wgslsmith_div_f32(-506f, 1f), _wgslsmith_f_op_f32(func_4(reverseBits((1649u >> (var_0.a.x % 32u)) & _wgslsmith_dot_vec2_u32(vec2<u32>(1663u, var_1.d.x), vec2<u32>(25693u, 8394u))), Struct_1(~(arg_0.a << (var_1.a % vec4<u32>(32u))), !vec4<bool>(true, arg_0.b.x, true, false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_0.c, var_1.c, true))), arg_0.a), Struct_1(var_1.a, var_1.b, _wgslsmith_f_op_vec3_f32(func_3(var_0.d.x, vec3<bool>(true, var_1.b.x, true), vec4<f32>(var_0.c.x, -1000f, -503f, -310f), arg_0.a.yxw)), var_0.d << (_wgslsmith_div_vec4_u32(var_1.a, arg_0.d) % vec4<u32>(32u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-123f - arg_0.c.x) + -1291f)), _wgslsmith_f_op_vec3_f32(func_3(arg_2, !select(select(vec3<bool>(false, var_1.b.x, true), vec3<bool>(false, true, false), vec3<bool>(arg_0.b.x, true, true)), func_2(Struct_1(var_1.d, var_0.b, vec3<f32>(var_0.c.x, arg_1, 486f), vec4<u32>(var_1.a.x, 1u, var_0.a.x, var_0.d.x))).zzy, var_0.b.zwx), vec4<f32>(-512f, 921f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1210f - 878f)), -392f), vec3<u32>(~(~var_1.d.x), ~57487u, 4294967295u))).x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 0u;
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(ceil(1729f)))));
    let var_1 = u_input.b.x;
    global1 = ~(~_wgslsmith_add_u32(1u, abs(1u)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.yxw, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(global0[_wgslsmith_index_u32(55863u, 27u)], _wgslsmith_f_op_f32(min(1295f, -1040f)), 27714u, 7960u)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -1227f, 848f, var_0))))), firstTrailingBit(vec2<u32>(24616u, 0u)) | _wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(1u, 4294967295u)), vec2<u32>(1u, 1u))), vec3<f32>(_wgslsmith_f_op_f32(var_0 + -1907f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(320f + var_0)))), _wgslsmith_f_op_f32(round(var_0))));
}

