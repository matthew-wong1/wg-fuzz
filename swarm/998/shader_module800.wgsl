struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32) -> bool {
    let var_0 = Struct_1(_wgslsmith_mod_u32(~_wgslsmith_sub_u32(~25438u, 113334u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(20614u, 1u, u_input.b, u_input.b), vec4<u32>(4294967295u, 9492u, arg_1, u_input.b)) ^ ~14167u));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-144f, _wgslsmith_f_op_f32(step(102f, _wgslsmith_f_op_f32(1215f - 802f)))))), 1412f));
    var var_2 = _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(~(~vec4<i32>(23736i, 2147483647i, arg_0.x, -21823i) << (u_input.a % vec4<u32>(32u))), vec4<i32>(-arg_0.x | arg_0.x, _wgslsmith_clamp_i32(arg_0.x & -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(65210i, -6069i, arg_0.x, -629i), vec4<i32>(27536i, arg_0.x, -2147483647i, -12596i)), -1i), ~arg_0.x, _wgslsmith_dot_vec2_i32(arg_0.zy, vec2<i32>(-1i, arg_0.x)))), vec4<i32>(_wgslsmith_sub_i32(reverseBits(39543i), -_wgslsmith_add_i32(24699i, 0i)), 2147483647i, arg_0.x, arg_0.x));
    var var_3 = Struct_1(32885u);
    var var_4 = var_0;
    return any(!vec2<bool>(all(vec3<bool>(true, true, true)), true));
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<i32>(1i, firstTrailingBit(56011i), 59209i);
    var var_1 = vec2<f32>(_wgslsmith_div_f32(889f, -179f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(463f)))));
    var var_2 = select(select(vec4<bool>(true, func_3(vec3<i32>(2147483647i, -3637i, 9312i) & var_0, _wgslsmith_mod_u32(1u, 4294967295u)), any(vec2<bool>(true, true)), false), vec4<bool>(false, any(vec3<bool>(false, false, false)), false, all(vec2<bool>(true, true))), vec4<bool>(any(vec3<bool>(false, false, true)) | (var_1.x >= -1300f), -375f <= _wgslsmith_f_op_f32(trunc(var_1.x)), any(vec3<bool>(true, true, true)), !func_3(vec3<i32>(15097i, -1i, var_0.x), u_input.b))), !(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false)))), true);
    var_2 = !vec4<bool>(select(var_2.x, (var_2.x & false) == (var_0.x > var_0.x), all(var_2.xy)), 0u < u_input.b, false, all(vec3<bool>(any(vec2<bool>(false, false)), false, var_2.x)));
    var var_3 = false;
    return Struct_1(u_input.a.x);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = func_2();
    var_0 = Struct_1(13900u);
    var_0 = Struct_1(116237u);
    let var_1 = false;
    var var_2 = select(select(vec4<bool>(func_3(-vec3<i32>(8607i, -2147483647i, -1i), 82927u), var_1 && var_1, !all(vec2<bool>(var_1, var_1)), all(!vec4<bool>(var_1, false, var_1, false))), select(!vec4<bool>(var_1, var_1, false, true), !(!vec4<bool>(var_1, true, var_1, var_1)), vec4<bool>(false, false, var_1, var_1)), all(vec3<bool>(false, all(vec2<bool>(var_1, true)), true))), !vec4<bool>(all(vec2<bool>(true, true)), !any(vec4<bool>(true, var_1, var_1, true)), true, all(!vec3<bool>(true, var_1, false))), vec4<bool>((~var_0.a << (arg_1.a % 32u)) > 4294967295u, var_1, !(!func_3(vec3<i32>(-10980i, -14135i, 46225i), u_input.a.x)), !(!var_1) | (_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -69882i, -10082i), vec3<i32>(6286i, 10367i, 1i)) >= 30692i)));
    return var_1;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-566f, _wgslsmith_f_op_f32(586f * -158f)));
    var var_1 = func_2();
    let var_2 = func_2();
    var_1 = Struct_1(select(func_2().a, func_2().a, false));
    var var_3 = 1i;
    return Struct_1(arg_0.x ^ arg_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1750f, _wgslsmith_f_op_f32(f32(-1f) * -1635f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(768f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -450f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2789f * 160f) + _wgslsmith_f_op_f32(1638f - -407f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(-1359f - -1483f), _wgslsmith_f_op_f32(step(-2227f, -1220f)), _wgslsmith_f_op_f32(2009f * 199f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1576f, -2606f, -189f, 223f)))), all(vec3<bool>(false, true, true)) & true))));
    let var_1 = _wgslsmith_sub_vec4_u32(~u_input.a, reverseBits(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.b, 25676u))) >> (u_input.a % vec4<u32>(32u));
    let var_2 = func_4(min(min(_wgslsmith_add_vec4_u32(~vec4<u32>(var_1.x, var_1.x, u_input.b, 1u), var_1), ~_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(1u, 1u, 1u, 73726u))), _wgslsmith_mult_vec4_u32(select(var_1, vec4<u32>(u_input.b, 1u, var_1.x, var_1.x), true), vec4<u32>(~var_1.x, _wgslsmith_mult_u32(var_1.x, 4294967295u), firstLeadingBit(var_1.x), 4294967295u))), !(!vec2<bool>(func_1(1000f, Struct_1(u_input.b), Struct_1(0u), Struct_1(var_1.x)), true)), Struct_1(~_wgslsmith_dot_vec3_u32(abs(var_1.yxw), var_1.xzy | vec3<u32>(1u, u_input.a.x, var_1.x))));
    let var_3 = func_4(var_1, !(!vec2<bool>(select(false, false, false), any(vec4<bool>(true, true, true, true)))), Struct_1(1u));
    var var_4 = !(!select(any(vec3<bool>(true, true, false)), all(vec4<bool>(true, false, true, true)), false));
    let var_5 = -33892i;
    var var_6 = func_4(select(~select(var_1, vec4<u32>(52890u, var_3.a, u_input.b, 1u), true), reverseBits(~u_input.a ^ var_1), true), vec2<bool>(true, true), Struct_1(~3018u));
    let var_7 = func_2();
    var_6 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(1065f, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, var_0.x))), var_7.a, -28273i, -29959i);
}

