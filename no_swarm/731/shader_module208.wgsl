struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: Struct_2,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-558f, 177f, 640f);

var<private> global1: Struct_1;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_2) -> i32 {
    global1 = arg_0.d;
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-681f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(746f * -1404f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) + _wgslsmith_f_op_f32(-718f * 713f))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(arg_0.b.b, arg_0.b.b)), _wgslsmith_div_vec3_f32(vec3<f32>(global1.c.x, -1000f, -594f), vec3<f32>(global1.c.x, global0.x, 527f)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.b - -325f) * -755f), _wgslsmith_f_op_f32(f32(-1f) * -334f))));
    let var_1 = ~vec4<u32>(abs(countOneBits(u_input.a.x)), arg_0.d.d, _wgslsmith_dot_vec3_u32(~(~u_input.a.xxz), u_input.a.ywy), ~(~_wgslsmith_mult_u32(7512u, 36433u)));
    let var_2 = _wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(~(~18179u | min(var_1.x, arg_0.d.a)), firstTrailingBit(reverseBits(var_1.x))));
    global1 = Struct_1(var_1.x, 684f, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.xy * vec2<f32>(621f, arg_0.d.c.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-115f, _wgslsmith_f_op_f32(-1079f + var_0.x))), !(_wgslsmith_f_op_f32(max(arg_3.b, var_0.x)) <= 481f))), 0u);
    return ~_wgslsmith_mult_i32(-firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(646i, -24963i, arg_0.a.x, 2147483647i), vec4<i32>(-1i, arg_3.a, u_input.b.x, arg_0.e))), _wgslsmith_div_i32(_wgslsmith_div_i32(0i, firstLeadingBit(-17642i)), arg_0.a.x));
}

fn func_2() -> i32 {
    var var_0 = vec4<bool>(!select(false, true, true), false, !all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false)))), !(global0.x >= global1.b));
    var var_1 = ~abs(vec4<i32>(~2147483647i, _wgslsmith_sub_i32(firstLeadingBit(u_input.b.x), -31017i), 2147483647i, func_3(Struct_4(vec3<i32>(70949i, u_input.b.x, u_input.b.x), Struct_3(vec4<f32>(1000f, global1.b, global0.x, global1.b), vec3<f32>(global1.c.x, 1252f, 335f), vec4<i32>(8667i, 0i, 1i, -1i), vec2<bool>(false, var_0.x)), Struct_2(u_input.b.x, global0.x), Struct_1(u_input.a.x, -243f, global0.yz, 34923u), -1i), _wgslsmith_f_op_f32(-1000f + 456f), vec2<i32>(35930i, u_input.b.x), Struct_2(2147483647i, 1089f))));
    var var_2 = _wgslsmith_div_u32(firstTrailingBit(_wgslsmith_mult_u32(select(global1.d, u_input.a.x & global1.a, true), ~_wgslsmith_dot_vec4_u32(vec4<u32>(31815u, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(7505u, global1.a, global1.d, global1.d)))), u_input.a.x);
    let var_3 = Struct_4(vec3<i32>(28759i, -(0i >> ((u_input.a.x & u_input.a.x) % 32u)), -1i), Struct_3(vec4<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b - global0.x) - _wgslsmith_f_op_f32(global1.c.x * 542f)), global1.c.x, 355f), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, global0.x, -546f), vec3<f32>(global1.c.x, global0.x, 2069f), vec3<bool>(var_0.x, var_0.x, true)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, global0.x, global1.c.x)))), -_wgslsmith_div_vec4_i32(vec4<i32>(-1i, var_1.x, 155i, 1i), vec4<i32>(var_1.x, u_input.b.x, u_input.b.x, 0i)), var_0.zw), Struct_2(_wgslsmith_add_i32(20380i, ~var_1.x), global0.x), Struct_1(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~u_input.a.yw, vec2<u32>(307u, u_input.a.x)), ~(~4294967295u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -821f))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + -802f), -837f), 51327u), ~u_input.b.x);
    var var_4 = ~var_3.b.c.x;
    return ~(~53480i) >> (1u % 32u);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = false;
    global1 = arg_1;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(881f, _wgslsmith_f_op_f32(-arg_1.c.x))) + 1467f), global1.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), global0.x)) * global0.x))));
    let var_1 = Struct_3(vec4<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1022f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1139f), -161f)) * 792f), _wgslsmith_f_op_f32(trunc(1401f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(floor(-2931f)), _wgslsmith_f_op_f32(879f * global1.c.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1540f, global0.x, 1445f) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.b, 1073f, global0.x)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(419f, -451f, -1477f), vec3<f32>(195f, arg_1.b, global1.c.x), vec3<bool>(true, false, var_0))))))), select(max((vec4<i32>(21685i, 2147483647i, -8012i, u_input.b.x) & vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.b.x)) | max(vec4<i32>(2147483647i, u_input.b.x, -12604i, arg_0), vec4<i32>(arg_0, arg_0, 48174i, 2147483647i)), -select(vec4<i32>(1i, arg_0, arg_0, -2147483647i), vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<bool>(true, var_0, var_0, true))), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(21443i, u_input.b.x, arg_0, arg_0), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, 1i, arg_0, 41196i), vec4<i32>(-18714i, -20437i, -9921i, 2147483647i))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -34073i, 0i), vec3<i32>(-19302i, -20195i, arg_0)), ~(-77081i), arg_0, 1i)), vec4<bool>(true, true, false, !(!var_0))), !select(!select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), false), select(vec2<bool>(true, var_0), vec2<bool>(true, var_0), select(vec2<bool>(var_0, false), vec2<bool>(var_0, true), false)), -27181i >= _wgslsmith_add_i32(arg_0, 0i)));
    let var_2 = Struct_1(u_input.a.x & ~1u, 741f, arg_1.c, arg_1.a);
    return arg_1;
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = func_4(func_2(), Struct_1(0u, _wgslsmith_div_f32(_wgslsmith_div_f32(734f, -147f), arg_0.x), vec2<f32>(_wgslsmith_f_op_f32(floor(2230f)), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.x, -581f), -876f)), ~(_wgslsmith_clamp_u32(global1.d, 0u, global1.d) | ~global1.a)), vec4<u32>(_wgslsmith_add_u32(1u, u_input.a.x), _wgslsmith_add_u32(u_input.a.x << (4294967295u % 32u), 18985u), u_input.a.x, 14536u));
    var_0 = Struct_1(35876u, _wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, !any(vec2<bool>(false, false)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-2403f, global1.c.x)), var_0.b) - vec2<f32>(_wgslsmith_f_op_f32(global0.x * global0.x), -1000f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.zx) * vec2<f32>(arg_0.x, global1.c.x))), ~4294967295u);
    let var_1 = true;
    var var_2 = Struct_4(firstTrailingBit(max(max(vec3<i32>(-34019i, -1i, -19086i), vec3<i32>(-25487i, -84785i, -2147483647i)), ~vec3<i32>(u_input.b.x, -3161i, -2147483647i))) << (~(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 35330u, 4294967295u), vec3<u32>(var_0.d, 98826u, u_input.a.x)) << (countOneBits(vec3<u32>(global1.d, 0u, 1u)) % vec3<u32>(32u))) % vec3<u32>(32u)), Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(global1.c.x, 473f)), -661f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -328f)) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -586f), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-598f - global0.x), global0.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(arg_0.yyy, vec3<f32>(var_0.b, -690f, global0.x)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-820f, var_0.b, var_0.c.x), _wgslsmith_f_op_vec3_f32(step(arg_0.xyy, arg_0.xyz)), false)), select(vec3<bool>(var_1, false, true), vec3<bool>(var_1, var_1, false), !vec3<bool>(true, var_1, false)))), -_wgslsmith_add_vec4_i32(select(vec4<i32>(-1i, 24673i, 1i, 1i), vec4<i32>(u_input.b.x, 12782i, u_input.b.x, u_input.b.x), true), -vec4<i32>(u_input.b.x, -12i, 14447i, 141i)), !(!vec2<bool>(var_1, var_1))), Struct_2(-(u_input.b.x & _wgslsmith_sub_i32(u_input.b.x, 1i)), -842f), Struct_1(35321u, 1073f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x)), -2000f), ~max(~1u, select(78668u, 562u, var_1))), -2147483647i);
    var var_3 = Struct_4(select(vec3<i32>(u_input.b.x, -_wgslsmith_add_i32(-2147483647i, u_input.b.x), 1i), vec3<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -69535i, -1i, 0i), -var_2.b.c), 35990i), true), Struct_3(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0 * var_2.b.a), _wgslsmith_f_op_vec4_f32(-arg_0)))), _wgslsmith_f_op_vec3_f32(arg_0.xzw - _wgslsmith_div_vec3_f32(arg_0.wwx, vec3<f32>(-1000f, var_0.c.x, var_2.c.b))), ~(~(-var_2.b.c)), var_2.b.d), Struct_2(-abs(~0i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c.b - _wgslsmith_f_op_f32(exp2(var_0.b))) - arg_0.x)), Struct_1(4294967295u, -250f, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(557f, global0.x)), _wgslsmith_f_op_vec2_f32(global0.xy - var_2.d.c)) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(arg_0.yy * global0.zz)))), 4294967295u), ~(~reverseBits(u_input.b.x)));
    return func_4(reverseBits(max(-42065i, ~_wgslsmith_sub_i32(4415i, var_2.b.c.x))), func_4(firstTrailingBit(~func_2()), var_2.d, ~vec4<u32>(abs(21864u), reverseBits(var_2.d.a), var_3.d.a, func_4(-2147483647i, Struct_1(28529u, var_3.d.b, vec2<f32>(1039f, arg_0.x), var_0.a), vec4<u32>(global1.d, 465u, global1.a, 23859u)).a)), abs(~u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<f32>(global0.x, -775f, 1000f);
    var var_0 = Struct_1(~_wgslsmith_div_u32(u_input.a.x | global1.d, 46527u), 555f, global1.c, _wgslsmith_div_u32(reverseBits(52910u), global1.a));
    global1 = func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1239f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.c.x)) * -1476f), 897f, 331f)));
    let var_1 = ~(~abs(~abs(vec4<u32>(6057u, u_input.a.x, u_input.a.x, 1u))));
    let var_2 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(max(global1.b, -454f)), var_0.c.x, _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 183f, var_0.c.x, global0.x) - vec4<f32>(global1.c.x, -1248f, -1699f, global0.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b, 1768f, global1.b, 1000f) * vec4<f32>(global1.c.x, global0.x, -877f, var_0.c.x))), any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)))))));
    let var_3 = any(vec3<bool>(all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true))), true, true));
    var var_4 = Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, firstTrailingBit(u_input.b.x) ^ -61073i, 0i >> (var_1.x % 32u), u_input.b.x), abs(vec4<i32>(-u_input.b.x, -30297i, -2147483647i, -2147483647i << (u_input.a.x % 32u)))), var_0.c.x);
    global1 = Struct_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(9269u), _wgslsmith_add_u32(global1.d, 44825u), 4294967295u), vec3<u32>(8080u, 0u, var_1.x) ^ (vec3<u32>(var_2.d, var_2.a, 1u) >> (var_1.zxw % vec3<u32>(32u)))), global0.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-287f))), global1.c.x)), _wgslsmith_mod_u32(countOneBits(var_1.x), 54272u));
    var var_5 = !all(!vec4<bool>(!var_3, var_3, any(vec4<bool>(false, false, var_3, false)), 62531u >= var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(func_4(var_4.a, func_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.b, 938f, -1936f, var_4.b), vec4<f32>(global0.x, 218f, 239f, global0.x)))), ~_wgslsmith_sub_vec4_u32(var_1, vec4<u32>(0u, var_1.x, 4294967295u, 1u))).a, var_0.d));
}

