struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    var var_0 = u_input.d;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(807f, _wgslsmith_f_op_f32(select(-688f, -298f, true)), -907f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-697f, -1161f, -1348f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-282f, -139f, -1483f)), vec3<bool>(true, true, true))))), u_input.d, u_input.c, ~u_input.c.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-916f, -628f, -626f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1166f, -123f, -903f))), select(vec3<bool>(select(false, false, true), true, false), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)))));
    global0 = ~(min(~var_1.c, vec4<i32>(31623i, global0.x ^ -1i, -7893i, 1i)) & firstLeadingBit(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, u_input.a.x), var_1.c.xy), ~global0.x, global0.x, max(2147483647i, global0.x))));
    global0 = abs(var_1.c ^ var_1.c);
    var var_2 = global0.x;
    return -max(global0.x, -var_1.d);
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: vec4<bool>, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(140f, arg_0, -920f)), vec3<f32>(arg_0, 244f, arg_0))), u_input.d, -(~vec4<i32>(-65894i, u_input.c.x, -38961i, arg_1.x) ^ u_input.c), func_3(), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0))))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-144f, 1079f, 2459f), vec3<f32>(arg_0, arg_0, arg_0), false)))), ~u_input.d, u_input.c, u_input.c.x, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-685f, -568f, arg_0) * vec3<f32>(arg_0, -1000f, arg_0)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(168f, arg_0, -132f), vec3<f32>(-502f, arg_0, -372f), arg_2.x)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) + vec3<f32>(2029f, arg_0, arg_0))))))), Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1177f, arg_0, arg_0))))))), 9669u, min(~(vec4<i32>(-46582i, arg_1.x, 1i, 21454i) << (vec4<u32>(u_input.d, 1u, u_input.d, 20191u) % vec4<u32>(32u))), u_input.c), global0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -1012f, arg_0) - vec3<f32>(arg_0, arg_0, arg_0)))))), ~(~u_input.d));
    var var_1 = _wgslsmith_mult_i32(var_0.c.c.x, 0i);
    var_1 = 0i;
    var var_2 = func_3() & -global0.x;
    let var_3 = 1i;
    return var_0.a;
}

fn func_4(arg_0: Struct_2) -> vec2<u32> {
    return vec2<u32>(_wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_0.d, arg_0.a.b, 83307u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, u_input.b, 33734u), vec3<u32>(arg_0.a.b, 41715u, arg_0.b.b), vec3<u32>(arg_0.d, 1u, 0u))), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b, arg_0.a.b, arg_0.a.b), max(vec3<u32>(arg_0.c.b, arg_0.d, 11802u), vec3<u32>(arg_0.a.b, u_input.b, 32729u))) << (_wgslsmith_mult_vec3_u32(~vec3<u32>(46527u, arg_0.b.b, u_input.d), ~vec3<u32>(11918u, arg_0.b.b, 55537u)) % vec3<u32>(32u))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(44596u, 36345u, 29885u), ~vec3<u32>(arg_0.c.b, 1u, u_input.d))));
}

fn func_5(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, 846f, -813f), vec3<f32>(986f, -2414f, -365f)))))), arg_0.x, vec4<i32>(-firstLeadingBit(u_input.a.x), -global0.x << (u_input.d % 32u), countOneBits(_wgslsmith_add_i32(-2036i, global0.x)), 0i), 2147483647i, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(592f, 606f, -825f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-915f, 910f, -1196f)))))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1067f), _wgslsmith_f_op_f32(1244f * -2040f)))), -(u_input.c ^ abs(u_input.c)), vec4<bool>(true, func_2(1318f, vec4<i32>(u_input.a.x, u_input.a.x, -7094i, global0.x), vec4<bool>(false, true, false, false), vec3<bool>(false, false, true)).a.x <= -618f, all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), true), vec3<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false)), !(arg_0.x > 13910u), all(vec3<bool>(true, false, true)))), func_2(_wgslsmith_f_op_f32(select(-683f, 1046f, true)), countOneBits(~vec4<i32>(22546i, global0.x, 42167i, 0i)), !(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), max(~select(~30295u, ~arg_0.x, arg_0.x >= 14099u), _wgslsmith_div_u32(arg_0.x, min(_wgslsmith_div_u32(21453u, arg_0.x), u_input.d))));
    var var_1 = Struct_2(func_2(1000f, select(-u_input.c, vec4<i32>(abs(global0.x), _wgslsmith_sub_i32(-6150i, -15329i), u_input.a.x, min(global0.x, global0.x)), !(arg_0.x < var_0.a.b)), vec4<bool>(true, true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), func_2(1144f, ((vec4<i32>(0i, var_0.a.d, 2147483647i, -35185i) ^ u_input.c) << (vec4<u32>(4294967295u, 4294967295u, u_input.d, 0u) % vec4<u32>(32u))) << (~vec4<u32>(42662u, 1u, arg_0.x, 37150u) % vec4<u32>(32u)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), true)), func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a.e.x), _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.c.a.x, -1000f), 1f))), vec4<i32>(-32433i & (global0.x | global0.x), abs(var_0.c.c.x), var_0.a.d, reverseBits(u_input.c.x)), select(vec4<bool>(any(vec4<bool>(false, true, true, true)), false, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true))), vec3<bool>(true, true, true)), countOneBits(~arg_0.x));
    let var_2 = arg_0.x;
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.e.x + -339f) + func_2(-1000f, vec4<i32>(var_0.a.d, 1i, 9195i, 1i), vec4<bool>(false, false, false, true), vec3<bool>(true, false, true)).a.x), _wgslsmith_f_op_f32(step(var_0.a.a.x, -864f)))))));
    var_1 = Struct_2(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_div_f32(var_1.b.e.x, var_0.a.a.x))), var_1.a.c, vec4<bool>(true, true, true, any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true)))), !select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), select(false, false, false))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(300f, -830f, -1111f), var_1.a.a, any(vec4<bool>(true, true, false, false)))) * _wgslsmith_f_op_vec3_f32(var_0.c.a + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1006f, var_1.b.e.x, -2071f))))), _wgslsmith_mult_u32(1u, ~abs(var_2)), u_input.c >> (vec4<u32>(func_4(Struct_2(Struct_1(var_1.b.a, 1u, vec4<i32>(var_0.b.d, u_input.c.x, 0i, 34508i), var_1.b.c.x, var_0.c.a), var_0.b, Struct_1(var_1.a.e, arg_0.x, var_0.a.c, global0.x, var_1.b.e), u_input.b)).x, var_2, firstTrailingBit(var_0.a.b), var_0.d | var_2) % vec4<u32>(32u)), var_1.c.c.x, vec3<f32>(var_1.a.e.x, var_1.b.e.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(2134f, var_1.c.e.x) * -1754f))), var_1.b, 34279u);
    return var_0.b;
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: vec4<i32>, arg_3: u32) -> vec2<u32> {
    let var_0 = func_5(func_4(Struct_2(func_2(-513f, arg_2 ^ vec4<i32>(u_input.c.x, arg_1, -2147483647i, arg_1), vec4<bool>(arg_0.x, true, true, false), select(vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(false, false, arg_0.x), vec3<bool>(true, false, false))), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(460f, -357f, 2365f), vec3<f32>(262f, -1316f, 259f)), arg_3, -vec4<i32>(8591i, 44688i, 0i, 0i), _wgslsmith_mult_i32(45550i, arg_1), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2314f, 1192f, -796f) - vec3<f32>(1116f, 1000f, 1684f))), func_2(_wgslsmith_f_op_f32(f32(-1f) * -670f), countOneBits(arg_2), vec4<bool>(true, true, false, arg_0.x), !vec3<bool>(false, arg_0.x, arg_0.x)), min(arg_3, 0u))));
    global0 = max(_wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(min(_wgslsmith_div_i32(-2463i, global0.x), 1i), u_input.a.x, -var_0.d << (u_input.d % 32u), arg_1)), var_0.c);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e.x, var_0.e.x, 1888f) + var_0.e))), ~var_0.b, arg_2, -_wgslsmith_add_i32(24081i & var_0.c.x, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-1i, global0.x, 82314i)), -vec3<i32>(u_input.a.x, global0.x, -17003i))), var_0.e);
    global0 = func_5(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(4294967295u, u_input.d) & _wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.b, var_0.b), vec2<u32>(27497u, 2239u), vec2<u32>(var_0.b, var_1.b))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.b, 63341u), vec2<u32>(101322u, arg_3)))).c;
    global0 = ~func_5(vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.b, 39667u), vec3<u32>(16266u, 1u, var_1.b)), 10285u), 28222u)).c;
    return vec2<u32>(~firstTrailingBit((arg_3 >> (1u % 32u)) | var_1.b), var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(select(func_1(vec2<bool>(false, false), global0.x, u_input.c, u_input.b), firstLeadingBit(vec2<u32>(63596u, u_input.b)), vec2<bool>(true, true)), abs(vec2<u32>(4294967295u, u_input.b)) << (func_1(vec2<bool>(true, true), u_input.a.x, u_input.c, u_input.b) % vec2<u32>(32u))), _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.d), vec2<u32>(u_input.b, 0u)) << (~vec2<u32>(u_input.b, 29599u) % vec2<u32>(32u)), func_1(select(vec2<bool>(true, true), vec2<bool>(false, false), false), 1i, -u_input.c, 4294967295u))));
    global0 = vec4<i32>(_wgslsmith_sub_i32(2147483647i, 1i), 2147483647i, -1i ^ -u_input.c.x, func_5(vec2<u32>(var_0.x, func_5(vec2<u32>(1u, u_input.b)).b)).c.x) ^ u_input.c;
    let var_1 = !all(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true)) != !select(!any(vec4<bool>(false, false, true, false)), true, any(vec2<bool>(false, true)));
    global0 = vec4<i32>(-1i) * -vec4<i32>(~27064i, u_input.a.x, -2147483647i, _wgslsmith_mod_i32(u_input.c.x, u_input.c.x));
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(-global0.x, u_input.a.x, (func_2(-1546f, u_input.c, vec4<bool>(var_1, var_1, false, false), vec3<bool>(false, false, var_1)).d >> (~var_0.x % 32u)) ^ reverseBits(func_5(vec2<u32>(u_input.d, u_input.b)).d), u_input.c.x), vec4<i32>(-u_input.c.x, firstLeadingBit(u_input.c.x), select(-_wgslsmith_div_i32(5865i, global0.x), i32(-1i) * -global0.x, true), ~1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-876f, 114f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-729f, 2177f))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1807f, -1312f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(485f, 2329f))))));
}

