struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 28> = array<vec4<bool>, 28>(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false));

var<private> global1: array<vec3<i32>, 20>;

var<private> global2: array<f32, 19>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: vec3<i32>, arg_3: i32) -> bool {
    let var_0 = -1130f;
    var var_1 = _wgslsmith_dot_vec4_u32(~(vec4<u32>(firstTrailingBit(0u), 40251u, reverseBits(arg_0.c.b), select(arg_0.c.a, 94331u, true)) ^ vec4<u32>(u_input.d >> (4294967295u % 32u), 1u, ~arg_1, 1u << (arg_0.c.b % 32u))), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(19853u, arg_0.e.a, 57159u, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 17139u, arg_0.c.b, u_input.d), vec4<u32>(arg_1, 10044u, arg_1, 28669u))), ~vec4<u32>(18013u, u_input.d, arg_1, 31630u), abs(vec4<u32>(u_input.d, 85512u, 15740u, u_input.d))) << (vec4<u32>(~(u_input.d & 21465u), arg_1, ~u_input.d, select(reverseBits(1u), u_input.d, any(vec2<bool>(false, true)))) % vec4<u32>(32u)));
    let var_2 = arg_0.e;
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1135f);
    var var_4 = -1i << (~reverseBits(_wgslsmith_div_u32(11548u ^ arg_1, ~arg_0.c.a)) % 32u);
    return !(var_2.b < ~_wgslsmith_mod_u32(~34597u, ~arg_1));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: u32, arg_3: vec3<u32>) -> vec3<u32> {
    var var_0 = Struct_2(select(select(!vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), vec4<bool>(select(true, arg_1.x, arg_1.x), arg_1.x || arg_1.x, func_3(Struct_3(vec3<i32>(1i, 28161i, u_input.a), global1[_wgslsmith_index_u32(arg_3.x, 20u)], Struct_1(0u, arg_2, global2[_wgslsmith_index_u32(arg_3.x, 19u)], vec3<i32>(arg_0.x, arg_0.x, 2147483647i)), vec4<f32>(-1535f, -842f, -153f, global2[_wgslsmith_index_u32(arg_3.x, 19u)]), Struct_1(20621u, 14286u, global2[_wgslsmith_index_u32(1u, 19u)], vec3<i32>(-2147483647i, u_input.c.x, -2147483647i))), arg_3.x, global1[_wgslsmith_index_u32(arg_3.x, 20u)], u_input.b.x), true), false), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(select(1718u, arg_2, true), 24355u), ~_wgslsmith_dot_vec3_u32(arg_3, arg_3)), 28u)], !any(!arg_1.xx)), global2[_wgslsmith_index_u32(abs(countOneBits(~(~4294967295u))), 19u)]);
    let var_1 = ~u_input.d;
    var_0 = Struct_2(!vec4<bool>(false, true, true, var_0.a.x), 1160f);
    let var_2 = Struct_3(vec3<i32>(~(~u_input.c.x), u_input.a, _wgslsmith_dot_vec4_i32(~(~vec4<i32>(arg_0.x, arg_0.x, u_input.a, -15253i)), arg_0)), firstLeadingBit(arg_0.wxx), Struct_1(var_1, ~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, var_1), 95847u, select(24485u, 53400u, false)), _wgslsmith_f_op_f32(max(-1000f, -431f)), max(select(vec3<i32>(arg_0.x, -2147483647i, arg_0.x), _wgslsmith_add_vec3_i32(global1[_wgslsmith_index_u32(var_1, 20u)], arg_0.zxy), select(vec3<bool>(true, var_0.a.x, true), var_0.a.yyy, false)), reverseBits(vec3<i32>(arg_0.x, -26282i, 0i)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-482f, global2[_wgslsmith_index_u32(50262u, 19u)])))), global2[_wgslsmith_index_u32(~1u ^ min(var_1, 4294967295u), 19u)], _wgslsmith_f_op_f32(-1733f + var_0.b), _wgslsmith_f_op_f32(select(var_0.b, _wgslsmith_f_op_f32(-var_0.b), !var_0.a.x)))), Struct_1(4294967295u, 3428u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_3.x, 19u)] * global2[_wgslsmith_index_u32(arg_2, 19u)]) + var_0.b), -311f, var_0.a.x)), vec3<i32>(u_input.b.x, u_input.c.x, arg_0.x)));
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(362f))));
    return select(vec3<u32>(_wgslsmith_clamp_u32(arg_3.x, u_input.d, ~(var_2.c.a >> (var_2.c.b % 32u))), ~73866u | (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 1u), vec2<u32>(arg_2, 1u)) ^ 63345u), _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.d, ~49723u), _wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, 5226u), firstTrailingBit(vec2<u32>(4294967295u, arg_3.x)), ~vec2<u32>(0u, u_input.d)))), arg_3, vec3<bool>(true, false, var_0.a.x));
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: vec3<f32>, arg_3: Struct_3) -> Struct_1 {
    global2 = array<f32, 19>();
    global2 = array<f32, 19>();
    var var_0 = ~(max(vec3<i32>(arg_3.e.d.x, 34688i ^ arg_3.c.d.x, _wgslsmith_add_i32(arg_3.b.x, arg_3.c.d.x)), vec3<i32>(reverseBits(-11650i), firstLeadingBit(u_input.c.x), -1i)) << (_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_0, 0u, u_input.d), vec3<u32>(select(4294967295u, 1u, true), func_2(u_input.c, vec3<bool>(false, arg_1.x, false), 1u, vec3<u32>(1u, u_input.d, u_input.d)).x, reverseBits(arg_3.c.b))) % vec3<u32>(32u)));
    var_0 = -_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.c.yww, abs(arg_3.a)), ~(vec3<i32>(55358i, 1i, arg_3.b.x) << (_wgslsmith_mult_vec3_u32(vec3<u32>(9658u, 1u, 50118u), vec3<u32>(1u, arg_0, 1u)) % vec3<u32>(32u))));
    let var_1 = -firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-1i, 20722i), i32(-1i) * -71944i, 1i, abs(u_input.c.x)), vec4<i32>(var_0.x, var_0.x, ~(-12802i), ~var_0.x), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-409i, var_0.x, arg_3.c.d.x), vec3<i32>(u_input.a, u_input.c.x, 39973i)), -arg_3.e.d.x, u_input.a, _wgslsmith_mult_i32(-25340i, u_input.c.x))));
    return arg_3.e;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: f32) -> vec3<i32> {
    global1 = array<vec3<i32>, 20>();
    global1 = array<vec3<i32>, 20>();
    var var_0 = func_4(_wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(57879u, arg_1.b, 1u), vec3<u32>(0u, arg_1.b, 4294967295u))), func_2(max(u_input.c, u_input.c), vec3<bool>(true, true, true), _wgslsmith_mult_u32(4294967295u, 0u), vec3<u32>(4294967295u, u_input.d, 0u))) & ~func_2(u_input.c, vec3<bool>(true, true, true), ~5596u, vec3<u32>(u_input.d, 2856u, u_input.d)).x, select(vec2<bool>(all(vec4<bool>(false, true, false, true)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), arg_1.a > ~u_input.d), (max(u_input.d, u_input.d) > 13071u) | false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(arg_2)), _wgslsmith_f_op_f32(arg_2 * arg_1.c), _wgslsmith_f_op_f32(-296f + -250f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-104f, -692f, -2015f) - vec3<f32>(arg_1.c, arg_2, global2[_wgslsmith_index_u32(34732u, 19u)])) + vec3<f32>(arg_1.c, global2[_wgslsmith_index_u32(4294967295u, 19u)], global2[_wgslsmith_index_u32(26199u, 19u)])))), Struct_3(-(global1[_wgslsmith_index_u32(u_input.d, 20u)] | ~global1[_wgslsmith_index_u32(4294967295u, 20u)]), vec3<i32>(arg_1.d.x ^ (-4573i << (1u % 32u)), min(reverseBits(u_input.a), -1i), (i32(-1i) * -10632i) << (firstTrailingBit(1u) % 32u)), arg_1, vec4<f32>(global2[_wgslsmith_index_u32(26019u, 19u)], arg_2, arg_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -403f), 100f)), arg_1));
    return vec3<i32>(arg_1.d.x, countOneBits(-25906i), max(_wgslsmith_dot_vec2_i32(vec2<i32>(~(-1i), reverseBits(-34841i)), _wgslsmith_mod_vec2_i32(-u_input.b.zz, _wgslsmith_mult_vec2_i32(vec2<i32>(25051i, -4937i), vec2<i32>(arg_1.d.x, 61136i)))), firstTrailingBit(~(~0i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    global0 = array<vec4<bool>, 28>();
    let var_1 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(30971u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.d, u_input.d, u_input.d), vec4<u32>(1u, u_input.d, u_input.d, 11178u)), ~54706u), ~(~(vec3<u32>(u_input.d, 0u, 14430u) ^ vec3<u32>(u_input.d, u_input.d, u_input.d)))), 24081u, global2[_wgslsmith_index_u32(~abs(abs(~u_input.d)), 19u)], func_1(~vec3<i32>(u_input.a, -u_input.a, firstLeadingBit(-1i)), Struct_1(4294967295u, 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 19u)] - global2[_wgslsmith_index_u32(u_input.d, 19u)])), reverseBits(vec3<i32>(0i, -2147483647i, -33284i) ^ vec3<i32>(u_input.c.x, u_input.b.x, -1i))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(13578u, 19u)], global2[_wgslsmith_index_u32(35220u, 19u)]), -327f))));
    var var_2 = global2[_wgslsmith_index_u32(35336u, 19u)];
    var var_3 = Struct_3(var_1.d, var_1.d, Struct_1(1u, u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(u_input.d, 19u)])) * _wgslsmith_f_op_f32(max(-161f, global2[_wgslsmith_index_u32(u_input.d, 19u)])))), var_1.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-936f, 498f, -461f, var_1.c))), vec4<f32>(353f, var_1.c, 1406f, global2[_wgslsmith_index_u32(4294967295u, 19u)])) + vec4<f32>(func_4(43698u, vec2<bool>(var_0, true), vec3<f32>(global2[_wgslsmith_index_u32(var_1.b, 19u)], global2[_wgslsmith_index_u32(70415u, 19u)], 248f), Struct_3(u_input.c.zyw, u_input.b, Struct_1(var_1.a, var_1.b, 928f, vec3<i32>(-1i, -27240i, 25391i)), vec4<f32>(-756f, var_1.c, var_1.c, -1000f), Struct_1(26602u, u_input.d, global2[_wgslsmith_index_u32(4294967295u, 19u)], u_input.b))).c, _wgslsmith_div_f32(-134f, -1000f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(43426u, 19u)]), global2[_wgslsmith_index_u32(~u_input.d, 19u)]))), var_1);
    var var_4 = -1378f;
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(472f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-2546f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(1u), _wgslsmith_f_op_f32(-var_3.d.x), var_3.c.a, _wgslsmith_f_op_f32(step(-759f, var_1.c)));
}

