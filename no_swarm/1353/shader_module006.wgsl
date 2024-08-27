struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, vec3<i32>(-20387i, 1i, -10544i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<i32>) -> vec3<i32> {
    let var_0 = Struct_1(any(!vec3<bool>(!global0.a, global0.b.x > global0.b.x, true)), _wgslsmith_clamp_vec3_i32(vec3<i32>(max(-2147483647i, -global0.b.x), firstLeadingBit(~2147483647i), global0.b.x), (select(global0.b, global0.b, vec3<bool>(true, false, global0.a)) >> (abs(vec3<u32>(25577u, 27337u, u_input.a)) % vec3<u32>(32u))) ^ -countOneBits(vec3<i32>(arg_1.x, -5137i, 2147483647i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.x, arg_1.x, global0.b.x), vec3<i32>(arg_1.x, 1i, countOneBits(1i)), ~vec3<i32>(-9315i, global0.b.x, -59668i))));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x))), _wgslsmith_f_op_f32(floor(arg_0.x)), 1000f) + vec3<f32>(arg_0.x, arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1f)));
    let var_2 = var_0;
    global0 = Struct_1(global0.a, _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(0i, global0.b.x, arg_1.x)), vec3<i32>(arg_1.x, arg_1.x, 26180i), vec3<i32>(1i, var_0.b.x, -1i)) | var_2.b, -vec3<i32>(~(-2147483647i), 1i, _wgslsmith_sub_i32(var_0.b.x, global0.b.x))));
    var var_3 = true;
    return ~var_0.b;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1) -> vec4<u32> {
    global0 = arg_1;
    let var_0 = select(select(select(select(!vec3<bool>(arg_1.a, arg_1.a, false), vec3<bool>(true, global0.a, false), select(vec3<bool>(arg_1.a, false, arg_1.a), vec3<bool>(false, arg_1.a, true), true)), !(!vec3<bool>(true, global0.a, true)), select(select(vec3<bool>(global0.a, global0.a, global0.a), vec3<bool>(true, arg_1.a, arg_1.a), arg_1.a), vec3<bool>(global0.a, true, false), select(vec3<bool>(false, false, true), vec3<bool>(global0.a, true, arg_1.a), vec3<bool>(true, true, false)))), vec3<bool>(arg_1.a || global0.a, arg_1.a, any(vec2<bool>(false, false))), all(!vec3<bool>(global0.a, arg_1.a, false))), select(!select(vec3<bool>(global0.a, false, false), select(vec3<bool>(arg_1.a, arg_1.a, global0.a), vec3<bool>(arg_1.a, global0.a, false), vec3<bool>(true, arg_1.a, global0.a)), vec3<bool>(arg_1.a, global0.a, true)), vec3<bool>(true, all(!vec4<bool>(global0.a, false, true, arg_1.a)), true), vec3<bool>(all(vec3<bool>(global0.a, arg_1.a, arg_1.a)) | !global0.a, all(!vec2<bool>(true, arg_1.a)), arg_1.a)), !any(!select(vec2<bool>(false, false), vec2<bool>(global0.a, global0.a), arg_1.a)));
    global0 = arg_1;
    var var_1 = arg_0.x == 52992i;
    global0 = arg_1;
    return reverseBits(min(vec4<u32>(reverseBits(~u_input.a), _wgslsmith_sub_u32(45220u | u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 0u), vec3<u32>(46u, u_input.a, 0u))), _wgslsmith_mult_u32(u_input.a, u_input.a), ~_wgslsmith_mult_u32(u_input.a, 41893u)), reverseBits(~vec4<u32>(u_input.a, 39996u, u_input.a, 16552u) << ((vec4<u32>(1u, 0u, 14304u, 0u) ^ vec4<u32>(u_input.a, 0u, 59633u, u_input.a)) % vec4<u32>(32u)))));
}

fn func_2(arg_0: vec3<i32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-236f, 744f) * vec2<f32>(1000f, 489f)))));
    var var_1 = 2147483647i;
    var var_2 = func_4(global0.b.zy, Struct_1(global0.a, func_3(var_0, vec2<i32>(-arg_0.x, abs(arg_0.x)))));
    let var_3 = Struct_1(global0.a, -vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(-3115i, arg_0.x, global0.b.x, global0.b.x), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.x, global0.b.x, global0.b.x, arg_0.x), vec4<i32>(arg_0.x, arg_0.x, -24791i, arg_0.x))), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, 1i), vec2<i32>(global0.b.x, global0.b.x)), reverseBits(arg_0.x)), -16732i));
    return vec2<bool>(var_3.a, true);
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> bool {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    let var_2 = global0.b.x;
    let var_3 = ~4294967295u;
    global0 = Struct_1(false, vec3<i32>(global0.b.x, -15606i, var_0.b.x));
    return all(select(!(!select(vec2<bool>(var_0.a, global0.a), vec2<bool>(arg_0.a, arg_0.a), false)), vec2<bool>(1i > select(global0.b.x, 1i, arg_0.a), !any(vec2<bool>(true, global0.a))), select(vec2<bool>(var_0.a, global0.a), func_2(var_0.b), global0.a)));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: u32) -> bool {
    var var_0 = Struct_1(_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x), -_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.b.x, -1i, 3509i, -2147483647i), vec4<i32>(global0.b.x, global0.b.x, 46039i, -39657i), vec4<i32>(arg_2.b.x, arg_0.b.x, -1i, 2147483647i))) <= 0i, global0.b ^ ~abs(arg_2.b));
    let var_1 = arg_0;
    var var_2 = _wgslsmith_div_i32(_wgslsmith_sub_i32(~2147483647i, ~arg_2.b.x), _wgslsmith_dot_vec3_i32(global0.b, -vec3<i32>(global0.b.x, arg_2.b.x, arg_2.b.x)) & arg_2.b.x);
    var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.x, -(~(-2147483647i)), ~global0.b.x & var_1.b.x, -(i32(-1i) * -50930i)) ^ vec4<i32>(_wgslsmith_sub_i32(-arg_0.b.x, ~arg_0.b.x), 1i, _wgslsmith_sub_i32(i32(-1i) * -1i, 1i), ~(-var_1.b.x)), vec4<i32>(arg_0.b.x, -2147483647i, 46167i, _wgslsmith_mod_i32(36034i, _wgslsmith_mult_i32(arg_0.b.x, _wgslsmith_add_i32(var_1.b.x, var_0.b.x)))));
    global0 = Struct_1(true, vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(arg_2.b.x, var_0.b.x) << (18469u % 32u), var_0.b.x & 34135i), countOneBits(global0.b.x) & (0i ^ var_1.b.x), -(7079i | var_0.b.x) | _wgslsmith_add_i32(1i, abs(15501i))));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_5(Struct_1(false, -firstTrailingBit(vec3<i32>(global0.b.x, global0.b.x, global0.b.x))), select(vec2<bool>(func_1(Struct_1(true, global0.b), false), false), !select(vec2<bool>(false, global0.a), vec2<bool>(false, global0.a), vec2<bool>(global0.a, global0.a)), global0.a), Struct_1(true, vec3<i32>(-1i) * -vec3<i32>(global0.b.x, 49720i, global0.b.x)), ~4294967295u), select(vec3<i32>(-countOneBits(1i), -2147483647i, -6272i), vec3<i32>(-21349i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(5737i, 8780i), global0.b.x), _wgslsmith_sub_i32(global0.b.x, -1552i)), true | global0.a));
    var var_1 = ~(~select(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, 87593u), ~vec4<u32>(33377u, 65682u, 35695u, 0u)), ~(~vec4<u32>(u_input.a, 112856u, 104646u, 4294967295u)), global0.a));
    var_1 = firstTrailingBit(~_wgslsmith_add_vec4_u32(~vec4<u32>(1814u, var_1.x, 4294967295u, 48471u), ~vec4<u32>(u_input.a, var_1.x, 45521u, u_input.a)) & vec4<u32>(u_input.a, ~reverseBits(1u), 44082u, u_input.a));
    let var_2 = Struct_1(false, vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, global0.b.x, global0.b.x), min(vec3<i32>(-14257i, 1119i, global0.b.x), var_0.b)), ~(~reverseBits(1i)), -(i32(-1i) * -1i)));
    var var_3 = Struct_1(true, var_0.b);
    var_1 = ~(~vec4<u32>(~1u, 1u, _wgslsmith_div_u32(0u, 21924u), 0u));
    var_1 = select(vec4<u32>(var_1.x, u_input.a, ~var_1.x, var_1.x), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 11434u, _wgslsmith_mod_u32(var_1.x, 1u), ~4294967295u), ~(~vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a))), countOneBits(vec4<u32>(max(u_input.a, u_input.a), 1u & u_input.a, 52399u, var_1.x))), !select(vec4<bool>(true, true, true, false), !select(vec4<bool>(false, var_0.a, true, true), vec4<bool>(var_3.a, true, var_3.a, var_2.a), vec4<bool>(var_2.a, false, false, false)), true));
    var var_4 = ~(-(~_wgslsmith_sub_i32(-67815i, global0.b.x)));
    let var_5 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1248f - 455f), _wgslsmith_f_op_f32(191f - 1000f), -863f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1628f, 997f, -703f)))), u_input.a);
}

