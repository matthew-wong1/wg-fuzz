struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: i32,
    d: vec2<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec2<u32>(104148u, 4294967295u), 711u), Struct_1(vec2<u32>(14869u, 4294967295u), 4379u), Struct_1(vec2<u32>(40384u, 97343u), 0u), Struct_1(vec2<u32>(4294967295u, 18583u), 6271u), Struct_1(vec2<u32>(51862u, 1u), 1u), Struct_1(vec2<u32>(0u, 1u), 43384u), Struct_1(vec2<u32>(0u, 1u), 3679u), Struct_1(vec2<u32>(0u, 4294967295u), 96575u), Struct_1(vec2<u32>(40816u, 10003u), 4294967295u), Struct_1(vec2<u32>(25003u, 19776u), 0u), Struct_1(vec2<u32>(0u, 31360u), 29833u), Struct_1(vec2<u32>(48303u, 27812u), 1u), Struct_1(vec2<u32>(0u, 80774u), 33051u), Struct_1(vec2<u32>(29896u, 7284u), 1u), Struct_1(vec2<u32>(52210u, 10868u), 0u), Struct_1(vec2<u32>(0u, 27582u), 1u), Struct_1(vec2<u32>(75377u, 1u), 0u), Struct_1(vec2<u32>(39241u, 4294967295u), 4294967295u), Struct_1(vec2<u32>(0u, 4294967295u), 9827u), Struct_1(vec2<u32>(9371u, 31251u), 0u), Struct_1(vec2<u32>(0u, 1u), 1u), Struct_1(vec2<u32>(93724u, 8240u), 57796u), Struct_1(vec2<u32>(63592u, 4294967295u), 0u), Struct_1(vec2<u32>(0u, 1127u), 0u));

var<private> global1: array<u32, 12> = array<u32, 12>(4294967295u, 0u, 4294967295u, 27430u, 33314u, 7780u, 11410u, 1u, 51658u, 83595u, 14803u, 49072u);

var<private> global2: array<vec4<i32>, 22> = array<vec4<i32>, 22>(vec4<i32>(-8591i, -1i, -8828i, 818i), vec4<i32>(0i, i32(-2147483648), 1i, -13656i), vec4<i32>(12827i, -10077i, 0i, -1i), vec4<i32>(i32(-2147483648), -8757i, -5969i, 2147483647i), vec4<i32>(-11551i, 2147483647i, -16220i, -3054i), vec4<i32>(i32(-2147483648), -1i, 432i, 1i), vec4<i32>(9944i, 2147483647i, -1i, i32(-2147483648)), vec4<i32>(-17636i, i32(-2147483648), 13841i, 0i), vec4<i32>(-34046i, 2147483647i, i32(-2147483648), 1i), vec4<i32>(-52856i, -1i, 1i, i32(-2147483648)), vec4<i32>(1i, 0i, 1i, 1i), vec4<i32>(-1i, i32(-2147483648), 2147483647i, 407i), vec4<i32>(-98238i, -8395i, 18400i, 1i), vec4<i32>(1i, -20862i, 0i, -1i), vec4<i32>(-9466i, 28952i, -15337i, 49746i), vec4<i32>(i32(-2147483648), -1i, -32079i, 2147483647i), vec4<i32>(-35366i, 267i, 1i, -1i), vec4<i32>(0i, -10759i, -68231i, 2147483647i), vec4<i32>(i32(-2147483648), -38557i, -13146i, -89600i), vec4<i32>(75516i, 12639i, 1i, 38408i), vec4<i32>(0i, 1i, i32(-2147483648), -13904i), vec4<i32>(9884i, -45047i, 0i, -39679i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>) -> i32 {
    return min(abs(19860i), arg_0.c.x);
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_3) -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x >> (0u % 32u), 12u)], 12u)];
    global0 = array<Struct_1, 24>();
    var_0 = select(_wgslsmith_dot_vec3_u32(reverseBits(_wgslsmith_mod_vec3_u32(u_input.a, u_input.a) << (vec3<u32>(0u, arg_3.c.b.a.x, 4294967295u) % vec3<u32>(32u))), u_input.a), min(20284u, ~firstLeadingBit(4294967295u)), _wgslsmith_f_op_f32(ceil(arg_1.b.a)) > 394f);
    var_0 = u_input.c.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(262f, _wgslsmith_f_op_f32(trunc(-653f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(arg_1.c.a * arg_1.b.a)))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_3.a.x)), -1411f), arg_3.a.ww, !arg_0))));
    return -func_2(Struct_2(_wgslsmith_f_op_f32(abs(-737f)), Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.c.b.a.x, 37219u), u_input.c), global1[_wgslsmith_index_u32(u_input.a.x, 12u)]), arg_1.b.c ^ vec3<i32>(arg_3.c.c.x, arg_2.c, 19000i)), arg_3.a);
}

fn func_4(arg_0: i32, arg_1: vec3<u32>) -> vec3<bool> {
    global0 = array<Struct_1, 24>();
    var var_0 = false;
    return vec3<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(443f, 2203f))))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-386f)))), !select(true | (0u >= u_input.b), (arg_1.x <= 1u) & false, any(vec3<bool>(true, true, true)) & true), true);
}

fn func_1(arg_0: u32, arg_1: Struct_4) -> i32 {
    global0 = array<Struct_1, 24>();
    let var_0 = select(!vec4<bool>(arg_1.b, 578f <= _wgslsmith_f_op_f32(round(-2720f)), true, arg_1.c <= func_2(Struct_2(1399f, Struct_1(vec2<u32>(35442u, 1u), arg_0), vec3<i32>(-2147483647i, 13619i, 0i)), vec4<f32>(-1063f, -776f, 985f, 346f))), vec4<bool>(arg_1.b, true, all(func_4(func_3(arg_1.b, Struct_3(vec4<f32>(-1006f, 380f, 1000f, 258f), Struct_2(-276f, Struct_1(vec2<u32>(u_input.b, global1[_wgslsmith_index_u32(arg_0, 12u)]), 63106u), vec3<i32>(arg_1.c, arg_1.c, arg_1.c)), Struct_2(1118f, global0[_wgslsmith_index_u32(28355u, 24u)], vec3<i32>(arg_1.c, 0i, arg_1.c))), Struct_4(global1[_wgslsmith_index_u32(4294967295u, 12u)], true, arg_1.c, arg_1.d, vec3<bool>(true, arg_1.b, true)), Struct_3(vec4<f32>(1000f, 995f, -627f, -1122f), Struct_2(-207f, Struct_1(vec2<u32>(4294967295u, 4294967295u), u_input.b), vec3<i32>(arg_1.c, arg_1.c, arg_1.c)), Struct_2(565f, Struct_1(vec2<u32>(4294967295u, u_input.c.x), global1[_wgslsmith_index_u32(1u, 12u)]), vec3<i32>(arg_1.c, arg_1.c, arg_1.c)))), ~vec3<u32>(4294967295u, arg_1.a, 31659u))), true), arg_1.e.x || arg_1.b);
    global1 = array<u32, 12>();
    var var_1 = false;
    let var_2 = var_0.x != ((max(_wgslsmith_div_u32(0u, 1u), 0u & arg_1.a) >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, arg_1.a), arg_1.d) % 32u)) != ~0u);
    return -max(1i, _wgslsmith_sub_i32(28576i, ~_wgslsmith_div_i32(arg_1.c, 356i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(u_input.c, u_input.c);
    var var_1 = !(false && (-27982i != _wgslsmith_dot_vec3_i32(~vec3<i32>(4608i, -26588i, 2147483647i), max(vec3<i32>(0i, -16653i, -2147483647i), vec3<i32>(0i, 2147483647i, -1i)))));
    var_0 = u_input.c & vec2<u32>(global1[_wgslsmith_index_u32(~1u, 12u)], 33375u);
    let var_2 = _wgslsmith_add_i32(-2147483647i, abs(func_1(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(4294967295u, 12u)], _wgslsmith_mult_u32(5971u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 12u)], 12u)])), Struct_4(21970u, true, max(-2147483647i, 0i), _wgslsmith_clamp_vec2_u32(u_input.a.yy, vec2<u32>(57385u, 8818u), vec2<u32>(global1[_wgslsmith_index_u32(48067u, 12u)], u_input.a.x)), vec3<bool>(true, true, true)))));
    var var_3 = -40450i;
    var var_4 = global1[_wgslsmith_index_u32(var_0.x, 12u)];
    var var_5 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(1478f, 198f, -1006f), vec3<f32>(-487f, -961f, 515f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(782f, 243f, 831f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(713f, -1000f, -1230f) * vec3<f32>(1000f, -1297f, 765f))))));
    var var_6 = Struct_4(global1[_wgslsmith_index_u32(max(u_input.c.x, ~_wgslsmith_mod_u32(1u, 32124u)), 12u)], !all(vec4<bool>(true, true, true, true)), -max(_wgslsmith_sub_i32(var_2, _wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(4294967295u, 22u)], global2[_wgslsmith_index_u32(33346u, 22u)])), 2147483647i), ~((~u_input.a.xz >> (~u_input.c % vec2<u32>(32u))) & _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, var_0.x), ~u_input.c)), vec3<bool>(true, select(any(vec4<bool>(true, true, true, false)), true, true), all(vec4<bool>(true, true, all(vec4<bool>(false, true, true, true)), var_2 > var_2))));
    var var_7 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec3<f32>(_wgslsmith_f_op_f32(-var_5.x), -309f, _wgslsmith_f_op_f32(-785f - var_5.x)));
}

