struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec4<bool>) -> vec3<bool> {
    var var_0 = vec2<i32>(firstLeadingBit(-(u_input.b << (1u % 32u)) | -_wgslsmith_div_i32(-76836i, u_input.b)), u_input.b);
    global0 = array<u32, 3>();
    var var_1 = Struct_1(i32(-1i) * -(~1i), max(~vec4<u32>(u_input.a ^ global0[_wgslsmith_index_u32(u_input.a, 3u)], _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 3u)], u_input.a, global0[_wgslsmith_index_u32(0u, 3u)], u_input.a), vec4<u32>(1u, 33637u, 12842u, u_input.a)), 76604u, 1u), ~(~(~vec4<u32>(39127u, 1u, 4294967295u, u_input.a)))));
    var var_2 = ~0u;
    global0 = array<u32, 3>();
    return !arg_0.xyx;
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> u32 {
    var var_0 = arg_1;
    let var_1 = -vec2<i32>(-10868i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(select(vec3<i32>(36106i, 27626i, -47870i), vec3<i32>(var_0.a, -15459i, arg_1.a), vec3<bool>(true, false, false)), abs(vec3<i32>(3306i, 1i, var_0.a))), ~(vec3<i32>(13157i, 23130i, var_0.a) >> (vec3<u32>(arg_1.b.x, 4294967295u, global0[_wgslsmith_index_u32(1u, 3u)]) % vec3<u32>(32u)))));
    global0 = array<u32, 3>();
    var_0 = arg_1;
    let var_2 = select(!select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), false)), vec4<bool>(true, any(vec2<bool>(true, false)), true, false)), !(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true)))), !(!vec4<bool>(true, all(vec3<bool>(true, true, true)), select(false, false, true), all(vec4<bool>(true, true, true, false)))));
    return var_0.b.x;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: bool) -> Struct_1 {
    global0 = array<u32, 3>();
    global0 = array<u32, 3>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1867f)), _wgslsmith_f_op_f32(f32(-1f) * -700f));
    let var_1 = _wgslsmith_f_op_f32(abs(-458f));
    let var_2 = -493f;
    return Struct_1(_wgslsmith_mult_i32(-36150i, u_input.b ^ -u_input.b), select(vec4<u32>(_wgslsmith_div_u32(firstLeadingBit(arg_1.x), _wgslsmith_dot_vec4_u32(arg_1, arg_1)), 46792u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(arg_1.yy), vec2<u32>(28920u, 0u)), 3u)], 51863u), arg_1, arg_2 || false));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = 836f;
    global0 = array<u32, 3>();
    let var_1 = ~vec3<u32>(func_3(~max(67543u, 60699u), arg_0), _wgslsmith_mod_u32(arg_1.b.x, ~arg_1.b.x), global0[_wgslsmith_index_u32(~4294967295u, 3u)]);
    global0 = array<u32, 3>();
    global0 = array<u32, 3>();
    return arg_0;
}

fn func_1(arg_0: u32) -> StorageBuffer {
    global0 = array<u32, 3>();
    let var_0 = func_5(func_4(func_2(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true)), vec4<u32>(_wgslsmith_mult_u32(u_input.a, u_input.a), firstLeadingBit(_wgslsmith_mod_u32(0u, 27548u)), 1u, func_3(1u, Struct_1(u_input.b, vec4<u32>(u_input.a, arg_0, 1u, global0[_wgslsmith_index_u32(0u, 3u)])))), u_input.b < 5204i), Struct_1(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.b)), vec4<i32>(-35424i, -40399i, 46067i, u_input.b)), countOneBits(_wgslsmith_clamp_i32(u_input.b, u_input.b, 1i))), _wgslsmith_sub_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 3u)], ~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(1u, 3u)], 24020u, 29974u), vec3<u32>(45263u, global0[_wgslsmith_index_u32(u_input.a, 3u)], 59348u)), 77463u), ~vec4<u32>(31104u, global0[_wgslsmith_index_u32(arg_0, 3u)], 27317u, u_input.a))), !(!all(vec3<bool>(true, true, true))), vec4<f32>(1f, 1f, 1f, 1f));
    var var_1 = arg_0;
    var var_2 = var_0.b.xw;
    var_1 = u_input.a;
    return StorageBuffer(vec3<u32>(_wgslsmith_clamp_u32(firstTrailingBit(~u_input.a), var_0.b.x, ~(~30664u)), 53254u, ~abs(_wgslsmith_mult_u32(76536u, global0[_wgslsmith_index_u32(var_0.b.x, 3u)]))), vec2<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1948f, -672f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1079f * 732f), -799f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-473f + -942f), _wgslsmith_f_op_f32(1341f - 1645f))), false))), var_2.x, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(vec2<i32>(u_input.b, u_input.b));
    var var_1 = global0[_wgslsmith_index_u32(~reverseBits(4294967295u), 3u)];
    var_1 = _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(u_input.a, 3u)], _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(reverseBits(1u), 3u)], 3u)], firstTrailingBit(~1u)));
    var_1 = 56593u;
    let var_2 = vec4<u32>(max(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(4294967295u, 3u)])), 3u)], 1u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 3u)], u_input.a, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(26557u, u_input.a, 0u, 59570u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 3u)], 3u)], 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)], 21889u, 1128u), vec4<u32>(0u, 4294967295u, 48404u, global0[_wgslsmith_index_u32(u_input.a, 3u)]))), ~1u, 0u)), _wgslsmith_div_u32(abs(107937u), 74125u), (_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(1u, 3u)] & 3708u, _wgslsmith_clamp_u32(u_input.a, global0[_wgslsmith_index_u32(0u, 3u)], 1576u)) | u_input.a) | 1u, ~u_input.a);
    let x = u_input.a;
    s_output = func_1(_wgslsmith_mod_u32(var_2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(u_input.a, 51057u), u_input.a >> (4294967295u % 32u), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(u_input.a, 3u)], 0u), _wgslsmith_dot_vec2_u32(var_2.yw, vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(41740u, 3u)]))), ~vec4<u32>(global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(u_input.a, 3u)], u_input.a, 11430u) & var_2)));
}

