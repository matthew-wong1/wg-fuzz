struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30> = array<i32, 30>(2147483647i, -1i, -1i, 20775i, 23136i, 1i, -41987i, 1i, 60409i, -1i, 1i, -1i, 0i, 0i, 2147483647i, -1i, 61979i, 1i, -53380i, 2089i, -20053i, 16219i, 3157i, 2147483647i, -1i, 0i, -22463i, -1i, 11214i, 1i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2) -> i32 {
    global0 = array<i32, 30>();
    global0 = array<i32, 30>();
    global0 = array<i32, 30>();
    var var_0 = all(!vec2<bool>(_wgslsmith_f_op_f32(arg_0.a.x + 501f) != _wgslsmith_f_op_f32(-arg_0.a.x), true));
    var var_1 = vec3<u32>(1u, ~(~76981u), ~abs(59021u));
    return global0[_wgslsmith_index_u32(~46923u, 30u)];
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> f32 {
    let var_0 = _wgslsmith_sub_u32(45184u, firstLeadingBit(_wgslsmith_add_u32(39333u, _wgslsmith_div_u32(firstTrailingBit(34127u), 96262u))));
    let var_1 = ~40807u;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-arg_2.a), arg_2.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -255f), _wgslsmith_f_op_f32(1303f + _wgslsmith_f_op_f32(exp2(arg_2.a.x)))));
    global0 = array<i32, 30>();
    let var_3 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.x, 1732f) * vec2<f32>(arg_2.c, arg_1.b))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-436f, var_2.c))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.b, arg_2.a.x))) + arg_1.a)))), _wgslsmith_f_op_f32(var_2.b - -317f), arg_1.a.x);
    return _wgslsmith_f_op_f32(var_2.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -106f)))));
}

fn func_2(arg_0: vec2<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(964f, -887f), vec2<f32>(-1004f, 548f)))))))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(473f, 257f) * vec2<f32>(1316f, -1311f))))))));
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, var_0.x)))))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-317f, -1000f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1089f, -102f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_0.x) + vec2<f32>(-689f, var_0.x)))))));
    let var_1 = ~(~vec2<u32>(1u, 1u));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(297f, _wgslsmith_f_op_f32(floor(var_0.x))))), _wgslsmith_f_op_f32(func_4(countOneBits(~(~vec4<u32>(var_1.x, 0u, 107488u, var_1.x))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(2436f, 1066f))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-301f)))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)), -181f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1634f)))), func_3(Struct_2(vec3<f32>(-935f, 1405f, var_0.x), global0[_wgslsmith_index_u32(~4294967295u, 30u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)));
    var_0 = var_2.a;
    return reverseBits(_wgslsmith_sub_u32(var_1.x, ~(~99600u))) >= ~var_1.x;
}

fn func_1() -> vec2<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(195f, -1079f), vec2<f32>(1000f, 218f)), _wgslsmith_div_vec2_f32(vec2<f32>(-718f, -280f), vec2<f32>(1020f, 559f)))))), -178f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1332f)));
    global0 = array<i32, 30>();
    let var_1 = ~(~(~_wgslsmith_mod_u32(1u, 1u)));
    let var_2 = vec4<bool>(true, any(vec4<bool>(select(false, false, true), true, true, func_2(vec2<i32>(0i, u_input.a)))) || !all(vec3<bool>(true, true, true)), any(select(select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), false), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), all(vec3<bool>(true, true, false))))), select(any(vec3<bool>(true, true, true)), select(false, true, true), true));
    var var_3 = Struct_2(vec3<f32>(-646f, _wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.a.x), var_0.b))), -893f), 1i << (1u % 32u));
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 30>();
    global0 = array<i32, 30>();
    global0 = array<i32, 30>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1700f, 1073f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(447f, 521f) * vec2<f32>(1000f, 266f)))))), -1703f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -129f) * _wgslsmith_f_op_vec2_f32(func_1()).x))));
    let var_1 = vec3<bool>(true, true, true);
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.b, -102f, 199f)))) * _wgslsmith_div_vec3_f32(vec3<f32>(var_0.c, var_0.c, var_0.c), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a.x, var_0.c, var_0.b))))))), _wgslsmith_add_i32(firstTrailingBit(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(25789u, 4741u, 0u, 56020u), ~vec4<u32>(15415u, 4294967295u, 28204u, 0u)), 30u)]), -reverseBits(_wgslsmith_clamp_i32(-1i, global0[_wgslsmith_index_u32(47861u, 30u)], global0[_wgslsmith_index_u32(1u, 30u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(-544f, _wgslsmith_div_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(43299u, 33252u, 22485u), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 0u, 62111u), vec3<u32>(0u, 0u, 1u), vec3<u32>(4294967295u, 18382u, 22648u)))), 0u));
}

