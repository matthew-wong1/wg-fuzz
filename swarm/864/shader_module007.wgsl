struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec4<bool>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec2<bool>,
    d: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

var<private> global1: array<vec4<u32>, 10> = array<vec4<u32>, 10>(vec4<u32>(10726u, 54476u, 1u, 22350u), vec4<u32>(4294967295u, 44783u, 0u, 7868u), vec4<u32>(141782u, 4294967295u, 0u, 21238u), vec4<u32>(104953u, 16311u, 0u, 25511u), vec4<u32>(54921u, 4294967295u, 1u, 0u), vec4<u32>(38630u, 1u, 4294967295u, 65550u), vec4<u32>(28796u, 13679u, 7017u, 54256u), vec4<u32>(0u, 1u, 1u, 26077u), vec4<u32>(0u, 1u, 78456u, 1u), vec4<u32>(29849u, 4294967295u, 4294967295u, 61433u));

var<private> global2: array<vec3<bool>, 22> = array<vec3<bool>, 22>(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true));

var<private> global3: array<vec4<u32>, 29> = array<vec4<u32>, 29>(vec4<u32>(1u, 1u, 40147u, 0u), vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(19076u, 4294967295u, 4294967295u, 17972u), vec4<u32>(0u, 6688u, 17180u, 0u), vec4<u32>(1u, 3869u, 12255u, 89537u), vec4<u32>(56491u, 1u, 4294967295u, 44378u), vec4<u32>(4294967295u, 94409u, 51947u, 4294967295u), vec4<u32>(24296u, 0u, 25791u, 0u), vec4<u32>(4294967295u, 1u, 2577u, 4269u), vec4<u32>(1u, 32733u, 13087u, 11100u), vec4<u32>(4294967295u, 22591u, 39520u, 4294967295u), vec4<u32>(1u, 0u, 31614u, 0u), vec4<u32>(49712u, 125592u, 4294967295u, 0u), vec4<u32>(0u, 32937u, 75285u, 1u), vec4<u32>(4294967295u, 79341u, 1u, 44980u), vec4<u32>(32504u, 1u, 0u, 48575u), vec4<u32>(1u, 4294967295u, 17575u, 32838u), vec4<u32>(0u, 1u, 1u, 6941u), vec4<u32>(71408u, 1u, 1u, 1435u), vec4<u32>(1u, 16629u, 4294967295u, 58320u), vec4<u32>(69077u, 43734u, 1u, 116615u), vec4<u32>(0u, 0u, 8755u, 30232u), vec4<u32>(81466u, 10603u, 19375u, 4294967295u), vec4<u32>(140762u, 4294967295u, 35555u, 4294967295u), vec4<u32>(4294967295u, 44629u, 1u, 53846u), vec4<u32>(4778u, 0u, 4294967295u, 0u), vec4<u32>(65446u, 4294967295u, 40220u, 0u), vec4<u32>(6064u, 4294967295u, 0u, 1u), vec4<u32>(4294967295u, 62005u, 0u, 34192u));

var<private> global4: vec3<bool> = vec3<bool>(false, false, true);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>) -> vec3<f32> {
    let var_0 = Struct_4(Struct_2(vec4<i32>(u_input.c, -2147483647i, max(reverseBits(-2147483647i), -u_input.d.x), u_input.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(969f, 1000f, 388f), vec3<f32>(-595f, 2643f, -360f)))), 17648u, _wgslsmith_div_u32(~u_input.b, min(~23442u, global0[_wgslsmith_index_u32(0u >> (u_input.a % 32u), 8u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1742f, -265f, 186f) + vec3<f32>(-1253f, 356f, -131f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(113f, -444f, 156f) + vec3<f32>(227f, -1000f, -536f)))))), Struct_1(u_input.d.x, abs(firstTrailingBit(vec3<i32>(u_input.c, u_input.c, -746i))), vec4<bool>(true, select(true, !arg_0.x, true), global4.x, all(arg_0)), reverseBits(select(global0[_wgslsmith_index_u32(4294967295u, 8u)], 0u, arg_0.x)), _wgslsmith_sub_i32(_wgslsmith_div_i32(63119i, 2147483647i) & countOneBits(u_input.d.x), u_input.d.x)));
    var var_1 = vec3<i32>(u_input.d.x, ~(-(i32(-1i) * -28575i)), _wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec3_i32(var_0.a.a.zyz, -vec3<i32>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x)), 0i));
    let var_2 = var_0.c.c;
    var var_3 = var_0.b.x;
    let var_4 = select(vec2<bool>(any(select(vec2<bool>(true, false), var_0.c.c.zy, arg_0)) != true, any(vec2<bool>(true, any(var_0.c.c)))), vec2<bool>(arg_0.x, all(vec2<bool>(true, true))), (-48581i ^ reverseBits(-var_0.c.b.x)) != (countOneBits(u_input.c) | var_0.c.b.x));
    return vec3<f32>(var_0.b.x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(383f, var_0.b.x)), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-var_0.a.b.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_0.b.x)), -1028f, true))), _wgslsmith_f_op_f32(-var_0.a.b.x));
}

fn func_2() -> bool {
    global2 = array<vec3<bool>, 22>();
    var var_0 = true;
    let var_1 = Struct_2(-vec4<i32>(_wgslsmith_sub_i32(max(u_input.d.x, 0i), u_input.d.x), u_input.c, 0i, ~u_input.d.x ^ -u_input.d.x), _wgslsmith_f_op_vec3_f32(func_3(global4.yx)), _wgslsmith_sub_u32(~u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(abs(4294967295u), 8u)], 8u)]), u_input.b);
    let var_2 = Struct_3(false, !global4.x, vec2<bool>(true, !global4.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_1.b.yy), vec2<f32>(802f, _wgslsmith_f_op_f32(-657f - var_1.b.x)), global4.x))));
    let var_3 = Struct_1(-34574i, -var_1.a.xzw, select(select(vec4<bool>(true, true, u_input.d.x > -18174i, true), select(select(vec4<bool>(false, true, var_2.c.x, true), vec4<bool>(false, var_2.a, global4.x, var_2.a), vec4<bool>(global4.x, global4.x, var_2.a, true)), vec4<bool>(true, var_2.b, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, any(vec4<bool>(var_2.c.x, global4.x, var_2.c.x, false)), false, var_2.c.x)), !(!vec4<bool>(var_2.a, global4.x, var_2.c.x, var_2.c.x)), select(!select(vec4<bool>(true, true, var_2.c.x, global4.x), vec4<bool>(true, true, true, false), false), !select(vec4<bool>(true, global4.x, true, true), vec4<bool>(false, true, true, var_2.a), true), global4.x)), ~abs(u_input.a & 1u) ^ _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(54732u, 8u)], global0[_wgslsmith_index_u32(6392u, 8u)]), -62519i);
    return any(var_3.c.yy);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: Struct_1) -> bool {
    var var_0 = select(global4.xz, arg_0, arg_0.x);
    global1 = array<vec4<u32>, 10>();
    let var_1 = vec2<bool>(arg_2.c.x, any(global4.zx));
    let var_2 = vec2<bool>(var_0.x, arg_0.x == (arg_2.c.x && func_2()));
    global2 = array<vec3<bool>, 22>();
    return !func_2();
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: i32) -> vec4<bool> {
    let var_0 = select(select(!arg_2, vec4<bool>(_wgslsmith_f_op_f32(trunc(arg_0.d.x)) > _wgslsmith_f_op_f32(579f - arg_0.d.x), arg_0.b, true, arg_1.c.x & true), false != ((true || arg_2.x) & (arg_0.d.x > -188f))), select(!vec4<bool>(false, true, func_1(vec2<bool>(false, true), u_input.d, Struct_1(1i, vec3<i32>(-1i, -1276i, arg_3), arg_2, 0u, -2147483647i)), true), select(select(arg_2, vec4<bool>(arg_0.a, global4.x, global4.x, arg_1.b), arg_2), !vec4<bool>(arg_2.x, false, false, false), select(vec4<bool>(arg_2.x, global4.x, false, true), arg_2, vec4<bool>(arg_1.a, false, global4.x, true))), select(arg_1.a, !(2147483647i == u_input.d.x), false)), vec4<bool>(select(all(arg_1.c), true, false), true, !(!any(vec2<bool>(true, true))), !(arg_2.x && (arg_3 == u_input.c))));
    let var_1 = max(_wgslsmith_sub_vec4_u32(select(global1[_wgslsmith_index_u32((global0[_wgslsmith_index_u32(4294967295u, 8u)] | 0u) ^ firstTrailingBit(39064u), 10u)], countOneBits(vec4<u32>(u_input.b, 24904u, u_input.a, 103613u)), !(!vec4<bool>(true, global4.x, false, true))), _wgslsmith_add_vec4_u32(select(abs(global1[_wgslsmith_index_u32(u_input.b, 10u)]), ~vec4<u32>(u_input.b, global0[_wgslsmith_index_u32(0u, 8u)], u_input.b, 1u), !vec4<bool>(true, true, false, var_0.x)), abs(vec4<u32>(u_input.a, u_input.a, u_input.b, global0[_wgslsmith_index_u32(1u, 8u)])))), global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 8u)], 29u)]);
    var var_2 = abs(vec3<i32>(-_wgslsmith_mult_i32(abs(u_input.d.x), -18609i), u_input.c, -1i));
    global2 = array<vec3<bool>, 22>();
    let var_3 = var_0.x;
    return select(!arg_2, !arg_2, vec4<bool>(!func_1(var_0.zz, var_2.zy, Struct_1(17401i, vec3<i32>(u_input.d.x, var_2.x, -62678i), var_0, 42502u, u_input.d.x)), !any(select(arg_0.c, vec2<bool>(false, true), var_0.wy)), all(vec2<bool>(any(vec4<bool>(arg_1.a, arg_2.x, arg_1.a, false)), all(vec4<bool>(arg_2.x, true, arg_1.c.x, true)))), func_2()));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!vec4<bool>(select(true, true, !global4.x), !global4.x, ~u_input.d.x != (u_input.c | 16326i), all(vec4<bool>(global4.x, global4.x, global4.x, global4.x)) | select(true, global4.x, global4.x)), !vec4<bool>(!(global4.x & false), true, false, global4.x), all(func_4(Struct_3(global4.x, global4.x, global4.xx, vec2<f32>(939f, -921f)), Struct_3(!global4.x, true, select(vec2<bool>(true, global4.x), vec2<bool>(false, global4.x), global4.yy), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1018f, -1040f), vec2<f32>(-1090f, 320f)))), vec4<bool>(1i < u_input.c, global4.x, func_1(global4.xy, u_input.d, Struct_1(u_input.d.x, vec3<i32>(u_input.d.x, 2147483647i, u_input.d.x), vec4<bool>(global4.x, true, global4.x, global4.x), 4294967295u, 5611i)), true), u_input.d.x)));
    global2 = array<vec3<bool>, 22>();
    var_0 = !vec4<bool>(func_1(vec2<bool>(false, true), abs(u_input.d), Struct_1(-1i, vec3<i32>(u_input.c, u_input.d.x, u_input.d.x), !vec4<bool>(false, global4.x, false, false), 2578u, 1i)), true, func_1(select(select(var_0.wx, global4.zy, vec2<bool>(true, true)), !vec2<bool>(var_0.x, global4.x), !var_0.xz), u_input.d, Struct_1(-31547i, -vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x), !vec4<bool>(var_0.x, global4.x, global4.x, true), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33539u, 8u)], 8u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 8u)]), 1i)), true);
    global1 = array<vec4<u32>, 10>();
    let var_1 = -996f;
    let var_2 = 1i;
    let var_3 = var_1;
    var_0 = select(func_4(Struct_3(all(select(vec2<bool>(var_0.x, false), vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, var_0.x))), global4.x && func_1(var_0.zx, vec2<i32>(u_input.c, -55153i), Struct_1(40096i, vec3<i32>(-9780i, var_2, u_input.d.x), vec4<bool>(false, var_0.x, false, global4.x), 87906u, var_2)), vec2<bool>(global4.x, all(vec3<bool>(var_0.x, false, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, var_3)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(664f, 396f) + vec2<f32>(-855f, -205f)))), Struct_3(!(u_input.b > global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9907u, 8u)], 8u)]), !func_4(Struct_3(global4.x, var_0.x, global4.xy, vec2<f32>(-467f, -1000f)), Struct_3(true, false, vec2<bool>(var_0.x, global4.x), vec2<f32>(var_1, var_1)), vec4<bool>(var_0.x, global4.x, global4.x, false), u_input.d.x).x, global4.yx, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(825f, var_1)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-191f, var_3), vec2<f32>(566f, 187f)))))), !select(select(vec4<bool>(false, true, true, false), vec4<bool>(global4.x, false, global4.x, true), vec4<bool>(global4.x, false, false, false)), select(vec4<bool>(true, false, var_0.x, false), vec4<bool>(false, global4.x, var_0.x, false), true), select(vec4<bool>(var_0.x, var_0.x, global4.x, var_0.x), vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(var_0.x, true, global4.x, var_0.x))), u_input.c), vec4<bool>(global4.x || global4.x, !var_0.x, var_0.x, global4.x), any(vec2<bool>(true, var_0.x & any(vec3<bool>(global4.x, true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 10u)]) & abs(_wgslsmith_clamp_vec4_u32(firstLeadingBit(global3[_wgslsmith_index_u32(u_input.a, 29u)]), global1[_wgslsmith_index_u32(~1u, 10u)], ~global1[_wgslsmith_index_u32(1u, 10u)])), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3), 482f), 1049f, 483f, -735f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * var_1) * var_1), var_3, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -582f))), var_1)));
}

