struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(1u);

var<private> global1: Struct_5;

var<private> global2: array<Struct_2, 9>;

var<private> global3: vec4<f32> = vec4<f32>(-863f, -135f, -1009f, 1009f);

var<private> global4: array<bool, 24> = array<bool, 24>(true, false, true, true, false, false, false, true, true, true, true, true, false, false, false, true, false, true, true, false, true, false, false, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec3<i32> {
    let var_0 = 31482u;
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.a, -345f)) + -1656f)), 1063f, arg_0.a, _wgslsmith_f_op_f32(min(-278f, arg_0.a))), vec4<f32>(-2533f, arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))), arg_0.a));
    var var_2 = vec4<u32>(~min(_wgslsmith_mult_u32(0u, 19040u), 9417u), global0.a, 35928u, 35493u);
    return -vec3<i32>(0i, global1.b, -20848i);
}

fn func_2() -> u32 {
    var var_0 = ~(_wgslsmith_mult_vec3_i32(vec3<i32>(~0i, -2147483647i, -22921i), select(abs(vec3<i32>(1i, 1138i, -54807i)), func_3(Struct_1(442f, vec3<bool>(global4[_wgslsmith_index_u32(10935u, 24u)], true, global4[_wgslsmith_index_u32(global0.a, 24u)]), global4[_wgslsmith_index_u32(u_input.a, 24u)]), global4[_wgslsmith_index_u32(u_input.a, 24u)]), !vec3<bool>(global4[_wgslsmith_index_u32(1u, 24u)], global4[_wgslsmith_index_u32(global0.a, 24u)], global4[_wgslsmith_index_u32(1u, 24u)]))) & min(select(vec3<i32>(global1.b, global1.b, 2147483647i) ^ vec3<i32>(37280i, 37496i, u_input.b), max(vec3<i32>(-1i, -34479i, global1.b), vec3<i32>(1i, global1.b, u_input.b)), vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 24u)], true, true)), _wgslsmith_div_vec3_i32(~vec3<i32>(global1.b, u_input.b, 34542i), -vec3<i32>(global1.b, 1264i, u_input.b))));
    let var_1 = 1731f;
    global2 = array<Struct_2, 9>();
    let var_2 = func_3(Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.a.x - var_1), 745f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_1, global3.x)))), global4[_wgslsmith_index_u32(global0.a & u_input.a, 24u)])), vec3<bool>(select(true, true, true), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(global0.a, 11299u), ~vec2<u32>(42126u, global0.a)), 24u)], global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, 13666u, global0.a), vec3<u32>(0u, 0u, u_input.a)), 24u)]), all(!(!vec3<bool>(global4[_wgslsmith_index_u32(103405u, 24u)], true, global4[_wgslsmith_index_u32(4294967295u, 24u)])))), global4[_wgslsmith_index_u32(~(~(~27901u)), 24u)]);
    var var_3 = any(select(!select(!vec3<bool>(false, global4[_wgslsmith_index_u32(global0.a, 24u)], global4[_wgslsmith_index_u32(u_input.a, 24u)]), select(vec3<bool>(global4[_wgslsmith_index_u32(u_input.a, 24u)], global4[_wgslsmith_index_u32(global0.a, 24u)], global4[_wgslsmith_index_u32(u_input.a, 24u)]), vec3<bool>(global4[_wgslsmith_index_u32(u_input.a, 24u)], false, false), global4[_wgslsmith_index_u32(0u, 24u)]), select(vec3<bool>(true, true, global4[_wgslsmith_index_u32(global0.a, 24u)]), vec3<bool>(global4[_wgslsmith_index_u32(global0.a, 24u)], true, true), vec3<bool>(true, false, global4[_wgslsmith_index_u32(0u, 24u)]))), !select(vec3<bool>(true, true, true), select(vec3<bool>(global4[_wgslsmith_index_u32(global0.a, 24u)], global4[_wgslsmith_index_u32(u_input.a, 24u)], true), vec3<bool>(true, false, true), global4[_wgslsmith_index_u32(4294967295u, 24u)]), !vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 24u)], true, global4[_wgslsmith_index_u32(u_input.a, 24u)])), !global4[_wgslsmith_index_u32(min(1u, global0.a), 24u)]));
    return 0u;
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: u32) -> i32 {
    var var_0 = global1.a;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-911f, _wgslsmith_f_op_f32(floor(939f)))), _wgslsmith_f_op_f32(select(-145f, 1668f, arg_1)));
    let var_2 = ~(vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 1u, arg_2, 4294967295u), vec4<u32>(1u, arg_0.x, global0.a, 19049u)), _wgslsmith_mult_u32(arg_0.x, 1u), arg_0.x, func_2()) >> (~(min(vec4<u32>(arg_0.x, u_input.a, 32661u, 18870u), vec4<u32>(arg_0.x, u_input.a, u_input.a, arg_2)) | (vec4<u32>(4294967295u, global0.a, arg_0.x, 1u) ^ vec4<u32>(4294967295u, global0.a, 4294967295u, 4294967295u))) % vec4<u32>(32u)));
    let var_3 = !(!select(!vec3<bool>(false, arg_1, true), !select(vec3<bool>(true, arg_1, global4[_wgslsmith_index_u32(global0.a, 24u)]), vec3<bool>(true, global4[_wgslsmith_index_u32(arg_0.x, 24u)], false), vec3<bool>(arg_1, false, arg_1)), arg_1));
    let var_4 = _wgslsmith_clamp_vec3_u32(vec3<u32>(reverseBits(arg_2 | ~arg_0.x), 44945u, global0.a ^ select(~7311u, 1u, var_2.x > global0.a)), ~(~min(~vec3<u32>(0u, u_input.a, 4294967295u), ~var_2.yyx)), min(var_2.wzw, vec3<u32>(u_input.a, ~(~var_2.x), 0u)));
    return global1.b;
}

fn func_4(arg_0: Struct_5, arg_1: vec3<i32>, arg_2: i32) -> Struct_5 {
    global0 = Struct_3(u_input.a << (4294967295u % 32u));
    let var_0 = _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 85930u), vec2<u32>(u_input.a, u_input.a), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 28214u), vec2<u32>(6236u, 1u))) | reverseBits(abs(vec2<u32>(global0.a, 0u))), _wgslsmith_sub_vec2_u32(~(~vec2<u32>(54480u, global0.a)), ~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(global0.a, 4294967295u)))), vec2<u32>(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(31053u, global0.a, global0.a, global0.a), vec4<u32>(u_input.a, 0u, global0.a, 22969u), false), ~vec4<u32>(u_input.a, 8783u, 4294967295u, 4294967295u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 12288u, global0.a), vec3<u32>(98054u, global0.a, global0.a))));
    let var_1 = ~(~(~u_input.a));
    return Struct_5(global1.a, arg_1.x << (abs(_wgslsmith_mult_u32(1910u, 0u)) % 32u));
}

fn func_5(arg_0: Struct_5) -> Struct_2 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.a.a.x + global1.a.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-912f * _wgslsmith_f_op_f32(-global3.x)), arg_0.a.a.x))), -958f);
    let var_1 = vec4<f32>(-784f, _wgslsmith_f_op_f32(632f * _wgslsmith_f_op_f32(f32(-1f) * -467f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.a.x - _wgslsmith_f_op_f32(-global1.a.a.x))) - _wgslsmith_f_op_f32(sign(global1.a.a.x))), arg_0.a.a.x);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global3.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1682f)))), _wgslsmith_f_op_f32(f32(-1f) * -779f), any(!vec4<bool>(global4[_wgslsmith_index_u32(72849u, 24u)], global4[_wgslsmith_index_u32(u_input.a, 24u)], global4[_wgslsmith_index_u32(global0.a, 24u)], true)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))), -1075f);
    let var_3 = func_4(func_4(func_4(arg_0, vec3<i32>(1i, 2147483647i, arg_0.b & u_input.b), arg_0.b), _wgslsmith_div_vec3_i32(max(~vec3<i32>(global1.b, u_input.b, arg_0.b), firstTrailingBit(vec3<i32>(0i, global1.b, 0i))), vec3<i32>(global1.b, u_input.b, u_input.b) | vec3<i32>(global1.b, arg_0.b, arg_0.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(-21369i, u_input.b) >> (firstLeadingBit(vec2<u32>(u_input.a, 0u)) % vec2<u32>(32u)), vec2<i32>(29598i, firstTrailingBit(2147483647i)))), _wgslsmith_mod_vec3_i32(select(vec3<i32>(u_input.b ^ 15233i, global1.b & global1.b, -u_input.b), -countOneBits(vec3<i32>(global1.b, 97898i, 4161i)), vec3<bool>(true, true, true)), select(~vec3<i32>(arg_0.b, arg_0.b, -2147483647i), ~abs(vec3<i32>(global1.b, arg_0.b, global1.b)), global4[_wgslsmith_index_u32(firstLeadingBit(~u_input.a), 24u)])), -1i).a;
    let var_4 = 186f;
    return Struct_2(Struct_1(2069f, select(!(!vec3<bool>(global4[_wgslsmith_index_u32(global0.a, 24u)], global4[_wgslsmith_index_u32(global0.a, 24u)], global4[_wgslsmith_index_u32(52607u, 24u)])), select(vec3<bool>(global4[_wgslsmith_index_u32(1u, 24u)], global4[_wgslsmith_index_u32(4294967295u, 24u)], false), select(vec3<bool>(global4[_wgslsmith_index_u32(0u, 24u)], global4[_wgslsmith_index_u32(1u, 24u)], false), vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 24u)], global4[_wgslsmith_index_u32(0u, 24u)], global4[_wgslsmith_index_u32(4294967295u, 24u)]), false), vec3<bool>(false, false, true)), false & global4[_wgslsmith_index_u32(u_input.a ^ global0.a, 24u)]), !any(vec4<bool>(global4[_wgslsmith_index_u32(1u, 24u)], global4[_wgslsmith_index_u32(28382u, 24u)], global4[_wgslsmith_index_u32(global0.a, 24u)], global4[_wgslsmith_index_u32(u_input.a, 24u)]))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-773f * _wgslsmith_f_op_f32(-var_1.x))), vec3<bool>(false, false, !global4[_wgslsmith_index_u32(global0.a, 24u)] | global4[_wgslsmith_index_u32(57350u, 24u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -411f) + var_2.x) >= var_2.x), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1216f + 885f))))), vec3<bool>(false, !(!global4[_wgslsmith_index_u32(77936u, 24u)]), false), !all(vec2<bool>(global4[_wgslsmith_index_u32(1990u, 24u)], global4[_wgslsmith_index_u32(global0.a, 24u)]))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-636f)))), select(!vec3<bool>(false, global4[_wgslsmith_index_u32(u_input.a, 24u)], true), !select(vec3<bool>(false, false, global4[_wgslsmith_index_u32(u_input.a, 24u)]), vec3<bool>(false, false, true), false), select(!vec3<bool>(false, true, global4[_wgslsmith_index_u32(0u, 24u)]), !vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 24u)], false, global4[_wgslsmith_index_u32(4294967295u, 24u)]), all(vec3<bool>(global4[_wgslsmith_index_u32(u_input.a, 24u)], global4[_wgslsmith_index_u32(u_input.a, 24u)], global4[_wgslsmith_index_u32(13242u, 24u)])))), global4[_wgslsmith_index_u32(u_input.a, 24u)]));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool, arg_3: vec4<u32>) -> Struct_3 {
    let var_0 = firstTrailingBit(~arg_3);
    global2 = array<Struct_2, 9>();
    let var_1 = func_5(func_4(Struct_5(func_4(func_4(Struct_5(Struct_4(vec3<f32>(-556f, 517f, global1.a.a.x)), global1.b), vec3<i32>(u_input.b, -2147483647i, -32898i), u_input.b), abs(vec3<i32>(u_input.b, global1.b, global1.b)), select(0i, -2147483647i, arg_1.c.c)).a, u_input.b), _wgslsmith_div_vec3_i32(reverseBits(firstLeadingBit(vec3<i32>(0i, -2147483647i, -3394i))), vec3<i32>(~global1.b, 31212i, ~1i)), -2147483647i)).c.b;
    let var_2 = global1.b;
    return Struct_3(~(~(~arg_3.x) >> (arg_3.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a, global0.a, u_input.a)) << (vec3<u32>(u_input.a, u_input.a & u_input.a, _wgslsmith_add_u32(58527u, u_input.a)) % vec3<u32>(32u)), reverseBits(vec3<u32>(64730u, u_input.a, global0.a) << ((vec3<u32>(u_input.a, 31538u, 84333u) | vec3<u32>(u_input.a, 34884u, 34863u)) % vec3<u32>(32u)))), 4294967295u);
    let var_1 = firstLeadingBit(~global0.a);
    var var_2 = ~31495u;
    var_2 = max(u_input.a, ~abs(~1u));
    let var_3 = func_6(Struct_3(global0.a), func_5(func_4(Struct_5(Struct_4(global1.a.a), u_input.b ^ -55344i), vec3<i32>(reverseBits(-4335i), 1i, _wgslsmith_sub_i32(global1.b, 25549i)), -func_1(vec2<u32>(22544u, u_input.a), false, var_0))), true, _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(select(vec4<u32>(50998u, var_0, 25541u, 5301u), ~vec4<u32>(1u, 87849u, var_0, 3810u), all(vec3<bool>(global4[_wgslsmith_index_u32(u_input.a, 24u)], global4[_wgslsmith_index_u32(4294967295u, 24u)], true))), vec4<u32>(max(var_1, var_0), _wgslsmith_div_u32(global0.a, u_input.a), var_1 ^ global0.a, 22469u)), ~vec4<u32>(max(var_0, 49101u), var_0, 2668u, func_2())));
    var var_4 = ~(~(~(~(~vec3<u32>(17111u, 66961u, var_1)))));
    let var_5 = global1.b;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-global1.b), ~abs(~var_4.yz & _wgslsmith_div_vec2_u32(var_4.xx, var_4.zy)), ~var_4.zy, global1.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -485f) - global3.x) + global3.x)));
}

