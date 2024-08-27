struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<f32, 26>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: vec4<bool>) -> bool {
    let var_0 = Struct_3(Struct_1(select(!(!arg_2.xwx), !arg_2.zyx, arg_1.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 0u, 28578u, 0u), vec4<u32>(92586u, 4294967295u, 0u, 32040u), vec4<u32>(1u, 105057u, 0u, 4294967295u)), ~vec4<u32>(14076u, 1u, 37191u, 44770u)) << (~firstLeadingBit(vec4<u32>(26166u, 4294967295u, 1u, 0u)) % vec4<u32>(32u)), reverseBits(vec4<u32>(_wgslsmith_div_u32(1u, 89u), ~1u, firstTrailingBit(35598u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(0u, 6519u))))), 1i, arg_1.x, Struct_2(Struct_1(!vec3<bool>(true, false, arg_1.x))));
    var var_1 = max(54009u, ~(~var_0.b));
    var var_2 = select(vec2<bool>(any(!arg_2.yy), all(select(arg_2.zw, !arg_1, select(var_0.a.a.x, arg_2.x, true)))), vec2<bool>(true & (4294967295u > (49490u & var_0.b)), !var_0.d), !((arg_2.x || arg_2.x) & arg_1.x) | all(arg_1));
    var_1 = firstTrailingBit(4966u);
    let var_3 = var_0.a;
    return true;
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_2(Struct_1(select(arg_2.a, vec3<bool>(all(vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, true)), func_3(7101i, vec2<bool>(false, arg_2.a.x), vec4<bool>(true, arg_2.a.x, false, arg_2.a.x)), !arg_2.a.x), vec3<bool>(false, arg_1 > -399f, u_input.c <= 1i))));
    let var_1 = !any(arg_2.a.xx);
    let var_2 = Struct_3(Struct_1(var_0.a.a), _wgslsmith_mult_u32(~_wgslsmith_clamp_u32(1u, 76317u, _wgslsmith_clamp_u32(3563u, 10933u, 32299u)), reverseBits(~1u)), 1i, var_0.a.a.x, Struct_2(Struct_1(select(vec3<bool>(true, true, true), arg_2.a, vec3<bool>(var_1, false, true)))));
    let var_3 = var_2;
    global0 = var_2.b;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~(var_2.b | _wgslsmith_dot_vec3_u32(vec3<u32>(9947u, var_2.b, var_3.b), vec3<u32>(1u, 0u, 30629u))), 26u)] * -1363f), 287f);
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    global1 = array<f32, 26>();
    global0 = ~1u;
    var var_0 = -587f;
    let var_1 = _wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(countOneBits(~1u), 26u)], 498f, arg_0.a));
    global0 = 27641u;
    return Struct_1(select(arg_0.a.a, !arg_0.a.a, select(select(arg_0.a.a, select(arg_0.a.a, vec3<bool>(arg_0.a.a.x, arg_0.a.a.x, false), vec3<bool>(arg_0.a.a.x, arg_0.a.a.x, true)), true), arg_0.a.a, !select(vec3<bool>(arg_0.a.a.x, false, false), vec3<bool>(arg_0.a.a.x, arg_0.a.a.x, true), arg_0.a.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global1 = array<f32, 26>();
    var var_1 = Struct_3(Struct_1(!vec3<bool>(!var_0, true, false)), ~(~(~115803u)), 2147483647i ^ u_input.d, var_0, Struct_2(func_1(Struct_2(Struct_1(vec3<bool>(true, true, var_0))))));
    let var_2 = func_1(Struct_2(var_1.e.a));
    global1 = array<f32, 26>();
    global0 = _wgslsmith_div_u32(var_1.b, 1u);
    global0 = 40549u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(270f, global1[_wgslsmith_index_u32(var_1.b, 26u)], -104f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(733f, global1[_wgslsmith_index_u32(var_1.b, 26u)], global1[_wgslsmith_index_u32(var_1.b, 26u)]))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1425f, 926f, 1000f)), vec3<f32>(-1230f, -1855f, global1[_wgslsmith_index_u32(var_1.b, 26u)]))), var_0)) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.b, 26u)])), 1432f, 358f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1[_wgslsmith_index_u32(var_1.b, 26u)], 1458f, global1[_wgslsmith_index_u32(35038u, 26u)], 1538f), vec4<f32>(global1[_wgslsmith_index_u32(var_1.b, 26u)], 225f, 497f, global1[_wgslsmith_index_u32(var_1.b, 26u)]))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1[_wgslsmith_index_u32(27780u, 26u)], 331f, global1[_wgslsmith_index_u32(0u, 26u)], -1766f))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(50038u, 26u)], _wgslsmith_f_op_f32(trunc(1893f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(60495u, 26u)]), -1711f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1[_wgslsmith_index_u32(0u, 26u)], 195f, global1[_wgslsmith_index_u32(var_1.b, 26u)], global1[_wgslsmith_index_u32(var_1.b, 26u)]))), vec4<f32>(global1[_wgslsmith_index_u32(var_1.b, 26u)], global1[_wgslsmith_index_u32(1u, 26u)], 1484f, -357f))), var_0)))), vec3<i32>(firstLeadingBit(~u_input.d), -1i, ~_wgslsmith_mod_i32(~u_input.b, u_input.b)));
}

