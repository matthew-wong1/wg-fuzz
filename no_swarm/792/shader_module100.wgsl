struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    let var_0 = vec2<bool>(any(vec4<bool>(true, select(true, false, any(vec3<bool>(false, false, false))), false, !all(vec3<bool>(false, true, false)))), ~1i > (_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(49456i, 2981i, 2147483647i, 25917i)), vec4<i32>(1i, 1i, 1i, 1i)) | ~(~(-409i))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -264f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -354f)))));
    return ~((-1i ^ _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-2147483647i, -2147483647i, 17602i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 62085i), vec2<i32>(-1i, 1i)), 1i)) << (u_input.a % 32u));
}

fn func_2(arg_0: Struct_3) -> f32 {
    var var_0 = ~select(vec3<i32>(func_3(), 45710i, ~19716i), vec3<i32>(abs(-2147483647i), -2147483647i, abs(1367i)), true) >> (select(_wgslsmith_div_vec3_u32(firstTrailingBit(~vec3<u32>(80446u, arg_0.a.x, u_input.a)), ~vec3<u32>(u_input.a, 1u, 25428u) & (vec3<u32>(75358u, arg_0.a.x, 1u) << (vec3<u32>(12734u, u_input.a, arg_0.a.x) % vec3<u32>(32u)))), ~select(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.a, 1u), vec3<u32>(arg_0.a.x, u_input.a, arg_0.a.x)), vec3<u32>(u_input.a, arg_0.a.x, arg_0.a.x), true), all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true))) % vec3<u32>(32u));
    var var_1 = Struct_2(select(select(all(vec2<bool>(true, true)), true, true), true, all(vec3<bool>(true, true, true))));
    var_0 = min(-(~vec3<i32>(var_0.x, var_0.x, -95779i)), _wgslsmith_sub_vec3_i32(reverseBits(-vec3<i32>(1i, -8010i, var_0.x)), -vec3<i32>(6715i, var_0.x, -2147483647i))) ^ vec3<i32>(-(~var_0.x), var_0.x, reverseBits(-13283i) | var_0.x);
    let var_2 = Struct_3(vec2<u32>(0u, 43029u));
    var var_3 = Struct_1(-2489f, ~_wgslsmith_div_vec3_u32(select(vec3<u32>(var_2.a.x, 6827u, 87259u), vec3<u32>(1u, 4294967295u, 59982u), select(vec3<bool>(false, var_1.a, var_1.a), vec3<bool>(false, var_1.a, false), vec3<bool>(false, false, false))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(34176u, arg_0.a.x, var_2.a.x), vec3<u32>(var_2.a.x, u_input.a, u_input.a), vec3<u32>(0u, u_input.a, 64953u))), ~(~1u));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3.a)) - var_3.a)));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(Struct_3(vec2<u32>(1u, 1u)))))), _wgslsmith_f_op_f32(abs(1312f))) != _wgslsmith_f_op_f32(min(-2511f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-577f * _wgslsmith_f_op_f32(2097f - -2552f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-396f - 287f) - _wgslsmith_f_op_f32(-331f * 1338f)))));
    var_0 = (select(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(27529u, 0u, u_input.a), vec3<u32>(1u, u_input.a, 15617u))), u_input.a, true) == u_input.a) && any(!select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(true, true), true));
    var var_1 = i32(-1i) * -_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, 12732i, 26029i, 27476i), vec4<i32>(8873i, 2147483647i, 36387i, 1760i)), _wgslsmith_clamp_i32(-1i, 11251i, select(-22362i, 1i, false)));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-582f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(Struct_3(vec2<u32>(u_input.a, u_input.a)))), -247f)))), 1498f, -604f);
    var_1 = select(firstTrailingBit(25897i >> (u_input.a % 32u)) & _wgslsmith_dot_vec2_i32(abs(~vec2<i32>(38237i, 61077i)), vec2<i32>(1i, 1i)), -2147483647i, true);
    return Struct_2(!(!(_wgslsmith_dot_vec2_u32(vec2<u32>(30372u, 61966u), vec2<u32>(u_input.a, 31411u)) > firstTrailingBit(u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_u32(~vec4<u32>(14138u, u_input.a, u_input.a, ~u_input.a) ^ countOneBits(vec4<u32>(~6638u, u_input.a, ~31592u, 4301u)), vec4<u32>(1u, u_input.a, ~(~u_input.a | _wgslsmith_mult_u32(u_input.a, u_input.a)), 7457u));
    global0 = true;
    global0 = true;
    var var_1 = func_1();
    var var_2 = _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(-max(2147483647i, 53650i), -(~2147483647i), -2147483647i >> ((u_input.a >> (var_0.x % 32u)) % 32u))), firstTrailingBit(abs(~max(vec3<i32>(3003i, -1i, -1i), vec3<i32>(1i, -15126i, -2147483647i)))));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec2<u32>(1u, u_input.a) ^ abs(var_0.zx)), ~(~_wgslsmith_clamp_i32(var_2.x, -33958i, func_3())), ~vec4<u32>(var_0.x >> (u_input.a % 32u), ~1u, 63521u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 10635u), var_0.zz)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1216f, -376f, -575f, -830f), vec4<f32>(-478f, -1281f, 2464f, 804f))) - vec4<f32>(533f, -623f, -266f, -477f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(262f, 145f, -1000f, -843f) - vec4<f32>(-919f, 1000f, 1207f, 552f)) * _wgslsmith_div_vec4_f32(vec4<f32>(646f, -297f, 1000f, 890f), vec4<f32>(321f, 111f, -1550f, -134f))), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
}

