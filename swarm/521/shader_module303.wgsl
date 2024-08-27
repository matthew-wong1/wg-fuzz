struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: bool, arg_3: vec3<i32>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.d), -654f)))));
    var var_1 = _wgslsmith_dot_vec3_i32(select(_wgslsmith_sub_vec3_i32(u_input.a, -arg_3), u_input.a, vec3<bool>(false | arg_0.b.x, !(arg_2 || arg_0.b.x), arg_2)), _wgslsmith_mod_vec3_i32(vec3<i32>(-_wgslsmith_mult_i32(u_input.a.x, arg_3.x), abs(arg_3.x) << (1u % 32u), _wgslsmith_clamp_i32(arg_3.x, arg_3.x, -2147483647i)), select(abs(u_input.a), vec3<i32>(arg_3.x, _wgslsmith_mod_i32(u_input.a.x, u_input.a.x), _wgslsmith_mod_i32(u_input.a.x, arg_3.x)), !(arg_0.a.x && arg_0.a.x))));
    var var_2 = Struct_2(firstTrailingBit(~arg_3));
    let var_3 = -_wgslsmith_div_vec4_i32(firstLeadingBit(firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 22514i, var_2.a.x, 0i), vec4<i32>(u_input.a.x, 41776i, -2147483647i, u_input.a.x)))), _wgslsmith_mod_vec4_i32(abs(-vec4<i32>(arg_3.x, arg_3.x, u_input.a.x, u_input.a.x)), vec4<i32>(2147483647i, select(-29333i, -2147483647i, true), 0i << (arg_1.c.x % 32u), _wgslsmith_dot_vec2_i32(arg_3.zy, vec2<i32>(u_input.a.x, 49315i)))));
    var_1 = countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(~abs(var_3.x), var_3.x | ~2147483647i), abs(u_input.a.zx)));
    return arg_1.c;
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = Struct_3(0i, u_input.a.yx);
    let var_1 = ~func_3(Struct_4(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(false, false, false))), vec3<bool>(true, true, true)), arg_0, !((arg_0.d != 269f) & (arg_0.d < -618f)), vec3<i32>(firstLeadingBit(9824i), -_wgslsmith_sub_i32(u_input.a.x, -2650i), var_0.b.x));
    return select(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), 1326f > arg_0.d), vec2<bool>(true, true), true), select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false)), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(false, false, false, false))), true)), select(vec2<bool>(true, true), vec2<bool>(true, true), !any(vec4<bool>(false, false, false, false))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_1, arg_3: bool) -> vec3<f32> {
    var var_0 = !any(select(arg_1.b.yz, !arg_1.b.yy, arg_1.b.xx));
    var var_1 = arg_0.a.x;
    let var_2 = !vec4<bool>(false, u_input.a.x >= u_input.a.x, (arg_2.d <= arg_2.d) & (0u >= arg_2.c.x), true);
    var_0 = any(select(func_2(arg_2), vec2<bool>(true, true), vec2<bool>(any(!arg_1.b), all(!var_2))));
    let var_3 = arg_0;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-3708f, _wgslsmith_f_op_f32(arg_2.d - -189f), -353f))), vec3<f32>(arg_2.d, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_2.a, arg_2.a))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.a, 451f) + _wgslsmith_div_f32(-370f, arg_2.a)))));
}

fn func_4(arg_0: i32, arg_1: vec3<f32>) -> Struct_4 {
    let var_0 = any(!select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)), true));
    let var_1 = Struct_3(2147483647i, u_input.a.zz);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x));
    var var_3 = 1u;
    var var_4 = vec4<i32>(max(arg_0, ~max(_wgslsmith_sub_i32(var_1.b.x, 0i), i32(-1i) * -1i)), _wgslsmith_dot_vec2_i32(~(-_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, -24097i), var_1.b, vec2<i32>(var_1.b.x, arg_0))), vec2<i32>(firstLeadingBit(~u_input.a.x), -(arg_0 ^ -18238i))), -2147483647i, 1i);
    return Struct_4(select(vec2<bool>(any(!vec4<bool>(false, false, var_0, var_0)), any(!vec4<bool>(false, true, var_0, false))), vec2<bool>(false, var_0), false), vec3<bool>(select(true, false, var_0), select(false, var_0, false) || any(select(vec4<bool>(true, var_0, true, true), vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(var_0, var_0, var_0, false))), select(true, any(vec3<bool>(false, var_0, var_0)) & true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(u_input.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -668f, 1000f) + vec3<f32>(1294f, 1687f, 1728f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(2181f, 723f, 469f) + vec3<f32>(-731f, 384f, 717f)))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_1(Struct_2(vec3<i32>(u_input.a.x, 2147483647i, 1i)), Struct_4(vec2<bool>(false, true), vec3<bool>(true, false, true)), Struct_1(643f, vec3<u32>(0u, 95083u, 0u), vec4<u32>(4294967295u, 0u, 0u, 4294967295u), -1450f), false)))))));
    var_0 = func_4(u_input.a.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1281f, -3085f, 701f), vec3<f32>(1620f, 1000f, -387f)), _wgslsmith_f_op_vec3_f32(func_1(Struct_2(u_input.a), Struct_4(var_0.b.yy, var_0.b), Struct_1(1577f, vec3<u32>(21299u, 21903u, 22837u), vec4<u32>(1704u, 52060u, 4294967295u, 0u), 965f), var_0.b.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(123f, -109f, -892f), vec3<f32>(1000f, -988f, -978f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(670f, 890f, 1067f) * vec3<f32>(-1592f, -409f, 484f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), !func_4(3578i | u_input.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(104f, 810f, -284f))).b)));
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(474f, -1059f, 1209f, 525f), vec4<f32>(-232f, 1000f, -1000f, -586f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(236f, -1000f, -1659f, -193f) * vec4<f32>(-511f, 433f, 707f, -561f)))) + vec4<f32>(1f, 1f, 1f, 1f))));
    let var_2 = !select(vec4<bool>(select(!var_0.a.x, true, var_0.a.x), func_4(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a.x, -2147483647i), u_input.a), _wgslsmith_f_op_vec3_f32(var_1.wxw * vec3<f32>(-1000f, var_1.x, var_1.x))).a.x, false, select(!var_0.b.x, any(vec3<bool>(var_0.b.x, var_0.a.x, true)), !var_0.a.x)), !(!vec4<bool>(false, var_0.b.x, true, true)), vec4<bool>(!func_2(Struct_1(var_1.x, vec3<u32>(0u, 641u, 0u), vec4<u32>(20411u, 1u, 34674u, 1u), -1353f)).x, select(any(var_0.b), false, all(var_0.a)), select(true, var_0.b.x == true, true), -470f >= _wgslsmith_f_op_f32(-var_1.x)));
    let var_3 = !var_0.a.x == (_wgslsmith_div_f32(268f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1439f * var_1.x) * _wgslsmith_f_op_f32(1271f * -1000f))) >= 427f);
    let var_4 = Struct_3(min(-u_input.a.x, -55503i), select(vec2<i32>(-2147483647i, min(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), 1i)), select(u_input.a.xz, u_input.a.yy, var_2.x), var_0.b.zx));
    var var_5 = Struct_2(-_wgslsmith_mult_vec3_i32(vec3<i32>(min(0i, u_input.a.x), ~(-20548i), i32(-1i) * -1247i), vec3<i32>(-1i, abs(-2282i), u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(select(1151f, -217f, !func_2(Struct_1(var_1.x, vec3<u32>(0u, 22428u, 0u), vec4<u32>(1u, 12298u, 4294967295u, 60730u), var_1.x)).x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-453f - -1221f) * _wgslsmith_f_op_f32(trunc(var_1.x))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(sign(var_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -329f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(var_1.x))))), -1696f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_1.x)))), var_1.x), firstLeadingBit((vec2<i32>(3005i, var_4.a) & _wgslsmith_clamp_vec2_i32(u_input.a.yx, vec2<i32>(var_5.a.x, var_4.a), vec2<i32>(var_5.a.x, 1i))) | min(var_4.b, firstLeadingBit(u_input.a.xy))));
}

