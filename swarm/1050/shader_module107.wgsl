struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<i32, 17>;

var<private> global2: array<vec3<bool>, 4> = array<vec3<bool>, 4>(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true));

var<private> global3: Struct_1 = Struct_1(0i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>) -> vec3<f32> {
    global1 = array<i32, 17>();
    let var_0 = 51999i;
    var var_1 = Struct_1(-max(min(global1[_wgslsmith_index_u32(35049u, 17u)] | 32131i, ~(-2147483647i)), -global1[_wgslsmith_index_u32(4294967295u, 17u)]));
    let var_2 = Struct_1(abs(~reverseBits(u_input.a)));
    let var_3 = select(_wgslsmith_f_op_f32(-1176f + global0.x) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(657f + -1179f), 266f)) + arg_1.x), true, true);
    return vec3<f32>(global0.x, arg_0, -486f);
}

fn func_3() -> vec3<u32> {
    global0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-272f, 1745f, -814f) + vec3<f32>(1398f, 1197f, global0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1897f, global0.x)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, global0.x, -1285f), vec3<f32>(-906f, -549f, global0.x)))))))));
    global1 = array<i32, 17>();
    let var_0 = Struct_1(~firstLeadingBit(global1[_wgslsmith_index_u32(~1u, 17u)]));
    global2 = array<vec3<bool>, 4>();
    var var_1 = _wgslsmith_add_i32(_wgslsmith_add_i32(1412i, ~(-u_input.d)), -_wgslsmith_div_i32(u_input.c, ~global1[_wgslsmith_index_u32(~1u, 17u)]));
    return _wgslsmith_mod_vec3_u32(max(vec3<u32>(select(4294967295u, 34860u, false) >> (~16831u % 32u), abs(_wgslsmith_div_u32(52854u, 4692u)), ~_wgslsmith_clamp_u32(10671u, 15736u, 1u)), vec3<u32>(1u, 1u, 1u)), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 12123u), vec3<u32>(1u, 49512u, 1u)), ~1u), reverseBits(1u), 4294967295u) | vec3<u32>(~1u, 24169u, ~1u));
}

fn func_1() -> vec3<i32> {
    global1 = array<i32, 17>();
    let var_0 = _wgslsmith_f_op_f32(ceil(global0.x));
    global1 = array<i32, 17>();
    let var_1 = !vec3<bool>(84501i > (-global1[_wgslsmith_index_u32(1u, 17u)] >> (_wgslsmith_mod_u32(0u, 18807u) % 32u)), false, true);
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(var_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.zx - vec2<f32>(var_0, global0.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(641f, -558f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -542f, var_0)), vec3<f32>(_wgslsmith_f_op_f32(abs(390f)), global0.x, var_0))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 159f, -1560f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1406f, 1016f, 936f) * vec3<f32>(global0.x, 104f, var_0)))))), false));
    return _wgslsmith_div_vec3_i32(~vec3<i32>(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(15453u, 17u)], global3.a), 2147483647i, global1[_wgslsmith_index_u32(countOneBits(60651u), 17u)]), ~(-(vec3<i32>(45377i, u_input.d, u_input.d) & vec3<i32>(global3.a, 2147483647i, u_input.b.x)))) << (~max(func_3(), firstLeadingBit(vec3<u32>(1u, 1u, 1u))) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(all(select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, global0.x >= 408f, true), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), true))), true, true);
    global2 = array<vec3<bool>, 4>();
    let var_1 = _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(func_1(), ~_wgslsmith_sub_vec3_i32(u_input.b.xwy, firstLeadingBit(vec3<i32>(-37558i, 0i, 2147483647i)))), -abs(abs(u_input.b.xzx & u_input.b.zzz)));
    let var_2 = Struct_1(-2147483647i);
    global2 = array<vec3<bool>, 4>();
    global1 = array<i32, 17>();
    var var_3 = -3414i;
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global0.x)))), ~(~max(~vec3<u32>(34368u, 89213u, 13993u), ~vec3<u32>(11285u, 4294967295u, 18552u))), _wgslsmith_f_op_f32(trunc(1842f)));
}

