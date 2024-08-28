struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec2<u32>,
    d: bool,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = select(firstLeadingBit(arg_0.xy), arg_0.zx, !(!(arg_3.e.x == arg_2.e.x) || true));
    var_0 = abs(_wgslsmith_clamp_vec2_i32(-((arg_0.yy | vec2<i32>(arg_0.x, var_0.x)) & -vec2<i32>(-1i, -48758i)), vec2<i32>(~1i ^ _wgslsmith_add_i32(-2147483647i, var_0.x), u_input.d), ~firstTrailingBit(abs(vec2<i32>(arg_0.x, var_0.x)))));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~select(_wgslsmith_dot_vec3_u32(u_input.c.wyy, u_input.c.wxw), _wgslsmith_add_u32(60522u, u_input.b.x), all(vec3<bool>(arg_1.x, arg_1.x, false))) | 4294967295u, arg_3.c.x), 27u)];
    var var_2 = 1u;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_2.e.x, -873f), _wgslsmith_div_f32(-2554f, var_1.e.x))) + arg_3.e.x))));
    return _wgslsmith_div_vec2_u32(u_input.b.wy, select(~vec2<u32>(arg_2.a.x, 67425u), var_1.a, select(vec2<bool>(var_1.b.x, arg_2.d), !vec2<bool>(var_1.b.x, false), u_input.d < 5552i))) ^ reverseBits(vec2<u32>(reverseBits(~arg_2.c.x), ~firstTrailingBit(var_1.c.x)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> f32 {
    var var_0 = !select(vec2<bool>(arg_1.d, false), vec2<bool>(true, true), !arg_1.d);
    global0 = array<Struct_1, 27>();
    var_0 = vec2<bool>(true, true);
    var var_1 = _wgslsmith_f_op_vec3_f32(-arg_1.e.yxy);
    var var_2 = Struct_1(arg_1.c, !vec4<bool>(!(u_input.a < 1u), arg_1.d && (u_input.d == u_input.d), (arg_1.d && var_0.x) | any(arg_1.b.zx), true), func_3(max(~vec3<i32>(1i, u_input.d, -1i), firstTrailingBit(select(vec3<i32>(4488i, u_input.d, -2147483647i), vec3<i32>(-2147483647i, u_input.d, -18561i), arg_1.d))), arg_1.b.yxz, global0[_wgslsmith_index_u32(0u, 27u)], arg_1), arg_1.d, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(232f, 425f, _wgslsmith_div_f32(820f, var_1.x), -806f))));
    return -1441f;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> vec4<i32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-741f - -625f), _wgslsmith_f_op_f32(arg_0.e.x - 1277f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.e.x))), _wgslsmith_f_op_f32(func_2(vec4<u32>(~36561u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 50142u, 1u), vec4<u32>(77555u, u_input.b.x, arg_0.c.x, 1u)), arg_1.a.x, select(4294967295u, u_input.c.x, arg_0.d)) | u_input.b, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(25714u, 0u), 27u)])));
    var var_1 = !(!(!vec3<bool>(!arg_2.x, true, all(vec3<bool>(true, arg_1.d, arg_2.x)))));
    var var_2 = u_input.d;
    var var_3 = _wgslsmith_mult_vec2_i32(max(~(-vec2<i32>(2147483647i, u_input.d)) >> (reverseBits(~vec2<u32>(1u, 9826u)) % vec2<u32>(32u)), vec2<i32>(u_input.d, u_input.d)), -vec2<i32>(abs(i32(-1i) * -39677i), -6999i));
    var var_4 = arg_0;
    return -_wgslsmith_sub_vec4_i32(countOneBits(~vec4<i32>(u_input.d, -1i, var_3.x, u_input.d)), abs(select(vec4<i32>(-18842i, 1i, -2147483647i, var_3.x), vec4<i32>(var_3.x, -75374i, -4525i, var_3.x), true) ^ (vec4<i32>(var_3.x, 0i, -32495i, 49381i) | vec4<i32>(2147483647i, var_3.x, 11487i, 0i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(-22873i, -51600i);
    var var_1 = _wgslsmith_div_vec3_i32(abs(vec3<i32>(u_input.d << (reverseBits(15759u) % 32u), reverseBits(0i), firstTrailingBit(reverseBits(u_input.d)))), ~vec3<i32>(~u_input.d, -abs(u_input.d), u_input.d));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_mult_u32(u_input.a, u_input.a), 34304u), 27u)];
    let var_3 = _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, -(~var_1.x), 26814i ^ u_input.d, -select(39259i, u_input.d, var_2.b.x) | _wgslsmith_div_i32(u_input.d, ~(-1i))), _wgslsmith_add_vec4_i32(select(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.d, u_input.d, var_1.x), vec4<i32>(var_1.x, u_input.d, 0i, 594i)), _wgslsmith_div_vec4_i32(vec4<i32>(var_1.x, 0i, var_1.x, var_1.x), vec4<i32>(var_1.x, -1i, 0i, u_input.d))), select(firstLeadingBit(vec4<i32>(0i, var_1.x, 0i, u_input.d)), func_1(global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(u_input.b.x, 27u)], var_2.b.yx), false), _wgslsmith_f_op_f32(func_2(u_input.c, Struct_1(vec2<u32>(var_2.c.x, 91622u), vec4<bool>(var_2.b.x, false, true, var_2.d), var_2.c, var_2.d, vec4<f32>(var_2.e.x, var_2.e.x, var_2.e.x, var_2.e.x)))) > var_2.e.x), reverseBits(~vec4<i32>(-2147483647i, 1i, u_input.d, -1i))));
    let var_4 = abs(select(u_input.c.xyz, ~min(u_input.c.zzx, countOneBits(u_input.c.zzy)), vec3<bool>(true, var_2.b.x, -var_1.x != abs(-16966i))));
    let x = u_input.a;
    s_output = StorageBuffer(-1835f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-var_2.e.x), -266f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.e.yx * var_2.e.zw))))));
}

