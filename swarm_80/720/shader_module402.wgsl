struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec4<f32>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-877f, 1389f);

var<private> global1: f32;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<bool>, arg_1: i32) -> vec4<u32> {
    let var_0 = vec4<u32>(abs(_wgslsmith_div_u32(1757u, 45424u) & _wgslsmith_clamp_u32(1u, 4294967295u, 16517u)) ^ abs(~(~0u)), max(~862u, ~_wgslsmith_clamp_u32(~4294967295u, firstTrailingBit(18956u), 1u)), ~0u, 1u);
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-809f, global0.x))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.x, 318f)))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(594f, global0.x) + vec2<f32>(global0.x, global0.x))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(select(-380f, global0.x, false)), _wgslsmith_f_op_f32(floor(228f))), vec2<f32>(_wgslsmith_f_op_f32(1000f * global0.x), global0.x), !vec2<bool>(arg_0.x, false))), arg_0.x)), vec2<f32>(_wgslsmith_f_op_f32(-1550f * global0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global0.x, global0.x)))));
    var var_1 = Struct_4(Struct_1(vec2<u32>(var_0.x, var_0.x), !vec3<bool>(all(arg_0.zy), true, arg_0.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, global0.x, 1654f, global0.x), vec4<f32>(global0.x, global0.x, -2291f, global0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(840f, -492f, global0.x, 540f), vec4<f32>(global0.x, global0.x, global0.x, 1514f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 1000f, global0.x, 2481f) + vec4<f32>(global0.x, global0.x, global0.x, global0.x)))), vec3<bool>(any(arg_0), arg_0.x, any(vec2<bool>(false, arg_0.x))), 0i), var_0.x, Struct_1(var_0.yw | var_0.zz, arg_0.ywx, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, 1000f, -2310f, -340f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -518f, global0.x, 631f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -369f, 461f, 749f) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, 1000f, 754f, global0.x)))), false)), !select(select(arg_0.xxy, vec3<bool>(arg_0.x, arg_0.x, arg_0.x), arg_0.x), arg_0.xyz, vec3<bool>(true, arg_0.x, true)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(select(46185i, arg_1, arg_0.x), arg_1), -1765i)), max(0u, ~(4294967295u >> (var_0.x % 32u)) & (var_0.x & ~var_0.x)));
    let var_2 = 1u;
    var var_3 = Struct_3(0i, false);
    return ~select(var_0, countOneBits(firstLeadingBit(reverseBits(vec4<u32>(var_0.x, var_2, var_0.x, 0u)))), vec4<bool>(!all(vec2<bool>(true, arg_0.x)), _wgslsmith_f_op_f32(global0.x - var_1.a.c.x) < global0.x, var_1.c.b.x, true));
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: f32) -> vec2<u32> {
    let var_0 = countOneBits(~(~func_3(vec4<bool>(false, arg_1, true, arg_1), arg_0.x).x) ^ 1u);
    var var_1 = var_0;
    var var_2 = arg_0.wxz;
    var var_3 = Struct_1(vec2<u32>(69692u, ~(~(~60394u))), !select(!(!vec3<bool>(arg_1, arg_1, false)), select(vec3<bool>(arg_1, arg_1, arg_1), !vec3<bool>(arg_1, arg_1, arg_1), select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, false, false), true)), select(!vec3<bool>(arg_1, arg_1, true), vec3<bool>(true, true, true), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(107f, 918f, -1000f, arg_2) * vec4<f32>(257f, global0.x, -1000f, 980f)))), select(select(!vec3<bool>(arg_1, arg_1, true), vec3<bool>(!arg_1, true, all(vec4<bool>(true, arg_1, true, false))), any(select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, true, arg_1), vec3<bool>(true, arg_1, arg_1)))), vec3<bool>(true, false, true), arg_1), _wgslsmith_dot_vec4_i32(arg_0, min(-firstTrailingBit(arg_0), arg_0)));
    var_1 = ~_wgslsmith_dot_vec2_u32(var_3.a, ~var_3.a);
    return var_3.a;
}

fn func_2(arg_0: vec4<bool>) -> bool {
    let var_0 = _wgslsmith_mod_i32(u_input.a.x, u_input.a.x);
    var var_1 = select(-(select(max(vec3<i32>(u_input.b, 65545i, var_0), vec3<i32>(7462i, -38143i, var_0)), vec3<i32>(u_input.a.x, -4009i, 8710i), arg_0.zzw) << (_wgslsmith_mod_vec3_u32(vec3<u32>(7433u, 0u, 4294967295u), _wgslsmith_clamp_vec3_u32(vec3<u32>(32726u, 24674u, 0u), vec3<u32>(1u, 0u, 65678u), vec3<u32>(8380u, 21460u, 19705u))) % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, 1i) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), firstLeadingBit(~vec3<i32>(var_0, 8044i, u_input.b)) ^ -vec3<i32>(52536i, var_0, 30847i)), !select(select(select(vec3<bool>(false, arg_0.x, true), arg_0.xyw, vec3<bool>(arg_0.x, arg_0.x, false)), arg_0.zyx, true), !(!arg_0.wzx), vec3<bool>(select(true, arg_0.x, arg_0.x), true, !arg_0.x)));
    global0 = vec2<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x));
    let var_2 = !(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(11248u, 0u, 1u), vec3<u32>(52799u, 1u, 4294967295u))) <= 1u);
    let var_3 = Struct_1(func_4(vec4<i32>(i32(-1i) * -2147483647i, var_0 ^ var_0, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, var_1.x, -32955i), vec3<i32>(-1i, var_0, 0i)), -14248i) >> (~func_3(arg_0, u_input.b) % vec4<u32>(32u)), select(arg_0.x, false, arg_0.x), -1600f), arg_0.xyy, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -823f), -370f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.x, -744f)) * _wgslsmith_f_op_f32(step(-461f, -140f))) - _wgslsmith_f_op_f32(-655f * _wgslsmith_f_op_f32(floor(-924f)))), _wgslsmith_f_op_f32(min(1616f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))), vec3<bool>(!any(vec2<bool>(true, true)), true, all(select(arg_0.wy, vec2<bool>(var_2, var_2), !var_2))), ~u_input.a.x);
    return all(!select(var_3.d, !vec3<bool>(var_2, var_3.d.x, var_3.b.x), vec3<bool>(true, arg_0.x, false)));
}

fn func_1() -> Struct_2 {
    var var_0 = vec2<bool>(all(vec4<bool>(7590i < u_input.a.x, true, true, all(vec4<bool>(false, false, true, false)) | true)), true);
    var_0 = !vec2<bool>(func_2(vec4<bool>(var_0.x, var_0.x && true, true, true)), false);
    return Struct_2(Struct_1(vec2<u32>(func_3(select(vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), var_0.x), abs(u_input.b)).x, countOneBits(62306u)), vec3<bool>(all(vec3<bool>(var_0.x, true, var_0.x)) || !var_0.x, true, !(u_input.a.x == u_input.a.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(697f, _wgslsmith_f_op_f32(f32(-1f) * -598f), _wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(global0.x * global0.x)))), !vec3<bool>(global0.x != 153f, select(true, false, false), all(vec3<bool>(false, var_0.x, false))), _wgslsmith_sub_i32(-(u_input.a.x ^ u_input.b), -1i | u_input.b)), false, Struct_1(vec2<u32>(_wgslsmith_sub_u32(~1u, ~4294967295u), 1u), !(!(!vec3<bool>(true, false, var_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1088f, 1000f, -1081f, 411f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, -543f)))), select(select(vec3<bool>(true, var_0.x, true), select(vec3<bool>(false, false, true), vec3<bool>(false, var_0.x, true), vec3<bool>(true, true, false)), true), vec3<bool>(var_0.x, all(vec4<bool>(var_0.x, true, var_0.x, false)), any(vec3<bool>(var_0.x, var_0.x, var_0.x))), all(select(vec3<bool>(false, false, var_0.x), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, false, var_0.x)))), _wgslsmith_clamp_i32(u_input.a.x, -_wgslsmith_mult_i32(0i, 2147483647i), i32(-1i) * -24833i)), Struct_1(vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(20536u, 4294967295u, 66045u), vec3<u32>(1u, 64098u, 9195u)), ~vec3<u32>(1u, 7241u, 5217u)), ~1u), !(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, var_0.x, var_0.x))), vec4<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -348f), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(abs(2266f)))), vec3<bool>(all(!vec4<bool>(false, true, var_0.x, var_0.x)), true, !all(vec2<bool>(var_0.x, false))), _wgslsmith_sub_i32(-2147483647i, -(u_input.a.x >> (25507u % 32u)))));
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: u32) -> vec4<f32> {
    var var_0 = vec4<bool>(false, false, arg_0, true);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -137f))));
    var var_1 = Struct_4(func_1().a, 0u, Struct_1(_wgslsmith_mod_vec2_u32(~arg_1.c.a, vec2<u32>(1u, arg_2 | 63365u)), vec3<bool>(!func_1().c.b.x, arg_0, all(func_1().d.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_1.d.c, vec4<f32>(1000f, -609f, arg_1.a.c.x, -303f)))), vec3<bool>(arg_1.d.e == _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -19646i), vec2<i32>(u_input.b, -2147483647i)), true, !(global0.x > arg_1.a.c.x)), u_input.a.x), ~func_1().c.a.x);
    var var_2 = arg_1.c.c;
    var var_3 = any(var_1.c.b);
    return _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1276f), _wgslsmith_f_op_f32(max(var_2.x, arg_1.d.c.x))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.x), -1259f)))), var_1.a.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - -529f) + func_1().d.c.x)))), vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-arg_1.a.c.x), -728f, -1903f), select(vec4<bool>(true, !(!var_1.a.b.x), arg_1.d.d.x, true), select(vec4<bool>(arg_1.c.b.x, arg_0, !arg_0, u_input.b > u_input.b), vec4<bool>(true, any(var_0.ww), func_1().c.b.x, var_0.x), any(var_0.zz)), !(!(!vec4<bool>(var_1.a.d.x, false, true, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<f32>(global0.x, global0.x);
    let var_0 = Struct_1(~vec2<u32>(~1u, _wgslsmith_div_u32(~1u, reverseBits(50543u))), vec3<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true)), true, select(u_input.a.x | u_input.a.x, firstTrailingBit(-47540i), global0.x < 124f) != _wgslsmith_sub_i32(u_input.b << (15726u % 32u), ~u_input.b)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_5(true, func_1(), abs(0u)))))), !vec3<bool>(true, all(vec4<bool>(true, true, true, true)), true), 52939i);
    let var_1 = Struct_4(var_0, ~var_0.a.x, func_1().c, max(~(~1u), firstLeadingBit(var_0.a.x) << (min(0u, 1u) % 32u)) & ~(~var_0.a.x << (_wgslsmith_mod_u32(3569u, var_0.a.x) % 32u)));
    global1 = 321f;
    global0 = _wgslsmith_f_op_vec4_f32(func_5(true, Struct_2(var_0, var_1.c.b.x, Struct_1(var_1.a.a, vec3<bool>(any(var_0.b.xx), 4294967295u > var_1.c.a.x, all(var_0.b.zz)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(785f, var_1.c.c.x, 891f, var_1.c.c.x)), var_1.c.d, u_input.a.x & -1i), Struct_1(~func_4(vec4<i32>(var_1.c.e, u_input.a.x, -15048i, 16170i), var_1.c.b.x, 764f), select(vec3<bool>(true, var_0.b.x, var_1.c.b.x), vec3<bool>(false, true, false), var_1.a.d.x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(228f, global0.x, 1062f, var_1.c.c.x)))), !vec3<bool>(var_0.b.x, var_1.c.d.x, var_0.b.x), var_1.c.e)), ((abs(var_0.a.x) >> (var_1.d % 32u)) ^ var_1.a.a.x) >> (4294967295u % 32u))).yy;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-max(var_0.e | 1i, firstTrailingBit(-2147483647i)), ~_wgslsmith_mult_i32(_wgslsmith_add_i32(-1i, u_input.a.x), max(var_1.c.e, -1i))));
}

