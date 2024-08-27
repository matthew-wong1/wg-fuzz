struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: vec2<f32>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 49088u;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> f32 {
    let var_0 = Struct_2(min(vec3<u32>(31603u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 0u, 26653u), u_input.c.ywx), u_input.c.x), ~u_input.c.wzx));
    global0 = 6087u;
    let var_1 = u_input.a.x;
    global0 = var_0.a.x;
    global0 = var_0.a.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-120f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1560f, _wgslsmith_f_op_f32(floor(-1331f))))))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1275f, 1f)))));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: u32) -> u32 {
    return ~24683u;
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec3<u32>) -> Struct_3 {
    global0 = 24632u;
    let var_0 = vec4<u32>(~u_input.c.x, arg_2.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(81599u, 22920u, arg_2.x, 2513u) | u_input.c, firstTrailingBit(vec4<u32>(4294967295u, u_input.c.x, 52684u, arg_2.x))), ~u_input.c), firstTrailingBit(firstTrailingBit(_wgslsmith_add_u32(4294967295u, arg_2.x))) | (func_3(true, arg_1 ^ arg_1, 1u) << (~reverseBits(arg_2.x) % 32u)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1178f) * -1000f));
    var var_2 = select(reverseBits((select(vec3<u32>(var_0.x, u_input.c.x, arg_2.x), var_0.yzx, vec3<bool>(false, false, false)) >> ((u_input.c.xyz | u_input.c.wzx) % vec3<u32>(32u))) & (_wgslsmith_mult_vec3_u32(var_0.zwz, vec3<u32>(arg_2.x, arg_2.x, 0u)) >> (~vec3<u32>(u_input.c.x, arg_2.x, 1u) % vec3<u32>(32u)))), ~(~(~vec3<u32>(u_input.c.x, u_input.c.x, 18294u) << (~vec3<u32>(var_0.x, var_0.x, 4294967295u) % vec3<u32>(32u)))), select(select(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(false, true, all(vec3<bool>(true, false, false))), vec3<bool>(var_0.x != var_0.x, all(vec2<bool>(false, true)), arg_1 > -12332i)), !select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true)), all(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(false, false)))));
    var_2 = ~_wgslsmith_clamp_vec3_u32(var_0.wwz, vec3<u32>(var_2.x, ~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(25848u, 10543u), vec2<u32>(var_2.x, 4294967295u))) >> (abs(vec3<u32>(var_2.x, var_0.x, var_0.x) << (u_input.c.xyz % vec3<u32>(32u))) % vec3<u32>(32u)), abs(_wgslsmith_div_vec3_u32(vec3<u32>(var_2.x, 58565u, arg_2.x), arg_2)));
    return Struct_3(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-371f, 379f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * var_1))))), var_2.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(754f, -684f), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) - vec2<f32>(var_1, -661f)))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-952f, var_1) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1, -736f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1, var_1)))))), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), !select(vec2<bool>(false, true), vec2<bool>(true, true), true)))), Struct_2(~u_input.c.yyx), Struct_2(var_0.xzy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1581f, 1220f, -130f), vec3<f32>(-1449f, 220f, -1000f))) - vec3<f32>(-103f, 1096f, -1023f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1159f, 1876f, -2078f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-375f, 2449f, -1144f)))), max(abs(~u_input.c.x), u_input.c.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_1()), 1f) * vec2<f32>(_wgslsmith_f_op_f32(518f * 516f), -474f)), Struct_2(u_input.c.yxz), Struct_2(u_input.c.xxz)), ~(-((u_input.b.x << (u_input.c.x % 32u)) & ~27441i)), func_2(-50724i, ~(-2147483647i), u_input.c.zyx));
    var_0 = Struct_4(func_2(select(-2147483647i, u_input.a.x | _wgslsmith_sub_i32(u_input.b.x, -18584i), 4294967295u >= u_input.c.x), _wgslsmith_div_i32(var_0.b, var_0.b), firstTrailingBit(~var_0.c.e.a)), _wgslsmith_add_i32(_wgslsmith_div_i32(var_0.b & firstTrailingBit(2147483647i), (var_0.b << (43233u % 32u)) >> ((u_input.c.x << (64046u % 32u)) % 32u)), 2147483647i), Struct_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.c.c.x, var_0.a.c.x, var_0.c.c.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-191f, -995f, 1326f))), var_0.c.a, false)), 1u ^ u_input.c.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a.a.xy) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-248f, var_0.c.c.x) - vec2<f32>(-770f, var_0.c.a.x))), vec2<f32>(var_0.c.a.x, _wgslsmith_div_f32(-1131f, 2004f))), Struct_2(~u_input.c.wzy | ~u_input.c.wxw), var_0.c.e));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -397f)) - _wgslsmith_f_op_f32(192f - -277f))))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-212f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a.a.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -558f))))))) + _wgslsmith_f_op_f32(select(var_0.a.a.x, 1763f, any(vec2<bool>(true, true)))));
    let var_2 = _wgslsmith_f_op_f32(-var_0.c.c.x);
    global0 = u_input.c.x;
    global0 = ~firstTrailingBit(var_0.a.d.a.x) ^ var_0.c.e.a.x;
    var_0 = Struct_4(var_0.c, -(~(-21732i << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.c.x), vec4<u32>(var_0.a.e.a.x, var_0.a.e.a.x, var_0.c.e.a.x, u_input.c.x)) % 32u))), var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(u_input.b, u_input.b, _wgslsmith_clamp_vec3_i32(select(u_input.b ^ u_input.b, ~vec3<i32>(u_input.b.x, u_input.b.x, 4198i), all(vec3<bool>(true, true, true))), vec3<i32>(u_input.b.x, var_0.b & u_input.a.x, firstLeadingBit(-5280i)), u_input.b)), u_input.a.x, var_0.a.e.a);
}

