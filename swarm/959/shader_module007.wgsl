struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: f32,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 15345u, 73834u, 0u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    global0 = vec4<u32>(108309u, select(122328u, 102633u, all(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true), any(vec4<bool>(true, true, false, false))))), _wgslsmith_dot_vec4_u32(select(~vec4<u32>(global0.x, 0u, 0u, 40210u) << (~vec4<u32>(107332u, global0.x, 1u, global0.x) % vec4<u32>(32u)), ~vec4<u32>(global0.x, 1u, 4294967295u, u_input.a.x) | (vec4<u32>(u_input.a.x, 11280u, global0.x, 21371u) << (vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, global0.x) % vec4<u32>(32u))), !(-2117f >= arg_0.x)), ~(~vec4<u32>(4294967295u, 4294967295u, global0.x, 4294967295u))), global0.x);
    global0 = _wgslsmith_clamp_vec4_u32(~_wgslsmith_div_vec4_u32(min(vec4<u32>(u_input.a.x, 46860u, 0u, global0.x), vec4<u32>(global0.x, u_input.a.x, global0.x, 53263u)) ^ ~vec4<u32>(u_input.a.x, 80588u, global0.x, global0.x), vec4<u32>(~17689u, 0u, 1u, firstLeadingBit(u_input.a.x))), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, u_input.a.x << (7618u % 32u), ~u_input.a.x, firstLeadingBit(u_input.a.x)), vec4<u32>(~global0.x, countOneBits(global0.x), 0u, 0u), abs(select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(global0.x, 27079u, 0u, u_input.a.x), false))), vec4<u32>(1u << (abs(global0.x) % 32u), global0.x, _wgslsmith_mult_u32(firstLeadingBit(u_input.a.x), ~12951u), ~36749u)), _wgslsmith_sub_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(43044u, global0.x, 0u, global0.x), vec4<u32>(global0.x, 8878u, u_input.a.x, u_input.a.x), vec4<u32>(global0.x, 33954u, 3220u, global0.x)), _wgslsmith_div_vec4_u32(vec4<u32>(global0.x, 1u, u_input.a.x, 0u), ~vec4<u32>(0u, 1974u, 1u, 1u))) >> (_wgslsmith_div_vec4_u32(vec4<u32>(~0u, global0.x & global0.x, ~global0.x, _wgslsmith_div_u32(global0.x, global0.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(27932u, u_input.a.x, u_input.a.x, global0.x), vec4<u32>(11812u, 4294967295u, 1u, global0.x)) << (vec4<u32>(u_input.a.x, global0.x, global0.x, u_input.a.x) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_0 = _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-40192i, _wgslsmith_add_i32(28041i, -55111i)), -(~vec2<i32>(1i, -11949i))), vec2<i32>(firstTrailingBit(19181i), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-9365i, -1873i), vec2<i32>(18842i, 1i)), firstLeadingBit(vec2<i32>(1i, 2147483647i))))) << (select(u_input.a.xx, u_input.a.xx, vec2<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, false), true)), true)) % vec2<u32>(32u));
    let var_1 = Struct_2(vec4<u32>(~_wgslsmith_add_u32(global0.x, u_input.a.x) & firstTrailingBit(u_input.a.x), 111512u, reverseBits(~(u_input.a.x & 1u)), ~global0.x), firstLeadingBit(global0.xw), _wgslsmith_f_op_f32(f32(-1f) * -784f), !(true | ((global0.x << (u_input.a.x % 32u)) < global0.x)), true);
    var_0 = select(select(vec2<i32>(var_0.x | _wgslsmith_mod_i32(28917i, -2147483647i), reverseBits(0i)), vec2<i32>(_wgslsmith_sub_i32(var_0.x, i32(-1i) * -11914i), -_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -7754i, -1i, -35453i), vec4<i32>(2993i, -44424i, var_0.x, -23371i))), var_1.d), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(~1i, var_0.x, -var_0.x, ~var_0.x), max(reverseBits(vec4<i32>(var_0.x, -1i, var_0.x, -1i)), -vec4<i32>(var_0.x, var_0.x, var_0.x, 2924i))), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, var_0.x), vec2<i32>(-34648i, 0i)), vec2<i32>(-16533i, var_0.x)), var_0.x)), !vec2<bool>(all(!vec3<bool>(false, false, var_1.d)), all(select(vec4<bool>(false, var_1.d, var_1.d, true), vec4<bool>(false, var_1.e, var_1.d, true), vec4<bool>(true, var_1.d, false, var_1.e)))));
    return 1u;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<f32>) -> f32 {
    global0 = ~(~firstTrailingBit(vec4<u32>(global0.x | 5180u, func_3(arg_0), 19126u << (global0.x % 32u), u_input.a.x)));
    var var_0 = _wgslsmith_sub_i32(abs(~_wgslsmith_div_i32(~1i, 1i)), 1i);
    let var_1 = vec4<i32>(-max(31347i >> (u_input.a.x % 32u), -18633i), -(~1i), -1i, ~(-46321i)) >> (vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.x, 1u, 0u, 87827u), vec4<u32>(u_input.a.x, u_input.a.x, global0.x, 0u) << (vec4<u32>(global0.x, u_input.a.x, u_input.a.x, global0.x) % vec4<u32>(32u))) & _wgslsmith_div_u32(u_input.a.x << (0u % 32u), 38498u), ~u_input.a.x, global0.x, u_input.a.x) % vec4<u32>(32u));
    let var_2 = select(firstLeadingBit(global0.yw), vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, firstLeadingBit(global0.x)), 0u), vec2<bool>(all(vec4<bool>(false, false, true, false)) != false, select(arg_0.x >= 2804f, all(vec3<bool>(false, false, true)), true))) << (vec2<u32>(_wgslsmith_dot_vec4_u32(min(vec4<u32>(0u, global0.x, global0.x, 26043u), vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, 1u)) ^ ~vec4<u32>(52986u, u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_mod_vec4_u32(~vec4<u32>(global0.x, 41332u, u_input.a.x, 71532u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, global0.x), vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x)))), global0.x) % vec2<u32>(32u));
    var var_3 = !(!(any(vec3<bool>(false, false, true)) && false) == all(vec3<bool>(4294967295u > var_2.x, true, all(vec4<bool>(true, false, false, false)))));
    return 948f;
}

fn func_1(arg_0: bool, arg_1: vec2<bool>, arg_2: vec3<f32>, arg_3: vec3<f32>) -> f32 {
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2303f * _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-726f, -1000f, arg_2.x, 291f) + vec4<f32>(arg_2.x, 1503f, arg_3.x, arg_3.x)), vec4<f32>(-479f, 510f, -3099f, -658f))), vec2<f32>(704f, arg_2.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(683f * _wgslsmith_f_op_f32(func_1(true, select(vec2<bool>(false, true), vec2<bool>(false, true), true), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-835f, -662f, 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1194f, -596f, 884f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-108f, -1081f, 208f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(all(vec2<bool>(true, false)), vec2<bool>(false, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1397f, 1877f, -1520f) + vec3<f32>(1000f, -1000f, 233f)), _wgslsmith_div_vec3_f32(vec3<f32>(955f, -1000f, 1353f), vec3<f32>(487f, 1516f, 1000f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(true, select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-422f, -1296f, -1000f)), vec3<f32>(804f, -1874f, -1000f))) * _wgslsmith_f_op_f32(max(-576f, _wgslsmith_f_op_f32(round(-748f))))))));
    let var_1 = Struct_2(abs(vec4<u32>(select(u_input.a.x, 8610u, true) >> (select(global0.x, u_input.a.x, true) % 32u), ~58571u, 4294967295u, func_3(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1693f, var_0, 1570f, var_0)))))), vec2<u32>(~(~firstTrailingBit(global0.x)), global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1632f, var_0)))) * var_0)), all(vec3<bool>(true, true, true)), all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true))), vec3<bool>(all(vec4<bool>(true, true, false, true)), true, true), false)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_1.c, var_1.c)), _wgslsmith_f_op_f32(step(1165f, -1000f))), var_0)) - _wgslsmith_f_op_f32(-var_0));
    var var_3 = !vec4<bool>(select(var_1.e, any(select(vec4<bool>(true, var_1.e, var_1.e, var_1.d), vec4<bool>(var_1.e, var_1.d, false, var_1.d), vec4<bool>(true, var_1.e, true, false))), false | (var_2 == var_0)), !all(select(vec2<bool>(var_1.e, var_1.e), vec2<bool>(var_1.e, true), vec2<bool>(var_1.e, var_1.e))), var_1.e, !var_1.e);
    global0 = var_1.a;
    let var_4 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1034f, _wgslsmith_f_op_f32(ceil(1000f)), false)) - var_0), _wgslsmith_f_op_f32(select(1535f, -376f, true)));
}

