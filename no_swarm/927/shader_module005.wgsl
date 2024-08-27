struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: u32) -> vec2<bool> {
    global0 = Struct_1(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(16939i, 35024i, 1i) & vec3<i32>(1852i, -1i, global0.c), ~vec3<i32>(1i, 6500i, 37458i)), arg_0.x) & -25367i, u_input.a, -2147483647i, global0.d);
    let var_0 = 1738f;
    var var_1 = any(!select(vec4<bool>(global0.d.x != global0.d.x, true, any(vec2<bool>(false, false)), all(vec4<bool>(false, false, false, true))), vec4<bool>(select(true, false, false), all(vec4<bool>(false, true, true, false)), false, false), true));
    return vec2<bool>(all(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), true)), true);
}

fn func_2(arg_0: u32, arg_1: f32) -> vec4<i32> {
    var var_0 = Struct_1(~(~1i), -33032i, 23241i, _wgslsmith_f_op_vec4_f32(-global0.d));
    let var_1 = !select(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, false), func_3(vec2<i32>(var_0.b, global0.b), vec4<u32>(3249u, arg_0, 4294967295u, u_input.b.x), arg_0), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), !select(vec2<bool>(true, true), vec2<bool>(true, true), false)), (_wgslsmith_f_op_f32(-global0.d.x) < var_0.d.x) && false);
    var_0 = Struct_1(_wgslsmith_dot_vec2_i32(-(~vec2<i32>(-2147483647i, 1i) << (countOneBits(u_input.b) % vec2<u32>(32u))), -(~(~vec2<i32>(global0.c, global0.a)))), u_input.a, var_0.b, vec4<f32>(var_0.d.x, var_0.d.x, _wgslsmith_f_op_f32(-218f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -110f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - 789f)), 360f, var_1.x))));
    let var_2 = Struct_2(~u_input.c.x, _wgslsmith_mult_vec3_u32(~(~u_input.c.yyx), vec3<u32>(_wgslsmith_dot_vec2_u32(~u_input.b, abs(u_input.c.yx)), arg_0, arg_0)));
    global0 = Struct_1(~1i, -44304i, max(global0.a, _wgslsmith_sub_i32(global0.b, var_0.b)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1)))), _wgslsmith_f_op_f32(-159f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(var_0.d.x + global0.d.x)))), -1482f, _wgslsmith_f_op_f32(1700f + var_0.d.x)));
    return ~vec4<i32>(26894i, global0.b, _wgslsmith_dot_vec3_i32(-select(vec3<i32>(-17765i, 2147483647i, global0.c), vec3<i32>(var_0.a, 2147483647i, global0.a), true), abs(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 10509i, -2147483647i), vec3<i32>(var_0.a, 1i, u_input.a)))), 1i ^ _wgslsmith_add_i32(_wgslsmith_sub_i32(global0.a, -21819i), 2147483647i));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_2) -> u32 {
    global0 = Struct_1(-1i, arg_1.a, arg_0.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(global0.d, _wgslsmith_f_op_vec4_f32(min(arg_1.d, arg_1.d))))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-global0.d.x), global0.d.x, _wgslsmith_f_op_f32(-arg_1.d.x), -1421f))), (arg_1.d.x == arg_1.d.x) && ((u_input.d.x | arg_3.a) == countOneBits(u_input.c.x)))));
    global0 = arg_1;
    var var_0 = u_input.a;
    var var_1 = vec3<i32>(-41142i, 2534i, select(arg_0.x, _wgslsmith_mult_i32(_wgslsmith_add_i32(arg_0.x, u_input.a << (arg_3.a % 32u)), _wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(arg_0.x, 2147483647i, -12712i, arg_1.c)) | ~arg_1.b), true));
    let var_2 = Struct_2(~u_input.c.x, (u_input.d.xzx | vec3<u32>(~u_input.d.x, 43846u << (1u % 32u), _wgslsmith_add_u32(4294967295u, arg_3.b.x))) >> (max(vec3<u32>(arg_3.a, arg_3.b.x, 1u), firstLeadingBit(~arg_3.b)) % vec3<u32>(32u)));
    return 4294967295u;
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> Struct_2 {
    let var_0 = func_4(func_2(~u_input.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1463f, arg_0.d.x) + _wgslsmith_f_op_f32(global0.d.x * -166f)) - arg_0.d.x)), Struct_1(_wgslsmith_sub_i32(max(u_input.a, countOneBits(u_input.a)), _wgslsmith_sub_i32(2147483647i & arg_1, arg_0.a)), _wgslsmith_dot_vec4_i32(func_2(_wgslsmith_sub_u32(76549u, u_input.b.x), _wgslsmith_f_op_f32(ceil(arg_0.d.x))), _wgslsmith_div_vec4_i32(vec4<i32>(0i, -2147483647i, -1i, arg_0.b), ~vec4<i32>(-2147483647i, 0i, arg_0.b, 0i))), 2147483647i, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.d.x, global0.d.x, -114f, 1000f), vec4<f32>(global0.d.x, 1334f, global0.d.x, global0.d.x), false)))))), global0.d.yz, Struct_2(8201u, ~u_input.c.wwy));
    let var_1 = Struct_2(var_0, _wgslsmith_clamp_vec3_u32(u_input.d.xwx, u_input.c.zyy, vec3<u32>(_wgslsmith_mod_u32(u_input.b.x, var_0 >> (u_input.d.x % 32u)), ~_wgslsmith_mod_u32(u_input.c.x, var_0), ~(var_0 >> (79081u % 32u)))));
    global0 = Struct_1(arg_1, u_input.a, -arg_1, vec4<f32>(global0.d.x, -374f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) + global0.d.x)), 659f));
    var var_2 = vec2<i32>(global0.b, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(18508i, 28805i, -2147483647i, arg_0.b), vec4<i32>(arg_1, arg_0.b, arg_0.a, arg_0.c)) & -vec4<i32>(2147483647i, global0.a, arg_0.a, arg_1), _wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.a, u_input.a, global0.b, -1i) & firstLeadingBit(vec4<i32>(arg_0.b, arg_0.c, -21511i, 53321i)), -vec4<i32>(arg_1, arg_1, -11809i, arg_1))));
    let var_3 = Struct_1(_wgslsmith_div_i32(arg_0.a, abs(select(global0.c ^ var_2.x, max(var_2.x, -23979i), true))), firstTrailingBit(-31869i), _wgslsmith_dot_vec2_i32(~vec2<i32>(firstLeadingBit(arg_1), arg_1), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-2147483647i, 8038i), ~_wgslsmith_mod_vec2_i32(vec2<i32>(var_2.x, arg_1), vec2<i32>(2147483647i, global0.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(global0.d)) + _wgslsmith_f_op_vec4_f32(-global0.d)));
    return Struct_2(u_input.b.x, _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(~1u, 4294967295u, _wgslsmith_sub_u32(10727u, u_input.d.x)), min(vec3<u32>(50296u, 14926u, 41409u), select(var_1.b, u_input.c.zyw, vec3<bool>(true, true, false)))), ~min(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0, 46175u, 1u), vec3<u32>(0u, 4991u, 66107u)), u_input.c.wzx)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(u_input.a, u_input.a, firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a, ~u_input.a), 1i >> (_wgslsmith_mod_u32(u_input.d.x, 1u) % 32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-386f, global0.d.x, -1105f, global0.d.x))))));
    let var_0 = func_1(Struct_1(-1i, ~(~(~(-2147483647i))), ~(~global0.c), _wgslsmith_f_op_vec4_f32(global0.d - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global0.d))))), global0.c);
    let var_1 = _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(func_2(u_input.b.x, -460f).yww, _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 30081i, -25208i), vec3<i32>(-17154i, -2147483647i, -2147483647i)) ^ -vec3<i32>(u_input.a, global0.a, -34710i), vec3<i32>(u_input.a, u_input.a, -11591i) & reverseBits(vec3<i32>(global0.b, u_input.a, u_input.a))), vec3<i32>(u_input.a, 0i, -2147483647i)) | ~vec3<i32>(max(global0.b, 0i), _wgslsmith_mult_i32(firstTrailingBit(16030i), -17316i), ~31617i ^ u_input.a);
    var var_2 = -abs(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-25284i, u_input.a), var_1.zz), max(_wgslsmith_clamp_i32(var_1.x, global0.b, -2434i), -12907i), func_2(_wgslsmith_mult_u32(18112u, 24929u), _wgslsmith_f_op_f32(global0.d.x * -937f)).x, _wgslsmith_mod_i32(var_1.x, u_input.a ^ global0.c)));
    var_2 = select(abs(countOneBits(firstTrailingBit(vec4<i32>(0i, 1i, 1i, var_1.x)))), vec4<i32>(-2147483647i, _wgslsmith_sub_i32(45026i, firstLeadingBit(global0.b)), -19451i, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(1i, global0.c, 2147483647i, 2147483647i)), vec4<i32>(1i, global0.b, var_1.x, u_input.a)) & global0.a), vec4<bool>(!(!(global0.d.x >= global0.d.x)), (_wgslsmith_mod_i32(0i, global0.a) ^ u_input.a) != reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.c, global0.c, -1i, var_2.x), vec4<i32>(-1i, -1i, u_input.a, var_2.x))), any(vec4<bool>(true, false, false, false)) & true, !any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)))));
    let var_3 = vec2<u32>(1u, var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(global0.d.zw, ~(select(min(vec4<i32>(global0.c, 20305i, var_1.x, 5158i), vec4<i32>(-65479i, 0i, -1i, 1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-9842i, var_1.x, 1i, var_1.x), vec4<i32>(-53209i, -14109i, var_2.x, var_2.x)), true) | vec4<i32>(32674i, -6043i, u_input.a, -1912i)), ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, var_0.a, 2900u), func_1(Struct_1(30474i, -21446i, var_1.x, vec4<f32>(-196f, 609f, -177f, 1347f)), -1i).b), firstLeadingBit(reverseBits(var_0.a)), _wgslsmith_mod_u32(1u, var_0.b.x) << (~4294967295u % 32u)), global0.d.x, vec3<u32>(_wgslsmith_mod_u32(var_0.b.x, 1u), max(_wgslsmith_clamp_u32(~1u, 2040u, ~var_0.a), ~var_0.b.x >> (u_input.b.x % 32u)), var_0.a));
}

