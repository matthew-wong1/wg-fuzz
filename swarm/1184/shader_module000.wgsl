struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: bool,
    d: i32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_3) -> f32 {
    let var_0 = Struct_2(abs(select(arg_0.b.x, -2147483647i, false) & (arg_0.b.x & 14810i)) << (u_input.a % 32u), Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(max(-899f, 542f)), _wgslsmith_f_op_f32(min(-797f, arg_0.a.x)), arg_0.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a) + vec3<f32>(arg_0.a.x, global0.a.x, 251f)))), vec4<u32>(~(~u_input.b.x), 1u << (max(global0.b.x, 0u) % 32u), countOneBits(~40024u), u_input.b.x), 54833u, _wgslsmith_f_op_vec2_f32(-global0.d)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a - arg_0.a))), reverseBits(vec4<u32>(abs(6746u), abs(1u), select(global0.b.x, u_input.a, false), _wgslsmith_add_u32(0u, global0.c))), abs(1u), vec2<f32>(global0.d.x, -503f)));
    let var_1 = select(select(vec3<bool>(true, !any(vec2<bool>(false, true)), any(vec2<bool>(false, true))), !select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), false), select(select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), select(vec3<bool>(false, true, false), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true)), true), !select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, false)), vec3<bool>(false, true, all(vec4<bool>(false, false, false, false)))), true);
    let var_2 = 775f;
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(global0.a)), ~abs(vec4<u32>(var_0.b.c, global0.b.x, ~var_0.b.b.x, 0u)), ~var_0.b.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(arg_0.a.xz, global0.d, true)))), global0.a.xx))));
    var var_3 = var_0;
    return _wgslsmith_f_op_f32(f32(-1f) * -1071f);
}

fn func_2() -> Struct_2 {
    var var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(min(global0.d.x, -1045f))), global0.d.x), _wgslsmith_f_op_f32(func_3(Struct_3(vec3<f32>(403f, -805f, _wgslsmith_f_op_f32(-global0.a.x)), vec3<i32>(~(-6250i), _wgslsmith_add_i32(1i, -60062i), ~0i)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-494f)))), _wgslsmith_div_f32(-1156f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a.x)))));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -861f)))) * -1000f)));
    let var_2 = !vec2<bool>(u_input.b.x <= ~(global0.b.x ^ 6531u), select(true, true, !all(vec2<bool>(true, false))));
    var_1 = -602f;
    var var_3 = Struct_2(~50485i, Struct_1(var_0.xww, vec4<u32>(_wgslsmith_div_u32(u_input.a, ~145411u), 11613u, u_input.b.x << (76160u % 32u), u_input.a), 0u, var_0.wy), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_0.xwx)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-303f, -820f, global0.d.x))), _wgslsmith_div_vec4_u32(global0.b, ~vec4<u32>(38330u, 0u, 4294967295u, 51458u)), 3009u | _wgslsmith_div_u32(0u, global0.c << (global0.c % 32u)), vec2<f32>(_wgslsmith_f_op_f32(global0.d.x * _wgslsmith_f_op_f32(trunc(910f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x)))));
    return Struct_2(firstLeadingBit(-var_3.a) >> (28141u % 32u), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1513f, global0.d.x, var_3.c.d.x)))), var_3.b.b, global0.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_0.yw + var_0.zy))))), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.c.a.x, -436f, var_3.c.a.x) - global0.a)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, var_3.c.d.x, 2007f)))), true)), vec4<u32>(max(65368u, 17524u), u_input.b.x, 0u, 81825u), ~global0.b.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_0.wy)) - _wgslsmith_f_op_vec2_f32(global0.d - global0.a.xx)), vec2<f32>(_wgslsmith_div_f32(global0.d.x, -1203f), _wgslsmith_f_op_f32(abs(var_3.b.a.x))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    let var_0 = Struct_3(vec3<f32>(388f, -1606f, _wgslsmith_f_op_f32(min(-347f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2239f * 604f) + _wgslsmith_f_op_f32(f32(-1f) * -365f))))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.a, arg_2.a, arg_2.a) ^ vec3<i32>(26743i, arg_2.a, arg_2.a), -vec3<i32>(1i, arg_2.a, 2147483647i)) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 1u, arg_2.c.c), vec3<u32>(global0.c, 4294967295u, u_input.a)) % 32u), countOneBits(arg_2.a), abs(_wgslsmith_mult_i32(arg_2.a, firstLeadingBit(arg_2.a)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-879f, arg_2.c.a.x, -174f, arg_1.x) - vec4<f32>(-729f, -139f, 1383f, 1143f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1210f, arg_1.x, arg_2.b.a.x, 771f) * vec4<f32>(var_0.a.x, -1052f, var_0.a.x, arg_1.x)), vec4<f32>(arg_2.b.a.x, arg_1.x, -2145f, 367f)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1069f, 295f, _wgslsmith_div_f32(325f, arg_2.b.a.x), arg_3) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, var_0.a.x, 1243f, arg_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, 594f, var_0.a.x, 2277f))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, -843f) + 1024f), _wgslsmith_div_f32(arg_1.x, global0.d.x), _wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-626f + -1587f)))));
    var var_2 = vec2<f32>(-1369f, arg_3);
    var var_3 = Struct_4(func_2(), false, !any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), -1i);
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_3, var_3.a.b.d.x)) * _wgslsmith_f_op_f32(sign(arg_0.x)))))), _wgslsmith_f_op_f32(var_0.a.x + -157f));
    return Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.xyy * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.x, 860f, arg_3)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, -125f, -1920f), vec3<f32>(-572f, arg_2.c.a.x, 1359f), true)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -216f), arg_1.x, 1993f))), vec4<u32>(_wgslsmith_clamp_u32(arg_2.b.b.x & global0.c, 57699u, var_3.a.b.b.x | 0u), global0.b.x, arg_2.b.c << (~0u % 32u), _wgslsmith_sub_u32(min(var_3.a.b.c, 28623u), arg_2.b.c)) & vec4<u32>(11879u, 0u, reverseBits(39986u), ~firstTrailingBit(arg_2.b.b.x)), arg_2.b.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(228f, -164f))))) - arg_1));
}

fn func_1(arg_0: u32, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_4(Struct_2(-2147483647i & arg_1.x, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(-1081f)), global0.a.x, _wgslsmith_f_op_f32(exp2(global0.a.x))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_0, 50303u, 0u, 35464u), firstLeadingBit(vec4<u32>(0u, u_input.a, u_input.b.x, 79849u)), min(global0.b, vec4<u32>(46931u, 4294967295u, 34819u, global0.c))), arg_0 ^ _wgslsmith_dot_vec2_u32(vec2<u32>(global0.b.x, arg_0), u_input.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d.x, 675f) + _wgslsmith_f_op_vec2_f32(max(global0.a.xy, vec2<f32>(global0.a.x, global0.a.x))))), func_4(global0.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(819f, global0.d.x) * vec2<f32>(global0.a.x, global0.d.x)), func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.d.x, global0.a.x, false)) - -114f))), any(select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true))), false, abs(max(0i, func_2().a)));
    let var_1 = select(vec3<bool>(false, !(!(!var_0.c)), var_0.b), !select(!vec3<bool>(true, var_0.c, var_0.c), select(select(vec3<bool>(var_0.b, false, false), vec3<bool>(true, false, var_0.b), true), select(vec3<bool>(false, var_0.c, false), vec3<bool>(var_0.c, false, var_0.c), var_0.b), false), var_0.c), !vec3<bool>(true, -var_0.d == max(var_0.d, 20997i), any(vec3<bool>(false, false, var_0.c)) | any(vec4<bool>(true, var_0.b, false, false))));
    global0 = func_4(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.a.c.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -640f), _wgslsmith_f_op_f32(step(-364f, var_0.a.b.a.x)), var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a.c.a.x)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.d.x + _wgslsmith_f_op_f32(-var_0.a.c.d.x)), _wgslsmith_f_op_f32(var_0.a.b.a.x + _wgslsmith_f_op_f32(-global0.a.x))) + var_0.a.c.a.xy), Struct_2(~arg_1.x, var_0.a.b, func_2().b), _wgslsmith_f_op_f32(-1230f + var_0.a.c.a.x));
    let var_2 = _wgslsmith_sub_u32(36197u, 0u) << (u_input.a % 32u);
    var var_3 = Struct_3(vec3<f32>(_wgslsmith_div_f32(577f, -1290f), global0.a.x, _wgslsmith_f_op_f32(select(-784f, global0.d.x, var_0.c))), -_wgslsmith_div_vec3_i32(vec3<i32>(1i, _wgslsmith_clamp_i32(2147483647i, -27632i, 1i), arg_1.x), abs(vec3<i32>(-24022i, -2147483647i, var_0.a.a))));
    return var_0.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-(firstLeadingBit(~vec2<i32>(0i, 2147483647i)) << (u_input.b % vec2<u32>(32u))));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global0.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-167f, 569f, -284f)), vec3<bool>(false, true, false)))))), ~global0.b, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>((21598u >> (u_input.b.x % 32u)) | countOneBits(global0.b.x), _wgslsmith_sub_u32(u_input.b.x, _wgslsmith_dot_vec3_u32(global0.b.www, vec3<u32>(global0.b.x, 1u, 27461u))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-962f + -1187f), _wgslsmith_f_op_f32(1256f + 304f)), _wgslsmith_f_op_vec2_f32(-global0.a.xz))));
    global0 = func_1(global0.c, -(~(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, -14744i), vec4<i32>(2147483647i, 1i, var_0.x, 13258i)) | ~vec4<i32>(var_0.x, -1i, -1i, var_0.x))));
    let var_1 = u_input.b.x ^ ~37991u;
    let var_2 = select(vec4<bool>(!((35517u > var_1) && select(true, true, true)), true, true, true), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), true), false);
    let x = u_input.a;
    s_output = StorageBuffer(-(~3127i), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d.x, _wgslsmith_f_op_f32(353f + -1098f), _wgslsmith_f_op_f32(f32(-1f) * -1833f)) - global0.a), _wgslsmith_f_op_vec3_f32(max(global0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a - vec3<f32>(global0.d.x, global0.d.x, 965f)))))), global0.b.yzw, 0i, _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i | var_0.x, var_0.x, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(var_0.x, var_0.x, -50462i, -7319i)), ~vec4<i32>(2147483647i, var_0.x, var_0.x, var_0.x))), vec3<i32>((var_0.x | var_0.x) << ((global0.b.x & 19245u) % 32u), 2147483647i, 13779i)));
}

