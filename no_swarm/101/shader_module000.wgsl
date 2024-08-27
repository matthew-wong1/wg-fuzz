struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: vec4<bool>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_2,
    d: bool,
    e: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: vec4<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_5, arg_3: Struct_4) -> u32 {
    global0 = Struct_1(vec2<f32>(arg_3.c, arg_2.a.b), true, -2728f);
    global0 = arg_0.c;
    var var_0 = ~15572i;
    let var_1 = vec3<i32>(firstTrailingBit(-22613i) ^ ~u_input.a, 69645i, 0i);
    let var_2 = arg_2;
    return arg_1;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_4(-28611i << (_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), 1u, func_3(Struct_2(Struct_1(vec2<f32>(global0.a.x, global0.a.x), global0.b, -227f), vec2<f32>(1000f, 206f), Struct_1(global0.a, global0.b, global0.a.x), vec4<bool>(false, true, global0.b, false), vec4<bool>(true, global0.b, false, global0.b)), 0u, Struct_5(Struct_4(-83975i, 619f, 1082f), global0.c, Struct_1(vec2<f32>(470f, 1708f), global0.b, global0.a.x)), Struct_4(-1i, global0.a.x, 2714f)) & 0u) % 32u), _wgslsmith_f_op_f32(-global0.a.x), -576f);
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.c, _wgslsmith_f_op_f32(max(var_0.c, global0.c)))))), -10672i > (u_input.a ^ -u_input.a), global0.a.x);
    let var_1 = max(max(1u, firstLeadingBit(~78318u)), ~56959u);
    global0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -387f)), 229f), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.b))));
    var var_2 = u_input.a;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.c, _wgslsmith_f_op_f32(trunc(-367f))))), global0.b, _wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, var_0.b)) + global0.a))), Struct_1(_wgslsmith_f_op_vec2_f32(-global0.a), global0.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - _wgslsmith_f_op_f32(-var_0.b))))), select(select(vec4<bool>(any(vec4<bool>(true, false, global0.b, global0.b)), all(vec4<bool>(global0.b, true, global0.b, false)), var_1 <= var_1, false), vec4<bool>(global0.b, all(vec4<bool>(global0.b, global0.b, false, true)), global0.b, global0.b), all(!vec4<bool>(global0.b, true, false, false))), vec4<bool>(false, true, true, all(select(vec4<bool>(global0.b, false, false, false), vec4<bool>(false, true, true, global0.b), vec4<bool>(true, false, true, global0.b)))), all(vec2<bool>(any(vec2<bool>(true, false)), false))), select(select(!(!vec4<bool>(global0.b, global0.b, global0.b, global0.b)), select(vec4<bool>(false, false, global0.b, global0.b), vec4<bool>(global0.b, true, true, global0.b), false), !(var_0.a != 32395i)), !select(!vec4<bool>(global0.b, global0.b, true, false), select(vec4<bool>(global0.b, global0.b, true, true), vec4<bool>(true, global0.b, false, true), global0.b), true), all(!select(vec3<bool>(global0.b, true, global0.b), vec3<bool>(true, global0.b, global0.b), vec3<bool>(true, true, global0.b)))));
}

fn func_4(arg_0: Struct_3) -> vec4<bool> {
    var var_0 = Struct_3(arg_0.c.d, func_2().c, arg_0.c, true, -abs(vec4<i32>(-arg_0.e.x, 0i, 27369i, arg_0.e.x)));
    let var_1 = ~(~(~vec3<u32>(1u, firstLeadingBit(4294967295u), 1u)));
    var var_2 = Struct_5(Struct_4(-countOneBits(~(-22829i)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.b.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-409f - global0.a.x) * global0.c))), _wgslsmith_f_op_f32(-func_2().b.x)), 401f, var_0.b);
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(floor(1440f))))), false, _wgslsmith_f_op_f32(abs(func_2().a.c)));
    let var_3 = !vec2<bool>(!(!select(true, true, true)), !(all(var_0.a.wyy) & true));
    return select(!select(arg_0.c.d, arg_0.c.d, arg_0.a), vec4<bool>(!func_2().e.x, !(func_2().d.x || var_3.x), var_0.c.c.b, all(func_2().d)), var_0.a);
}

fn func_5(arg_0: vec4<bool>, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_4(~u_input.a << (~(~1u) % 32u), -531f, 936f);
    var var_1 = arg_0.zxy;
    var_0 = Struct_4(~_wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 60901i)), 39528i | var_0.a), 1i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(var_0.c, _wgslsmith_f_op_f32(max(global0.a.x, -693f)), false)))), var_0.c), -750f);
    var var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, arg_1, arg_1), vec3<u32>(arg_1, arg_1, 1u)), 0u)), ~vec2<u32>(arg_1, 0u) << (vec2<u32>(arg_1, 14115u) % vec2<u32>(32u)), ~select(vec2<u32>(arg_1, 0u), vec2<u32>(arg_1, 4294967295u), global0.b) ^ vec2<u32>(~arg_1, _wgslsmith_clamp_u32(arg_1, arg_1, arg_1))), ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1, 4294967295u), vec2<u32>(34842u, arg_1))) >> (min(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1, 1u), vec2<u32>(arg_1, arg_1)), max(vec2<u32>(arg_1, 4294967295u), vec2<u32>(arg_1, 49767u))), reverseBits(select(vec2<u32>(91907u, arg_1), vec2<u32>(73147u, arg_1), vec2<bool>(false, var_1.x)))) % vec2<u32>(32u)));
    let var_3 = vec3<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(-75225i, u_input.a), 7090i), _wgslsmith_mult_i32(u_input.a, -u_input.a), _wgslsmith_sub_i32(~min(~u_input.a, u_input.a), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(var_0.a, u_input.a, var_0.a, 31993i) << (vec4<u32>(41053u, arg_1, arg_1, arg_1) % vec4<u32>(32u))), ~(~vec4<i32>(6183i, u_input.a, u_input.a, -21875i)))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-190f, var_0.c) - 1134f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.b, global0.a.x), global0.a)) + _wgslsmith_f_op_vec2_f32(-global0.a)))), arg_0.x, global0.c);
}

fn func_1() -> Struct_4 {
    var var_0 = vec2<i32>(max(i32(-1i) * -abs(-21774i), -10037i), -1i);
    global0 = func_5(func_4(Struct_3(!(!vec4<bool>(global0.b, global0.b, true, global0.b)), Struct_1(_wgslsmith_f_op_vec2_f32(-global0.a), all(vec3<bool>(global0.b, true, global0.b)), global0.c), func_2(), !global0.b, _wgslsmith_div_vec4_i32(vec4<i32>(-1i, var_0.x, 2147483647i, u_input.a), vec4<i32>(62269i, 11420i, var_0.x, 0i)))), firstTrailingBit(~firstTrailingBit(~1u)));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c, -674f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-607f, global0.c))) * vec2<f32>(global0.c, -1000f)))), any(!func_4(Struct_3(vec4<bool>(global0.b, true, false, true), Struct_1(vec2<f32>(-1027f, global0.c), true, -1343f), Struct_2(Struct_1(vec2<f32>(-710f, 1493f), false, -445f), global0.a, Struct_1(global0.a, true, 212f), vec4<bool>(false, global0.b, true, global0.b), vec4<bool>(global0.b, global0.b, global0.b, global0.b)), global0.b, vec4<i32>(1i, 8405i, var_0.x, 0i)))), _wgslsmith_f_op_f32(max(290f, -1055f)));
    var var_1 = vec4<i32>(var_0.x, 0i, firstTrailingBit(1i), firstLeadingBit(~var_0.x)) & vec4<i32>(u_input.a, _wgslsmith_sub_i32(var_0.x, firstTrailingBit(-u_input.a)), abs(1i), 0i);
    var_1 = -vec4<i32>(_wgslsmith_clamp_i32(var_1.x, ~_wgslsmith_div_i32(50487i, var_1.x), u_input.a), _wgslsmith_mod_i32(var_0.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a, -1i, var_0.x), vec4<i32>(var_0.x, 0i, u_input.a, -1i))), _wgslsmith_mod_i32(-10100i, 2147483647i), u_input.a);
    return Struct_4(-countOneBits(u_input.a), _wgslsmith_f_op_f32(min(func_2().c.a.x, 162f)), -166f);
}

fn func_6(arg_0: Struct_4) -> Struct_1 {
    let var_0 = -1183f;
    global0 = Struct_1(global0.a, any(!select(select(vec3<bool>(global0.b, true, true), vec3<bool>(global0.b, false, false), vec3<bool>(global0.b, global0.b, false)), !vec3<bool>(global0.b, global0.b, global0.b), !vec3<bool>(global0.b, true, false))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0))))));
    global0 = func_5(select(!(!(!vec4<bool>(false, global0.b, true, true))), !select(vec4<bool>(false, false, true, global0.b), !vec4<bool>(global0.b, global0.b, false, global0.b), func_4(Struct_3(vec4<bool>(global0.b, global0.b, global0.b, global0.b), Struct_1(vec2<f32>(908f, var_0), global0.b, 691f), Struct_2(Struct_1(global0.a, global0.b, var_0), global0.a, Struct_1(vec2<f32>(var_0, arg_0.b), global0.b, var_0), vec4<bool>(false, true, false, global0.b), vec4<bool>(global0.b, true, global0.b, global0.b)), true, vec4<i32>(23727i, -2147483647i, arg_0.a, 2147483647i)))), !vec4<bool>(false, any(vec3<bool>(true, false, global0.b)), false, false)), 1u);
    let var_1 = Struct_5(func_1(), _wgslsmith_f_op_f32(1237f * _wgslsmith_f_op_f32(-arg_0.b)), func_2().a);
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.c, global0.c))), false, 670f);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(global0.a))), true, _wgslsmith_div_f32(360f, _wgslsmith_f_op_f32(f32(-1f) * -426f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(func_1());
    global0 = Struct_1(vec2<f32>(global0.a.x, -801f), true, _wgslsmith_f_op_f32(-global0.a.x));
    var var_0 = ~(_wgslsmith_add_i32(~select(-1i, u_input.a, global0.b), 1i) >> (~0u % 32u));
    global0 = func_6(Struct_4(~(-u_input.a << (~1u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c + -1000f) + 1011f)), -953f));
    let var_1 = Struct_3(vec4<bool>(global0.b, false, all(!vec3<bool>(global0.b, global0.b, global0.b)), false), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(679f, global0.c), global0.a), global0.a) + global0.a), global0.b, _wgslsmith_f_op_f32(step(global0.c, func_2().a.c))), Struct_2(func_2().a, vec2<f32>(func_6(Struct_4(-1i, global0.a.x, global0.a.x)).a.x, _wgslsmith_div_f32(-450f, func_5(vec4<bool>(false, false, false, false), 1u).a.x)), func_6(func_1()), vec4<bool>(any(vec2<bool>(true, true)), all(func_2().e.ww), false, func_5(func_4(Struct_3(vec4<bool>(global0.b, false, global0.b, global0.b), Struct_1(vec2<f32>(-1000f, 555f), global0.b, -953f), Struct_2(Struct_1(global0.a, false, global0.c), vec2<f32>(727f, 229f), Struct_1(global0.a, global0.b, 377f), vec4<bool>(global0.b, false, global0.b, true), vec4<bool>(global0.b, global0.b, global0.b, global0.b)), global0.b, vec4<i32>(2147483647i, 19336i, u_input.a, -1i))), ~0u).b), func_2().e), !any(!select(vec4<bool>(global0.b, false, global0.b, true), vec4<bool>(global0.b, global0.b, false, false), true)), min(abs(~max(vec4<i32>(-1i, u_input.a, u_input.a, u_input.a), vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a))), select(reverseBits(-vec4<i32>(-9717i, 59487i, u_input.a, u_input.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(-21932i, 31558i, u_input.a, 1i), ~vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i)), any(!vec3<bool>(global0.b, global0.b, global0.b)))));
    let var_2 = ~var_1.e.x;
    global0 = func_6(func_1());
    var var_3 = Struct_5(Struct_4(-1i, var_1.c.b.x, _wgslsmith_f_op_f32(-global0.c)), var_1.b.c, var_1.c.c);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(min(17166u, _wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 4294967295u, 83647u), vec4<u32>(48659u, 4294967295u, 0u, 0u))))), var_1.b.a.x, _wgslsmith_clamp_vec3_i32(vec3<i32>(func_1().a, -11811i, 0i), ~((vec3<i32>(var_2, 32981i, 13568i) >> (vec3<u32>(68774u, 22667u, 1u) % vec3<u32>(32u))) | vec3<i32>(var_1.e.x, 19298i, 0i)), select(-select(vec3<i32>(-2147483647i, 0i, -3648i), var_1.e.ywz, true), vec3<i32>(_wgslsmith_dot_vec2_i32(var_1.e.wx, vec2<i32>(1i, var_3.a.a)), _wgslsmith_dot_vec3_i32(var_1.e.xzw, var_1.e.yww), 49042i | u_input.a), vec3<bool>(false || var_3.c.b, global0.b, !var_1.d))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-620f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.a.c) * func_6(Struct_4(var_2, global0.c, 2339f)).a.x), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global0.c, var_3.b))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.b.c + global0.a.x), _wgslsmith_f_op_f32(358f * 1000f))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-511f * -1000f) + var_3.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-552f - var_1.b.c)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(var_3.a.b, 420f, var_3.c.b)), _wgslsmith_f_op_f32(var_1.c.c.c + -1312f))), -100f), vec4<f32>(func_2().c.a.x, -1729f, 1101f, var_3.a.b)));
}

