struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 23>;

var<private> global1: array<Struct_2, 2>;

var<private> global2: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(vec3<bool>(false, true, false), vec4<bool>(false, true, false, true), Struct_1(false, 4294967295u), -1i), Struct_2(vec3<bool>(false, false, true), vec4<bool>(false, true, true, true), Struct_1(true, 1u), 1i), Struct_2(vec3<bool>(true, false, false), vec4<bool>(true, true, false, true), Struct_1(false, 4294967295u), -1i), Struct_2(vec3<bool>(true, true, true), vec4<bool>(false, false, false, true), Struct_1(false, 23620u), -19720i), Struct_2(vec3<bool>(false, false, true), vec4<bool>(true, false, false, false), Struct_1(false, 25255u), 0i), Struct_2(vec3<bool>(true, true, true), vec4<bool>(false, true, true, false), Struct_1(false, 38467u), i32(-2147483648)), Struct_2(vec3<bool>(false, false, true), vec4<bool>(true, true, false, true), Struct_1(false, 4294967295u), -33936i), Struct_2(vec3<bool>(false, true, false), vec4<bool>(false, false, false, false), Struct_1(true, 1u), i32(-2147483648)), Struct_2(vec3<bool>(true, false, false), vec4<bool>(false, false, true, false), Struct_1(false, 21234u), i32(-2147483648)), Struct_2(vec3<bool>(false, false, false), vec4<bool>(false, true, false, false), Struct_1(true, 1u), 2147483647i), Struct_2(vec3<bool>(true, true, true), vec4<bool>(true, false, false, true), Struct_1(false, 4294967295u), 2147483647i), Struct_2(vec3<bool>(false, true, false), vec4<bool>(true, true, false, false), Struct_1(true, 1u), 2147483647i), Struct_2(vec3<bool>(true, false, false), vec4<bool>(false, true, false, true), Struct_1(false, 5891u), -1805i), Struct_2(vec3<bool>(true, false, true), vec4<bool>(false, false, false, false), Struct_1(false, 1u), -9039i), Struct_2(vec3<bool>(true, false, false), vec4<bool>(true, true, false, false), Struct_1(false, 21796u), 18928i), Struct_2(vec3<bool>(false, true, false), vec4<bool>(true, false, false, false), Struct_1(false, 32488u), 0i), Struct_2(vec3<bool>(true, true, false), vec4<bool>(false, true, true, true), Struct_1(true, 4294967295u), -1i), Struct_2(vec3<bool>(true, false, true), vec4<bool>(true, true, false, true), Struct_1(false, 1u), -1i), Struct_2(vec3<bool>(true, true, true), vec4<bool>(true, false, false, false), Struct_1(true, 4294967295u), 0i), Struct_2(vec3<bool>(false, true, false), vec4<bool>(true, true, false, false), Struct_1(false, 0u), 2147483647i), Struct_2(vec3<bool>(true, false, false), vec4<bool>(true, false, true, false), Struct_1(true, 30771u), -1i), Struct_2(vec3<bool>(false, false, true), vec4<bool>(true, true, true, true), Struct_1(false, 17570u), 27762i), Struct_2(vec3<bool>(true, true, false), vec4<bool>(true, true, true, true), Struct_1(true, 4294967295u), 11070i), Struct_2(vec3<bool>(true, true, true), vec4<bool>(false, true, false, true), Struct_1(true, 70990u), 25046i), Struct_2(vec3<bool>(false, true, true), vec4<bool>(false, false, false, false), Struct_1(false, 4294967295u), 0i));

var<private> global3: array<f32, 27> = array<f32, 27>(1434f, -1329f, -537f, -463f, -497f, 1054f, -235f, 193f, 1000f, 1483f, -1808f, -426f, 3133f, -2006f, 477f, -467f, -1020f, 1758f, -691f, -301f, -437f, 111f, -2646f, 212f, -655f, 1000f, 1078f);

var<private> global4: array<vec4<bool>, 2>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: f32) -> vec4<u32> {
    let var_0 = -_wgslsmith_mult_vec2_i32(vec2<i32>(~(~u_input.a), 1i), ~max(-vec2<i32>(26411i, -42512i), vec2<i32>(54798i, 2918i)));
    return vec4<u32>(u_input.b, firstTrailingBit((u_input.b >> ((u_input.b >> (96053u % 32u)) % 32u)) << (0u % 32u)), _wgslsmith_mod_u32(~1u, u_input.b) ^ abs(u_input.b), ~(_wgslsmith_div_u32(2298u << (u_input.c % 32u), ~36664u) & (~1u ^ (arg_1.b << (64465u % 32u)))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: vec4<u32>, arg_3: i32) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec4_u32(arg_2, ~(~func_3(true, Struct_1(false, 37599u), _wgslsmith_f_op_f32(sign(736f)))));
    var var_1 = abs(~u_input.b);
    global2 = array<Struct_2, 25>();
    global4 = array<vec4<bool>, 2>();
    var var_2 = select(!(all(!global4[_wgslsmith_index_u32(u_input.c, 2u)]) != all(vec3<bool>(true, true, true))), false, all(vec2<bool>(false, true)) | true);
    return Struct_1(u_input.a <= ~(~abs(-1i)), arg_2.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec2<u32>) -> vec4<u32> {
    let var_0 = Struct_2(!vec3<bool>(true, !arg_1.a.x, !(u_input.a != -2147483647i)), global4[_wgslsmith_index_u32(32335u, 2u)], Struct_1(any(global4[_wgslsmith_index_u32(u_input.c, 2u)]), u_input.b), arg_1.d);
    global1 = array<Struct_2, 2>();
    var var_1 = !select(arg_1.b.zz, !vec2<bool>(!arg_0.x, true), func_2(vec2<u32>(reverseBits(var_0.c.b), firstLeadingBit(50352u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(1u, 27u)], 379f) * vec2<f32>(global3[_wgslsmith_index_u32(19712u, 27u)], global3[_wgslsmith_index_u32(0u, 27u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-663f, -132f))), _wgslsmith_mod_vec4_u32(vec4<u32>(3345u, arg_1.c.b, 18165u, 22688u) & vec4<u32>(4294967295u, var_0.c.b, 2924u, var_0.c.b), vec4<u32>(var_0.c.b, 4294967295u, u_input.b, arg_2.x)), reverseBits(_wgslsmith_sub_i32(-1i, var_0.d))).a);
    var var_2 = _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(((vec2<i32>(var_0.d, -13215i) | vec2<i32>(-2147483647i, var_0.d)) >> (vec2<u32>(arg_2.x, 0u) % vec2<u32>(32u))) >> (vec2<u32>(~var_0.c.b, arg_1.c.b) % vec2<u32>(32u)), ~vec2<i32>(var_0.d ^ -2147483647i, 1i)), ~abs(vec2<i32>(-2147483647i, u_input.a)));
    let var_3 = func_2(_wgslsmith_div_vec2_u32(arg_2, ~vec2<u32>(1u, 4294967295u) & arg_2), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.c, 27u)]), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_1.c.b, 27u)] + -164f)), _wgslsmith_f_op_f32(abs(-960f))) - vec2<f32>(1115f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(280f * -225f)))), countOneBits(func_3(var_1.x, func_2(vec2<u32>(1u, 4294967295u), vec2<f32>(global3[_wgslsmith_index_u32(arg_1.c.b, 27u)], global3[_wgslsmith_index_u32(0u, 27u)]), vec4<u32>(0u, 6450u, 54486u, 37037u), countOneBits(-1i)), _wgslsmith_f_op_f32(max(-428f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(61621u, 27u)]))))), _wgslsmith_sub_i32(-27800i, 34945i));
    return vec4<u32>(~34200u, _wgslsmith_sub_u32(func_3(true, var_3, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1020f))))).x, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(3179u, arg_1.c.b, u_input.c), vec3<u32>(var_3.b, 7658u, arg_2.x)))), 4294967295u, abs(~51621u) << ((1u | reverseBits(select(u_input.b, u_input.b, false))) % 32u));
}

fn func_5(arg_0: bool, arg_1: vec4<u32>, arg_2: i32, arg_3: Struct_1) -> u32 {
    let var_0 = firstTrailingBit(max(global0[_wgslsmith_index_u32(~(~(0u >> (u_input.b % 32u))), 23u)], firstLeadingBit(global0[_wgslsmith_index_u32(1u, 23u)])));
    let var_1 = arg_3;
    var var_2 = var_1;
    global2 = array<Struct_2, 25>();
    let var_3 = var_0.x;
    return 73042u;
}

fn func_1() -> vec3<bool> {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, func_5(select(true, any(!global4[_wgslsmith_index_u32(u_input.b, 2u)]), true), func_4(select(vec2<bool>(true, true), vec2<bool>(true, false), true), Struct_2(vec3<bool>(true, true, true), !global4[_wgslsmith_index_u32(0u, 2u)], func_2(vec2<u32>(u_input.b, 0u), vec2<f32>(global3[_wgslsmith_index_u32(u_input.b, 27u)], global3[_wgslsmith_index_u32(0u, 27u)]), vec4<u32>(1u, u_input.b, u_input.c, u_input.c), 2636i), 1i), vec2<u32>(1u, u_input.b)), min(-(~u_input.a), _wgslsmith_div_i32(~(-22730i), 0i & u_input.a)), Struct_1(all(select(global4[_wgslsmith_index_u32(u_input.b, 2u)], global4[_wgslsmith_index_u32(u_input.b, 2u)], false)), firstTrailingBit(u_input.b))), ~u_input.c), 25u)];
    let var_1 = var_0.c;
    var_0 = global1[_wgslsmith_index_u32(func_2(select(vec2<u32>(select(u_input.c, ~var_1.b, any(vec3<bool>(true, var_1.a, false))), 1u), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 57688u), ~(vec2<u32>(95148u, var_0.c.b) >> (vec2<u32>(u_input.b, 66772u) % vec2<u32>(32u)))), !select(select(var_0.b.yw, var_0.b.zz, var_0.a.zy), select(var_0.a.zy, vec2<bool>(var_1.a, var_1.a), var_1.a), vec2<bool>(var_1.a, true))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-306f, -113f)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-773f, global3[_wgslsmith_index_u32(8768u, 27u)]), vec2<f32>(global3[_wgslsmith_index_u32(77448u, 27u)], global3[_wgslsmith_index_u32(34563u, 27u)]))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 532f) * vec2<f32>(global3[_wgslsmith_index_u32(var_1.b, 27u)], global3[_wgslsmith_index_u32(4294967295u, 27u)]))), select(select(!var_0.b.xz, var_0.a.zz, true), var_0.b.yz, var_0.b.zz))), select((~vec4<u32>(9463u, 3145u, 4525u, 10298u) & vec4<u32>(var_1.b, 41146u, u_input.c, 4294967295u)) & vec4<u32>(~39697u, 4294967295u & u_input.c, var_0.c.b, 1u), ~(vec4<u32>(var_1.b, 87949u, var_1.b, 86994u) >> (max(vec4<u32>(4294967295u, u_input.b, 4294967295u, var_0.c.b), vec4<u32>(32475u, var_1.b, u_input.c, 59184u)) % vec4<u32>(32u))), true), abs(_wgslsmith_mult_i32(var_0.d, 2147483647i))).b, 2u)];
    global4 = array<vec4<bool>, 2>();
    global2 = array<Struct_2, 25>();
    return select(select(select(var_0.b.xwz, vec3<bool>(!var_1.a, true, true), var_0.b.wxz), !select(select(vec3<bool>(true, var_1.a, var_0.c.a), var_0.b.xyz, false), !vec3<bool>(false, var_1.a, false), var_1.a), all(var_0.b)), select(var_0.a, var_0.b.zyz, true), var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 5612u;
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-855f))));
    global1 = array<Struct_2, 2>();
    var var_2 = select(false, all(select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), vec3<bool>(true, false, true), func_1()), vec3<bool>(true, true, false), all(vec2<bool>(false, true)))), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 0i, -1i, u_input.a), -vec4<i32>(-2147483647i, 1i, 1i, u_input.a)), -2147483647i) <= u_input.a);
    var var_3 = false;
    global2 = array<Struct_2, 25>();
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i << ((_wgslsmith_sub_u32(46182u, max(u_input.c, 1u)) << (var_0 % 32u)) % 32u), ~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.c, u_input.c, var_0)), _wgslsmith_sub_vec3_u32(vec3<u32>(8660u, u_input.b, 50596u) >> (vec3<u32>(57050u, u_input.c, 0u) % vec3<u32>(32u)), min(vec3<u32>(27967u, 41412u, 0u), vec3<u32>(30183u, var_0, var_0)))), max(vec4<u32>(u_input.b, 4294967295u, 5259u, var_0), vec4<u32>(var_0, ~(~u_input.b), ~u_input.b, 50332u)), _wgslsmith_sub_vec4_u32(reverseBits(select(vec4<u32>(0u, var_0, 0u, u_input.b), vec4<u32>(25676u, var_0, u_input.b, var_0), false)), vec4<u32>(u_input.c, u_input.c, 1u, 4294967295u)) & abs(vec4<u32>(_wgslsmith_mult_u32(68036u, 0u), u_input.b, 23288u, u_input.c)));
}

