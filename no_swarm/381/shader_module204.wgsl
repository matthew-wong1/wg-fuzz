struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 38459u, 82261u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: bool) -> u32 {
    global0 = u_input.b;
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1486f);
    let var_1 = ~vec3<i32>(-2147483647i, -2147483647i, _wgslsmith_mult_i32(-u_input.a, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(2147483647i, u_input.a)), 1i)));
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1000f)))))), -945f));
    let var_3 = 27507i;
    return u_input.b.x;
}

fn func_2(arg_0: i32) -> Struct_1 {
    global0 = _wgslsmith_mod_vec3_u32(u_input.b, vec3<u32>(~global0.x, _wgslsmith_mult_u32(func_3(true, true), 0u), u_input.b.x));
    return Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(371f - -685f), _wgslsmith_f_op_f32(f32(-1f) * -180f), -383f, 449f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-608f, -170f, 277f, 289f)), vec4<bool>(true, true, false, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1291f, -926f, -1000f, -1366f), vec4<f32>(-169f, -353f, 183f, -1010f), vec4<bool>(true, true, true, false)))))))), vec2<i32>(22304i, firstLeadingBit(11793i)), vec3<bool>(true, true, true), 1000f);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: u32, arg_3: i32) -> vec4<u32> {
    global0 = vec3<u32>(_wgslsmith_mod_u32(1u >> (global0.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, arg_2, arg_2, 0u), vec4<u32>(global0.x, global0.x, 1u, 0u)) << (u_input.b.x % 32u)) >> (~global0.x % 32u), 1125u, select(_wgslsmith_div_u32(19788u, _wgslsmith_sub_u32(4294967295u, firstLeadingBit(0u))), ~_wgslsmith_mod_u32(u_input.b.x, 10375u), false));
    global0 = ~vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(~5762u, _wgslsmith_dot_vec2_u32(u_input.b.xz, vec2<u32>(global0.x, global0.x))), 1u), ~u_input.b.x, 1u);
    global0 = ~u_input.b;
    var var_0 = arg_1.a;
    return max(~_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(66636u, 30623u, 1u), u_input.b), _wgslsmith_dot_vec3_u32(vec3<u32>(55279u, global0.x, arg_2), u_input.b), 47246u, _wgslsmith_mult_u32(0u, 0u)), firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2, global0.x, 4294967295u, 0u), vec4<u32>(global0.x, arg_2, global0.x, 35570u)))), ~abs(vec4<u32>(~arg_2, 43576u, ~u_input.b.x, 0u)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: vec3<i32>) -> i32 {
    var var_0 = ~_wgslsmith_mod_vec4_u32(~vec4<u32>(global0.x, 7230u, global0.x, global0.x) ^ min(vec4<u32>(global0.x, global0.x, 26483u, 1u), vec4<u32>(global0.x, 0u, 1u, 4294967295u)), ~(~vec4<u32>(global0.x, u_input.b.x, 11024u, 47741u))) << (vec4<u32>(~_wgslsmith_clamp_u32(4294967295u, global0.x, global0.x), global0.x, ~(~u_input.b.x) << (_wgslsmith_mod_u32(58793u, 25253u) % 32u), global0.x) % vec4<u32>(32u));
    var_0 = func_4(_wgslsmith_div_vec3_i32(~vec3<i32>(2147483647i, u_input.a, arg_2.x), arg_2), Struct_2(func_2(arg_2.x), func_2(0i & arg_1.x), func_2(1i), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-12762i, u_input.c.x), countOneBits(-1i))), _wgslsmith_div_u32(select(func_3(true, false), u_input.b.x, true), 1u), _wgslsmith_mod_i32(u_input.c.x, 48068i)) | vec4<u32>(19034u, min(~u_input.b.x, _wgslsmith_mult_u32(global0.x, 35906u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x ^ var_0.x, ~u_input.b.x), u_input.b), ~global0.x | 72039u);
    let var_1 = Struct_3(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-func_2(arg_2.x).d), -414f, arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)), vec2<i32>(arg_1.x, 1i), select(func_2(reverseBits(2147483647i)).c, vec3<bool>(true, func_2(-11209i).c.x, false), true), -2268f), ~(~_wgslsmith_mod_i32(39388i, _wgslsmith_mult_i32(arg_2.x, 25753i))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)))), vec3<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, false), false)), select(true, true, false), true), true));
    var var_2 = u_input.c;
    var var_3 = var_1;
    return firstTrailingBit(~(~(-39252i) << (~(~u_input.b.x) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~abs(vec4<i32>(_wgslsmith_div_i32(-2147483647i, u_input.a ^ u_input.a), 1i, -(-2147483647i & u_input.a), func_1(vec4<f32>(-1042f, -564f, -1249f, -1346f), _wgslsmith_mod_vec2_i32(u_input.c, vec2<i32>(u_input.c.x, -12815i)), vec3<i32>(u_input.a, u_input.c.x, u_input.a))));
    let var_1 = all(!vec3<bool>(true, _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 4294967295u) < global0.x, any(vec2<bool>(true, true))));
    global0 = _wgslsmith_mod_vec3_u32(vec3<u32>(23358u, u_input.b.x, u_input.b.x), vec3<u32>(~firstTrailingBit(global0.x) | firstLeadingBit(0u), func_3(all(!vec4<bool>(false, var_1, false, var_1)), var_1), global0.x));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-141f, 1053f, 107f, -1472f) + vec4<f32>(1391f, 262f, 1000f, 1000f))) + vec4<f32>(1f, 1f, 1f, 1f)) + vec4<f32>(_wgslsmith_f_op_f32(-798f - _wgslsmith_f_op_f32(593f * -117f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1167f))), _wgslsmith_f_op_f32(min(-1453f, _wgslsmith_f_op_f32(round(-670f)))), 1635f)), ~reverseBits(vec2<i32>(u_input.c.x, var_0.x)), func_2(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.a) | u_input.c, u_input.c))).c, -894f);
    let var_3 = -(_wgslsmith_mod_i32(var_0.x, var_0.x | 2147483647i) | (-u_input.a | ~u_input.a)) & countOneBits(_wgslsmith_div_i32(var_2.b.x, ~29095i) | _wgslsmith_sub_i32(var_0.x, var_2.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -197f), -1000f, 439f, _wgslsmith_f_op_f32(-var_2.d)), _wgslsmith_f_op_vec4_f32(var_2.a - var_2.a)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(-1414f, var_2.a.x, -227f, var_2.a.x), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-553f, -687f, 640f, 1757f))))))), -10342i, firstTrailingBit(~(countOneBits(vec4<u32>(u_input.b.x, u_input.b.x, 2048u, 0u)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(15724u, 4294967295u, 4294967295u, u_input.b.x), vec4<u32>(1u, 0u, 21015u, global0.x)) % vec4<u32>(32u)))), ~global0.xz, 1i);
}

