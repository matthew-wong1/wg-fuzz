struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_2,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> f32 {
    let var_0 = u_input.c;
    var var_1 = Struct_3(vec2<i32>(~_wgslsmith_add_i32(_wgslsmith_add_i32(-4657i, u_input.a), 22908i), -1i), arg_3, vec2<f32>(1f, 1f), Struct_2(var_0.x, Struct_1(~(var_0.x >> (58708u % 32u)), all(select(vec4<bool>(false, true, arg_3.b, true), vec4<bool>(arg_2, arg_2, arg_2, false), vec4<bool>(arg_2, arg_3.b, false, arg_2))), false & select(false, true, arg_2), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -592f)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-700f, -526f, -385f)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(floor(2100f)), any(vec4<bool>(false, arg_3.b, true, false))))), -1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-236f))))));
    return var_1.c.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: vec3<f32>, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_mult_i32(1i, arg_0.x) >= arg_1;
    var var_1 = Struct_2(-2147483647i, Struct_1(-21616i, true, true, select(true, all(vec4<bool>(false, true, false, false)), !(arg_0.x > 1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -716f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3(countOneBits(4294967295u), u_input.b.x, false, Struct_1(41002i, true, true, false))), -1417f, _wgslsmith_f_op_f32(-arg_2.x))));
    var_0 = var_1.b.c;
    var_0 = false;
    let var_2 = select(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, _wgslsmith_div_u32(~select(50949u, 16178u, var_1.b.d), 55583u)), select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, var_1.b.c), vec2<bool>(var_1.b.c, true), vec2<bool>(true, false)), true), select(vec2<bool>(true, true), vec2<bool>(var_1.b.c, false), select(vec2<bool>(var_1.b.d, var_1.b.d), vec2<bool>(true, true), var_1.b.c)), vec2<bool>(true, var_1.b.c | var_1.b.d)), vec2<bool>(true, true), true));
    return Struct_1(-18772i, all(select(vec2<bool>(true, true), select(!vec2<bool>(true, var_1.b.c), vec2<bool>(var_1.b.c, var_1.b.c), !var_1.b.c), vec2<bool>(var_1.b.b, true))), select((var_1.b.c | true) || all(select(vec2<bool>(var_1.b.b, var_1.b.c), vec2<bool>(true, false), vec2<bool>(true, var_1.b.c))), all(vec3<bool>(var_1.b.b, var_1.b.c, select(var_1.b.c, var_1.b.c, var_1.b.c))), !all(select(vec4<bool>(false, var_1.b.b, false, var_1.b.c), vec4<bool>(var_1.b.d, false, var_1.b.d, false), vec4<bool>(var_1.b.c, var_1.b.d, var_1.b.d, false)))), var_1.b.c);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = true;
    var var_1 = Struct_1(~(-1023i), all(!select(vec4<bool>(arg_2.b, arg_2.c, false, arg_2.c), select(vec4<bool>(true, arg_3.d, arg_0.c, false), vec4<bool>(true, arg_2.d, true, arg_0.c), vec4<bool>(arg_2.b, arg_0.c, false, arg_2.c)), select(vec4<bool>(arg_2.b, arg_3.c, arg_3.b, arg_2.d), vec4<bool>(arg_3.b, false, arg_3.d, arg_3.c), false))), arg_2.b, all(vec2<bool>(false, arg_3.b)));
    var var_2 = arg_2.b;
    let var_3 = Struct_2(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(arg_3.a, _wgslsmith_clamp_i32(37834i, -44423i, arg_2.a), u_input.b.x, reverseBits(arg_2.a))), abs(func_2(min(u_input.c.wzy, vec3<i32>(arg_3.a, 0i, arg_0.a)), ~arg_0.a, vec3<f32>(1000f, -664f, 751f), _wgslsmith_mod_vec2_i32(u_input.b.zx, vec2<i32>(arg_3.a, var_1.a))).a)), func_2(select(vec3<i32>(1i, ~var_1.a, -2147483647i), select(-vec3<i32>(arg_3.a, arg_2.a, arg_0.a), reverseBits(vec3<i32>(1i, arg_0.a, 15986i)), false), !vec3<bool>(arg_0.b, true, var_1.c)), ~_wgslsmith_mod_i32(abs(-22357i), u_input.b.x), vec3<f32>(1f, 1f, 1f), ~_wgslsmith_sub_vec2_i32(firstTrailingBit(u_input.c.zw), ~vec2<i32>(var_1.a, arg_2.a))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1586f) + _wgslsmith_f_op_f32(f32(-1f) * -747f)))), vec3<f32>(1621f, 1f, _wgslsmith_f_op_f32(min(597f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1430f) - _wgslsmith_f_op_f32(-750f - -1873f))))));
    var_2 = !all(!select(!vec3<bool>(true, false, var_3.b.b), select(vec3<bool>(var_3.b.b, false, false), vec3<bool>(var_3.b.b, false, true), arg_2.d), select(vec3<bool>(var_3.b.d, true, true), vec3<bool>(arg_3.c, true, var_3.b.d), vec3<bool>(var_3.b.d, var_1.c, true))));
    return Struct_1(max(37766i, 13327i), all(select(!select(vec4<bool>(var_1.b, var_1.d, var_1.d, true), vec4<bool>(arg_0.b, arg_0.d, arg_2.c, true), vec4<bool>(arg_0.d, true, false, true)), vec4<bool>(-12877i != arg_0.a, arg_3.b, var_3.d.x >= var_3.d.x, any(vec3<bool>(arg_2.c, var_3.b.c, false))), !vec4<bool>(var_3.b.b, true, arg_0.b, false))), arg_3.c, all(select(!select(vec3<bool>(var_1.c, arg_0.b, true), vec3<bool>(arg_2.b, true, arg_3.c), vec3<bool>(false, true, true)), select(vec3<bool>(false, arg_3.b, arg_0.d), vec3<bool>(false, arg_2.b, arg_3.d), false), !select(vec3<bool>(arg_0.b, arg_3.b, arg_2.d), vec3<bool>(var_1.c, arg_3.b, false), true))));
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = Struct_3(vec2<i32>(u_input.b.x, ~_wgslsmith_dot_vec2_i32(-u_input.c.xz, u_input.c.wx)), func_4(func_2(-(u_input.b & vec3<i32>(32481i, u_input.a, 0i)), u_input.a, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-138f, 1812f, -729f) * vec3<f32>(979f, -302f, 331f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-180f, -1098f, 149f))))), vec2<i32>(-u_input.b.x, u_input.a)), min(7534u, _wgslsmith_dot_vec4_u32(vec4<u32>(7722u, arg_0, arg_0, arg_0), ~vec4<u32>(arg_0, arg_0, arg_0, arg_0))), func_2(-u_input.c.zxw, max(min(u_input.b.x, u_input.a), u_input.b.x), vec3<f32>(1f, -460f, _wgslsmith_f_op_f32(893f - 304f)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c.x, 2147483647i), vec2<i32>(u_input.b.x, u_input.c.x))), func_2(~min(vec3<i32>(-32977i, -1i, -1926i), u_input.c.wzy), reverseBits(~0i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-423f, 415f, -1297f)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(576f, -466f, 809f), vec3<f32>(-256f, -1820f, -1376f)))), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-10565i, 2147483647i), vec2<i32>(-1160i, u_input.c.x)), i32(-1i) * -1i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-557f, 1756f))) + vec2<f32>(1f, 1f)))), Struct_2(u_input.c.x, func_4(func_4(Struct_1(-31308i, false, false, false), select(arg_0, arg_0, false), func_2(u_input.c.ywy, u_input.a, vec3<f32>(1195f, -1000f, 323f), vec2<i32>(1i, u_input.a)), func_4(Struct_1(u_input.b.x, true, true, false), arg_0, Struct_1(u_input.b.x, false, true, true), Struct_1(20549i, false, true, false))), ~43005u, Struct_1(abs(u_input.b.x), all(vec4<bool>(false, false, false, true)), true, true), Struct_1(1i, true, true, false)), 655f, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1420f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1229f * -138f), -707f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(936f - 460f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-112f, -113f, _wgslsmith_f_op_f32(-593f - 892f)))));
    let var_1 = var_0.d.c;
    let var_2 = u_input.c.x;
    let var_3 = reverseBits(arg_0);
    let var_4 = _wgslsmith_f_op_vec3_f32(-var_0.d.d);
    return var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(16616i, Struct_1(-select(-22290i, 1i, false) & _wgslsmith_div_i32(~u_input.c.x, u_input.b.x), false, any(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)))), true), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(508f, -181f)))), -1458f)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(447f, 410f, -2777f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(575f, -229f, 1061f), vec3<f32>(123f, 1836f, 966f), false)))))))));
    var_0 = func_1(0u);
    let var_1 = vec3<u32>(_wgslsmith_div_u32(firstTrailingBit(min(0u, ~0u)), _wgslsmith_mult_u32(1u, ~(~4294967295u))), 0u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(~1u, _wgslsmith_mod_u32(reverseBits(16780u), 1u)), ~abs(abs(10226u))));
    let var_2 = vec4<i32>(reverseBits(reverseBits(-(u_input.a | 1i))), min(~var_0.b.a, u_input.c.x), max(9130i, -var_0.b.a), ~(~(~(-u_input.b.x))));
    var var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.d.x, var_0.d.x, -274f, var_0.d.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1235f, var_0.c, 127f, var_0.c))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, var_0.c, var_0.c, -475f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.c, -1135f, var_0.c, var_0.d.x), vec4<f32>(var_0.d.x, var_0.c, var_0.d.x, var_0.c))))), true)))), vec4<f32>(var_0.c, 729f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~var_1.x, 1i, true, var_0.b))), 584f)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_clamp_u32(1u, ~(66436u | var_1.x), var_1.x)), _wgslsmith_sub_vec2_i32(u_input.b.yz, abs(-reverseBits(vec2<i32>(var_2.x, 2147483647i)))), var_1.x, var_3.x);
}

