struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec3<u32>) -> vec2<bool> {
    let var_0 = !(!(~4266i > arg_0));
    global0 = array<Struct_1, 15>();
    var var_1 = _wgslsmith_dot_vec3_i32(abs(_wgslsmith_mod_vec3_i32(-firstLeadingBit(vec3<i32>(0i, 7018i, arg_0)), firstTrailingBit(-vec3<i32>(-2147483647i, -17922i, -2147483647i)))), -_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, -2147483647i, -35313i) << (vec3<u32>(47901u, arg_2.x, arg_1) % vec3<u32>(32u)), vec3<i32>(~arg_0, -1i, ~arg_0)));
    var_1 = firstLeadingBit(select(-3334i, -2147483647i, 1i != ~max(-25429i, arg_0)));
    global0 = array<Struct_1, 15>();
    return vec2<bool>(true, true);
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: vec3<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, arg_2.x, arg_2.x))))))));
    global0 = array<Struct_1, 15>();
    var_0 = vec3<f32>(arg_2.x, 719f, 1895f);
    var var_1 = firstLeadingBit(abs(vec3<u32>(4294967295u, firstTrailingBit(firstTrailingBit(u_input.a)), 4294967295u)));
    var var_2 = all(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    return var_0.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: f32) -> bool {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_3(~_wgslsmith_div_vec2_u32(vec2<u32>(82564u, u_input.a), vec2<u32>(u_input.a, 8188u)) | (vec2<u32>(1u, 4294967295u) << (~vec2<u32>(3040u, u_input.a) % vec2<u32>(32u))), ~u_input.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b.x, arg_0.b.x, -2370f) * arg_0.b)) - vec3<f32>(_wgslsmith_div_f32(arg_0.b.x, arg_0.b.x), -1361f, _wgslsmith_f_op_f32(arg_3 * 648f))))), -600f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1454f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-467f * 1423f) * _wgslsmith_f_op_f32(arg_2.b.x + -1000f)))), -1302f);
    let var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(abs(arg_2.c.x), i32(-1i) * -54951i, -arg_0.c.x, abs(i32(-1i) * -23905i)), vec4<i32>(1i, _wgslsmith_div_i32(max(arg_0.c.x, arg_0.c.x), -12365i), 2147483647i, firstTrailingBit(-32263i)) & vec4<i32>(_wgslsmith_clamp_i32(max(arg_0.c.x, 0i), -1i, arg_2.c.x), -(i32(-1i) * -1i), _wgslsmith_mod_i32(arg_2.c.x, arg_2.c.x >> (u_input.a % 32u)), 9535i));
    let var_2 = !vec2<bool>(arg_2.d.x, all(!select(vec3<bool>(arg_2.e.x, arg_2.a, arg_0.d.x), vec3<bool>(true, arg_0.a, arg_0.e.x), vec3<bool>(true, false, true))));
    global0 = array<Struct_1, 15>();
    var var_3 = _wgslsmith_mod_vec4_i32(var_1, -vec4<i32>(-(~var_1.x), 1i, -38377i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -51885i), vec2<i32>(-14001i, arg_2.c.x))));
    return arg_0.c.x >= abs(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.c.x, 47482i), max(arg_0.c.zx, select(vec2<i32>(1i, arg_2.c.x), var_3.wz, false))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 15>();
    var var_0 = select(!select(vec2<bool>(true, true), vec2<bool>(true, true), false), !select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), true), any(select(func_1(1i, ~u_input.a, ~vec3<u32>(u_input.a, 28862u, 25859u)), vec2<bool>(false, true), !func_2(Struct_1(true, vec3<f32>(-895f, -695f, 1386f), vec3<i32>(0i, 1i, 2147483647i), vec2<bool>(false, false), vec2<bool>(true, false)), vec3<f32>(-1346f, -989f, 1000f), Struct_1(true, vec3<f32>(-1845f, -2015f, 464f), vec3<i32>(-10220i, -1i, 62471i), vec2<bool>(false, false), vec2<bool>(true, true)), -813f))));
    global0 = array<Struct_1, 15>();
    let var_1 = 747f;
    var var_2 = -1289f;
    global0 = array<Struct_1, 15>();
    var var_3 = Struct_1(select(false, !any(vec2<bool>(true, true)) && false, false), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-969f + -148f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, var_1))), _wgslsmith_f_op_f32(-var_1)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -562f), var_1, var_1)))), -vec3<i32>(_wgslsmith_sub_i32(-121i, -31105i), ~(-18629i), _wgslsmith_div_i32(-17091i, -6478i)) | _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(2147483647i, -19214i, 2147483647i)), -vec3<i32>(-23978i, 1i, -29179i), reverseBits(~vec3<i32>(-7133i, 4010i, -8926i))), select(vec2<bool>(var_0.x, false), !vec2<bool>(var_0.x, var_0.x), select(select(vec2<bool>(false, true), vec2<bool>(var_0.x, true), !vec2<bool>(var_0.x, var_0.x)), select(func_1(-40727i, 4294967295u, vec3<u32>(41723u, 1u, 6324u)), select(vec2<bool>(var_0.x, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(false, var_0.x)), vec2<bool>(true, var_0.x))), vec2<bool>(true, true));
    let x = u_input.a;
    s_output = StorageBuffer(~69097u, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(176f, var_3.b.x, var_3.b.x, var_1) * vec4<f32>(var_1, var_1, var_3.b.x, -405f)) + vec4<f32>(var_1, var_1, var_1, -1307f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 987f, var_1, var_3.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(139f, var_1, var_1, -405f), vec4<f32>(-219f, -767f, var_1, 499f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(428f, var_1, -449f, var_3.b.x))))), ((_wgslsmith_mult_i32(5487i, 47749i) << (_wgslsmith_div_u32(5179u, u_input.a) % 32u)) << (u_input.a % 32u)) << (~firstTrailingBit(0u) % 32u), _wgslsmith_dot_vec2_u32(~(vec2<u32>(u_input.a, u_input.a) >> (_wgslsmith_add_vec2_u32(vec2<u32>(4436u, 4899u), vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u))), vec2<u32>(~u_input.a, _wgslsmith_clamp_u32(1u, u_input.a, 81552u) & ~u_input.a)), _wgslsmith_add_vec3_i32(~(-var_3.c << ((vec3<u32>(46347u, 29312u, 1u) ^ vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u))), var_3.c));
}

