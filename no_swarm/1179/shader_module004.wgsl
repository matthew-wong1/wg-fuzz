struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<i32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 20901u;

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(false, 4294967295u, vec4<i32>(1i, 1i, 0i, 0i), false, true)), Struct_1(false, 26090u, vec4<i32>(-37444i, -1i, 0i, i32(-2147483648)), false, false), Struct_2(Struct_1(false, 4294967295u, vec4<i32>(-3904i, -1i, -53193i, -12250i), true, true)), Struct_2(Struct_1(false, 4294967295u, vec4<i32>(1i, i32(-2147483648), 28529i, 2147483647i), false, false)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: Struct_1) -> bool {
    var var_0 = Struct_2(arg_3);
    let var_1 = arg_1;
    var_0 = global1.d;
    global1 = Struct_3(var_1.a, arg_3, Struct_2(arg_3), var_1.a);
    let var_2 = -38693i;
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: f32) -> vec2<f32> {
    let var_0 = global1.b.c.zxw >> (~vec3<u32>(firstLeadingBit(~u_input.c.x), 1u, arg_0.b) % vec3<u32>(32u));
    let var_1 = !vec3<bool>(true, arg_0.d, true);
    let var_2 = _wgslsmith_clamp_u32(~(~_wgslsmith_mult_u32(u_input.c.x, 72347u)), ~u_input.c.x, u_input.c.x);
    let var_3 = arg_1.d.a;
    let var_4 = select(!select(vec4<bool>(!var_3.a, var_1.x || global1.d.a.d, true, arg_1.b.a | global1.b.a), vec4<bool>(global1.c.a.d, !arg_0.a, false, !global1.a.a.a), !select(vec4<bool>(arg_1.a.a.d, true, false, false), vec4<bool>(var_1.x, arg_0.a, var_1.x, false), false)), vec4<bool>(global1.a.a.e, arg_1.d.a.e, all(select(vec4<bool>(false, arg_0.e, arg_0.a, true), select(vec4<bool>(false, arg_0.e, true, var_1.x), vec4<bool>(true, false, arg_1.a.a.d, true), global1.a.a.d), true)), any(!select(vec4<bool>(global1.a.a.d, var_1.x, false, false), vec4<bool>(false, arg_0.e, arg_1.b.e, var_3.a), arg_0.e))), false);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, 1659f)))) - vec2<f32>(510f, _wgslsmith_f_op_f32(356f * arg_2))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, -1278f))), ((arg_1.a.a.a && true) || true) || !(!global1.d.a.d))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1619f, arg_2) + vec2<f32>(-1120f, 760f)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1714f, arg_2))) * _wgslsmith_div_vec2_f32(vec2<f32>(arg_2, arg_2), vec2<f32>(arg_2, arg_2))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1771f, -1002f))), vec2<f32>(491f, -126f)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec4<u32>) -> bool {
    let var_0 = global1.c;
    global0 = countOneBits(_wgslsmith_add_u32(~4294967295u, global1.c.a.b));
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1.x, -948f)));
    global0 = _wgslsmith_sub_u32(~arg_2.x, firstTrailingBit(1u));
    let var_2 = Struct_2(Struct_1(true, 4294967295u, var_0.a.c, var_0.a.a, global1.d.a.a));
    return false;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: bool) -> vec4<i32> {
    let var_0 = u_input.c.x;
    let var_1 = select(!select(select(vec4<bool>(arg_2, false, false, true), !vec4<bool>(false, true, true, global1.c.a.e), !vec4<bool>(false, false, global1.c.a.e, global1.a.a.e)), vec4<bool>(func_2(31543i, Struct_3(Struct_2(global1.c.a), Struct_1(global1.c.a.a, global1.a.a.b, vec4<i32>(1i, arg_0.x, u_input.b.x, u_input.a), true, global1.b.d), Struct_2(Struct_1(arg_2, 1u, u_input.b, true, global1.b.a)), global1.d), vec2<i32>(arg_0.x, -16110i), global1.c.a), global1.b.d, select(arg_2, false, global1.d.a.a), false), true), !vec4<bool>(true, arg_2, func_4(Struct_1(global1.d.a.d, 77958u, vec4<i32>(arg_0.x, 48626i, arg_0.x, arg_0.x), true, false), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(arg_2, 1u, u_input.b, false, false), Struct_3(global1.d, Struct_1(arg_2, global1.a.a.b, u_input.b, false, false), Struct_2(Struct_1(true, 73524u, u_input.b, arg_2, global1.b.a)), global1.c), 439f)), _wgslsmith_clamp_vec4_u32(u_input.c, vec4<u32>(4294967295u, 2107u, 0u, global1.a.a.b), vec4<u32>(4294967295u, var_0, 1u, u_input.c.x))), true), select(!vec4<bool>(any(vec2<bool>(false, true)), true, select(true, true, true), true), !select(select(vec4<bool>(false, global1.b.e, arg_2, false), vec4<bool>(arg_2, true, false, true), arg_2), select(vec4<bool>(true, arg_2, arg_2, true), vec4<bool>(false, false, global1.c.a.a, false), vec4<bool>(true, global1.a.a.a, true, arg_2)), !vec4<bool>(false, global1.c.a.a, true, true)), select(!vec4<bool>(arg_2, true, arg_2, arg_2), vec4<bool>(global1.b.b > 0u, global1.b.e, true, false), false)));
    let var_2 = select(!var_1, select(var_1, !vec4<bool>(arg_2, true, !global1.b.e, false), -533f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f)))), !(14043u < _wgslsmith_add_u32(1u, ~arg_1.x)));
    let var_3 = Struct_2(Struct_1(any(select(select(vec4<bool>(true, true, arg_2, var_2.x), var_2, vec4<bool>(arg_2, false, false, global1.c.a.a)), var_2, 59186u > var_0)), ~1u, ~(-(vec4<i32>(1i, global1.a.a.c.x, -51253i, u_input.a) << (vec4<u32>(global1.c.a.b, global1.a.a.b, 51078u, 54345u) % vec4<u32>(32u)))), var_1.x, true));
    let var_4 = vec4<bool>(true, !var_2.x, true, true);
    return ~_wgslsmith_div_vec4_i32(min(vec4<i32>(1i, ~1i, global1.a.a.c.x, ~0i), vec4<i32>(-1i, -1i, u_input.b.x, 1104i)), select(~vec4<i32>(u_input.a, 35740i, -1i, var_3.a.c.x), _wgslsmith_div_vec4_i32(global1.a.a.c | var_3.a.c, ~vec4<i32>(5497i, -18552i, -806i, u_input.b.x)), !(!vec4<bool>(var_2.x, global1.d.a.a, var_3.a.a, false))));
}

fn func_5(arg_0: Struct_1) -> Struct_3 {
    let var_0 = ~(u_input.b.xz >> (_wgslsmith_mult_vec2_u32(vec2<u32>(0u, arg_0.b), ~u_input.c.zx) % vec2<u32>(32u))) >> (~_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(u_input.c.wy, vec2<u32>(4294967295u, global1.d.a.b)), _wgslsmith_add_vec2_u32(u_input.c.wx, u_input.c.yw)), vec2<u32>(39594u, arg_0.b >> (44756u % 32u))) % vec2<u32>(32u));
    global1 = Struct_3(global1.c, Struct_1(arg_0.d, 4294967295u, global1.b.c, all(select(select(vec3<bool>(false, arg_0.d, global1.c.a.a), vec3<bool>(false, true, false), vec3<bool>(arg_0.d, arg_0.d, false)), select(vec3<bool>(false, global1.b.a, true), vec3<bool>(true, arg_0.e, true), vec3<bool>(global1.d.a.d, false, global1.c.a.e)), !global1.a.a.e)), any(vec3<bool>(true, true, arg_0.d | arg_0.d))), Struct_2(Struct_1(all(vec2<bool>(arg_0.a, true)), u_input.c.x, global1.d.a.c, any(!vec4<bool>(true, false, arg_0.a, true)), any(!vec3<bool>(true, true, global1.b.d)))), global1.d);
    var var_1 = global1.d.a;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, 1029f, -1597f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1219f, -1096f, 557f)), !vec3<bool>(true, global1.c.a.d, global1.b.d))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-208f, 1093f, 561f) - vec3<f32>(784f, 1745f, -1106f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1589f, -320f, -2162f))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -470f), -718f, _wgslsmith_f_op_f32(abs(859f))))));
    let var_3 = Struct_3(global1.c, global1.b, Struct_2(Struct_1(all(vec2<bool>(arg_0.e, global1.d.a.e)), global1.a.a.b, arg_0.c, true, (i32(-1i) * -2147483647i) >= firstTrailingBit(u_input.b.x))), Struct_2(global1.d.a));
    return Struct_3(var_3.a, Struct_1(all(!select(vec3<bool>(true, var_1.e, var_3.c.a.e), vec3<bool>(true, true, false), true)), var_1.b & ~_wgslsmith_sub_u32(var_3.b.b, var_3.b.b), vec4<i32>(~var_3.b.c.x, 25258i, max(global1.d.a.c.x, u_input.b.x), 24457i), all(!vec2<bool>(true, var_1.d)), true), Struct_2(Struct_1(var_1.e, 1u, var_3.d.a.c, true, func_4(global1.a.a, vec2<f32>(var_2.x, var_2.x), u_input.c))), var_3.c);
}

fn func_6(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: f32) -> Struct_1 {
    let var_0 = arg_0.a;
    let var_1 = vec2<bool>(true, var_0.a.a);
    let var_2 = arg_2;
    global0 = arg_0.c.a.b;
    var var_3 = var_0.a.c.zxy >> (~_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.c.a.b, 4294967295u, 0u), u_input.c.wzw), u_input.c.zzz >> (u_input.c.xwy % vec3<u32>(32u))), vec3<u32>(_wgslsmith_div_u32(arg_0.d.a.b, 1u), 21674u, ~72094u)) % vec3<u32>(32u));
    return arg_0.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_6(func_5(Struct_1(global1.c.a.a, ~u_input.c.x, func_1(u_input.b.xxw, vec3<u32>(48740u, 4294967295u, u_input.c.x), true), true, true)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1571f, -902f, -492f, 1904f), vec4<f32>(271f, 805f, 1643f, -330f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-744f, 918f, 573f, 108f) + vec4<f32>(-496f, 205f, -685f, -617f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(true, global1.a.a.b, vec4<i32>(0i, 0i, -1i, 561i), global1.d.a.d, global1.b.e), Struct_3(Struct_2(Struct_1(false, u_input.c.x, u_input.b, false, global1.d.a.d)), Struct_1(false, global1.c.a.b, vec4<i32>(6905i, global1.b.c.x, u_input.b.x, 0i), global1.d.a.d, global1.a.a.d), global1.c, Struct_2(global1.d.a)), 414f)).x + _wgslsmith_f_op_f32(1283f - -483f)), -185f)));
    let var_1 = ~global1.c.a.c.x >> (~var_0.a.b % 32u);
    global0 = min(func_6(Struct_3(func_5(global1.a.a).a, global1.c.a, func_5(Struct_1(false, 62213u, vec4<i32>(var_1, 71791i, var_0.a.c.x, u_input.a), false, global1.c.a.e)).c, func_5(Struct_1(true, 4294967295u, u_input.b, false, true)).a), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(156f, -2371f, -1420f, -181f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_div_f32(699f, -778f))))).b, global1.d.a.b);
    let var_2 = !var_0.a.d;
    global1 = func_5(func_6(Struct_3(var_0, global1.d.a, func_5(func_5(var_0.a).b).a, var_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-718f, -154f, 1508f, -359f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -699f, -1138f, -1036f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(295f, 1069f, 1689f, 978f) + vec4<f32>(-844f, -521f, 705f, 1092f))), 452f));
    let var_3 = func_5(global1.d.a);
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2251f, -1428f, 564f, -402f)))) * vec4<f32>(-620f, _wgslsmith_f_op_f32(903f + 250f), _wgslsmith_f_op_f32(step(791f, -501f)), -584f))));
    let var_5 = var_3.c.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(var_4.yxw, _wgslsmith_f_op_vec3_f32(-var_4.zxy))), _wgslsmith_add_i32(-42663i, i32(-1i) * -var_0.a.c.x), -496f, var_4, var_1);
}

