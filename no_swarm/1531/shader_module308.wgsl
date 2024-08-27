struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
    c: Struct_3,
    d: vec2<i32>,
    e: bool,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: f32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(32744i, 2147483647i, 0i);

var<private> global1: Struct_2 = Struct_2(-2354f);

var<private> global2: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(1u, 1u, 0u), vec3<u32>(21806u, 1u, 4294967295u), vec3<u32>(96159u, 16063u, 1u), vec3<u32>(51330u, 4294967295u, 54327u), vec3<u32>(0u, 9026u, 18210u), vec3<u32>(66223u, 28132u, 36522u), vec3<u32>(4294967295u, 4294967295u, 17843u), vec3<u32>(1u, 0u, 0u));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: bool, arg_3: u32) -> vec3<bool> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(floor(global1.a)));
    var_0 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1111f - -1623f)), _wgslsmith_f_op_f32(1666f - _wgslsmith_div_f32(-3008f, arg_0.x)))));
    let var_1 = Struct_1(select(vec2<u32>(_wgslsmith_sub_u32(66789u, 1u), reverseBits(0u)), ~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3, u_input.a.x), vec2<u32>(arg_1, 52821u)), ~arg_3), select(vec2<bool>(true, true), select(select(vec2<bool>(arg_2, true), vec2<bool>(true, false), true), select(vec2<bool>(true, arg_2), vec2<bool>(arg_2, arg_2), arg_2), select(vec2<bool>(arg_2, true), vec2<bool>(false, arg_2), arg_2)), select(vec2<bool>(arg_2, arg_2), select(vec2<bool>(arg_2, false), vec2<bool>(arg_2, true), vec2<bool>(false, true)), select(vec2<bool>(arg_2, arg_2), vec2<bool>(false, true), vec2<bool>(arg_2, false))))), arg_1, true);
    global2 = array<vec3<u32>, 8>();
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -905f), vec4<f32>(1287f, arg_0.x, var_0.a, arg_0.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, global1.a, global1.a, -718f), vec4<f32>(global1.a, var_0.a, 1020f, arg_0.x))))))));
    return vec3<bool>(arg_2, _wgslsmith_div_f32(global1.a, -605f) < var_0.a, all(!select(!vec4<bool>(false, arg_2, var_1.c, false), !vec4<bool>(arg_2, false, arg_2, false), true)));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: Struct_3) -> vec2<u32> {
    global2 = array<vec3<u32>, 8>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) * global1.a);
    global0 = _wgslsmith_add_vec3_i32(arg_1, ~vec3<i32>(-firstTrailingBit(global0.x), arg_2.a ^ 1i, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -30435i, 2147483647i), arg_1), -2147483647i | u_input.b)));
    var var_1 = 1u;
    let var_2 = select(arg_0, !(!arg_0), select(select(select(arg_0, select(arg_0, vec4<bool>(true, false, false, false), arg_0), all(arg_0.xwx)), !arg_0, false), arg_0, all(select(!vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, true, arg_0.x), true))));
    return ~(~(~abs(vec2<u32>(arg_2.b.b, arg_2.b.b)) ^ abs(u_input.d.yy)));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_3 {
    var var_0 = 1u;
    var var_1 = func_4(vec4<bool>(arg_3.c, u_input.b > (min(0i, 1i) | -arg_0), all(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) - vec2<f32>(global1.a, global1.a)), 1u | arg_3.a.x, true, firstTrailingBit(51364u))), all(select(vec3<bool>(arg_3.c, false, arg_3.c), vec3<bool>(arg_3.c, arg_3.c, true), vec3<bool>(true, false, true)))), -select(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, 1i, 2147483647i), select(vec3<i32>(arg_2.x, 0i, u_input.b), vec3<i32>(u_input.b, 953i, -25152i), false)), ~_wgslsmith_mod_vec3_i32(arg_2, vec3<i32>(-2147483647i, -1i, 2147483647i)), vec3<bool>(arg_3.c, true, any(vec4<bool>(arg_3.c, arg_3.c, true, false)))), Struct_3(~1i, Struct_1(reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_3.b, 58636u), arg_3.a)), arg_3.b, !arg_3.c)));
    var var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(~u_input.b, max(37821i, 24269i), -59434i, -arg_2.x), ~firstLeadingBit(~_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, 2147483647i, u_input.b, global0.x), vec4<i32>(0i, 1i, 77215i, 92943i))));
    var var_3 = arg_3;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, 1540f)), _wgslsmith_div_f32(431f, _wgslsmith_div_f32(arg_1, arg_1)), !var_3.c))) != -238f;
    return Struct_3(_wgslsmith_mult_i32(abs(abs(_wgslsmith_mod_i32(-10797i, 3613i))), _wgslsmith_sub_i32(-32824i, arg_2.x)), arg_3);
}

fn func_5(arg_0: Struct_3, arg_1: vec2<u32>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -820f);
    var_0 = _wgslsmith_f_op_f32(-global1.a);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1207f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(global1.a - global1.a)))))));
    let var_1 = Struct_4(u_input.a.xy, Struct_2(_wgslsmith_f_op_f32(global1.a - global1.a)), arg_0, global0.xy, arg_0.b.c);
    global2 = array<vec3<u32>, 8>();
    return ~func_2(func_2(_wgslsmith_dot_vec4_i32(-vec4<i32>(global0.x, -2147483647i, 0i, -2147483647i), countOneBits(vec4<i32>(0i, global0.x, var_1.c.a, u_input.b))), _wgslsmith_f_op_f32(f32(-1f) * -1452f), vec3<i32>(~var_1.c.a, -10412i, _wgslsmith_clamp_i32(2147483647i, u_input.b, -104784i)), Struct_1(~var_1.c.b.a, ~arg_0.b.a.x, any(vec3<bool>(true, true, var_1.c.b.c)))).a, 1119f, _wgslsmith_clamp_vec3_i32(vec3<i32>(max(-93130i, global0.x), 0i << (arg_1.x % 32u), 47894i), vec3<i32>(32867i, arg_0.a, u_input.b), (vec3<i32>(-2147483647i, global0.x, 10476i) | vec3<i32>(-41445i, arg_0.a, arg_0.a)) >> (~u_input.d % vec3<u32>(32u))), var_1.c.b).b.a;
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1726f, -301f, global1.a), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -2137f), -981f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.a, global1.a, 1193f)))))))));
    global2 = array<vec3<u32>, 8>();
    var var_1 = vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_div_f32(global1.a, global1.a)))))));
    let var_2 = Struct_4(func_5(func_2(u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, global1.a, false))), vec3<i32>(_wgslsmith_sub_i32(-2147483647i, global0.x), select(u_input.b, -30237i, false), max(-2147483647i, -2147483647i)), Struct_1(~vec2<u32>(1u, 52192u), _wgslsmith_sub_u32(u_input.d.x, u_input.d.x), true)), _wgslsmith_sub_vec2_u32(select(~vec2<u32>(21897u, 4294967295u), vec2<u32>(u_input.e, 1900u), vec2<bool>(true, true)), u_input.d.xz)), Struct_2(var_1.x), Struct_3(-(~7335i ^ u_input.b), Struct_1(u_input.d.yy, abs(33285u), all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false))))), countOneBits(global0.zy), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(global1.a * 1291f)), -1557f)) == _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1242f)) - -1000f)));
    let var_3 = Struct_4(_wgslsmith_sub_vec2_u32(~vec2<u32>(min(var_2.c.b.b, 1u), abs(var_2.c.b.a.x)), vec2<u32>(_wgslsmith_sub_u32(var_2.a.x, max(u_input.c, u_input.e)), var_2.a.x)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.b.a, -648f)))), Struct_3(min(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, var_2.c.a, -44528i), vec4<i32>(0i, global0.x, 46569i, 1i))) | _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.d.x, var_2.c.a), ~global0.yz), func_2(-1i, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -(vec3<i32>(-2147483647i, u_input.b, 2147483647i) << (vec3<u32>(0u, u_input.e, u_input.a.x) % vec3<u32>(32u))), func_2(-8309i, _wgslsmith_f_op_f32(select(global1.a, var_2.b.a, false)), vec3<i32>(-14030i, global0.x, u_input.b), var_2.c.b).b).b), vec2<i32>(abs(u_input.b), u_input.b ^ global0.x), true);
    return 1i;
}

fn func_6(arg_0: i32, arg_1: bool, arg_2: Struct_2, arg_3: Struct_5) -> Struct_2 {
    let var_0 = 693f;
    global1 = Struct_2(_wgslsmith_f_op_f32(min(1279f, -1199f)));
    let var_1 = vec2<u32>(u_input.c, ~_wgslsmith_dot_vec3_u32(reverseBits(~vec3<u32>(24996u, 0u, u_input.e)), firstTrailingBit(countOneBits(vec3<u32>(1u, u_input.a.x, 17051u)))));
    let var_2 = Struct_4(func_4(!select(!vec4<bool>(arg_1, arg_1, false, false), select(vec4<bool>(arg_1, true, false, arg_1), vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(arg_1, true, false, arg_1)), any(vec4<bool>(arg_1, true, arg_1, arg_1))), max(-select(vec3<i32>(global0.x, -1i, global0.x), vec3<i32>(1i, -25298i, arg_0), false), max(arg_3.b.wyx, vec3<i32>(global0.x, 2147483647i, 0i)) >> (select(vec3<u32>(4294967295u, u_input.e, var_1.x), global2[_wgslsmith_index_u32(u_input.d.x, 8u)], vec3<bool>(arg_1, arg_1, false)) % vec3<u32>(32u))), Struct_3(10429i, Struct_1(u_input.a.yx, ~0u, global1.a == global1.a))), arg_2, Struct_3(_wgslsmith_clamp_i32(_wgslsmith_div_i32(arg_0, 1i), -6800i, max(15893i, _wgslsmith_add_i32(arg_3.b.x, 1i))), func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, arg_0, 0i), ~vec3<i32>(1i, u_input.b, u_input.b)), arg_3.c, arg_3.b.wzx, Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 24789u), var_1), ~u_input.a.x, true)).b), select(reverseBits(max(~arg_3.a.xz, vec2<i32>(global0.x, arg_3.a.x) ^ arg_3.d.yz)), vec2<i32>(-1i) * -reverseBits(arg_3.a.zz), !(!all(vec3<bool>(arg_1, true, false)))), all(!select(select(vec2<bool>(false, true), vec2<bool>(arg_1, true), arg_1), vec2<bool>(arg_1, arg_1), !arg_1)));
    global1 = Struct_2(_wgslsmith_f_op_f32(floor(var_0)));
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_6(max(func_1(), global0.x), true, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1f)) - global1.a)), Struct_5(select(-(vec3<i32>(u_input.b, u_input.b, 44606i) ^ vec3<i32>(6286i, global0.x, global0.x)), countOneBits(vec3<i32>(u_input.b, -1805i, 10612i) | vec3<i32>(global0.x, -20414i, u_input.b)), true), reverseBits(-reverseBits(vec4<i32>(global0.x, global0.x, 20966i, -2147483647i))), _wgslsmith_div_f32(-416f, -1445f), select(vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_sub_i32(global0.x, u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 0i, -49158i, global0.x), vec4<i32>(1i, global0.x, global0.x, u_input.b))), vec3<i32>(~global0.x, -21456i, i32(-1i) * -1i), !func_3(vec2<f32>(global1.a, global1.a), u_input.d.x, false, 65245u))));
    var var_0 = Struct_5(~vec3<i32>(-(~(-2147483647i)), select(-1i, u_input.b, false) ^ 0i, u_input.b), -vec4<i32>(func_2(global0.x, -414f, vec3<i32>(-31330i, -1i, u_input.b), Struct_1(u_input.d.zy, u_input.e, true)).a & 1i, _wgslsmith_add_i32(~global0.x, -45330i), 22127i, -u_input.b), global1.a, _wgslsmith_div_vec3_i32(vec3<i32>(abs(global0.x), _wgslsmith_dot_vec2_i32(global0.yx, vec2<i32>(-38262i, u_input.b)), 1067i), vec3<i32>(countOneBits(u_input.b), func_2(u_input.b, -115f, vec3<i32>(-2147483647i, u_input.b, global0.x), Struct_1(vec2<u32>(4294967295u, u_input.d.x), u_input.e, false)).a, global0.x)) >> (reverseBits(global2[_wgslsmith_index_u32(4294967295u, 8u)]) % vec3<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(max(1f, -185f));
    var var_2 = any(!select(vec2<bool>(true, true), vec2<bool>(false, true), false));
    let var_3 = Struct_4(_wgslsmith_add_vec2_u32(~(~vec2<u32>(1u, u_input.d.x)), ~func_4(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), true), vec3<i32>(u_input.b, global0.x, 77997i), Struct_3(global0.x, Struct_1(u_input.d.zz, u_input.c, true)))), Struct_2(692f), func_2(~(-1i), var_1, _wgslsmith_mod_vec3_i32(firstLeadingBit(_wgslsmith_sub_vec3_i32(var_0.a, vec3<i32>(u_input.b, 1i, u_input.b))), vec3<i32>(global0.x, global0.x, var_0.d.x) & _wgslsmith_clamp_vec3_i32(var_0.a, var_0.b.yzy, vec3<i32>(global0.x, var_0.d.x, 2147483647i))), Struct_1(u_input.a.zy, ~u_input.e, true)), vec2<i32>(-global0.x, ~1i) & -(select(global0.xx, global0.zz, false) << (~u_input.d.xy % vec2<u32>(32u))), true);
    let var_4 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(f32(-1f) * -411f)), _wgslsmith_f_op_f32(f32(-1f) * -618f), var_3.b.a))));
    let x = u_input.a;
    s_output = StorageBuffer(min(0i, ~_wgslsmith_dot_vec2_i32(global0.xx, global0.xx)) & firstTrailingBit(func_2(~66541i, _wgslsmith_f_op_f32(max(686f, var_3.b.a)), ~var_0.a, Struct_1(vec2<u32>(4294967295u, var_3.c.b.a.x), 5613u, true)).a), _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.a.x << (16407u % 32u), _wgslsmith_mod_u32(var_3.a.x, var_3.c.b.b), _wgslsmith_clamp_u32(12393u, u_input.a.x, 1u), 22691u), vec4<u32>(u_input.a.x, u_input.e, 1u, u_input.d.x) | firstTrailingBit(vec4<u32>(4294967295u, var_3.a.x, u_input.c, 1u))) & 18963u, -vec2<i32>(var_0.d.x, var_3.c.a));
}

