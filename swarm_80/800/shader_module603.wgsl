struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

var<private> global1: array<u32, 27>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: u32) -> bool {
    global1 = array<u32, 27>();
    let var_0 = Struct_2(Struct_1(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.b, arg_0.b.x, -1i) ^ vec4<i32>(u_input.b, 0i, arg_0.b.x, arg_0.b.x), -vec4<i32>(u_input.b, 1i, -20014i, 32280i))), vec2<i32>(-_wgslsmith_add_i32(0i, 13902i), i32(-1i) * -1i)));
    global1 = array<u32, 27>();
    var var_1 = firstLeadingBit(_wgslsmith_add_vec4_i32(abs(reverseBits(arg_0.a)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(31972u, 4294967295u, 2338u, arg_2.x) >> (vec4<u32>(arg_3, u_input.c.x, u_input.c.x, arg_2.x) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, 7119u), vec4<u32>(arg_2.x, 4294967295u, u_input.c.x, 27287u), vec4<u32>(arg_3, arg_3, arg_3, arg_3)), vec4<u32>(u_input.c.x, u_input.a, global1[_wgslsmith_index_u32(u_input.a, 27u)], 0u) ^ vec4<u32>(arg_3, arg_3, 4294967295u, 8183u)) % vec4<u32>(32u)), abs(arg_0.a)));
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_1.wxw)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(arg_1.x + arg_1.x), _wgslsmith_f_op_f32(-1099f * arg_1.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(arg_1.zzy))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(arg_1.xzw)), arg_1.xyx, vec3<bool>(true, true, true))))) + vec3<f32>(744f, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(sign(arg_1.x))))));
    return -161f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.x)) * _wgslsmith_f_op_f32(trunc(488f))))) * arg_1.x);
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = arg_0;
    global0 = array<Struct_1, 10>();
    var var_1 = Struct_2(arg_0.a);
    var var_2 = !all(vec4<bool>(true, false, true, func_3(Struct_1(var_0.a.a, vec2<i32>(2147483647i, arg_0.a.b.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2346f, 712f, -820f, -317f), vec4<f32>(1297f, 1235f, -890f, -204f))), u_input.c, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 27u)], 27u)], 44300u, 41459u, 1u), vec4<u32>(1u, u_input.a, 0u, 1u)), 27u)])));
    let var_3 = var_0.a;
    return Struct_1(var_1.a.a, vec2<i32>(firstTrailingBit(1i), u_input.b));
}

fn func_1() -> vec2<i32> {
    var var_0 = global0[_wgslsmith_index_u32(4294967295u, 10u)];
    global0 = array<Struct_1, 10>();
    let var_1 = func_2(Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, 82678u), vec3<u32>(10722u, 0u, 4294967295u))), 27u)], u_input.a), 10u)]));
    var var_2 = func_2(Struct_2(func_2(Struct_2(global0[_wgslsmith_index_u32(u_input.a & 50259u, 10u)]))));
    global1 = array<u32, 27>();
    return _wgslsmith_mult_vec2_i32(~(~vec2<i32>(var_2.a.x, 0i & var_1.b.x)), ~(-_wgslsmith_div_vec2_i32(var_0.b << (vec2<u32>(global1[_wgslsmith_index_u32(53941u, 27u)], 31363u) % vec2<u32>(32u)), var_2.a.zy | vec2<i32>(35428i, -1629i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec2_i32(-vec2<i32>(31275i, 2147483647i), -_wgslsmith_clamp_vec2_i32(func_1(), ~vec2<i32>(u_input.b, -2147483647i), _wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(1i, u_input.b)), select(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(0i, u_input.b), vec2<bool>(true, false)))));
    let var_1 = Struct_2(func_2(Struct_2(global0[_wgslsmith_index_u32(1u, 10u)])));
    let var_2 = true;
    let var_3 = global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(0u, 27u)], ~3039u, u_input.c.x)), 27u)], 27u)], 10u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -114f)))));
}

