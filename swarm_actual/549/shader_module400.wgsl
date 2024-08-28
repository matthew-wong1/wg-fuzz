struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true));

var<private> global1: Struct_2 = Struct_2(vec2<f32>(-573f, -2197f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec3<f32>) -> vec2<bool> {
    let var_0 = arg_2.b;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(step(arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(2338f, var_0.x))))))));
    let var_2 = Struct_1(-2147483647i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, 1789f, global1.a.x, arg_0.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, arg_0.a.x, var_0.x, arg_0.a.x)))), vec4<f32>(global1.a.x, -321f, 1399f, _wgslsmith_f_op_f32(ceil(699f))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 250f, var_1.a, 470f)) * vec4<f32>(var_1.a, arg_0.a.x, arg_0.a.x, arg_2.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(342f, 850f, 1170f, 940f)))), 0u);
    var_1 = Struct_3(-1000f);
    var var_3 = Struct_3(102f);
    return arg_1.zz;
}

fn func_2(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = vec2<bool>(true, all(func_3(Struct_2(global1.a), global0[_wgslsmith_index_u32(~40283u, 5u)], Struct_1(max(2147483647i, arg_0.a), vec4<f32>(global1.a.x, -107f, global1.a.x, -590f), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c, arg_0.c, u_input.d, u_input.d), vec4<u32>(u_input.d, 40182u, arg_0.c, 54781u))), _wgslsmith_f_op_vec3_f32(arg_0.b.zwy + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1060f, global1.a.x, global1.a.x))))));
    global1 = Struct_2(arg_0.b.yx);
    let var_1 = Struct_3(_wgslsmith_div_f32(-1398f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1348f * arg_0.b.x))))));
    var var_2 = Struct_3(-262f);
    var var_3 = u_input.e.x;
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(142f, 1136f) + vec2<f32>(-2397f, -596f)) - vec2<f32>(var_2.a, -1000f)) * vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_div_f32(982f, var_2.a))))));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.a + vec2<f32>(arg_0.b.x, global1.a.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, arg_1))), _wgslsmith_f_op_vec2_f32(func_2(arg_0)))));
    var var_1 = u_input.a.xxy;
    var_0 = _wgslsmith_f_op_vec2_f32(func_2(Struct_1(u_input.c, vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(827f + 280f), _wgslsmith_f_op_f32(-447f + arg_1))), -383f, -1519f), arg_0.c)));
    return Struct_1(reverseBits(_wgslsmith_clamp_i32(abs(19658i >> (1u % 32u)), ~1i, -abs(arg_0.a))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, 1566f, global1.a.x, global1.a.x), _wgslsmith_f_op_vec4_f32(sign(arg_0.b)), func_3(Struct_2(vec2<f32>(-797f, 1757f)), vec3<bool>(false, false, true), arg_0, vec3<f32>(-1209f, global1.a.x, global1.a.x)).x))))), abs(~(u_input.e.x | 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -322f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.a.x), global1.a.x, true))), -3085f));
    let var_1 = global1.a;
    var var_2 = func_1(Struct_1(u_input.c >> (~u_input.e.x % 32u), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-1000f - 1000f)), var_1.x, -1585f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(673f, -781f)) * _wgslsmith_f_op_f32(-var_0.a))), u_input.e.x), _wgslsmith_f_op_f32(sign(438f)));
    let var_3 = Struct_1(_wgslsmith_mod_i32(var_2.a, 0i), var_2.b, ~(~(u_input.d | ~46011u)));
    let var_4 = Struct_3(_wgslsmith_f_op_f32(step(var_1.x, 656f)));
    global0 = array<vec3<bool>, 5>();
    var_0 = var_4;
    let var_5 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(~(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 23850i, 2147483647i, -46156i), u_input.a)) ^ select(vec4<i32>(44617i, 21855i, u_input.b, -2147483647i), firstTrailingBit(u_input.a), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true)))), u_input.a.zx, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(2393f * 1340f), _wgslsmith_f_op_f32(var_2.b.x - var_4.a), -318f))))), ~select(vec4<i32>(var_2.a, _wgslsmith_dot_vec3_i32(u_input.a.zzw, vec3<i32>(var_3.a, -16812i, 86i)), ~var_5, -var_3.a), u_input.a, vec4<bool>(true, all(vec3<bool>(true, true, true)), false, var_2.b.x < 131f)));
}

