struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: u32,
    d: u32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, true);

var<private> global1: vec4<f32> = vec4<f32>(1082f, 1724f, -1276f, -1000f);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec4<u32>) -> f32 {
    var var_0 = _wgslsmith_add_u32(arg_0, 4294967295u) < reverseBits(~(countOneBits(9165u) >> (min(arg_1.c, arg_0) % 32u)));
    let var_1 = min(vec2<i32>(reverseBits(_wgslsmith_mod_i32(u_input.a, 9471i)), max(2147483647i, _wgslsmith_mult_i32(u_input.a, 2147483647i))) << (~_wgslsmith_add_vec2_u32(arg_2.zw, min(vec2<u32>(arg_2.x, 38320u), arg_2.xx)) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32((abs(vec2<i32>(u_input.a, -15436i)) & -vec2<i32>(u_input.a, 0i)) << (~vec2<u32>(0u, 0u) % vec2<u32>(32u)), abs(vec2<i32>(u_input.a, u_input.a)) >> (arg_2.zz % vec2<u32>(32u))));
    var_0 = global0.x;
    var_0 = arg_1.b.x;
    let var_2 = _wgslsmith_dot_vec4_i32(abs(vec4<i32>(firstLeadingBit(u_input.a), var_1.x, u_input.a, ~var_1.x | (i32(-1i) * -13810i))), ~(~countOneBits(max(vec4<i32>(-64372i, 2147483647i, var_1.x, -65723i), vec4<i32>(u_input.a, 1i, -3816i, var_1.x)))));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1360f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, -238f) - -787f))));
}

fn func_2() -> f32 {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global1.x)))), global1.x, _wgslsmith_f_op_f32(exp2(global1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), 1909f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(global1.x, global1.x)), _wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_f32(func_3(9516u, Struct_1(global0.x, global0.zy, 4294967295u, 12711u, vec4<bool>(global0.x, global0.x, global0.x, global0.x)), vec4<u32>(28092u, 38171u, 28671u, 0u))), _wgslsmith_f_op_f32(-global1.x)))));
    return _wgslsmith_f_op_f32(f32(-1f) * -521f);
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1) -> bool {
    let var_0 = ~_wgslsmith_clamp_u32(arg_2.c, ~46702u, arg_2.d);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.yyy - global1.yyw))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1.x * -1174f), _wgslsmith_f_op_f32(341f + 111f), _wgslsmith_f_op_f32(457f * arg_0)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global1.zxz, vec3<f32>(-303f, arg_0, 440f), arg_1))))));
    var var_2 = arg_2.e.xy;
    return _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, firstTrailingBit(13473u), 4294967295u), 4294967295u), ~max(firstLeadingBit(arg_2.d), ~var_0)) >= (arg_2.d ^ var_0);
}

fn func_1(arg_0: bool) -> Struct_1 {
    global0 = vec3<bool>(false, global0.x, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - global1.x), vec3<bool>(true, true, any(select(vec2<bool>(global0.x, true), vec2<bool>(true, arg_0), global0.xy))), Struct_1(arg_0 | true, global0.zz, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), 1u, vec4<bool>(any(vec4<bool>(global0.x, global0.x, true, arg_0)), any(vec4<bool>(global0.x, global0.x, true, true)), true, false))));
    var var_0 = vec4<f32>(global1.x, 1039f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * -562f), global1.x)), _wgslsmith_f_op_f32(func_2()))), global1.x);
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.x, _wgslsmith_f_op_f32(-451f + 790f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * global1.x) * var_0.x), 320f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-340f, global1.x, 138f, global1.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, global1.x, global1.x, global1.x) * vec4<f32>(309f, -1000f, -238f, -218f))))))));
    let var_1 = Struct_1(false, global0.yx, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(abs(vec2<u32>(0u, 73733u)), abs(vec2<u32>(0u, 0u))), ~vec2<u32>(4758u, 0u)) | 0u, 1u, !vec4<bool>(arg_0, _wgslsmith_f_op_f32(1668f + var_0.x) >= global1.x, true, arg_0 & !arg_0));
    let var_2 = var_1.e.wwz;
    return Struct_1(global0.x || false, vec2<bool>(any(!var_1.e.xwx) | !(u_input.a > 22808i), var_2.x), ~reverseBits(var_1.c), 0u, vec4<bool>(global0.x, false, !(!var_2.x), global0.x));
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = ~_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(i32(-1i) * -37891i, -u_input.a), vec2<i32>(1i, u_input.a) | vec2<i32>(u_input.a, u_input.a)), _wgslsmith_mod_vec2_i32(abs(vec2<i32>(-2147483647i, u_input.a)), _wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(13392i, u_input.a)), vec2<i32>(1i, 1i))));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(global1.x)), global1.x, -1085f, -1000f)))));
    global0 = select(arg_0.e.zxy, !select(select(vec3<bool>(global0.x, arg_0.a, true), func_1(arg_0.e.x).e.zyy, global0.x), vec3<bool>(global0.x, !global0.x, true), _wgslsmith_dot_vec2_i32(var_0, var_0) < select(var_0.x, -27585i, arg_0.e.x)), vec3<bool>(global0.x, true, 3725i < u_input.a));
    global0 = !(!(!arg_0.e.yzx));
    global0 = arg_0.e.xzz;
    return arg_0;
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    global1 = vec4<f32>(-1103f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-479f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-905f)) - _wgslsmith_div_f32(global1.x, global1.x))))), 2299f, -1471f);
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.x, 1729f, global1.x, global1.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-846f, 842f, global1.x, 609f))))))) + vec4<f32>(-192f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - global1.x)), 711f, global1.x)));
    var var_0 = _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(-reverseBits(vec3<i32>(21206i, 18438i, u_input.a)), _wgslsmith_sub_vec3_i32(-vec3<i32>(2147483647i, -52603i, u_input.a), vec3<i32>(-1i, 1i, 10712i))), vec3<i32>(abs(u_input.a), -(~(-1i)), -u_input.a)) << (_wgslsmith_clamp_vec3_u32(abs(firstTrailingBit(vec3<u32>(arg_0.d, 44967u, 1u))), abs(~_wgslsmith_clamp_vec3_u32(vec3<u32>(34556u, 1u, arg_0.d), vec3<u32>(55102u, arg_0.d, 0u), vec3<u32>(arg_0.c, arg_0.c, 4294967295u))), vec3<u32>(~(~arg_0.c), ~arg_0.d, _wgslsmith_add_u32(arg_0.d, reverseBits(arg_0.c)))) % vec3<u32>(32u));
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global1.xyy))) - global1.zyz)));
    let var_2 = abs(min(-(vec4<i32>(1i, -2147483647i, u_input.a, u_input.a) | ~vec4<i32>(-67193i, -2147483647i, u_input.a, -34316i)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(36193i, var_0.x, 2193i, -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(-8427i, -1i, u_input.a, -2147483647i), vec4<i32>(-53125i, 52623i, var_0.x, -7822i))), select(~(-32143i), 1i, arg_0.e.x), _wgslsmith_div_i32(u_input.a, _wgslsmith_clamp_i32(1i, var_0.x, u_input.a)), ~_wgslsmith_mult_i32(var_0.x, u_input.a))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(func_1(false), 37113u));
    let var_1 = Struct_1(var_0.b.x, vec2<bool>(!(false == global0.x) & (!global0.x || true), true), var_0.c, 49831u, !vec4<bool>(true, false, all(vec3<bool>(var_0.a, global0.x, global0.x)), !global0.x));
    let var_2 = firstTrailingBit(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(var_0.d, var_0.c) >> ((0u & var_0.c) % 32u), ~18721u), ~(~select(4294967295u, var_0.d, var_0.e.x)), firstTrailingBit(var_0.d)));
    global1 = vec4<f32>(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -427f), _wgslsmith_f_op_f32(-global1.x), global1.x);
    var var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_i32(~select(5458i, u_input.a, var_1.b.x), 1238i >> (func_5(Struct_1(var_1.a, vec2<bool>(var_1.b.x, true), var_0.d, var_2.x, vec4<bool>(true, var_0.e.x, false, var_1.a)), 77412u).c % 32u)));
}

