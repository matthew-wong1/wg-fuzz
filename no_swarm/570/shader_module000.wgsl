struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: i32,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: i32,
    d: vec4<f32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(2066u, 8440u, 33785u);

var<private> global1: Struct_4 = Struct_4(Struct_2(vec3<bool>(true, false, false), vec3<bool>(false, true, true), Struct_1(698f), Struct_1(1123f)), vec2<u32>(20264u, 1u), 9038i, vec4<f32>(-1532f, 1476f, -861f, 314f));

var<private> global2: array<vec2<i32>, 10>;

var<private> global3: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(vec2<i32>(i32(-2147483648), -40896i), Struct_2(vec3<bool>(true, true, false), vec3<bool>(true, true, true), Struct_1(-1136f), Struct_1(1452f)), -34310i, vec3<u32>(0u, 86456u, 1u), Struct_1(-1714f)), Struct_3(vec2<i32>(924i, 2147483647i), Struct_2(vec3<bool>(true, true, true), vec3<bool>(false, true, false), Struct_1(-171f), Struct_1(275f)), 0i, vec3<u32>(17973u, 0u, 36396u), Struct_1(-322f)), Struct_3(vec2<i32>(0i, -1i), Struct_2(vec3<bool>(false, true, false), vec3<bool>(true, true, false), Struct_1(-1440f), Struct_1(1527f)), 0i, vec3<u32>(9720u, 1u, 4294967295u), Struct_1(1530f)), Struct_3(vec2<i32>(-1i, 2147483647i), Struct_2(vec3<bool>(false, false, true), vec3<bool>(false, false, false), Struct_1(128f), Struct_1(782f)), -24776i, vec3<u32>(51784u, 0u, 22802u), Struct_1(-941f)), Struct_3(vec2<i32>(-20410i, 10165i), Struct_2(vec3<bool>(true, true, false), vec3<bool>(true, false, false), Struct_1(-604f), Struct_1(405f)), 0i, vec3<u32>(1u, 30741u, 0u), Struct_1(484f)), Struct_3(vec2<i32>(-1i, -6671i), Struct_2(vec3<bool>(false, true, true), vec3<bool>(true, true, false), Struct_1(176f), Struct_1(1117f)), -2648i, vec3<u32>(11890u, 4294967295u, 4294967295u), Struct_1(855f)), Struct_3(vec2<i32>(51290i, -11827i), Struct_2(vec3<bool>(false, true, false), vec3<bool>(true, true, true), Struct_1(1474f), Struct_1(-396f)), -1i, vec3<u32>(0u, 58189u, 4294967295u), Struct_1(869f)), Struct_3(vec2<i32>(1i, -1i), Struct_2(vec3<bool>(false, false, false), vec3<bool>(true, false, true), Struct_1(1361f), Struct_1(-569f)), 0i, vec3<u32>(9015u, 1u, 79328u), Struct_1(-209f)), Struct_3(vec2<i32>(i32(-2147483648), 1i), Struct_2(vec3<bool>(false, true, false), vec3<bool>(true, true, true), Struct_1(-1431f), Struct_1(-1314f)), 9867i, vec3<u32>(1u, 64610u, 0u), Struct_1(-151f)), Struct_3(vec2<i32>(-1i, 2147483647i), Struct_2(vec3<bool>(false, false, false), vec3<bool>(false, false, true), Struct_1(1283f), Struct_1(-1048f)), i32(-2147483648), vec3<u32>(0u, 7678u, 22230u), Struct_1(-1073f)), Struct_3(vec2<i32>(-6845i, 1i), Struct_2(vec3<bool>(true, false, false), vec3<bool>(false, true, false), Struct_1(276f), Struct_1(-1000f)), -1i, vec3<u32>(1u, 10416u, 15384u), Struct_1(-289f)), Struct_3(vec2<i32>(0i, -16422i), Struct_2(vec3<bool>(false, false, true), vec3<bool>(false, false, true), Struct_1(746f), Struct_1(725f)), -71694i, vec3<u32>(4294967295u, 34531u, 50357u), Struct_1(-1421f)), Struct_3(vec2<i32>(-1i, 0i), Struct_2(vec3<bool>(false, false, true), vec3<bool>(true, false, true), Struct_1(-685f), Struct_1(1000f)), -36890i, vec3<u32>(6544u, 1u, 4294967295u), Struct_1(-450f)), Struct_3(vec2<i32>(i32(-2147483648), 1i), Struct_2(vec3<bool>(true, true, false), vec3<bool>(true, false, false), Struct_1(-372f), Struct_1(136f)), 2147483647i, vec3<u32>(1u, 45667u, 53992u), Struct_1(361f)), Struct_3(vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_2(vec3<bool>(false, true, false), vec3<bool>(true, true, false), Struct_1(1438f), Struct_1(194f)), i32(-2147483648), vec3<u32>(4294967295u, 4294967295u, 78440u), Struct_1(-2050f)), Struct_3(vec2<i32>(13593i, 26746i), Struct_2(vec3<bool>(false, false, false), vec3<bool>(false, false, true), Struct_1(2251f), Struct_1(509f)), 33717i, vec3<u32>(1u, 1u, 4294967295u), Struct_1(-656f)), Struct_3(vec2<i32>(i32(-2147483648), 1i), Struct_2(vec3<bool>(true, false, false), vec3<bool>(true, true, true), Struct_1(672f), Struct_1(-419f)), 1i, vec3<u32>(24568u, 1u, 37657u), Struct_1(666f)), Struct_3(vec2<i32>(1i, 0i), Struct_2(vec3<bool>(false, false, false), vec3<bool>(true, true, true), Struct_1(-980f), Struct_1(-1193f)), 0i, vec3<u32>(0u, 50493u, 35123u), Struct_1(-675f)), Struct_3(vec2<i32>(-47775i, -4398i), Struct_2(vec3<bool>(false, false, true), vec3<bool>(true, true, false), Struct_1(-1434f), Struct_1(846f)), -1i, vec3<u32>(72951u, 0u, 4294967295u), Struct_1(394f)), Struct_3(vec2<i32>(-1i, -1i), Struct_2(vec3<bool>(true, false, true), vec3<bool>(false, true, true), Struct_1(-199f), Struct_1(-1794f)), i32(-2147483648), vec3<u32>(4294967295u, 0u, 1u), Struct_1(243f)), Struct_3(vec2<i32>(-20257i, 25528i), Struct_2(vec3<bool>(true, true, true), vec3<bool>(true, false, false), Struct_1(-317f), Struct_1(-448f)), 45585i, vec3<u32>(0u, 5943u, 13740u), Struct_1(-945f)), Struct_3(vec2<i32>(30877i, -62238i), Struct_2(vec3<bool>(true, true, true), vec3<bool>(true, false, true), Struct_1(-1148f), Struct_1(1362f)), -1i, vec3<u32>(4294967295u, 1u, 0u), Struct_1(-1017f)), Struct_3(vec2<i32>(-43182i, -23547i), Struct_2(vec3<bool>(false, false, false), vec3<bool>(false, false, true), Struct_1(-329f), Struct_1(881f)), 0i, vec3<u32>(1u, 4294967295u, 4294967295u), Struct_1(771f)), Struct_3(vec2<i32>(-5823i, i32(-2147483648)), Struct_2(vec3<bool>(true, false, true), vec3<bool>(false, false, true), Struct_1(683f), Struct_1(-332f)), 2147483647i, vec3<u32>(1u, 56092u, 50857u), Struct_1(492f)), Struct_3(vec2<i32>(39588i, 1i), Struct_2(vec3<bool>(false, false, true), vec3<bool>(true, false, false), Struct_1(340f), Struct_1(-1245f)), 5463i, vec3<u32>(23239u, 4294967295u, 1u), Struct_1(882f)), Struct_3(vec2<i32>(9449i, -26220i), Struct_2(vec3<bool>(true, true, true), vec3<bool>(false, true, true), Struct_1(-862f), Struct_1(3217f)), 43824i, vec3<u32>(12000u, 0u, 4294967295u), Struct_1(859f)), Struct_3(vec2<i32>(32176i, -44102i), Struct_2(vec3<bool>(true, false, true), vec3<bool>(true, false, true), Struct_1(494f), Struct_1(727f)), -1i, vec3<u32>(20050u, 0u, 18971u), Struct_1(-785f)), Struct_3(vec2<i32>(-15955i, i32(-2147483648)), Struct_2(vec3<bool>(false, true, true), vec3<bool>(false, true, false), Struct_1(363f), Struct_1(1000f)), 4995i, vec3<u32>(21221u, 0u, 29690u), Struct_1(1874f)), Struct_3(vec2<i32>(0i, -6405i), Struct_2(vec3<bool>(false, true, false), vec3<bool>(true, true, true), Struct_1(-799f), Struct_1(-336f)), 2147483647i, vec3<u32>(0u, 3917u, 1u), Struct_1(437f)), Struct_3(vec2<i32>(-19701i, -34955i), Struct_2(vec3<bool>(false, false, true), vec3<bool>(false, true, true), Struct_1(-555f), Struct_1(-861f)), -1i, vec3<u32>(4294967295u, 4294967295u, 4294967295u), Struct_1(-1236f)));

var<private> global4: vec3<i32> = vec3<i32>(i32(-2147483648), -2006i, 15133i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<bool>) -> bool {
    return !arg_0.x && ((87335u << (global1.b.x % 32u)) > ~u_input.a);
}

fn func_2(arg_0: i32) -> u32 {
    let var_0 = Struct_1(1000f);
    var var_1 = Struct_5(Struct_4(Struct_2(vec3<bool>(func_3(vec2<bool>(true, false)), global1.a.a.x || global1.a.a.x, global1.a.a.x), global1.a.b, Struct_1(-668f), Struct_1(1053f)), vec2<u32>(~29097u, ~_wgslsmith_sub_u32(4294967295u, 18848u)), arg_0, vec4<f32>(751f, global1.a.d.a, _wgslsmith_f_op_f32(min(-329f, 836f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2143f, var_0.a)) * _wgslsmith_f_op_f32(select(global1.d.x, 284f, global1.a.a.x))))));
    global1 = Struct_4(Struct_2(global1.a.b, var_1.a.a.b, var_0, var_1.a.a.d), var_1.a.b, abs(var_1.a.c), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.a.d.x + -535f), _wgslsmith_f_op_f32(exp2(global1.a.d.a)), 855f, 321f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(var_1.a.d, vec4<f32>(1000f, -1000f, global1.a.c.a, var_0.a)), vec4<f32>(global1.d.x, 1775f, global1.d.x, var_1.a.d.x)))))));
    global0 = vec3<u32>((~(~34957u) | _wgslsmith_sub_u32(min(global0.x, 20859u), 1u)) | ~1u, max(_wgslsmith_dot_vec4_u32(select(vec4<u32>(64115u, 29371u, 72671u, 1u) << (vec4<u32>(0u, u_input.a, 0u, 0u) % vec4<u32>(32u)), ~vec4<u32>(global1.b.x, var_1.a.b.x, 49439u, u_input.a), true), abs(~vec4<u32>(1u, var_1.a.b.x, var_1.a.b.x, 4294967295u))), global0.x), abs(~(~global1.b.x & ~global1.b.x)));
    var var_2 = var_1.a.a;
    return ~global1.b.x;
}

fn func_1() -> f32 {
    global3 = array<Struct_3, 30>();
    var var_0 = ~(vec4<u32>(func_2(_wgslsmith_mult_i32(2147483647i, global4.x)), 4294967295u, 1u, 1u >> ((global0.x << (0u % 32u)) % 32u)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(u_input.a, u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(49237u, u_input.a), global0.zz), _wgslsmith_div_u32(u_input.a, 24310u), global1.b.x & global1.b.x), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(19651u, 0u, u_input.a, global0.x), vec4<u32>(global1.b.x, u_input.a, 71364u, global1.b.x), vec4<u32>(0u, 1u, 0u, global1.b.x))));
    let var_1 = global1.a;
    let var_2 = abs(~vec4<i32>(abs(-1i), reverseBits(20402i), 0i, global1.c)) | -(vec4<i32>(-1i) * -abs(vec4<i32>(global4.x, 2147483647i, global1.c, global4.x)));
    var var_3 = Struct_3(global4.xz, Struct_2(!select(vec3<bool>(true, var_1.b.x, true), !vec3<bool>(true, var_1.a.x, false), var_1.a), vec3<bool>(global4.x != _wgslsmith_mult_i32(global4.x, -7215i), true, true), var_1.d, global1.a.c), var_2.x, _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(0u, u_input.a, 17449u)), ~_wgslsmith_add_vec3_u32(var_0.wwx, vec3<u32>(0u, 75157u, 30827u))), reverseBits(vec3<u32>(global1.b.x >> (4294967295u % 32u), global0.x, min(global0.x, global1.b.x)))), global1.a.d);
    return _wgslsmith_f_op_f32(f32(-1f) * -863f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(select(global4.xx, vec2<i32>(-2147483647i, (-1i << (global0.x % 32u)) | 0i), any(!select(vec3<bool>(true, true, true), vec3<bool>(false, global1.a.b.x, global1.a.b.x), true))), global1.a, ~(global4.x | global4.x), vec3<u32>(u_input.a, u_input.a, u_input.a), Struct_1(_wgslsmith_f_op_f32(func_1())));
    global2 = array<vec2<i32>, 10>();
    var var_1 = Struct_4(global1.a, max(~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.a), global0.zz, _wgslsmith_mod_vec2_u32(var_0.d.yz, global0.xz)), select(~vec2<u32>(0u, global0.x), ~vec2<u32>(u_input.a, 16352u), select(global1.a.a.yx, vec2<bool>(true, global1.a.b.x), true))), _wgslsmith_dot_vec4_i32(vec4<i32>(~global1.c, 1i, 7256i, firstTrailingBit(global4.x & 1i)), abs(countOneBits(~vec4<i32>(global1.c, 1i, var_0.c, global4.x)))), global1.d);
    let var_2 = _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~select(~vec3<u32>(var_0.d.x, var_1.b.x, 30136u), vec3<u32>(global1.b.x, 82345u, 19883u), var_0.b.b), ~var_0.d), _wgslsmith_add_vec3_u32((var_0.d << (vec3<u32>(4294967295u, var_0.d.x, 22629u) % vec3<u32>(32u))) << (min(var_0.d, var_0.d) % vec3<u32>(32u)), min(vec3<u32>(1u, _wgslsmith_mod_u32(var_0.d.x, var_0.d.x), 55719u), ~vec3<u32>(var_1.b.x, global0.x, 0u) << (~vec3<u32>(4294967295u, 35587u, 3955u) % vec3<u32>(32u)))));
    var_1 = Struct_4(var_1.a, select(vec2<u32>(19708u, func_2(var_0.c >> (50756u % 32u))), vec2<u32>(global0.x, ~(~var_2)), false), global4.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-450f, var_1.a.c.a, -1976f, -425f) * global1.d)), var_1.d) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.a.c.a, -225f, 653f, 512f))), _wgslsmith_f_op_vec4_f32(max(var_1.d, global1.d))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_div_i32(global1.c, -48354i), (i32(-1i) * -1i) >> (min(func_2(global1.c), global1.b.x) % 32u), i32(-1i) * -(var_1.c << (80095u % 32u))), global1.d.wyx, var_0.e.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_mult_u32(53693u, _wgslsmith_div_u32(88592u, ~_wgslsmith_mult_u32(var_2, var_1.b.x))));
}

