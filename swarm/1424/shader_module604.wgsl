struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2> = array<i32, 2>(21974i, i32(-2147483648));

var<private> global1: f32 = -862f;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = !vec2<bool>(arg_0.b.x, arg_0.b.x);
    var var_1 = global0[_wgslsmith_index_u32(~65838u, 2u)];
    let var_2 = _wgslsmith_mult_u32(4294967295u, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 17672u), arg_0.c.yw)) & u_input.c.x);
    var_1 = global0[_wgslsmith_index_u32(~15806u, 2u)];
    var var_3 = min(-31183i, -57618i);
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(691f)), _wgslsmith_f_op_f32(-arg_0.a.x)), vec4<bool>(arg_0.b.x, !(!any(arg_0.b.xx)), global0[_wgslsmith_index_u32(0u, 2u)] < _wgslsmith_dot_vec4_i32(~vec4<i32>(0i, -2147483647i, -2147483647i, 61515i), vec4<i32>(u_input.b.x, global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(var_2, 2u)], u_input.b.x)), !var_0.x), _wgslsmith_sub_vec4_u32(countOneBits(u_input.c & _wgslsmith_clamp_vec4_u32(vec4<u32>(106968u, 1u, var_2, var_2), arg_0.c, vec4<u32>(arg_0.e, u_input.d, var_2, 58935u))), vec4<u32>(min(34915u, u_input.c.x), abs(~0u), _wgslsmith_sub_u32(1u, abs(u_input.a.x)), var_2)), u_input.c.xyx, 62640u);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: bool) -> f32 {
    global1 = _wgslsmith_f_op_f32(-arg_2.a.x);
    let var_0 = vec3<i32>(arg_1.b, -2147483647i, _wgslsmith_div_i32(1i, _wgslsmith_add_i32(-(1i & arg_0.x), u_input.b.x)));
    let var_1 = func_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1770f, arg_1.a.x), vec2<f32>(arg_2.a.x, arg_1.a.x))) * vec2<f32>(arg_2.a.x, -1140f))), arg_2.b, vec4<u32>(reverseBits(func_2(arg_2).d.x), 44718u, arg_2.e, ~_wgslsmith_mod_u32(0u, u_input.c.x)), vec3<u32>(1u, 21668u, ~_wgslsmith_div_u32(81060u, arg_2.d.x)), _wgslsmith_dot_vec4_u32(func_2(arg_2).c, u_input.c | abs(u_input.c)))).b;
    global0 = array<i32, 2>();
    global0 = array<i32, 2>();
    return arg_2.a.x;
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    global0 = array<i32, 2>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1647f * arg_1.a.x));
    global0 = array<i32, 2>();
    global1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1881f)))), 559f));
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)))))));
    return arg_1;
}

fn func_1() -> f32 {
    var var_0 = ~1u;
    var var_1 = func_2(Struct_1(vec2<f32>(1f, 1f), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, all(vec4<bool>(true, false, true, true))), false), u_input.c & vec4<u32>(_wgslsmith_div_u32(u_input.a.x, 4294967295u), 1u, ~u_input.a.x, _wgslsmith_dot_vec4_u32(u_input.c, u_input.c)), vec3<u32>(abs(reverseBits(u_input.a.x)), abs(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(60543u, 0u))), ~14196u), 0u));
    let var_2 = ~reverseBits(min(countOneBits(~vec4<i32>(32422i, -30271i, global0[_wgslsmith_index_u32(u_input.d, 2u)], u_input.b.x)), ~(~vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(60980u, 2u)], 0i, -51861i))));
    var var_3 = func_2(func_2(func_4(_wgslsmith_f_op_f32(func_3(~var_2, Struct_2(var_1.a, u_input.b.x, false), func_2(Struct_1(var_1.a, var_1.b, vec4<u32>(var_1.e, 79678u, 1u, var_1.c.x), vec3<u32>(74202u, u_input.a.x, 661u), var_1.d.x)), true)), func_2(func_2(Struct_1(vec2<f32>(-115f, -1651f), var_1.b, vec4<u32>(var_1.e, var_1.c.x, 774u, 4294967295u), var_1.c.wzz, 72727u))))));
    var_1 = func_4(var_3.a.x, Struct_1(vec2<f32>(1000f, var_1.a.x), select(vec4<bool>(any(var_1.b.wx), true, false, !var_3.b.x), select(vec4<bool>(true, false, true, false), var_1.b, var_1.b), !var_1.b), firstTrailingBit(func_2(Struct_1(var_1.a, var_1.b, u_input.c, var_3.c.zxz, u_input.a.x)).c), vec3<u32>(~_wgslsmith_mult_u32(var_3.c.x, 0u), u_input.d, 22482u), var_1.c.x));
    return var_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(~(~(~vec2<u32>(8352u, u_input.c.x))), ~vec2<u32>(1u, select(22789u, 4294967295u, false) << (u_input.c.x % 32u)), true);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1311f, -1395f, 1000f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-303f, 1045f, -303f) * vec3<f32>(2010f, 640f, -1953f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1090f, -114f, -2256f)))), _wgslsmith_div_vec3_f32(vec3<f32>(1301f, -2344f, 553f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1323f, 1000f, 404f) + vec3<f32>(945f, -611f, -1701f)))) * vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1000f, 568f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(664f, 297f)), _wgslsmith_f_op_f32(min(1346f, 565f)), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-707f, -494f))))));
    global0 = array<i32, 2>();
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + -1287f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1())))) <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(-var_1.x)) + var_1.x), _wgslsmith_f_op_f32(-var_1.x)));
    var var_3 = select(reverseBits(~(-1i)), _wgslsmith_mod_i32(~(~(i32(-1i) * -10048i)), i32(-1i) * -firstLeadingBit(2147483647i)), _wgslsmith_dot_vec3_u32(u_input.c.xwz, ~u_input.c.wzx) == var_0.x);
    var var_4 = 1960u;
    global1 = _wgslsmith_f_op_f32(1214f * var_1.x);
    var var_5 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_1.yy), var_1.yx))) + var_1.zz), _wgslsmith_f_op_f32(-913f + _wgslsmith_f_op_f32(f32(-1f) * -1145f)), global0[_wgslsmith_index_u32(~0u, 2u)]);
}

