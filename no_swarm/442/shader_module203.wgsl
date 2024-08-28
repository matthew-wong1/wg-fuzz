struct Struct_1 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(685f, true), Struct_1(311f, false), Struct_1(785f, false), Struct_1(897f, false), Struct_1(-1264f, true), Struct_1(639f, true), Struct_1(-605f, true), Struct_1(-693f, false), Struct_1(-1298f, true), Struct_1(-231f, true), Struct_1(292f, false), Struct_1(1624f, true), Struct_1(-227f, true), Struct_1(2410f, false), Struct_1(151f, false), Struct_1(-1635f, true), Struct_1(-1957f, true), Struct_1(880f, false), Struct_1(-1704f, true), Struct_1(434f, false), Struct_1(-1562f, false), Struct_1(546f, true));

var<private> global2: vec4<u32>;

var<private> global3: Struct_1 = Struct_1(2015f, true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec3<bool>) -> f32 {
    let var_0 = u_input.a.x;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3.a))), arg_2.x);
    return -1586f;
}

fn func_3(arg_0: f32) -> f32 {
    global1 = array<Struct_1, 22>();
    global0 = global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_clamp_u32(u_input.d, reverseBits(abs(1u)), 1u)), 22u)];
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(842f, 469f)), all(!(!vec4<bool>(global0.b, true, false, global3.b))));
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1005f)))))), 1060f), false);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(406f - global3.a) - -1000f) + _wgslsmith_f_op_f32(floor(-1686f))), true);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(191f * var_1.a), global0.a);
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_1) -> StorageBuffer {
    global0 = arg_1;
    let var_0 = 1739f;
    var var_1 = vec3<bool>(true, select(!global0.b | global3.b, global3.b & true, any(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, global3.b), global0.b), all(vec4<bool>(true, arg_1.b, arg_3.b, arg_3.b))))), arg_3.b);
    let var_2 = arg_1.a;
    var var_3 = _wgslsmith_f_op_f32(func_3(var_0));
    return StorageBuffer(_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(~(-1i), firstTrailingBit(-13057i), -46654i, u_input.c)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, -2147483647i, 2147483647i, 0i), abs(vec4<i32>(u_input.c, -2147483647i, u_input.b.x, u_input.c))) & countOneBits(-vec4<i32>(19097i, -1i, u_input.c, -43883i))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(global0.a, false);
    let var_0 = _wgslsmith_f_op_f32(step(-1655f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -858f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(any(vec2<bool>(global0.b, global0.b)), _wgslsmith_f_op_f32(1503f + global0.a), !vec3<bool>(global0.b, false, global3.b))) - 499f))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.a)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(930f - 2769f) + _wgslsmith_div_f32(global3.a, global0.a)))), 1218f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1362f - 1f), var_0)), _wgslsmith_f_op_f32(exp2(global3.a)));
    let var_2 = 5911i & u_input.b.x;
    global1 = array<Struct_1, 22>();
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global3.a, 1966f))))), global0.b);
    let var_4 = global1[_wgslsmith_index_u32(u_input.a.x, 22u)];
    let x = u_input.a;
    s_output = func_2(var_1, global1[_wgslsmith_index_u32(~1u, 22u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a, var_1.x)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global2.x, _wgslsmith_div_u32(12359u, global2.x), 1u, ~46087u), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, global2.x << (87329u % 32u), max(u_input.d, global2.x), ~global2.x), vec4<u32>(21049u, _wgslsmith_sub_u32(global2.x, global2.x), 1u, countOneBits(global2.x)))), 22u)]);
}

