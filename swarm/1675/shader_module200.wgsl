struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
    c: vec3<u32>,
    d: f32,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: vec2<i32>,
    d: vec3<bool>,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: i32) -> i32 {
    global0 = !all(vec4<bool>(all(vec2<bool>(false, true)), (arg_2 != 1420i) && all(vec3<bool>(false, false, true)), false, true));
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(635f, -501f, -794f, 509f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-716f, -189f, 1000f, 106f) * vec4<f32>(-447f, -675f, 600f, -308f)))) * vec4<f32>(1f, 1f, 1f, 1f)));
    global0 = !all(vec3<bool>(true, !(arg_2 < 21977i), _wgslsmith_f_op_f32(-var_0.x) != 1000f));
    var var_1 = arg_0.x;
    var var_2 = true;
    return -_wgslsmith_div_i32(arg_2, arg_0.x);
}

fn func_2() -> Struct_1 {
    global0 = !(!any(vec3<bool>(true, true, true)));
    let var_0 = _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(reverseBits(-vec4<i32>(-8330i, -2147483647i, -42096i, -32878i)), vec4<i32>(func_3(vec4<i32>(1i, 1i, 1i, 1i), ~u_input.a, countOneBits(-2147483647i)), ~(-47705i), 3205i, -firstLeadingBit(0i))), vec4<i32>(firstTrailingBit(_wgslsmith_div_i32(-13048i, -15133i)), reverseBits(1i), ~(-1i), _wgslsmith_sub_i32(i32(-1i) * -1i, i32(-1i) * -62426i)) | _wgslsmith_mult_vec4_i32(select(max(vec4<i32>(-1i, -21797i, -14129i, 2147483647i), vec4<i32>(-20736i, 1i, 8545i, 49285i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 78121i, -1i, -24519i), vec4<i32>(-8635i, 1i, 1i, -11904i)), all(vec3<bool>(true, true, true))), -_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 0i, 7814i, -1i), vec4<i32>(24234i, -27704i, -37326i, -1i))));
    var var_1 = _wgslsmith_f_op_f32(309f + 1f);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-504f, 1391f) + vec2<f32>(106f, 633f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1296f, -1126f)), vec2<bool>(true, true))))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-480f, 551f), vec2<f32>(_wgslsmith_f_op_f32(ceil(-230f)), -168f))), true)));
    var var_3 = Struct_1(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-var_2.x), true))))), any(vec4<bool>(true, true, true, true)), ~3739u);
    return Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1169f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3.b), -547f))))), _wgslsmith_f_op_f32(abs(var_3.a)), true, ~_wgslsmith_dot_vec2_u32(vec2<u32>(~37544u, abs(1u)), _wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(30693u, var_3.d))));
}

fn func_1() -> Struct_5 {
    let var_0 = func_2();
    var var_1 = Struct_5(Struct_3(func_2(), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a)) * _wgslsmith_f_op_f32(-169f - var_0.a)), reverseBits(vec2<i32>(-1i, 2147483647i)), var_0, Struct_1(_wgslsmith_f_op_f32(-342f * var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -1761f), true, 1u), select(u_input.a, var_0.d, false) & var_0.d)), _wgslsmith_f_op_f32(f32(-1f) * -997f), firstLeadingBit(countOneBits(_wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(2147483647i, 84773i)), vec2<i32>(2145i, 1i)))), !select(select(!vec3<bool>(false, var_0.c, true), select(vec3<bool>(false, var_0.c, true), vec3<bool>(false, true, true), true), vec3<bool>(var_0.c, var_0.c, false)), !select(vec3<bool>(var_0.c, false, false), vec3<bool>(var_0.c, var_0.c, true), vec3<bool>(true, var_0.c, true)), select(!vec3<bool>(var_0.c, var_0.c, var_0.c), !vec3<bool>(true, true, var_0.c), !vec3<bool>(true, var_0.c, false))), Struct_4(Struct_3(func_2(), Struct_2(var_0.a, vec2<i32>(1i, 1i), var_0, var_0, firstTrailingBit(var_0.d))), abs(firstTrailingBit(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a))), ~(~vec3<u32>(1256u, 26654u, 50418u)), -153f, var_0));
    let var_2 = -41916i;
    var var_3 = !var_1.a.b.d.c;
    global0 = true;
    return Struct_5(Struct_3(Struct_1(var_1.a.b.d.a, _wgslsmith_f_op_f32(floor(-668f)), _wgslsmith_dot_vec2_u32(var_1.e.b.xx, vec2<u32>(u_input.a, u_input.a)) == ~16394u, var_1.e.e.d), Struct_2(var_1.b, var_1.e.a.b.b >> (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 51199u), var_1.e.b.xw) % vec2<u32>(32u)), func_2(), var_0, var_1.e.b.x)), var_1.a.b.a, ~vec2<i32>(max(select(7033i, 2147483647i, var_0.c), _wgslsmith_dot_vec3_i32(vec3<i32>(var_2, -29891i, 2147483647i), vec3<i32>(var_1.e.a.b.b.x, -59210i, 18215i))), countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.b.b.x, 4042i, -2147483647i, var_1.c.x), vec4<i32>(var_1.c.x, 3225i, var_2, var_1.a.b.b.x)))), vec3<bool>(true, true, all(vec2<bool>(var_1.e.a.a.c, !var_0.c))), Struct_4(Struct_3(var_1.a.b.c, var_1.a.b), abs(reverseBits(var_1.e.b)), var_1.e.b.zyz, 1773f, func_2()));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_5) -> vec4<bool> {
    let var_0 = arg_1.a.b.b;
    global0 = any(arg_0.d);
    var var_1 = Struct_5(Struct_3(Struct_1(arg_0.a.a.a, -145f, !arg_1.e.a.b.c.c, u_input.a >> (0u % 32u)), func_1().e.a.b), _wgslsmith_f_op_f32(sign(-574f)), vec2<i32>(-478i, min(_wgslsmith_mod_i32(arg_1.c.x ^ -24388i, 2147483647i), arg_1.c.x)), arg_0.d, arg_1.e);
    var var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, min(50201i, ~2147483647i), var_0.x), _wgslsmith_div_vec3_i32(~reverseBits(max(vec3<i32>(-12079i, arg_1.c.x, arg_0.e.a.b.b.x), vec3<i32>(4580i, var_1.e.a.b.b.x, 0i))), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.c.x, var_0.x, 9323i), vec3<i32>(var_1.a.b.b.x, arg_1.c.x, 1i)), ~(vec3<i32>(3877i, 32772i, 10813i) & vec3<i32>(-16689i, var_0.x, var_1.e.a.b.b.x)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_1.b + -201f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-608f + 1477f)))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-173f, var_1.b)))))));
    return vec4<bool>(arg_1.a.a.c, all(arg_1.d), arg_0.e.e.c, func_2().d < var_1.a.a.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(true, !((u_input.a & 0u) < ~u_input.a), all(func_4(Struct_5(Struct_3(Struct_1(731f, 340f, false, u_input.a), Struct_2(1528f, vec2<i32>(-2147483647i, 1i), Struct_1(-1000f, 939f, false, 4294967295u), Struct_1(1000f, -1468f, false, 0u), u_input.a)), -456f, vec2<i32>(-1i, -10348i), vec3<bool>(true, true, true), Struct_4(Struct_3(Struct_1(-772f, -233f, false, 0u), Struct_2(-451f, vec2<i32>(-1i, 1i), Struct_1(674f, -412f, true, u_input.a), Struct_1(125f, -784f, false, 1u), 45687u)), vec4<u32>(69839u, 103476u, 3656u, u_input.a), vec3<u32>(0u, 28336u, 0u), 1000f, Struct_1(1232f, 663f, true, 4294967295u))), func_1())), false);
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1142f, -714f, -1122f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1607f, -678f, -707f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1362f, -1293f, 809f) * vec3<f32>(-1430f, -748f, 279f))))), vec3<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -523f)))), 1550f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * 1048f), 929f)))), (13084i < (1i | _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, -48164i, 35033i), vec4<i32>(19661i, -1i, -13528i, 0i)))) == var_0.x));
    let var_2 = Struct_4(func_1().a, _wgslsmith_mod_vec4_u32(~vec4<u32>(50671u, u_input.a, 16407u, u_input.a), ~vec4<u32>(u_input.a, u_input.a, 0u, 15761u)) | vec4<u32>((u_input.a | 4294967295u) << (4294967295u % 32u), u_input.a << (u_input.a % 32u), select(~35536u, 4294967295u, func_1().d.x), 29595u), _wgslsmith_add_vec3_u32(~(~vec3<u32>(u_input.a, 4294967295u, u_input.a)) >> (~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 14657u, 55411u)) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_mult_u32(~76350u, max(0u, u_input.a)), abs(19992u), min(0u, 73787u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_1.x) - _wgslsmith_f_op_f32(-var_1.x)))), func_2());
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(272f, var_2.e.b, var_1.x))));
    let var_3 = var_2.a.b.c.c;
    let var_4 = 5157i;
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.e.b), _wgslsmith_f_op_f32(-var_2.a.a.a)))), _wgslsmith_f_op_f32(ceil(1653f)), var_2.a.b.c.a);
    var var_5 = vec2<bool>(any(vec4<bool>(var_3, !var_3 && true, var_3, var_4 <= (0i & var_2.a.b.b.x))), true);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec4_u32(~var_2.b, ~vec4<u32>(var_2.a.b.d.d, u_input.a, u_input.a, var_2.e.d)), _wgslsmith_mult_u32(16396u, u_input.a << (~108535u % 32u)), _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-187f - var_2.a.b.c.a))))))), 167f, var_2.b.xzx);
}

