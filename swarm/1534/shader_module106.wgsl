struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec2<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: vec4<f32>) -> vec2<u32> {
    var var_0 = _wgslsmith_add_vec3_u32(countOneBits(u_input.c ^ vec3<u32>(~u_input.a, u_input.a, u_input.a)), max(_wgslsmith_clamp_vec3_u32(vec3<u32>(max(u_input.a, 31469u), 0u, _wgslsmith_mod_u32(0u, u_input.a)), vec3<u32>(max(80265u, 55763u), 56472u, 1u), ~(~u_input.c)), firstLeadingBit(u_input.c)));
    var var_1 = vec4<bool>(false, all(select(vec2<bool>(false, true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, true))), all(select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(false, true)), vec2<bool>(true, true))), true);
    let var_2 = Struct_1(vec2<bool>(!(!var_1.x) & false, !any(!vec2<bool>(var_1.x, var_1.x))), -43831i, select(abs(~vec3<u32>(u_input.a, u_input.c.x, u_input.c.x)), vec3<u32>(~var_0.x, u_input.a << (19204u % 32u), _wgslsmith_add_u32(1u, var_0.x)), var_1.yxz) >> (u_input.c % vec3<u32>(32u)), firstTrailingBit(abs(var_0.zy)));
    let var_3 = 11575u;
    var_0 = _wgslsmith_mult_vec3_u32(~_wgslsmith_clamp_vec3_u32(firstLeadingBit(u_input.c) | vec3<u32>(8510u, var_2.d.x, 13753u), var_2.c, firstLeadingBit(var_2.c)), ~countOneBits(~vec3<u32>(88543u, 99949u, var_0.x)));
    return u_input.c.yy;
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = u_input.b;
    let var_1 = Struct_1(!(!select(select(arg_0.a, vec2<bool>(true, arg_0.a.x), arg_0.a), vec2<bool>(true, true), !arg_0.a)), -countOneBits(var_0.x), u_input.c, func_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) + _wgslsmith_f_op_f32(select(1191f, -2211f, arg_0.a.x))), -498f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1240f + 762f))), u_input.e.yyx, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-359f, -1076f, 762f, 1195f), vec4<f32>(518f, -845f, 240f, 2567f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(639f, -972f, 357f, -1064f), vec4<f32>(-764f, -358f, -619f, 1354f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(500f, 323f, -1215f, 1110f))))));
    let var_2 = -644f;
    return select(select(vec2<bool>(any(vec4<bool>(true, true, true, true)), true), arg_0.a, vec2<bool>(all(vec3<bool>(false, var_1.a.x, false)), arg_0.a.x)), arg_0.a, !select(var_1.a, select(arg_0.a, var_1.a, true), all(vec3<bool>(true, true, true))));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_add_u32(~(u_input.c.x ^ u_input.a), _wgslsmith_mod_u32(~firstTrailingBit(_wgslsmith_mult_u32(2590u, u_input.c.x)), 1u));
    let var_1 = !(!vec3<bool>(!all(vec2<bool>(false, false)), all(vec3<bool>(true, true, true)), any(func_2(Struct_1(vec2<bool>(false, false), -4761i, vec3<u32>(1u, 3161u, 76025u), vec2<u32>(u_input.c.x, u_input.c.x))))));
    var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(~u_input.c, u_input.c), _wgslsmith_div_u32(firstLeadingBit(u_input.a), max(u_input.a, u_input.c.x))), u_input.c.xy) << (~_wgslsmith_add_u32(firstTrailingBit(u_input.c.x), ~u_input.a) % 32u);
    let var_2 = u_input.e.yyz;
    let var_3 = firstTrailingBit(arg_1.zzy);
    return Struct_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.x - arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.x, 1302f))), _wgslsmith_f_op_f32(-arg_0.x), -581f))), countOneBits(-(u_input.b >> (u_input.c.zx % vec2<u32>(32u))) << (~(u_input.c.xz & u_input.c.xy) % vec2<u32>(32u))), vec2<bool>(false, true), Struct_1(vec2<bool>(!(225f <= arg_0.x), !(!var_1.x)), -var_2.x, u_input.c, u_input.c.xx));
}

fn func_4(arg_0: Struct_2) -> vec2<f32> {
    let var_0 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, 1517f))))) * func_1(arg_0.a.xy, abs(u_input.e)).a.wx), vec4<i32>(30601i, arg_0.b.x, 6354i, min(arg_0.b.x, func_1(_wgslsmith_f_op_vec2_f32(select(arg_0.a.yw, arg_0.a.yw, true)), u_input.e >> (vec4<u32>(4294967295u, 50965u, u_input.c.x, 17504u) % vec4<u32>(32u))).d.b))).d;
    var var_1 = !select(!vec3<bool>(true, true, arg_0.a.x >= -126f), !select(select(vec3<bool>(false, var_0.a.x, arg_0.d.a.x), vec3<bool>(arg_0.c.x, var_0.a.x, false), arg_0.d.a.x), vec3<bool>(false, false, false), vec3<bool>(true, var_0.a.x, arg_0.d.a.x)), any(vec4<bool>(func_1(arg_0.a.zx, vec4<i32>(1i, 2236i, -26065i, var_0.b)).c.x, !var_0.a.x, true, all(vec3<bool>(false, var_0.a.x, true)))));
    var_1 = !vec3<bool>(var_1.x, false, !(!var_1.x || false));
    let var_2 = arg_0;
    let var_3 = func_1(_wgslsmith_f_op_vec2_f32(arg_0.a.xw * _wgslsmith_f_op_vec2_f32(step(var_2.a.zx, var_2.a.zw))), -u_input.e).d;
    return var_2.a.yy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(func_1(vec2<f32>(-1171f, -1041f), u_input.e))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-238f, -884f) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-241f, 1137f))))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -145f), 1f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1776f, -497f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(919f, 487f))))), select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), !select(true, true, true)))));
    var_1 = vec2<f32>(1253f, -1000f);
    let var_2 = u_input.c.x;
    var var_3 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x)))), var_1.x, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-var_1.x)), var_1.x), countOneBits(vec2<i32>(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-24975i, 10012i, u_input.e.x, u_input.e.x), u_input.e)), -59287i)), select(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), true)), !select(func_2(Struct_1(vec2<bool>(true, true), 14708i, u_input.c, u_input.c.yy)), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), u_input.e.x != u_input.b.x), true)), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(192f, -270f) * vec2<f32>(var_1.x, 1650f)) + vec2<f32>(var_1.x, var_1.x))), _wgslsmith_add_vec4_i32(-vec4<i32>(u_input.e.x, -12608i, u_input.d, -18876i), vec4<i32>(2147483647i, 1i, 11152i, -1628i) & vec4<i32>(u_input.d, -42643i, u_input.e.x, u_input.b.x)) << (vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 20716u), u_input.c), 13580u, u_input.a, _wgslsmith_add_u32(1u, var_2)) % vec4<u32>(32u))).d);
    var_0 = false;
    var var_4 = func_1(var_3.a.xw, -u_input.e).d.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(~_wgslsmith_div_i32(u_input.e.x, -8087i), var_3.d.b, u_input.d >> (1u % 32u), reverseBits(~var_3.b.x)), _wgslsmith_f_op_vec2_f32(-var_3.a.yx));
}

