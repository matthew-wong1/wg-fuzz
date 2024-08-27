struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<f32>,
    d: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: Struct_3,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_5 {
    a: u32,
    b: vec4<f32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15>;

var<private> global1: array<vec4<u32>, 32> = array<vec4<u32>, 32>(vec4<u32>(1u, 1u, 21256u, 61720u), vec4<u32>(16968u, 1u, 4294967295u, 0u), vec4<u32>(55719u, 28023u, 61468u, 0u), vec4<u32>(46512u, 80210u, 0u, 11077u), vec4<u32>(4294967295u, 48553u, 16628u, 94529u), vec4<u32>(4294967295u, 1u, 1u, 1u), vec4<u32>(4294967295u, 52702u, 0u, 60122u), vec4<u32>(39277u, 4294967295u, 30029u, 1u), vec4<u32>(4294967295u, 4294967295u, 9007u, 4294967295u), vec4<u32>(54088u, 2448u, 52625u, 4294967295u), vec4<u32>(21235u, 4089u, 79105u, 4294967295u), vec4<u32>(20060u, 0u, 37220u, 57750u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(24424u, 18877u, 6714u, 54880u), vec4<u32>(7124u, 260u, 1u, 0u), vec4<u32>(22504u, 19189u, 4294967295u, 4294967295u), vec4<u32>(1u, 56171u, 29916u, 24940u), vec4<u32>(15987u, 63246u, 56855u, 4294967295u), vec4<u32>(5546u, 29153u, 4294967295u, 7307u), vec4<u32>(46253u, 4294967295u, 4294967295u, 55437u), vec4<u32>(0u, 1u, 0u, 50261u), vec4<u32>(89689u, 4294967295u, 20312u, 0u), vec4<u32>(0u, 1u, 0u, 46745u), vec4<u32>(67139u, 55256u, 45076u, 4294967295u), vec4<u32>(1u, 4294967295u, 63111u, 15510u), vec4<u32>(27399u, 83912u, 30811u, 21574u), vec4<u32>(4294967295u, 87171u, 19501u, 1u), vec4<u32>(0u, 1u, 4294967295u, 4294967295u), vec4<u32>(0u, 46255u, 27133u, 4294967295u), vec4<u32>(4294967295u, 0u, 0u, 4294967295u), vec4<u32>(56119u, 95848u, 4294967295u, 49620u), vec4<u32>(4294967295u, 5119u, 1u, 4294967295u));

var<private> global2: array<vec2<bool>, 3> = array<vec2<bool>, 3>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false));

var<private> global3: Struct_2 = Struct_2(vec2<i32>(9308i, 7774i), Struct_1(vec4<u32>(42390u, 1u, 59407u, 36698u), -26917i, vec3<f32>(-541f, -308f, -1089f)), vec3<f32>(1189f, -811f, -1454f), false);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: f32, arg_3: Struct_2) -> vec3<f32> {
    let var_0 = ~arg_1.e.zy;
    global2 = array<vec2<bool>, 3>();
    let var_1 = arg_0;
    var var_2 = -_wgslsmith_mod_vec3_i32(firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_3.a.x, 57274i, global3.b.b), arg_1.d.zzz) & firstTrailingBit(arg_1.d.wwx)), arg_1.d.wyw);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_3.b.c.xy))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_3.b.c.x, -704f, global3.c.x), arg_1.b.c.c)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2, 913f, var_3.x))), _wgslsmith_f_op_vec3_f32(-global3.b.c))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(240f, -702f, -379f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1198f, -197f) - arg_3.c) - _wgslsmith_f_op_vec3_f32(arg_1.a.xwz - arg_3.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-523f, 362f, global3.b.c.x))))));
}

fn func_2() -> vec2<bool> {
    global3 = Struct_2(-vec2<i32>(global3.b.b, _wgslsmith_mod_i32(2147483647i, global3.a.x)) & -vec2<i32>(-9457i, min(0i, global3.a.x)), Struct_1(global3.b.a, global3.a.x, _wgslsmith_f_op_vec3_f32(func_3(~(~16594i), Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1268f, -1231f, 191f, global3.b.c.x)), Struct_3(vec2<f32>(1791f, global3.c.x), global3.a, global3.b), Struct_3(global3.b.c.zx, vec2<i32>(global3.b.b, global3.b.b), Struct_1(global1[_wgslsmith_index_u32(4294967295u, 32u)], 7670i, vec3<f32>(-1371f, 1000f, global3.c.x))), ~vec4<i32>(global3.b.b, 1i, 1i, -18234i), vec3<u32>(4294967295u, 21728u, 4294967295u)), 1000f, Struct_2(vec2<i32>(34069i, global3.a.x), Struct_1(global3.b.a, global3.a.x, global3.c), _wgslsmith_f_op_vec3_f32(-global3.b.c), true)))), global3.b.c, global3.d);
    global0 = array<u32, 15>();
    global1 = array<vec4<u32>, 32>();
    global1 = array<vec4<u32>, 32>();
    let var_0 = 2147483647i;
    return global2[_wgslsmith_index_u32(27981u, 3u)];
}

fn func_1(arg_0: vec4<u32>, arg_1: u32) -> Struct_5 {
    var var_0 = vec4<u32>(global3.b.a.x, ~min(1u, reverseBits(1u)), arg_0.x, global3.b.a.x);
    var_0 = min(arg_0, _wgslsmith_div_vec4_u32(arg_0, vec4<u32>(u_input.b, _wgslsmith_mult_u32(~arg_0.x, ~var_0.x), _wgslsmith_mod_u32(63554u, arg_0.x) | _wgslsmith_mult_u32(arg_1, global3.b.a.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 1u, 1u), var_0.www))));
    var var_1 = global3.a ^ (_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(global3.a, _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, 24357i), global3.a), -vec2<i32>(-1i, global3.a.x)), vec2<i32>(_wgslsmith_div_i32(-41080i, -15123i), 2147483647i >> (global0[_wgslsmith_index_u32(global3.b.a.x, 15u)] % 32u))) ^ select(vec2<i32>(-global3.a.x, 45686i), reverseBits(~global3.a), select(vec2<bool>(global3.d, global3.d), func_2(), !global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 15u)], 15u)], 3u)])));
    global0 = array<u32, 15>();
    var var_2 = global3.b.c;
    return Struct_5(abs(4294967295u), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, var_2.x, -869f) * vec4<f32>(119f, var_2.x, 1478f, global3.c.x)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1520f, var_2.x, 1000f, 493f), vec4<f32>(447f, global3.c.x, -1296f, var_2.x), vec4<bool>(true, global3.d, global3.d, global3.d))))))), Struct_4(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-539f, -302f, global3.b.c.x, var_2.x) * vec4<f32>(1000f, global3.b.c.x, var_2.x, global3.c.x)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.x, var_2.x, global3.c.x, -289f))))), vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-382f * 848f), -1671f, _wgslsmith_f_op_f32(f32(-1f) * -675f)))), Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.zz * var_2.zy) + var_2.yz), vec2<i32>(-61581i, global3.a.x), Struct_1(vec4<u32>(arg_0.x, 1u, 79902u, arg_1) << (u_input.a % vec4<u32>(32u)), -17676i, global3.c)), Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_2.yz)) - _wgslsmith_f_op_vec2_f32(-global3.b.c.yx)), -global3.a >> (vec2<u32>(u_input.a.x, global3.b.a.x) % vec2<u32>(32u)), global3.b), ~_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, global3.a.x, global3.b.b, var_1.x), vec4<i32>(-1i, -20396i, 49372i, 21411i)) << (vec4<u32>(u_input.a.x, reverseBits(1u), ~66181u, var_0.x >> (1u % 32u)) % vec4<u32>(32u)), abs(abs(firstLeadingBit(vec3<u32>(5786u, global3.b.a.x, 28431u))))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4, arg_2: Struct_1, arg_3: i32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.c.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1053f, arg_1.a.x)))) + _wgslsmith_f_op_f32(f32(-1f) * -200f));
    var var_1 = _wgslsmith_dot_vec3_u32(select(select(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.a, global0[_wgslsmith_index_u32(28803u, 15u)], global3.b.a.x), max(vec3<u32>(36849u, 4294967295u, u_input.b), vec3<u32>(global3.b.a.x, global3.b.a.x, u_input.c))), abs(_wgslsmith_clamp_vec3_u32(arg_2.a.yyw, vec3<u32>(0u, global0[_wgslsmith_index_u32(arg_2.a.x, 15u)], arg_2.a.x), vec3<u32>(0u, global0[_wgslsmith_index_u32(arg_2.a.x, 15u)], arg_1.b.c.a.x))), vec3<bool>(!global3.d, false, all(vec4<bool>(global3.d, false, true, global3.d)))), vec3<u32>(_wgslsmith_div_u32(~1u, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global3.b.a.x, 15u)], 10237u)), 129989u, _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_2.a.x, global3.b.a.x, 26206u), vec3<u32>(arg_2.a.x, 38787u, 4294967295u))), all(vec3<bool>(global3.d, global3.d, true))), firstLeadingBit(global3.b.a.yyy));
    let var_2 = arg_0.c;
    global2 = array<vec2<bool>, 3>();
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(411f))));
    return Struct_2(arg_1.b.b, var_2.b.c, arg_1.a.yww, true & !((0u >> (var_2.b.c.a.x % 32u)) > ~4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_4(func_1(~vec4<u32>(global0[_wgslsmith_index_u32(0u, 15u)] ^ 103280u, reverseBits(71074u), 29866u, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(0u, 56148u, u_input.a.x, global0[_wgslsmith_index_u32(u_input.b, 15u)]))), u_input.a.x), func_1(u_input.a >> (~global3.b.a % vec4<u32>(32u)), global3.b.a.x).c, global3.b, global3.b.b);
    var var_0 = global3.b.b;
    global0 = array<u32, 15>();
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.b, global3.b.a.x), ~(~(~reverseBits(1u)))), 3u)];
    var var_2 = 4294967295u;
    let var_3 = i32(-1i) * -6267i;
    var var_4 = _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, _wgslsmith_add_u32(max(4294967295u, u_input.c), ~firstLeadingBit(0u)), select(u_input.c, global0[_wgslsmith_index_u32(func_4(Struct_5(0u, vec4<f32>(global3.c.x, global3.c.x, global3.c.x, -1296f), Struct_4(vec4<f32>(global3.c.x, global3.b.c.x, 342f, global3.c.x), Struct_3(vec2<f32>(-1133f, -354f), global3.a, global3.b), Struct_3(global3.b.c.zy, global3.a, global3.b), vec4<i32>(-48419i, -13053i, var_3, 2147483647i), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 15u)], u_input.c))), Struct_4(vec4<f32>(global3.b.c.x, global3.c.x, global3.b.c.x, 133f), Struct_3(vec2<f32>(global3.b.c.x, global3.c.x), global3.a, Struct_1(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], var_3, global3.b.c)), Struct_3(global3.c.xy, vec2<i32>(21646i, var_3), global3.b), vec4<i32>(-10337i, 12229i, 1i, -18871i), global3.b.a.wwx), global3.b, global3.b.b).b.a.x, 15u)], 1393f > global3.b.c.x) | 4294967295u, 1u), ~min(vec4<u32>(~global3.b.a.x, ~52295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0[_wgslsmith_index_u32(global3.b.a.x, 15u)], 4294967295u), vec3<u32>(4294967295u, u_input.b, 1u)), 0u), _wgslsmith_mult_vec4_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(62904u, u_input.a.x), vec2<u32>(48936u, global3.b.a.x)), 32u)], vec4<u32>(1u, 0u, global0[_wgslsmith_index_u32(global3.b.a.x, 15u)], 38180u))));
    var var_5 = 13999u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(select(select(-vec4<i32>(23956i, 2464i, global3.b.b, var_3), vec4<i32>(580i, var_3, 2147483647i, var_3), !var_1.x), ~(~vec4<i32>(global3.b.b, 6767i, global3.a.x, var_3)), !(global3.c.x != global3.b.c.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -global3.b.b, 0i, -var_3), -max(vec4<i32>(global3.b.b, -33159i, var_3, global3.a.x), vec4<i32>(2147483647i, 10122i, global3.b.b, var_3)), vec4<i32>(-var_3, _wgslsmith_mult_i32(global3.b.b, 1i), 2388i, _wgslsmith_sub_i32(var_3, var_3)))));
}

