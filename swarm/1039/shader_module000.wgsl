struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -2788f;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec4<bool>, arg_1: u32) -> i32 {
    var var_0 = vec4<bool>(true, all(arg_0.yyz), true, arg_0.x);
    global0 = -2728f;
    global0 = 1f;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2098f, 491f, arg_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -961f)) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, 1f)))));
    let var_2 = true;
    return ~(-u_input.a.x);
}

fn func_2() -> vec2<f32> {
    global0 = _wgslsmith_f_op_f32(1313f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -214f))), 1f)) - _wgslsmith_f_op_f32(max(670f, _wgslsmith_f_op_f32(1756f + _wgslsmith_div_f32(-1000f, 441f))))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1033f + -809f), 656f, true)) + -2406f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1379f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1488f - -368f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1519f))))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2706f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_0 = firstTrailingBit(abs(1i));
    let var_1 = Struct_2(u_input.d >> (u_input.c % 32u), u_input.b.xx ^ u_input.b.yz);
    var var_2 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-17156i, firstTrailingBit(func_3(vec4<bool>(true, true, true, true), ~62130u)), firstTrailingBit(~min(-1i, var_0))), vec3<i32>(var_0, select(-1i, u_input.a.x, true), ~(-var_0 >> (1u % 32u))), select(u_input.a, vec3<i32>(8858i, u_input.a.x >> (30890u % 32u), _wgslsmith_clamp_i32(~(-2147483647i), ~(-1i), u_input.a.x)), select(vec3<bool>(any(vec2<bool>(true, true)), all(vec2<bool>(true, false)), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-185f, 1171f)), vec2<f32>(-1540f, -1408f)))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -762f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1900f)) - _wgslsmith_f_op_f32(f32(-1f) * -533f)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: f32, arg_3: i32) -> Struct_2 {
    global0 = 164f;
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_2, -245f, -1122f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-238f, 1177f, arg_0.x, arg_0.x) + vec4<f32>(-1164f, arg_0.x, -706f, 164f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1600f, 1379f, -366f, 1497f) - vec4<f32>(1187f, arg_2, arg_2, 171f))))), true)) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -3409f, arg_0.x, -745f))), vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(645f, -343f) * 635f), _wgslsmith_f_op_vec2_f32(func_2()).x, arg_2))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(250f)), arg_0.x, true)));
    let var_1 = Struct_2(0u, u_input.b.yz << (~_wgslsmith_mult_vec2_u32(max(vec2<u32>(1u, u_input.c), vec2<u32>(u_input.c, 1u)), vec2<u32>(u_input.c, 1u) >> (vec2<u32>(u_input.c, u_input.b.x) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(839f + -310f) * _wgslsmith_f_op_f32(select(-360f, arg_0.x, select(true, false, false)))), var_0.x, arg_2, _wgslsmith_f_op_f32(-arg_2))));
    return Struct_2(4294967295u, _wgslsmith_sub_vec2_u32(~u_input.b.yw, _wgslsmith_add_vec2_u32(~_wgslsmith_sub_vec2_u32(u_input.b.xz, vec2<u32>(var_1.a, 4294967295u)), abs(var_1.b))));
}

fn func_5(arg_0: u32, arg_1: Struct_2) -> Struct_2 {
    global0 = 981f;
    global0 = -392f;
    global0 = -122f;
    var var_0 = 906f;
    global0 = 1f;
    return arg_1;
}

fn func_1(arg_0: u32) -> vec4<bool> {
    var var_0 = func_5(115164u, func_4(_wgslsmith_f_op_vec2_f32(func_2()), vec4<i32>(_wgslsmith_sub_i32(1i, u_input.a.x & u_input.a.x), -56829i, _wgslsmith_dot_vec3_i32(u_input.a, u_input.a) & u_input.a.x, u_input.a.x), -371f, 1i));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1524f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-466f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-240f - 2232f), 1220f)), vec2<bool>(true, true))));
    let var_2 = _wgslsmith_mult_vec4_u32(u_input.b, countOneBits(vec4<u32>(_wgslsmith_mod_u32(14936u, 69404u) << (_wgslsmith_clamp_u32(0u, u_input.c, 1u) % 32u), countOneBits(u_input.d), abs(0u >> (u_input.d % 32u)), u_input.c ^ var_0.b.x)));
    var_0 = Struct_2(func_5(reverseBits(1u), func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, var_1.a.x)), vec4<i32>(u_input.a.x, -1i, -2147483647i, u_input.a.x) | vec4<i32>(u_input.a.x, -4356i, u_input.a.x, 11724i), _wgslsmith_f_op_f32(-var_1.a.x), 1i)).b.x << (~var_2.x % 32u), u_input.b.xz >> ((vec2<u32>(~u_input.c, 796u) | ~(~var_0.b)) % vec2<u32>(32u)));
    let var_3 = select(vec2<bool>(false, any(vec2<bool>(select(true, true, false), true))), vec2<bool>(false, any(vec4<bool>(true, true, true, true))), false);
    return !select(select(vec4<bool>(select(true, false, false), var_3.x, true, var_3.x | true), !vec4<bool>(var_3.x, false, false, true), all(select(vec3<bool>(true, true, true), vec3<bool>(var_3.x, true, true), var_3.x))), select(!vec4<bool>(true, var_3.x, false, var_3.x), !(!vec4<bool>(false, var_3.x, var_3.x, false)), false), vec4<bool>(any(vec4<bool>(var_3.x, true, var_3.x, false)) & false, var_3.x, !var_3.x, any(var_3)));
}

fn func_6(arg_0: vec4<bool>, arg_1: f32, arg_2: vec2<u32>, arg_3: f32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1223f, arg_1) - vec2<f32>(-446f, -215f))) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, arg_1))))));
    global0 = _wgslsmith_f_op_vec2_f32(func_2()).x;
    let var_1 = Struct_2(u_input.b.x, ~u_input.b.ww ^ abs(~u_input.b.xz));
    return _wgslsmith_f_op_vec2_f32(func_2()).x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-1402f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-754f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-949f * -1250f)))), _wgslsmith_f_op_f32(func_6(func_1(~u_input.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1061f), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, 1u), select(vec2<u32>(u_input.c, u_input.c), u_input.b.wy, true), u_input.b.xy << (vec2<u32>(u_input.c, 30208u) % vec2<u32>(32u))), _wgslsmith_f_op_f32(ceil(-1230f)))), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-235f - _wgslsmith_f_op_f32(1192f + 1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -1036f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -559f)))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-2695f * -154f), _wgslsmith_f_op_f32(abs(-2189f)), _wgslsmith_f_op_f32(step(445f, _wgslsmith_f_op_f32(1000f + -1099f))), _wgslsmith_f_op_f32(f32(-1f) * -1781f)))), _wgslsmith_sub_vec3_u32(abs(max(_wgslsmith_mult_vec3_u32(u_input.b.yww, vec3<u32>(u_input.d, 0u, 46989u)), vec3<u32>(0u, u_input.c, u_input.d))), (_wgslsmith_div_vec3_u32(u_input.b.wwy, vec3<u32>(56098u, u_input.b.x, u_input.c)) & select(vec3<u32>(u_input.d, u_input.d, 23875u), u_input.b.xxz, vec3<bool>(true, false, false))) ^ _wgslsmith_clamp_vec3_u32(firstLeadingBit(u_input.b.xyz), u_input.b.xwx, vec3<u32>(u_input.d, u_input.d, 1u))), ~31460u);
}

