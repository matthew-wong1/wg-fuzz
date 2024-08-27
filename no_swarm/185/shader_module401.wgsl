struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec2<bool>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 22> = array<Struct_4, 22>(Struct_4(Struct_3(vec3<i32>(2147483647i, 38235i, i32(-2147483648)), vec4<i32>(-22419i, -45404i, -44864i, i32(-2147483648)), false), false, Struct_1(0u, vec4<u32>(0u, 19316u, 14841u, 50303u), vec2<bool>(false, true), true, vec3<i32>(-14642i, -29808i, -68598i))), Struct_4(Struct_3(vec3<i32>(-1i, -1i, 1i), vec4<i32>(15376i, -28277i, -1i, -18262i), false), false, Struct_1(43469u, vec4<u32>(46399u, 4294967295u, 0u, 32483u), vec2<bool>(true, false), false, vec3<i32>(i32(-2147483648), 38821i, -44883i))), Struct_4(Struct_3(vec3<i32>(9538i, 13230i, 1i), vec4<i32>(37576i, -25536i, 9038i, i32(-2147483648)), true), true, Struct_1(21150u, vec4<u32>(51950u, 246u, 0u, 4294967295u), vec2<bool>(true, false), true, vec3<i32>(38906i, -33477i, -18529i))), Struct_4(Struct_3(vec3<i32>(-1i, -26056i, 0i), vec4<i32>(-15122i, 2147483647i, -1i, -33786i), true), false, Struct_1(4294967295u, vec4<u32>(94201u, 4263u, 35901u, 19197u), vec2<bool>(true, false), false, vec3<i32>(i32(-2147483648), 1i, 23655i))), Struct_4(Struct_3(vec3<i32>(0i, 1i, 30577i), vec4<i32>(-15967i, 0i, -1i, 39664i), false), true, Struct_1(1u, vec4<u32>(4294967295u, 0u, 20957u, 1u), vec2<bool>(false, false), true, vec3<i32>(1i, 2147483647i, i32(-2147483648)))), Struct_4(Struct_3(vec3<i32>(37678i, 0i, -1i), vec4<i32>(-24479i, -1i, 39358i, 0i), false), true, Struct_1(13432u, vec4<u32>(4294967295u, 6589u, 34380u, 63832u), vec2<bool>(true, false), true, vec3<i32>(-1i, 5278i, 1i))), Struct_4(Struct_3(vec3<i32>(i32(-2147483648), 27382i, 1i), vec4<i32>(0i, 2147483647i, i32(-2147483648), -1i), false), false, Struct_1(4294967295u, vec4<u32>(0u, 4294967295u, 22082u, 4294967295u), vec2<bool>(false, true), false, vec3<i32>(-6928i, -1i, 45931i))), Struct_4(Struct_3(vec3<i32>(2147483647i, 1i, i32(-2147483648)), vec4<i32>(27554i, i32(-2147483648), 2147483647i, -1i), false), false, Struct_1(0u, vec4<u32>(4294967295u, 4294967295u, 67383u, 4294967295u), vec2<bool>(false, false), false, vec3<i32>(-32376i, -27940i, -1i))), Struct_4(Struct_3(vec3<i32>(i32(-2147483648), i32(-2147483648), -6884i), vec4<i32>(73793i, 0i, 2147483647i, -5107i), false), false, Struct_1(1u, vec4<u32>(110039u, 46763u, 17684u, 4294967295u), vec2<bool>(true, false), false, vec3<i32>(1i, 0i, -7736i))), Struct_4(Struct_3(vec3<i32>(18078i, i32(-2147483648), -1i), vec4<i32>(-16480i, 21725i, -31455i, -20424i), true), true, Struct_1(0u, vec4<u32>(4294967295u, 11639u, 40035u, 4294967295u), vec2<bool>(true, false), false, vec3<i32>(2147483647i, 2147483647i, -10242i))), Struct_4(Struct_3(vec3<i32>(-1i, 1i, -42038i), vec4<i32>(0i, 29797i, -32451i, -1i), true), true, Struct_1(3344u, vec4<u32>(0u, 1u, 0u, 59989u), vec2<bool>(false, true), true, vec3<i32>(47371i, 0i, 6265i))), Struct_4(Struct_3(vec3<i32>(-34614i, -15820i, -9428i), vec4<i32>(-42696i, 0i, 28919i, -9595i), true), false, Struct_1(50844u, vec4<u32>(4294967295u, 4294967295u, 1u, 25981u), vec2<bool>(false, true), false, vec3<i32>(-1i, 22913i, 24765i))), Struct_4(Struct_3(vec3<i32>(-1i, i32(-2147483648), 2147483647i), vec4<i32>(i32(-2147483648), -1796i, 1i, 0i), true), true, Struct_1(1u, vec4<u32>(4294967295u, 11778u, 1u, 21874u), vec2<bool>(false, true), false, vec3<i32>(2147483647i, -9778i, i32(-2147483648)))), Struct_4(Struct_3(vec3<i32>(1i, 29995i, 0i), vec4<i32>(-44586i, 2147483647i, 0i, 1836i), false), true, Struct_1(0u, vec4<u32>(8462u, 0u, 39721u, 1u), vec2<bool>(true, false), false, vec3<i32>(0i, 17312i, 5780i))), Struct_4(Struct_3(vec3<i32>(13363i, -17462i, 1i), vec4<i32>(-25206i, -1i, 0i, -1i), true), true, Struct_1(40622u, vec4<u32>(1u, 44843u, 1u, 4294967295u), vec2<bool>(false, false), true, vec3<i32>(-31569i, 18992i, -28659i))), Struct_4(Struct_3(vec3<i32>(-19657i, -31193i, 2147483647i), vec4<i32>(-51850i, 0i, 0i, 2147483647i), false), true, Struct_1(0u, vec4<u32>(51321u, 10217u, 0u, 78119u), vec2<bool>(false, false), false, vec3<i32>(1i, 39901i, 2147483647i))), Struct_4(Struct_3(vec3<i32>(0i, -66801i, -39784i), vec4<i32>(2147483647i, -98152i, -1i, 45968i), false), false, Struct_1(1u, vec4<u32>(48798u, 4294967295u, 1u, 49170u), vec2<bool>(false, false), false, vec3<i32>(1i, -1i, -25448i))), Struct_4(Struct_3(vec3<i32>(1i, 2147483647i, i32(-2147483648)), vec4<i32>(0i, -1328i, -1i, -31260i), false), false, Struct_1(1u, vec4<u32>(43338u, 45146u, 0u, 19800u), vec2<bool>(false, true), true, vec3<i32>(41225i, 10425i, -1i))), Struct_4(Struct_3(vec3<i32>(2147483647i, 25537i, -1i), vec4<i32>(22350i, i32(-2147483648), 0i, -15242i), false), false, Struct_1(0u, vec4<u32>(45142u, 4294967295u, 1u, 13681u), vec2<bool>(false, false), false, vec3<i32>(-53090i, -336i, 4811i))), Struct_4(Struct_3(vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), vec4<i32>(1170i, -23910i, -1i, 115984i), false), false, Struct_1(4294967295u, vec4<u32>(17452u, 91417u, 4294967295u, 1u), vec2<bool>(false, false), false, vec3<i32>(0i, 2606i, 0i))), Struct_4(Struct_3(vec3<i32>(-20433i, -1i, 1i), vec4<i32>(68125i, 31424i, 36913i, -18608i), true), true, Struct_1(0u, vec4<u32>(1u, 23253u, 18272u, 0u), vec2<bool>(true, false), false, vec3<i32>(i32(-2147483648), 8817i, -30035i))), Struct_4(Struct_3(vec3<i32>(-8492i, 37392i, 0i), vec4<i32>(1i, -28252i, -41055i, 27732i), false), true, Struct_1(22169u, vec4<u32>(4294967295u, 1u, 9928u, 0u), vec2<bool>(false, true), false, vec3<i32>(10774i, i32(-2147483648), i32(-2147483648)))));

var<private> global1: array<Struct_5, 14> = array<Struct_5, 14>(Struct_5(true, vec2<f32>(-2182f, 116f), vec4<f32>(-812f, 172f, 516f, -150f)), Struct_5(false, vec2<f32>(-1534f, 498f), vec4<f32>(158f, -522f, -745f, 688f)), Struct_5(true, vec2<f32>(873f, 733f), vec4<f32>(-1463f, -957f, 319f, -1189f)), Struct_5(false, vec2<f32>(-302f, 211f), vec4<f32>(463f, 817f, 1432f, 656f)), Struct_5(true, vec2<f32>(-157f, -2859f), vec4<f32>(334f, 485f, -720f, -126f)), Struct_5(false, vec2<f32>(-1000f, -988f), vec4<f32>(-390f, -118f, 789f, 1000f)), Struct_5(false, vec2<f32>(780f, -273f), vec4<f32>(-798f, -554f, -114f, -877f)), Struct_5(true, vec2<f32>(-410f, 1786f), vec4<f32>(534f, 2325f, 374f, -2212f)), Struct_5(false, vec2<f32>(-1000f, 677f), vec4<f32>(219f, -260f, -1542f, 1219f)), Struct_5(false, vec2<f32>(-3606f, -133f), vec4<f32>(302f, -637f, 2635f, 105f)), Struct_5(true, vec2<f32>(-513f, -219f), vec4<f32>(-1353f, -989f, 643f, -1354f)), Struct_5(true, vec2<f32>(1953f, 1049f), vec4<f32>(-291f, -132f, -1000f, -553f)), Struct_5(true, vec2<f32>(110f, 388f), vec4<f32>(-592f, 499f, 280f, 657f)), Struct_5(false, vec2<f32>(-306f, -282f), vec4<f32>(-565f, -1974f, -209f, -432f)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> i32 {
    global1 = array<Struct_5, 14>();
    global0 = array<Struct_4, 22>();
    var var_0 = Struct_2(vec2<i32>(select(i32(-1i) * -59818i, ~1i, true), ~(-abs(-35555i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f))) * _wgslsmith_f_op_f32(1000f - 415f)), -284f, Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.b, 4294967295u, u_input.a << (u_input.b % 32u), u_input.d.x >> (1u % 32u)), ~(~u_input.d)), vec4<u32>(4294967295u, countOneBits(0u), select(19967u, u_input.b, true), u_input.b ^ 25037u) & vec4<u32>(~u_input.d.x, _wgslsmith_add_u32(0u, u_input.d.x), u_input.d.x, ~u_input.b), vec2<bool>(_wgslsmith_dot_vec2_u32(u_input.d.zz, vec2<u32>(u_input.b, 46144u)) >= abs(4294967295u), true), select(true, all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), all(vec3<bool>(true, true, true))), vec3<i32>(~arg_0 | ~arg_0, -15676i, arg_0)));
    var var_1 = -select(firstTrailingBit(19489i), -var_0.d.e.x, var_0.d.c.x) ^ firstLeadingBit(11313i);
    var var_2 = Struct_3(max(_wgslsmith_add_vec3_i32(~(-var_0.d.e), select(abs(var_0.d.e), var_0.d.e, false)), vec3<i32>(~u_input.c.x, min(-u_input.c.x, -1801i), -1i)), ~(select(countOneBits(vec4<i32>(1i, u_input.c.x, u_input.c.x, -39444i)), vec4<i32>(34342i, 0i, var_0.d.e.x, arg_0), select(vec4<bool>(var_0.d.c.x, false, var_0.d.d, var_0.d.c.x), vec4<bool>(false, true, true, true), vec4<bool>(false, var_0.d.d, true, true))) ^ firstLeadingBit(firstLeadingBit(vec4<i32>(-4296i, var_0.a.x, arg_0, -7856i)))), select(all(vec3<bool>(true, true, true)), var_0.d.d, true));
    return ~var_2.b.x ^ ~1i;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: vec4<bool>) -> u32 {
    let var_0 = 0i;
    global0 = array<Struct_4, 22>();
    var var_1 = Struct_3(_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(-var_0, func_3(1499i), 15704i)), -(~select(arg_2.a, arg_2.b.zxy, arg_3.x))), -abs(vec4<i32>(arg_2.a.x, 2114i, arg_2.a.x, 5101i) | vec4<i32>(u_input.c.x, -18362i, 2147483647i, -1583i)) << (u_input.d % vec4<u32>(32u)), any(select(vec2<bool>(true, true), select(select(arg_3.yz, vec2<bool>(arg_2.c, arg_2.c), arg_3.yz), !arg_3.yx, vec2<bool>(true, false)), arg_3.x)));
    var var_2 = _wgslsmith_mult_u32(u_input.b, ~_wgslsmith_div_u32(reverseBits(abs(2697u)), u_input.a));
    return ~_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, _wgslsmith_mod_u32(73831u, 33795u)), _wgslsmith_clamp_vec2_u32(~(~u_input.d.wz), u_input.d.wy, _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 1u), abs(vec2<u32>(u_input.b, u_input.d.x)))));
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    global0 = array<Struct_4, 22>();
    let var_0 = ~u_input.d.wy ^ ~_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d.x, u_input.b), vec2<u32>(arg_0.a, 1u)) ^ ~vec2<u32>(4294967295u, u_input.a), ~(~vec2<u32>(u_input.d.x, u_input.a)));
    let var_1 = vec3<u32>(_wgslsmith_add_u32(max(48546u, select(_wgslsmith_sub_u32(0u, var_0.x), ~4294967295u, !arg_0.d)), 34853u), 0u, u_input.d.x);
    let var_2 = global0[_wgslsmith_index_u32(4294967295u, 22u)];
    global0 = array<Struct_4, 22>();
    return Struct_2(_wgslsmith_sub_vec2_i32(select(select(_wgslsmith_mod_vec2_i32(var_2.c.e.zx, vec2<i32>(u_input.c.x, -18700i)), ~vec2<i32>(u_input.c.x, -2147483647i), false), vec2<i32>(firstLeadingBit(0i), 1i), any(vec4<bool>(arg_0.d, true, false, arg_0.d))), min(-(vec2<i32>(-29882i, 2147483647i) >> (var_2.c.b.xy % vec2<u32>(32u))), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, u_input.c.x), firstTrailingBit(vec2<i32>(u_input.c.x, -27148i)), firstTrailingBit(u_input.c)))), _wgslsmith_f_op_f32(f32(-1f) * -407f), -489f, var_2.c);
}

fn func_1(arg_0: f32, arg_1: vec4<f32>) -> Struct_5 {
    let var_0 = true;
    var var_1 = func_4(Struct_1(_wgslsmith_div_u32(_wgslsmith_mod_u32(min(u_input.b, 11771u), u_input.a), 1u), vec4<u32>(firstTrailingBit(u_input.a), func_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1521f, 840f, arg_1.x, 1000f))), arg_1, Struct_3(vec3<i32>(u_input.c.x, 7206i, -2147483647i), vec4<i32>(-2147483647i, -57593i, u_input.c.x, u_input.c.x), var_0), vec4<bool>(true, false, var_0, var_0)), u_input.b << (1u % 32u), ~u_input.b), !(!select(vec2<bool>(true, var_0), vec2<bool>(var_0, false), var_0)), any(select(select(vec2<bool>(true, var_0), vec2<bool>(var_0, true), vec2<bool>(var_0, var_0)), vec2<bool>(false, var_0), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)))), _wgslsmith_add_vec3_i32(~(-vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), abs(vec3<i32>(u_input.c.x, -41607i, u_input.c.x)) << (~u_input.d.wyz % vec3<u32>(32u)))));
    let var_2 = Struct_5(true, vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-152f - var_1.b)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1 - arg_1)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(var_1.c * 1052f)));
    let var_4 = Struct_2(vec2<i32>(_wgslsmith_div_i32(-53811i, -var_1.a.x), u_input.c.x), _wgslsmith_f_op_f32(select(var_1.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2035f + var_1.c) * 791f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(174f)) * -791f), Struct_1(0u, var_1.d.b, select(var_1.d.c, var_1.d.c, var_1.d.d), any(!select(vec4<bool>(var_2.a, var_1.d.d, var_1.d.c.x, var_2.a), vec4<bool>(false, var_1.d.c.x, true, true), vec4<bool>(true, false, true, true))), var_1.d.e << (vec3<u32>(u_input.d.x, min(1u, var_1.d.a), ~6584u) % vec3<u32>(32u))));
    return global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(var_1.d.b.zw, vec2<u32>(_wgslsmith_mod_u32(12252u, ~var_1.d.a), (u_input.a | 4294967295u) | u_input.d.x)), 1u & ~_wgslsmith_mod_u32(~var_4.d.a, ~1u)), 14u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 22>();
    let var_0 = !(!(!all(vec4<bool>(false, false, false, false))));
    let var_1 = func_1(-421f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(942f, -311f, -391f, -492f), vec4<f32>(-338f, 711f, -763f, 821f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(810f, -315f, -1005f, 1486f)))))));
    var var_2 = u_input.b == ~(firstTrailingBit(countOneBits(u_input.d.x)) >> ((max(2421u, u_input.b) ^ u_input.d.x) % 32u));
    global0 = array<Struct_4, 22>();
    var_2 = var_0;
    var var_3 = var_1;
    let var_4 = abs(~(_wgslsmith_sub_i32(36819i, -10341i) >> (u_input.a % 32u)) << (~func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b.x, -190f, var_1.b.x, var_1.b.x) + vec4<f32>(-322f, var_3.b.x, -1059f, -934f)), _wgslsmith_f_op_vec4_f32(-var_3.c), Struct_3(vec3<i32>(-1i, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, 0i, u_input.c.x, 34874i), false), vec4<bool>(var_1.a, false, false, true)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_1.b.x, var_1.b.x, _wgslsmith_f_op_f32(var_3.c.x - var_3.b.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(var_3.c))) * var_1.c)), abs(u_input.d.yyw));
}

