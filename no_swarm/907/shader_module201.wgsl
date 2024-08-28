struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: vec3<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21>;

var<private> global1: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(Struct_1(!select(global1.a, !vec4<bool>(global1.a.x, true, false, true), global1.a), _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(2154i, global1.b), _wgslsmith_dot_vec3_i32(u_input.a, u_input.a)), reverseBits(global1.b))), -1932f, false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -220f) - _wgslsmith_f_op_f32(f32(-1f) * -893f)), _wgslsmith_f_op_f32(-349f + _wgslsmith_f_op_f32(1000f + -736f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-757f * -1100f)))), _wgslsmith_dot_vec3_i32(-u_input.a, vec3<i32>(global1.b, firstTrailingBit(~u_input.e), global1.b & ~u_input.a.x)));
    var var_1 = _wgslsmith_clamp_i32(i32(-1i) * -abs(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -27031i, u_input.a.x, var_0.e), vec4<i32>(global1.b, -3348i, 2147483647i, global1.b))), 1i, u_input.e);
    global1 = Struct_1(!select(vec4<bool>(global1.a.x, false, true & global1.a.x, !var_0.c), vec4<bool>(global1.a.x, !global1.a.x, global1.a.x, var_0.c), (var_0.c || false) || true), global1.b);
    global0 = array<u32, 21>();
    var var_2 = var_0.a.a;
    return var_0.b;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_2(arg_2, -859f, true, vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3()))), 1173f, 646f), ~arg_3.b);
    let var_1 = ~u_input.e;
    global1 = var_0.a;
    var var_2 = arg_3;
    var_2 = Struct_1(vec4<bool>(var_0.c, any(select(vec3<bool>(arg_2.a.x, false, false), select(var_0.a.a.xyz, arg_2.a.zyy, var_0.a.a.x), select(var_0.a.a.wwx, var_2.a.wxx, false))), any(select(arg_2.a, vec4<bool>(var_0.a.a.x, var_2.a.x, global1.a.x, arg_1.a.x), !var_2.a)), true), -_wgslsmith_mult_i32(~(~(-45454i)), 4972i));
    return _wgslsmith_div_i32(reverseBits(abs(~(-1i))) >> (global0[_wgslsmith_index_u32(1u, 21u)] % 32u), 1i);
}

fn func_4(arg_0: f32, arg_1: vec2<f32>, arg_2: vec4<u32>, arg_3: vec4<i32>) -> vec4<bool> {
    let var_0 = any(select(vec4<bool>(any(!global1.a.yxw), select(!global1.a.x, global1.a.x, !global1.a.x), any(global1.a), _wgslsmith_f_op_f32(select(arg_1.x, arg_0, true)) > arg_1.x), select(vec4<bool>(true, global1.a.x, true, u_input.e < arg_3.x), vec4<bool>(false, !global1.a.x, all(vec3<bool>(false, false, global1.a.x)), true), global1.a), global1.a.x));
    var var_1 = vec2<u32>(global0[_wgslsmith_index_u32(~(~33880u), 21u)], 40655u);
    var var_2 = vec2<bool>(!(false || global1.a.x), global0[_wgslsmith_index_u32(1u, 21u)] <= var_1.x);
    return global1.a;
}

fn func_1() -> i32 {
    let var_0 = Struct_1(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(691f, -487f))) + -195f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1830f + 1343f)), -1000f), ~min(vec4<u32>(global0[_wgslsmith_index_u32(1u, 21u)], 15822u, 18058u, 57841u), vec4<u32>(u_input.d.x, 29942u, 1u, 1u)) | vec4<u32>(0u, 10575u, ~1u, global0[_wgslsmith_index_u32(firstLeadingBit(1u), 21u)]), abs(vec4<i32>(-66774i, u_input.a.x, func_2(u_input.d, Struct_1(vec4<bool>(false, false, global1.a.x, true), u_input.e), Struct_1(global1.a, u_input.a.x), Struct_1(vec4<bool>(global1.a.x, true, global1.a.x, global1.a.x), 1i)), func_2(u_input.d, Struct_1(vec4<bool>(false, false, true, global1.a.x), -39151i), Struct_1(global1.a, global1.b), Struct_1(global1.a, 19410i))))), max(-1i ^ u_input.e, ~(~global1.b)));
    global0 = array<u32, 21>();
    global0 = array<u32, 21>();
    let var_1 = var_0;
    global1 = var_0;
    return u_input.a.x ^ ((1i ^ ~firstTrailingBit(var_1.b)) & -(2147483647i ^ ~u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(global1.a, func_1());
    global0 = array<u32, 21>();
    var var_0 = ~countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 45360u, global0[_wgslsmith_index_u32(u_input.d.x, 21u)]), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18852u, 21u)], 21u)], 0u))) << (abs(abs(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, 4294967295u, global0[_wgslsmith_index_u32(28786u, 21u)]), vec3<u32>(global0[_wgslsmith_index_u32(u_input.d.x, 21u)], 0u, u_input.c)), vec3<u32>(1u, 1885u, u_input.c)))) % vec3<u32>(32u));
    global0 = array<u32, 21>();
    var var_1 = Struct_2(Struct_1(vec4<bool>(-2147483647i <= u_input.e, true, true, any(vec2<bool>(true, false))), func_2(var_0.zy, Struct_1(global1.a, 24660i), Struct_1(!global1.a, abs(7442i)), Struct_1(vec4<bool>(true, global1.a.x, global1.a.x, false), u_input.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1000f, 966f, true)))), _wgslsmith_f_op_f32(abs(147f))))), !select(global1.a.x | global1.a.x, !(u_input.e == 19641i), false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(1162f, -1556f, -785f), vec3<f32>(1004f, -567f, 1708f)), vec3<f32>(1640f, 1000f, -1018f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1070f, -562f, -1017f) - vec3<f32>(117f, -1000f, 439f)))), !func_4(1222f, vec2<f32>(-290f, 2377f), vec4<u32>(68240u, global0[_wgslsmith_index_u32(u_input.b, 21u)], global0[_wgslsmith_index_u32(44979u, 21u)], var_0.x), vec4<i32>(20533i, 2147483647i, u_input.e, u_input.a.x)).wyw))), -32681i);
    global0 = array<u32, 21>();
    var var_2 = Struct_2(var_1.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1532f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -619f) - _wgslsmith_f_op_f32(-var_1.d.x)))))), false, vec3<f32>(var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.x + 694f) - _wgslsmith_f_op_f32(floor(1633f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1383f))))), 41710i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_3()), -_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(min(var_2.a.b, global1.b), ~var_2.a.b)), min(17518u, _wgslsmith_dot_vec4_u32(reverseBits(min(vec4<u32>(var_0.x, 4294967295u, 36955u, 27523u), vec4<u32>(var_0.x, u_input.c, global0[_wgslsmith_index_u32(61618u, 21u)], global0[_wgslsmith_index_u32(var_0.x, 21u)]))), vec4<u32>(global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 21u)], abs(var_0.x), 1u, 1u))), ~_wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(var_0.x, 59707u, var_0.x)), ~reverseBits(vec3<u32>(global0[_wgslsmith_index_u32(var_0.x, 21u)], 49619u, 1u))), 2147483647i);
}

