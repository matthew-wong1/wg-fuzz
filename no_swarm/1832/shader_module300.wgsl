struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(i32(-2147483648), -13366i), 11268i);

var<private> global1: i32 = -33102i;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<f32>, arg_1: u32) -> vec2<u32> {
    global0 = Struct_1(global0.a, select(~(abs(global0.b) >> (~u_input.e.x % 32u)), ~(-2147483647i), false));
    let var_0 = 2147483647i;
    var var_1 = _wgslsmith_f_op_f32(ceil(arg_0.x));
    let var_2 = Struct_1(global0.a, 0i);
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1138f, -709f, any(vec3<bool>(true, false, true))))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x) - -921f)));
    return ~u_input.e;
}

fn func_2(arg_0: Struct_1) -> vec4<i32> {
    global1 = u_input.a.x;
    let var_0 = countOneBits(arg_0.b);
    let var_1 = arg_0.a << (max(u_input.e, func_3(vec3<f32>(_wgslsmith_div_f32(-1048f, -1752f), -805f, _wgslsmith_f_op_f32(round(495f))), 7083u)) % vec2<u32>(32u));
    let var_2 = vec3<bool>(~firstTrailingBit(_wgslsmith_dot_vec2_i32(var_1, arg_0.a)) >= -30626i, true, any(select(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)))));
    global1 = -_wgslsmith_clamp_i32(firstTrailingBit(var_0 ^ -var_0), -arg_0.b, -1i);
    return min(-u_input.b, abs(_wgslsmith_sub_vec4_i32(u_input.c, select(vec4<i32>(10695i, -10462i, global0.b, var_1.x), vec4<i32>(var_0, u_input.b.x, -20770i, arg_0.b), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)))) | firstLeadingBit(-(vec4<i32>(arg_0.b, 33015i, 46511i, -47322i) ^ vec4<i32>(arg_0.a.x, 69i, u_input.b.x, u_input.b.x))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>, arg_3: vec2<f32>) -> i32 {
    var var_0 = _wgslsmith_sub_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(global0.b, 20772i, -34758i), -u_input.c.zwy), firstLeadingBit(arg_0.a.x)) <= -(~_wgslsmith_mod_i32(50958i, _wgslsmith_mod_i32(25891i, u_input.b.x)));
    global0 = arg_0;
    var var_1 = !vec2<bool>(true, _wgslsmith_add_i32(u_input.b.x, 1i) < -(arg_1 << (0u % 32u)));
    global0 = Struct_1(u_input.c.zx, _wgslsmith_dot_vec4_i32(func_2(Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -2147483647i), global0.a), firstTrailingBit(u_input.c.x))), u_input.c));
    var_0 = !var_1.x;
    return reverseBits(arg_1);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = !vec4<bool>(false, all(vec3<bool>(true, true, true)), false, arg_0.x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(-arg_1.x)));
    global0 = arg_2;
    let var_1 = var_0.x;
    var var_2 = arg_2;
    global0 = arg_2;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(-1i) * -u_input.b;
    let var_1 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(46964u, 30536u, _wgslsmith_div_u32(4294967295u, ~0u), select(u_input.e.x, u_input.e.x, true)), ~vec4<u32>(1u, u_input.e.x, 0u, 0u)), u_input.e.x, u_input.e.x, max(~1u, u_input.e.x));
    let var_2 = func_4(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1210f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1889f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-363f, -1000f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-692f, -1569f, 153f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1359f, -292f, -218f))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1505f, 186f, -165f))), Struct_1(vec2<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(global0.b, global0.b), i32(-1i) * -3068i), func_1(Struct_1(vec2<i32>(3439i, 27984i), global0.a.x), _wgslsmith_dot_vec2_i32(u_input.a, global0.a), select(vec2<u32>(u_input.e.x, 1u), vec2<u32>(var_1.x, var_1.x), true), vec2<f32>(-873f, 1971f))), _wgslsmith_div_i32(0i, -1i)), ~reverseBits(func_2(Struct_1(u_input.a, var_0.x)) | ~var_0));
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1264f, 1336f, -1754f), vec3<f32>(789f, -999f, 748f)))), vec3<f32>(_wgslsmith_f_op_f32(select(2103f, -234f, false)), _wgslsmith_f_op_f32(f32(-1f) * -813f), -1472f), false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - vec3<f32>(_wgslsmith_f_op_f32(755f + 1310f), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -1968f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(trunc(-1345f)), 560f) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(2282f, 1660f, -267f) * vec3<f32>(-188f, 114f, -416f)), _wgslsmith_div_vec3_f32(vec3<f32>(-477f, -1445f, 1863f), vec3<f32>(339f, -1318f, -1706f)))))));
    let var_4 = !select(vec4<bool>((1i | var_0.x) >= global0.a.x, false, !any(vec3<bool>(false, false, true)), all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), true))), select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), false), any(vec2<bool>(false, true))), vec4<bool>(true, true, true, any(vec2<bool>(true, true)))), select(vec4<bool>(all(vec4<bool>(false, false, false, true)), true, true, any(vec2<bool>(true, true))), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true)));
    global1 = -2147483647i;
    let var_5 = ~(global0.a << (abs(abs(abs(u_input.e))) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.x, var_3.x))), 4294967295u, 637f);
}

