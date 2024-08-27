struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: u32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<f32>(-764f, -1058f, -1586f), Struct_2(true, vec2<u32>(1u, 0u), Struct_1(0u, 1336f, 875f, -1i, -53261i)), 33227u, vec4<i32>(2147483647i, 0i, -1i, -1i), vec2<i32>(18849i, 0i));

var<private> global1: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(vec3<f32>(1884f, -1646f, -991f), Struct_2(false, vec2<u32>(1u, 35417u), Struct_1(58713u, 1000f, -215f, 26457i, 1i)), 32975u, vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, 36835i), vec2<i32>(-16221i, -1i)), Struct_3(vec3<f32>(944f, 304f, 1497f), Struct_2(true, vec2<u32>(1u, 1u), Struct_1(60022u, -636f, 162f, -1i, 0i)), 12945u, vec4<i32>(15155i, -194i, 2147483647i, 30844i), vec2<i32>(48192i, 0i)), Struct_3(vec3<f32>(1346f, 349f, -595f), Struct_2(false, vec2<u32>(30685u, 68700u), Struct_1(29097u, -821f, 473f, -11212i, i32(-2147483648))), 44145u, vec4<i32>(-24744i, -54820i, i32(-2147483648), 0i), vec2<i32>(47911i, -1693i)), Struct_3(vec3<f32>(-1490f, 1501f, 419f), Struct_2(true, vec2<u32>(0u, 64665u), Struct_1(13128u, -1204f, 681f, -81127i, -11461i)), 32781u, vec4<i32>(-77174i, -57920i, 28238i, 41827i), vec2<i32>(-10268i, -2494i)), Struct_3(vec3<f32>(1781f, 1408f, 1000f), Struct_2(false, vec2<u32>(1u, 1u), Struct_1(1u, 589f, 189f, 19179i, -1i)), 36997u, vec4<i32>(-1i, 0i, 2147483647i, 6707i), vec2<i32>(27313i, -3439i)), Struct_3(vec3<f32>(-1000f, 1000f, -509f), Struct_2(false, vec2<u32>(45294u, 40765u), Struct_1(4294967295u, -688f, 884f, -18368i, 36174i)), 88882u, vec4<i32>(2147483647i, -29614i, 42877i, 2147483647i), vec2<i32>(0i, -25070i)), Struct_3(vec3<f32>(257f, 699f, 1623f), Struct_2(false, vec2<u32>(21393u, 4301u), Struct_1(19663u, 1023f, -1845f, 4849i, -1i)), 0u, vec4<i32>(-1i, 54075i, 1i, 2147483647i), vec2<i32>(0i, -6747i)), Struct_3(vec3<f32>(-850f, -160f, -345f), Struct_2(false, vec2<u32>(44960u, 0u), Struct_1(52917u, 492f, -219f, 1i, 29139i)), 29102u, vec4<i32>(2522i, 27952i, 1i, 23171i), vec2<i32>(0i, 21891i)), Struct_3(vec3<f32>(378f, 189f, 1345f), Struct_2(false, vec2<u32>(4294967295u, 4638u), Struct_1(38785u, -641f, 872f, 3512i, 0i)), 73906u, vec4<i32>(-20761i, 2147483647i, 11976i, 26887i), vec2<i32>(11095i, 0i)), Struct_3(vec3<f32>(1320f, 797f, -511f), Struct_2(true, vec2<u32>(1u, 1u), Struct_1(36944u, -677f, 1000f, 2147483647i, -9079i)), 1u, vec4<i32>(2147483647i, 34136i, 44755i, 2147483647i), vec2<i32>(2147483647i, 2147483647i)), Struct_3(vec3<f32>(-324f, -129f, 831f), Struct_2(false, vec2<u32>(0u, 1u), Struct_1(1u, -365f, -498f, -4302i, 0i)), 30257u, vec4<i32>(-1i, 46025i, 2447i, -7808i), vec2<i32>(-14617i, 1i)), Struct_3(vec3<f32>(2130f, 621f, -1267f), Struct_2(false, vec2<u32>(1u, 4294967295u), Struct_1(28482u, 1009f, -296f, -23710i, 2147483647i)), 0u, vec4<i32>(i32(-2147483648), -18399i, -20369i, 1i), vec2<i32>(12875i, -50676i)), Struct_3(vec3<f32>(-1038f, 876f, 616f), Struct_2(true, vec2<u32>(4294967295u, 50804u), Struct_1(1u, -567f, -823f, 42242i, 2147483647i)), 0u, vec4<i32>(3472i, -1i, -20696i, 11768i), vec2<i32>(-67404i, -21161i)), Struct_3(vec3<f32>(2193f, 656f, -1850f), Struct_2(false, vec2<u32>(1u, 35142u), Struct_1(46869u, -396f, -388f, 39647i, 2147483647i)), 1u, vec4<i32>(i32(-2147483648), -21820i, 30786i, i32(-2147483648)), vec2<i32>(0i, 31316i)), Struct_3(vec3<f32>(-830f, 851f, -831f), Struct_2(false, vec2<u32>(68909u, 54156u), Struct_1(28241u, 1000f, -432f, i32(-2147483648), 2076i)), 49895u, vec4<i32>(1i, -60131i, 45906i, -1i), vec2<i32>(9465i, 0i)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(0u, 15u)];
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(global0.a - vec3<f32>(arg_1.b, 264f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-879f + var_0.b.c.b) * arg_0))), var_0.b, firstLeadingBit(4294967295u), vec4<i32>(93709i, ~(-1i), var_0.d.x, -(~(-56943i))), vec2<i32>(firstTrailingBit(-58233i << ((var_0.b.c.a ^ global0.b.b.x) % 32u)), arg_1.d << (global0.c % 32u)));
    let var_1 = ~_wgslsmith_mult_vec4_i32(vec4<i32>(1754i, arg_1.e, 1i, arg_1.e | (-15425i >> (u_input.a % 32u))), vec4<i32>(var_0.b.c.d, arg_1.e, _wgslsmith_dot_vec3_i32(var_0.d.xyw, global0.d.wzz) << (global0.c % 32u), _wgslsmith_mod_i32(global0.e.x, var_0.d.x ^ arg_1.d)));
    let var_2 = var_0.b.c;
    let var_3 = arg_1;
    return firstLeadingBit(min(var_2.d, 1i));
}

fn func_2() -> Struct_1 {
    let var_0 = func_3(_wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(149f + _wgslsmith_f_op_f32(sign(1000f))))), global0.b.c);
    global1 = array<Struct_3, 15>();
    var var_1 = vec4<bool>(global0.b.a, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.c.b * global0.a.x)) < global0.a.x), true, global0.b.a);
    global1 = array<Struct_3, 15>();
    var var_2 = countOneBits(vec3<u32>(~4294967295u, ~_wgslsmith_add_u32(_wgslsmith_mod_u32(global0.c, 40130u), reverseBits(18036u)), abs(global0.b.c.a)));
    return global0.b.c;
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_3, arg_3: vec4<bool>) -> i32 {
    global1 = array<Struct_3, 15>();
    var var_0 = func_2();
    var var_1 = global0.b.c;
    var var_2 = Struct_2(arg_3.x, ~firstTrailingBit(firstTrailingBit(select(global0.b.b, vec2<u32>(1u, var_0.a), false))), global0.b.c);
    let var_3 = var_0.c;
    return abs(-countOneBits(_wgslsmith_mult_i32(24264i, arg_2.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.a.x + -1099f), 826f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(327f - global0.b.c.b) - -637f) - global0.a.x)));
    var var_1 = select(vec3<i32>(_wgslsmith_add_i32(0i, _wgslsmith_sub_i32(41290i, _wgslsmith_add_i32(-48325i, 2147483647i))), func_1(countOneBits(vec3<u32>(u_input.a, global0.b.b.x, global0.b.c.a)), 4294967295u, global1[_wgslsmith_index_u32(u_input.a, 15u)], vec4<bool>(global0.b.a, true, global0.b.a, global0.b.a)), func_2().d), vec3<i32>(global0.b.c.d, -2147483647i, 67889i), !select(!select(vec3<bool>(false, false, global0.b.a), vec3<bool>(global0.b.a, global0.b.a, global0.b.a), global0.b.a), vec3<bool>(true, true, true), select(vec3<bool>(false, global0.b.a, global0.b.a), vec3<bool>(global0.b.a, true, global0.b.a), vec3<bool>(global0.b.a, global0.b.a, global0.b.a))));
    var var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(reverseBits(countOneBits(countOneBits(var_1.x))), i32(-1i) * -1i), global0.d.wz);
    var var_3 = Struct_2(any(!vec3<bool>(all(vec3<bool>(true, global0.b.a, true)), global0.b.a, false)), vec2<u32>(global0.c, u_input.a), func_2());
    var var_4 = ~global0.b.b.x;
    let var_5 = func_2();
    let var_6 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(~0u), 0u, _wgslsmith_dot_vec2_u32(var_3.b, ~(vec2<u32>(103480u, 44447u) << (var_3.b % vec2<u32>(32u))))), ~min(_wgslsmith_clamp_i32(select(u_input.b, 21061i, global0.b.a), u_input.b, ~66100i), -global0.d.x), -402f, vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.b.x, var_6.x, 4294967295u, global0.b.c.a), vec4<u32>(u_input.a, var_6.x, 0u, var_3.c.a)), var_3.b.x, 1u) | ~(~vec3<u32>(124022u, var_6.x, global0.b.c.a)), ~(_wgslsmith_div_vec3_i32(-global0.d.xzz, global0.d.ywx) << (vec3<u32>(16364u >> (global0.c % 32u), ~12060u, select(17484u, var_5.a, false)) % vec3<u32>(32u))));
}

