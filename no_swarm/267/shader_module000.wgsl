struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: bool,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>) -> f32 {
    var var_0 = Struct_5(!(!vec2<bool>(u_input.a != 54633u, true)));
    let var_1 = _wgslsmith_add_i32(5397i, -min(~(~u_input.e.x), u_input.e.x ^ ~u_input.e.x));
    var_0 = Struct_5(!select(var_0.a, select(var_0.a, var_0.a, true), vec2<bool>(var_0.a.x, true)));
    var var_2 = arg_0;
    let var_3 = Struct_3(Struct_2(var_1, ~(~(~u_input.e.x)), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, 0u, 0u), vec3<u32>(u_input.a, 4294967295u, 1u)), u_input.b), u_input.c.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -893f) - arg_1.x);
}

fn func_2() -> Struct_3 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1074f)) * -1098f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(1081f - 1194f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-233f, -411f, -1000f, -1531f))))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -248f), -1188f))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, 1010f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(var_0.x, -1745f)), _wgslsmith_f_op_f32(sign(var_0.x)), all(vec4<bool>(true, false, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1047f * var_0.x))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(912f))), _wgslsmith_f_op_f32(-1624f * _wgslsmith_f_op_f32(exp2(var_0.x))))))));
    let var_2 = Struct_3(Struct_2(u_input.e.x, firstLeadingBit(-u_input.e.x), _wgslsmith_add_u32(firstTrailingBit(~0u), 16357u)));
    var var_3 = Struct_4(~u_input.e.x, true);
    let var_4 = firstTrailingBit(select(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, var_2.a.c, var_2.a.c), ~u_input.b, firstLeadingBit(vec3<u32>(15258u, u_input.c.x, 8231u))), ~select(vec3<u32>(95385u, var_2.a.c, var_2.a.c), u_input.b, var_3.b)), max(44792u, ~1u), any(select(!vec3<bool>(var_3.b, var_3.b, var_3.b), vec3<bool>(false, false, false), all(vec3<bool>(true, var_3.b, var_3.b))))));
    return var_2;
}

fn func_4(arg_0: Struct_3) -> u32 {
    var var_0 = ~(-arg_0.a.a);
    var_0 = func_2().a.a;
    var_0 = u_input.e.x;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(-1404f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1253f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(853f, -296f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2898f)) - _wgslsmith_f_op_f32(min(-1000f, -1066f))) + _wgslsmith_f_op_f32(ceil(-514f))));
    var var_2 = Struct_2(-2147483647i, arg_0.a.b, _wgslsmith_dot_vec3_u32(~u_input.b, _wgslsmith_div_vec3_u32(u_input.b, _wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(17402u, 1u, u_input.a)))));
    return u_input.c.x & ~u_input.c.x;
}

fn func_5(arg_0: u32, arg_1: Struct_4, arg_2: vec2<u32>, arg_3: u32) -> f32 {
    var var_0 = ~(-select(vec4<i32>(u_input.e.x, arg_1.a ^ u_input.e.x, -arg_1.a, -3913i), reverseBits(max(vec4<i32>(u_input.e.x, 2147483647i, 1i, u_input.e.x), vec4<i32>(2147483647i, arg_1.a, arg_1.a, -687i))), vec4<bool>(arg_1.b, select(true, arg_1.b, false), false, true)));
    let var_1 = Struct_1(arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f - -660f)))) - -855f), select(any(select(vec4<bool>(true, arg_1.b, arg_1.b, false), vec4<bool>(true, false, arg_1.b, arg_1.b), arg_1.b)), false, false), arg_3 ^ arg_3, ~_wgslsmith_mult_u32(12097u, 0u));
    var_0 = max(select(vec4<i32>(-_wgslsmith_div_i32(-1i, -56141i), ~min(-1i, 2147483647i), var_1.a, 1i), -abs(vec4<i32>(var_0.x, -4010i, 35468i, arg_1.a)), any(select(select(vec2<bool>(arg_1.b, false), vec2<bool>(true, true), vec2<bool>(true, arg_1.b)), !vec2<bool>(var_1.c, arg_1.b), !arg_1.b))), vec4<i32>(-1i) * -countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.a, -1i, -2147483647i, arg_1.a), vec4<i32>(u_input.e.x, var_0.x, 1i, var_0.x))));
    let var_2 = Struct_1(func_2().a.a, _wgslsmith_f_op_f32(max(var_1.b, var_1.b)), var_1.c && !(!arg_1.b), var_1.e, select(var_1.d, reverseBits(_wgslsmith_clamp_u32(min(arg_2.x, arg_3), ~var_1.d, var_1.e)), any(!vec3<bool>(true, true, arg_1.b))));
    let var_3 = all(select(vec4<bool>((var_2.a & 0i) > ~var_1.a, all(vec4<bool>(false, arg_1.b, var_1.c, arg_1.b)), (var_1.b <= var_2.b) && true, true), vec4<bool>(all(vec2<bool>(arg_1.b, arg_1.b)) & true, !(0u <= var_2.d), false, arg_1.b), vec4<bool>(any(vec4<bool>(arg_1.b, var_1.c, false, true)), var_2.c, !var_1.c, true)));
    return _wgslsmith_f_op_f32(-var_1.b);
}

fn func_6(arg_0: f32, arg_1: i32) -> Struct_5 {
    let var_0 = arg_0;
    return Struct_5(vec2<bool>(true, all(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true)))));
}

fn func_1(arg_0: vec4<f32>) -> i32 {
    let var_0 = Struct_1(u_input.e.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1883f)))))), false, 0u, 53604u);
    let var_1 = -abs(_wgslsmith_mod_i32(abs(u_input.e.x), u_input.e.x));
    let var_2 = var_1;
    var var_3 = func_6(_wgslsmith_f_op_f32(func_5(func_4(func_2()) & ~firstLeadingBit(u_input.b.x), Struct_4(_wgslsmith_clamp_i32(73609i, 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-24630i, -35417i, -2147483647i, 1i), vec4<i32>(20859i, var_0.a, var_1, var_1))), _wgslsmith_f_op_f32(var_0.b * var_0.b) >= var_0.b), vec2<u32>(34901u, 1u) << ((_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, u_input.b.x), u_input.c) << (min(u_input.c, vec2<u32>(1u, 4294967295u)) % vec2<u32>(32u))) % vec2<u32>(32u)), u_input.b.x)), ~(~_wgslsmith_clamp_i32(var_2, ~11239i, var_0.a ^ var_1)));
    let var_4 = abs(vec2<u32>(~(~4294967295u ^ min(var_0.d, var_0.e)), 1u));
    return u_input.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -19524i | func_1(vec4<f32>(_wgslsmith_div_f32(847f, -1000f), 113f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-329f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-246f * 1257f), _wgslsmith_f_op_f32(-1307f + -399f))));
    var var_1 = !select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false)), vec4<bool>(false, true, true, true), select(vec4<bool>(true, -2072i < var_0, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false))));
    let var_2 = all(!var_1.zyz);
    var_1 = vec4<bool>(!func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1309f)) * 3059f), -u_input.e.x).a.x, var_2, any(vec4<bool>(select(true, all(vec4<bool>(var_1.x, false, var_2, true)), var_1.x && var_2), (u_input.c.x | 0u) < u_input.c.x, var_2, any(!var_1.yzz))), 69664i <= (var_0 >> ((select(11112u, 8176u, false) | u_input.c.x) % 32u)));
    let var_3 = -1086f;
    var var_4 = -93843i;
    let var_5 = vec2<i32>(-1i, -firstTrailingBit(var_0));
    let var_6 = -20836i;
    var var_7 = false && (!(!(u_input.c.x == 0u)) && all(select(!var_1.xxw, !var_1.wxy, vec3<bool>(false, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_3, 1859f, var_1.x))))))), var_5.x);
}

