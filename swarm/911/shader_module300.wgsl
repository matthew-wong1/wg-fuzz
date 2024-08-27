struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: Struct_1,
    d: vec2<f32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: Struct_3) -> vec4<i32> {
    global0 = array<bool, 11>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(678f)), _wgslsmith_f_op_f32(-arg_3.c.a.x));
    let var_1 = false;
    var var_2 = arg_3.a.a;
    var_2 = _wgslsmith_f_op_vec2_f32(arg_1.xy * _wgslsmith_f_op_vec2_f32(-arg_3.a.a));
    return vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.a, -1i) ^ -arg_2.x, -_wgslsmith_mod_i32(1i, -51026i)) >> (4294967295u % 32u), -17063i, -_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(arg_2.x, 0i), -33058i, ~arg_2.x, -3988i), abs(arg_2) << (vec4<u32>(arg_3.c.b, 0u, 56740u, 4294967295u) % vec4<u32>(32u))), firstTrailingBit(arg_2.x));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec2<u32>) -> Struct_1 {
    global0 = array<bool, 11>();
    let var_0 = false;
    global0 = array<bool, 11>();
    let var_1 = max(~(-(vec4<i32>(2147483647i, arg_0.x, -19643i, arg_0.x) >> (vec4<u32>(17942u, 4294967295u, arg_1.e, arg_1.e) % vec4<u32>(32u)))), vec4<i32>(-9360i, 0i, 1i, arg_0.x)) ^ (abs(vec4<i32>(arg_0.x, arg_0.x, 2147483647i, arg_0.x) | func_3(Struct_3(arg_1.c, vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 11u)]), Struct_1(arg_1.d, 26025u, arg_1.c.c)), vec3<f32>(697f, -1842f, arg_1.d.x), vec4<i32>(u_input.a, -12664i, 39177i, arg_0.x), Struct_3(arg_1.c, vec2<bool>(true, false), arg_1.c))) | func_3(Struct_3(Struct_1(vec2<f32>(arg_1.c.a.x, 785f), 0u, arg_1.c.c), vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 11u)]), arg_1.c), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(arg_1.a)), arg_1.a)), _wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a, arg_0.x, arg_0.x, u_input.a), reverseBits(vec4<i32>(-31420i, arg_0.x, 1i, u_input.a))), Struct_3(Struct_1(arg_1.c.a, 4294967295u, false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, arg_1.c.c)), Struct_1(vec2<f32>(-652f, 1203f), arg_2.x, arg_1.b))));
    global0 = array<bool, 11>();
    return arg_1.c;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: Struct_3) -> f32 {
    global0 = array<bool, 11>();
    global0 = array<bool, 11>();
    return -801f;
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(func_2(vec2<i32>(arg_0, arg_0), Struct_2(vec3<f32>(-1752f, 741f, -721f), global0[_wgslsmith_index_u32(52419u, 11u)], Struct_1(vec2<f32>(1378f, 140f), 5335u, global0[_wgslsmith_index_u32(71300u, 11u)]), vec2<f32>(-1093f, 909f), 8298u), vec2<u32>(62245u, 4294967295u)), ~1u, Struct_1(vec2<f32>(-384f, -850f), 23421u, false), Struct_3(Struct_1(vec2<f32>(723f, -627f), 1u, global0[_wgslsmith_index_u32(4294967295u, 11u)]), vec2<bool>(global0[_wgslsmith_index_u32(16187u, 11u)], true), Struct_1(vec2<f32>(-2044f, 1235f), 4294967295u, global0[_wgslsmith_index_u32(0u, 11u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-817f - -1988f)))), -1186f), abs(0u) << (1u % 32u), _wgslsmith_mod_i32(1i, _wgslsmith_add_i32(-arg_0, func_3(Struct_3(Struct_1(vec2<f32>(-714f, 854f), 0u, global0[_wgslsmith_index_u32(2588u, 11u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(16942u, 11u)]), Struct_1(vec2<f32>(403f, -530f), 14883u, global0[_wgslsmith_index_u32(4294967295u, 11u)])), vec3<f32>(1000f, 1329f, -1000f), vec4<i32>(1i, 2147483647i, -6141i, -34752i), Struct_3(Struct_1(vec2<f32>(620f, 303f), 4294967295u, false), vec2<bool>(false, global0[_wgslsmith_index_u32(33298u, 11u)]), Struct_1(vec2<f32>(-102f, 361f), 52976u, global0[_wgslsmith_index_u32(4294967295u, 11u)]))).x)) != -1i);
    return func_2(~(~(~vec2<i32>(arg_0, u_input.a))), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(floor(-576f)), _wgslsmith_f_op_f32(func_4(Struct_1(var_0.a, 4294967295u, var_0.c), var_0.b, Struct_1(vec2<f32>(var_0.a.x, var_0.a.x), 0u, global0[_wgslsmith_index_u32(var_0.b, 11u)]), Struct_3(Struct_1(var_0.a, 0u, true), vec2<bool>(false, true), Struct_1(var_0.a, 25507u, false)))))), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(42069u, ~var_0.b), 11u)], func_2(~vec2<i32>(-2147483647i, -2147483647i), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, 525f, var_0.a.x) + vec3<f32>(-950f, var_0.a.x, 499f)), global0[_wgslsmith_index_u32(var_0.b, 11u)], Struct_1(vec2<f32>(-1684f, var_0.a.x), 1u, var_0.c), vec2<f32>(-396f, var_0.a.x), 1u), vec2<u32>(var_0.b & 22171u, var_0.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, -1074f))), 15073u), abs(vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, 49657u, var_0.b, 4294967295u), vec4<u32>(var_0.b, 1u, var_0.b, 4294967295u)), var_0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 211f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1044f) + _wgslsmith_f_op_f32(1393f - 1301f)))), false, func_1(u_input.a ^ _wgslsmith_div_i32(u_input.a, u_input.a ^ -4416i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-157f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1176f, 2391f)))), select(4294967295u, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, 40925u), vec4<u32>(26971u, 0u, 24812u, 4294967295u))), false) >> (min(11867u, ~_wgslsmith_mod_u32(0u, 29733u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.b, var_0.e, 4294967295u) | _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_0.c.b, 1u), vec3<u32>(var_0.e, var_0.e, var_0.e)), ~(~vec3<u32>(4294967295u, 0u, var_0.c.b))), _wgslsmith_div_u32(~var_0.e, var_0.c.b)), reverseBits(0i >> (var_0.c.b % 32u)));
}

