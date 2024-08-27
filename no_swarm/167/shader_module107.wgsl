struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: f32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec2<i32>,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_2, 18>;

var<private> global2: array<bool, 1>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<bool>, arg_1: u32) -> vec2<u32> {
    var var_0 = Struct_2(global0.e.a);
    global2 = array<bool, 1>();
    let var_1 = min(73175u & select(global0.b.a.e.x, max(_wgslsmith_mod_u32(48696u, arg_1), global0.b.a.e.x), var_0.a.a.x), var_0.a.d.x);
    var var_2 = ~firstTrailingBit(6351u & (_wgslsmith_mult_u32(25521u, global0.b.a.e.x) >> (63923u % 32u)));
    global1 = array<Struct_2, 18>();
    return firstLeadingBit(~var_0.a.e.yw);
}

fn func_2() -> f32 {
    var var_0 = select(~countOneBits(firstLeadingBit(func_3(vec4<bool>(false, global2[_wgslsmith_index_u32(76589u, 1u)], false, false), 4294967295u))), vec2<u32>(0u, 17724u), global0.b.a.a.xx);
    let var_1 = !(!all(global0.b.a.a.zxx));
    let var_2 = max(~(-u_input.a.x), u_input.a.x & global0.c.x);
    global1 = array<Struct_2, 18>();
    global0 = Struct_3(_wgslsmith_f_op_vec3_f32(-global0.a), global0.b, _wgslsmith_div_vec2_i32(~u_input.a.zz, min(~select(vec2<i32>(var_2, 0i), vec2<i32>(-1i, 16788i), vec2<bool>(false, var_1)), abs(_wgslsmith_div_vec2_i32(u_input.a.xx, global0.c)))), ((i32(-1i) * -36037i) & global0.c.x) | (_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(0i, 0i, 43087i, var_2), vec4<i32>(var_2, var_2, -2147483647i, -12023i)), min(vec4<i32>(0i, -43802i, -51552i, global0.d), u_input.a)) >> (_wgslsmith_clamp_u32(var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.b.a.e.x, 59808u, global0.b.a.d.x, global0.b.a.d.x), global0.e.a.e), 0u) % 32u)), Struct_2(global0.e.a));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(231f, _wgslsmith_f_op_f32(global0.e.a.c - global0.b.a.c)) - global0.e.a.c))));
}

fn func_1(arg_0: vec3<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-895f - _wgslsmith_f_op_f32(f32(-1f) * -324f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(623f - 1684f), _wgslsmith_f_op_f32(-636f + -1382f), any(vec2<bool>(false, global0.e.a.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(589f, arg_0.x)), -298f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 185f, 846f, 1781f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1222f, global0.b.a.c, global0.b.a.c, 1464f) - vec4<f32>(1447f, 1000f, global0.a.x, 167f)))));
    let var_1 = select(global2[_wgslsmith_index_u32(global0.b.a.e.x, 1u)] || global2[_wgslsmith_index_u32(4294967295u << (_wgslsmith_add_u32(global0.b.a.d.x | global0.e.a.d.x, global0.e.a.e.x) % 32u), 1u)], all(vec3<bool>(true, any(global0.b.a.a) && any(vec4<bool>(true, false, global0.b.a.a.x, false)), !global0.b.a.a.x & global0.e.a.a.x)), all(global0.b.a.a.xy));
    global1 = array<Struct_2, 18>();
    var var_2 = Struct_3(vec3<f32>(412f, _wgslsmith_f_op_f32(func_2()), global0.a.x), Struct_2(Struct_1(!global0.b.a.a, _wgslsmith_add_vec3_i32(global0.e.a.b, vec3<i32>(u_input.a.x, -10718i, -9116i)) | min(vec3<i32>(u_input.a.x, 17745i, global0.b.a.b.x), vec3<i32>(u_input.a.x, -33068i, 1848i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(trunc(-1561f))), ~global0.e.a.e.yxw, vec4<u32>(~global0.b.a.d.x, 4294967295u, ~1u, ~4294967295u))), global0.c, firstTrailingBit(17607i), global0.e);
    global1 = array<Struct_2, 18>();
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -338f)), 313f));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = arg_2.wxx;
    global1 = array<Struct_2, 18>();
    var_0 = arg_2.www;
    var var_1 = select(u_input.a.zy | -arg_0.a.b.xx, select(u_input.a.xz, global0.e.a.b.zx, select(vec2<bool>(all(vec2<bool>(global0.b.a.a.x, global2[_wgslsmith_index_u32(arg_0.a.d.x, 1u)])), any(vec4<bool>(true, false, true, global0.b.a.a.x))), vec2<bool>(0u == arg_0.a.d.x, all(global0.e.a.a)), false)), arg_0.a.a.x | arg_0.a.a.x);
    global0 = Struct_3(_wgslsmith_div_vec3_f32(global0.a, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-630f * -202f), 772f, arg_2.x), arg_2.yyy, global2[_wgslsmith_index_u32(72096u << (firstLeadingBit(4294967295u) % 32u), 1u)]))), global1[_wgslsmith_index_u32(arg_0.a.e.x, 18u)], abs(firstTrailingBit(~arg_0.a.b.zx)), ~reverseBits(arg_0.a.b.x), Struct_2(global0.b.a));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.a.c, -761f, global0.e.a.c) * vec3<f32>(global0.a.x, global0.b.a.c, global0.b.a.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a + vec3<f32>(1000f, -1875f, -1898f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global0.a, global0.a))))), global1[_wgslsmith_index_u32(1u, 18u)], vec2<i32>(0i, 1i), -(~(min(u_input.a.x, u_input.a.x) << (~global0.b.a.d.x % 32u))), Struct_2(func_4(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, global0.b.a.e.x | 4294967295u), 18u)], _wgslsmith_f_op_f32(func_1(vec3<f32>(global0.e.a.c, -186f, global0.a.x))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(942f, global0.a.x, global0.e.a.c, global0.e.a.c) + vec4<f32>(global0.e.a.c, 1000f, 957f, global0.e.a.c)))))));
    let var_0 = false;
    global2 = array<bool, 1>();
    global1 = array<Struct_2, 18>();
    global2 = array<bool, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(1u, -u_input.a.x, _wgslsmith_f_op_vec3_f32(-global0.a));
}

