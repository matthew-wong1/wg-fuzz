struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

var<private> global1: u32 = 1u;

var<private> global2: array<Struct_1, 18>;

var<private> global3: array<vec4<f32>, 18> = array<vec4<f32>, 18>(vec4<f32>(681f, 3049f, -858f, 623f), vec4<f32>(1893f, -472f, 393f, 381f), vec4<f32>(-476f, -243f, 809f, -1000f), vec4<f32>(-101f, -1000f, 1592f, 1272f), vec4<f32>(1792f, 2342f, -786f, -1000f), vec4<f32>(-862f, -195f, 104f, -1000f), vec4<f32>(-1094f, 2499f, -914f, -305f), vec4<f32>(-569f, 2075f, 1590f, -783f), vec4<f32>(278f, -498f, 679f, 746f), vec4<f32>(2593f, 3005f, 397f, 1006f), vec4<f32>(1837f, -148f, 1863f, 624f), vec4<f32>(-1544f, -200f, -556f, 1023f), vec4<f32>(360f, 893f, -543f, -531f), vec4<f32>(365f, 492f, 211f, 1000f), vec4<f32>(675f, 641f, 460f, 834f), vec4<f32>(371f, 269f, 2095f, 1571f), vec4<f32>(810f, -1000f, -1096f, -209f), vec4<f32>(-2726f, -141f, 1234f, 1532f));

var<private> global4: bool = true;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1))) - -575f);
    let var_1 = arg_2;
    global0 = array<Struct_1, 2>();
    global2 = array<Struct_1, 18>();
    global1 = 35368u;
    return -428f;
}

fn func_2(arg_0: i32) -> u32 {
    global1 = abs(_wgslsmith_add_u32(~(~1u), 1u));
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-615f, -886f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(_wgslsmith_add_u32(11488u, 1u), -2323f, Struct_1(vec4<u32>(28895u, 69056u, 7178u, 46266u), vec4<f32>(689f, -132f, -1000f, -1831f), vec2<u32>(9513u, 64240u), true, -225f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-303f, -1658f)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-269f, 1530f, -223f))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(475f, 1000f, -297f))))))));
    var var_1 = vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(~(u_input.a & -33037i), u_input.a ^ u_input.a, _wgslsmith_sub_i32(-43194i, arg_0 | arg_0)), vec3<i32>(arg_0, arg_0, arg_0) << (~vec3<u32>(36306u, 44781u, 78709u) % vec3<u32>(32u))), i32(-1i) * -1i, -1i, ~(i32(-1i) * -(~u_input.a)));
    global2 = array<Struct_1, 18>();
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(0u, -1457f, Struct_1(vec4<u32>(1u, 1u, 1u, 4294967295u), vec4<f32>(var_0.x, -369f, 496f, -1559f), vec2<u32>(0u, 4294967295u), false, var_0.x)))), var_0.x, -1126f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1597f, -1187f, var_0.x) + vec4<f32>(var_0.x, -1520f, -121f, -260f))) * global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(11806u, 8104u, 1u), vec3<u32>(0u, 8672u, 33187u)), 0u), 18u)]), !all(vec3<bool>(true, false, false))))));
    return 1u;
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: bool) -> u32 {
    global3 = array<vec4<f32>, 18>();
    let var_0 = !(!vec4<bool>(true, true, true, all(vec2<bool>(true, true))));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, func_2((~u_input.a ^ (23743i ^ u_input.a)) | _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.a, u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 49094i))))), 18u)];
    global0 = array<Struct_1, 2>();
    let var_2 = 13217u & _wgslsmith_dot_vec3_u32(~vec3<u32>(899u, var_1.c.x, ~var_1.c.x), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.x, 105289u, 0u), min(vec3<u32>(var_1.a.x, 36918u, 7114u), vec3<u32>(1u, 4294967295u, 0u))), abs(var_1.a.x << (var_1.a.x % 32u)), 113u));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(_wgslsmith_mod_u32(4294967295u, ~func_1(_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(1u, 18u)]), _wgslsmith_f_op_f32(floor(-1326f)), true)), ~(~func_2(-29637i)));
    global2 = array<Struct_1, 18>();
    global2 = array<Struct_1, 18>();
    let var_1 = global2[_wgslsmith_index_u32(~(~var_0.x), 18u)];
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(33221u, ~_wgslsmith_clamp_u32(var_1.a.x, var_0.x << (30437u % 32u), 1u), 32610u, 35409u), var_1.a), 18u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(var_2.b.wx, vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(0u, 652f, global2[_wgslsmith_index_u32(26257u, 18u)])), _wgslsmith_f_op_f32(-var_2.b.x), select(var_2.d, true, var_1.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-216f, var_1.e))))), _wgslsmith_f_op_f32(exp2(var_1.b.x)), func_1(global3[_wgslsmith_index_u32(countOneBits(~firstTrailingBit(0u)), 18u)], 666f, any(!vec3<bool>(false, var_1.d, var_2.d))), firstTrailingBit(var_2.c.x));
}

