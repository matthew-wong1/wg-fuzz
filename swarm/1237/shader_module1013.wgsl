struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

var<private> global1: u32;

var<private> global2: array<i32, 25>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(1090f + _wgslsmith_f_op_f32(1371f - _wgslsmith_f_op_f32(-594f + _wgslsmith_f_op_f32(f32(-1f) * -1244f))));
    var var_1 = arg_1;
    global1 = reverseBits(min(47185u, 4294967295u));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -587f));
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0 + _wgslsmith_div_f32(-769f, var_0)), _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-742f * var_0)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1426f + 175f), -1000f), true));
    return arg_0.a;
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: vec3<u32>, arg_3: vec2<i32>) -> Struct_1 {
    global1 = ~func_3(Struct_1(14879u), global0[_wgslsmith_index_u32(u_input.a.x, 13u)]);
    global1 = 1u;
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-1015f, 648f, _wgslsmith_div_f32(arg_0.x, arg_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_0.x, -1307f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-817f, -155f, -955f) - arg_0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(846f, -769f, arg_1), vec3<f32>(-707f, arg_0.x, -483f)) * arg_0), vec3<bool>(true, true, true))), vec4<u32>(_wgslsmith_mult_u32(firstLeadingBit(countOneBits(4294967295u)), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(94250u, 1u, u_input.a.x)), vec3<u32>(arg_2.x, u_input.a.x, 21650u))), u_input.a.x, u_input.a.x, _wgslsmith_dot_vec2_u32(arg_2.yy, vec2<u32>(u_input.a.x, 19044u)) & ~(~u_input.a.x)));
    let var_1 = var_0.b.x;
    return Struct_1(countOneBits(countOneBits(firstLeadingBit(countOneBits(var_0.b.x)))));
}

fn func_1(arg_0: u32, arg_1: Struct_5, arg_2: vec4<i32>, arg_3: f32) -> bool {
    global1 = 45264u;
    global2 = array<i32, 25>();
    let var_0 = true;
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.a.a + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.a.a))) * arg_1.a.a), _wgslsmith_f_op_f32(ceil(arg_1.a.a.x)), _wgslsmith_mult_vec3_u32(abs(u_input.a.yyy), arg_1.a.b.zwy), -(~(~u_input.b.xw)));
    let var_2 = ~func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.a.a + vec3<f32>(arg_3, arg_1.a.a.x, arg_1.a.a.x)))), arg_1.a.a.x, vec3<u32>(var_1.a, var_1.a, u_input.a.x), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, global2[_wgslsmith_index_u32(arg_1.a.b.x, 25u)]), ~u_input.b.zx)).a;
    return any(select(select(select(!vec4<bool>(var_0, var_0, true, var_0), select(vec4<bool>(var_0, var_0, true, false), vec4<bool>(false, false, var_0, false), false), !vec4<bool>(var_0, true, var_0, var_0)), select(select(vec4<bool>(true, true, var_0, false), vec4<bool>(false, false, false, true), true), !vec4<bool>(var_0, true, false, var_0), select(vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(true, true, var_0, var_0), vec4<bool>(var_0, var_0, var_0, var_0))), true), vec4<bool>(var_0, true, any(vec4<bool>(var_0, var_0, var_0, false)), all(!vec4<bool>(var_0, false, true, false))), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.a.x;
    let var_1 = ~u_input.a.zx;
    let var_2 = select(!vec4<bool>(!all(vec3<bool>(true, true, true)), any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true)), var_1.x != ~var_0, true), select(vec4<bool>(any(vec3<bool>(true, true, true)), true, func_1(countOneBits(var_1.x), Struct_5(Struct_2(vec3<f32>(450f, 1952f, 2052f), u_input.a)), u_input.b, _wgslsmith_f_op_f32(f32(-1f) * -775f)), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), all(vec2<bool>(false, true))), vec4<bool>(all(vec3<bool>(true, false, true)), func_1(~var_1.x, Struct_5(Struct_2(vec3<f32>(-1160f, -750f, 875f), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), vec4<i32>(2147483647i, u_input.b.x, 25619i, u_input.b.x), _wgslsmith_f_op_f32(round(1800f))), true, false), true));
    global0 = array<Struct_1, 13>();
    let var_3 = ~((((global2[_wgslsmith_index_u32(u_input.a.x, 25u)] & 2147483647i) >> (0u % 32u)) & _wgslsmith_clamp_i32(-2147483647i, -u_input.b.x, u_input.b.x)) ^ u_input.b.x);
    var var_4 = Struct_5(Struct_2(vec3<f32>(270f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(907f)), -2584f)), _wgslsmith_f_op_f32(min(860f, _wgslsmith_f_op_f32(f32(-1f) * -718f)))), vec4<u32>(abs(_wgslsmith_dot_vec3_u32(u_input.a.www, u_input.a.wwx)), var_0, var_1.x, _wgslsmith_dot_vec2_u32(countOneBits(var_1), select(vec2<u32>(var_0, 4294967295u), var_1, var_2.xw)))));
    let var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(var_3, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2356f, -238f, -618f, var_4.a.a.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_4.a.a.x, 988f, -1092f, 603f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_4.a.a.x, -653f, var_4.a.a.x, -343f))))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a.a.x, var_4.a.a.x, var_4.a.a.x, var_4.a.a.x)))))), var_4.a.a.xx);
}

