struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: u32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 24>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = !select(!(!select(vec3<bool>(false, true, arg_2.a), vec3<bool>(true, false, arg_3.a), true)), select(vec3<bool>(0u != arg_1, false & arg_2.c, any(vec4<bool>(arg_3.a, arg_3.c, arg_3.a, true))), !(!vec3<bool>(true, true, arg_3.c)), !arg_2.c), !(arg_2.a & (true & arg_2.a)));
    var_0 = !select(vec3<bool>(true, true, select(var_0.x, true, !arg_3.a)), vec3<bool>(true, _wgslsmith_f_op_f32(round(arg_0)) != _wgslsmith_div_f32(arg_0, -1000f), (false || arg_3.a) && arg_2.a), select(vec3<bool>(any(vec4<bool>(var_0.x, var_0.x, false, arg_3.a)), all(vec3<bool>(arg_3.c, arg_2.a, false)), var_0.x), !select(vec3<bool>(var_0.x, arg_3.c, false), vec3<bool>(arg_2.c, true, arg_3.c), arg_2.a), !select(vec3<bool>(false, arg_2.c, arg_2.a), vec3<bool>(arg_2.c, arg_3.a, var_0.x), vec3<bool>(arg_2.a, var_0.x, false))));
    let var_1 = arg_2;
    let var_2 = Struct_1(var_1.a, arg_3.b, select(arg_3.c, !all(!var_0.zy), true));
    var var_3 = Struct_4(~arg_1, abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -2147483647i, 37233i, 4483i), vec4<i32>(-1i, var_1.b.x, -4198i, arg_2.b.x), vec4<i32>(arg_2.b.x, 2147483647i, arg_3.b.x, var_2.b.x))) & vec4<i32>(~(~u_input.a.x), u_input.a.x, _wgslsmith_mod_i32(var_2.b.x, 1i), arg_2.b.x & var_1.b.x), arg_0, _wgslsmith_clamp_u32(u_input.c, u_input.b, arg_1), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0)), _wgslsmith_f_op_f32(-arg_0), arg_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0, arg_0, -833f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 3090f, arg_0) * vec3<f32>(1000f, -560f, -933f)))), !select(any(vec2<bool>(var_0.x, true)), any(var_0.zz), var_2.a && true))));
    return vec4<i32>(2147483647i, _wgslsmith_dot_vec4_i32(var_3.b, vec4<i32>(max(~(-33748i), _wgslsmith_dot_vec3_i32(var_3.b.xzw, var_3.b.wzw)), arg_3.b.x, -16756i, 1i)), _wgslsmith_dot_vec4_i32(~countOneBits(-var_3.b), abs(vec4<i32>(_wgslsmith_mod_i32(var_1.b.x, arg_3.b.x), var_1.b.x, _wgslsmith_dot_vec3_i32(var_3.b.yzy, vec3<i32>(2147483647i, var_2.b.x, 2147483647i)), 17111i))), i32(-1i) * -firstTrailingBit(-1i));
}

fn func_2(arg_0: bool, arg_1: f32) -> bool {
    let var_0 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, 55094u ^ u_input.b) ^ _wgslsmith_add_vec2_u32(vec2<u32>(99082u, 86860u) ^ vec2<u32>(0u, u_input.b), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 616u), vec2<u32>(u_input.b, u_input.c), vec2<u32>(u_input.b, 1u))), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 1u), ~vec2<u32>(8744u, u_input.c), vec2<u32>(4294967295u, 91266u)) >> (vec2<u32>(u_input.c ^ u_input.c, u_input.b) % vec2<u32>(32u)));
    var var_1 = Struct_4(u_input.b ^ u_input.b, func_3(_wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1117f, -554f)))), 4294967295u, Struct_1(!(4294967295u < var_0.x), vec3<i32>(-2147483647i, firstTrailingBit(2147483647i), countOneBits(u_input.e.x)), arg_0), Struct_1(arg_0, u_input.a, (arg_0 | true) || !arg_0)), _wgslsmith_f_op_f32(arg_1 * -1081f), var_0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(264f, arg_1, arg_1) - vec3<f32>(arg_1, arg_1, 1026f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(841f, arg_1, -1546f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1860f, 923f, -852f), vec3<f32>(270f, -141f, arg_1), arg_0)))))));
    var var_2 = 8457i;
    let var_3 = _wgslsmith_mod_u32(var_1.a, 0u);
    var var_4 = Struct_2(false, _wgslsmith_mod_u32(_wgslsmith_mult_u32(var_0.x, var_0.x), firstTrailingBit(6133u)), _wgslsmith_sub_u32(var_0.x, 35387u), select(~select(vec4<u32>(37390u, 28048u, var_3, 1u) ^ vec4<u32>(var_3, 42713u, var_3, var_3), vec4<u32>(u_input.b, var_1.d, 43851u, var_3) & vec4<u32>(u_input.c, var_1.d, 1u, 0u), select(vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, false, arg_0, arg_0))), vec4<u32>(1u, ~var_0.x, 20592u & var_0.x, 751u & var_1.d), all(vec3<bool>(var_0.x == 40746u, any(vec3<bool>(true, arg_0, arg_0)), arg_0))));
    return all(!select(vec4<bool>(arg_0 == true, arg_0, var_4.a | arg_0, true), vec4<bool>(var_4.a, arg_0, true, false), vec4<bool>(any(vec3<bool>(arg_0, false, false)), true, var_1.c >= -759f, var_4.a)));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: i32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -116f);
    var var_1 = vec4<u32>(~(~(~4294967295u)), ~u_input.c, ~abs(_wgslsmith_mod_u32(4294967295u, u_input.c)), 17264u) >> (vec4<u32>(~26045u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(u_input.b, 4294967295u, 15666u)), ~vec3<u32>(51412u, 74184u, u_input.c)), vec3<u32>(_wgslsmith_add_u32(u_input.c, 1u), 22111u, u_input.b >> (u_input.b % 32u))), ~(abs(u_input.c) >> (_wgslsmith_mult_u32(u_input.b, u_input.c) % 32u)), u_input.c) % vec4<u32>(32u));
    var var_2 = _wgslsmith_f_op_f32(sign(var_0));
    let var_3 = select(vec2<bool>(true, select(false, true, all(select(vec2<bool>(true, true), arg_0, arg_0)))), arg_0, arg_0.x);
    global0 = array<vec2<f32>, 24>();
    return Struct_3(func_2(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1521f)));
}

fn func_1(arg_0: i32, arg_1: vec3<i32>, arg_2: bool, arg_3: vec4<f32>) -> u32 {
    global0 = array<vec2<f32>, 24>();
    global0 = array<vec2<f32>, 24>();
    var var_0 = false;
    var var_1 = Struct_1(false, u_input.a, -62097i <= arg_0);
    let var_2 = func_4(!vec2<bool>(func_2(arg_2, _wgslsmith_f_op_f32(arg_3.x + -962f)), !(!var_1.a)), -(select(-u_input.a.xz, _wgslsmith_add_vec2_i32(arg_1.xy, var_1.b.zz), arg_2 == true) ^ vec2<i32>(-5847i, _wgslsmith_sub_i32(-11318i, 43327i))), -_wgslsmith_sub_i32(_wgslsmith_clamp_i32(arg_0, arg_1.x ^ 2399i, arg_1.x), ~u_input.a.x));
    return _wgslsmith_dot_vec2_u32(~(~(~(~vec2<u32>(4294967295u, u_input.b)))), reverseBits(_wgslsmith_add_vec2_u32(abs(vec2<u32>(u_input.c, 27704u)), vec2<u32>(19488u, 1u)) << (_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(92275u, 221u), vec2<u32>(u_input.b, 4294967295u), vec2<u32>(u_input.c, u_input.b)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(35673u, 39842u)), ~vec2<u32>(u_input.c, u_input.b)) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(-_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.e.x, u_input.a.x), vec2<i32>(1i, u_input.a.x)), u_input.a.yy), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a.xy, vec2<i32>(u_input.e.x, 1i)), -_wgslsmith_div_vec2_i32(u_input.a.zx, u_input.a.yz))) ^ u_input.e;
    global0 = array<vec2<f32>, 24>();
    var var_1 = ~20268u << (0u % 32u);
    global0 = array<vec2<f32>, 24>();
    var var_2 = Struct_2(37431i < var_0.x, 40524u, _wgslsmith_add_u32(32862u, func_1(-(~2147483647i), u_input.a, any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true))), vec4<f32>(1f, _wgslsmith_f_op_f32(-1000f * -330f), -363f, _wgslsmith_f_op_f32(1662f * -1174f)))), ~firstTrailingBit(vec4<u32>(select(31134u, u_input.b, true), u_input.c, func_1(var_0.x, u_input.a, false, vec4<f32>(-570f, -817f, 1000f, 2182f)), abs(2133u))));
    let var_3 = func_4(!(!vec2<bool>(var_2.a, true)), vec2<i32>(_wgslsmith_mult_i32(u_input.a.x, u_input.e.x), _wgslsmith_mod_i32(0i, ~20686i >> ((var_2.b << (0u % 32u)) % 32u))), u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(abs(countOneBits(~var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-797f - -1375f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(199f)) - _wgslsmith_f_op_f32(sign(-1000f))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(1487f)), 594f)))));
}

