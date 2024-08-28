struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_2;

var<private> global2: array<vec3<bool>, 30>;

var<private> global3: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(Struct_3(Struct_2(37854u, Struct_1(vec2<i32>(-44725i, 1i), vec2<i32>(11268i, i32(-2147483648)))), 0u), 2147483647i, Struct_3(Struct_2(33743u, Struct_1(vec2<i32>(-2533i, -25380i), vec2<i32>(2147483647i, 9935i))), 85016u), Struct_3(Struct_2(53554u, Struct_1(vec2<i32>(i32(-2147483648), 1i), vec2<i32>(406i, 0i))), 0u)), Struct_4(Struct_3(Struct_2(37966u, Struct_1(vec2<i32>(-3182i, -61312i), vec2<i32>(-41492i, -80518i))), 0u), 13443i, Struct_3(Struct_2(0u, Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(40216i, -28510i))), 4294967295u), Struct_3(Struct_2(1u, Struct_1(vec2<i32>(-17993i, -30663i), vec2<i32>(11961i, i32(-2147483648)))), 12187u)), Struct_4(Struct_3(Struct_2(4294967295u, Struct_1(vec2<i32>(0i, -11693i), vec2<i32>(-1i, -1i))), 4294967295u), 2147483647i, Struct_3(Struct_2(65718u, Struct_1(vec2<i32>(2147483647i, -36120i), vec2<i32>(37809i, 42810i))), 1u), Struct_3(Struct_2(88632u, Struct_1(vec2<i32>(-14075i, -1i), vec2<i32>(-2684i, -22274i))), 0u)), Struct_4(Struct_3(Struct_2(0u, Struct_1(vec2<i32>(45675i, 13090i), vec2<i32>(24255i, 1i))), 8740u), -17214i, Struct_3(Struct_2(1u, Struct_1(vec2<i32>(-1i, 17501i), vec2<i32>(-102i, 2147483647i))), 4294967295u), Struct_3(Struct_2(5705u, Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(5838i, -11290i))), 1u)), Struct_4(Struct_3(Struct_2(27557u, Struct_1(vec2<i32>(-1i, 64836i), vec2<i32>(0i, i32(-2147483648)))), 45683u), 16076i, Struct_3(Struct_2(25599u, Struct_1(vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(0i, -190i))), 0u), Struct_3(Struct_2(1u, Struct_1(vec2<i32>(1i, -1i), vec2<i32>(-17211i, -6675i))), 4294967295u)), Struct_4(Struct_3(Struct_2(1u, Struct_1(vec2<i32>(-10082i, -31641i), vec2<i32>(1i, -6093i))), 4294967295u), 2147483647i, Struct_3(Struct_2(27974u, Struct_1(vec2<i32>(0i, 11292i), vec2<i32>(12988i, -17177i))), 18318u), Struct_3(Struct_2(0u, Struct_1(vec2<i32>(2147483647i, 1i), vec2<i32>(39690i, 18748i))), 53877u)), Struct_4(Struct_3(Struct_2(39821u, Struct_1(vec2<i32>(9512i, 1i), vec2<i32>(2147483647i, -4445i))), 2861u), 13186i, Struct_3(Struct_2(29967u, Struct_1(vec2<i32>(1i, -26806i), vec2<i32>(-1i, 16382i))), 4294967295u), Struct_3(Struct_2(4294967295u, Struct_1(vec2<i32>(14462i, 18105i), vec2<i32>(31354i, 0i))), 46826u)), Struct_4(Struct_3(Struct_2(1u, Struct_1(vec2<i32>(-42780i, 2147483647i), vec2<i32>(i32(-2147483648), 50833i))), 15147u), 4760i, Struct_3(Struct_2(26750u, Struct_1(vec2<i32>(53281i, 0i), vec2<i32>(1i, 3975i))), 7006u), Struct_3(Struct_2(0u, Struct_1(vec2<i32>(0i, -32462i), vec2<i32>(-30468i, 4271i))), 1u)));

var<private> global4: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec2<i32>(-37711i, -42354i), vec2<i32>(-19146i, 0i)), Struct_1(vec2<i32>(i32(-2147483648), 36368i), vec2<i32>(0i, i32(-2147483648))), Struct_1(vec2<i32>(10341i, 0i), vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(vec2<i32>(-43952i, -1i), vec2<i32>(-1i, 47158i)), Struct_1(vec2<i32>(-36660i, 25466i), vec2<i32>(0i, 0i)), Struct_1(vec2<i32>(23066i, 1i), vec2<i32>(3393i, 0i)), Struct_1(vec2<i32>(i32(-2147483648), 40095i), vec2<i32>(2147483647i, 2147483647i)), Struct_1(vec2<i32>(96725i, -1i), vec2<i32>(45559i, 2147483647i)), Struct_1(vec2<i32>(-1i, -2463i), vec2<i32>(1i, 8857i)), Struct_1(vec2<i32>(59325i, 0i), vec2<i32>(19453i, 1i)), Struct_1(vec2<i32>(0i, -396i), vec2<i32>(6126i, 0i)), Struct_1(vec2<i32>(43876i, 2833i), vec2<i32>(2147483647i, -2676i)), Struct_1(vec2<i32>(1i, 2147483647i), vec2<i32>(25415i, -48743i)), Struct_1(vec2<i32>(0i, -38669i), vec2<i32>(i32(-2147483648), 0i)), Struct_1(vec2<i32>(-22889i, 32433i), vec2<i32>(1i, 15192i)), Struct_1(vec2<i32>(i32(-2147483648), 40384i), vec2<i32>(-2935i, 1i)), Struct_1(vec2<i32>(-15819i, 1i), vec2<i32>(-62383i, -26372i)), Struct_1(vec2<i32>(9552i, 20682i), vec2<i32>(-34810i, -23625i)), Struct_1(vec2<i32>(-13562i, i32(-2147483648)), vec2<i32>(2147483647i, -69i)), Struct_1(vec2<i32>(-69268i, 0i), vec2<i32>(-7374i, -35351i)), Struct_1(vec2<i32>(-20365i, 42064i), vec2<i32>(i32(-2147483648), -1i)), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-1i, -15600i)), Struct_1(vec2<i32>(-1i, -11552i), vec2<i32>(0i, 2147483647i)), Struct_1(vec2<i32>(-49985i, 45878i), vec2<i32>(-46586i, 2147483647i)), Struct_1(vec2<i32>(46010i, -13388i), vec2<i32>(2147483647i, 50621i)), Struct_1(vec2<i32>(-1i, 13596i), vec2<i32>(0i, 54950i)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32) -> vec4<u32> {
    global4 = array<Struct_1, 26>();
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global0.x, global0.x), -933f, _wgslsmith_f_op_f32(-2232f * -785f))))));
    var var_0 = countOneBits(firstLeadingBit(abs(abs(arg_0.yyw))));
    let var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(arg_0, -abs(vec4<i32>(-2147483647i, -22891i, 0i, arg_0.x))), 33807i);
    let var_2 = global3[_wgslsmith_index_u32(~arg_1, 8u)];
    return (~vec4<u32>(_wgslsmith_clamp_u32(4294967295u, 57435u, global1.a), select(u_input.d.x, 1u, true), _wgslsmith_dot_vec2_u32(u_input.d.xy, u_input.c), min(84139u, u_input.d.x)) << (abs(_wgslsmith_div_vec4_u32(~vec4<u32>(55512u, 0u, global1.a, var_2.a.a.a), u_input.d & u_input.d)) % vec4<u32>(32u))) ^ min(min(vec4<u32>(4294967295u, countOneBits(global1.a), ~arg_1, firstTrailingBit(4294967295u)), select(~vec4<u32>(global1.a, var_2.c.a.a, 0u, 1u), ~u_input.d, vec4<bool>(true, false, false, false))), abs(u_input.d));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_3 {
    var var_0 = arg_0;
    var var_1 = min(min(_wgslsmith_div_vec4_u32(func_3(vec4<i32>(-2147483647i, arg_0.b.a.x, global1.b.a.x, -1i), var_0.a), firstLeadingBit(vec4<u32>(4294967295u, var_0.a, 4294967295u, arg_0.a))), firstLeadingBit(firstTrailingBit(min(u_input.d, vec4<u32>(82868u, 78811u, u_input.c.x, arg_0.a))))), u_input.d >> (func_3(-countOneBits(vec4<i32>(-30202i, 17712i, -29507i, -2147483647i)), _wgslsmith_mod_u32(countOneBits(global1.a), global1.a | 18165u)) % vec4<u32>(32u)));
    var_1 = ~abs(u_input.d);
    global2 = array<vec3<bool>, 30>();
    var var_2 = var_0.a;
    return Struct_3(arg_0, _wgslsmith_div_u32(0u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(var_1.zwy, vec3<u32>(2278u, global1.a, u_input.d.x)), var_1.zxz & vec3<u32>(54983u, global1.a, 62338u))));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: vec2<f32>) -> Struct_2 {
    var var_0 = !vec4<bool>(!arg_1.x, any(!vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x)), !(_wgslsmith_f_op_f32(f32(-1f) * -1165f) >= _wgslsmith_f_op_f32(global0.x + 270f)), arg_1.x);
    let var_1 = Struct_2(~1u, arg_0.a.b);
    global4 = array<Struct_1, 26>();
    global0 = vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-218f, global0.x) - arg_2.x), _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(856f * -990f))) - 299f)));
    let var_2 = true;
    return var_1;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec2<i32>) -> vec4<bool> {
    var var_0 = ~global1.a;
    global3 = array<Struct_4, 8>();
    let var_1 = global0.x;
    global1 = Struct_2(_wgslsmith_mod_u32(0u, 1u), func_2(func_2(arg_0, vec4<bool>(arg_1.x != arg_1.x, any(arg_1), any(vec2<bool>(arg_1.x, false)), true)).a, !(!(!arg_1))).a.b);
    let var_2 = Struct_3(func_2(arg_0, vec4<bool>(arg_1.x, all(vec2<bool>(true, true)), arg_1.x, arg_1.x)).a, u_input.a);
    return arg_1;
}

fn func_1(arg_0: u32, arg_1: vec3<u32>) -> Struct_3 {
    let var_0 = vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(min(u_input.b, global1.b.b.x), firstTrailingBit(0i)), 10933i) & 2147483647i, countOneBits(~select(global1.b.a.x, 5079i, true)), abs(abs(select(u_input.b & u_input.b, 1i, false))));
    var var_1 = select(vec4<bool>(true, true, true, true), select(func_5(func_4(func_2(Struct_2(35955u, global1.b), vec4<bool>(true, true, true, false)), select(global2[_wgslsmith_index_u32(11236u, 30u)], vec3<bool>(false, false, true), true), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) - global0.xy)), vec4<bool>(true, any(vec2<bool>(true, false)), true, any(vec2<bool>(true, true))), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, 58866i) >> (arg_1.xy % vec2<u32>(32u)), reverseBits(vec2<i32>(u_input.b, var_0.x)))), !vec4<bool>(any(vec3<bool>(false, true, true)), select(true, false, false), func_5(Struct_2(arg_1.x, global1.b), vec4<bool>(true, false, false, true), global1.b.b).x, any(vec4<bool>(true, false, true, true))), !(!all(vec2<bool>(true, true)))), !vec4<bool>(true, !(u_input.c.x != 0u), all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), false)), all(vec2<bool>(true, true))));
    let var_2 = Struct_4(Struct_3(func_4(func_2(Struct_2(arg_1.x, Struct_1(vec2<i32>(u_input.b, global1.b.a.x), vec2<i32>(-57213i, -87546i))), select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(true, var_1.x, var_1.x, var_1.x), var_1.x)), !select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(true, false, var_1.x), false), vec2<f32>(_wgslsmith_f_op_f32(max(1753f, global0.x)), _wgslsmith_f_op_f32(global0.x * global0.x))), ~0u), _wgslsmith_mod_i32(~u_input.b, var_0.x), func_2(func_4(func_2(Struct_2(28387u, global1.b), vec4<bool>(var_1.x, true, var_1.x, var_1.x)), var_1.ywx, global0.zz), vec4<bool>(-global1.b.a.x != -var_0.x, all(vec2<bool>(true, true)), true, var_1.x)), Struct_3(Struct_2(_wgslsmith_dot_vec2_u32(arg_1.zx | vec2<u32>(35717u, 36789u), arg_1.yy), func_4(Struct_3(Struct_2(global1.a, global1.b), 41239u), var_1.xxy, _wgslsmith_f_op_vec2_f32(abs(global0.yx))).b), firstTrailingBit(u_input.c.x)));
    var var_3 = var_2;
    var_3 = global3[_wgslsmith_index_u32(arg_1.x, 8u)];
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_1(4294967295u, _wgslsmith_sub_vec3_u32((u_input.d.yyx | u_input.d.ywz) | ~vec3<u32>(global1.a, 1u, u_input.a), u_input.d.yyx)), abs(965i), Struct_3(Struct_2(~1u, global1.b), global1.a | ~_wgslsmith_dot_vec2_u32(vec2<u32>(global1.a, u_input.c.x), vec2<u32>(global1.a, u_input.d.x))), Struct_3(func_2(func_4(Struct_3(Struct_2(global1.a, Struct_1(vec2<i32>(-31549i, u_input.b), vec2<i32>(u_input.b, -5379i))), u_input.d.x), vec3<bool>(false, true, false), _wgslsmith_f_op_vec2_f32(-global0.xy)), vec4<bool>(true, true, true, true)).a, ~1u));
    global2 = array<vec3<bool>, 30>();
    let var_1 = global0.x;
    global2 = array<vec3<bool>, 30>();
    global3 = array<Struct_4, 8>();
    var var_2 = vec3<u32>(_wgslsmith_sub_u32(34646u, func_1(1u, u_input.d.xyz | vec3<u32>(113400u, u_input.d.x, global1.a)).a.a), ~func_1(39096u, max(abs(u_input.d.zxy), countOneBits(vec3<u32>(var_0.c.a.a, 4294967295u, global1.a)))).a.a, abs(1u));
    let var_3 = Struct_3(Struct_2(851u, func_2(func_4(var_0.c, global2[_wgslsmith_index_u32(global1.a >> (68010u % 32u), 30u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(138f, -729f))), vec4<bool>(true, true, true, true)).a.b), ~(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, var_0.d.b), u_input.d.xy) << (_wgslsmith_dot_vec3_u32(u_input.d.yxw, u_input.d.yyw) % 32u)) >> (var_0.c.b % 32u));
    global0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.x, 128f)) + 1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_f_op_f32(-786f - global0.x))))), func_5(Struct_2(_wgslsmith_mod_u32(~4294967295u, abs(var_2.x)), func_1(abs(global1.a), vec3<u32>(var_0.d.b, 1692u, 55484u)).a.b), select(vec4<bool>(true, func_5(var_0.a.a, vec4<bool>(false, true, true, false), var_3.a.b.a).x, all(vec4<bool>(true, true, false, true)), false), vec4<bool>(select(true, false, true), all(global2[_wgslsmith_index_u32(89947u, 30u)]), var_3.a.b.b.x == var_3.a.b.a.x, true), all(vec3<bool>(false, true, false))), -var_3.a.b.a).zzx));
    global3 = array<Struct_4, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_3.a.b.b.x, -8762i), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global0.x)), -1445f)));
}

