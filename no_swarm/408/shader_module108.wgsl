struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 8>;

var<private> global1: array<Struct_1, 13>;

var<private> global2: array<Struct_1, 1>;

var<private> global3: u32 = 0u;

var<private> global4: array<i32, 30> = array<i32, 30>(1i, i32(-2147483648), 2147483647i, -13100i, i32(-2147483648), -2754i, i32(-2147483648), 20866i, 1i, -59136i, -1i, -6989i, -1i, 2147483647i, 7523i, 31036i, 0i, 1i, -36590i, -5893i, -18957i, -1i, -11179i, 64703i, 36445i, -25083i, i32(-2147483648), 5205i, 2147483647i, 25676i);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32) -> vec2<bool> {
    let var_0 = vec3<i32>(~global4[_wgslsmith_index_u32(33501u, 30u)], 19355i, 57422i);
    var var_1 = Struct_1(vec4<bool>(true, true, true, _wgslsmith_sub_u32(~u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(30722u, u_input.a, 23005u), vec3<u32>(33550u, 1u, u_input.a))) <= 0u));
    global3 = countOneBits(~(~22783u));
    var var_2 = global1[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 13u)];
    var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.xw, countOneBits(vec2<u32>(u_input.a, u_input.b.x) << (_wgslsmith_mult_vec2_u32(u_input.b.wx, ~u_input.b.yw) % vec2<u32>(32u)))), 1u)];
    return var_2.a.zy;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: vec4<u32>, arg_3: vec3<u32>) -> u32 {
    let var_0 = !arg_1.xyw;
    global2 = array<Struct_1, 1>();
    let var_1 = global2[_wgslsmith_index_u32(reverseBits(arg_2.x), 1u)];
    global0 = array<vec3<u32>, 8>();
    let var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(270f, _wgslsmith_f_op_f32(select(-1022f, -250f, false)), _wgslsmith_f_op_f32(floor(-433f)), _wgslsmith_f_op_f32(1497f * 1034f)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -1000f, 304f, 338f), vec4<f32>(-1595f, 250f, -566f, 1213f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-326f, 1000f, -102f, -792f), vec4<f32>(-2351f, -283f, 165f, -586f), arg_1.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(231f, -101f, -1015f, 208f), vec4<f32>(648f, 432f, 280f, 761f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1673f, 254f, 163f, 1299f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(-181f, -1000f, 1824f, 1000f), all(var_1.a.zzy))), vec4<f32>(-1040f, 288f, _wgslsmith_f_op_f32(floor(-1000f)), -565f)))));
    return arg_2.x;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> u32 {
    var var_0 = func_4(select(select(!func_3(2349f), vec2<bool>(any(arg_2.a), true), true), vec2<bool>(any(!vec4<bool>(arg_2.a.x, arg_3, true, false)), false), select(arg_2.a.zx, vec2<bool>(true, arg_3 && arg_2.a.x), !arg_3 || arg_2.a.x)), vec4<bool>(any(!vec2<bool>(arg_2.a.x, true)), false, false, true), _wgslsmith_mult_vec4_u32(abs(u_input.b), u_input.b), vec3<u32>(4294967295u, countOneBits(u_input.a), 36389u));
    global4 = array<i32, 30>();
    let var_1 = u_input.b.x;
    var_0 = 12376u;
    let var_2 = _wgslsmith_dot_vec4_u32(~(~vec4<u32>(35913u, 4294967295u, var_1, 4294967295u)) >> (~abs(_wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 40957u, 29242u, 4294967295u))) % vec4<u32>(32u)), select(~(vec4<u32>(u_input.b.x, 1u, var_1, 41711u) | ~u_input.b), firstTrailingBit(select(u_input.b & u_input.b, vec4<u32>(u_input.a, 4294967295u, var_1, arg_0), any(arg_2.a.zyy))), !(!select(arg_2.a, vec4<bool>(false, false, true, arg_2.a.x), arg_2.a))));
    return ~_wgslsmith_mod_u32(u_input.b.x, reverseBits(arg_1));
}

fn func_1() -> f32 {
    var var_0 = 4294967295u;
    global3 = ~(~abs(_wgslsmith_mult_u32(u_input.a, ~0u)));
    var var_1 = Struct_1(!select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true))));
    var var_2 = -(2147483647i & -global4[_wgslsmith_index_u32(~func_2(16689u, u_input.a, global2[_wgslsmith_index_u32(u_input.a, 1u)], var_1.a.x), 30u)]);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-550f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1104f, -732f)) + -1875f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 13>();
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-318f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-953f)), _wgslsmith_f_op_f32(f32(-1f) * -837f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - 1f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-1565f, 239f), _wgslsmith_f_op_f32(-1483f * -2195f), _wgslsmith_f_op_f32(select(1097f, -677f, true))))));
    var var_1 = Struct_1(!vec4<bool>(false, true, _wgslsmith_f_op_f32(abs(var_0.x)) != 440f, any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)))));
    var var_2 = select(!var_1.a.yzx, !vec3<bool>(any(vec2<bool>(true, true)), !any(var_1.a.xzy), !any(vec4<bool>(true, true, true, var_1.a.x))), true);
    var_1 = Struct_1(!vec4<bool>(var_1.a.x | (u_input.c == -12635i), !var_2.x & true, all(vec3<bool>(var_2.x, var_1.a.x, var_1.a.x)), func_3(_wgslsmith_div_f32(var_0.x, 485f)).x));
    let var_3 = global1[_wgslsmith_index_u32(~(~(~u_input.b.x)), 13u)];
    global0 = array<vec3<u32>, 8>();
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(168f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -328f) * var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.x - var_0.x), select(min(vec2<u32>(_wgslsmith_div_u32(156897u, u_input.a), _wgslsmith_sub_u32(23160u, 16991u)), min(~vec2<u32>(u_input.b.x, u_input.b.x), countOneBits(u_input.b.zw))), _wgslsmith_mult_vec2_u32(vec2<u32>(reverseBits(34726u), u_input.b.x), u_input.b.xy), !var_3.a.x));
}

