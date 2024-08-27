struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(670f, vec3<u32>(25987u, 1u, 0u), Struct_1(vec3<u32>(1u, 4294967295u, 0u), 2147483647i)), Struct_2(603f, vec3<u32>(4294967295u, 62695u, 40038u), Struct_1(vec3<u32>(1u, 47191u, 37377u), -22049i)), Struct_2(-1390f, vec3<u32>(13545u, 0u, 0u), Struct_1(vec3<u32>(0u, 19140u, 0u), -1i)), Struct_2(-433f, vec3<u32>(4294967295u, 62819u, 0u), Struct_1(vec3<u32>(0u, 28953u, 6672u), 1822i)), Struct_2(1466f, vec3<u32>(4294967295u, 2208u, 0u), Struct_1(vec3<u32>(50005u, 4294967295u, 14577u), 1i)), Struct_2(690f, vec3<u32>(0u, 0u, 4294967295u), Struct_1(vec3<u32>(9194u, 4294967295u, 4294967295u), 2147483647i)), Struct_2(401f, vec3<u32>(24959u, 1u, 0u), Struct_1(vec3<u32>(23095u, 135054u, 4294967295u), -14718i)), Struct_2(525f, vec3<u32>(19580u, 76401u, 4294967295u), Struct_1(vec3<u32>(36063u, 0u, 727u), 46089i)), Struct_2(420f, vec3<u32>(0u, 1u, 1u), Struct_1(vec3<u32>(54985u, 4294967295u, 4294967295u), 3465i)), Struct_2(1000f, vec3<u32>(24354u, 32717u, 4294967295u), Struct_1(vec3<u32>(4294967295u, 34025u, 0u), -33281i)), Struct_2(966f, vec3<u32>(6082u, 2150u, 63797u), Struct_1(vec3<u32>(0u, 1u, 0u), 2147483647i)), Struct_2(1000f, vec3<u32>(1u, 0u, 4294967295u), Struct_1(vec3<u32>(0u, 5634u, 1u), -18325i)), Struct_2(403f, vec3<u32>(65825u, 4294967295u, 0u), Struct_1(vec3<u32>(11969u, 3622u, 35934u), 2147483647i)), Struct_2(-239f, vec3<u32>(77801u, 4294967295u, 5035u), Struct_1(vec3<u32>(51975u, 0u, 48320u), i32(-2147483648))), Struct_2(-108f, vec3<u32>(104412u, 43469u, 4294967295u), Struct_1(vec3<u32>(81077u, 48750u, 104400u), 19064i)), Struct_2(211f, vec3<u32>(29960u, 4294967295u, 1u), Struct_1(vec3<u32>(11988u, 4294967295u, 17560u), 2147483647i)), Struct_2(-641f, vec3<u32>(0u, 43373u, 1u), Struct_1(vec3<u32>(92067u, 6443u, 53236u), 0i)), Struct_2(792f, vec3<u32>(571u, 15687u, 3430u), Struct_1(vec3<u32>(74262u, 68198u, 0u), 40666i)), Struct_2(745f, vec3<u32>(4294967295u, 4294967295u, 1u), Struct_1(vec3<u32>(4294967295u, 29474u, 18812u), 25301i)), Struct_2(1251f, vec3<u32>(4294967295u, 4294967295u, 25976u), Struct_1(vec3<u32>(37390u, 9814u, 1u), i32(-2147483648))), Struct_2(-456f, vec3<u32>(54222u, 31579u, 23457u), Struct_1(vec3<u32>(64728u, 1u, 14664u), -29037i)));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32, arg_3: Struct_2) -> u32 {
    var var_0 = any(!vec4<bool>(true, true, true, all(vec2<bool>(true, true))));
    var var_1 = Struct_3(arg_1.a);
    global1 = array<Struct_2, 21>();
    var var_2 = _wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(611f, var_1.a.x))) * _wgslsmith_f_op_f32(sign(arg_3.a))) * _wgslsmith_f_op_f32(abs(423f))));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(max(var_1.a.x, var_1.a.x)))))), _wgslsmith_mult_vec3_u32(vec3<u32>(86101u, max(1u, 28175u) & u_input.c.x, 0u), arg_3.c.a), Struct_1(_wgslsmith_sub_vec3_u32(max(select(vec3<u32>(u_input.c.x, u_input.d, arg_3.b.x), arg_3.c.a, vec3<bool>(false, false, true)), arg_3.b), vec3<u32>(u_input.d | 4294967295u, _wgslsmith_sub_u32(23234u, 1u), ~u_input.d)), firstTrailingBit(-1i) & _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -4850i, arg_3.c.b), vec3<i32>(arg_3.c.b, arg_3.c.b, arg_3.c.b)), ~u_input.b)));
    return 46868u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3) -> vec3<f32> {
    var var_0 = u_input.c;
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(ceil(global0.x));
    let var_3 = var_1.a.x;
    let var_4 = Struct_2(-160f, vec3<u32>(~func_3(Struct_3(vec3<f32>(-558f, -398f, -257f)), Struct_3(vec3<f32>(-515f, var_2, global0.x)), 44634u, Struct_2(2276f, vec3<u32>(arg_0.a.x, 34144u, 58379u), Struct_1(vec3<u32>(1u, var_0.x, u_input.d), var_1.b))), var_0.x, _wgslsmith_mod_u32(arg_0.a.x, ~14073u)) ^ _wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 63133u, var_0.x) & arg_0.a, var_1.a), arg_0);
    return arg_1.a;
}

fn func_1() -> Struct_3 {
    global0 = vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), global0.x)), -1382f);
    var var_0 = global1[_wgslsmith_index_u32(u_input.c.x, 21u)];
    return Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1574f, 246f, var_0.a) - vec3<f32>(var_0.a, var_0.a, var_0.a)), _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, 1553f, var_0.a), vec3<f32>(1664f, var_0.a, global0.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(522f)), 1061f, -1457f) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2007f, var_0.a, global0.x) - vec3<f32>(var_0.a, global0.x, 1859f)), _wgslsmith_f_op_vec3_f32(func_2(Struct_1(var_0.c.a, u_input.b), Struct_3(vec3<f32>(373f, global0.x, 1019f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(~1i);
    var var_1 = firstLeadingBit(vec2<i32>(u_input.b, -3348i) | max(vec2<i32>(u_input.a, 42114i) & vec2<i32>(u_input.a, u_input.b), min(-vec2<i32>(-73340i, -1i), max(vec2<i32>(2147483647i, -21515i), vec2<i32>(u_input.b, u_input.b)))));
    let var_2 = func_1();
    var var_3 = Struct_1(abs(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.d), vec3<u32>(0u, u_input.d, 7320u), vec3<u32>(40085u, 22519u, 6758u)))), -46257i);
    let var_4 = select(((u_input.c.x ^ reverseBits(1667u)) >> (37040u % 32u)) | 0u, ~(~var_3.a.x), false);
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + var_2.a.x) + _wgslsmith_f_op_f32(-441f + -335f)), true)), _wgslsmith_f_op_f32(-global0.x), -692f) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(2510f, 141f, _wgslsmith_f_op_f32(676f - var_2.a.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-148f, var_2.a.x, var_2.a.x))))), vec3<bool>(true, true, any(vec4<bool>(true, true, false, true))))));
    let var_5 = !vec3<bool>(all(vec2<bool>(select(false, true, false), true)), any(vec2<bool>(true, true)), _wgslsmith_div_u32(~u_input.c.x, 1u) >= firstTrailingBit(1u));
    let x = u_input.a;
    s_output = StorageBuffer(-41709i, select(_wgslsmith_mod_i32(-2147483647i, -(~(-32807i))), -19139i, ~_wgslsmith_add_i32(var_0, u_input.b) < abs(var_0)), 27103u);
}

