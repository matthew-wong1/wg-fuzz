struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: vec3<i32>;

var<private> global2: f32 = 1247f;

var<private> global3: array<i32, 13>;

var<private> global4: array<u32, 32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32) -> vec4<bool> {
    let var_0 = arg_0;
    let var_1 = Struct_3(Struct_1(vec4<bool>(true, any(vec3<bool>(true, true, true)), any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true)), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1337f + -1958f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-310f + -124f) + 1020f))), 0u);
    global2 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.b * _wgslsmith_f_op_f32(870f + 1936f)), _wgslsmith_f_op_f32(-var_1.a.b))));
    let var_2 = var_1.a.b;
    global1 = vec3<i32>(32035i, select(_wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(17695u, 32u)], 13u)] | _wgslsmith_div_i32(u_input.c, 23898i), reverseBits(_wgslsmith_mult_i32(1i, 0i)), -34795i), ~(-35628i), true), -2147483647i);
    return !vec4<bool>(var_1.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-319f + var_2)) != _wgslsmith_f_op_f32(min(-401f, var_2)), true, any(vec4<bool>(true, true, true, true)));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<bool>) -> vec3<i32> {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec2_i32(global1.xx, max(~(-global1.zz), vec2<i32>(1i, global3[_wgslsmith_index_u32(1u | global4[_wgslsmith_index_u32(u_input.a, 32u)], 13u)]))), u_input.c, -46934i);
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(928f))) - _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-117f + 927f) - _wgslsmith_f_op_f32(264f + 693f)) * _wgslsmith_f_op_f32(ceil(-1000f))))), -905f);
    let var_1 = Struct_2(Struct_1(arg_1, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(trunc(149f)))), global4[_wgslsmith_index_u32(u_input.b, 32u)] >> (global4[_wgslsmith_index_u32(~_wgslsmith_sub_u32(select(u_input.b, global4[_wgslsmith_index_u32(60583u, 32u)], false), _wgslsmith_add_u32(u_input.a, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(99989u, 32u)], 32u)])), 32u)] % 32u));
    var var_2 = var_1.a;
    global2 = _wgslsmith_f_op_f32(min(860f, -372f));
    return vec3<i32>(countOneBits(u_input.c), i32(-1i) * -(~(59869i << (1u % 32u))), -30384i);
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: bool, arg_3: i32) -> vec3<i32> {
    global4 = array<u32, 32>();
    global3 = array<i32, 13>();
    global4 = array<u32, 32>();
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-377f * arg_0.a.b) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.a.b))))), arg_0.a.b)));
    global1 = func_4(!arg_0.a.a.zy, select(vec4<bool>(arg_0.a.a.x, true, true, all(vec3<bool>(arg_2, arg_0.a.a.x, true))), func_3(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global4[_wgslsmith_index_u32(arg_0.b, 32u)], 1u), vec3<u32>(u_input.a, 1u, arg_0.b))), !select(arg_0.a.a, vec4<bool>(arg_2, true, true, arg_0.a.a.x), false))) << (_wgslsmith_mod_vec3_u32(vec3<u32>(1u ^ (19217u & u_input.b), (global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(23190u, 32u)], 32u)] << (0u % 32u)) & 85186u, arg_0.b & 27027u), abs(countOneBits(reverseBits(vec3<u32>(1u, 54232u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_0.b, 32u)], 32u)]))))) % vec3<u32>(32u));
    return _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(~global3[_wgslsmith_index_u32(4294967295u, 13u)], firstLeadingBit(0i), ~global1.x), vec3<i32>(1i & u_input.c, -2147483647i, _wgslsmith_div_i32(-8237i, arg_3))), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(global1.x, -2147483647i, global1.x), vec3<i32>(u_input.c, global1.x, global3[_wgslsmith_index_u32(21240u, 13u)])) | ~vec3<i32>(arg_3, arg_3, arg_3))), ~vec3<i32>(global3[_wgslsmith_index_u32(abs(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(global4[_wgslsmith_index_u32(0u, 32u)], u_input.a), 32u)]), 13u)], -2147483647i, -1i));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_3) -> Struct_1 {
    global2 = _wgslsmith_f_op_f32(arg_1.a.b - _wgslsmith_f_op_f32(arg_1.a.b - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-380f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.b) - -245f)))));
    let var_0 = _wgslsmith_div_i32(-38024i, _wgslsmith_dot_vec3_i32(~(-firstLeadingBit(vec3<i32>(arg_0.x, 0i, global3[_wgslsmith_index_u32(0u, 13u)]))), countOneBits(abs(func_2(Struct_2(Struct_1(arg_1.a.a, arg_1.a.b), 0u), vec4<f32>(arg_1.a.b, arg_1.a.b, arg_1.a.b, arg_1.a.b), false, -1i)))));
    let var_1 = arg_0.xyy;
    var var_2 = select(arg_1.a.a.xx, arg_1.a.a.xx, arg_1.a.a.xy);
    let var_3 = global1.xy;
    return Struct_1(!select(!arg_1.a.a, select(select(vec4<bool>(arg_1.a.a.x, true, arg_1.a.a.x, var_2.x), arg_1.a.a, false), !vec4<bool>(false, arg_1.a.a.x, true, var_2.x), !arg_1.a.a), !select(vec4<bool>(false, false, arg_1.a.a.x, arg_1.a.a.x), vec4<bool>(true, arg_1.a.a.x, var_2.x, var_2.x), arg_1.a.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1545f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(vec4<i32>(-global1.x, ~(2872i & u_input.c), ~abs(2147483647i), global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~u_input.a, 32u)], 13u)]), Struct_3(Struct_1(vec4<bool>(true, false, true, true), _wgslsmith_f_op_f32(868f * -953f)), _wgslsmith_dot_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(3077u, 32u)], 0u, global4[_wgslsmith_index_u32(u_input.a, 32u)], 62830u), firstTrailingBit(vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 32u)], 32u)], global4[_wgslsmith_index_u32(u_input.a, 32u)], u_input.a, global4[_wgslsmith_index_u32(4294967295u, 32u)]))))), 59601u);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a.b)));
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -234f);
    var var_2 = Struct_1(var_0.a.a, 624f);
    let var_3 = var_0.a;
    let var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(507f, _wgslsmith_f_op_f32(select(-450f, var_3.b, var_2.a.x)), -815f));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.b, -16163i, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_4.x, -303f))), -1717f, _wgslsmith_f_op_f32(-var_0.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) * -1474f)))));
}

