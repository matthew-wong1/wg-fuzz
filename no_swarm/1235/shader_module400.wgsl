struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: f32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32;

var<private> global2: array<vec2<i32>, 1> = array<vec2<i32>, 1>(vec2<i32>(-19565i, 0i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: vec3<bool>) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_mult_u32(~50501u, global0.a) & 9238u);
    let var_1 = Struct_1(_wgslsmith_dot_vec2_u32(arg_0, u_input.b.yw));
    var_0 = var_1;
    return !(!arg_2);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    global2 = array<vec2<i32>, 1>();
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -426f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-2254f))))));
    var var_0 = Struct_1(abs(u_input.b.x));
    return !(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = arg_2;
    var var_1 = Struct_1(_wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.b.x, 4294967295u), vec2<u32>(var_0.a, 25797u), arg_0.x), vec2<u32>(arg_2.a, arg_2.a)), ~(~arg_1)));
    var var_2 = false;
    var var_3 = Struct_1(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(6477u, 4294967295u), u_input.b.zz)));
    var var_4 = arg_2;
    return Struct_1(29965u);
}

fn func_1(arg_0: u32, arg_1: f32) -> vec4<u32> {
    var var_0 = func_4(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), func_2(u_input.b.wx, u_input.b.xy, vec3<bool>(false, false, false))), select(vec3<bool>(true, false, true), func_3(Struct_1(8092u), Struct_1(46830u)), func_2(u_input.b.xx, u_input.b.wz, vec3<bool>(true, false, true))), func_2(u_input.b.wy, vec2<u32>(arg_0, arg_0), vec3<bool>(false, false, false))), u_input.b.x, Struct_1(~(_wgslsmith_mult_u32(107117u, 0u) ^ (global0.a >> (arg_0 % 32u)))), max(min(select(max(29479i, u_input.c.x), min(-8257i, 8097i), false), u_input.c.x), ~6033i));
    var var_1 = func_4(vec3<bool>(true, true, true), 4294967295u, func_4(vec3<bool>(any(vec2<bool>(false, true)), true, true), var_0.a, Struct_1(258u), -25164i), 57369i);
    var var_2 = abs(vec3<i32>(u_input.c.x, -(~_wgslsmith_div_i32(u_input.c.x, u_input.a)), -10163i));
    var var_3 = _wgslsmith_clamp_vec3_i32(u_input.c, u_input.c, -min(~_wgslsmith_add_vec3_i32(u_input.c, vec3<i32>(-10887i, var_2.x, var_2.x)), _wgslsmith_div_vec3_i32(firstTrailingBit(u_input.c), _wgslsmith_mult_vec3_i32(u_input.c, u_input.c))));
    global1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(arg_1, arg_1))))) + arg_1), _wgslsmith_f_op_f32(1438f + arg_1)));
    return ~_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, 5012u, 0u, 11307u) ^ countOneBits(~vec4<u32>(54077u, 0u, u_input.b.x, 18779u)), vec4<u32>(27221u, 4294967295u, 44440u & arg_0, var_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.zy;
    global2 = array<vec2<i32>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(~max(func_1(~61951u, _wgslsmith_f_op_f32(f32(-1f) * -921f)), u_input.b), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1734f, 1323f) + vec2<f32>(1f, 1f)) + vec2<f32>(_wgslsmith_f_op_f32(569f + 356f), _wgslsmith_f_op_f32(floor(-113f)))))), -1239f, global0.a, countOneBits(vec2<u32>(max(~u_input.b.x, max(53471u, 53169u)), 1u)));
}

