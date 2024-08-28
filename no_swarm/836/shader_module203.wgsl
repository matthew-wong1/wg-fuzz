struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 6>;

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(16749i, vec2<u32>(44183u, 0u), vec3<i32>(-1i, 15612i, -1i), vec3<bool>(false, false, false), vec3<i32>(-45029i, -8553i, 1i)), Struct_1(4986i, vec2<u32>(0u, 83918u), vec3<i32>(0i, i32(-2147483648), -1i), vec3<bool>(true, true, false), vec3<i32>(-14405i, -1i, i32(-2147483648))), Struct_1(i32(-2147483648), vec2<u32>(4294967295u, 14663u), vec3<i32>(30324i, -9684i, -1i), vec3<bool>(true, false, true), vec3<i32>(2147483647i, 38426i, -49305i)), Struct_1(i32(-2147483648), vec2<u32>(22508u, 22117u), vec3<i32>(36847i, 71238i, -12658i), vec3<bool>(false, true, false), vec3<i32>(i32(-2147483648), 14109i, 1i)), Struct_1(-49801i, vec2<u32>(37947u, 0u), vec3<i32>(-68692i, -2023i, -4989i), vec3<bool>(true, true, false), vec3<i32>(-1i, -21882i, 47806i)), Struct_1(0i, vec2<u32>(14678u, 4294967295u), vec3<i32>(-1i, -13257i, 0i), vec3<bool>(false, true, true), vec3<i32>(0i, i32(-2147483648), 1i)), Struct_1(17667i, vec2<u32>(0u, 1163u), vec3<i32>(-46718i, -9403i, -1i), vec3<bool>(true, true, false), vec3<i32>(0i, 13520i, 2147483647i)), Struct_1(24086i, vec2<u32>(73113u, 1u), vec3<i32>(-20102i, 1i, -33100i), vec3<bool>(true, true, true), vec3<i32>(5670i, 1i, -29662i)), Struct_1(i32(-2147483648), vec2<u32>(4294967295u, 42028u), vec3<i32>(2147483647i, 2147483647i, -10346i), vec3<bool>(false, true, true), vec3<i32>(2147483647i, 2407i, i32(-2147483648))), Struct_1(2147483647i, vec2<u32>(4294967295u, 0u), vec3<i32>(1i, 2147483647i, 0i), vec3<bool>(true, true, false), vec3<i32>(1i, 50927i, -16401i)), Struct_1(-9870i, vec2<u32>(0u, 19966u), vec3<i32>(0i, 52559i, -35704i), vec3<bool>(true, true, true), vec3<i32>(-4360i, 2147483647i, 51477i)), Struct_1(-40298i, vec2<u32>(1u, 0u), vec3<i32>(17200i, -43424i, i32(-2147483648)), vec3<bool>(false, false, true), vec3<i32>(-33163i, -29968i, -21999i)), Struct_1(1i, vec2<u32>(1u, 1u), vec3<i32>(-1i, 38453i, 0i), vec3<bool>(true, false, false), vec3<i32>(0i, -1i, 0i)), Struct_1(-1i, vec2<u32>(34575u, 0u), vec3<i32>(1i, -24292i, 3408i), vec3<bool>(true, true, true), vec3<i32>(i32(-2147483648), -8510i, i32(-2147483648))), Struct_1(21095i, vec2<u32>(0u, 76591u), vec3<i32>(-8049i, 2147483647i, 1i), vec3<bool>(true, false, false), vec3<i32>(i32(-2147483648), -15708i, i32(-2147483648))), Struct_1(1i, vec2<u32>(42118u, 17192u), vec3<i32>(2147483647i, -28909i, 2147483647i), vec3<bool>(false, true, true), vec3<i32>(i32(-2147483648), i32(-2147483648), 14540i)), Struct_1(18408i, vec2<u32>(8279u, 1u), vec3<i32>(-1i, -47696i, -2794i), vec3<bool>(true, true, true), vec3<i32>(15972i, 1i, 25395i)), Struct_1(0i, vec2<u32>(0u, 4294967295u), vec3<i32>(1100i, i32(-2147483648), -39332i), vec3<bool>(false, true, false), vec3<i32>(64216i, i32(-2147483648), -22292i)), Struct_1(2147483647i, vec2<u32>(3080u, 34033u), vec3<i32>(0i, 0i, 73595i), vec3<bool>(true, true, true), vec3<i32>(i32(-2147483648), -17553i, 26657i)), Struct_1(37866i, vec2<u32>(4294967295u, 4294967295u), vec3<i32>(0i, -24511i, -35708i), vec3<bool>(true, false, true), vec3<i32>(2147483647i, -32504i, -1i)), Struct_1(2147483647i, vec2<u32>(71886u, 57814u), vec3<i32>(0i, -15465i, 28792i), vec3<bool>(false, true, true), vec3<i32>(1i, -20529i, -19755i)), Struct_1(4534i, vec2<u32>(4294967295u, 1u), vec3<i32>(-1i, 0i, -53800i), vec3<bool>(true, true, false), vec3<i32>(-35879i, 34578i, -1i)), Struct_1(1i, vec2<u32>(1u, 1u), vec3<i32>(8744i, i32(-2147483648), -21524i), vec3<bool>(false, true, false), vec3<i32>(0i, -1i, 0i)), Struct_1(2147483647i, vec2<u32>(12899u, 19842u), vec3<i32>(i32(-2147483648), 54234i, 0i), vec3<bool>(true, false, true), vec3<i32>(1i, -9840i, 2147483647i)), Struct_1(2147483647i, vec2<u32>(4881u, 1u), vec3<i32>(2147483647i, i32(-2147483648), 1i), vec3<bool>(true, false, true), vec3<i32>(-1i, 36853i, -9384i)), Struct_1(-38513i, vec2<u32>(0u, 0u), vec3<i32>(-19601i, i32(-2147483648), 0i), vec3<bool>(false, true, false), vec3<i32>(2147483647i, 2147483647i, 2147483647i)), Struct_1(-29494i, vec2<u32>(1u, 4294967295u), vec3<i32>(44813i, i32(-2147483648), 36589i), vec3<bool>(true, true, false), vec3<i32>(-27805i, -15598i, 0i)), Struct_1(-1i, vec2<u32>(0u, 0u), vec3<i32>(i32(-2147483648), 25154i, i32(-2147483648)), vec3<bool>(false, true, true), vec3<i32>(0i, 41629i, -1i)), Struct_1(17636i, vec2<u32>(4294967295u, 4294967295u), vec3<i32>(224i, -15407i, 0i), vec3<bool>(false, true, false), vec3<i32>(45886i, -70126i, 25851i)));

var<private> global2: array<vec2<bool>, 23> = array<vec2<bool>, 23>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true));

var<private> global3: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(2147483647i, vec2<u32>(1u, 0u), vec3<i32>(-41457i, 0i, 3356i), vec3<bool>(false, true, true), vec3<i32>(0i, -14836i, 22381i)), Struct_1(477i, vec2<u32>(0u, 29178u), vec3<i32>(30240i, 0i, 0i), vec3<bool>(false, false, false), vec3<i32>(i32(-2147483648), 1657i, -1i)), Struct_1(i32(-2147483648), vec2<u32>(4294967295u, 34359u), vec3<i32>(2147483647i, 1i, 1i), vec3<bool>(false, true, true), vec3<i32>(i32(-2147483648), 48376i, -1i)), Struct_1(-24113i, vec2<u32>(26022u, 4294967295u), vec3<i32>(i32(-2147483648), 34161i, -1i), vec3<bool>(true, true, true), vec3<i32>(-66892i, 2147483647i, 28346i)), Struct_1(45345i, vec2<u32>(1u, 1u), vec3<i32>(22564i, -30641i, -24458i), vec3<bool>(true, false, false), vec3<i32>(26301i, -34401i, -1i)), Struct_1(-40104i, vec2<u32>(4294967295u, 16547u), vec3<i32>(i32(-2147483648), i32(-2147483648), -22870i), vec3<bool>(false, false, false), vec3<i32>(0i, -1i, -9452i)), Struct_1(-45537i, vec2<u32>(0u, 75341u), vec3<i32>(-75029i, -8954i, 36420i), vec3<bool>(true, true, true), vec3<i32>(47348i, 0i, 2147483647i)), Struct_1(1i, vec2<u32>(90487u, 8309u), vec3<i32>(31718i, 0i, 2147483647i), vec3<bool>(true, true, true), vec3<i32>(37130i, -1i, -18904i)), Struct_1(-1i, vec2<u32>(2370u, 11003u), vec3<i32>(-5238i, 1i, 71050i), vec3<bool>(true, true, false), vec3<i32>(1i, 70946i, -1248i)), Struct_1(i32(-2147483648), vec2<u32>(9037u, 4294967295u), vec3<i32>(0i, 1i, 37748i), vec3<bool>(false, true, true), vec3<i32>(i32(-2147483648), 37630i, 0i)), Struct_1(2147483647i, vec2<u32>(52334u, 1u), vec3<i32>(-23571i, 2147483647i, 1i), vec3<bool>(false, true, false), vec3<i32>(1i, 0i, -17158i)), Struct_1(-1351i, vec2<u32>(34740u, 47147u), vec3<i32>(0i, 21637i, 2147483647i), vec3<bool>(false, true, true), vec3<i32>(1847i, 55686i, 2147483647i)), Struct_1(1i, vec2<u32>(3403u, 1u), vec3<i32>(i32(-2147483648), 1i, 47053i), vec3<bool>(true, false, true), vec3<i32>(59540i, 0i, 45787i)), Struct_1(i32(-2147483648), vec2<u32>(0u, 18916u), vec3<i32>(-33892i, -1i, -1i), vec3<bool>(false, true, false), vec3<i32>(-1i, -12138i, -16911i)), Struct_1(-44088i, vec2<u32>(1u, 23788u), vec3<i32>(-59005i, -1i, 34678i), vec3<bool>(true, false, false), vec3<i32>(-3443i, 8224i, 0i)), Struct_1(1i, vec2<u32>(1609u, 48007u), vec3<i32>(-62146i, -1i, 35161i), vec3<bool>(true, false, false), vec3<i32>(-542i, 1i, -1i)), Struct_1(2147483647i, vec2<u32>(1u, 1u), vec3<i32>(30383i, i32(-2147483648), -1i), vec3<bool>(false, true, true), vec3<i32>(-34025i, -10839i, -10306i)), Struct_1(65216i, vec2<u32>(11760u, 4294967295u), vec3<i32>(-1i, 32505i, -1i), vec3<bool>(true, true, true), vec3<i32>(1i, 2147483647i, -1i)), Struct_1(1i, vec2<u32>(4294967295u, 31464u), vec3<i32>(2147483647i, -1i, 2382i), vec3<bool>(true, false, true), vec3<i32>(-25618i, -28036i, 0i)), Struct_1(-22918i, vec2<u32>(4294967295u, 0u), vec3<i32>(-61481i, -11575i, i32(-2147483648)), vec3<bool>(false, true, true), vec3<i32>(0i, 1i, 20462i)), Struct_1(i32(-2147483648), vec2<u32>(96396u, 1u), vec3<i32>(-73555i, 1i, -1i), vec3<bool>(true, true, false), vec3<i32>(1i, -1i, 2147483647i)), Struct_1(1i, vec2<u32>(0u, 44439u), vec3<i32>(2147483647i, -18024i, i32(-2147483648)), vec3<bool>(false, false, true), vec3<i32>(0i, 52381i, 10704i)), Struct_1(1i, vec2<u32>(69146u, 0u), vec3<i32>(20006i, 2147483647i, 29437i), vec3<bool>(false, false, true), vec3<i32>(4360i, -1i, 19887i)), Struct_1(2147483647i, vec2<u32>(55052u, 4294967295u), vec3<i32>(0i, -1i, 71684i), vec3<bool>(true, false, true), vec3<i32>(-1i, 37497i, 0i)), Struct_1(1i, vec2<u32>(4294967295u, 25452u), vec3<i32>(0i, 1i, -14111i), vec3<bool>(false, false, true), vec3<i32>(2147483647i, 3367i, -15505i)), Struct_1(-20956i, vec2<u32>(26032u, 14260u), vec3<i32>(i32(-2147483648), -32718i, -8367i), vec3<bool>(false, false, false), vec3<i32>(35947i, 2147483647i, -1i)), Struct_1(24536i, vec2<u32>(1u, 119447u), vec3<i32>(0i, 2819i, -14866i), vec3<bool>(false, true, true), vec3<i32>(2147483647i, -2831i, i32(-2147483648))), Struct_1(2147483647i, vec2<u32>(1u, 33873u), vec3<i32>(2147483647i, -1i, -5922i), vec3<bool>(true, false, true), vec3<i32>(26066i, -1i, 29431i)), Struct_1(15428i, vec2<u32>(3285u, 1u), vec3<i32>(-1i, -2556i, 1i), vec3<bool>(false, true, true), vec3<i32>(-12647i, -69881i, i32(-2147483648))), Struct_1(-1i, vec2<u32>(4294967295u, 1u), vec3<i32>(-10920i, 22047i, -1i), vec3<bool>(true, false, true), vec3<i32>(2147483647i, 9967i, 2147483647i)), Struct_1(22289i, vec2<u32>(61034u, 4294967295u), vec3<i32>(1i, -17535i, 1i), vec3<bool>(true, false, true), vec3<i32>(1i, -23245i, 1i)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: u32) -> bool {
    return all(vec2<bool>(true, true)) || select(false, false, all(!global2[_wgslsmith_index_u32(_wgslsmith_add_u32(39193u, u_input.a), 23u)]));
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1) -> vec4<bool> {
    global0 = array<vec3<i32>, 6>();
    let var_0 = ~(vec3<u32>(~22260u >> ((arg_2.b.x ^ u_input.a) % 32u), ~arg_2.b.x, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 37191u, 0u), vec3<u32>(arg_2.b.x, 0u, arg_2.b.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b.x, 0u, 0u, 44164u), vec4<u32>(arg_2.b.x, u_input.a, 4756u, u_input.a)))) ^ (~_wgslsmith_sub_vec3_u32(vec3<u32>(41502u, 25072u, 0u), vec3<u32>(u_input.a, 0u, arg_2.b.x)) >> (abs(vec3<u32>(39971u, 23695u, 36866u)) % vec3<u32>(32u))));
    let var_1 = arg_2;
    var var_2 = select(vec3<u32>(~(~u_input.a), 20001u, ~_wgslsmith_add_u32(~arg_2.b.x, var_0.x)), vec3<u32>(~(~4294967295u), var_0.x, firstLeadingBit(~var_1.b.x) >> (77648u % 32u)), vec3<bool>(arg_2.d.x, true, ((arg_2.d.x || false) != true) || select(true, true, func_3(vec4<u32>(2560u, arg_2.b.x, var_0.x, var_0.x), var_1.a, var_0.x))));
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_2.b.x, var_2.x), var_1.b.x | ~(~(~var_2.x))), 29u)];
    return !(!vec4<bool>(false, !arg_1.x, false, arg_2.d.x));
}

fn func_1(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> vec2<u32> {
    var var_0 = any(!vec4<bool>(!(-1323f > arg_3), true, all(!vec4<bool>(false, true, arg_2.d.x, arg_2.d.x)), arg_1));
    var var_1 = !(!func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3 + arg_3), 855f), select(select(arg_2.d, vec3<bool>(true, arg_0.x, arg_2.d.x), vec3<bool>(arg_2.d.x, false, arg_0.x)), select(vec3<bool>(arg_1, true, arg_0.x), vec3<bool>(arg_1, arg_2.d.x, true), vec3<bool>(false, true, true)), vec3<bool>(false, arg_1, true)), Struct_1(0i, arg_2.b, global0[_wgslsmith_index_u32(4294967295u, 6u)], arg_2.d, countOneBits(global0[_wgslsmith_index_u32(4294967295u, 6u)]))));
    var var_2 = Struct_1(_wgslsmith_add_i32(-9850i & (0i & arg_2.a), i32(-1i) * -_wgslsmith_mod_i32(arg_2.c.x, -1i)), vec2<u32>(~firstTrailingBit(1u), _wgslsmith_sub_u32(~0u, ~u_input.a) | 1u), _wgslsmith_sub_vec3_i32(~arg_2.c, -arg_2.e | abs(-vec3<i32>(arg_2.e.x, arg_2.c.x, arg_2.e.x))), var_1.zyz, vec3<i32>((~arg_2.e.x ^ arg_2.e.x) ^ 0i, arg_2.e.x, arg_2.e.x));
    var var_3 = vec3<bool>(1u > _wgslsmith_mod_u32(50958u, var_2.b.x), 56264u <= ~((var_2.b.x & var_2.b.x) << (firstLeadingBit(4294967295u) % 32u)), all(select(var_1.zxy, func_2(1762f, !var_2.d, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.x, arg_2.b.x, 10076u, 1u), vec4<u32>(12548u, 1u, var_2.b.x, var_2.b.x)), 31u)]).wzy, all(arg_2.d.yx))));
    let var_4 = Struct_1(0i, arg_2.b, select(~vec3<i32>(_wgslsmith_mod_i32(arg_2.a, var_2.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.a, -14788i, 0i, arg_2.e.x), vec4<i32>(0i, arg_2.a, var_2.e.x, 16721i)), ~var_2.c.x), vec3<i32>(-9637i, 22075i >> (~4294967295u % 32u), (var_2.a << (u_input.a % 32u)) | 5154i), func_2(734f, !vec3<bool>(arg_2.d.x, false, arg_2.d.x), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(63529u, var_2.b.x, 76494u, var_2.b.x), vec4<u32>(arg_2.b.x, u_input.a, arg_2.b.x, u_input.a), var_3.x), vec4<u32>(0u, 1u, 0u, arg_2.b.x)), 31u)]).xzw), !select(vec3<bool>(func_3(vec4<u32>(arg_2.b.x, u_input.a, u_input.a, 1u), var_2.a, 1u), var_1.x | false, var_2.d.x), vec3<bool>(true, func_3(vec4<u32>(var_2.b.x, var_2.b.x, var_2.b.x, arg_2.b.x), var_2.a, arg_2.b.x), arg_3 < -230f), all(func_2(arg_3, var_1.xwx, Struct_1(arg_2.c.x, vec2<u32>(2617u, arg_2.b.x), vec3<i32>(arg_2.a, 10692i, -1i), vec3<bool>(var_2.d.x, false, var_3.x), global0[_wgslsmith_index_u32(33973u, 6u)])))), global0[_wgslsmith_index_u32(3029u, 6u)]);
    return _wgslsmith_mod_vec2_u32(abs(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_4.b.x, arg_2.b.x), firstLeadingBit(arg_2.b))), ~arg_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(countOneBits(_wgslsmith_mod_i32(2147483647i, max(_wgslsmith_mod_i32(2147483647i, -58294i), 37907i))), vec2<u32>(29831u, u_input.a), ~(-vec3<i32>(abs(-10169i), 18519i << (u_input.a % 32u), 1i)), !(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)))), vec3<i32>(_wgslsmith_sub_i32(max(~(-1i), -2147483647i), -2147483647i), min(_wgslsmith_sub_i32(~1i, i32(-1i) * -24240i), ~(-51785i)), _wgslsmith_mod_i32(-23698i, abs(~0i))));
    global2 = array<vec2<bool>, 23>();
    global3 = array<Struct_1, 31>();
    var var_1 = _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(trunc(1000f))), _wgslsmith_f_op_f32(floor(1309f)))));
    var var_2 = Struct_1(var_0.c.x, ~(~(~func_1(vec2<bool>(true, var_0.d.x), var_0.d.x, Struct_1(var_0.c.x, var_0.b, vec3<i32>(2147483647i, var_0.a, var_0.a), var_0.d, vec3<i32>(-1i, 2147483647i, var_0.a)), -1492f))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(63270u, var_0.b.x & _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.b.x, 13253u, var_0.b.x), ~vec3<u32>(var_0.b.x, var_0.b.x, var_0.b.x))), 6u)], vec3<bool>(all(vec4<bool>(true, true, var_0.d.x, 842i != var_0.c.x)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(998f))), select(!var_0.d, select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), var_0.d.x), var_0.d), Struct_1(var_0.c.x >> (4294967295u % 32u), ~var_0.b, reverseBits(vec3<i32>(var_0.c.x, var_0.a, 15398i)), vec3<bool>(false, false, false), var_0.c | vec3<i32>(var_0.a, 0i, var_0.c.x))).x, var_0.d.x & !var_0.d.x), reverseBits(vec3<i32>(var_0.a, -1i, reverseBits(var_0.a))));
    let var_3 = vec2<i32>(-15917i, ~(var_2.c.x ^ var_0.c.x));
    global0 = array<vec3<i32>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -805f))), _wgslsmith_f_op_f32(f32(-1f) * -1820f)))), _wgslsmith_f_op_f32(floor(383f)));
}

