struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: f32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<f32>,
    c: vec3<bool>,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(1252f), Struct_3(491f), Struct_3(890f), Struct_3(532f), Struct_3(-387f), Struct_3(194f), Struct_3(-183f), Struct_3(1500f), Struct_3(-101f), Struct_3(-198f), Struct_3(-880f), Struct_3(366f), Struct_3(-1000f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-674f, 610f) * 482f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-100f))), true))));
    var var_1 = ~countOneBits(~vec4<u32>(~18219u, ~u_input.d, 3023u, 14109u));
    global0 = array<Struct_3, 13>();
    var var_2 = vec3<bool>(u_input.b.x >= min(-1i, _wgslsmith_mult_i32(-2147483647i, min(u_input.c, -2147483647i))), true, true);
    let var_3 = _wgslsmith_mod_u32(var_1.x, ~reverseBits(var_1.x)) >= var_1.x;
    return ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 1i, 1i, abs(u_input.a)), vec4<i32>(-2147483647i, _wgslsmith_clamp_i32(max(u_input.b.x, u_input.c), 1i, u_input.c & 1724i), _wgslsmith_sub_i32(~u_input.a, 1i), -u_input.b.x));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: vec3<f32>) -> f32 {
    var var_0 = select(true, 0i == -(~arg_0.x), all(vec2<bool>(true, true)));
    var var_1 = vec2<bool>(!(!all(vec4<bool>(true, true, true, true))), true);
    let var_2 = var_1.x;
    global0 = array<Struct_3, 13>();
    let var_3 = select(firstTrailingBit(~select(-vec3<i32>(u_input.e, arg_0.x, -6036i), u_input.b, select(vec3<bool>(true, true, var_1.x), vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(true, var_1.x, var_1.x)))), vec3<i32>(-2147483647i, ~(41556i >> (select(u_input.d, 27575u, false) % 32u)), -(~_wgslsmith_mod_i32(1628i, arg_1.x))), false);
    return -231f;
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_f32(abs(606f));
    var_0 = _wgslsmith_f_op_f32(func_4(~_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.e, u_input.a, -41733i, u_input.c), func_3()), firstLeadingBit(~u_input.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(656f, 2050f, -1724f))))) - vec3<f32>(_wgslsmith_f_op_f32(1106f * -1043f), -1015f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-750f)) * -1530f)))));
    global0 = array<Struct_3, 13>();
    var var_1 = global0[_wgslsmith_index_u32(4294967295u, 13u)];
    var var_2 = Struct_4(reverseBits(vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d, 1u), ~vec2<u32>(u_input.d, u_input.d)), ~_wgslsmith_mult_u32(u_input.d, u_input.d), u_input.d)), select(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true))), true);
    return true;
}

fn func_1(arg_0: f32) -> bool {
    var var_0 = Struct_4(vec3<u32>(23764u, _wgslsmith_div_u32(~(~u_input.d), u_input.d), ~u_input.d), !vec3<bool>(false, !(u_input.c >= u_input.b.x), true), func_2());
    global0 = array<Struct_3, 13>();
    let var_1 = _wgslsmith_f_op_f32(round(arg_0));
    var var_2 = firstLeadingBit(~u_input.d);
    let var_3 = _wgslsmith_f_op_f32(-var_1);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 686f;
    global0 = array<Struct_3, 13>();
    var_0 = 1136f;
    let var_1 = vec4<bool>(!all(vec2<bool>(true, true)), !func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -268f) + -935f)), false, true);
    let var_2 = ~(~_wgslsmith_add_u32(u_input.d | _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.d, 58642u, u_input.d), vec4<u32>(u_input.d, 1u, 0u, 113275u)), u_input.d));
    var_0 = 576f;
    var var_3 = Struct_4(vec3<u32>(4294967295u ^ var_2, 4294967295u >> (0u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.d, 4294967295u) & vec3<u32>(2732u, 0u, var_2), ~vec3<u32>(0u, 0u, 33817u))) ^ ~vec3<u32>(u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(6062u, 4294967295u, 0u), vec3<u32>(u_input.d, 67838u, u_input.d)), _wgslsmith_add_u32(var_2, var_2)), select(vec3<bool>(func_1(105f) || var_1.x, !(var_1.x || var_1.x), var_1.x), vec3<bool>(true, true, true), var_1.yzx), false);
    var_3 = Struct_4(vec3<u32>(var_2, var_2, min(abs(~var_3.a.x), ~(~u_input.d))), vec3<bool>(!all(vec4<bool>(false, var_3.c, false, var_3.c)), func_2() & true, !var_1.x), !var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(func_3().x << (84842u % 32u));
}

