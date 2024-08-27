struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 24>;

var<private> global1: array<u32, 19>;

var<private> global2: f32;

var<private> global3: array<Struct_4, 18>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1(arg_0: Struct_4) -> vec3<bool> {
    let var_0 = all(arg_0.b.e) || (arg_0.b.a.x || any(vec2<bool>(false, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(12868u, 19u)], 19u)] != 19051u)));
    global2 = -1300f;
    global2 = 253f;
    global2 = _wgslsmith_f_op_f32(-arg_0.b.b.x);
    global0 = array<vec2<i32>, 24>();
    return vec3<bool>(arg_0.b.e.x, !all(vec3<bool>(var_0, var_0, any(arg_0.b.e.yz))), var_0);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: Struct_1, arg_3: vec4<i32>) -> f32 {
    let var_0 = Struct_3(arg_2);
    var var_1 = min(arg_2.b, var_0.a.b);
    global1 = array<u32, 19>();
    let var_2 = countOneBits(~arg_0.zz);
    global0 = array<vec2<i32>, 24>();
    return 524f;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1891f + -269f), -767f) - vec2<f32>(_wgslsmith_f_op_f32(func_3(vec3<u32>(2294u, global1[_wgslsmith_index_u32(0u, 19u)], arg_0), Struct_5(142f, 1419f, 2147483647i), Struct_1(854f, vec3<i32>(u_input.b, -1i, u_input.a), -1i, 1000f), vec4<i32>(u_input.b, u_input.a, -4645i, -2147483647i))), -683f)))) * vec2<f32>(-1260f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-704f, -1147f)), -3244f))));
    global1 = array<u32, 19>();
    var var_1 = !all(vec3<bool>(true, arg_2, all(select(vec4<bool>(arg_2, true, true, false), vec4<bool>(true, false, false, arg_2), vec4<bool>(arg_1, true, arg_2, true)))));
    let var_2 = 26954u;
    var_1 = arg_1;
    return Struct_2(vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 1175f, 601f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1456f, 1037f, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, 240f, -1000f, var_0.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(254f, var_0.x, -316f, var_0.x))), 21343u != ~arg_0))), _wgslsmith_sub_vec4_i32(select(~firstLeadingBit(vec4<i32>(u_input.b, -7111i, -1i, u_input.a)), min(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.a, 32181i, 1i), vec4<i32>(u_input.b, u_input.b, 37147i, 1i)), vec4<i32>(0i, -1i, -2147483647i, -23848i) >> (vec4<u32>(11130u, arg_0, 67969u, arg_0) % vec4<u32>(32u))), vec4<bool>(arg_1, arg_1, !arg_2, arg_1)), select(-abs(vec4<i32>(11827i, -2147483647i, 2147483647i, u_input.a)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.a, 2147483647i), vec3<i32>(u_input.a, 23017i, 1i)), firstLeadingBit(u_input.a), ~u_input.a, u_input.a), arg_2)), ~(~vec2<u32>(var_2, 317u) | ~vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(arg_0, 19u)])) | _wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(global1[_wgslsmith_index_u32(20552u, 19u)], var_2)), abs(select(vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(4325u, 19u)]), vec2<u32>(var_2, 1u), vec2<bool>(false, false)))), !vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, arg_2), vec2<bool>(arg_1, arg_2))), true && (arg_1 | arg_1), any(!vec4<bool>(false, false, arg_1, false))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: bool, arg_3: vec4<f32>) -> u32 {
    global0 = array<vec2<i32>, 24>();
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 19>();
    let var_0 = any(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false), vec3<bool>(false, false, false), any(vec3<bool>(false, false, true)))), select(vec3<bool>(true, true, true), !func_1(global3[_wgslsmith_index_u32(4004u, 18u)]), all(vec2<bool>(false, true)) && (global1[_wgslsmith_index_u32(1u, 19u)] >= global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(115663u, 19u)], 19u)])), true));
    global3 = array<Struct_4, 18>();
    var var_1 = _wgslsmith_mult_vec4_i32(~(~reverseBits(max(vec4<i32>(-61043i, u_input.b, 1i, u_input.b), vec4<i32>(u_input.b, u_input.a, u_input.a, u_input.b)))), _wgslsmith_mod_vec4_i32(vec4<i32>(-1158i, _wgslsmith_mult_i32(-2660i, abs(u_input.b)), _wgslsmith_add_i32(abs(u_input.a), 0i), 2680i), abs(vec4<i32>(u_input.a, ~0i, 2147483647i, max(u_input.a, -2147483647i)))));
    global2 = -1000f;
    let var_2 = -1i;
    let var_3 = abs(vec4<u32>(func_4(func_2(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(58128u, 19u)], 1u), var_0, true), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-722f, -942f), vec2<f32>(-824f, -642f))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(671f, -344f), vec2<f32>(1629f, -1345f))), var_0)), true, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1922f, 1084f, 1382f, 712f))))), _wgslsmith_mod_u32(~1u, _wgslsmith_div_u32(_wgslsmith_add_u32(41930u, 15570u), 2709u)), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)], global1[_wgslsmith_index_u32(0u, 19u)], 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)], 19u)]), vec4<u32>(global1[_wgslsmith_index_u32(28659u, 19u)], 46636u, 27282u, 0u)) ^ vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(41079u, 19u)], 19u)], global1[_wgslsmith_index_u32(35537u, 19u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(45730u, 19u)], 19u)]), vec4<u32>(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 19u)], 19u)], global1[_wgslsmith_index_u32(7695u, 19u)]), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22242u, 19u)], 19u)], 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(105538u, 19u)], 19u)], global1[_wgslsmith_index_u32(61338u, 19u)], global1[_wgslsmith_index_u32(37871u, 19u)]), vec3<u32>(96497u, global1[_wgslsmith_index_u32(66235u, 19u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 19u)], 19u)], 19u)])))), func_2(~34548u, true, true).d.x & global1[_wgslsmith_index_u32(func_2(~global1[_wgslsmith_index_u32(1u, 19u)], true, !var_0).d.x, 19u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(select(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(-1i, u_input.a, -2147483647i, var_2)), vec4<i32>(var_1.x, var_1.x, -2147483647i, var_2), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 0i, 31166i, 48670i), vec4<i32>(-5334i, 2147483647i, -1i, var_1.x))), _wgslsmith_mod_vec4_i32(vec4<i32>(19292i, var_1.x, 1i, -3573i) | vec4<i32>(-11841i, var_2, 65475i, u_input.a), -vec4<i32>(-2084i, var_2, var_1.x, u_input.b)), true), vec4<i32>(var_2, ~u_input.a, 2147483647i | var_1.x, -(~(-15242i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -702f))), 31742i, _wgslsmith_f_op_f32(min(564f, -230f)));
}

