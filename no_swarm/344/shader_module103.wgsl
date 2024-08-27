struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 12> = array<vec3<f32>, 12>(vec3<f32>(-1000f, -397f, -1140f), vec3<f32>(1257f, -1095f, 189f), vec3<f32>(-694f, -780f, 251f), vec3<f32>(-830f, 454f, -1000f), vec3<f32>(294f, -434f, 568f), vec3<f32>(-630f, -688f, -731f), vec3<f32>(-1018f, 718f, -991f), vec3<f32>(221f, -1000f, 1399f), vec3<f32>(-361f, -251f, -1442f), vec3<f32>(-695f, 1211f, -832f), vec3<f32>(-1532f, -1318f, 2705f), vec3<f32>(-783f, -553f, 500f));

var<private> global1: array<vec2<i32>, 12>;

var<private> global2: bool;

var<private> global3: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> f32 {
    let var_0 = ~(~((arg_0.b.xx ^ abs(arg_0.b.yz)) | _wgslsmith_clamp_vec2_u32(abs(vec2<u32>(u_input.b, 8899u)), vec2<u32>(u_input.b, u_input.b), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(1u, 0u), arg_0.a.yy))));
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1247f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1504f, -1000f) * vec2<f32>(-1036f, 1000f)))), vec2<f32>(565f, 1f)) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(trunc(612f)), -302f))))));
    global3 = array<Struct_1, 26>();
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global0[_wgslsmith_index_u32(u_input.b, 12u)], global0[_wgslsmith_index_u32(1441u, 12u)]))) * vec3<f32>(_wgslsmith_f_op_f32(min(var_1.x, var_1.x)), _wgslsmith_f_op_f32(trunc(var_1.x)), -912f))));
    var var_3 = !all(!vec3<bool>(all(arg_1.a), false, true));
    return -427f;
}

fn func_2(arg_0: u32) -> i32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-337f))), -794f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1836f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -472f), _wgslsmith_f_op_f32(floor(1f)))), _wgslsmith_div_f32(510f, _wgslsmith_f_op_f32(min(740f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(973f)), _wgslsmith_f_op_f32(func_3(Struct_3(vec4<u32>(u_input.b, u_input.b, 0u, u_input.a), vec3<u32>(u_input.a, u_input.b, arg_0)), global3[_wgslsmith_index_u32(1u, 26u)]))))))));
    return firstTrailingBit(firstLeadingBit(2147483647i)) & firstTrailingBit(2145i);
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = Struct_3(vec4<u32>(5900u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.b, u_input.b, 59606u, u_input.b) ^ vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u), vec4<bool>(true, true, true, true)), ~abs(vec4<u32>(0u, 0u, 61585u, 1u))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(2467u, u_input.a, 0u), vec3<u32>(u_input.a, u_input.b, 20124u)), u_input.a), ~vec3<u32>(reverseBits(u_input.b ^ 52487u), select(~u_input.b, ~u_input.b, any(vec2<bool>(true, false))), ~1u & u_input.a));
    global2 = ~(-select(func_2(u_input.a), -13966i, all(vec4<bool>(true, true, false, false)))) != -(~max(0i, -287i << (1u % 32u)));
    var var_1 = Struct_1(vec2<bool>(all(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true))), true));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1000f, 807f, -335f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(162f, arg_0, arg_0, -710f), vec4<f32>(245f, arg_0, 140f, -1019f))), select(vec4<bool>(var_1.a.x, true, var_1.a.x, var_1.a.x), vec4<bool>(var_1.a.x, var_1.a.x, false, var_1.a.x), vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x))))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1080f), arg_0, -374f)))));
    global2 = true;
    return Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.x, var_2.x))), arg_0) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0, -2416f))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>) -> vec2<bool> {
    let var_0 = all(!(!vec3<bool>(false, arg_0.a.x >= arg_0.a.x, true)));
    return select(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec3<bool>(var_0, true, var_0)))), !select(!(!vec2<bool>(var_0, true)), select(!vec2<bool>(true, var_0), vec2<bool>(true, true), vec2<bool>(var_0, false)), true), !((arg_0.a.x > arg_0.a.x) == select(all(vec3<bool>(true, var_0, var_0)), select(var_0, var_0, var_0), var_0 & true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 12>();
    var var_0 = func_4(func_1(-1987f), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-44873i, -1i, 1i), ~vec3<i32>(-68614i, 1i, 36111i)), 17706i, _wgslsmith_sub_i32(firstTrailingBit(-47692i), -20086i), 2147483647i), max(firstLeadingBit(vec4<i32>(1i, 37057i, 8984i, -2147483647i)), abs(-vec4<i32>(27224i, 26435i, 0i, 2147483647i)))));
    var var_1 = Struct_1(!(!(!vec2<bool>(false, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_mult_u32(min(32137u << (u_input.a % 32u), 51996u), ~(~0u)), u_input.a), vec3<u32>((reverseBits(1u) << (~u_input.a % 32u)) << (u_input.a % 32u), select(4294967295u, min(u_input.b, u_input.b) << (u_input.a % 32u), true), ~u_input.b), func_2(_wgslsmith_div_u32(u_input.a, _wgslsmith_clamp_u32(u_input.a, u_input.b, u_input.a)) | _wgslsmith_div_u32(0u, 0u | u_input.b)), reverseBits(~(~(vec2<u32>(1u, u_input.b) ^ vec2<u32>(11250u, 0u)))));
}

