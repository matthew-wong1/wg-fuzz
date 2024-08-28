struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: i32,
    d: f32,
    e: vec2<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: vec4<u32>) -> bool {
    let var_0 = _wgslsmith_mod_u32(arg_2.x, ~abs(23070u));
    var var_1 = select(vec3<bool>(arg_1.x, all(select(!vec4<bool>(arg_1.x, false, true, false), select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, false, false, arg_1.x), true), true)), true), vec3<bool>(true, any(vec2<bool>(all(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), !arg_1.x)), true), !arg_1.x);
    var_1 = vec3<bool>(false, true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(294f, -160f)), _wgslsmith_f_op_f32(max(1525f, 312f)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1620f, -773f, false)))));
    var var_2 = Struct_2(Struct_1(!select(select(vec4<bool>(false, true, var_1.x, false), vec4<bool>(false, arg_1.x, true, true), var_1.x), !vec4<bool>(false, true, true, var_1.x), select(vec4<bool>(arg_1.x, false, arg_1.x, true), vec4<bool>(false, true, var_1.x, true), var_1.x))), Struct_1(vec4<bool>(true, !var_1.x || var_1.x, select(!arg_1.x, arg_1.x, true), (var_0 <= arg_2.x) == true)), Struct_1(select(vec4<bool>(arg_1.x, !arg_1.x, false, true && arg_1.x), vec4<bool>(arg_2.x >= 4294967295u, var_1.x, arg_1.x, true), (var_0 << (0u % 32u)) < _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, 65966u, var_0, arg_2.x), arg_2))), Struct_1(select(vec4<bool>(u_input.a <= u_input.a, true, false, true), !vec4<bool>(true, var_1.x, false, arg_1.x), !select(vec4<bool>(true, true, arg_1.x, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)))));
    var var_3 = Struct_1(!(!var_2.c.a));
    return false;
}

fn func_2(arg_0: vec4<f32>) -> Struct_3 {
    let var_0 = 62873u;
    var var_1 = Struct_2(Struct_1(vec4<bool>(func_3(u_input.a, vec2<bool>(true, true), vec4<u32>(36288u, 1u, 5454u, var_0)) & true, true | (-2147483647i != u_input.a), true, true)), Struct_1(vec4<bool>(!any(vec4<bool>(true, true, true, false)), true, select(false, any(vec4<bool>(false, false, true, false)), true), false)), Struct_1(vec4<bool>(true, false, false, func_3(firstLeadingBit(-12225i), vec2<bool>(true, true), ~vec4<u32>(23474u, var_0, var_0, var_0)))), Struct_1(!vec4<bool>(true, any(vec3<bool>(false, false, false)), true, any(vec2<bool>(true, false)))));
    let var_2 = Struct_2(var_1.a, var_1.b, Struct_1(var_1.d.a), var_1.c);
    let var_3 = vec4<bool>(true, true, !var_1.c.a.x, (var_2.a.a.x && !(!var_1.a.a.x)) | (var_2.c.a.x && any(!var_1.d.a)));
    var var_4 = !((var_2.a.a.x & (true | all(var_3.ww))) && var_1.b.a.x);
    return Struct_3(var_2, -24540i, 2147483647i, arg_0.x, -vec2<i32>(max(1i, u_input.a) << (var_0 % 32u), ~(~(-54534i))));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_1, arg_3: i32) -> f32 {
    var var_0 = firstLeadingBit(-vec4<i32>(_wgslsmith_sub_i32(33977i, 1i), firstTrailingBit(-43195i), arg_1.c, u_input.a | -45848i) >> (vec4<u32>(1u, 1u, firstLeadingBit(_wgslsmith_clamp_u32(0u, 4294967295u, 61270u)), _wgslsmith_sub_u32(countOneBits(0u), ~4294967295u)) % vec4<u32>(32u)));
    var_0 = vec4<i32>(_wgslsmith_mult_i32(u_input.a, abs(u_input.a)), abs(1i), u_input.a, 2147483647i);
    var_0 = vec4<i32>(_wgslsmith_dot_vec2_i32(~arg_1.e, arg_1.e), -15822i, countOneBits(~(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -48912i, var_0.x), vec3<i32>(u_input.a, var_0.x, 0i)) >> (1u % 32u))), countOneBits(var_0.x));
    let var_1 = func_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))), arg_1.d, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(max(106f, arg_1.d))));
    var_0 = ~vec4<i32>(2147483647i, -18405i, var_0.x, ~15206i);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.d), arg_0, arg_1.a.b.a.x))))), -108f));
}

fn func_1() -> Struct_2 {
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(f32(-1f) * -883f), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(489f, 589f, -381f, 572f)))), func_2(vec4<f32>(440f, _wgslsmith_f_op_f32(min(845f, -1273f)), -691f, _wgslsmith_f_op_f32(768f + -678f))).a.a, firstLeadingBit(max(~(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 11358i, 22030i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, -82610i)))))));
    let var_2 = func_2(vec4<f32>(-235f, 494f, -518f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -920f))))));
    var var_3 = Struct_4(select(func_2(vec4<f32>(var_2.d, _wgslsmith_f_op_f32(var_2.d * 711f), var_2.d, _wgslsmith_f_op_f32(min(var_2.d, -201f)))).a.a.a.wz, var_2.a.b.a.xw, false));
    var_3 = Struct_4(!func_2(vec4<f32>(var_2.d, _wgslsmith_f_op_f32(1840f - var_2.d), _wgslsmith_f_op_f32(abs(var_2.d)), -197f)).a.c.a.xz);
    return func_2(vec4<f32>(_wgslsmith_f_op_f32(-var_2.d), var_2.d, -262f, _wgslsmith_f_op_f32(-956f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.d)) - var_2.d)))).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1828f, 143f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1519f, 2023f)), 146f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-923f - 846f) + _wgslsmith_f_op_f32(f32(-1f) * -528f)))));
    var var_2 = Struct_4(!select(!(!var_0.c.a.zw), vec2<bool>(var_0.b.a.x || false, var_1 < var_1), func_2(_wgslsmith_div_vec4_f32(vec4<f32>(-734f, var_1, -144f, var_1), vec4<f32>(-236f, 719f, var_1, var_1))).a.d.a.x));
    var var_3 = 54682i;
    var var_4 = Struct_4(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-377f, _wgslsmith_f_op_f32(-var_1), var_1, -288f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 896f, var_1, -1119f) - vec4<f32>(1246f, -1967f, 1279f, 1000f)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, 1225f, var_1, var_1)))))).a.b.a.yz);
    var var_5 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(51881i, _wgslsmith_clamp_vec4_u32(vec4<u32>(~firstLeadingBit(0u), countOneBits(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(65971u, 0u, 31616u, 1u), vec4<u32>(23438u, 50317u, 37908u, 4294967295u)), 4294967295u), firstLeadingBit(vec4<u32>(1u, 18125u, _wgslsmith_clamp_u32(4294967295u, 4294967295u, 36325u), _wgslsmith_dot_vec3_u32(vec3<u32>(107029u, 4294967295u, 75416u), vec3<u32>(24072u, 4294967295u, 1u)))), reverseBits(_wgslsmith_div_vec4_u32(abs(vec4<u32>(21365u, 4294967295u, 1u, 26270u)), vec4<u32>(1u, 1u, 1u, 1u)))), ~(~21712u));
}

