struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 32>;

var<private> global1: array<u32, 1>;

var<private> global2: array<Struct_2, 11>;

var<private> global3: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec2<i32>(-1i, 2147483647i)), Struct_1(vec2<i32>(-53341i, -27276i)), Struct_1(vec2<i32>(1i, -17072i)), Struct_1(vec2<i32>(1i, 2147483647i)), Struct_1(vec2<i32>(-1i, 0i)), Struct_1(vec2<i32>(i32(-2147483648), -10511i)), Struct_1(vec2<i32>(1i, -66683i)), Struct_1(vec2<i32>(-66990i, -5685i)), Struct_1(vec2<i32>(i32(-2147483648), -1i)), Struct_1(vec2<i32>(-27054i, 2147483647i)), Struct_1(vec2<i32>(42106i, 2147483647i)), Struct_1(vec2<i32>(816i, -1i)), Struct_1(vec2<i32>(25800i, -54703i)), Struct_1(vec2<i32>(18479i, 0i)), Struct_1(vec2<i32>(56394i, 0i)), Struct_1(vec2<i32>(1i, 2147483647i)), Struct_1(vec2<i32>(2147483647i, -3909i)), Struct_1(vec2<i32>(1i, 21684i)), Struct_1(vec2<i32>(2147483647i, 15932i)), Struct_1(vec2<i32>(-1i, 30012i)), Struct_1(vec2<i32>(-27814i, 2826i)), Struct_1(vec2<i32>(16766i, 0i)), Struct_1(vec2<i32>(-1i, 6713i)), Struct_1(vec2<i32>(-2597i, i32(-2147483648))), Struct_1(vec2<i32>(-1i, -5017i)), Struct_1(vec2<i32>(51293i, -1i)), Struct_1(vec2<i32>(-3588i, i32(-2147483648))));

var<private> global4: array<Struct_2, 9>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec2<bool>) -> u32 {
    global4 = array<Struct_2, 9>();
    var var_0 = arg_1;
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(937f, 951f, -1709f), vec3<f32>(-281f, -1577f, 116f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
    let var_2 = _wgslsmith_add_u32(global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(reverseBits(40852u), 36286u), 1u)], global1[_wgslsmith_index_u32(u_input.a, 1u)] & abs(~60913u));
    return u_input.c.x;
}

fn func_3(arg_0: u32, arg_1: vec4<i32>) -> u32 {
    let var_0 = global3[_wgslsmith_index_u32(u_input.a ^ 4294967295u, 27u)];
    let var_1 = 1u;
    let var_2 = Struct_1(vec2<i32>(-firstTrailingBit(~(-2147483647i)), firstTrailingBit(_wgslsmith_dot_vec3_i32(~arg_1.wxw, vec3<i32>(-24300i, -63079i, u_input.b)))));
    var var_3 = select(vec4<bool>(any(vec3<bool>(any(vec2<bool>(true, false)), true, true)), (u_input.a > ~arg_0) | all(vec3<bool>(false, false, false)), any(vec4<bool>(true, true, 0u <= var_1, true)), any(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false))))), !select(vec4<bool>(any(vec2<bool>(true, true)), true, any(vec4<bool>(false, true, true, true)), true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false))), vec4<bool>(true, true, u_input.a != 0u, any(vec2<bool>(false, true)))), !vec4<bool>(false, false, true, any(vec4<bool>(true, true, true, true))));
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(trunc(732f)), _wgslsmith_f_op_f32(-1953f - _wgslsmith_f_op_f32(441f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(450f + 236f))))), -770f);
    return ~_wgslsmith_clamp_u32(~var_1, 4294967295u, 4294967295u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 0u, 38897u), vec3<u32>(arg_0, arg_0, 11422u)) % 32u));
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: vec3<i32>) -> bool {
    var var_0 = global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~(~func_3(35569u ^ u_input.c.x, ~vec4<i32>(arg_2.x, 10146i, 21834i, -2147483647i))) | 1u, 1u)], 27u)];
    global2 = array<Struct_2, 11>();
    let var_1 = u_input.c.x >> (global1[_wgslsmith_index_u32(5193u, 1u)] % 32u);
    global1 = array<u32, 1>();
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(225f))))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1828f)) + _wgslsmith_f_op_f32(189f - -980f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2221f + 517f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1553f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-483f))), !arg_1)) * _wgslsmith_f_op_f32(-1f)));
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_2, 9>();
    let var_0 = _wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 65680u, global1[_wgslsmith_index_u32(~u_input.c.x, 1u)], func_1(global3[_wgslsmith_index_u32(0u, 27u)], Struct_1(vec2<i32>(u_input.b, u_input.b)), 1i, vec2<bool>(false, false))), u_input.c);
    let var_1 = (_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -596f))))) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(796f + 1809f) - _wgslsmith_f_op_f32(step(119f, -926f))), _wgslsmith_div_f32(298f, -111f)))) | all(vec3<bool>(u_input.b != _wgslsmith_sub_i32(u_input.b, 38194i), select(func_2(vec4<bool>(false, true, true, true), true, vec3<i32>(u_input.b, u_input.b, u_input.b)), true, true), all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(70698u, 1u)]);
}

