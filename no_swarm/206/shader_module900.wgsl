struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true));

var<private> global1: array<bool, 18> = array<bool, 18>(false, true, false, false, true, true, true, true, false, true, false, true, false, false, true, true, false, true);

var<private> global2: Struct_1 = Struct_1(true);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global2 = Struct_1(global2.a);
    var var_0 = 62015u;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(112f, _wgslsmith_f_op_f32(-1653f + 181f))))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<u32>) -> f32 {
    let var_0 = -vec2<i32>(_wgslsmith_mult_i32(u_input.a, _wgslsmith_mod_i32(select(2147483647i, -23476i, global1[_wgslsmith_index_u32(arg_1.x, 18u)]), abs(arg_0.x))), arg_0.x);
    let var_1 = global0[_wgslsmith_index_u32(42911u, 30u)];
    var var_2 = true;
    global2 = global0[_wgslsmith_index_u32(abs(~firstTrailingBit(reverseBits(arg_1.x)) | countOneBits(arg_1.x)), 30u)];
    var var_3 = arg_1;
    return 617f;
}

fn func_1(arg_0: vec4<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1368f, -540f, -1000f, -442f)))))) + vec4<f32>(_wgslsmith_div_f32(-2034f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-748f)) + -1000f)), -116f, -200f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(435f, -779f, global2.a)) * 201f))));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -688f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-517f)) - _wgslsmith_f_op_f32(818f * var_0.x)) * var_0.x)));
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-490f)))) + _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(1000f + var_0.x))), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec2_f32(var_0.yw + _wgslsmith_f_op_vec2_f32(-vec2<f32>(2012f, _wgslsmith_f_op_f32(trunc(var_0.x))))));
    let var_2 = vec3<i32>(select(u_input.a, _wgslsmith_div_i32(u_input.a, 55774i) ^ select(-59525i, ~u_input.a, arg_0.x <= arg_0.x), false), i32(-1i) * -u_input.a, u_input.a | -2147483647i);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1415f - _wgslsmith_f_op_f32(func_2(Struct_1(global2.a), Struct_1(global1[_wgslsmith_index_u32(32221u, 18u)]), global0[_wgslsmith_index_u32(firstTrailingBit(arg_0.x), 30u)], global0[_wgslsmith_index_u32(arg_0.x, 30u)]))) + _wgslsmith_f_op_f32(1098f + _wgslsmith_f_op_f32(select(-739f, _wgslsmith_f_op_f32(func_3(var_2.zy, vec4<u32>(arg_0.x, 34380u, 4294967295u, 0u))), true)))), var_0.x);
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -1000f, all(vec4<bool>(true, global1[_wgslsmith_index_u32(52804u, 18u)], false, true)))) + -877f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1004f + 391f) - _wgslsmith_f_op_f32(trunc(1869f))));
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    var var_1 = global0[_wgslsmith_index_u32(~func_1(~vec4<u32>(~63305u, ~0u, 1u, ~1u)), 30u)];
    global2 = Struct_1(any(!select(vec4<bool>(var_1.a, var_0, true, true), select(vec4<bool>(false, true, var_1.a, var_1.a), vec4<bool>(false, true, var_0, var_1.a), vec4<bool>(global2.a, true, global2.a, true)), select(vec4<bool>(true, true, true, var_1.a), vec4<bool>(global2.a, global2.a, false, global1[_wgslsmith_index_u32(4294967295u, 18u)]), global2.a))));
    global0 = array<Struct_1, 30>();
    var var_2 = 20099u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 114093u), vec2<u32>(40313u, 4294967295u)), 47398u, 4294967295u), vec3<u32>(~1u, select(0u, 1u, false), _wgslsmith_mult_u32(1u, 4294967295u)) ^ ~vec3<u32>(1u, 1u, 1u)), vec2<i32>(u_input.a, u_input.a) ^ countOneBits(firstLeadingBit(-vec2<i32>(u_input.a, u_input.a))), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 18543u), vec2<u32>(1u, 38816u)), ~vec2<u32>(4294967295u, 25829u)), firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(16213u, 0u), vec2<u32>(0u, 73360u)))), vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(61039u, 38359u), vec2<u32>(49209u, 50906u), vec2<u32>(1u, 0u)), vec2<u32>(0u, 1993u)), ~func_1(vec4<u32>(4294967295u, 1u, 1u, 49985u)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-560f + _wgslsmith_f_op_f32(f32(-1f) * -852f)), _wgslsmith_f_op_f32(round(-783f))), 1078f, 1000f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(209f - -123f) - -113f))));
}

