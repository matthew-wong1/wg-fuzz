struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 26>;

var<private> global1: array<vec4<f32>, 30>;

var<private> global2: array<vec4<bool>, 24> = array<vec4<bool>, 24>(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false));

var<private> global3: array<bool, 32>;

var<private> global4: vec3<u32> = vec3<u32>(1u, 4294967295u, 0u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<i32>) -> vec3<i32> {
    global3 = array<bool, 32>();
    global4 = max(min(_wgslsmith_div_vec3_u32(vec3<u32>(37648u, global4.x, u_input.a), vec3<u32>(4294967295u, global4.x, global4.x)) | ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(global4.x, 7760u, 0u)), ~(~(~vec3<u32>(20767u, global4.x, u_input.a)))), select(vec3<u32>(global4.x, 68432u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 88214u, 61614u), vec3<u32>(global4.x, 15746u, global4.x)), min(global4.x, u_input.a))), ~vec3<u32>(global4.x, global4.x, global4.x) | abs(vec3<u32>(1u, global4.x, 36469u)), select(!vec3<bool>(true, false, global3[_wgslsmith_index_u32(global4.x, 32u)]), select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 32u)], false, true), vec3<bool>(true, false, true), global3[_wgslsmith_index_u32(max(u_input.a, global4.x), 32u)]), vec3<bool>(true, !global3[_wgslsmith_index_u32(0u, 32u)], 29226u != global4.x))));
    var var_0 = _wgslsmith_f_op_f32(-1588f * -1622f);
    global1 = array<vec4<f32>, 30>();
    return vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), -select(vec3<i32>(-17950i, arg_0.x, 2147483647i), vec3<i32>(u_input.b.x, arg_0.x, arg_0.x), global3[_wgslsmith_index_u32(u_input.a, 32u)]));
}

fn func_2(arg_0: Struct_4, arg_1: u32) -> Struct_4 {
    var var_0 = 1i;
    var var_1 = func_3(vec2<i32>(_wgslsmith_div_i32(-1i, u_input.b.x | -17784i), 2147483647i & max(1i, u_input.b.x)));
    let var_2 = 847f;
    var_0 = _wgslsmith_sub_i32(-_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), -2147483647i);
    var var_3 = ~abs(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.b.x, u_input.b.x, var_1.x) | vec4<i32>(6335i, 9223i, var_1.x, u_input.b.x), vec4<i32>(var_1.x, -54594i, 3044i, -2147483647i)) << (~(global4.x & 0u) % 32u));
    return Struct_4(firstLeadingBit(vec2<u32>(~(arg_0.a.x | global4.x), arg_1)));
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: i32) -> Struct_4 {
    let var_0 = select(~max(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global4.x, 0u, global4.x), vec4<u32>(1u, u_input.a, u_input.a, u_input.a))), ~4294967295u, false & global3[_wgslsmith_index_u32(39298u, 32u)]) != 136290u;
    return func_2(global0[_wgslsmith_index_u32(global4.x, 26u)], min(~min(global4.x, _wgslsmith_add_u32(1u, u_input.a)), ~_wgslsmith_div_u32(abs(u_input.a), 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(true, u_input.b);
    global0 = array<Struct_4, 26>();
    var var_1 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(600f - 1000f) * _wgslsmith_div_f32(677f, 328f))))), vec2<f32>(-1190f, -1228f), var_0.b.x);
    let var_2 = min(u_input.b, u_input.b | vec2<i32>(var_0.b.x, min(u_input.b.x, 0i) >> (~var_1.a.x % 32u)));
    let var_3 = var_0;
    var var_4 = false;
    global4 = ~vec3<u32>(~firstLeadingBit(10863u) << (global4.x % 32u), var_1.a.x, min(~func_1(659f, vec2<f32>(957f, 1541f), 47968i).a.x, var_1.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-168f, -1000f) * vec2<f32>(-1076f, -3279f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-489f, 1999f), vec2<f32>(-743f, -291f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1792f, 654f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1844f, -1023f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-538f, _wgslsmith_f_op_f32(1880f + -1462f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -220f)), -393f, 1f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(4294967295u, 30u)]))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1316f, -781f, 1944f), vec3<f32>(432f, -478f, -381f))), vec3<f32>(424f, 1050f, -325f), var_3.a)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-257f, 628f, -2094f), vec3<f32>(-1000f, 531f, 822f), true)) + vec3<f32>(-387f, -476f, -405f))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-836f, 191f, -1386f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1060f, -1893f, 136f) + vec3<f32>(-2212f, 609f, -1299f)))))));
}

