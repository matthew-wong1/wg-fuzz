struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(140f), Struct_2(222f), Struct_2(597f), Struct_2(430f), Struct_2(1000f), Struct_2(1710f), Struct_2(-2032f), Struct_2(-655f), Struct_2(-1000f), Struct_2(-1168f), Struct_2(198f), Struct_2(-661f), Struct_2(995f), Struct_2(823f), Struct_2(1000f), Struct_2(606f), Struct_2(398f), Struct_2(-576f), Struct_2(-850f), Struct_2(-1064f), Struct_2(-607f), Struct_2(1598f), Struct_2(1009f), Struct_2(-262f), Struct_2(812f), Struct_2(-673f), Struct_2(559f), Struct_2(-1000f), Struct_2(-729f));

var<private> global2: u32;

var<private> global3: bool;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2) -> vec2<f32> {
    var var_0 = Struct_1(abs(-u_input.d));
    let var_1 = vec3<u32>(1u, 1u, 1u);
    global1 = array<Struct_2, 29>();
    var var_2 = Struct_2(_wgslsmith_f_op_f32(max(-310f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), global0.x)))));
    global3 = any(vec3<bool>(true, any(vec4<bool>(true, true, true, true)), !(~var_1.x < _wgslsmith_sub_u32(var_1.x, 33101u))));
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a + var_2.a)) - 1186f) + 257f), var_2.a);
}

fn func_2() -> Struct_1 {
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_3(global1[_wgslsmith_index_u32(39027u, 29u)])))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -823f) * vec2<f32>(-2189f, global0.x)), vec2<f32>(_wgslsmith_div_f32(global0.x, -2568f), _wgslsmith_f_op_f32(max(-347f, global0.x))), true))));
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(8891u, reverseBits(1u)), 29u)];
    let var_1 = Struct_2(606f);
    var var_2 = ~(~(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 1u, 68253u), vec4<u32>(598u, 1u, 4294967295u, 45471u)) >> (1u % 32u)) >> (_wgslsmith_clamp_u32(~(~1u), _wgslsmith_div_u32(_wgslsmith_sub_u32(25596u, 1u), 1u), 19498u) % 32u));
    var_0 = Struct_2(var_1.a);
    return Struct_1(firstTrailingBit(u_input.b.x));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: Struct_2) -> Struct_1 {
    global3 = arg_1;
    global3 = (_wgslsmith_dot_vec3_u32(max(reverseBits(vec3<u32>(62179u, 13459u, 13100u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 18359u, 5907u), vec3<u32>(0u, 43311u, 1u), vec3<u32>(1u, 4294967295u, 1620u))), vec3<u32>(firstTrailingBit(0u), 1u, min(50682u, 0u))) >> ((1u | firstTrailingBit(58138u)) % 32u)) < 1u;
    var var_0 = select(select(select(vec2<bool>(true, true), !vec2<bool>(true, arg_1), vec2<bool>(true, true)), vec2<bool>(true, select(arg_0.a, 13262i, arg_1) <= (u_input.b.x & u_input.d)), arg_3.a >= arg_2), select(vec2<bool>(!(arg_2 > 114f), !arg_1), !(!select(vec2<bool>(false, arg_1), vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1))), vec2<bool>(_wgslsmith_f_op_f32(ceil(global0.x)) <= arg_2, all(select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(arg_1, false, arg_1, arg_1), false)))), select(select(vec2<bool>(arg_1, arg_1), !select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1), true), true), vec2<bool>(!all(vec3<bool>(false, arg_1, false)), arg_1), select(!(!vec2<bool>(false, arg_1)), !select(vec2<bool>(false, arg_1), vec2<bool>(true, arg_1), vec2<bool>(true, true)), arg_1)));
    var_0 = !vec2<bool>(!any(vec4<bool>(arg_1, arg_1, false, arg_1)), _wgslsmith_f_op_f32(exp2(global0.x)) == arg_2);
    let var_1 = -22772i;
    return func_2();
}

fn func_1() -> Struct_1 {
    let var_0 = abs(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(~4294967295u, 0u, 1u), countOneBits(vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, 1u, 1u))));
    let var_1 = Struct_2(-1394f);
    var var_2 = Struct_1(26703i);
    var var_3 = ~vec4<u32>(~(abs(var_0.x) | _wgslsmith_div_u32(87323u, var_0.x)), 83087u, 58979u, _wgslsmith_add_u32(var_0.x, _wgslsmith_mult_u32(var_0.x | 26792u, var_0.x)));
    var var_4 = var_1;
    return func_4(func_2(), true, 1261f, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_clamp_u32(var_0.x, var_3.x, 53882u), var_3.x, countOneBits(select(var_3.x, 16112u, false))), select(var_0, ~var_3.zxw, var_3.x <= max(var_3.x, var_0.x))), 29u)]);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_2 {
    return global1[_wgslsmith_index_u32(arg_2.x, 29u)];
}

fn func_6(arg_0: f32, arg_1: i32, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_dot_vec4_i32(max(max(reverseBits(u_input.b), u_input.c) & u_input.c, vec4<i32>(-(u_input.c.x ^ -23729i), arg_1, countOneBits(arg_1), u_input.d & -50733i)), _wgslsmith_mod_vec4_i32(~vec4<i32>(-56069i, arg_1, u_input.a, arg_1), u_input.b) >> (abs(~vec4<u32>(0u, 29509u, 2047u, 57246u)) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(~arg_1, min(arg_1, u_input.a), -1i), _wgslsmith_add_i32(_wgslsmith_add_i32(1i, -1i), var_0), ~(-4074i)), ~vec3<i32>(select(u_input.a, var_0, false), 6420i ^ u_input.b.x, -20667i)) | (u_input.b.wxw ^ ~abs(vec3<i32>(u_input.a, 2147483647i, var_0)));
    let var_2 = -2147483647i;
    global2 = _wgslsmith_dot_vec3_u32(vec3<u32>(~firstLeadingBit(22865u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(4294967295u, 1u), min(0u, 1u)), ~42884u), reverseBits(~vec3<u32>(4294967295u, 36296u, 4294967295u))) ^ ~(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 14506u), vec3<u32>(15244u, 24712u, 26222u)), _wgslsmith_dot_vec2_u32(vec2<u32>(40758u, 21119u), vec2<u32>(1u, 38139u))) | reverseBits(_wgslsmith_div_u32(14885u, 1u)));
    var var_3 = vec4<bool>(select(!(!select(true, false, true)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 0u, 9537u)) == ~(~8153u), true), true, all(vec3<bool>(all(vec3<bool>(true, true, true)), true, !any(vec4<bool>(false, true, true, true)))), _wgslsmith_f_op_f32(arg_3.a + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x)))) <= _wgslsmith_f_op_f32(ceil(global0.x)));
    return func_5(_wgslsmith_sub_vec2_u32((~vec2<u32>(22126u, 71899u) & firstTrailingBit(vec2<u32>(34230u, 1u))) >> (vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(19006u, 0u), vec2<u32>(0u, 59143u)), firstTrailingBit(61668u)) % vec2<u32>(32u)), vec2<u32>(1u, 1u)), Struct_1(max(var_2, -_wgslsmith_sub_i32(1i, -31628i))), vec3<u32>(_wgslsmith_div_u32(firstTrailingBit(4294967295u), select(18414u, 0u, false)) | ~0u, ~1u, firstLeadingBit(~_wgslsmith_mult_u32(1u, 62719u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(-2881f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x - 1051f), 297f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - global0.x) - _wgslsmith_f_op_f32(f32(-1f) * -519f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(580f))))));
    global1 = array<Struct_2, 29>();
    var var_1 = func_6(219f, ~u_input.d, func_5(~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(36414u, 5880u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 32098u))), func_1(), (firstTrailingBit(vec3<u32>(29627u, 41867u, 0u)) | vec3<u32>(40823u, 84521u, 0u)) ^ vec3<u32>(1u, 1u, 1u)), Struct_2(_wgslsmith_f_op_f32(-var_0.x)));
    var var_2 = true & (_wgslsmith_f_op_f32(floor(var_1.a)) > 1402f);
    let var_3 = reverseBits(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, firstTrailingBit(4294967295u), firstTrailingBit(81546u)), vec3<u32>(abs(4294967295u), _wgslsmith_sub_u32(4294967295u, 22268u), 1u), vec3<u32>(countOneBits(1u), 1u, ~15551u)), select(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(47433u, 0u, 58386u), select(true, all(vec2<bool>(true, true)), true)), any(vec2<bool>(true, -1528i >= u_input.b.x))));
    var var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(975f, var_0.x, -828f, global0.x), var_0)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, 1255f, global0.x, -1324f))))), var_0);
    global3 = any(!vec2<bool>(all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), false)), false));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, ~abs(u_input.b.wxx) << (firstTrailingBit(~vec3<u32>(52764u, 0u, var_3.x)) % vec3<u32>(32u)));
}

