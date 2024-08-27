struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: u32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4724u, 49661u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<i32> {
    let var_0 = Struct_2(select(vec3<bool>(any(vec2<bool>(false, true)), true || any(vec4<bool>(true, true, true, false)), any(vec4<bool>(true, true, true, true))), !(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false))), vec3<bool>(any(vec3<bool>(true, true, true)), true, true)), 800f, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), !vec2<bool>(any(vec2<bool>(true, true)), true));
    let var_1 = _wgslsmith_clamp_vec2_u32(~(~select(~u_input.a.xw, vec2<u32>(1u, 0u), vec2<bool>(false, false))), u_input.d, _wgslsmith_clamp_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.d.x), u_input.a.yx), ~var_0.c), abs(firstTrailingBit(~vec2<u32>(32457u, 15554u))), ~vec2<u32>(global0.x, var_0.c) ^ u_input.a.yx));
    var var_2 = var_0;
    var var_3 = Struct_2(vec3<bool>(!any(vec3<bool>(var_0.d.x, var_0.d.x, true)), false, _wgslsmith_mod_u32(1u, ~25300u) > _wgslsmith_mult_u32(var_1.x, 0u)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), ~(~u_input.a.x), !(!select(vec2<bool>(var_0.a.x, var_0.a.x), vec2<bool>(true, false), all(vec2<bool>(true, false)))));
    global0 = var_1 << (firstTrailingBit(var_1) % vec2<u32>(32u));
    return ~vec2<i32>(40216i, -1i);
}

fn func_2() -> bool {
    var var_0 = func_3();
    var_0 = vec2<i32>(1i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(-154i, -2147483647i, 66050i, u_input.e.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-59412i, -2147483647i, u_input.e.x, 0i), vec4<i32>(var_0.x, u_input.b, 58304i, u_input.e.x), vec4<i32>(u_input.e.x, -1i, -2147483647i, -19379i)), -vec4<i32>(u_input.c.x, 2147483647i, -23532i, -1i)), -reverseBits(vec4<i32>(u_input.c.x, 14802i, u_input.c.x, var_0.x)))) & ~u_input.e.zy;
    var_0 = u_input.c;
    var var_1 = Struct_2(select(select(vec3<bool>(any(vec2<bool>(false, true)), any(vec3<bool>(true, false, true)), false), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true))), vec3<bool>(select(true, true, true), true, !any(vec3<bool>(false, false, false))), !(-13568i <= _wgslsmith_clamp_i32(-1i, -22114i, var_0.x))), -542f, ~4294967295u, !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))));
    var var_2 = var_1.d.x;
    return all(vec3<bool>(any(vec2<bool>(var_1.d.x, true)), any(!var_1.a), select(true, true, true))) & var_1.d.x;
}

fn func_1() -> vec4<u32> {
    var var_0 = func_2();
    var_0 = false;
    var_0 = true;
    global0 = vec2<u32>(0u, ~_wgslsmith_dot_vec4_u32(u_input.a, u_input.a | u_input.a) ^ countOneBits(u_input.d.x & u_input.d.x));
    global0 = u_input.d;
    return vec4<u32>(max(_wgslsmith_dot_vec3_u32(u_input.a.xxx, _wgslsmith_sub_vec3_u32(abs(u_input.a.ywy), ~u_input.a.xwz)), (global0.x ^ 23706u) << (abs(global0.x) % 32u)), _wgslsmith_div_u32(firstTrailingBit(global0.x), ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 1u & global0.x)), ~14394u, (~u_input.a.x ^ 1u) ^ ~61522u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.a.wyw;
    global0 = ~(~(~max(vec2<u32>(1u, 0u), vec2<u32>(var_0.x, global0.x))));
    var var_1 = _wgslsmith_sub_i32(0i, (-9787i >> (_wgslsmith_dot_vec4_u32(abs(u_input.a), func_1()) % 32u)) >> (~_wgslsmith_add_u32(global0.x, var_0.x) % 32u));
    let var_2 = select(vec4<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1006f))) >= -1262f, any(vec4<bool>(true, true, true, any(vec4<bool>(true, true, true, false)))), true), select(!vec4<bool>(func_2(), true, any(vec2<bool>(true, true)), true), vec4<bool>(!any(vec4<bool>(true, true, true, true)), true, true, all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))), select(vec4<bool>(false, any(vec3<bool>(true, true, true)), select(true, false, true), true), vec4<bool>(true, true, any(vec4<bool>(false, false, true, false)), true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, false, false)))), !select(vec4<bool>(u_input.e.x > u_input.e.x, true, true, true), vec4<bool>(any(vec4<bool>(true, true, true, true)), false, 8284i <= u_input.b, false), vec4<bool>(true, true, true, global0.x <= u_input.d.x)));
    var_1 = -2147483647i;
    var_1 = -(firstLeadingBit(u_input.c.x) ^ 38787i);
    var var_3 = Struct_1(vec2<i32>(-2147483647i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, -5837i, u_input.b, u_input.b), vec4<i32>(1i, u_input.e.x, 1i, u_input.b), vec4<i32>(u_input.e.x, -64178i, -17244i, -61764i)), vec4<i32>(u_input.c.x, u_input.c.x, u_input.e.x, u_input.e.x)), u_input.e.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-903f, -855f, -1602f, 2405f) * vec4<f32>(334f, 387f, -2528f, -507f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1802f, -1312f, -1571f, -1894f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(946f, 1540f, -1303f, 1400f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(216f, -987f, 1308f, -1255f))), false)));
    var_1 = reverseBits(1619i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-31537i, -47992i >> (select(106037u, 13570u, all(vec3<bool>(var_2.x, true, false))) % 32u)));
}

