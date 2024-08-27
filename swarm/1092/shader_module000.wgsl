struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
    c: vec4<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 24> = array<vec2<f32>, 24>(vec2<f32>(334f, 615f), vec2<f32>(-944f, -988f), vec2<f32>(-192f, -1037f), vec2<f32>(383f, -1191f), vec2<f32>(-626f, -262f), vec2<f32>(991f, -355f), vec2<f32>(-119f, -1000f), vec2<f32>(-1326f, -134f), vec2<f32>(685f, -307f), vec2<f32>(1735f, -550f), vec2<f32>(-663f, -627f), vec2<f32>(-416f, -906f), vec2<f32>(-1000f, 464f), vec2<f32>(-343f, -267f), vec2<f32>(1168f, -975f), vec2<f32>(935f, -886f), vec2<f32>(201f, -1426f), vec2<f32>(1130f, -627f), vec2<f32>(1000f, -1000f), vec2<f32>(2608f, -696f), vec2<f32>(942f, 560f), vec2<f32>(892f, -143f), vec2<f32>(1006f, -1074f), vec2<f32>(210f, 1960f));

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(false, vec4<i32>(-13449i, i32(-2147483648), -82393i, -1i), vec2<i32>(-2833i, 0i)), Struct_1(true, vec4<i32>(-1i, -1i, 28318i, -8900i), vec2<i32>(2147483647i, -22604i)), Struct_1(true, vec4<i32>(-1i, 26180i, 45745i, 2147483647i), vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(false, vec4<i32>(37232i, -38173i, -18358i, 2147483647i), vec2<i32>(2147483647i, -1i)), Struct_1(true, vec4<i32>(2147483647i, 0i, i32(-2147483648), 4722i), vec2<i32>(39931i, -19974i)), Struct_1(true, vec4<i32>(53618i, 18438i, 42982i, -1i), vec2<i32>(47342i, -30035i)), Struct_1(true, vec4<i32>(2147483647i, -1i, 2147483647i, 7134i), vec2<i32>(-22151i, 34044i)), Struct_1(true, vec4<i32>(-1i, 25044i, 28376i, -16031i), vec2<i32>(16808i, -9160i)));

var<private> global2: array<bool, 29> = array<bool, 29>(false, true, true, false, false, true, false, false, true, true, true, true, false, false, true, true, true, true, true, false, false, false, true, false, true, false, true, false, true);

var<private> global3: u32 = 65659u;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_1(!global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.b, u_input.c), 29u)], _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(u_input.a.x, ~0i, _wgslsmith_mod_i32(u_input.d.x, 45891i)), u_input.a.x, _wgslsmith_mod_i32(-u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, -2147483647i), u_input.a)), -6580i), vec4<i32>(u_input.a.x, ~(~2147483647i), u_input.d.x, u_input.d.x)), -(vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d.x, -5937i), vec2<i32>(u_input.a.x, -4798i))));
    let var_1 = Struct_4(Struct_3(select(u_input.c, _wgslsmith_mod_u32(u_input.c, u_input.b ^ 71485u), var_0.a)), select(select(select(vec4<bool>(var_0.a, false, global2[_wgslsmith_index_u32(u_input.b, 29u)], var_0.a), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 29u)], global2[_wgslsmith_index_u32(1u, 29u)], true, true), vec4<bool>(true, false, global2[_wgslsmith_index_u32(0u, 29u)], false), vec4<bool>(var_0.a, global2[_wgslsmith_index_u32(1u, 29u)], false, global2[_wgslsmith_index_u32(1u, 29u)])), !vec4<bool>(global2[_wgslsmith_index_u32(26801u, 29u)], var_0.a, var_0.a, global2[_wgslsmith_index_u32(u_input.c, 29u)])), select(!vec4<bool>(false, var_0.a, var_0.a, var_0.a), !vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 29u)], false, true), false && global2[_wgslsmith_index_u32(0u, 29u)]), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(72791u, u_input.b), vec2<u32>(u_input.b, 1u)), 29u)]), select(!select(vec4<bool>(true, false, false, global2[_wgslsmith_index_u32(4294967295u, 29u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 29u)], global2[_wgslsmith_index_u32(1u, 29u)], false, var_0.a), false), select(select(vec4<bool>(true, false, false, global2[_wgslsmith_index_u32(27615u, 29u)]), vec4<bool>(global2[_wgslsmith_index_u32(15397u, 29u)], true, false, global2[_wgslsmith_index_u32(27899u, 29u)]), true), vec4<bool>(false, false, global2[_wgslsmith_index_u32(u_input.c, 29u)], true), vec4<bool>(true, true, true, true)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, u_input.c), 29u)]), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -697f, 1000f, 581f), vec4<f32>(-1043f, -1000f, 930f, 217f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-895f, -283f, 843f, -1372f) * vec4<f32>(1000f, 404f, 296f, 158f))))), true);
    var var_2 = Struct_1(true, -(~var_0.b), _wgslsmith_div_vec2_i32(vec2<i32>(var_0.b.x & 0i, 8204i), reverseBits(u_input.a.xz)));
    let var_3 = 4294967295u;
    let var_4 = true;
    return vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.c.x)))), -1068f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.c.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)))), -1505f, var_1.c.x);
}

fn func_2(arg_0: Struct_4) -> Struct_4 {
    var var_0 = Struct_4(arg_0.a, arg_0.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(768f, 656f, -1161f, 138f))) - vec4<f32>(_wgslsmith_f_op_f32(arg_0.c.x - arg_0.c.x), arg_0.c.x, arg_0.c.x, arg_0.c.x)), arg_0.c), (false & all(!vec3<bool>(false, arg_0.d, false))) | true);
    var var_1 = Struct_4(var_0.a, vec4<bool>(false, true, !(select(u_input.a.x, 14654i, var_0.d) >= ~(-2147483647i)), any(vec4<bool>(true, true, false, arg_0.d)) && !(!var_0.d)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_0.c, _wgslsmith_f_op_vec4_f32(exp2(var_0.c)), select(vec4<bool>(arg_0.b.x, global2[_wgslsmith_index_u32(4294967295u, 29u)], false, false), arg_0.b, var_0.b))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_3()), arg_0.c))))), any(vec2<bool>(any(arg_0.b.zz), any(select(vec3<bool>(arg_0.b.x, true, false), arg_0.b.yxy, vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 29u)], arg_0.b.x, arg_0.d))))));
    var var_2 = var_1.a.a;
    var_0 = arg_0;
    var var_3 = var_0.c.x;
    return Struct_4(var_0.a, select(var_0.b, !(!select(var_0.b, var_0.b, true)), any(arg_0.b.zy)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_1.c)) + arg_0.c)), any(vec2<bool>(all(var_0.b.yz), !arg_0.b.x)));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> Struct_4 {
    var var_0 = func_2(Struct_4(Struct_3(1u), select(!select(vec4<bool>(false, false, arg_0.a, global2[_wgslsmith_index_u32(21298u, 29u)]), vec4<bool>(false, false, arg_0.a, arg_0.a), global2[_wgslsmith_index_u32(52684u, 29u)]), vec4<bool>(!arg_0.a, true, true, true), vec4<bool>(global2[_wgslsmith_index_u32(93070u, 29u)], arg_0.a, any(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 29u)], global2[_wgslsmith_index_u32(u_input.b, 29u)], false, global2[_wgslsmith_index_u32(33132u, 29u)])), arg_0.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 1000f, arg_1, 426f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1072f, arg_1, -413f, arg_1)), !vec4<bool>(arg_0.a, global2[_wgslsmith_index_u32(46014u, 29u)], arg_0.a, false))) + vec4<f32>(arg_1, _wgslsmith_f_op_f32(786f + arg_1), -909f, _wgslsmith_f_op_f32(abs(arg_1)))), true));
    var var_1 = true;
    global2 = array<bool, 29>();
    let var_2 = any(vec2<bool>(true, arg_0.a));
    global3 = u_input.b;
    return func_2(func_2(Struct_4(func_2(Struct_4(Struct_3(u_input.c), vec4<bool>(var_0.d, global2[_wgslsmith_index_u32(u_input.b, 29u)], arg_0.a, false), var_0.c, global2[_wgslsmith_index_u32(u_input.b, 29u)])).a, var_0.b, _wgslsmith_div_vec4_f32(vec4<f32>(-705f, 1000f, 628f, var_0.c.x), _wgslsmith_f_op_vec4_f32(func_3())), true)));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: f32, arg_3: bool) -> Struct_1 {
    var var_0 = ~(~_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.c, 26769u, 63358u), min(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 46059u, arg_0.a.a), vec3<u32>(u_input.b, arg_0.a.a, arg_0.a.a)), vec3<u32>(0u, 15634u, 1u))));
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(func_1(Struct_1(false, vec4<i32>(38471i, u_input.a.x, -30319i, -48435i), vec2<i32>(u_input.d.x, -66726i)), arg_2).c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -250f), arg_0.c.x), arg_2))));
    global0 = array<vec2<f32>, 24>();
    var var_2 = arg_0.c;
    let var_3 = Struct_2(global1[_wgslsmith_index_u32(abs(~_wgslsmith_add_u32(max(var_0.x, var_0.x), arg_0.a.a >> (4294967295u % 32u))), 8u)]);
    return global1[_wgslsmith_index_u32(abs(firstLeadingBit(1u)), 8u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 29>();
    var var_0 = Struct_3(abs(~(u_input.c | 14324u)) | (u_input.c >> ((max(u_input.c, 1u) >> ((3867u >> (u_input.c % 32u)) % 32u)) % 32u)));
    var_0 = Struct_3(u_input.c);
    var var_1 = vec4<f32>(770f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1398f), 1f), -988f, 1f);
    let var_2 = _wgslsmith_mod_i32(2147483647i, firstLeadingBit(~2147483647i));
    var var_3 = func_4(func_1(Struct_1(var_1.x == 103f, (vec4<i32>(var_2, var_2, -2670i, u_input.a.x) & vec4<i32>(16906i, var_2, -3569i, -2147483647i)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(9568u, 0u, 1u, 54214u), vec4<u32>(1u, 4294967295u, var_0.a, 1u), vec4<u32>(28838u, var_0.a, 64606u, 0u)) % vec4<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(var_2, 31476i), u_input.d.xy)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -650f)))), vec4<i32>(var_2, _wgslsmith_mod_i32(53730i, 1i), 1i, _wgslsmith_dot_vec4_i32(~vec4<i32>(var_2, u_input.d.x, 1i, 0i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, var_2, var_2, var_2), vec4<i32>(var_2, var_2, u_input.a.x, u_input.d.x))) ^ _wgslsmith_sub_i32(-13605i, u_input.d.x)), 1715f, true);
    var var_4 = Struct_2(global1[_wgslsmith_index_u32(58962u, 8u)]);
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1116f));
    var_3 = func_4(func_2(Struct_4(Struct_3(abs(4294967295u)), select(vec4<bool>(var_4.a.a, true, global2[_wgslsmith_index_u32(var_0.a, 29u)], var_3.a), vec4<bool>(true, false, var_3.a, false), true), vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x + var_1.x), -203f, _wgslsmith_f_op_f32(-var_1.x)), func_2(Struct_4(Struct_3(29496u), vec4<bool>(true, false, global2[_wgslsmith_index_u32(17722u, 29u)], var_3.a), vec4<f32>(1512f, 1354f, -1000f, -770f), true)).d)), _wgslsmith_mult_vec4_i32(-select(vec4<i32>(var_2, 1i, var_4.a.c.x, -43886i), var_3.b, !vec4<bool>(var_3.a, false, var_4.a.a, true)), reverseBits(vec4<i32>(var_2, -51714i >> (var_0.a % 32u), firstLeadingBit(var_2), 6675i & var_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), func_2(func_2(func_1(global1[_wgslsmith_index_u32(~u_input.c, 8u)], 251f))).b.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.b.zzy >> (_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(u_input.c, 1u), _wgslsmith_div_u32(u_input.b, u_input.b), abs(var_0.a)), ~select(vec3<u32>(32935u, var_0.a, 0u), vec3<u32>(1u, 22413u, var_0.a), vec3<bool>(var_3.a, false, false))) % vec3<u32>(32u)), _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.d.x, 2147483647i), var_2), vec2<u32>(u_input.c, u_input.c), (vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(var_3.b.zw, var_3.b.xy)) << (_wgslsmith_div_vec2_u32(vec2<u32>(7162u, 60321u) >> (~vec2<u32>(0u, u_input.b) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(~vec2<u32>(var_0.a, u_input.b), firstLeadingBit(vec2<u32>(1u, 0u)))) % vec2<u32>(32u)));
}

