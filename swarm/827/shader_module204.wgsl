struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_1,
    d: f32,
    e: i32,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec2<i32>, 8>;

var<private> global2: f32 = 1621f;

var<private> global3: array<Struct_2, 4>;

var<private> global4: array<f32, 6>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = select(vec3<bool>(all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), all(vec2<bool>(false, true)))), 2147483647i <= ~_wgslsmith_mult_i32(arg_0.a.x, 27692i), true & (218f > global0.x)), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), !vec3<bool>(any(vec3<bool>(true, true, true)), true, false), vec3<bool>(true, true, true)), ~_wgslsmith_mult_i32(-5052i, -u_input.b) > ~(i32(-1i) * -u_input.a));
    return arg_0.a;
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: u32, arg_3: vec4<bool>) -> Struct_4 {
    var var_0 = Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, -(~arg_1), _wgslsmith_mod_i32(-u_input.c, 8752i)), func_3(Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 40863i, u_input.c), vec3<i32>(arg_1, -1i, -50278i), vec3<i32>(arg_1, -2147483647i, arg_1))))));
    let var_1 = !arg_3.xzx;
    var var_2 = vec3<bool>(!any(select(var_1, arg_3.wyz, true)), var_1.x, false == !arg_3.x);
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1423f - _wgslsmith_f_op_f32(-global0.x)) - -664f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -276f)));
    let var_4 = Struct_1(vec3<i32>(max(-24527i, var_0.a.x) << (_wgslsmith_add_u32(~0u, arg_2 << (arg_2 % 32u)) % 32u), ~_wgslsmith_mult_i32(var_0.a.x, -1i) ^ abs(~(-31740i)), reverseBits(_wgslsmith_div_i32(-4743i, -2147483647i))));
    return Struct_4(vec3<i32>(-1i, countOneBits(_wgslsmith_clamp_i32(func_3(Struct_1(var_0.a)).x, 33663i, ~1i)), _wgslsmith_add_i32(0i, 1i & var_0.a.x)), global3[_wgslsmith_index_u32(0u, 4u)], Struct_1(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(var_4.a.x, arg_1, 0i), -var_4.a), ~firstTrailingBit(var_0.a))), -1000f, select(~var_0.a.x, 2147483647i, false) << (_wgslsmith_div_u32(_wgslsmith_add_u32(arg_2 >> (arg_2 % 32u), arg_2), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, arg_2, 17526u, arg_2), vec4<u32>(22540u, 6744u, arg_2, 1u))) % 32u));
}

fn func_1(arg_0: i32) -> i32 {
    global1 = array<vec2<i32>, 8>();
    var var_0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(~0u << (_wgslsmith_clamp_u32(4294967295u, 6191u, 1u) % 32u), 6u)], _wgslsmith_f_op_f32(f32(-1f) * -456f))) * 685f), u_input.a, ~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 92473u), vec2<u32>(4314u, 39301u)), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(38910u, 4294967295u))) >> ((select(~36427u, ~0u, true) << (countOneBits(1u) % 32u)) % 32u), !vec4<bool>(true, true, true, true | all(vec3<bool>(true, true, false))));
    global1 = array<vec2<i32>, 8>();
    let var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_2(-1141f, firstTrailingBit(var_0.b.a.a.x), ~36889u, select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), true)).d, _wgslsmith_div_f32(1000f, global4[_wgslsmith_index_u32(select(4294967295u, 35530u, false), 6u)]))), func_3(var_0.b.a).x, firstLeadingBit(26287u), select(vec4<bool>(true, true, true, true), vec4<bool>(false, select(true, true, true), any(vec2<bool>(false, true)), any(vec3<bool>(false, true, true))), true)).b;
    global1 = array<vec2<i32>, 8>();
    return _wgslsmith_div_i32(-_wgslsmith_mod_i32(1i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, 2147483647i, -46930i), var_1.a.a)), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(~(~var_0.a.xx), abs(vec2<i32>(var_0.c.a.x, var_1.a.a.x))), -reverseBits(_wgslsmith_sub_i32(38969i, var_1.a.a.x))));
}

fn func_4(arg_0: vec3<i32>) -> vec2<bool> {
    global2 = _wgslsmith_f_op_f32(-global0.x);
    let var_0 = 1u;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(773f, 1338f, global0.x, -280f))))));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(609f, 1365f, -3122f, global0.x))), vec4<f32>(global4[_wgslsmith_index_u32(select(var_0, ~21142u, true), 6u)], _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(trunc(780f))), _wgslsmith_f_op_f32(f32(-1f) * -235f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(~0u, 6u)]))));
    let var_2 = func_2(_wgslsmith_f_op_f32(-global0.x), u_input.a, 71977u << (var_0 % 32u), vec4<bool>(true, true, true, true)).b;
    return select(select(!select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, true), true), any(vec2<bool>(false, false))), !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, false)), !(!select(vec2<bool>(false, false), vec2<bool>(false, false), false))), vec2<bool>(true, true), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!vec2<bool>(true, any(vec3<bool>(true, false, true)) & true), vec2<bool>(true, true), !func_4(vec3<i32>(func_1(-7900i), _wgslsmith_sub_i32(u_input.c, u_input.c), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 44540i, u_input.b, 2147483647i), vec4<i32>(1i, 2147483647i, -10866i, u_input.b)))));
    var var_1 = func_2(global4[_wgslsmith_index_u32(~_wgslsmith_div_u32(1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(42395u, 104685u, 4294967295u, 41422u), vec4<u32>(0u, 4294967295u, 0u, 4294967295u))), 6u)], u_input.b ^ u_input.b, 4294967295u, !(!vec4<bool>(true, var_0.x, !var_0.x, var_0.x))).b;
    var_0 = select(select(vec2<bool>(_wgslsmith_f_op_f32(-1081f + global4[_wgslsmith_index_u32(1u, 6u)]) <= global0.x, true), vec2<bool>(false, var_0.x), !select(!vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, false), !vec2<bool>(false, var_0.x))), vec2<bool>(var_0.x, all(!select(vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(false, var_0.x, var_0.x, false), true))), u_input.c > -4701i);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(-1102f, u_input.a, 28684u, vec4<bool>(var_0.x, false, true, var_0.x)).b.b - -747f), -189f, true)) - 1099f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1217f))), 714f, any(vec3<bool>(var_1.b >= -486f, true, true && var_0.x)))));
    global0 = vec4<f32>(global0.x, global0.x, var_1.b, global4[_wgslsmith_index_u32(select(25231u, 16645u, var_0.x | !var_0.x), 6u)]);
    var var_3 = Struct_2(Struct_1(-_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(0i, u_input.b, var_1.a.a.x), vec3<i32>(-10549i, var_1.a.a.x, 2147483647i)), vec3<i32>(u_input.c, 7840i, -2147483647i))), var_1.b);
    var_3 = global3[_wgslsmith_index_u32(87187u, 4u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32((~(-12376i) ^ min(u_input.b, u_input.c)) ^ 13172i, var_1.a.a.x));
}

