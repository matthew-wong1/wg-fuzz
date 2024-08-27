struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(1i));

var<private> global1: u32 = 1u;

var<private> global2: f32;

var<private> global3: array<Struct_2, 23>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> bool {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -211f));
    let var_0 = _wgslsmith_add_i32(31393i, select(41856i, -28745i, !any(select(vec2<bool>(true, true), vec2<bool>(true, false), true))));
    var var_1 = _wgslsmith_div_u32(41675u, ~select(~_wgslsmith_mod_u32(0u, 1u), firstLeadingBit(firstLeadingBit(4294967295u)), true));
    var var_2 = abs(~(~vec2<u32>(0u, 62937u) ^ (firstTrailingBit(vec2<u32>(1u, 74135u)) | vec2<u32>(1u, 1u))));
    var_1 = var_2.x;
    return any(vec2<bool>(true, false));
}

fn func_2(arg_0: vec4<bool>, arg_1: f32, arg_2: f32) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1532f, arg_1, 1358f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_1, arg_1)), arg_0.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2, arg_1, arg_1), vec3<f32>(arg_1, -516f, -1036f), vec3<bool>(arg_0.x, arg_0.x, false))), vec3<f32>(-776f, 724f, arg_2))) + vec3<f32>(890f, arg_1, -1256f)), vec3<f32>(125f, _wgslsmith_f_op_f32(-arg_1), arg_2), select(arg_0.yww, !arg_0.xxz, arg_0.x)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(1000f * -178f), 397f, _wgslsmith_div_f32(666f, 573f), _wgslsmith_f_op_f32(702f + 379f)))))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -363f), 817f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2)) - arg_1), var_0.x))));
    let var_2 = Struct_1(true, !((arg_0.x || false) || select(false, true, true)) | func_3());
    global3 = array<Struct_2, 23>();
    global3 = array<Struct_2, 23>();
    return _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(~0u, ~max(1u, reverseBits(89083u))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    let var_0 = Struct_3(Struct_2(-8030i), 11813i, arg_1.c, func_2(vec4<bool>(true, true, !(!arg_2.a), false), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(558f)) + 2404f), 268f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-648f, _wgslsmith_f_op_f32(-1162f - 560f))))), Struct_1(true, true));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(250f * 527f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-211f, 497f)) + _wgslsmith_f_op_f32(-1000f + 964f)))));
    let var_2 = 715f;
    global1 = _wgslsmith_add_u32(arg_1.d.x << (19671u % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.d.x, arg_1.d.x, 6390u, firstTrailingBit(arg_1.d.x)), _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(1u, var_0.d.x, 7200u, var_0.d.x)), _wgslsmith_mult_vec4_u32(min(vec4<u32>(74940u, 41252u, 14018u, 29179u), vec4<u32>(var_0.d.x, arg_1.d.x, 1u, 0u)), vec4<u32>(var_0.d.x, 1u, 0u, var_0.d.x)), abs(vec4<u32>(arg_1.d.x, var_0.d.x, arg_1.d.x, var_0.d.x)) << (~vec4<u32>(35669u, var_0.d.x, var_0.d.x, arg_1.d.x) % vec4<u32>(32u)))));
    let var_3 = vec3<i32>(arg_0.a, ~(~(-firstTrailingBit(arg_0.a))), -arg_0.a);
    return global3[_wgslsmith_index_u32(_wgslsmith_div_u32(7406u, ~func_2(!vec4<bool>(arg_2.a, arg_1.e.a, arg_3.b, arg_3.b), _wgslsmith_f_op_f32(-562f - 117f), _wgslsmith_f_op_f32(floor(var_2))).x >> (~arg_1.d.x % 32u)), 23u)];
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> i32 {
    return _wgslsmith_dot_vec4_i32(min(_wgslsmith_sub_vec4_i32(vec4<i32>(-15702i, u_input.a, abs(u_input.a), -14333i), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(0i, 19792i, u_input.a, 1i))), vec4<i32>(abs(0i & u_input.a), 1i, i32(-1i) * -30053i, arg_0.a)), ~firstLeadingBit(vec4<i32>(-1i) * -vec4<i32>(arg_0.a, 0i, u_input.a, 2147483647i)));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: vec4<bool>) -> Struct_2 {
    let var_0 = arg_0.x;
    global1 = ~max(~0u << ((0u >> (0u % 32u)) % 32u), reverseBits(~90476u << (0u % 32u)));
    let var_1 = -629f;
    let var_2 = Struct_1(false, arg_3.x);
    global0 = array<Struct_2, 1>();
    return func_1(global3[_wgslsmith_index_u32(1u, 23u)], Struct_3(func_1(func_1(func_1(Struct_2(34176i), Struct_3(global0[_wgslsmith_index_u32(4294967295u, 1u)], 445i, vec2<i32>(-35357i, arg_0.x), vec2<u32>(0u, 4190u), var_2), var_2, var_2), Struct_3(global3[_wgslsmith_index_u32(61880u, 23u)], -15195i, vec2<i32>(arg_1.a, -15305i), vec2<u32>(28606u, 62984u), Struct_1(var_2.b, arg_2.x)), Struct_1(arg_3.x, var_2.a), var_2), Struct_3(func_1(global0[_wgslsmith_index_u32(41062u, 1u)], Struct_3(Struct_2(arg_0.x), u_input.a, vec2<i32>(arg_1.a, u_input.a), vec2<u32>(1u, 32487u), Struct_1(false, arg_3.x)), var_2, var_2), ~var_0, abs(vec2<i32>(arg_0.x, -57509i)), abs(vec2<u32>(0u, 63968u)), var_2), var_2, var_2), 31223i, _wgslsmith_div_vec2_i32(vec2<i32>(0i, arg_1.a ^ 15709i), ~abs(vec2<i32>(43344i, 2147483647i))), vec2<u32>(firstTrailingBit(0u) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, 17246u), vec4<u32>(1u, 0u, 4294967295u, 1u)) % 32u), _wgslsmith_mod_u32(_wgslsmith_div_u32(23700u, 13050u), 58883u)), var_2), Struct_1(true, min(1i, abs(u_input.a)) <= -2147483647i), Struct_1(false, arg_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~_wgslsmith_sub_u32(max(_wgslsmith_sub_u32(4294967295u, ~32857u), ~1u), _wgslsmith_mult_u32(1u, _wgslsmith_add_u32(~12273u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 1u)))));
    let var_0 = Struct_3(func_5(vec3<i32>(u_input.a, func_4(func_1(Struct_2(u_input.a), Struct_3(Struct_2(u_input.a), 1i, vec2<i32>(41030i, -16971i), vec2<u32>(4294967295u, 1u), Struct_1(true, true)), Struct_1(true, true), Struct_1(true, false)), Struct_1(true, true)), -42434i), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(87857u, 1u, 0u, 51537u), vec4<u32>(1u, 1u, 1u, 1u)), 23u)], vec3<bool>(true, true, true), select(vec4<bool>(true, true, all(vec3<bool>(true, true, false)), true), vec4<bool>(true, true, true, true), true)), firstLeadingBit(u_input.a), vec2<i32>(max(u_input.a, -countOneBits(-1i)), ~_wgslsmith_mult_i32(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(6780i, u_input.a, u_input.a, -17151i), vec4<i32>(u_input.a, u_input.a, u_input.a, 0i)))), ~select(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), true), Struct_1(true, select(!select(true, true, true), all(vec3<bool>(false, true, false)) == all(vec4<bool>(false, false, false, true)), true)));
    global0 = array<Struct_2, 1>();
    global3 = array<Struct_2, 23>();
    global2 = 1033f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(var_0.d.x, 14532u | ~var_0.d.x), vec3<f32>(382f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -472f) + _wgslsmith_f_op_f32(-1000f + -1731f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -633f))));
}

