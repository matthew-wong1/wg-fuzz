struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: vec2<u32>,
    d: vec3<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32) -> vec3<bool> {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1820f, arg_0.x, 1000f)) - vec3<f32>(-470f, global0.x, global0.x))))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1006f * 1f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(step(arg_0.x, global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(-1301f - 828f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1198f))), _wgslsmith_f_op_f32(-191f + global0.x)))));
    var var_0 = select(all(vec4<bool>(select(-2147483647i, u_input.a.x, true) == (i32(-1i) * -1i), all(vec2<bool>(false, false)), !select(true, true, false), false)), false, false);
    var var_1 = _wgslsmith_dot_vec2_i32(u_input.a.zx, countOneBits(u_input.a.yz));
    let var_2 = !any(!vec3<bool>(41715u >= u_input.b.x, true, all(vec4<bool>(true, true, true, true))));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2891f))), -769f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x))));
    return select(select(select(!select(vec3<bool>(true, var_2, true), vec3<bool>(var_2, true, true), vec3<bool>(true, var_2, var_2)), select(select(vec3<bool>(var_2, true, var_2), vec3<bool>(var_2, var_2, var_2), vec3<bool>(false, true, var_2)), !vec3<bool>(var_2, var_2, true), true), !(!vec3<bool>(var_2, true, var_2))), select(select(select(vec3<bool>(var_2, false, var_2), vec3<bool>(true, var_2, false), false), vec3<bool>(true, false, var_2), !vec3<bool>(var_2, var_2, var_2)), !vec3<bool>(var_2, true, true), all(vec2<bool>(var_2, false))), arg_0.x >= -1000f), select(select(select(vec3<bool>(var_2, false, var_2), vec3<bool>(var_2, true, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(var_2, var_2, true), vec3<bool>(false, true, var_2), vec3<bool>(var_2, false, true)), select(vec3<bool>(var_2, var_2, var_2), vec3<bool>(false, true, var_2), var_2), u_input.a.x <= u_input.d.x), vec3<bool>(var_2, true, !var_2)), vec3<bool>(all(vec2<bool>(var_2, false)) && true, !any(vec3<bool>(false, var_2, var_2)), var_2), _wgslsmith_dot_vec2_u32(~u_input.b.zz, ~u_input.b.zy) != firstLeadingBit(50859u)), !(!select(select(vec3<bool>(var_2, true, true), vec3<bool>(true, var_2, var_2), vec3<bool>(var_2, var_2, false)), !vec3<bool>(false, true, var_2), vec3<bool>(true, false, var_2))));
}

fn func_2(arg_0: vec2<bool>, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_2(func_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-1218f, global0.x), vec2<f32>(global0.x, global0.x)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 175f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-906f, 1234f), vec2<f32>(global0.x, global0.x)))), vec2<bool>(!arg_0.x, u_input.a.x > arg_1))), global0.x), select(_wgslsmith_mult_i32(abs(u_input.d.x), arg_1), _wgslsmith_div_i32(17189i, u_input.d.x ^ ~u_input.d.x), !(false && arg_0.x)), vec2<u32>(reverseBits(_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.b.xx), vec2<u32>(4294967295u, u_input.b.x) << (vec2<u32>(u_input.b.x, 1u) % vec2<u32>(32u)))), 6959u), vec3<bool>(arg_0.x, true, (~u_input.b.x << (0u % 32u)) <= ~29833u), Struct_1(~select(54093u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), u_input.b.yy), any(vec3<bool>(arg_0.x, arg_0.x, true))), u_input.a));
    let var_1 = -438f;
    var var_2 = Struct_2(select(!(!var_0.d), vec3<bool>(false, false, func_3(global0.zz, global0.x).x & all(var_0.a.xz)), vec3<bool>(false, true, false)), i32(-1i) * -53414i, u_input.b.xz, var_0.d, Struct_1(1u, _wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.d.x, var_0.b, 1i), reverseBits(vec3<i32>(var_0.e.b.x, 0i, u_input.a.x)) << (vec3<u32>(79689u, 4294967295u, var_0.e.a) % vec3<u32>(32u)))));
    var_0 = Struct_2(var_0.a, var_0.e.b.x, var_0.c, vec3<bool>(true, !all(vec2<bool>(true, arg_0.x)), false), var_0.e);
    var var_3 = _wgslsmith_f_op_f32(-var_1);
    return Struct_1(~(((var_2.c.x << (13631u % 32u)) & 8953u) ^ ~1u), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(u_input.d.x, 0i, ~arg_1), var_2.b & _wgslsmith_dot_vec2_i32(var_0.e.b.xx, vec2<i32>(u_input.d.x, 27940i)), arg_1), var_0.e.b, firstTrailingBit(u_input.a)));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: u32) -> vec3<bool> {
    let var_0 = func_2(select(vec2<bool>(true, ~u_input.b.x < _wgslsmith_div_u32(0u, 4294967295u)), vec2<bool>(true, any(vec2<bool>(false, false)) || true), !(-1i > arg_2.b.x)), arg_1.x);
    var var_1 = Struct_2(select(vec3<bool>(true, !any(vec4<bool>(true, false, true, false)), true), select(vec3<bool>(true, -25159i >= var_0.b.x, false), vec3<bool>(true, true, true), all(vec2<bool>(true, true))), vec3<bool>(true, !select(true, false, true), true)), var_0.b.x, vec2<u32>(_wgslsmith_mod_u32(4294967295u, _wgslsmith_clamp_u32(23714u, arg_2.a, 17977u << (arg_3 % 32u))), _wgslsmith_dot_vec3_u32(abs(~vec3<u32>(1u, 62162u, var_0.a)), _wgslsmith_sub_vec3_u32(vec3<u32>(51467u, 24081u, 1346u), u_input.b))), select(vec3<bool>(false, any(vec2<bool>(true, true)), true), vec3<bool>(true, true, true), func_3(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(global0.yx, global0.xy)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.x)) * global0.x)).x), arg_2);
    var var_2 = var_1.d.x == any(!(!select(vec4<bool>(false, var_1.d.x, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, var_1.a.x, false, var_1.d.x))));
    let var_3 = Struct_2(vec3<bool>(var_1.a.x, true, true), _wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_sub_i32(max(arg_2.b.x, arg_1.x), arg_1.x)), ~u_input.a.x ^ -1i), reverseBits(_wgslsmith_mod_vec2_u32(countOneBits(~vec2<u32>(0u, 7879u)), u_input.b.yz)), var_1.d, var_1.e);
    let var_4 = !select(!(!vec4<bool>(var_3.a.x, false, var_3.d.x, false)), vec4<bool>(true, var_1.a.x, true, var_1.d.x), var_3.a.x);
    return select(!vec3<bool>(var_1.d.x, all(vec2<bool>(false, true)), select(all(vec3<bool>(var_4.x, true, var_3.d.x)), all(var_1.a), any(vec4<bool>(var_3.a.x, var_1.d.x, var_1.d.x, true)))), var_1.a, var_4.xwy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = !any(select(select(select(vec3<bool>(false, var_0, true), vec3<bool>(var_0, var_0, var_0), vec3<bool>(true, var_0, var_0)), func_1(u_input.d.zz, vec4<i32>(15832i, u_input.a.x, 1i, -11316i), Struct_1(u_input.c, vec3<i32>(u_input.d.x, u_input.d.x, -44397i)), u_input.b.x), true), vec3<bool>(!var_0, false, false), !(!vec3<bool>(var_0, var_0, var_0))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1185f, 1054f, 911f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-253f, 555f, 1420f) - vec3<f32>(global0.x, -450f, global0.x)))))) + vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.x + 1355f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1332f), _wgslsmith_f_op_f32(global0.x + -828f), func_3(global0.yy, global0.x).x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x - 857f))), true | func_3(global0.yz, -842f).x))));
    let var_2 = Struct_2(vec3<bool>(true, all(vec2<bool>(var_1, !var_0)), any(vec2<bool>(true, var_1))), u_input.d.x, _wgslsmith_mod_vec2_u32(u_input.b.zy, ~reverseBits(u_input.b.xx ^ vec2<u32>(u_input.b.x, u_input.c))), !(!vec3<bool>(true != var_0, var_1, var_1)), Struct_1(~_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), vec3<i32>(0i, abs(abs(1i)), u_input.a.x)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -794f))), global0.x)) - global0.x);
    var var_4 = func_2(vec2<bool>(false, var_2.a.x), 0i);
    var var_5 = _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, 2147483647i, ~abs(-1i), max(~var_4.b.x, u_input.a.x)) ^ vec4<i32>(var_2.b, var_2.e.b.x, 0i, -3726i), abs(max(select(vec4<i32>(18419i, var_2.b, var_4.b.x, u_input.a.x), u_input.d, vec4<bool>(true, var_1, true, var_0)), ~u_input.d) & (u_input.d ^ u_input.d)));
    let var_6 = var_2;
    var var_7 = var_2.e;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(firstTrailingBit(1804i), abs(1i)), countOneBits(countOneBits(vec2<i32>(1i, -var_6.b))), ~var_2.c.x, 0u, _wgslsmith_div_i32(firstLeadingBit(_wgslsmith_clamp_i32(var_4.b.x, var_7.b.x, var_4.b.x)) >> (_wgslsmith_div_u32(_wgslsmith_clamp_u32(4294967295u, u_input.b.x, u_input.c), 4294967295u) % 32u), select(~_wgslsmith_clamp_i32(var_7.b.x, 54565i, var_6.e.b.x), min(2147483647i, 29889i), var_2.d.x)));
}

