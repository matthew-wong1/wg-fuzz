struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: bool,
    d: vec2<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 30>;

var<private> global1: array<vec3<f32>, 2> = array<vec3<f32>, 2>(vec3<f32>(-989f, 1565f, 470f), vec3<f32>(211f, 280f, 679f));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: vec2<i32>) -> vec2<f32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-398f * _wgslsmith_f_op_f32(-1f)) + _wgslsmith_f_op_f32(trunc(233f))), 521f);
    let var_1 = global0[_wgslsmith_index_u32(u_input.d, 30u)];
    global0 = array<Struct_3, 30>();
    let var_2 = u_input.d;
    let var_3 = (arg_0 && false) || (_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(431f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.x) - _wgslsmith_f_op_f32(exp2(var_0.x))))) > -483f);
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_1.d)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.b.wz), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_1.b.yz)) + _wgslsmith_div_vec2_f32(var_1.b.yw, var_1.d))))));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: Struct_3) -> bool {
    let var_0 = arg_1.e.a;
    global0 = array<Struct_3, 30>();
    global1 = array<vec3<f32>, 2>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_3.d.x * 228f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_3.b.x)) * arg_1.e.b))), arg_3.e.b);
    let var_2 = 219f;
    return 1u < _wgslsmith_dot_vec3_u32(~(_wgslsmith_mult_vec3_u32(vec3<u32>(73844u, 4294967295u, 9932u), vec3<u32>(18789u, u_input.d, u_input.d)) | max(vec3<u32>(38792u, arg_0, 4294967295u), vec3<u32>(arg_0, 1u, 15571u))), vec3<u32>(abs(1u), u_input.d, arg_0));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: f32) -> Struct_1 {
    var var_0 = !((~(0u | u_input.d) ^ u_input.d) > min(u_input.d, u_input.d));
    var var_1 = _wgslsmith_add_vec4_i32(-_wgslsmith_div_vec4_i32(max(vec4<i32>(u_input.a.x, 2147483647i, 1i, u_input.b), vec4<i32>(1657i, -2147483647i, u_input.b, u_input.a.x)), abs(vec4<i32>(u_input.b, -2147483647i, -2147483647i, 1i))), countOneBits(_wgslsmith_mod_vec4_i32(-vec4<i32>(1i, u_input.a.x, u_input.a.x, 1i), vec4<i32>(-38033i, u_input.a.x, 2147483647i, 2147483647i)))) & ~abs(~(~vec4<i32>(u_input.b, -14604i, 0i, u_input.a.x)));
    let var_2 = arg_0.x;
    var var_3 = any(select(vec4<bool>(!any(vec2<bool>(true, true)), any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), false, true), !(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), false)), any(vec3<bool>(false, true, all(vec4<bool>(false, false, false, true))))));
    var var_4 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(trunc(-1156f)), var_2), _wgslsmith_f_op_vec3_f32(select(arg_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-227f, -518f, _wgslsmith_f_op_f32(select(var_2, -651f, true)))), (var_1.x >= -28528i) && (u_input.d >= ~u_input.d)))));
    return Struct_1(!(func_3(0u, Struct_3(Struct_1(false), vec4<f32>(var_2, var_4.x, var_4.x, 756f), false, vec2<f32>(arg_1.x, var_4.x), Struct_2(Struct_1(false), -603f)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true)), global0[_wgslsmith_index_u32(4294967295u << (u_input.d % 32u), 30u)]) && true));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    global0 = array<Struct_3, 30>();
    let var_0 = all(!(!(!vec4<bool>(arg_1.a, arg_1.a, false, arg_1.a))));
    let var_1 = func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(var_0, arg_1, false, vec2<i32>(2147483647i, -8501i)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -347f) * vec2<f32>(1091f, arg_0)))), vec2<f32>(_wgslsmith_f_op_f32(-arg_0), -2039f), vec2<bool>(!func_3(u_input.d, global0[_wgslsmith_index_u32(29981u, 30u)], vec4<bool>(false, var_0, false, var_0), Struct_3(arg_1, vec4<f32>(439f, arg_0, 2417f, -518f), false, vec2<f32>(1000f, arg_0), Struct_2(arg_1, arg_0))), any(vec3<bool>(true, true, arg_1.a)) || any(vec4<bool>(var_0, true, arg_1.a, arg_1.a))))), vec3<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0)) + _wgslsmith_f_op_f32(-arg_0)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * arg_0) * _wgslsmith_f_op_f32(f32(-1f) * -166f))), 1757f), arg_0);
    global1 = array<vec3<f32>, 2>();
    global1 = array<vec3<f32>, 2>();
    return func_4(vec2<f32>(-1292f, arg_0), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(38626u, 2u)] + vec3<f32>(-560f, -1000f, 131f)))))), arg_0);
}

fn func_5(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    let var_0 = select(select(!(!(!vec4<bool>(true, arg_0.a.a, arg_0.a.a, arg_0.a.a))), select(!select(vec4<bool>(arg_0.a.a, true, arg_0.a.a, false), vec4<bool>(arg_0.a.a, arg_0.a.a, arg_0.a.a, false), vec4<bool>(true, false, true, false)), !select(vec4<bool>(arg_0.a.a, false, false, arg_0.a.a), vec4<bool>(true, arg_0.a.a, arg_0.a.a, true), vec4<bool>(false, arg_0.a.a, arg_0.a.a, arg_0.a.a)), vec4<bool>(u_input.d == arg_1, !arg_0.a.a, false, u_input.d < arg_1)), vec4<bool>(false, arg_0.a.a, _wgslsmith_f_op_f32(-arg_0.b) < _wgslsmith_f_op_f32(step(1621f, 2326f)), func_1(arg_0.b, Struct_1(true), vec3<i32>(-1857i, -28306i, u_input.b)).a & all(vec3<bool>(arg_0.a.a, true, true)))), !vec4<bool>(false, func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(512f, arg_0.b) + vec2<f32>(arg_0.b, arg_0.b)), global1[_wgslsmith_index_u32(0u << (u_input.d % 32u), 2u)], arg_0.b).a, all(!vec2<bool>(false, arg_0.a.a)), !any(vec3<bool>(false, true, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-462f * arg_0.b) - -1000f) == -976f);
    let var_1 = arg_0.a.a;
    global1 = array<vec3<f32>, 2>();
    var var_2 = any(var_0);
    var var_3 = var_1;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 30>();
    global1 = array<vec3<f32>, 2>();
    var var_0 = func_5(Struct_2(func_1(-1299f, Struct_1(false), -reverseBits(vec3<i32>(u_input.b, u_input.c.x, u_input.c.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(442f + _wgslsmith_div_f32(-1163f, 676f)), _wgslsmith_f_op_f32(-126f - 1f), true))), ~(u_input.d ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d), countOneBits(vec4<u32>(u_input.d, u_input.d, u_input.d, 4294967295u)))));
    global0 = array<Struct_3, 30>();
    var var_1 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(676f * 1254f)))), Struct_1(all(!vec3<bool>(false, var_0.a, var_0.a))), firstTrailingBit(abs(~vec3<i32>(u_input.c.x, u_input.b, -1633i))));
    let var_2 = u_input.a;
    var var_3 = !vec4<bool>(var_1.a, true, func_1(-1385f, func_4(vec2<f32>(-691f, -1157f), _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(41812u, 2u)]), -1619f), vec3<i32>(~(-1i), ~(-1i), var_2.x)).a, 36590i > min(-u_input.a.x, 1i));
    var var_4 = vec3<i32>(-10325i, u_input.a.x, _wgslsmith_add_i32(~36735i, -u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(4294967295u, 2u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-620f)) - -944f), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-214f, -314f)))))), vec2<f32>(_wgslsmith_f_op_f32(-934f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(197f + -450f) - _wgslsmith_div_f32(-556f, 1000f)))));
}

