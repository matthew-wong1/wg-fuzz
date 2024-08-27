struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: i32,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: vec3<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(trunc(arg_2))));
    let var_1 = !(!(!vec3<bool>(false, arg_1, arg_1)));
    return -1000f;
}

fn func_2(arg_0: vec4<bool>, arg_1: bool) -> vec3<bool> {
    let var_0 = 1u;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1310f), _wgslsmith_f_op_f32(func_3(Struct_1(-112f, var_0), all(vec4<bool>(arg_1, arg_0.x, arg_1, arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -172f), ~vec3<u32>(35633u, var_0, var_0))), 285f))) - vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-338f + -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1019f - 3413f), -174f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(192f, 277f) * _wgslsmith_f_op_f32(round(-1325f))))));
    var var_2 = !arg_0.wzy;
    let var_3 = Struct_4(var_1.x);
    let var_4 = _wgslsmith_dot_vec4_u32(~vec4<u32>(~75940u, ~(~var_0), ~4294967295u, var_0), ~(~vec4<u32>(0u, var_0, 4294967295u, 4294967295u)) >> (_wgslsmith_add_vec4_u32(~(vec4<u32>(var_0, var_0, 4914u, 907u) ^ vec4<u32>(8885u, 4294967295u, 8826u, 2735u)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0, 62491u, 0u, 83795u) << (vec4<u32>(4294967295u, var_0, var_0, var_0) % vec4<u32>(32u)), vec4<u32>(var_0, 54705u, var_0, var_0) >> (vec4<u32>(var_0, 4294967295u, var_0, var_0) % vec4<u32>(32u)))) % vec4<u32>(32u)));
    return !(!(!select(select(arg_0.yzy, vec3<bool>(true, true, var_2.x), vec3<bool>(true, arg_1, false)), select(vec3<bool>(true, arg_0.x, false), vec3<bool>(var_2.x, false, true), vec3<bool>(arg_1, arg_1, arg_0.x)), arg_0.wzw)));
}

fn func_1() -> vec3<i32> {
    var var_0 = !(!any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false), false)));
    let var_1 = Struct_3(select(select(func_2(vec4<bool>(true, true, true, true), true), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), func_2(vec4<bool>(false, true, false, false), false)), !func_2(vec4<bool>(false, true, false, true), true)), vec3<bool>(true, true, true), all(vec4<bool>(true, true, true, true))), vec3<i32>(-7846i, u_input.a, u_input.a), !vec3<bool>(any(vec4<bool>(false, true, false, false)), func_2(vec4<bool>(true, true, true, true), any(vec4<bool>(true, false, true, false))).x, !func_2(vec4<bool>(true, true, false, false), true).x));
    var_0 = var_1.b.x <= abs(reverseBits(u_input.a));
    let var_2 = ~19394u;
    return -(~reverseBits(firstTrailingBit(_wgslsmith_div_vec3_i32(var_1.b, var_1.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(vec4<i32>(6241i, 1i, -23894i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 20179i, u_input.a, -2147483647i), vec4<i32>(u_input.a, u_input.a, -13533i, 19435i)), select(9292i, u_input.a, false))) ^ reverseBits(-vec4<i32>(-14810i, 1i, -18254i, 9258i) | -vec4<i32>(-5174i, u_input.a, u_input.a, -16311i)));
    var var_1 = var_0;
    let var_2 = select(~(func_1() << (abs(countOneBits(vec3<u32>(4294967295u, 0u, 97672u))) % vec3<u32>(32u))), ~(-var_1.zyz), true);
    var_1 = -_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(2147483647i, var_0.x, var_0.x, u_input.a)), -var_0 & var_0) >> (vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(~1u, reverseBits(89941u)), vec2<u32>(4294967295u, 4294967295u)), 8112u, _wgslsmith_mod_u32(firstTrailingBit(min(3566u, 1u)), 1811u)) % vec4<u32>(32u));
    var var_3 = Struct_5(!select(func_2(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true)), true).yz, vec2<bool>(true, false), vec2<bool>(true, true)), vec3<bool>(!(1i < ~var_0.x), select(any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true))), true, true), true), u_input.a, -6905i, _wgslsmith_mod_u32(select(_wgslsmith_mod_u32(~1u, 1u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(8525u, 27305u)), _wgslsmith_f_op_f32(-728f - -116f) <= _wgslsmith_f_op_f32(ceil(1144f))), 1u));
    var var_4 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -580f) + _wgslsmith_f_op_f32(ceil(1333f))), -388f, 1267f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1256f * -285f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1041f) - _wgslsmith_f_op_f32(-351f - -333f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-429f, 535f, -561f, -822f), vec4<f32>(-1059f, 1093f, 180f, 544f), false))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(232f, -1575f, 1160f, 815f) - vec4<f32>(-2158f, 455f, 809f, -138f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d << (_wgslsmith_sub_u32(firstLeadingBit(select(61461u, 47192u, true)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.e, var_3.e, 0u), ~vec3<u32>(var_3.e, var_3.e, 0u))) % 32u), var_0.x, vec3<i32>(reverseBits(_wgslsmith_div_i32(func_1().x, _wgslsmith_mult_i32(var_3.c, 0i))), var_3.c, -_wgslsmith_div_i32(countOneBits(-43727i), var_3.d)));
}

