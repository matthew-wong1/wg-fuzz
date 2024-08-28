struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<i32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<i32, 27>;

var<private> global2: array<i32, 23> = array<i32, 23>(-1i, 22250i, 5001i, 27341i, i32(-2147483648), i32(-2147483648), 16301i, 17282i, -12844i, i32(-2147483648), -1i, 1i, i32(-2147483648), -655i, 14802i, 2147483647i, 44834i, -514i, -21805i, i32(-2147483648), 2147483647i, 1i, -36694i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec4<u32> {
    var var_0 = Struct_2(firstTrailingBit(u_input.a));
    var var_1 = Struct_1(true, ~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(43910u, 52716u)), reverseBits(min(vec2<u32>(0u, 1u), vec2<u32>(7406u, 1u)))), -vec2<i32>(global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(22386u, 1u), 23u)], arg_0.a.x), any(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), false))), ~9618i);
    var var_2 = _wgslsmith_mult_vec4_i32(abs(vec4<i32>(arg_1.a.x, var_1.e, 19490i, var_1.c.x)) | reverseBits(firstLeadingBit(vec4<i32>(2147483647i, u_input.c, 832i, -23369i))), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(var_1.b, 23u)], 19991i, 24637i, 2147483647i), vec4<i32>(var_0.a.x, -32693i, -2147483647i, u_input.c), vec4<i32>(0i, -1295i, var_1.e, -7321i)), ~vec4<i32>(-30770i, global1[_wgslsmith_index_u32(var_1.b, 27u)], var_1.c.x, 0i)), -vec4<i32>(arg_0.a.x, global2[_wgslsmith_index_u32(59472u, 23u)], -25163i, global2[_wgslsmith_index_u32(var_1.b, 23u)]) | (vec4<i32>(2147483647i, -2147483647i, u_input.b, arg_1.a.x) ^ vec4<i32>(-39849i, var_0.a.x, 21611i, -10222i)))) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.a.x, _wgslsmith_sub_i32(-arg_1.a.x, _wgslsmith_clamp_i32(var_1.c.x, var_1.e, var_0.a.x)), -30938i, -1i), _wgslsmith_mult_vec4_i32(-vec4<i32>(-69326i, arg_0.a.x, -1i, var_1.e), vec4<i32>(0i, 1i, u_input.d, var_1.e)) | _wgslsmith_sub_vec4_i32(select(vec4<i32>(2147483647i, -1i, var_0.a.x, global1[_wgslsmith_index_u32(var_1.b, 27u)]), vec4<i32>(global1[_wgslsmith_index_u32(var_1.b, 27u)], -41699i, 32000i, global1[_wgslsmith_index_u32(24312u, 27u)]), false), vec4<i32>(arg_1.a.x, -10428i, global2[_wgslsmith_index_u32(var_1.b, 23u)], -1i)));
    let var_3 = select(0i, max(-7866i, u_input.d), all(!select(vec2<bool>(true, true), vec2<bool>(var_1.a, var_1.a), var_1.d))) >= var_1.c.x;
    global2 = array<i32, 23>();
    return _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, var_1.b, 63795u >> (var_1.b % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(9514u, 1u, 21573u), vec3<u32>(37525u, 44892u, var_1.b)) ^ var_1.b), ~(vec4<u32>(26412u, 1u, var_1.b, 1u) << (vec4<u32>(28830u, var_1.b, 1u, 1u) % vec4<u32>(32u))) & ~vec4<u32>(var_1.b, 4294967295u, var_1.b, var_1.b)), vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 6916u, var_1.b), vec3<u32>(var_1.b, 4294967295u, 1u)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.b, 39473u, var_1.b), vec3<u32>(var_1.b, var_1.b, 1u))), 14727u & var_1.b, var_1.b, ~1u));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_1 {
    global1 = array<i32, 27>();
    var var_0 = ~_wgslsmith_add_u32(~(~44972u), _wgslsmith_mod_u32(1u, arg_2.b)) > ~1u;
    let var_1 = ~(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(44044u, 0u, 39582u, arg_2.b)), reverseBits(func_3(Struct_2(arg_2.c), Struct_2(vec2<i32>(global2[_wgslsmith_index_u32(108599u, 23u)], arg_2.e))))) & (_wgslsmith_clamp_vec4_u32(~vec4<u32>(39168u, arg_2.b, 4294967295u, 1u), firstTrailingBit(vec4<u32>(23015u, arg_2.b, arg_0, 41067u)), ~vec4<u32>(arg_0, 31217u, arg_2.b, 0u)) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, 0u, 52548u, 4294967295u), vec4<u32>(23079u, arg_0, arg_0, 1899u))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), -2369f)), _wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, -1984f)))), 1020f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -155f) + _wgslsmith_f_op_f32(1114f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(floor(336f))))));
    var var_2 = ~(-_wgslsmith_sub_vec2_i32(firstTrailingBit(arg_2.c), vec2<i32>(abs(u_input.d), ~global2[_wgslsmith_index_u32(arg_0, 23u)])));
    return arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: vec3<bool>) -> f32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(127f - _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0.x, 401f)))) - -721f), global0.x, global0.x);
    var var_1 = ~(~reverseBits(vec4<u32>(arg_0.b, _wgslsmith_mult_u32(7738u, 1u), 99955u, _wgslsmith_mod_u32(arg_0.b, arg_0.b))));
    var var_2 = any(arg_1);
    global1 = array<i32, 27>();
    var var_3 = func_2(abs(~countOneBits(0u)), false, Struct_1(true, 4294967295u, max(vec2<i32>(-1i, global1[_wgslsmith_index_u32(firstLeadingBit(1u), 27u)]), vec2<i32>(_wgslsmith_mod_i32(arg_0.e, global1[_wgslsmith_index_u32(arg_0.b, 27u)]), reverseBits(37266i))), !(arg_1.x & (-313f < var_0.x)), ~(-1758i)), vec3<bool>(arg_0.b <= ~abs(22278u), true, true));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(2136f))));
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: vec3<bool>, arg_3: vec2<bool>) -> vec2<i32> {
    let var_0 = Struct_2(firstTrailingBit(-u_input.a >> (firstTrailingBit(vec2<u32>(3743u, 18694u)) % vec2<u32>(32u))) >> (~(~select(vec2<u32>(1u, 16470u), vec2<u32>(0u, 1u), vec2<bool>(arg_3.x, true))) % vec2<u32>(32u)));
    var var_1 = arg_2;
    var var_2 = vec2<u32>(1u, 1u);
    var var_3 = Struct_1(true, 1u, vec2<i32>(firstLeadingBit(firstLeadingBit(_wgslsmith_add_i32(global2[_wgslsmith_index_u32(4294967295u, 23u)], -10093i))), ~(-31352i)), var_1.x, 1i);
    var var_4 = var_0;
    return -u_input.a;
}

fn func_1() -> vec2<f32> {
    var var_0 = Struct_2(_wgslsmith_mult_vec2_i32(~vec2<i32>(_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(1u, 23u)], -2147483647i), global2[_wgslsmith_index_u32(~4294967295u, 23u)]), ~vec2<i32>(i32(-1i) * -24993i, select(global1[_wgslsmith_index_u32(47920u, 27u)], global1[_wgslsmith_index_u32(13233u, 27u)], false))));
    var var_1 = _wgslsmith_clamp_vec2_i32(select(countOneBits(~vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 23u)], u_input.c)), var_0.a, true) & select(vec2<i32>(0i, i32(-1i) * -2147483647i), vec2<i32>(-1i, var_0.a.x), all(vec2<bool>(false, true))), u_input.a, func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(51939u, false, Struct_1(true, 19257u, vec2<i32>(-15376i, -2778i), false, global1[_wgslsmith_index_u32(43311u, 27u)]), vec3<bool>(false, false, true)), vec4<bool>(true, true, false, false), Struct_2(var_0.a), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x))), global0.x)), vec3<bool>(true, false, true), vec2<bool>(true, true)));
    let var_2 = Struct_2(vec2<i32>(u_input.b, abs(max(countOneBits(global2[_wgslsmith_index_u32(4294967295u, 23u)]), -1061i))));
    let var_3 = 944f;
    global0 = vec4<f32>(_wgslsmith_f_op_f32(1521f * global0.x), _wgslsmith_f_op_f32(f32(-1f) * -1143f), var_3, 171f);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.wy));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 27>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1())) - global0.yx);
    global1 = array<i32, 27>();
    var_0 = vec2<f32>(var_0.x, -890f);
    let var_1 = vec2<i32>(~(~_wgslsmith_div_i32(58988i, u_input.c)) | _wgslsmith_dot_vec4_i32(~vec4<i32>(global2[_wgslsmith_index_u32(27339u, 23u)], u_input.d, -40986i, 1i) << (_wgslsmith_div_vec4_u32(vec4<u32>(7467u, 4294967295u, 15668u, 49297u), vec4<u32>(1u, 30956u, 89935u, 1u)) % vec4<u32>(32u)), ~select(vec4<i32>(1i, global2[_wgslsmith_index_u32(80939u, 23u)], 0i, -1i), vec4<i32>(global2[_wgslsmith_index_u32(1u, 23u)], 2147483647i, global1[_wgslsmith_index_u32(1u, 27u)], 0i), true)), _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(reverseBits(1u), 23u)], 34547i));
    var var_2 = ~_wgslsmith_mult_vec2_u32(firstTrailingBit(abs(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 83329u), vec2<u32>(0u, 0u)))), countOneBits(~reverseBits(vec2<u32>(9888u, 3361u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), 1i, (~(~64901u) & var_2.x) | var_2.x);
}

