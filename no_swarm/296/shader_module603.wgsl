struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: vec4<bool>,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
    c: vec3<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27> = array<bool, 27>(false, true, false, false, false, false, true, false, true, false, false, true, false, true, false, false, true, false, false, false, true, true, true, false, false, true, false);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<bool> {
    var var_0 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-960f))) == _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(581f, -315f), _wgslsmith_f_op_f32(f32(-1f) * -636f))), _wgslsmith_clamp_u32(~abs(25325u), u_input.a.x, 40849u) >= u_input.a.x);
    var var_1 = Struct_1(vec2<u32>(u_input.c.x, ~24572u), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-544f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -723f)), -334f))));
    var_1 = Struct_1(abs(vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, u_input.a.x) & 1u, _wgslsmith_add_u32(u_input.c.x, 1u))), _wgslsmith_div_vec3_f32(var_1.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(737f * 732f), _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_div_f32(866f, var_1.b.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b)))));
    let var_2 = global0[_wgslsmith_index_u32(1u, 27u)];
    var var_3 = _wgslsmith_dot_vec2_i32(firstLeadingBit(-vec2<i32>(abs(0i), _wgslsmith_dot_vec2_i32(vec2<i32>(-15194i, 2892i), vec2<i32>(0i, -31298i)))), vec2<i32>(_wgslsmith_mod_i32(11577i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(-51041i, -6470i, -3567i, -5294i), vec4<i32>(14913i, 1i, -2147483647i, 0i), global0[_wgslsmith_index_u32(u_input.b.x, 27u)]), firstTrailingBit(vec4<i32>(-29709i, -30996i, 0i, 0i)))), firstTrailingBit(2147483647i)));
    return !vec3<bool>(!(false || global0[_wgslsmith_index_u32(u_input.a.x, 27u)]) && var_0.x, all(select(vec3<bool>(true, true, true), vec3<bool>(true, var_0.x, false), vec3<bool>(global0[_wgslsmith_index_u32(var_1.a.x, 27u)], true, false))), true);
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: bool, arg_3: vec4<u32>) -> bool {
    let var_0 = vec2<i32>(~(-2147483647i), -2147483647i);
    global0 = array<bool, 27>();
    global0 = array<bool, 27>();
    return any(!func_3());
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_2 {
    global0 = array<bool, 27>();
    var var_0 = _wgslsmith_dot_vec3_i32(~vec3<i32>(1i, 26171i, -8652i) ^ min(vec3<i32>(7444i, 0i, 76476i) << (vec3<u32>(arg_2.a.x, arg_2.a.x, arg_2.a.x) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(12825i, 2427i, -1i), vec3<i32>(-18949i, 1i, 106944i))), max(vec3<i32>(abs(1i), select(2147483647i, -37096i, false), 1i), vec3<i32>(_wgslsmith_mult_i32(-21391i, 40249i), max(-1i, 2147483647i), 0i))) | _wgslsmith_clamp_i32(~(~1i), abs(_wgslsmith_add_i32(601i, -56790i)) >> (_wgslsmith_add_u32(4294967295u, _wgslsmith_sub_u32(arg_2.a.x, arg_2.a.x)) % 32u), abs(~57702i));
    var_0 = min(_wgslsmith_div_i32(i32(-1i) * -58563i, firstLeadingBit(1i)), -(select(1i, 0i << (arg_2.a.x % 32u), arg_1.x) >> (~_wgslsmith_mod_u32(u_input.b.x, u_input.b.x) % 32u)));
    let var_1 = Struct_4(!any(arg_1), arg_1, _wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(i32(-1i) * -1i, i32(-1i) * -41344i, abs(1i))), vec3<i32>(~(~(-7438i)), _wgslsmith_dot_vec4_i32(~vec4<i32>(7794i, 9798i, -1i, -1i), -vec4<i32>(-2147483647i, 2147483647i, -15407i, 0i)), ~abs(-31357i))), Struct_2(!(!(!arg_1.x)), ~countOneBits(u_input.a.yx << (vec2<u32>(u_input.a.x, u_input.c.x) % vec2<u32>(32u))), !arg_1, arg_2, func_3()));
    var var_2 = !var_1.b.x;
    return Struct_2(!(_wgslsmith_f_op_f32(ceil(710f)) < _wgslsmith_f_op_f32(-156f - var_1.d.d.b.x)), countOneBits(~_wgslsmith_div_vec2_u32(var_1.d.d.a, ~u_input.b)), vec4<bool>((var_1.d.d.a.x < 33357u) & var_1.b.x, false, true, !arg_1.x), Struct_1(_wgslsmith_add_vec2_u32(~vec2<u32>(15147u, 12907u), abs(var_1.d.d.a)) | vec2<u32>(reverseBits(1u), ~4294967295u), var_1.d.d.b), arg_1.yxw);
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    var var_0 = true != (_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1612f, arg_0.b.x)) != arg_0.b.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.x), 1000f), _wgslsmith_f_op_f32(-arg_0.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -782f), _wgslsmith_f_op_f32(ceil(-593f)), _wgslsmith_f_op_f32(f32(-1f) * -696f)));
    let var_2 = ~2147483647i;
    global0 = array<bool, 27>();
    var var_3 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(reverseBits(select(u_input.a.x >> (u_input.a.x % 32u), u_input.a.x, global0[_wgslsmith_index_u32(arg_0.a.x ^ 4294967295u, 27u)])), u_input.a.x), arg_0.a.x);
    return func_4(!vec4<bool>(!global0[_wgslsmith_index_u32(~arg_0.a.x, 27u)], func_2(Struct_3(u_input.a.x), 0i, true, vec4<u32>(4294967295u, 4294967295u, 17157u, arg_0.a.x)), func_2(Struct_3(arg_0.a.x), ~var_2, global0[_wgslsmith_index_u32(arg_0.a.x, 27u)], ~vec4<u32>(u_input.a.x, 65635u, 46743u, 39812u)), global0[_wgslsmith_index_u32((arg_0.a.x ^ u_input.c.x) ^ _wgslsmith_add_u32(1u, u_input.b.x), 27u)]), select(select(!select(vec4<bool>(false, global0[_wgslsmith_index_u32(arg_0.a.x, 27u)], true, true), vec4<bool>(false, false, global0[_wgslsmith_index_u32(30403u, 27u)], false), true), !select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 27u)], true, global0[_wgslsmith_index_u32(arg_0.a.x, 27u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 27u)], global0[_wgslsmith_index_u32(arg_0.a.x, 27u)], true), vec4<bool>(global0[_wgslsmith_index_u32(16819u, 27u)], false, false, global0[_wgslsmith_index_u32(137442u, 27u)])), vec4<bool>(global0[_wgslsmith_index_u32(arg_0.a.x, 27u)], global0[_wgslsmith_index_u32(arg_0.a.x, 27u)], global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(22114u, u_input.a.x), 27u)], false)), !select(select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(arg_0.a.x, 27u)], global0[_wgslsmith_index_u32(u_input.a.x, 27u)], global0[_wgslsmith_index_u32(22376u, 27u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 27u)], false, global0[_wgslsmith_index_u32(1055u, 27u)], global0[_wgslsmith_index_u32(40414u, 27u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 27u)], true, false)), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 27u)], false, global0[_wgslsmith_index_u32(u_input.c.x, 27u)], global0[_wgslsmith_index_u32(u_input.c.x, 27u)]), !global0[_wgslsmith_index_u32(4294967295u, 27u)]), any(select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 27u)]), vec2<bool>(false, false), false)) | true), Struct_1(_wgslsmith_div_vec2_u32(min(u_input.b, arg_0.a), vec2<u32>(u_input.c.x, arg_0.a.x)) ^ countOneBits(countOneBits(arg_0.a)), _wgslsmith_div_vec3_f32(vec3<f32>(-514f, _wgslsmith_f_op_f32(1473f * arg_0.b.x), arg_0.b.x), _wgslsmith_f_op_vec3_f32(trunc(var_1.ywz)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(~u_input.a.yz, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-2358f, 869f)), -635f), _wgslsmith_div_f32(_wgslsmith_div_f32(-1100f, -1000f), _wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1175f, -483f)), -1000f))));
    global0 = array<bool, 27>();
    let var_1 = any(!var_0.c.zxx);
    let var_2 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, ~0u, ~(~u_input.b.x), 4294967295u), vec4<u32>(firstTrailingBit(u_input.c.x), abs(u_input.b.x) >> (u_input.a.x % 32u), u_input.b.x, var_0.b.x));
    var_0 = func_4(vec4<bool>(var_1, !var_0.c.x, false != all(var_0.c), all(!(!var_0.c))), var_0.c, var_0.d);
    var var_3 = var_2;
    let var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(round(var_0.d.b.x)), -516f, _wgslsmith_div_f32(-560f, var_0.d.b.x)) + vec4<f32>(-1029f, _wgslsmith_f_op_f32(select(-438f, 860f, true)), _wgslsmith_f_op_f32(f32(-1f) * -1104f), _wgslsmith_f_op_f32(-var_0.d.b.x))))), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.d.b.x, 741f, _wgslsmith_f_op_f32(-1072f + 1577f), -203f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0.d.b.x, -1260f, -592f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(1u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(58264u, 37294u, var_2, u_input.a.x), vec4<u32>(var_2, u_input.a.x, var_2, 1u)), var_2), var_4);
}

