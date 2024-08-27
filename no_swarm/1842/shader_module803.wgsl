struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: f32,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_3(vec3<u32>(0u, 0u, 0u), vec2<u32>(1u, 38096u), Struct_1(false, -17412i, vec2<u32>(24353u, 4294967295u), vec2<bool>(true, true))));

var<private> global1: array<Struct_5, 30> = array<Struct_5, 30>(Struct_5(32865u, Struct_2(Struct_1(false, i32(-2147483648), vec2<u32>(4294967295u, 4156u), vec2<bool>(true, true)), vec3<bool>(false, true, false), vec2<u32>(40742u, 9878u), Struct_1(true, 34943i, vec2<u32>(1u, 4294967295u), vec2<bool>(false, false))), -240f, 2147483647i, true), Struct_5(4294967295u, Struct_2(Struct_1(false, 2147483647i, vec2<u32>(4294967295u, 49468u), vec2<bool>(false, true)), vec3<bool>(false, true, false), vec2<u32>(0u, 4294967295u), Struct_1(false, -2099i, vec2<u32>(4294967295u, 0u), vec2<bool>(false, true))), -1555f, 60000i, false), Struct_5(49787u, Struct_2(Struct_1(true, -18394i, vec2<u32>(38010u, 3852u), vec2<bool>(false, true)), vec3<bool>(false, false, false), vec2<u32>(1u, 0u), Struct_1(false, 1i, vec2<u32>(1u, 1u), vec2<bool>(false, false))), 1533f, -1i, false), Struct_5(15198u, Struct_2(Struct_1(true, 1i, vec2<u32>(0u, 1258u), vec2<bool>(true, false)), vec3<bool>(false, false, false), vec2<u32>(135824u, 43332u), Struct_1(false, 2147483647i, vec2<u32>(89416u, 0u), vec2<bool>(false, false))), 505f, 50748i, true), Struct_5(15432u, Struct_2(Struct_1(false, -8094i, vec2<u32>(15632u, 4294967295u), vec2<bool>(true, false)), vec3<bool>(false, false, true), vec2<u32>(79369u, 0u), Struct_1(false, -5488i, vec2<u32>(1u, 54594u), vec2<bool>(false, true))), 1279f, 0i, false), Struct_5(61058u, Struct_2(Struct_1(true, 1i, vec2<u32>(11144u, 0u), vec2<bool>(false, true)), vec3<bool>(false, true, true), vec2<u32>(21796u, 34077u), Struct_1(true, -28519i, vec2<u32>(78096u, 73868u), vec2<bool>(false, false))), -1071f, 1i, true), Struct_5(0u, Struct_2(Struct_1(true, i32(-2147483648), vec2<u32>(29202u, 1u), vec2<bool>(true, false)), vec3<bool>(true, false, false), vec2<u32>(10826u, 32055u), Struct_1(true, 22542i, vec2<u32>(80842u, 30086u), vec2<bool>(true, true))), 883f, 2147483647i, true), Struct_5(0u, Struct_2(Struct_1(true, 0i, vec2<u32>(4667u, 0u), vec2<bool>(false, false)), vec3<bool>(false, true, true), vec2<u32>(74220u, 6227u), Struct_1(false, 2147483647i, vec2<u32>(0u, 0u), vec2<bool>(false, false))), 275f, 12693i, true), Struct_5(1u, Struct_2(Struct_1(false, 16965i, vec2<u32>(0u, 1u), vec2<bool>(true, true)), vec3<bool>(false, true, true), vec2<u32>(0u, 33177u), Struct_1(true, -17138i, vec2<u32>(0u, 92902u), vec2<bool>(false, true))), 1000f, 1i, true), Struct_5(55169u, Struct_2(Struct_1(false, 4698i, vec2<u32>(37353u, 13651u), vec2<bool>(false, false)), vec3<bool>(true, true, true), vec2<u32>(23362u, 22583u), Struct_1(true, 6213i, vec2<u32>(4379u, 1u), vec2<bool>(true, false))), 456f, i32(-2147483648), false), Struct_5(0u, Struct_2(Struct_1(true, i32(-2147483648), vec2<u32>(56730u, 1u), vec2<bool>(false, false)), vec3<bool>(false, true, false), vec2<u32>(66313u, 9282u), Struct_1(true, -2979i, vec2<u32>(5794u, 24029u), vec2<bool>(true, false))), -1760f, 75211i, false), Struct_5(1u, Struct_2(Struct_1(false, -1i, vec2<u32>(65344u, 4294967295u), vec2<bool>(true, false)), vec3<bool>(true, true, false), vec2<u32>(48837u, 54096u), Struct_1(true, 39566i, vec2<u32>(60503u, 4294967295u), vec2<bool>(true, false))), -1853f, -1i, true), Struct_5(37470u, Struct_2(Struct_1(false, 18022i, vec2<u32>(53792u, 16405u), vec2<bool>(false, true)), vec3<bool>(false, true, false), vec2<u32>(1u, 11996u), Struct_1(true, 4395i, vec2<u32>(4294967295u, 23440u), vec2<bool>(false, true))), -570f, 0i, false), Struct_5(1u, Struct_2(Struct_1(false, 2147483647i, vec2<u32>(1u, 63146u), vec2<bool>(true, false)), vec3<bool>(true, true, false), vec2<u32>(1u, 8178u), Struct_1(true, -44867i, vec2<u32>(0u, 1u), vec2<bool>(true, true))), 294f, 41764i, false), Struct_5(0u, Struct_2(Struct_1(true, -13714i, vec2<u32>(1u, 72122u), vec2<bool>(true, false)), vec3<bool>(false, true, false), vec2<u32>(26022u, 4294967295u), Struct_1(false, -44014i, vec2<u32>(0u, 2916u), vec2<bool>(false, true))), 301f, 23866i, true), Struct_5(0u, Struct_2(Struct_1(false, -1i, vec2<u32>(57635u, 5703u), vec2<bool>(true, false)), vec3<bool>(true, false, true), vec2<u32>(22899u, 71999u), Struct_1(true, 1i, vec2<u32>(47421u, 11270u), vec2<bool>(true, false))), -466f, -3139i, true), Struct_5(0u, Struct_2(Struct_1(false, i32(-2147483648), vec2<u32>(1u, 60863u), vec2<bool>(false, false)), vec3<bool>(false, true, true), vec2<u32>(56266u, 0u), Struct_1(true, -19126i, vec2<u32>(58523u, 1u), vec2<bool>(true, false))), -315f, -50183i, true), Struct_5(48981u, Struct_2(Struct_1(true, 0i, vec2<u32>(4294967295u, 12536u), vec2<bool>(true, true)), vec3<bool>(false, false, true), vec2<u32>(0u, 8041u), Struct_1(false, 38195i, vec2<u32>(4294967295u, 5773u), vec2<bool>(false, true))), -287f, -5549i, true), Struct_5(57754u, Struct_2(Struct_1(true, 2147483647i, vec2<u32>(32360u, 4294967295u), vec2<bool>(true, true)), vec3<bool>(false, false, false), vec2<u32>(72537u, 0u), Struct_1(true, -39070i, vec2<u32>(1u, 1u), vec2<bool>(false, false))), -722f, i32(-2147483648), false), Struct_5(34453u, Struct_2(Struct_1(false, 36703i, vec2<u32>(46327u, 53950u), vec2<bool>(false, true)), vec3<bool>(true, true, false), vec2<u32>(0u, 0u), Struct_1(false, 16296i, vec2<u32>(0u, 16475u), vec2<bool>(false, true))), 1024f, i32(-2147483648), false), Struct_5(11887u, Struct_2(Struct_1(false, -1i, vec2<u32>(4294967295u, 8859u), vec2<bool>(false, true)), vec3<bool>(false, false, false), vec2<u32>(28402u, 8385u), Struct_1(false, -2763i, vec2<u32>(4294967295u, 4294967295u), vec2<bool>(true, true))), -156f, 17405i, false), Struct_5(45834u, Struct_2(Struct_1(false, -1537i, vec2<u32>(23118u, 34961u), vec2<bool>(false, true)), vec3<bool>(true, false, true), vec2<u32>(1u, 0u), Struct_1(true, -20051i, vec2<u32>(4294967295u, 8279u), vec2<bool>(true, true))), 600f, 1i, false), Struct_5(4294967295u, Struct_2(Struct_1(false, -6643i, vec2<u32>(69497u, 16284u), vec2<bool>(true, false)), vec3<bool>(true, true, true), vec2<u32>(21162u, 40753u), Struct_1(false, -36255i, vec2<u32>(16968u, 1u), vec2<bool>(false, false))), -597f, 1i, false), Struct_5(4294967295u, Struct_2(Struct_1(false, -1i, vec2<u32>(0u, 1u), vec2<bool>(false, true)), vec3<bool>(true, false, false), vec2<u32>(2704u, 66050u), Struct_1(false, 0i, vec2<u32>(43621u, 44212u), vec2<bool>(false, false))), 654f, -1i, false), Struct_5(0u, Struct_2(Struct_1(false, 2147483647i, vec2<u32>(35566u, 1u), vec2<bool>(true, false)), vec3<bool>(false, false, true), vec2<u32>(41839u, 22791u), Struct_1(true, 2147483647i, vec2<u32>(18239u, 0u), vec2<bool>(true, false))), -1760f, i32(-2147483648), true), Struct_5(66520u, Struct_2(Struct_1(false, 83092i, vec2<u32>(26058u, 1u), vec2<bool>(false, true)), vec3<bool>(true, false, true), vec2<u32>(1u, 4294967295u), Struct_1(false, -1i, vec2<u32>(0u, 16190u), vec2<bool>(false, true))), 805f, i32(-2147483648), true), Struct_5(0u, Struct_2(Struct_1(false, 1i, vec2<u32>(28015u, 1u), vec2<bool>(true, true)), vec3<bool>(false, true, false), vec2<u32>(1u, 51063u), Struct_1(true, 0i, vec2<u32>(0u, 1u), vec2<bool>(false, true))), -691f, -1i, true), Struct_5(22911u, Struct_2(Struct_1(true, -8109i, vec2<u32>(55365u, 45954u), vec2<bool>(false, false)), vec3<bool>(false, false, true), vec2<u32>(65599u, 3838u), Struct_1(true, 27951i, vec2<u32>(0u, 0u), vec2<bool>(true, false))), 821f, 2147483647i, false), Struct_5(56153u, Struct_2(Struct_1(false, 2147483647i, vec2<u32>(4294967295u, 1u), vec2<bool>(false, true)), vec3<bool>(false, false, true), vec2<u32>(1788u, 45407u), Struct_1(true, 1i, vec2<u32>(4294967295u, 19610u), vec2<bool>(true, true))), -360f, -17854i, true), Struct_5(56465u, Struct_2(Struct_1(true, 1i, vec2<u32>(0u, 11491u), vec2<bool>(false, false)), vec3<bool>(true, false, false), vec2<u32>(6495u, 1u), Struct_1(false, -1i, vec2<u32>(91553u, 1u), vec2<bool>(true, false))), 1124f, 0i, false));

var<private> global2: bool;

var<private> global3: array<u32, 32>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec2<bool>) -> u32 {
    let var_0 = Struct_3(countOneBits(vec3<u32>(4294967295u, abs(~arg_1), _wgslsmith_mult_u32(global0.a.b.x, abs(global0.a.b.x)))), global0.a.b, Struct_1((~(-31455i) << (_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], arg_1, 4294967295u) % 32u)) > global0.a.c.b, u_input.a.x, _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(arg_1, global0.a.c.c.x)), ~vec2<u32>(global0.a.a.x, 39877u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(global0.a.c.c.x, global0.a.b.x) << (vec2<u32>(global0.a.b.x, 0u) % vec2<u32>(32u)), ~global0.a.c.c, reverseBits(global0.a.b)), reverseBits(firstLeadingBit(global0.a.b))), vec2<bool>(true, true)));
    let var_1 = ~u_input.d;
    let var_2 = global0.a.a;
    global0 = Struct_4(global0.a);
    let var_3 = ~max(global0.a.a.xz, var_0.c.c);
    return 4473u;
}

fn func_4(arg_0: Struct_5, arg_1: i32, arg_2: vec4<u32>, arg_3: u32) -> bool {
    global0 = Struct_4(Struct_3(_wgslsmith_mult_vec3_u32(abs(_wgslsmith_add_vec3_u32(arg_2.wwy, vec3<u32>(1u, global3[_wgslsmith_index_u32(arg_3, 32u)], 0u))), vec3<u32>(4294967295u, ~global3[_wgslsmith_index_u32(1u, 32u)], 98693u)), global0.a.c.c, arg_0.b.d));
    let var_0 = 1i ^ abs(arg_1);
    global0 = Struct_4(Struct_3(global0.a.a ^ _wgslsmith_div_vec3_u32(global0.a.a, arg_2.zyw), arg_2.wz, Struct_1(!global0.a.c.a, _wgslsmith_mod_i32(1i, arg_0.b.d.b) ^ -61148i, vec2<u32>(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_2.x, global0.a.b.x), 32u)], _wgslsmith_mult_u32(4294967295u, arg_3)), select(!vec2<bool>(false, arg_0.b.a.a), !vec2<bool>(arg_0.e, true), !arg_0.b.d.d))));
    let var_1 = arg_0.c;
    var var_2 = arg_0.b;
    return var_0 <= var_0;
}

fn func_2() -> u32 {
    let var_0 = Struct_1(func_4(Struct_5(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.a.a.x, 32u)], 32u)], global0.a.b.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.a.c.c.x, 32u)], 32u)], 32u)], 32u)]), vec3<u32>(4294967295u, 15604u, global3[_wgslsmith_index_u32(global0.a.b.x, 32u)]))), Struct_2(Struct_1(global0.a.c.d.x, 5565i, vec2<u32>(global0.a.c.c.x, global0.a.a.x), vec2<bool>(false, false)), vec3<bool>(global0.a.c.a, false, global0.a.c.d.x), reverseBits(global0.a.a.yz), global0.a.c), -1057f, u_input.c.x, any(!vec4<bool>(false, global0.a.c.d.x, false, global0.a.c.d.x))), u_input.c.x, ~vec4<u32>(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0.a.a.x, global3[_wgslsmith_index_u32(0u, 32u)], 4294967295u), 32u)], max(global3[_wgslsmith_index_u32(global0.a.c.c.x, 32u)], global0.a.c.c.x), countOneBits(4294967295u), _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(4294967295u, 32u)], global3[_wgslsmith_index_u32(8024u, 32u)])), ~func_3(true, global3[_wgslsmith_index_u32(0u, 32u)], !global0.a.c.d)), u_input.c.x, min(global0.a.a.xx, vec2<u32>(~_wgslsmith_clamp_u32(0u, 1u, 4294967295u), global0.a.c.c.x)), global0.a.c.d);
    let var_1 = Struct_2(Struct_1(var_0.d.x, firstTrailingBit(var_0.b), select(var_0.c, firstTrailingBit(~global0.a.b), global0.a.c.d.x || global0.a.c.a), var_0.d), vec3<bool>(true, any(vec3<bool>(var_0.a, var_0.d.x, u_input.b != var_0.b)), all(select(!vec4<bool>(false, var_0.a, false, global0.a.c.d.x), vec4<bool>(true, false, var_0.a, false), !vec4<bool>(true, true, global0.a.c.a, global0.a.c.d.x)))), vec2<u32>(countOneBits((var_0.c.x | 2216u) >> (4294967295u % 32u)), 61071u), Struct_1(!(!all(vec4<bool>(global0.a.c.a, true, true, false))), abs(global0.a.c.b), (global0.a.c.c & vec2<u32>(4294967295u, 1u)) & ~(~global0.a.c.c), var_0.d));
    global3 = array<u32, 32>();
    global1 = array<Struct_5, 30>();
    global3 = array<u32, 32>();
    return ~0u;
}

fn func_1() -> u32 {
    return global3[_wgslsmith_index_u32(select(global3[_wgslsmith_index_u32(106725u, 32u)], func_2(), any(vec3<bool>(!any(vec3<bool>(global0.a.c.d.x, global0.a.c.a, global0.a.c.d.x)), true, true | !global0.a.c.d.x))), 32u)];
}

fn func_5(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: Struct_4, arg_3: vec3<u32>) -> Struct_2 {
    var var_0 = arg_2;
    let var_1 = Struct_2(arg_2.a.c, vec3<bool>(func_4(Struct_5(_wgslsmith_add_u32(0u, arg_3.x), Struct_2(var_0.a.c, vec3<bool>(true, global0.a.c.a, var_0.a.c.d.x), vec2<u32>(arg_2.a.b.x, 6576u), Struct_1(true, arg_0.x, vec2<u32>(global0.a.a.x, 96765u), vec2<bool>(false, global0.a.c.a))), _wgslsmith_f_op_f32(sign(arg_1.x)), u_input.b | 0i, var_0.a.c.a), u_input.c.x, vec4<u32>(arg_3.x, var_0.a.c.c.x ^ global3[_wgslsmith_index_u32(0u, 32u)], 1u, var_0.a.b.x), 1u), func_4(Struct_5(4294967295u & global3[_wgslsmith_index_u32(4294967295u, 32u)], Struct_2(Struct_1(global0.a.c.a, -2147483647i, var_0.a.b, vec2<bool>(false, arg_2.a.c.d.x)), vec3<bool>(true, arg_2.a.c.d.x, false), vec2<u32>(4294967295u, 0u), Struct_1(var_0.a.c.a, 20159i, vec2<u32>(0u, global0.a.c.c.x), arg_2.a.c.d)), 1f, global0.a.c.b, true), _wgslsmith_dot_vec2_i32(u_input.a.xz, vec2<i32>(-2147483647i, 2147483647i)) | min(-2147483647i, 5196i), ~vec4<u32>(global3[_wgslsmith_index_u32(var_0.a.a.x, 32u)], global3[_wgslsmith_index_u32(19677u, 32u)], arg_2.a.c.c.x, 0u), ~59215u), global0.a.c.d.x), abs(abs(arg_3.yz)), Struct_1(any(global0.a.c.d), ~(~98933i), ~(~arg_3.xy), var_0.a.c.d));
    let var_2 = 1194f;
    var var_3 = var_1.a.c.x;
    var_0 = arg_2;
    return var_1;
}

fn func_6(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2) -> Struct_3 {
    var var_0 = 977i;
    let var_1 = max(_wgslsmith_clamp_vec3_i32((u_input.a.xyx >> (global0.a.a % vec3<u32>(32u))) & reverseBits(u_input.c), u_input.c, vec3<i32>(-1i) * -u_input.c) & vec3<i32>(_wgslsmith_sub_i32(-14099i, _wgslsmith_dot_vec3_i32(u_input.a.xyx, u_input.c)), global0.a.c.b, -1i), ~(-select(select(u_input.a.yxy, u_input.c, false), u_input.c, arg_2.b)));
    global2 = true;
    var_0 = arg_2.d.b << (1u % 32u);
    let var_2 = true;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 32>();
    global3 = array<u32, 32>();
    global3 = array<u32, 32>();
    let var_0 = func_6(Struct_3(vec3<u32>(select(~global0.a.b.x, ~global3[_wgslsmith_index_u32(62893u, 32u)], true), 1u, ~0u), ~(vec2<u32>(1u, 1u) ^ firstTrailingBit(global0.a.c.c)), global0.a.c), _wgslsmith_f_op_f32(round(468f)), func_5(vec2<i32>(1i, u_input.b << (func_1() % 32u)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1094f)), _wgslsmith_f_op_f32(f32(-1f) * -112f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1000f))))), Struct_4(Struct_3(~vec3<u32>(global0.a.a.x, global0.a.a.x, 4294967295u), max(vec2<u32>(1u, global3[_wgslsmith_index_u32(global0.a.b.x, 32u)]), vec2<u32>(1u, 1u)), Struct_1(true, global0.a.c.b, vec2<u32>(1137u, 51538u), vec2<bool>(global0.a.c.d.x, global0.a.c.a)))), vec3<u32>(~4294967295u, _wgslsmith_div_u32(global0.a.a.x, global3[_wgslsmith_index_u32(113527u, 32u)]), _wgslsmith_dot_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(55352u, 32u)], global3[_wgslsmith_index_u32(145568u, 32u)]), vec2<u32>(global0.a.b.x, global0.a.a.x))) ^ (global0.a.a << (_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.a.c.c.x, 20189u, 1u), vec3<u32>(global0.a.c.c.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.a.c.c.x, 32u)], 32u)], 32u)], global3[_wgslsmith_index_u32(global0.a.a.x, 32u)]), global0.a.a) % vec3<u32>(32u)))));
    global0 = Struct_4(func_6(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -733f) - _wgslsmith_f_op_f32(max(-1362f, _wgslsmith_f_op_f32(397f - 423f)))), func_5(~abs(u_input.c.xz), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2209f, 935f, 214f) - vec3<f32>(314f, -450f, 594f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1725f, 100f, 754f))), Struct_4(Struct_3(vec3<u32>(var_0.b.x, 4294967295u, global3[_wgslsmith_index_u32(var_0.c.c.x, 32u)]), vec2<u32>(global0.a.c.c.x, 1u), global0.a.c)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.a.c.c.x, 82242u), var_0.a), 0u, ~var_0.b.x))));
    let var_1 = select(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(~reverseBits(vec4<u32>(68166u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], global0.a.a.x, 0u)), select(~vec4<u32>(global0.a.a.x, 27337u, global3[_wgslsmith_index_u32(global0.a.a.x, 32u)], global0.a.a.x), min(vec4<u32>(var_0.b.x, 1u, global3[_wgslsmith_index_u32(global0.a.a.x, 32u)], global3[_wgslsmith_index_u32(var_0.a.x, 32u)]), vec4<u32>(1u, 1u, global0.a.a.x, global0.a.a.x)), select(vec4<bool>(global0.a.c.d.x, global0.a.c.d.x, false, global0.a.c.d.x), vec4<bool>(var_0.c.a, var_0.c.a, var_0.c.d.x, global0.a.c.a), vec4<bool>(global0.a.c.a, true, false, global0.a.c.a)))), _wgslsmith_add_vec4_u32(~(vec4<u32>(var_0.b.x, 47035u, 17876u, var_0.a.x) << (vec4<u32>(12455u, global3[_wgslsmith_index_u32(global0.a.b.x, 32u)], var_0.b.x, 4294967295u) % vec4<u32>(32u))), vec4<u32>(global0.a.b.x, var_0.b.x, global3[_wgslsmith_index_u32(54125u, 32u)] ^ var_0.a.x, 1u))), ~(select(vec4<u32>(var_0.c.c.x, 0u, var_0.b.x, var_0.b.x), vec4<u32>(1u, global0.a.c.c.x, 38649u, 60552u), vec4<bool>(true, var_0.c.a, true, var_0.c.d.x)) ^ firstLeadingBit(vec4<u32>(global3[_wgslsmith_index_u32(4747u, 32u)], var_0.c.c.x, 1u, 1u))) & vec4<u32>(~4529u, _wgslsmith_mod_u32(~var_0.b.x, _wgslsmith_div_u32(global0.a.a.x, global0.a.b.x)), 1u, 38552u), !(!(!vec4<bool>(global0.a.c.a, global0.a.c.a, false, global0.a.c.a))));
    global3 = array<u32, 32>();
    global2 = var_0.c.a;
    let var_2 = global0.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -832f), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, -1i, var_0.c.b, var_0.c.b), firstTrailingBit(u_input.a)) | vec4<i32>(u_input.b, -1i, u_input.c.x, ~4559i), vec4<i32>(-3535i, min(~global0.a.c.b, global0.a.c.b), -_wgslsmith_div_i32(-43010i, u_input.b), var_0.c.b ^ u_input.b)), u_input.a.x, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-340f, -871f, -1725f, 844f), vec4<f32>(173f, -922f, 1584f, 288f)))))))));
}

