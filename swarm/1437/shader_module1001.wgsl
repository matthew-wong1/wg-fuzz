struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21> = array<u32, 21>(33493u, 45659u, 0u, 1u, 68332u, 8346u, 0u, 0u, 4294967295u, 4294967295u, 1u, 0u, 1u, 36285u, 1u, 0u, 27023u, 22401u, 79894u, 4294967295u, 6866u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> bool {
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-391f, 270f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2231f))), firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(79220u, u_input.c, global0[_wgslsmith_index_u32(883u, 21u)], 1u), vec4<u32>(u_input.c, 10666u, 0u, 90000u), vec4<u32>(0u, global0[_wgslsmith_index_u32(43187u, 21u)], 19559u, 22129u))) << (vec4<u32>(0u, reverseBits(u_input.c), ~0u, global0[_wgslsmith_index_u32(1u, 21u)] << (14005u % 32u)) % vec4<u32>(32u))));
    global0 = array<u32, 21>();
    let var_1 = Struct_4(Struct_1(-1076f, vec4<u32>(u_input.c, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(5505u, 21u)], u_input.c, u_input.c), 16340u), ~1u, var_0.a.b.x)));
    var var_2 = Struct_4(var_0.a);
    var_2 = var_0;
    return true;
}

fn func_2(arg_0: Struct_5) -> u32 {
    let var_0 = Struct_4(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.b.x))), _wgslsmith_f_op_f32(round(arg_0.b.x))), vec4<u32>(1u, _wgslsmith_mod_u32(u_input.c, _wgslsmith_mult_u32(u_input.c, global0[_wgslsmith_index_u32(u_input.c, 21u)])), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(global0[_wgslsmith_index_u32(17633u, 21u)], u_input.c, 16207u)), min(vec3<u32>(0u, 0u, 1u), vec3<u32>(global0[_wgslsmith_index_u32(u_input.c, 21u)], 61692u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 21u)], 21u)]))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(95934u, 42664u)) & ~global0[_wgslsmith_index_u32(1u, 21u)], 21u)])));
    let var_1 = vec3<bool>(func_3(), true, true);
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-793f * var_0.a.a) * arg_0.b.x))))));
    let var_3 = var_2;
    let var_4 = Struct_5(var_1.x, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(arg_0.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, -1594f, var_2, arg_0.b.x) + vec4<f32>(var_0.a.a, var_0.a.a, var_2, arg_0.b.x))))));
    return _wgslsmith_add_u32(_wgslsmith_clamp_u32(~_wgslsmith_sub_u32(var_0.a.b.x, 0u), var_0.a.b.x, ~(~var_0.a.b.x)) & u_input.c, ~(~reverseBits(~1u)));
}

fn func_4(arg_0: vec4<u32>) -> u32 {
    let var_0 = ~_wgslsmith_mult_i32(-13474i, _wgslsmith_sub_i32(_wgslsmith_div_i32(-32525i, u_input.b) << (select(1u, global0[_wgslsmith_index_u32(4294967295u, 21u)], true) % 32u), -49189i));
    global0 = array<u32, 21>();
    global0 = array<u32, 21>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1583f, _wgslsmith_div_f32(-763f, -194f))), _wgslsmith_mult_vec4_u32(min(~arg_0, vec4<u32>(1u, u_input.c, 0u, global0[_wgslsmith_index_u32(30570u, 21u)])), _wgslsmith_add_vec4_u32(abs(arg_0), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, u_input.c, 4294967295u), arg_0)))), Struct_1(1f, ~vec4<u32>(_wgslsmith_mod_u32(16321u, u_input.c), ~u_input.c, max(arg_0.x, u_input.c), ~u_input.c)));
    var var_2 = 824f;
    return var_1.b.b.x;
}

fn func_1() -> Struct_4 {
    global0 = array<u32, 21>();
    var var_0 = global0[_wgslsmith_index_u32(func_4(vec4<u32>(_wgslsmith_dot_vec3_u32(~select(vec3<u32>(global0[_wgslsmith_index_u32(u_input.c, 21u)], u_input.c, 8527u), vec3<u32>(74971u, 28084u, global0[_wgslsmith_index_u32(1u, 21u)]), vec3<bool>(true, false, false)), vec3<u32>(1u, u_input.c, reverseBits(u_input.c))), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u ^ abs(u_input.c >> (27431u % 32u)), 21u)], 21u)], func_2(Struct_5(true, _wgslsmith_div_vec4_f32(vec4<f32>(-407f, -227f, -1577f, -1071f), vec4<f32>(1086f, -1200f, -619f, -592f)))), _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 21u)], 21u)], 21u)]), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(97369u, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)], u_input.c), 21u)]), func_2(Struct_5(false, vec4<f32>(-1388f, -263f, 1075f, 2036f)))))), 21u)];
    global0 = array<u32, 21>();
    var var_1 = Struct_3(abs(55386u));
    var_1 = Struct_3(_wgslsmith_clamp_u32(_wgslsmith_add_u32(firstTrailingBit(countOneBits(var_1.a)), 32054u), _wgslsmith_sub_u32(_wgslsmith_mult_u32(~4294967295u, ~var_1.a), _wgslsmith_mult_u32(1u, 61894u & global0[_wgslsmith_index_u32(var_1.a, 21u)])), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, firstLeadingBit(28349u)), 27592u, reverseBits(firstLeadingBit(var_1.a)))));
    return Struct_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(763f))), select(~_wgslsmith_sub_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 21u)], 21u)], var_1.a, 43092u), vec4<u32>(37968u, 1u, 5738u, global0[_wgslsmith_index_u32(4294967295u, 21u)])), _wgslsmith_clamp_vec4_u32(~vec4<u32>(var_1.a, u_input.c, 1u, 0u), vec4<u32>(var_1.a, 1u, 0u, 1u) | vec4<u32>(global0[_wgslsmith_index_u32(var_1.a, 21u)], 91480u, 0u, global0[_wgslsmith_index_u32(32572u, 21u)]), vec4<u32>(var_1.a, var_1.a, var_1.a, 4294967295u)), vec4<bool>(true, true, true, true))));
}

fn func_5(arg_0: Struct_4) -> Struct_1 {
    global0 = array<u32, 21>();
    global0 = array<u32, 21>();
    var var_0 = select(vec4<bool>(any(vec2<bool>(true, false)), !all(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.c, 21u)] <= global0[_wgslsmith_index_u32(54483u, 21u)])), all(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), !select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false)), all(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), 71417u < ~u_input.c));
    var var_1 = _wgslsmith_sub_i32(u_input.e.x, _wgslsmith_sub_i32(-firstLeadingBit(~u_input.b), firstLeadingBit(0i)));
    let var_2 = arg_0.a.b.wzy >> (arg_0.a.b.xxy % vec3<u32>(32u));
    return func_1().a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_clamp_vec2_u32(vec2<u32>((54498u >> (global0[_wgslsmith_index_u32(1u, 21u)] % 32u)) >> (22861u % 32u), _wgslsmith_sub_u32(93773u, ~u_input.c)), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 130996u), _wgslsmith_clamp_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(46454u, 21u)], 21u)], u_input.c) ^ vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 21u)], u_input.c), vec2<u32>(38179u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)]), _wgslsmith_div_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6508u, 21u)], 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)]), vec2<u32>(11555u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 21u)], 21u)])))), ~(~abs(vec2<u32>(0u, global0[_wgslsmith_index_u32(0u, 21u)])))));
    let var_1 = 1i;
    let var_2 = func_5(func_1());
    let var_3 = Struct_3(~1u);
    var_0 = var_2.b.xx;
    var_0 = var_2.b.yx;
    global0 = array<u32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_2.a - var_2.a), -1421f, _wgslsmith_f_op_f32(round(var_2.a)), _wgslsmith_f_op_f32(-var_2.a)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -934f), -231f, _wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(select(1008f, -926f, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, var_2.a, var_2.a, -1257f))))));
}

