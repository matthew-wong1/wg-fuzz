struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec4<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(-1018f, 1235f, -184f, 2297f), vec3<i32>(1i, -25890i, 1i), vec3<u32>(51222u, 11909u, 25553u), 0i, vec4<u32>(12394u, 12911u, 1u, 76102u));

var<private> global1: vec2<bool>;

var<private> global2: array<vec3<f32>, 21> = array<vec3<f32>, 21>(vec3<f32>(-1032f, -1480f, -482f), vec3<f32>(1052f, -695f, -1000f), vec3<f32>(-477f, -626f, -1077f), vec3<f32>(-663f, -830f, 846f), vec3<f32>(437f, 335f, -482f), vec3<f32>(897f, -886f, -562f), vec3<f32>(-325f, 1803f, 449f), vec3<f32>(-157f, -192f, 604f), vec3<f32>(286f, -611f, 905f), vec3<f32>(814f, 402f, -1193f), vec3<f32>(194f, -378f, 1006f), vec3<f32>(-811f, 1830f, 848f), vec3<f32>(-719f, 509f, 1427f), vec3<f32>(1030f, -790f, 1000f), vec3<f32>(-1315f, -472f, -574f), vec3<f32>(647f, 1445f, -1000f), vec3<f32>(906f, -1511f, 469f), vec3<f32>(-422f, 2580f, -205f), vec3<f32>(1094f, 428f, -1747f), vec3<f32>(2039f, 1000f, -788f), vec3<f32>(-902f, -1029f, 1000f));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(global0.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(global0.a)))))), _wgslsmith_add_vec3_i32(vec3<i32>(1i, u_input.d.x, u_input.d.x), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, u_input.d.x, -22695i) >> (global0.c % vec3<u32>(32u)), ~arg_1), -(~vec3<i32>(2147483647i, arg_1.x, global0.b.x)))), ~select(global0.e.zyw, reverseBits(vec3<u32>(global0.e.x, 4294967295u, u_input.b.x)) << (vec3<u32>(4294967295u, arg_0.e.x, 27790u) % vec3<u32>(32u)), vec3<bool>(any(vec3<bool>(global1.x, global1.x, true)), !global1.x, global0.a.x > arg_0.a.x)), ~(~(~(-167i))), global0.e);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(var_0.a))), vec3<i32>(arg_0.d, abs(_wgslsmith_div_i32(~u_input.a.x, -arg_0.b.x)), ~(-2147483647i)), vec3<u32>(_wgslsmith_mod_u32(abs(_wgslsmith_clamp_u32(var_0.c.x, 1u, u_input.b.x)), var_0.e.x), _wgslsmith_clamp_u32(~1u, ~global0.c.x, arg_0.e.x), 66744u), 15097i, vec4<u32>(~(~64658u), arg_0.c.x ^ var_0.e.x, _wgslsmith_add_u32(_wgslsmith_mult_u32(~var_0.c.x, 1u), ~_wgslsmith_mod_u32(u_input.b.x, 0u)), ~(~reverseBits(0u))));
    var_1 = var_0;
    var_1 = var_0;
    var var_2 = arg_0.a.x;
    return global1.x || any(vec4<bool>(all(vec3<bool>(global1.x, global1.x, global1.x)), true, global1.x, !(global1.x || false)));
}

fn func_2(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(round(global0.a.x)), -37897i, select(vec4<bool>(!(false && global1.x), any(!vec3<bool>(global1.x, global1.x, false)), any(!vec2<bool>(global1.x, true)), !func_3(arg_0, vec3<i32>(-12901i, global0.d, 5704i))), !(!vec4<bool>(global1.x, global1.x, global1.x, global1.x)), global1.x), any(vec3<bool>(arg_0.b.x >= (u_input.a.x & u_input.d.x), global1.x, global1.x)));
    let var_1 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.a.x)))))));
    var_0 = Struct_2(var_0.a, -arg_0.d, !vec4<bool>(true, _wgslsmith_mod_i32(global0.d, arg_0.b.x) > var_0.b, true, all(!var_0.c)), abs(~global0.e.x) >= _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(0u, u_input.b.x)), ~vec2<u32>(global0.c.x, global0.c.x)), u_input.c.yy & abs(vec2<u32>(arg_0.c.x, 64823u))));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(global0.a))))), ~arg_0.b, vec3<u32>(u_input.c.x, 1065u, ~arg_0.c.x), i32(-1i) * -1i, reverseBits(max(max(vec4<u32>(4294967295u, 1u, global0.c.x, 18356u), u_input.b), countOneBits(_wgslsmith_sub_vec4_u32(global0.e, vec4<u32>(1u, 87526u, global0.c.x, u_input.b.x))))));
    let var_2 = _wgslsmith_clamp_vec2_u32(min(~global0.e.yx ^ vec2<u32>(4294967295u, arg_0.e.x), arg_0.c.zx & abs(global0.c.yx)) >> (abs(arg_0.c.zz) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_div_u32(global0.e.x, u_input.b.x), 60846u), ~abs(~u_input.c.yy));
    return vec2<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: i32) -> Struct_1 {
    global1 = select(vec2<bool>(true, (u_input.d.x & -996i) == countOneBits(-arg_2)), !vec2<bool>(any(vec4<bool>(false, global1.x, false, arg_0.d)), true), any(!select(select(vec2<bool>(global1.x, false), arg_0.c.yx, true), vec2<bool>(false, false), true)));
    var var_0 = ~(-15553i);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.x, arg_0.a, arg_0.a))))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + global0.a.x))), reverseBits(max(global0.d, 58510i)), !(!(!arg_0.c)), global1.x);
    var var_3 = arg_0.c.yz;
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1561f, 778f, arg_1.x, arg_1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a, var_2.a, 762f, var_1.x), vec4<f32>(arg_1.x, arg_0.a, -1516f, -1371f)) * vec4<f32>(-876f, arg_0.a, arg_1.x, -263f)))) * _wgslsmith_div_vec4_f32(global0.a, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(global0.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, -756f, -1000f) - global0.a))))), u_input.a.wyz, select(vec3<u32>(_wgslsmith_clamp_u32(u_input.c.x, ~11978u, ~150091u), ~(~0u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 62134u, u_input.c.x), u_input.b.zzz)), ~((global0.c ^ vec3<u32>(global0.e.x, 4294967295u, u_input.b.x)) << (vec3<u32>(global0.c.x, global0.c.x, global0.e.x) % vec3<u32>(32u))), global1.x), -1i, ~global0.e);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(floor(global0.a.x)), -891f, -338f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(352f * _wgslsmith_f_op_f32(global0.a.x + global0.a.x)), global0.a.x)), _wgslsmith_add_vec3_i32(vec3<i32>(-40448i, _wgslsmith_sub_i32(u_input.d.x | global0.b.x, global0.b.x), u_input.a.x), global0.b), firstLeadingBit(vec3<u32>(19747u, reverseBits(39332u), 0u)), abs(global0.d), select(u_input.b, u_input.b << (u_input.b % vec4<u32>(32u)), global1.x));
    return func_4(Struct_2(global0.a.x, 0i, select(vec4<bool>(global1.x, true, any(vec4<bool>(global1.x, false, true, true)), !global1.x), !(!vec4<bool>(global1.x, global1.x, true, global1.x)), !select(vec4<bool>(true, false, global1.x, false), vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(global1.x, true, true, global1.x))), true), _wgslsmith_f_op_vec2_f32(func_2(Struct_1(global0.a, vec3<i32>(1i, global0.d, -7545i), ~var_0.c, u_input.d.x, _wgslsmith_div_vec4_u32(vec4<u32>(52515u, 0u, global0.e.x, 30227u), ~vec4<u32>(u_input.c.x, u_input.b.x, 2307u, u_input.b.x))))), ~(~_wgslsmith_dot_vec2_i32(-vec2<i32>(var_0.d, u_input.d.x), -vec2<i32>(global0.d, 0i))));
}

fn func_5(arg_0: Struct_1) -> i32 {
    global1 = select(!select(select(!vec2<bool>(true, global1.x), select(vec2<bool>(true, true), vec2<bool>(global1.x, false), true), false), vec2<bool>(true, !global1.x), vec2<bool>(!global1.x, arg_0.a.x <= global0.a.x)), select(!(!vec2<bool>(global1.x, false)), vec2<bool>(true, !(true && global1.x)), true), any(vec3<bool>(true, true, true)));
    let var_0 = Struct_1(arg_0.a, ~(-firstLeadingBit(u_input.a.wyx)), vec3<u32>(func_1().e.x, firstLeadingBit(1u), u_input.c.x), 0i, vec4<u32>(arg_0.e.x, select(~arg_0.c.x, 39164u, true), min(0u, arg_0.c.x), 4294967295u));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-global0.a), abs(~(vec3<i32>(u_input.a.x, var_0.b.x, u_input.d.x) >> ((u_input.c | var_0.c) % vec3<u32>(32u)))), vec3<u32>(max(func_1().c.x, ~arg_0.c.x), u_input.c.x, u_input.b.x), min(var_0.d, -8055i), ~vec4<u32>(global0.e.x, min(28102u, 0u), arg_0.e.x, ~36881u) >> ((arg_0.e >> (vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(6406u, global0.e.x), vec2<u32>(arg_0.c.x, 4070u)), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(73972u, u_input.c.x)), ~u_input.c.x, ~68174u) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_2 = select(vec2<bool>(global1.x, global1.x), !select(select(vec2<bool>(false, true), select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, global1.x), vec2<bool>(true, true)), !vec2<bool>(global1.x, false)), vec2<bool>(true, false), !vec2<bool>(true, global1.x)), !(!(!vec2<bool>(true, global1.x))));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(func_1().a * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)), var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) + _wgslsmith_div_f32(var_1.a.x, var_1.a.x)))), vec3<i32>(max(-global0.b.x >> (var_1.e.x % 32u), ~(-2147483647i)), 69420i, ~var_0.b.x), var_1.c, _wgslsmith_dot_vec4_i32(vec4<i32>(-35212i, var_1.d, -1i | var_0.d, var_1.b.x >> (global0.c.x % 32u)) ^ u_input.d, vec4<i32>(_wgslsmith_mod_i32(select(global0.d, var_0.b.x, false), -1i), _wgslsmith_add_i32(_wgslsmith_sub_i32(var_0.d, global0.b.x), arg_0.b.x), ~_wgslsmith_mult_i32(-1i, 2147483647i), ~reverseBits(6644i))), u_input.b);
    return arg_0.d & 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -abs(func_5(func_1()));
    var var_1 = Struct_2(100f, ~(-func_4(Struct_2(1889f, -2147483647i, vec4<bool>(global1.x, false, true, true), true), _wgslsmith_f_op_vec2_f32(ceil(global0.a.xw)), -2147483647i).b.x), vec4<bool>((8494u <= u_input.c.x) | global1.x, -2147483647i <= global0.d, !(func_4(Struct_2(global0.a.x, 35200i, vec4<bool>(global1.x, global1.x, global1.x, false), true), global0.a.wz, global0.d).b.x == 2147483647i), !(62838u != global0.e.x)), false);
    let var_2 = ~u_input.c.x;
    let var_3 = any(vec2<bool>(!(!(false & var_1.c.x)), !func_3(func_1(), u_input.d.xwx)));
    var_0 = global0.b.x;
    let var_4 = ~vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.b.yz, global0.e.yw)), ~firstTrailingBit(4294967295u));
    let var_5 = select(firstTrailingBit(vec4<i32>(-47685i, global0.b.x, global0.d, 25478i) << (~global0.e % vec4<u32>(32u))) & vec4<i32>(countOneBits(global0.d) ^ 1i, _wgslsmith_sub_i32(-32090i, u_input.a.x) ^ min(var_1.b, -2147483647i), -1i, -1i), u_input.d << ((vec4<u32>(select(var_4.x, 4294967295u, var_1.d), max(var_2, 22438u), 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2, u_input.c.x), vec2<u32>(u_input.c.x, 1u))) << (~(~global0.e) % vec4<u32>(32u))) % vec4<u32>(32u)), select(var_1.c, !select(select(vec4<bool>(var_3, global1.x, false, var_3), vec4<bool>(true, false, var_1.c.x, false), true), !var_1.c, !vec4<bool>(false, var_3, global1.x, var_1.c.x)), !var_1.c));
    let var_6 = func_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), -u_input.a.x, vec4<bool>(true, true, true, !any(var_1.c)), var_1.d), vec2<f32>(global0.a.x, 941f), _wgslsmith_div_i32(39806i, 2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~(~var_6.b.x)), -673f, u_input.b, _wgslsmith_f_op_vec4_f32(select(global0.a, var_6.a, !(_wgslsmith_div_i32(u_input.a.x, -6822i) < (i32(-1i) * -36679i)))));
}

