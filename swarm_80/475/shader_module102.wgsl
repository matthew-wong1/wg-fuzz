struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: f32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 799i;

var<private> global1: array<vec4<u32>, 15> = array<vec4<u32>, 15>(vec4<u32>(1u, 43165u, 0u, 50551u), vec4<u32>(17508u, 0u, 1u, 34038u), vec4<u32>(4294967295u, 4294967295u, 36723u, 798u), vec4<u32>(0u, 0u, 0u, 0u), vec4<u32>(1u, 87146u, 0u, 1u), vec4<u32>(1u, 11261u, 13399u, 53585u), vec4<u32>(0u, 1u, 4294967295u, 2309u), vec4<u32>(0u, 1u, 0u, 63983u), vec4<u32>(69728u, 1u, 33884u, 24665u), vec4<u32>(1u, 0u, 64815u, 0u), vec4<u32>(11750u, 11243u, 0u, 7626u), vec4<u32>(59555u, 0u, 22226u, 1934u), vec4<u32>(21566u, 0u, 1u, 1u), vec4<u32>(11726u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 31039u, 102603u, 1u));

var<private> global2: i32;

var<private> global3: f32 = 1000f;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec3<i32>) -> vec4<bool> {
    var var_0 = u_input.a;
    global3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-500f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -538f), _wgslsmith_f_op_f32(select(-387f, -857f, true)))), _wgslsmith_f_op_f32(-1302f * 1f))));
    let var_1 = -1048f;
    let var_2 = vec2<bool>(!(!(!select(true, false, false))), ~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 11166i, var_0.x, 11808i), _wgslsmith_clamp_vec4_i32(vec4<i32>(37947i, u_input.a.x, -2359i, 0i), vec4<i32>(-44891i, -20735i, var_0.x, var_0.x), vec4<i32>(2147483647i, var_0.x, 25922i, arg_0.x))) < arg_0.x);
    var var_3 = Struct_1(vec4<bool>(select(false, !any(var_2), true | all(vec4<bool>(false, var_2.x, true, var_2.x))), 41037i < max(i32(-1i) * -25991i, var_0.x), var_2.x, false), u_input.a.xx, var_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 622f, -1647f, -970f) + vec4<f32>(-1034f, 699f, 797f, var_1))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1, var_1, 828f, var_1), vec4<f32>(var_1, var_1, 503f, var_1))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(225f, var_1, var_1, -418f) + vec4<f32>(var_1, 367f, -1000f, -836f))))));
    return !vec4<bool>(any(!select(var_3.a.xxw, var_3.a.www, var_2.x)), all(var_3.a), ~u_input.b > ~(u_input.b | 7318u), var_2.x);
}

fn func_4(arg_0: Struct_1) -> i32 {
    return arg_0.b.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: bool) -> Struct_1 {
    global1 = array<vec4<u32>, 15>();
    var var_0 = Struct_1(!vec4<bool>(u_input.a.x < -2147483647i, arg_1, any(!vec3<bool>(true, arg_1, arg_1)), false), u_input.a.xz, 1960f, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(720f, 401f, -294f, -549f), vec4<f32>(-208f, 1707f, 1388f, -2505f))))))));
    global1 = array<vec4<u32>, 15>();
    global0 = func_4(Struct_1(!func_3(-u_input.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, abs(var_0.b.x)), u_input.a.xx, select(_wgslsmith_sub_vec2_i32(vec2<i32>(14968i, var_0.b.x), var_0.b), var_0.b, arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1131f))), var_0.d));
    var var_1 = ~vec2<u32>(~4294967295u, _wgslsmith_mult_u32(reverseBits(4294967295u), _wgslsmith_clamp_u32(50924u, 61003u, u_input.b)) >> ((1u << (select(arg_0.x, u_input.b, var_0.a.x) % 32u)) % 32u));
    return Struct_1(!vec4<bool>(!all(vec3<bool>(var_0.a.x, arg_1, false)), true, !(false && var_0.a.x), true), vec2<i32>(u_input.a.x ^ u_input.a.x, 24500i), 122f, _wgslsmith_f_op_vec4_f32(-var_0.d));
}

fn func_1(arg_0: vec3<i32>) -> bool {
    var var_0 = vec2<u32>(0u, min(abs(1u), u_input.b));
    let var_1 = func_2(~(~(~vec3<u32>(0u, 4294967295u, u_input.b))) | ~(~firstTrailingBit(vec3<u32>(27149u, 4294967295u, u_input.b))), ~firstTrailingBit(~0u) >= 29672u);
    global2 = 1i;
    return true;
}

fn func_5(arg_0: vec3<u32>, arg_1: u32, arg_2: vec2<bool>, arg_3: vec4<u32>) -> u32 {
    var var_0 = Struct_1(func_2(vec3<u32>(~4294967295u, _wgslsmith_div_u32(1u, u_input.b), arg_3.x) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.x, 0u, arg_3.x) << (vec3<u32>(4294967295u, 1u, u_input.b) % vec3<u32>(32u)), ~arg_3.ywx, ~arg_0) % vec3<u32>(32u)), arg_2.x).a, reverseBits(u_input.a.zy), -285f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(529f, -434f, -215f, -540f)), vec4<f32>(-254f, 1000f, -134f, 302f))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-var_0.d);
    let var_2 = select(1u, 37375u, all(!func_2(arg_3.zyy, false).a)) ^ _wgslsmith_mult_u32(42182u, 26811u);
    var_0 = Struct_1(var_0.a, max(firstLeadingBit(select(vec2<i32>(12291i, u_input.a.x) ^ u_input.a.xy, max(vec2<i32>(var_0.b.x, -2147483647i), u_input.a.xy), select(vec2<bool>(false, var_0.a.x), arg_2, var_0.a.x))), vec2<i32>(-u_input.a.x, -21862i ^ _wgslsmith_mult_i32(var_0.b.x, 1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-810f * -449f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(904f)) * _wgslsmith_f_op_f32(trunc(var_1.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, var_0.c, var_1.x, 1214f))))));
    let var_3 = u_input.a;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 0i;
    let var_0 = ~func_5(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, 1u), vec3<u32>(4294967295u, u_input.b, u_input.b)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.b, 25264u) ^ vec3<u32>(4294967295u, 1u, u_input.b), vec3<u32>(25565u, 0u, 15281u) ^ vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b)) % vec3<u32>(32u)), ~(0u | (u_input.b | 4294967295u)), vec2<bool>(func_1(~u_input.a), true), vec4<u32>(~(~u_input.b), 1u, abs(min(u_input.b, u_input.b)), ~(~0u)));
    var var_1 = !(!func_2(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, 28975u), vec3<u32>(u_input.b, 0u, u_input.b) >> (vec3<u32>(4294967295u, u_input.b, var_0) % vec3<u32>(32u))), true).a.zy);
    global2 = ~abs(u_input.a.x);
    let var_2 = _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(96863u, var_0, u_input.b)), ~vec3<u32>(u_input.b, 4294967295u, 32238u)), ~vec3<u32>(29047u, 1u, var_0) >> (_wgslsmith_div_vec3_u32(vec3<u32>(var_0, 39987u, var_0), vec3<u32>(var_0, var_0, u_input.b)) % vec3<u32>(32u))) >> (~(~max(vec3<u32>(46895u, u_input.b, u_input.b), vec3<u32>(u_input.b, var_0, u_input.b))) % vec3<u32>(32u)), ~vec3<u32>(u_input.b | u_input.b, var_0, ~1u) >> (~max(~vec3<u32>(var_0, u_input.b, var_0), vec3<u32>(4294967295u, 0u, 7495u)) % vec3<u32>(32u)));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-278f, 379f, 173f, 1256f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(993f, 1420f, -636f, 349f) + vec4<f32>(1674f, -1000f, -1046f, -257f))))) + vec4<f32>(1133f, 1144f, _wgslsmith_f_op_f32(ceil(772f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-127f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(258f))), !(!var_1.x)))));
    let var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(0u) | _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, var_4), _wgslsmith_div_vec2_u32(vec2<u32>(53257u, var_4), vec2<u32>(var_2, 4294967295u))), ~var_0), var_4, ~1i, ~u_input.b, u_input.b);
}

