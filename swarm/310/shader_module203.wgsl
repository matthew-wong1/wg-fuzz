struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1462f;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> f32 {
    var var_0 = ~u_input.a.x > ~u_input.b;
    var var_1 = Struct_1(u_input.c);
    let var_2 = Struct_1(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, var_1.a.x, u_input.c.x, 0u) << (~u_input.c % vec4<u32>(32u)), min(min(vec4<u32>(29239u, 84890u, u_input.c.x, u_input.c.x), var_1.a), u_input.c)));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1914f)))))));
}

fn func_2(arg_0: u32) -> f32 {
    global0 = _wgslsmith_f_op_f32(func_3());
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 4294967295u), _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.c.ww, u_input.c.zw << (u_input.c.xz % vec2<u32>(32u))), reverseBits(_wgslsmith_div_vec2_u32(u_input.c.wx, u_input.c.yy)), firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0, 4294967295u), u_input.c.xz)))) <= ~arg_0;
    let var_1 = Struct_1(reverseBits(vec4<u32>(_wgslsmith_sub_u32(u_input.d, u_input.d) >> (~41853u % 32u), ~4294967295u, 1u, u_input.c.x)));
    let var_2 = var_1;
    var_0 = any(select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), true), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), true), false), false));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -903f)))));
}

fn func_1() -> f32 {
    global0 = _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1155f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(~u_input.d))))));
    var var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(~19948u, countOneBits(1u)), u_input.c.yx);
    var_0 = u_input.c.xx ^ ~reverseBits(countOneBits(u_input.c.xz) | u_input.c.wy);
    var var_1 = Struct_1(vec4<u32>(u_input.d, ~52012u, _wgslsmith_sub_u32(min(var_0.x, 1u), select(17111u, 0u, true)), u_input.c.x ^ select(0u, 25139u, false)) & vec4<u32>(_wgslsmith_div_u32(48635u, 59120u), 1u, 1u, max(~var_0.x, 37884u)));
    var_0 = _wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(1u, 2644u) >> (_wgslsmith_mult_vec2_u32(~vec2<u32>(45245u, 1u), select(vec2<u32>(var_0.x, var_0.x), vec2<u32>(var_1.a.x, 49053u), vec2<bool>(true, true))) % vec2<u32>(32u))), firstTrailingBit(~vec2<u32>(95916u, select(3247u, u_input.c.x, false))));
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.ww;
    var var_1 = Struct_1(select(vec4<u32>(~var_0.x, 73731u, u_input.d, abs(4294967295u)), vec4<u32>(abs(1u), min(0u, var_0.x) | 8973u, var_0.x, (u_input.c.x & 53734u) ^ 1u), vec4<bool>(true, !(-1i == u_input.b), true, true)));
    var var_2 = 0u;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2136f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1383f))), -404f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1595f - -232f) * -1000f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-702f + _wgslsmith_div_f32(1000f, -3221f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), any(vec3<bool>(true, false, false))))));
    let var_4 = Struct_1(~firstTrailingBit(~var_1.a));
    var var_5 = select(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(select(false, false, false), true, all(vec2<bool>(false, false))), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), vec3<bool>(true, _wgslsmith_f_op_f32(select(var_3.x, 803f, false)) < 3124f, true), !(select(true, true, false) || true)), select(any(vec4<bool>(true, false, true, false)) != false, true, false));
    global0 = 1421f;
    let var_6 = Struct_1(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(~var_4.a.x, _wgslsmith_add_u32(var_4.a.x, 91728u)), _wgslsmith_clamp_u32(_wgslsmith_div_u32(44177u, var_1.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 54081u), vec2<u32>(0u, var_0.x)), var_0.x | var_1.a.x)), abs(var_4.a.x), _wgslsmith_sub_u32(~firstLeadingBit(var_0.x), select(1u, 1u, var_5.x)), var_4.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(0u, var_0.x), _wgslsmith_add_u32(var_4.a.x, var_0.x), ~4294967295u, _wgslsmith_mult_u32(20426u, var_6.a.x)), var_1.a)), vec3<i32>(~(-u_input.a.x), 0i, u_input.a.x) << (vec3<u32>(~_wgslsmith_mod_u32(u_input.d, 0u), ~(~var_1.a.x), ~var_4.a.x) % vec3<u32>(32u)), u_input.b);
}

