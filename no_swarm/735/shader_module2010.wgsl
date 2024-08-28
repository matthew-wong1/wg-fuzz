struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32> = array<i32, 32>(-1i, 2147483647i, -47817i, 20914i, 2147483647i, 0i, 1384i, 2147483647i, 2147483647i, 294i, i32(-2147483648), -36693i, -1i, -3479i, 28863i, 1i, -1i, 18605i, -1i, -39819i, 21166i, -20876i, 3402i, -42823i, 1i, i32(-2147483648), 1i, 33550i, 22922i, 16601i, 43873i, 1i);

var<private> global1: array<bool, 24> = array<bool, 24>(true, true, false, true, true, false, false, true, false, false, false, true, true, false, true, false, false, false, true, true, true, true, true, true);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: bool) -> i32 {
    let var_0 = select(firstTrailingBit(vec3<u32>(firstTrailingBit(~u_input.c), 0u, 1u)), vec3<u32>((~u_input.c | 0u) << (((u_input.c << (u_input.c % 32u)) ^ u_input.c) % 32u), u_input.c, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, u_input.c, u_input.c, 18550u), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(26012u, 65310u, u_input.c, 25681u), vec4<u32>(79605u, u_input.c, u_input.c, 4294967295u)), vec4<u32>(u_input.c, 4294967295u, u_input.c, 8773u)))), any(vec4<bool>(true, arg_1, true, global1[_wgslsmith_index_u32(~u_input.c, 24u)] || arg_1)));
    let var_1 = var_0.xz;
    let var_2 = vec4<u32>(4294967295u, var_1.x, 30780u, var_1.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1342f + 1191f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -940f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1683f) + -1357f), 726f))));
    var var_4 = ~firstLeadingBit(vec2<u32>(min(~30631u, _wgslsmith_add_u32(0u, u_input.c)), ~u_input.c));
    return arg_0;
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    global1 = array<bool, 24>();
    global1 = array<bool, 24>();
    let var_0 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -949f) + _wgslsmith_div_f32(arg_1.a.x, 818f)), arg_1.a.x, arg_1.a.x), _wgslsmith_f_op_vec4_f32(select(arg_1.a, vec4<f32>(_wgslsmith_f_op_f32(arg_1.a.x - 1343f), _wgslsmith_f_op_f32(-124f - arg_1.a.x), _wgslsmith_f_op_f32(263f - arg_1.a.x), arg_1.a.x), vec4<bool>(true, u_input.c == 16510u, arg_1.a.x != arg_1.a.x, any(vec2<bool>(true, true)))))));
    global0 = array<i32, 32>();
    var var_1 = vec3<i32>(arg_0, (firstTrailingBit(~(-1i)) >> (_wgslsmith_div_u32(_wgslsmith_mult_u32(20054u, 1u), u_input.c | u_input.c) % 32u)) >> (1u % 32u), func_3(global0[_wgslsmith_index_u32(u_input.c, 32u)], true));
    return arg_1;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    return func_2(-_wgslsmith_sub_i32(_wgslsmith_clamp_i32(2147483647i, ~(-15311i), _wgslsmith_clamp_i32(-1i, u_input.b.x, -15346i)), _wgslsmith_div_i32(-8405i, 51049i) & max(u_input.e.x, global0[_wgslsmith_index_u32(u_input.c, 32u)])), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-267f, -1153f, 385f, -629f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(934f, 2207f, 674f, 765f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(835f, 274f, -686f, 1263f)))), !(!vec4<bool>(false, true, global1[_wgslsmith_index_u32(51964u, 24u)], global1[_wgslsmith_index_u32(1u, 24u)]))))));
    var var_1 = ~vec4<u32>(1u, _wgslsmith_sub_u32(4294967295u, firstTrailingBit(min(24905u, u_input.c))), 4294967295u, _wgslsmith_add_u32(1u, u_input.c));
    var var_2 = -1353f;
    global0 = array<i32, 32>();
    var var_3 = func_2(u_input.a, func_1(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(floor(2137f)), _wgslsmith_f_op_f32(max(var_0.a.x, var_0.a.x)), _wgslsmith_f_op_f32(-var_0.a.x)))));
    global0 = array<i32, 32>();
    let var_4 = -858f;
    var_2 = _wgslsmith_f_op_f32(-var_0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(182f, var_4)), u_input.c);
}

