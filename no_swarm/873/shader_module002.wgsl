struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 25>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: u32) -> u32 {
    var var_0 = countOneBits(arg_1);
    let var_1 = vec4<i32>(-2046i, -845i, u_input.a, _wgslsmith_clamp_i32(~_wgslsmith_clamp_i32(u_input.a, _wgslsmith_add_i32(u_input.b, -1i), firstLeadingBit(1i)), u_input.a, _wgslsmith_div_i32(-17460i, i32(-1i) * -2147483647i)));
    var_0 = _wgslsmith_add_u32(countOneBits(arg_1), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), select(select(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1, 71994u), vec2<u32>(7277u, 0u)), vec2<u32>(arg_1, 4294967295u), false), reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(arg_1, arg_1), vec2<u32>(45864u, arg_1))), vec2<bool>(true, true))));
    global0 = array<Struct_3, 25>();
    global0 = array<Struct_3, 25>();
    return max(0u, abs(112124u)) >> (arg_1 % 32u);
}

fn func_2() -> vec3<bool> {
    let var_0 = true;
    let var_1 = 1000f;
    let var_2 = select(max(reverseBits(vec2<u32>(func_3(1i, 86084u), 1u)), vec2<u32>(1u, ~(~74735u))), vec2<u32>(1u, _wgslsmith_div_u32(44786u, ~1u)), true);
    let var_3 = _wgslsmith_dot_vec3_u32(~(select(vec3<u32>(44962u, var_2.x, var_2.x), vec3<u32>(4294967295u, 4294967295u, var_2.x), vec3<bool>(false, true, false)) & vec3<u32>(var_2.x, 31842u, 26283u)), _wgslsmith_sub_vec3_u32(select(max(vec3<u32>(var_2.x, var_2.x, var_2.x), vec3<u32>(12472u, var_2.x, var_2.x)), ~vec3<u32>(89640u, var_2.x, var_2.x), vec3<bool>(false, var_0, false)), select(_wgslsmith_sub_vec3_u32(vec3<u32>(var_2.x, 35367u, 4294967295u), vec3<u32>(var_2.x, 1u, 4294967295u)), vec3<u32>(4294967295u, 0u, var_2.x), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(var_0, false, var_0))))) | _wgslsmith_sub_u32(~countOneBits(0u), var_2.x);
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_1))))))), var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)));
    return vec3<bool>(var_2.x <= (21341u ^ func_3(~(-10798i), countOneBits(var_2.x))), var_0, u_input.b != u_input.b);
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> bool {
    var var_0 = max(arg_0.a, select(39575u, _wgslsmith_sub_u32(1u, abs(arg_0.a)), false) >> ((select(31150u, ~arg_0.a, true) >> (arg_0.b.x % 32u)) % 32u));
    let var_1 = countOneBits(_wgslsmith_add_u32(_wgslsmith_add_u32(arg_0.b.x | arg_0.c, max(12621u, arg_0.b.x) >> (firstLeadingBit(32084u) % 32u)), arg_0.b.x));
    let var_2 = 45363u;
    let var_3 = func_2();
    var var_4 = vec4<i32>(u_input.b, ~2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-_wgslsmith_mod_i32(u_input.a, u_input.b), u_input.a, -2147483647i), vec3<i32>(_wgslsmith_add_i32(-1i, u_input.b), 2147483647i, -11325i)), u_input.a);
    return var_3.x;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_2) -> StorageBuffer {
    var var_0 = Struct_3(arg_2);
    var var_1 = Struct_3(var_0.a);
    var var_2 = ~(vec2<i32>(-2147483647i, -u_input.b) & select(_wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.a, u_input.a), -vec2<i32>(u_input.b, u_input.b)), ~vec2<i32>(u_input.a, u_input.b) ^ countOneBits(vec2<i32>(2147483647i, -12593i)), !arg_0.x != any(arg_0)));
    let var_3 = _wgslsmith_add_u32(var_0.a.c, abs(var_0.a.c) << (max(71991u, 93021u) % 32u));
    let var_4 = Struct_1(arg_0.zz);
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1893f, _wgslsmith_div_f32(1445f, _wgslsmith_f_op_f32(floor(-1699f))), var_0.a.d, -1926f)), countOneBits(vec3<u32>(arg_2.b.x, _wgslsmith_mod_u32(var_3, var_3), ~arg_1.a.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.d, arg_2.d) * vec2<f32>(-1050f, arg_2.d)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.a.d, var_0.a.d)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<bool>(false, true));
    var var_1 = 1374f;
    var var_2 = Struct_1(!select(select(vec2<bool>(var_0.a.x, true), vec2<bool>(var_0.a.x, true), true), var_0.a, vec2<bool>(true, !var_0.a.x)));
    var_1 = -1000f;
    global0 = array<Struct_3, 25>();
    let var_3 = Struct_2(~(_wgslsmith_dot_vec4_u32(vec4<u32>(37949u, 32925u, 3301u, 80998u), select(vec4<u32>(10064u, 3185u, 26568u, 4294967295u), vec4<u32>(34313u, 46462u, 10226u, 19709u), vec4<bool>(var_0.a.x, var_0.a.x, var_2.a.x, var_2.a.x))) ^ ~(~4294967295u)), ~min(~vec2<u32>(1u, 1u), vec2<u32>(1u, _wgslsmith_add_u32(40894u, 1u))), ~_wgslsmith_mod_u32(1u, ~max(1u, 0u)), 104f);
    var_1 = var_3.d;
    let x = u_input.a;
    s_output = func_4(vec3<bool>(var_2.a.x, select(var_0.a.x, var_0.a.x, false) || true, select(true, true & func_1(Struct_2(41493u, var_3.b, var_3.b.x, -1001f), 134f), !(var_3.d > var_3.d))), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~57885u, ~reverseBits(0u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(21594u, var_3.a, 4294967295u), vec3<u32>(0u, var_3.b.x, 14746u))), 25u)], Struct_2(var_3.c, _wgslsmith_sub_vec2_u32(var_3.b, var_3.b), firstLeadingBit(_wgslsmith_div_u32(~var_3.a, countOneBits(var_3.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.d)))));
}

