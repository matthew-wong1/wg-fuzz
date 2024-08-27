struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec4<i32>(62077i, i32(-2147483648), 23524i, 2147483647i), vec4<u32>(34929u, 81054u, 15701u, 45093u)), Struct_1(vec4<i32>(i32(-2147483648), 26186i, 35246i, -55633i), vec4<u32>(51282u, 51273u, 35120u, 0u)), Struct_1(vec4<i32>(-90774i, -1186i, -44965i, 0i), vec4<u32>(4294967295u, 0u, 0u, 37520u)), Struct_1(vec4<i32>(7272i, -20749i, 2147483647i, 61018i), vec4<u32>(4294967295u, 0u, 16158u, 1u)), Struct_1(vec4<i32>(2147483647i, 1i, 52158i, -22633i), vec4<u32>(24584u, 4294967295u, 76093u, 1u)), Struct_1(vec4<i32>(0i, 15322i, -1i, -63264i), vec4<u32>(4294967295u, 1u, 14415u, 1u)), Struct_1(vec4<i32>(-9426i, 7807i, 2147483647i, 2147483647i), vec4<u32>(89668u, 1959u, 1u, 66527u)), Struct_1(vec4<i32>(0i, 36967i, 3968i, 19551i), vec4<u32>(0u, 0u, 32017u, 63873u)), Struct_1(vec4<i32>(-1i, -3246i, 11113i, i32(-2147483648)), vec4<u32>(23279u, 46451u, 0u, 1u)), Struct_1(vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), 1i), vec4<u32>(27246u, 1u, 1u, 1u)), Struct_1(vec4<i32>(-11213i, i32(-2147483648), 0i, 2147483647i), vec4<u32>(0u, 92324u, 1u, 67374u)), Struct_1(vec4<i32>(2147483647i, -52736i, -45211i, 68795i), vec4<u32>(0u, 4294967295u, 26564u, 4294967295u)), Struct_1(vec4<i32>(i32(-2147483648), -18841i, 0i, 0i), vec4<u32>(3169u, 10695u, 1u, 1u)), Struct_1(vec4<i32>(22807i, -1i, 64670i, 1i), vec4<u32>(19264u, 20410u, 1u, 5075u)), Struct_1(vec4<i32>(39397i, -1i, 50827i, -38084i), vec4<u32>(116555u, 4294967295u, 4294967295u, 14670u)), Struct_1(vec4<i32>(-1i, 0i, -15753i, 2147483647i), vec4<u32>(1u, 40989u, 100655u, 1u)), Struct_1(vec4<i32>(-61515i, 2147483647i, 20602i, 17307i), vec4<u32>(70799u, 0u, 45818u, 11233u)), Struct_1(vec4<i32>(1i, 2147483647i, -37623i, 2147483647i), vec4<u32>(32756u, 0u, 19942u, 28425u)), Struct_1(vec4<i32>(-33976i, 0i, i32(-2147483648), 19735i), vec4<u32>(0u, 22216u, 11980u, 39359u)), Struct_1(vec4<i32>(-20343i, -26874i, 0i, -33657i), vec4<u32>(35593u, 0u, 84814u, 0u)), Struct_1(vec4<i32>(-48448i, 2147483647i, 41415i, 4024i), vec4<u32>(20719u, 1u, 53185u, 4294967295u)), Struct_1(vec4<i32>(0i, -6317i, -16534i, i32(-2147483648)), vec4<u32>(4294967295u, 3831u, 4294967295u, 1u)), Struct_1(vec4<i32>(35763i, -1i, -1i, 0i), vec4<u32>(4894u, 0u, 9215u, 0u)), Struct_1(vec4<i32>(-52521i, -79059i, 1i, -7845i), vec4<u32>(4294967295u, 4294967295u, 1u, 11806u)), Struct_1(vec4<i32>(2147483647i, -791i, 52461i, i32(-2147483648)), vec4<u32>(64307u, 43251u, 0u, 4294967295u)), Struct_1(vec4<i32>(-52647i, -13942i, -39569i, 11743i), vec4<u32>(15783u, 95456u, 12289u, 0u)), Struct_1(vec4<i32>(25721i, -1i, -1i, i32(-2147483648)), vec4<u32>(4294967295u, 0u, 4294967295u, 17792u)));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> i32 {
    let var_0 = Struct_2(Struct_1(~vec4<i32>(0i, _wgslsmith_mult_i32(arg_0.a.a.x, 11170i), ~u_input.d.x, reverseBits(u_input.d.x)), reverseBits(arg_0.a.b)));
    var var_1 = 10871i >> ((firstLeadingBit(15416u) | arg_0.a.b.x) % 32u);
    var_1 = firstLeadingBit(_wgslsmith_sub_i32(arg_0.a.a.x << (min(36265u, u_input.b) % 32u), -14080i));
    var var_2 = vec3<bool>(true, 3487u > arg_0.a.b.x, false);
    global0 = array<Struct_1, 27>();
    return 12781i;
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> Struct_2 {
    var var_0 = Struct_2(arg_0);
    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-263f, -1000f) - vec2<f32>(-813f, -190f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1388f))))));
    let var_2 = vec2<i32>(u_input.d.x, arg_0.a.x);
    return Struct_2(Struct_1(vec4<i32>(func_3(Struct_2(Struct_1(vec4<i32>(16413i, -1i, arg_0.a.x, u_input.c.x), vec4<u32>(0u, 1u, 0u, 4294967295u))), 1f), u_input.d.x, -(~(-44002i)), -6179i), var_0.a.b | ~select(vec4<u32>(arg_0.b.x, 38269u, 92093u, 1u), vec4<u32>(arg_0.b.x, u_input.b, 0u, 19177u), false)));
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(Struct_1(u_input.d, vec4<u32>(44990u, 0u, ~32122u, ~(u_input.b ^ u_input.b))), false);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(634f, 117f, 290f))), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false))))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-164f, 587f, 1262f)), vec3<f32>(-379f, -2744f, -407f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1096f, 1092f, -289f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(489f, 1000f, -1345f)))), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false))))));
    var var_2 = var_0.a;
    global0 = array<Struct_1, 27>();
    let var_3 = vec2<u32>(0u, 4294967295u);
    return func_2(Struct_1(vec4<i32>(u_input.a.x, 40026i, ~_wgslsmith_dot_vec2_i32(var_2.a.zx, vec2<i32>(-1i, u_input.d.x)), 2147483647i), var_0.a.b >> (abs(vec4<u32>(var_3.x, var_0.a.b.x, 1u, 35693u)) % vec4<u32>(32u))), var_3.x == var_0.a.b.x).a;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(min(vec4<i32>(func_3(Struct_2(global0[_wgslsmith_index_u32(arg_1.x, 27u)]), 1422f), ~u_input.d.x, -1i, abs(arg_0.a.x)), _wgslsmith_add_vec4_i32(-vec4<i32>(-2147483647i, u_input.c.x, 20414i, arg_0.a.x), vec4<i32>(arg_0.a.x, 0i, u_input.a.x, 0i))), ~vec4<u32>(u_input.b, 112u, abs(30455u), arg_1.x)));
    var var_1 = vec3<u32>(21089u, func_1().b.x << (arg_0.b.x % 32u), _wgslsmith_clamp_u32(~u_input.b, arg_0.b.x, abs(arg_0.b.x)));
    var_1 = var_0.a.b.wxw;
    let var_2 = func_2(func_1(), true);
    var var_3 = vec2<bool>(true, true);
    return Struct_2(func_2(var_0.a, true).a);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_2(func_2(func_2(arg_0.a, select(arg_0.a.b.x <= u_input.b, true, true)).a, false).a);
    var var_1 = countOneBits(max(arg_2.x >> (4294967295u % 32u), _wgslsmith_div_i32(arg_2.x, arg_2.x)));
    let var_2 = func_1();
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(123f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2185f + -1077f))))));
    let var_4 = var_2.a;
    return global0[_wgslsmith_index_u32(func_4(arg_1.a, vec4<u32>(1u, var_2.b.x, ~u_input.b & _wgslsmith_sub_u32(18017u, 0u), ~(~0u))).a.b.x << (arg_1.a.b.x % 32u), 27u)];
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = ~arg_0.b;
    var var_1 = -16478i;
    let var_2 = -_wgslsmith_mod_vec3_i32(arg_0.a.wyx & (vec3<i32>(u_input.c.x, 21919i, arg_0.a.x) >> (~var_0.zwy % vec3<u32>(32u))), u_input.a.yxy);
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-184f, -1000f)), vec2<f32>(199f, 942f), vec2<bool>(false, true))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-742f, 613f), vec2<f32>(216f, -683f), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -142f)), true)))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-624f + 1723f) + _wgslsmith_f_op_f32(sign(957f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -191f) - -512f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1436f, -169f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(216f, -1064f))))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1227f, 1187f)))))))));
    let var_4 = (~reverseBits(vec3<u32>(0u, var_0.x, 13139u)) >> (~reverseBits(vec3<u32>(arg_0.b.x, var_0.x, var_0.x)) % vec3<u32>(32u))) | vec3<u32>(var_0.x, func_4(func_5(Struct_2(Struct_1(vec4<i32>(2147483647i, var_2.x, -60160i, arg_0.a.x), arg_0.b)), func_4(Struct_1(vec4<i32>(1i, var_2.x, -40489i, var_2.x), vec4<u32>(0u, 4294967295u, 4294967295u, arg_1.b.x)), vec4<u32>(arg_1.b.x, 46733u, 1u, u_input.b)), -u_input.a.yyx), arg_1.b).a.b.x, _wgslsmith_div_u32(~12590u, var_0.x));
    return Struct_1(vec4<i32>(max(-1i, ~var_2.x) >> (var_4.x % 32u), -5140i, ~func_5(func_4(Struct_1(vec4<i32>(-2523i, -2147483647i, -19945i, 0i), vec4<u32>(var_4.x, 4294967295u, var_4.x, 35261u)), vec4<u32>(1u, 0u, 4294967295u, var_4.x)), func_4(Struct_1(arg_1.a, arg_1.b), vec4<u32>(u_input.b, u_input.b, arg_0.b.x, arg_0.b.x)), u_input.d.zxy >> (vec3<u32>(arg_1.b.x, 34925u, var_0.x) % vec3<u32>(32u))).a.x, firstLeadingBit(min(var_2.x, 1i) ^ 2147483647i)), ~(~vec4<u32>(arg_0.b.x, arg_0.b.x, 1u, countOneBits(0u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_6(func_5(Struct_2(global0[_wgslsmith_index_u32(41197u, 27u)]), func_4(func_1(), ~vec4<u32>(4294967295u, 5558u, u_input.b, 1u)), ~(-u_input.c.yyw)), Struct_1(_wgslsmith_mult_vec4_i32(~u_input.d, ~vec4<i32>(1i, -50515i, -2147483647i, 2147483647i)), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(32278u, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b)), select(vec4<u32>(4225u, 26497u, u_input.b, u_input.b), vec4<u32>(10027u, u_input.b, u_input.b, 77149u), true)))));
    global0 = array<Struct_1, 27>();
    let var_1 = global0[_wgslsmith_index_u32(~u_input.b, 27u)];
    var var_2 = Struct_1(var_0.a.a, vec4<u32>(var_1.b.x, 0u, var_0.a.b.x, func_5(var_0, Struct_2(var_0.a), vec3<i32>(_wgslsmith_sub_i32(var_1.a.x, var_1.a.x), -9516i, abs(var_1.a.x))).b.x));
    global0 = array<Struct_1, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(max(vec3<u32>(35378u, var_2.b.x, var_0.a.b.x), var_2.b.wyy), var_2.b.zyy), ~(~var_0.a.b.yw), _wgslsmith_dot_vec4_i32(var_1.a, ~(~(-var_2.a))), 65940u);
}

