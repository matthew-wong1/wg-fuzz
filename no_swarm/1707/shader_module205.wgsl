struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: vec3<f32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -13536i;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = !(!(!arg_1.a.yx));
    global0 = arg_1.b;
    global0 = arg_1.b;
    var var_1 = ~(-_wgslsmith_add_i32(arg_1.b, u_input.a) & -arg_1.b);
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_0.x)), arg_1.c.x))), _wgslsmith_div_f32(arg_1.c.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(714f * 431f)))), arg_1.c.x));
    return arg_1.a;
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    global0 = -1i;
    let var_0 = ~firstTrailingBit(~(~20276u));
    return arg_3;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<f32>) -> i32 {
    global0 = -11682i;
    global0 = countOneBits((u_input.a >> (arg_1.d % 32u)) >> (firstTrailingBit(~min(4294967295u, arg_1.d)) % 32u));
    var var_0 = _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(0u, arg_1.d)), vec2<u32>(0u, 16507u), _wgslsmith_add_vec2_u32(vec2<u32>(36860u, 26131u), vec2<u32>(arg_1.d, 4294967295u))), ~vec2<u32>(arg_1.d, arg_1.d)), select(vec2<u32>(firstLeadingBit(arg_1.d), 4294967295u >> (0u % 32u)), _wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(0u, arg_1.d)), _wgslsmith_mult_vec2_u32(vec2<u32>(495u, arg_1.d), vec2<u32>(arg_1.d, 91082u))), vec2<bool>(arg_1.a.x, arg_1.a.x))) ^ min(abs(~_wgslsmith_mod_vec2_u32(vec2<u32>(6611u, 50678u), vec2<u32>(29344u, 4294967295u))), firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), select(vec2<u32>(1u, arg_1.d), vec2<u32>(4294967295u, arg_1.d), arg_1.a.x))));
    global0 = arg_1.b >> (arg_1.d % 32u);
    global0 = -countOneBits(~(-2147483647i));
    return 1i;
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: vec2<i32>, arg_3: bool) -> vec2<bool> {
    global0 = _wgslsmith_mod_i32(func_4(func_3(any(select(vec3<bool>(arg_3, arg_3, arg_3), vec3<bool>(arg_3, arg_3, true), vec3<bool>(false, arg_3, true))), min(abs(vec4<u32>(12857u, 0u, 0u, 38921u)), vec4<u32>(4294967295u, 1u, 0u, 0u)), Struct_2(func_2(vec3<f32>(387f, 528f, -1215f), Struct_2(vec4<bool>(true, false, false, arg_3), arg_1, vec3<f32>(-1454f, 1465f, -124f), 4294967295u)), ~arg_1, vec3<f32>(180f, 120f, 1220f), 1u), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-524f, -1003f, 517f)))), Struct_2(!(!vec4<bool>(arg_3, arg_3, arg_3, arg_3)), -u_input.a, vec3<f32>(1f, 1f, 1f), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(1u, 54147u, 15450u, 4294967295u)), ~vec4<u32>(67000u, 1u, 36487u, 23807u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(503f, 1594f)))))), countOneBits(_wgslsmith_dot_vec3_i32(select(vec3<i32>(arg_1, arg_0.x, arg_1), -vec3<i32>(-2147483647i, -34043i, arg_1), arg_3), max(vec3<i32>(u_input.a, u_input.a, arg_1), countOneBits(arg_0)))));
    global0 = -18561i;
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(714f, -182f, -866f))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(466f, 1303f, -277f)))))));
    var var_1 = firstLeadingBit(min(-vec4<i32>(abs(arg_1), -arg_2.x, -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(2418i, 48263i, -5286i, arg_0.x), vec4<i32>(u_input.a, -53570i, arg_2.x, u_input.a))), reverseBits(vec4<i32>(~arg_0.x, 1i, arg_1, arg_1))));
    let var_2 = _wgslsmith_div_u32(1u, ~_wgslsmith_clamp_u32(~firstTrailingBit(0u), firstTrailingBit(1u), _wgslsmith_clamp_u32(1u, 1u, 4294967295u)));
    return !select(func_2(vec3<f32>(_wgslsmith_f_op_f32(max(765f, 1319f)), func_3(arg_3, vec4<u32>(var_2, 59119u, var_2, var_2), Struct_2(vec4<bool>(arg_3, false, arg_3, arg_3), u_input.a, var_0.a, 4294967295u), Struct_1(var_0.a)).a.x, var_0.a.x), Struct_2(func_2(var_0.a, Struct_2(vec4<bool>(arg_3, true, true, false), arg_2.x, var_0.a, var_2)), ~arg_0.x, func_3(arg_3, vec4<u32>(0u, var_2, 26926u, var_2), Struct_2(vec4<bool>(true, arg_3, false, true), u_input.a, var_0.a, 46464u), Struct_1(vec3<f32>(1000f, 1673f, var_0.a.x))).a, _wgslsmith_mult_u32(1u, 1u))).yz, !(!select(vec2<bool>(true, true), vec2<bool>(false, arg_3), vec2<bool>(false, false))), !(!select(vec2<bool>(false, false), vec2<bool>(arg_3, true), vec2<bool>(arg_3, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!func_1(min(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-29560i, u_input.a, 0i)) & firstTrailingBit(vec3<i32>(u_input.a, u_input.a, -1i)), u_input.a, min(vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(-2147483647i, u_input.a), -vec2<i32>(u_input.a, 38855i)), true));
    global0 = ~(~reverseBits(-25986i));
    var_0 = !(!(!(!(!vec2<bool>(true, var_0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-2427f * 655f));
}

