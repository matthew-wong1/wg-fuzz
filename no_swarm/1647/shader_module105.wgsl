struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(0u);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    global0 = Struct_2(~(~_wgslsmith_div_u32(global0.a, global0.a)) << (139883u % 32u));
    let var_0 = true;
    var var_1 = Struct_1(1i);
    let var_2 = vec4<u32>(9207u, 90451u, global0.a, 36613u);
    var var_3 = !(var_0 || (var_0 && (!var_0 && all(vec3<bool>(var_0, true, var_0)))));
    return select(~select(var_2.x, _wgslsmith_sub_u32(global0.a, 0u) >> (~1u % 32u), var_0), ~(~global0.a), any(vec2<bool>(true, true)));
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> i32 {
    global0 = Struct_2(func_3());
    global0 = Struct_2(~(arg_0.a >> (_wgslsmith_div_u32(arg_0.a, 0u) % 32u)));
    global0 = Struct_2(30964u);
    var var_0 = _wgslsmith_div_vec3_i32(~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, 50428i, 27451i, u_input.a.x) & vec4<i32>(u_input.a.x, u_input.a.x, arg_1, 14552i), ~vec4<i32>(29672i, 2147483647i, u_input.a.x, -12920i)), u_input.a.x, select(2147483647i, reverseBits(arg_1), 2915u < arg_0.a)), vec3<i32>(arg_1, _wgslsmith_dot_vec4_i32((vec4<i32>(-2147483647i, 29699i, -22711i, arg_1) | vec4<i32>(u_input.a.x, -1i, arg_1, u_input.a.x)) >> ((vec4<u32>(global0.a, 67553u, 1u, arg_0.a) | vec4<u32>(4294967295u, arg_0.a, global0.a, 1u)) % vec4<u32>(32u)), vec4<i32>(arg_1 ^ arg_1, -36285i, _wgslsmith_sub_i32(u_input.a.x, arg_1), arg_1 >> (29253u % 32u))), i32(-1i) * -(u_input.a.x ^ -15195i)));
    global0 = Struct_2(_wgslsmith_dot_vec3_u32(select(firstTrailingBit(vec3<u32>(global0.a, 52808u, 4294967295u)), _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.a, arg_0.a, 1u), vec3<u32>(arg_0.a, arg_0.a, 9692u)) | ~vec3<u32>(59738u, arg_0.a, 0u), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.a, arg_0.a, arg_0.a), vec3<u32>(arg_0.a, arg_0.a, global0.a), ~vec3<u32>(17185u, global0.a, arg_0.a)), firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 44206u, global0.a), vec3<u32>(4294967295u, global0.a, 1u))))));
    return -16439i;
}

fn func_1() -> vec3<bool> {
    let var_0 = _wgslsmith_div_vec2_i32(u_input.a, -(~reverseBits(u_input.a | vec2<i32>(u_input.a.x, -16571i))));
    var var_1 = (_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-61546i, 2147483647i, 2147483647i), vec3<i32>(1i, 3426i, -1i) >> (vec3<u32>(global0.a, global0.a, global0.a) % vec3<u32>(32u))), -vec3<i32>(-33346i, -7371i, u_input.a.x) ^ -vec3<i32>(2933i, 0i, 2147483647i)) << (_wgslsmith_sub_vec3_u32(max(vec3<u32>(0u, 1u, global0.a), _wgslsmith_mod_vec3_u32(vec3<u32>(global0.a, global0.a, global0.a), vec3<u32>(48947u, global0.a, global0.a))), ~reverseBits(vec3<u32>(global0.a, 19291u, 34491u))) % vec3<u32>(32u))) << (~(~select(_wgslsmith_div_vec3_u32(vec3<u32>(global0.a, global0.a, 1u), vec3<u32>(global0.a, 50997u, 52136u)), _wgslsmith_sub_vec3_u32(vec3<u32>(20041u, 32942u, 1u), vec3<u32>(global0.a, global0.a, 1727u)), vec3<bool>(true, true, true))) % vec3<u32>(32u));
    var_1 = -(select(vec3<i32>(_wgslsmith_sub_i32(var_1.x, var_1.x), abs(var_0.x), -40413i), vec3<i32>(-17060i | u_input.a.x, func_2(Struct_2(7907u), u_input.a.x), _wgslsmith_dot_vec2_i32(var_1.yz, var_1.zz)), true) >> (vec3<u32>(23276u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a, 16399u, 0u, 16525u), vec4<u32>(global0.a, 64313u, global0.a, global0.a)), 0u) % vec3<u32>(32u)));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-1746f, 1430f)), 1f, _wgslsmith_f_op_f32(-628f - -1303f), _wgslsmith_f_op_f32(f32(-1f) * -182f)) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1346f, -369f, -524f, -788f))))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1531f + 2003f)), _wgslsmith_f_op_f32(min(-1155f, -345f))), 694f, -1190f, _wgslsmith_f_op_f32(f32(-1f) * -1106f)));
    var var_3 = var_2.wxy;
    return !select(vec3<bool>(true, any(vec3<bool>(true, true, true)), -var_1.x != 1i), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), any(vec4<bool>(true, true, false, true))), vec3<bool>(true, true, true), any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(func_1(), vec3<bool>(true, all(vec3<bool>(true, all(vec3<bool>(false, true, false)), any(vec4<bool>(false, false, false, false)))), false), false);
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(255f, 391f)));
    global0 = Struct_2(max(countOneBits(~abs(global0.a)), reverseBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.a, 4294967295u, 0u, global0.a), vec4<u32>(19813u, 10174u, 4294967295u, global0.a)))));
    var var_2 = global0.a;
    global0 = Struct_2(_wgslsmith_dot_vec4_u32(abs(~(~vec4<u32>(60508u, global0.a, global0.a, 1u))), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.a, 40844u, global0.a ^ global0.a, 25288u), vec4<u32>(0u, _wgslsmith_sub_u32(global0.a, 20846u), func_3(), _wgslsmith_sub_u32(global0.a, global0.a)))));
    var var_3 = _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(9429u, global0.a, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, global0.a, 1u), vec3<u32>(111686u, global0.a, 53667u)), firstTrailingBit(vec3<u32>(1u, global0.a, global0.a))), vec3<u32>(global0.a, global0.a, ~global0.a) | _wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(global0.a, global0.a, global0.a)), vec3<u32>(global0.a, 0u, global0.a))), _wgslsmith_mult_vec3_u32(abs(select(min(vec3<u32>(global0.a, global0.a, global0.a), vec3<u32>(1u, global0.a, global0.a)), firstTrailingBit(vec3<u32>(41214u, global0.a, global0.a)), any(var_0))), vec3<u32>(_wgslsmith_sub_u32(~15350u, global0.a), ~firstTrailingBit(4294967295u), global0.a << (_wgslsmith_clamp_u32(global0.a, 0u, global0.a) % 32u))), firstTrailingBit(firstLeadingBit(vec3<u32>(countOneBits(0u), _wgslsmith_mod_u32(global0.a, 1u), 28409u))));
    let var_4 = select(vec3<u32>(~1u, 0u, abs(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(49207u, global0.a), vec2<u32>(global0.a, 41164u)), vec2<u32>(var_3.x, 35568u)))), max(max(~vec3<u32>(0u, 73132u, global0.a), vec3<u32>(4294967295u, 4294967295u, var_3.x) << (vec3<u32>(4294967295u, 4294967295u, 1u) % vec3<u32>(32u))), ~abs(vec3<u32>(1u, global0.a, 0u))) << (vec3<u32>(global0.a, ~0u ^ ~var_3.x, global0.a) % vec3<u32>(32u)), !var_0);
    let var_5 = ~(~u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(~62078u, ~(0u ^ global0.a)), 1i, ~u_input.a.x);
}

