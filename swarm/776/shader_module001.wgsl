struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: vec3<i32>,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: bool,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: vec4<i32>,
    d: vec4<u32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 9> = array<vec3<f32>, 9>(vec3<f32>(-1316f, -1788f, 765f), vec3<f32>(1000f, 258f, 165f), vec3<f32>(1000f, -1706f, 1934f), vec3<f32>(-693f, -1230f, 212f), vec3<f32>(-584f, 361f, -998f), vec3<f32>(1058f, -1289f, 841f), vec3<f32>(-406f, 1000f, 502f), vec3<f32>(940f, 1591f, 1405f), vec3<f32>(-383f, 1313f, 427f));

var<private> global1: f32 = 482f;

var<private> global2: f32 = 106f;

var<private> global3: array<u32, 4> = array<u32, 4>(4294967295u, 21570u, 1u, 1u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec4<u32>) -> vec2<f32> {
    var var_0 = select(-_wgslsmith_add_i32(-(~22711i), -2147483647i), abs(abs(arg_0.a.d)), any(vec2<bool>(true, true)));
    let var_1 = any(!(!vec4<bool>(arg_0.a.c.x, true, true, any(vec3<bool>(false, true, true)))));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-1000f + arg_0.a.a.x), _wgslsmith_f_op_f32(-arg_0.a.a.x), -1328f, arg_0.a.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.a.x, arg_0.a.a.x, 734f, arg_0.a.a.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.a.x, 388f, arg_0.a.a.x, arg_0.a.a.x))), false)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(423f, -612f, arg_0.a.a.x, arg_0.a.a.x), vec4<f32>(arg_0.a.a.x, -539f, 2427f, arg_0.a.a.x), arg_0.a.b)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1644f, -949f, -702f, arg_0.a.a.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(683f, arg_0.a.a.x, 1000f, arg_0.a.a.x) + vec4<f32>(arg_0.a.a.x, arg_0.a.a.x, 1016f, -2023f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-600f, -265f, -1611f, 319f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(415f, 1064f, arg_0.a.a.x, -244f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.a.x), -153f, _wgslsmith_f_op_f32(1325f - -495f), arg_0.a.a.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1174f, -1331f, arg_0.a.a.x, arg_0.a.a.x), vec4<f32>(1234f, arg_0.a.a.x, 1000f, -607f), false))))));
    let var_3 = 0i;
    let var_4 = arg_2.xwx;
    return _wgslsmith_div_vec2_f32(arg_0.a.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1324f, -345f) * var_2.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.x - var_2.x), _wgslsmith_f_op_f32(sign(arg_0.a.a.x)))))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<bool>) -> i32 {
    global0 = array<vec3<f32>, 9>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_2(Struct_1(vec2<f32>(645f, 672f), true, arg_1.zw, 22600i)), min(vec2<i32>(-2147483647i, -32828i), vec2<i32>(-1i, 0i)), vec4<u32>(u_input.a.x, 1u, u_input.b, arg_0.x) | vec4<u32>(22109u, 4294967295u, arg_0.x, 72444u))))), true, vec2<bool>(!any(select(arg_1, vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), false)), true), 1i);
    var var_1 = -28892i;
    var var_2 = _wgslsmith_f_op_f32(max(1328f, var_0.a.x));
    var_2 = 611f;
    return _wgslsmith_mult_i32(0i, min(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.d, var_0.d), countOneBits(vec2<i32>(var_0.d, -1i))), _wgslsmith_sub_i32(42103i, 0i)), 0i));
}

fn func_1() -> bool {
    var var_0 = Struct_5(~global3[_wgslsmith_index_u32(~((28006u | u_input.c) >> (global3[_wgslsmith_index_u32(u_input.c, 4u)] % 32u)), 4u)], true, vec4<i32>(func_2(vec3<u32>(1u, u_input.a.x, 18571u), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true))), 48389i, _wgslsmith_div_i32(66425i, reverseBits(-16872i)), -(-1i >> (~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(24060u, 4u)], 4u)], 4u)] % 32u))), ~(~vec4<u32>(23184u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 4u)], 4u)], _wgslsmith_clamp_u32(u_input.a.x, 24614u, 4294967295u), _wgslsmith_mult_u32(11012u, global3[_wgslsmith_index_u32(12748u, 4u)]))), Struct_4(_wgslsmith_add_u32(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(max(u_input.a.x, 0u), 4u)], u_input.b), 4294967295u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1494f, -1000f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1916f, -1411f) + vec2<f32>(958f, 1000f)))), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1089f, -2054f))), ~abs(50261i) <= _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-30834i, 1i), vec2<i32>(13655i, -2147483647i)), countOneBits(-8561i))));
    let var_1 = Struct_5(~(_wgslsmith_sub_u32(abs(1u), select(global3[_wgslsmith_index_u32(37549u, 4u)], 0u, true)) << (~var_0.a % 32u)), var_0.e.c.x > 644f, var_0.c >> (~var_0.d % vec4<u32>(32u)), vec4<u32>(~firstTrailingBit(global3[_wgslsmith_index_u32(0u, 4u)]), ~var_0.e.a, _wgslsmith_mod_u32(70823u, 4294967295u | u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(24587u, ~var_0.e.a), var_0.d.wx)), var_0.e);
    var var_2 = var_0.e.b.x;
    var var_3 = global0[_wgslsmith_index_u32(0u, 9u)];
    return -var_0.c.x != var_0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_1();
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -152f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1077f + 741f))))) - 491f), max(~(-2147483647i), 0i) << (_wgslsmith_clamp_u32(u_input.c, _wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(11810u ^ global3[_wgslsmith_index_u32(53234u, 4u)], 4u)], 91465u >> (global3[_wgslsmith_index_u32(1u, 4u)] % 32u), firstTrailingBit(u_input.c)), 31183u) % 32u), 687f);
}

