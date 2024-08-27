struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec3<i32>;

var<private> global2: Struct_1 = Struct_1(vec4<i32>(-47702i, -66796i, 63361i, 0i), 4294967295u);

var<private> global3: f32;

var<private> global4: array<Struct_1, 3>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> vec3<u32> {
    return vec3<u32>(u_input.b.x, 0u, firstTrailingBit(22869u));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec2<i32>, arg_3: f32) -> vec3<u32> {
    global3 = -450f;
    var var_0 = ~(global2.b >> (_wgslsmith_mod_u32(91856u, ~17824u) % 32u));
    var var_1 = false;
    var var_2 = Struct_1(-vec4<i32>(~(-1i), _wgslsmith_add_i32(-63751i, global2.a.x), max(arg_2.x, arg_2.x), ~1i), countOneBits(reverseBits(max(~arg_0, 48275u >> (arg_0 % 32u)))));
    let var_3 = Struct_1(global2.a, ~_wgslsmith_dot_vec3_u32(func_1(vec4<f32>(arg_3, -112f, global0.x, -455f), global4[_wgslsmith_index_u32(4294967295u, 3u)]), ~(~vec3<u32>(76033u, 37297u, arg_0))));
    return ~u_input.b.wyy >> (countOneBits(u_input.b.xwz) % vec3<u32>(32u));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1612f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-500f)) * global0.x), _wgslsmith_f_op_f32(-global0.x), global0.x));
    let var_1 = arg_1;
    var var_2 = arg_1;
    let var_3 = max(firstTrailingBit(~global2.a.x), -(arg_1.a.x ^ (-38883i & var_1.a.x)) | var_1.a.x);
    let var_4 = arg_0;
    return _wgslsmith_f_op_f32(f32(-1f) * -997f);
}

fn func_4(arg_0: f32, arg_1: f32) -> vec4<i32> {
    let var_0 = global4[_wgslsmith_index_u32(~u_input.d.x, 3u)];
    global4 = array<Struct_1, 3>();
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-989f + _wgslsmith_f_op_f32(f32(-1f) * -686f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1243f, 1120f)), arg_0), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(410f - -1610f), -955f) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_1, arg_1))))))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.x, global0.x))))), arg_1, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-992f - arg_1))))))));
    var var_2 = -u_input.e;
    global4 = array<Struct_1, 3>();
    return vec4<i32>(~global2.a.x, -2147483647i, _wgslsmith_div_i32(u_input.c.x, 0i) & -(~_wgslsmith_dot_vec4_i32(u_input.c, global2.a)), ((i32(-1i) * -63629i) & _wgslsmith_dot_vec2_i32(vec2<i32>(global2.a.x, 10289i), min(vec2<i32>(global2.a.x, -33308i), vec2<i32>(global1.x, -1i)))) ^ 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global0.x;
    let var_0 = _wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~(~u_input.b), u_input.b), u_input.b.x), global2.b, 3788u & (1u | u_input.d.x));
    let var_1 = ~func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-343f - -386f), _wgslsmith_f_op_f32(f32(-1f) * -541f), _wgslsmith_f_op_f32(1000f - -1835f), global0.x)), Struct_1(u_input.c, u_input.d.x));
    let var_2 = func_2(max(~1847u, ~1u >> (u_input.b.x % 32u)), 2147483647i, _wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -(vec2<i32>(-14757i, 0i) << (vec2<u32>(global2.b, var_0) % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(global2.a.yy, vec2<i32>(global2.a.x, -81915i) & vec2<i32>(global1.x, global2.a.x))), 413f);
    global2 = Struct_1(func_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x - 935f), _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(func_3(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), true), global4[_wgslsmith_index_u32(~(~var_0), 3u)]))), _wgslsmith_sub_u32(countOneBits(~_wgslsmith_add_u32(var_1.x, 66058u)), countOneBits(_wgslsmith_add_u32(var_1.x >> (var_0 % 32u), _wgslsmith_dot_vec3_u32(var_1, vec3<u32>(u_input.d.x, global2.b, 10464u))))));
    let var_3 = global4[_wgslsmith_index_u32(min(var_0, firstLeadingBit(select(7344u, func_2(var_0, 0i, vec2<i32>(2147483647i, 13043i), global0.x).x, any(vec4<bool>(true, true, true, false))))) | var_2.x, 3u)];
    let var_4 = vec4<i32>(var_3.a.x, 0i, firstTrailingBit(global1.x), reverseBits(~firstTrailingBit(var_3.a.x)));
    let var_5 = vec3<bool>(false, any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true)) | true, false);
    let var_6 = u_input.e;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec4_u32(~(~u_input.b), u_input.b), ~(-_wgslsmith_add_i32(56970i, 2935i) >> (var_0 % 32u)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global0.x)))), _wgslsmith_f_op_f32(global0.x + 1000f)))));
}

