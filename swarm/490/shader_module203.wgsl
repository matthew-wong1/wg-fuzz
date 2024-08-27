struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_2) -> vec4<i32> {
    global0 = abs(~vec2<i32>(global0.x, global0.x));
    global0 = -(vec2<i32>(2147483647i, -6495i) << (u_input.a % vec2<u32>(32u)));
    global0 = ~((vec2<i32>(-1i) * -vec2<i32>(-2147483647i, arg_0.c.a)) >> (countOneBits(~arg_0.c.c.yx) % vec2<u32>(32u)));
    return countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, -16421i, global0.x, ~select(-2147483647i, arg_0.c.a, false)), firstTrailingBit(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, 36016i, 1i, global0.x), vec4<i32>(-28185i, arg_0.c.a, -25643i, arg_0.c.b), vec4<i32>(2147483647i, arg_0.c.a, global0.x, arg_0.c.b)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 3250i, global0.x, 1i), vec4<i32>(2147483647i, -62222i, global0.x, 2147483647i), vec4<i32>(global0.x, global0.x, 25596i, global0.x))))));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: vec3<f32>) -> vec2<f32> {
    var var_0 = vec2<bool>(arg_2.c != true, all(vec2<bool>(!all(arg_2.a.xz), (1i >> (arg_1.x % 32u)) > -2147483647i)));
    global0 = reverseBits(select(abs(countOneBits(min(vec2<i32>(global0.x, -1i), vec2<i32>(0i, global0.x)))), ~vec2<i32>(arg_0.a.x, 75096i) << (_wgslsmith_sub_vec2_u32(abs(vec2<u32>(u_input.a.x, u_input.a.x)), firstTrailingBit(vec2<u32>(u_input.a.x, 52366u))) % vec2<u32>(32u)), any(select(select(vec4<bool>(true, var_0.x, arg_2.c, true), arg_2.a, vec4<bool>(var_0.x, var_0.x, var_0.x, arg_2.c)), select(arg_2.a, arg_2.a, var_0.x), arg_2.a.x))));
    var var_1 = Struct_1(arg_0.a.x, min(_wgslsmith_mod_i32(max(1i, global0.x), -reverseBits(global0.x)), 1i), arg_1.yxz);
    let var_2 = 330f;
    let var_3 = Struct_4(arg_0.a);
    return arg_3.yy;
}

fn func_2() -> i32 {
    global0 = vec2<i32>(1i, global0.x);
    let var_0 = _wgslsmith_f_op_vec2_f32(func_4(Struct_4(min(min(~vec4<i32>(global0.x, 0i, global0.x, global0.x), vec4<i32>(1i, 1i, global0.x, -18716i)), vec4<i32>(-13923i, global0.x, global0.x, ~0i))), ~firstLeadingBit(_wgslsmith_mult_vec4_u32(select(vec4<u32>(48722u, 0u, 0u, 45954u), vec4<u32>(u_input.a.x, 2188u, 66109u, u_input.a.x), true), max(vec4<u32>(4294967295u, 91521u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 4294967295u, 0u, 1u)))), Struct_3(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)), true), min(-func_3(Struct_2(-1231f, -1140f, Struct_1(2147483647i, global0.x, vec3<u32>(u_input.a.x, u_input.a.x, 63141u)))), select(~vec4<i32>(20603i, -5278i, 2147483647i, global0.x), vec4<i32>(global0.x, global0.x, global0.x, 0i), true)), false), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-247f + -996f), _wgslsmith_div_f32(1228f, 469f), _wgslsmith_f_op_f32(-1511f + 664f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1425f, -185f, -744f) - vec3<f32>(321f, -1188f, -655f)) - vec3<f32>(739f, 1072f, -433f)))))));
    global0 = vec2<i32>(-2147483647i, -global0.x);
    let var_1 = false | any(!vec3<bool>(true, all(vec2<bool>(true, true)), global0.x < global0.x));
    var var_2 = -152f;
    return global0.x;
}

fn func_1(arg_0: bool, arg_1: Struct_4, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_4(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(~arg_1.a ^ vec4<i32>(-15720i, global0.x, -1i, global0.x), ~vec4<i32>(arg_1.a.x, -25692i, 0i, arg_1.a.x) ^ vec4<i32>(-18580i, global0.x, 47741i, arg_1.a.x)), vec4<i32>(-min(1i, 1i), func_2(), arg_1.a.x, 19673i)));
    let var_1 = select(firstTrailingBit(-arg_1.a.wxy), vec3<i32>(_wgslsmith_dot_vec2_i32(~countOneBits(vec2<i32>(0i, global0.x)), vec2<i32>(i32(-1i) * -45026i, 3737i)), countOneBits(-2147483647i) & func_3(Struct_2(1255f, -2277f, Struct_1(global0.x, 812i, vec3<u32>(1u, u_input.a.x, u_input.a.x)))).x, max(1i, _wgslsmith_clamp_i32(var_0.a.x, arg_1.a.x, global0.x) >> (abs(41125u) % 32u))), select(select(vec3<bool>(true, arg_2.x, true), vec3<bool>(arg_0, true, true), all(vec2<bool>(arg_0, arg_0))), select(!select(vec3<bool>(arg_2.x, arg_2.x, arg_2.x), vec3<bool>(arg_2.x, arg_0, false), true), !vec3<bool>(false, arg_2.x, true), !all(vec4<bool>(arg_2.x, true, true, arg_0))), true));
    var_0 = Struct_4(arg_1.a);
    var var_2 = !(!select(!vec4<bool>(arg_2.x, true, arg_0, true), vec4<bool>(any(vec4<bool>(arg_2.x, arg_0, arg_0, false)), u_input.a.x >= 9837u, true, all(vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x))), all(vec3<bool>(true, arg_0, arg_2.x))));
    var_2 = vec4<bool>(false, arg_0, u_input.a.x < u_input.a.x, any(!(!(!vec4<bool>(var_2.x, false, false, false)))));
    return Struct_1(global0.x, ~(-2147483647i), ~vec3<u32>(4294967295u, ~abs(0u), u_input.a.x));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_3 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-301f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), arg_0);
    var var_1 = false && any(vec3<bool>(any(select(vec4<bool>(false, arg_1.x, true, arg_1.x), vec4<bool>(true, arg_1.x, true, arg_1.x), arg_1.x)), _wgslsmith_f_op_f32(-561f + var_0.b) == _wgslsmith_f_op_f32(-436f * var_0.a), any(select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), arg_1, vec3<bool>(arg_1.x, false, arg_1.x)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(996f, _wgslsmith_f_op_f32(abs(var_0.a)), 485f) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, 421f, var_0.a) * vec3<f32>(var_0.a, -640f, var_0.b))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-240f, var_0.a, var_0.b))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-976f, var_0.b, -1197f), vec3<f32>(var_0.b, 399f, -2143f)))))))));
    var var_3 = ~(~_wgslsmith_mult_u32(39704u, arg_0.c.x));
    return Struct_3(vec4<bool>(all(vec4<bool>(arg_1.x, false, true, false)), !(arg_1.x && all(vec2<bool>(arg_1.x, true))), arg_1.x, var_0.c.c.x != ~max(arg_0.c.x, var_0.c.c.x)), _wgslsmith_div_vec4_i32(vec4<i32>(0i, _wgslsmith_sub_i32(arg_0.a, -global0.x), abs(0i ^ global0.x), 2147483647i), vec4<i32>(-2147483647i, arg_0.b, -_wgslsmith_clamp_i32(arg_0.a, var_0.c.a, 0i), global0.x)), true);
}

fn func_6(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_3, arg_3: i32) -> Struct_4 {
    var var_0 = vec3<u32>(8536u, _wgslsmith_mult_u32(~(~_wgslsmith_div_u32(u_input.a.x, u_input.a.x)), firstTrailingBit(0u)), u_input.a.x);
    global0 = -vec2<i32>(55809i, ~(arg_1 & -50326i));
    var var_1 = u_input.a.x ^ ~(~(~var_0.x));
    var var_2 = vec4<i32>(-(func_3(Struct_2(-170f, 791f, Struct_1(arg_2.b.x, arg_3, vec3<u32>(var_0.x, 27537u, 33946u)))).x | 1i), _wgslsmith_dot_vec4_i32(arg_2.b, abs(vec4<i32>(arg_1, arg_1, arg_3, i32(-1i) * -5570i))), abs(func_2()), _wgslsmith_div_i32(-1i, 14568i));
    var_0 = ~(~_wgslsmith_add_vec3_u32(~firstLeadingBit(vec3<u32>(var_0.x, u_input.a.x, var_0.x)), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, var_0.x, 0u), vec3<u32>(4294967295u, 20358u, var_0.x)))));
    return Struct_4(vec4<i32>(arg_1, _wgslsmith_dot_vec4_i32(-select(arg_2.b, vec4<i32>(arg_2.b.x, arg_3, arg_2.b.x, -19595i), arg_2.a), vec4<i32>(-2147483647i, func_5(Struct_1(global0.x, var_2.x, vec3<u32>(53043u, var_0.x, var_0.x)), vec3<bool>(arg_0.x, false, arg_0.x)).b.x, ~arg_3, _wgslsmith_mult_i32(global0.x, 1i))), -(~(-arg_2.b.x)), global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(select(vec3<bool>(true, any(select(vec2<bool>(false, true), vec2<bool>(true, false), true)), true), vec3<bool>(true, all(vec4<bool>(true, false, false, false)), any(vec3<bool>(true, true, false)) != true), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), 18046i, func_5(func_1(true, Struct_4(max(vec4<i32>(-27868i, 2147483647i, -213i, 2147483647i), vec4<i32>(42886i, 30309i, -1i, 2147483647i))), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, false), vec2<bool>(true, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), 1i);
    global0 = -var_0.a.zz;
    global0 = var_0.a.wy;
    global0 = -func_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-956f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-787f, 526f, true)))), func_1(true, Struct_4(vec4<i32>(-2147483647i, -6625i, global0.x, -2147483647i)), vec2<bool>(false, true)))).wz;
    let var_1 = global0.x;
    global0 = var_0.a.xx;
    global0 = var_0.a.yy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-3015f * 1f));
}

