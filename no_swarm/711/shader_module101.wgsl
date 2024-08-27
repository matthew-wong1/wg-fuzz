struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: bool,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<i32>(2147483647i, 24474i));

var<private> global1: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: i32) -> vec4<i32> {
    global1 = vec3<bool>(global1.x, global1.x, !any(select(global1.yz, select(vec2<bool>(global1.x, false), global1.yx, true), vec2<bool>(global1.x, true))));
    var var_0 = min(min(countOneBits(28860u) >> (u_input.a % 32u), max(18803u, 0u)), ~1u);
    global1 = select(!(!select(select(vec3<bool>(arg_2.a.x, false, global1.x), arg_2.a.xyy, vec3<bool>(false, true, arg_2.a.x)), arg_2.a.yxw, arg_2.a.xzz)), vec3<bool>((all(vec2<bool>(false, false)) && !global1.x) | !global1.x, global1.x, any(vec2<bool>(false, u_input.a != 1u))), vec3<bool>(global1.x, any(select(select(arg_2.a, arg_2.a, arg_2.a), select(arg_2.a, arg_2.a, vec4<bool>(arg_2.a.x, true, true, false)), true)), false));
    var var_1 = vec2<i32>(i32(-1i) * -_wgslsmith_dot_vec3_i32(abs(vec3<i32>(arg_3, arg_1.a.x, -1i)), arg_0.xzw >> (u_input.c % vec3<u32>(32u))), _wgslsmith_dot_vec2_i32(-(~global0.a), ~global0.a));
    var var_2 = all(arg_2.a.yxw) || true;
    return -arg_0 >> ((_wgslsmith_mod_vec4_u32(firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(23088u, u_input.a, 1u, u_input.a), vec4<u32>(u_input.a, u_input.c.x, 0u, 43502u))), ~vec4<u32>(u_input.c.x, u_input.c.x, u_input.a, u_input.c.x)) | select(firstTrailingBit(firstTrailingBit(vec4<u32>(u_input.c.x, 0u, u_input.c.x, u_input.a))), select(_wgslsmith_mult_vec4_u32(vec4<u32>(12283u, 101222u, 4294967295u, u_input.c.x), vec4<u32>(1u, u_input.a, 50662u, 4294967295u)), vec4<u32>(u_input.c.x, 0u, u_input.a, u_input.c.x), global1.x & false), vec4<bool>(false, true, true, all(arg_2.a.yyy)))) % vec4<u32>(32u));
}

fn func_2() -> Struct_2 {
    global0 = Struct_3(global0.a);
    let var_0 = -(abs(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global0.a.x, 21566i), vec3<i32>(u_input.b, 3013i, u_input.b)), _wgslsmith_div_i32(-2147483647i, u_input.b))) & global0.a);
    var var_1 = Struct_2(Struct_1(!select(!vec4<bool>(global1.x, global1.x, global1.x, true), !vec4<bool>(global1.x, global1.x, global1.x, global1.x), select(vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(false, false, false, false), global1.x))), abs(u_input.c), select(true, any(vec3<bool>(false, true, global1.x)) | true, true), vec3<bool>(global1.x, global1.x, !(!(global0.a.x <= -1i))));
    var var_2 = abs(_wgslsmith_mod_vec4_i32(countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, 20373i, 25401i, -34612i), _wgslsmith_add_vec4_i32(vec4<i32>(42866i, -2147483647i, -1i, var_0.x), vec4<i32>(u_input.b, var_0.x, global0.a.x, u_input.b)))), -(~func_3(vec4<i32>(2872i, var_0.x, global0.a.x, -27422i), Struct_3(vec2<i32>(var_0.x, global0.a.x)), Struct_1(vec4<bool>(true, false, var_1.c, var_1.d.x)), -32674i))));
    var var_3 = Struct_3(var_2.yy);
    return Struct_2(Struct_1(select(vec4<bool>(global1.x, all(global1.xz), any(var_1.a.a), true), vec4<bool>(true, !global1.x, var_1.a.a.x, !global1.x), select(vec4<bool>(global1.x, var_1.c, true, var_1.c), vec4<bool>(true, false, var_1.c, global1.x), !vec4<bool>(global1.x, true, global1.x, global1.x)))), select(vec3<u32>(u_input.c.x, ~1u, ~firstTrailingBit(0u)), vec3<u32>(0u, _wgslsmith_clamp_u32(var_1.b.x, 16960u, u_input.c.x), 25260u & var_1.b.x), true), select(global1.x, _wgslsmith_add_i32(~var_3.a.x, _wgslsmith_dot_vec3_i32(var_2.wxw, vec3<i32>(var_3.a.x, -1i, -4694i))) < ~(-u_input.b), var_1.d.x), !vec3<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, global0.a.x, var_2.x, -2147483647i), vec4<i32>(-36649i, u_input.b, 1i, u_input.b)) <= ~u_input.b, false, _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.a.x, u_input.b, 1970i, 61466i), vec4<i32>(global0.a.x, 79746i, var_3.a.x, u_input.b)) == _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, 1i), vec2<i32>(global0.a.x, u_input.b))));
}

fn func_4(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: i32) -> i32 {
    var var_0 = all(func_2().d.zy);
    let var_1 = select(!arg_2.a.a, vec4<bool>(!any(arg_2.a.a.yyx), true, (arg_2.b.x < countOneBits(0u)) & all(vec4<bool>(false, false, false, global1.x)), true), func_2().a.a);
    var_0 = any(select(!select(var_1, !vec4<bool>(false, var_1.x, true, false), 1i > global0.a.x), !var_1, arg_2.c));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2595f, arg_1.x, arg_0, 1027f) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, 888f, 353f, -1152f), vec4<f32>(arg_0, 314f, arg_1.x, arg_1.x))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(arg_0, arg_0)), _wgslsmith_f_op_f32(-arg_1.x), arg_0, arg_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1987f, -1296f, arg_1.x, 1376f))) - vec4<f32>(_wgslsmith_f_op_f32(arg_0 - -1323f), _wgslsmith_f_op_f32(round(-761f)), _wgslsmith_f_op_f32(round(145f)), _wgslsmith_f_op_f32(abs(arg_1.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_1.x, 1171f, arg_1.x) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, arg_0, 480f, -1000f)))))));
    var var_3 = _wgslsmith_sub_vec3_u32(firstTrailingBit(arg_2.b), vec3<u32>(u_input.c.x, reverseBits(~82982u), func_2().b.x));
    return _wgslsmith_add_i32(arg_3, 0i);
}

fn func_1() -> Struct_4 {
    global0 = Struct_3(vec2<i32>(_wgslsmith_mod_i32(~4510i, i32(-1i) * -u_input.b), select(func_4(-891f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-459f, 298f, -485f)), func_2(), u_input.b << (9688u % 32u)), ~u_input.b, false)));
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(896f - 706f), _wgslsmith_div_f32(865f, 1000f), _wgslsmith_f_op_f32(step(385f, -1464f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-492f, -514f, -347f))))));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-var_0.x))));
    var var_2 = u_input.c;
    var var_3 = global1.x & false;
    return Struct_4(_wgslsmith_div_f32(-985f, -174f));
}

fn func_5(arg_0: f32, arg_1: Struct_4, arg_2: bool) -> f32 {
    var var_0 = func_2();
    var var_1 = true;
    let var_2 = 1i;
    let var_3 = func_2().b.x;
    global0 = Struct_3(~vec2<i32>(var_2, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2, u_input.b), _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, 116137i), global0.a))));
    return _wgslsmith_f_op_f32(f32(-1f) * -2238f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(vec3<bool>(global1.x, true, true), select(!(!select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, false, global1.x))), select(select(select(vec3<bool>(true, true, false), vec3<bool>(global1.x, global1.x, true), vec3<bool>(false, true, true)), vec3<bool>(global1.x, false, false), global1.x), vec3<bool>(global1.x, true, global1.x), select(select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(global1.x, false, false), vec3<bool>(false, true, false)), vec3<bool>(global1.x, true, true), !vec3<bool>(false, global1.x, true))), any(!vec3<bool>(false, global1.x, global1.x))), select(select(vec3<bool>(!global1.x, all(vec3<bool>(global1.x, true, true)), select(false, global1.x, true)), !(!vec3<bool>(global1.x, global1.x, global1.x)), false), select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(true, any(vec2<bool>(true, global1.x)), true), global1.x), !(!(!vec3<bool>(global1.x, global1.x, global1.x)))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2302f * -1392f)) + _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1431f)) * -328f), func_1(), global1.x == true))));
    var var_1 = abs(~217u);
    let var_2 = func_2().a.a.ww;
    let var_3 = countOneBits(~u_input.a) ^ firstLeadingBit(~(~47994u) >> (firstTrailingBit(~0u) % 32u));
    var_1 = u_input.c.x;
    let var_4 = true;
    var var_5 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(876f, _wgslsmith_f_op_f32(f32(-1f) * -1343f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2172f, -1139f)), _wgslsmith_f_op_f32(f32(-1f) * -1294f))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.xz ^ u_input.c.yy, firstLeadingBit(_wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.b, global0.a.x, -2147483647i), -vec3<i32>(u_input.b, 10848i, u_input.b)) ^ vec3<i32>(_wgslsmith_div_i32(-34641i, u_input.b), -2147483647i, _wgslsmith_mult_i32(global0.a.x, u_input.b))), -min(select(global0.a, vec2<i32>(global0.a.x, -11894i), vec2<bool>(true, true)), vec2<i32>(~1i, _wgslsmith_mult_i32(-26798i, u_input.b))), 0u, ~(~32317u));
}

