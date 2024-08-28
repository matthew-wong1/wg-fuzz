struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> i32 {
    return 0i;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = func_3(236i << (abs(0u) % 32u));
    let var_1 = abs(reverseBits(vec4<u32>(arg_0.c.x, ~12743u, ~(11028u & u_input.a.x), min(26614u, u_input.a.x))));
    global0 = var_1.x;
    let var_2 = arg_0;
    global0 = ~(select(~var_1.x, 1u | var_2.c.x, (0u <= u_input.a.x) | !arg_0.b.x) | var_1.x);
    return Struct_2(~(_wgslsmith_mod_vec3_i32(vec3<i32>(var_2.e.x, -34161i, 0i), -vec3<i32>(0i, -42202i, -44282i)) | vec3<i32>(var_2.a.x | 12427i, firstTrailingBit(-936i), ~var_0)), vec3<bool>(all(vec2<bool>(var_2.b.x, any(var_2.b))), !select(arg_1.x, true, var_2.b.x && false), any(select(select(arg_1.xw, var_2.b.ww, true), arg_1.zy, all(arg_0.b)))), arg_0.b.x, Struct_1(vec3<i32>(firstLeadingBit(var_2.e.x), ~(arg_0.a.x | arg_0.a.x), var_2.a.x), vec4<bool>(true, var_2.b.x | arg_1.x, true, !(31352u > u_input.a.x)), _wgslsmith_div_vec4_u32(~_wgslsmith_mod_vec4_u32(var_2.d, vec4<u32>(var_1.x, arg_0.c.x, arg_0.c.x, 61236u)), reverseBits(arg_0.c)), firstTrailingBit(vec4<u32>(0u, _wgslsmith_dot_vec4_u32(arg_0.d, vec4<u32>(u_input.a.x, 48705u, 32466u, 25322u)), var_2.d.x, 0u)), var_2.e), Struct_1(firstTrailingBit(arg_0.a), !(!var_2.b), vec4<u32>(u_input.a.x, 1u >> (u_input.a.x % 32u), u_input.a.x, select(u_input.a.x, 1u, true != arg_0.b.x)), vec4<u32>(_wgslsmith_div_u32(0u << (0u % 32u), ~var_2.d.x), var_2.d.x, countOneBits(~1u), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_0.c.x, arg_0.d.x, var_2.d.x, 45941u)), vec4<u32>(0u, var_2.c.x, var_2.c.x, 1u))), var_2.e));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2) -> vec4<i32> {
    let var_0 = Struct_4(arg_1.e.d, arg_1.e.b.wxx, Struct_3(vec3<i32>(-2147483647i, reverseBits(arg_1.a.x), _wgslsmith_mod_i32(_wgslsmith_sub_i32(arg_1.d.e.x, -68864i), -50750i)), vec4<bool>(any(arg_1.e.b.yxz), _wgslsmith_f_op_f32(-arg_0.x) >= _wgslsmith_div_f32(2335f, -1602f), !(arg_1.b.x != false), arg_1.c), arg_0.x, func_2(func_2(func_2(Struct_1(arg_1.a, vec4<bool>(false, false, arg_1.e.b.x, false), arg_1.d.c, vec4<u32>(arg_1.d.c.x, arg_1.d.c.x, 4294967295u, 4294967295u), arg_1.a), vec4<bool>(false, arg_1.c, arg_1.e.b.x, arg_1.c), vec4<f32>(arg_0.x, 1000f, -488f, arg_0.x)).d, select(vec4<bool>(arg_1.d.b.x, arg_1.e.b.x, arg_1.b.x, false), arg_1.e.b, arg_1.d.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 410f, -1915f, arg_0.x))).d, vec4<bool>(arg_1.e.b.x, true == arg_1.b.x, true, func_2(Struct_1(arg_1.d.a, arg_1.d.b, vec4<u32>(1u, u_input.a.x, 47030u, 9308u), arg_1.e.d, vec3<i32>(-33604i, arg_1.e.a.x, arg_1.d.a.x)), vec4<bool>(true, arg_1.c, true, false), vec4<f32>(arg_0.x, arg_0.x, 878f, -1271f)).c), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -2099f), vec4<f32>(-214f, -1940f, arg_0.x, 1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 1184f) + vec4<f32>(999f, arg_0.x, -297f, arg_0.x))))));
    global0 = 402u;
    global0 = _wgslsmith_dot_vec4_u32(arg_1.e.c, arg_1.e.d);
    global0 = ~(~1u);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-649f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.c) + -1136f))));
    return vec4<i32>(-1i) * -min(vec4<i32>(arg_1.d.a.x, _wgslsmith_mod_i32(-1i, 1i), arg_1.a.x, _wgslsmith_sub_i32(var_0.c.d.a.x, var_0.c.a.x)), max(vec4<i32>(arg_1.a.x, arg_1.a.x, arg_1.e.e.x, 2147483647i), reverseBits(vec4<i32>(-35681i, 4657i, 2147483647i, arg_1.d.e.x))));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: u32, arg_3: vec4<i32>) -> Struct_4 {
    var var_0 = vec3<bool>(any(vec3<bool>(true, true, true)), true, all(vec4<bool>(false, ~u_input.a.x < 74180u, true, false)));
    global0 = ~firstLeadingBit(0u >> (_wgslsmith_add_u32(~u_input.a.x, u_input.a.x) % 32u));
    let var_1 = vec4<i32>(-64189i, arg_3.x, -1i, _wgslsmith_add_i32(~10684i, -arg_3.x));
    var var_2 = select(-func_4(vec2<f32>(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_div_f32(arg_1, arg_0)), func_2(Struct_1(arg_3.yyw, vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<u32>(80689u, 9018u, arg_2, 1u), vec4<u32>(5703u, u_input.a.x, arg_2, u_input.a.x), vec3<i32>(-13069i, arg_3.x, arg_3.x)), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<f32>(-1099f, -1164f, 740f, arg_0))), firstLeadingBit(var_1), true);
    var_2 = arg_3;
    return Struct_4(countOneBits(vec4<u32>(4294967295u >> (~u_input.a.x % 32u), 1u, 16683u, ~(~1u))), select(vec3<bool>(var_0.x, var_2.x < var_2.x, !(!var_0.x)), !vec3<bool>(var_0.x, all(vec3<bool>(true, var_0.x, var_0.x)), arg_2 < 0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) != arg_0), Struct_3(max(vec3<i32>(var_2.x, -4498i >> (u_input.a.x % 32u), abs(0i)), vec3<i32>(_wgslsmith_div_i32(2147483647i, -2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, 2147483647i), var_2.wy), -23507i)), func_2(Struct_1(firstTrailingBit(arg_3.yzx), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, true)), vec4<u32>(u_input.a.x, u_input.a.x, 83934u, arg_2) << (vec4<u32>(55377u, 23211u, 38491u, arg_2) % vec4<u32>(32u)), abs(vec4<u32>(59176u, 68371u, arg_2, arg_2)), func_4(vec2<f32>(arg_1, arg_0), Struct_2(var_2.xwy, vec3<bool>(var_0.x, var_0.x, var_0.x), false, Struct_1(arg_3.zww, vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<u32>(u_input.a.x, arg_2, arg_2, 2162u), vec4<u32>(u_input.a.x, u_input.a.x, arg_2, 17356u), vec3<i32>(1i, -45013i, 9600i)), Struct_1(vec3<i32>(-1i, arg_3.x, -1i), vec4<bool>(var_0.x, true, true, true), vec4<u32>(arg_2, 14012u, 52622u, arg_2), vec4<u32>(u_input.a.x, arg_2, arg_2, 0u), vec3<i32>(var_1.x, 0i, -1i)))).yzw), !(!vec4<bool>(var_0.x, true, var_0.x, var_0.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, 751f) - vec4<f32>(-932f, arg_1, arg_1, arg_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1247f, arg_1, arg_1)))).e.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_div_f32(-2859f, arg_0), true)))), Struct_2(-(~arg_3.xyz), select(!vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, false), var_0.x), true, Struct_1(vec3<i32>(var_1.x, 5085i, var_1.x), vec4<bool>(var_0.x, var_0.x, false, true), firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, arg_2)), ~vec4<u32>(5070u, u_input.a.x, u_input.a.x, arg_2), vec3<i32>(-2147483647i, 1i, 38108i)), func_2(func_2(Struct_1(vec3<i32>(var_1.x, var_1.x, 0i), vec4<bool>(var_0.x, false, true, false), vec4<u32>(arg_2, 4294967295u, 84367u, u_input.a.x), vec4<u32>(124922u, 4294967295u, u_input.a.x, 4294967295u), arg_3.zyx), vec4<bool>(false, true, var_0.x, false), vec4<f32>(1391f, 1309f, arg_1, arg_0)).d, vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<f32>(-2187f, 459f, arg_1, -1065f)).e)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 4294967295u;
    global0 = 4294967295u;
    var var_0 = func_1(-1578f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -328f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1490f * _wgslsmith_f_op_f32(-221f - -291f)))), ~(~countOneBits(14057u)), -countOneBits(-_wgslsmith_div_vec4_i32(vec4<i32>(-16994i, -1i, 58672i, -9996i), vec4<i32>(28791i, -1i, -12961i, -1i))));
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(687f))))), _wgslsmith_f_op_f32(-var_0.c.c), -1184f)));
    let var_2 = var_0.c.c;
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

