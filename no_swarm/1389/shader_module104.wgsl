struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(16994u, 1u, 13473u, 4294967295u), 4294967295u);

var<private> global1: array<vec3<f32>, 12> = array<vec3<f32>, 12>(vec3<f32>(-442f, -629f, -824f), vec3<f32>(536f, 1313f, -746f), vec3<f32>(368f, 225f, 1342f), vec3<f32>(-393f, 657f, 2178f), vec3<f32>(1307f, 804f, 1625f), vec3<f32>(-1276f, 1449f, -266f), vec3<f32>(1337f, -882f, -770f), vec3<f32>(607f, -1000f, -1693f), vec3<f32>(257f, 275f, -378f), vec3<f32>(935f, 872f, -3046f), vec3<f32>(877f, 958f, 277f), vec3<f32>(-1376f, 1343f, -1325f));

var<private> global2: array<Struct_2, 25>;

var<private> global3: array<i32, 6>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: bool, arg_1: Struct_3) -> Struct_3 {
    let var_0 = -(~31774i);
    global1 = array<vec3<f32>, 12>();
    let var_1 = !select(!vec2<bool>(!arg_1.a.x, any(arg_1.a.xwy)), select(!arg_1.a.yz, arg_1.a.xw, true), false);
    var var_2 = vec3<i32>(1i, u_input.a.x, reverseBits(2147483647i));
    var var_3 = true;
    return Struct_3(!arg_1.a);
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = ~(~abs((arg_0.a.xzw ^ global0.a.wxz) | vec3<u32>(4294967295u, 16472u, 4294967295u)));
    global0 = Struct_1(global0.a, global0.b);
    let var_1 = -823f;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_1)), var_1) - _wgslsmith_f_op_f32(-149f + _wgslsmith_f_op_f32(trunc(-195f))))) * var_1);
    let var_3 = vec2<i32>(global3[_wgslsmith_index_u32(reverseBits(abs(_wgslsmith_clamp_u32(_wgslsmith_div_u32(global0.a.x, arg_0.a.x), 32553u, global0.b))), 6u)], _wgslsmith_add_i32(u_input.b.x, select(-u_input.c.x, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(arg_0.b, 6u)], -51300i), vec2<i32>(global3[_wgslsmith_index_u32(1u, 6u)], 5208i)), global3[_wgslsmith_index_u32(1u, 6u)], 50281i), false)));
    return true;
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    let var_0 = Struct_3(select(select(vec4<bool>(true, func_3(Struct_1(vec4<u32>(global0.a.x, 1u, 4294967295u, 49359u), 29959u)), !arg_0.a.x, true & arg_0.a.x), func_1(true, arg_0).a, vec4<bool>(any(arg_0.a.yz), any(arg_0.a.wzx), false, func_3(Struct_1(global0.a, 0u)))), !vec4<bool>(select(arg_0.a.x, false, true), select(true, arg_0.a.x, arg_0.a.x), func_3(Struct_1(global0.a, global0.a.x)), true), !(!select(arg_0.a, arg_0.a, false))));
    global2 = array<Struct_2, 25>();
    var var_1 = global2[_wgslsmith_index_u32(1u & global0.b, 25u)];
    global2 = array<Struct_2, 25>();
    var var_2 = Struct_1(~vec4<u32>(min(global0.b ^ 73531u, global0.a.x), global0.a.x, _wgslsmith_add_u32(max(0u, global0.b), 33759u), _wgslsmith_div_u32(0u, 1u)), countOneBits(global0.b));
    return Struct_1(~reverseBits(vec4<u32>(global0.b, var_2.b, 0u, global0.a.x) & _wgslsmith_div_vec4_u32(vec4<u32>(var_2.a.x, var_2.b, 1u, 10836u), vec4<u32>(31620u, global0.a.x, var_2.b, var_2.b))), _wgslsmith_add_u32(global0.b, ~_wgslsmith_dot_vec3_u32(global0.a.ywx, var_2.a.wwz)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(false, Struct_3(!select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true)), false)));
    var var_1 = false;
    let var_2 = var_0.a;
    var var_3 = func_2(Struct_3(!func_1(true, var_0).a));
    var var_4 = _wgslsmith_mult_u32(firstLeadingBit(min(1u, global0.b)), var_3.a.x);
    let var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(561f, 1134f, 1000f, -919f), vec4<f32>(-674f, -524f, -413f, -1007f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-509f, -1676f, -1665f, -438f) - vec4<f32>(-1131f, 983f, -1076f, 155f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1092f, 231f, 909f, 792f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-148f - -927f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_f32(f32(-1f) * -461f), -384f)));
    global0 = func_2(func_1(!all(vec3<bool>(var_2.x, true, false)), func_1(any(!var_0.a.xy), func_1(var_2.x, func_1(false, var_0)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(min(1791i, i32(-1i) * -2147483647i), u_input.b.x, u_input.c.x, 11435i));
}

