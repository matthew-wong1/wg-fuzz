struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec4<bool>, 16>;

var<private> global2: array<vec2<bool>, 28> = array<vec2<bool>, 28>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global3: vec3<f32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<u32> {
    var var_0 = max(vec4<i32>(-max(u_input.d.x, u_input.b), u_input.b, _wgslsmith_div_i32(~(-2147483647i), abs(u_input.d.x)), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-50999i, -14798i), u_input.d, u_input.d), u_input.d)), vec4<i32>(35350i, 0i, u_input.d.x, -reverseBits(12803i))) ^ vec4<i32>(~_wgslsmith_add_i32(~u_input.d.x, u_input.d.x), -min(min(u_input.b, u_input.b), i32(-1i) * -1i), firstLeadingBit(2147483647i), -1i);
    let var_1 = Struct_3(Struct_1(global3.x), Struct_1(_wgslsmith_div_f32(194f, global3.x)));
    global0 = _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(~(~(vec2<u32>(u_input.e, global0.x) ^ vec2<u32>(0u, u_input.e))), vec2<u32>(4294967295u, max(global0.x, u_input.a)) << (firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.e), vec2<u32>(4294967295u, u_input.a))) % vec2<u32>(32u))), ~min(abs(vec2<u32>(global0.x, 0u)), reverseBits(vec2<u32>(0u, 4294967295u))) >> (vec2<u32>(u_input.c, ~max(global0.x, global0.x)) % vec2<u32>(32u)));
    global2 = array<vec2<bool>, 28>();
    global0 = ~(_wgslsmith_mult_vec2_u32(~vec2<u32>(23935u, 4294967295u), abs(vec2<u32>(4294967295u, u_input.e) << (vec2<u32>(u_input.a, 31814u) % vec2<u32>(32u)))) >> (select(vec2<u32>(~global0.x, ~44735u), reverseBits(vec2<u32>(1u, 1u)), global3.x >= -345f) % vec2<u32>(32u)));
    return _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a | ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, global0.x), vec2<u32>(1u, global0.x)), 41860u), vec2<u32>(min(~92042u, _wgslsmith_mult_u32(1u, u_input.c)), u_input.c) ^ max(vec2<u32>(1u, 1u) << (select(vec2<u32>(9759u, global0.x), vec2<u32>(1u, 91667u), global2[_wgslsmith_index_u32(u_input.e, 28u)]) % vec2<u32>(32u)), ~vec2<u32>(u_input.a, 26991u)));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: vec2<f32>) -> Struct_3 {
    var var_0 = Struct_4(false);
    let var_1 = Struct_2(~_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.d.x, u_input.d.x, u_input.b), reverseBits(vec3<i32>(0i, -1i, u_input.b))), vec3<i32>(u_input.b, 20316i, u_input.b) & firstLeadingBit(vec3<i32>(-39947i, 36136i, 2147483647i))));
    global0 = ~(~_wgslsmith_sub_vec2_u32(func_3(), vec2<u32>(u_input.c, global0.x)));
    let var_2 = ~vec3<i32>(5294i, u_input.b, 25954i);
    var_0 = Struct_4(true);
    return arg_1;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: bool, arg_3: vec2<i32>) -> vec4<u32> {
    let var_0 = arg_0.x;
    var var_1 = Struct_5(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(max(-1000f, global3.x))) + _wgslsmith_f_op_f32(-var_0)), -1000f)), arg_3.x);
    let var_2 = Struct_5(-2243f, -2147483647i);
    let var_3 = any(select(select(vec3<bool>(arg_2, !arg_2, all(global2[_wgslsmith_index_u32(u_input.a, 28u)])), vec3<bool>(true, true, true), !(!vec3<bool>(arg_2, arg_2, true))), !(!vec3<bool>(true, arg_2, arg_2)), select(vec3<bool>(!arg_2, 531f != arg_0.x, true), select(!vec3<bool>(arg_2, true, arg_2), vec3<bool>(true, true, true), any(vec3<bool>(true, arg_2, arg_2))), select(!vec3<bool>(arg_2, true, arg_2), !vec3<bool>(true, arg_2, false), !arg_2))));
    global1 = array<vec4<bool>, 16>();
    return min(vec4<u32>(u_input.e ^ _wgslsmith_div_u32(~15013u, 73696u), ~(~1u) >> ((31046u >> ((u_input.c ^ 1u) % 32u)) % 32u), ~((global0.x >> (87778u % 32u)) ^ 31247u), ~(~reverseBits(global0.x))), _wgslsmith_div_vec4_u32(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, global0.x, 1u, 23836u), vec4<u32>(global0.x, 75126u, 1u, 38925u))), vec4<u32>(~(u_input.e & global0.x), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global0.x, u_input.e, 64977u), vec3<u32>(0u, global0.x, u_input.e)), vec3<u32>(global0.x, 51343u, 4294967295u)), reverseBits(reverseBits(global0.x)), global0.x)));
}

fn func_1() -> Struct_4 {
    var var_0 = vec3<i32>(_wgslsmith_mult_i32(-1i, min(_wgslsmith_sub_i32(13209i, u_input.d.x), _wgslsmith_add_i32(u_input.b, 0i))), u_input.d.x, firstTrailingBit(min(u_input.d.x, 29429i)));
    global0 = vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, global0.x, ~99797u, 1u) >> (_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 1u, 42247u, 45988u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.e, 0u, global0.x, u_input.e), vec4<u32>(global0.x, global0.x, global0.x, 0u))) % vec4<u32>(32u)), func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 966f, global3.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1242f, global3.x, 523f) * vec3<f32>(1016f, global3.x, 1000f))), func_2(firstLeadingBit(vec2<u32>(0u, global0.x)), Struct_3(Struct_1(-1524f), Struct_1(global3.x)), vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(-global3.zy)), any(vec3<bool>(true, false, true)), var_0.xx)), min(abs(32740u), 13770u));
    let var_1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3.x)) * -123f))), -388f, _wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(round(-2392f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-437f, global3.x, global3.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global3.x, global3.x) * vec3<f32>(-1128f, global3.x, global3.x))) * vec3<f32>(906f, global3.x, _wgslsmith_f_op_f32(-global3.x))))));
    var var_2 = Struct_5(1f, i32(-1i) * -_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, var_0.x, -41408i, u_input.d.x), vec4<i32>(-8911i, 25410i, 16731i, u_input.b)), vec4<i32>(1566i, 1948i, -13660i, var_0.x)));
    var var_3 = _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a + var_2.a) + -707f))))));
    return Struct_4(false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = any(select(!select(select(vec3<bool>(false, var_0.a, var_0.a), vec3<bool>(false, false, false), false), !vec3<bool>(true, false, var_0.a), var_0.a && var_0.a), !vec3<bool>(func_1().a, any(vec2<bool>(var_0.a, var_0.a)), var_0.a), !(!vec3<bool>(false, var_0.a, true))));
    var var_2 = Struct_2(select(max(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(6396i, -2147483647i, 0i), vec3<i32>(-3453i, 2147483647i, u_input.b)), _wgslsmith_clamp_vec3_i32(vec3<i32>(10692i, 5181i, 19496i), vec3<i32>(-8804i, 22102i, u_input.b), vec3<i32>(u_input.b, -1i, 2147483647i)), ~vec3<i32>(u_input.b, 0i, 0i)), vec3<i32>(-5138i, u_input.d.x, countOneBits(u_input.b))), vec3<i32>(-1i, 1i, 2147483647i | (u_input.d.x << (4294967295u % 32u))), vec3<bool>(all(!vec2<bool>(var_0.a, var_1)), true, true)));
    global0 = vec2<u32>(abs(~_wgslsmith_mult_u32(firstLeadingBit(u_input.c), ~global0.x)), _wgslsmith_add_u32(func_4(vec3<f32>(_wgslsmith_f_op_f32(global3.x - global3.x), global3.x, _wgslsmith_f_op_f32(global3.x + global3.x)), Struct_3(Struct_1(global3.x), func_2(vec2<u32>(1u, global0.x), Struct_3(Struct_1(401f), Struct_1(global3.x)), vec3<bool>(false, false, true), global3.yx).b), var_0.a, _wgslsmith_mod_vec2_i32(u_input.d, vec2<i32>(u_input.d.x, var_2.a.x)) & vec2<i32>(var_2.a.x, 28644i)).x, ~97655u));
    let var_3 = ~vec4<u32>(min(~1u, ~firstTrailingBit(0u)), u_input.e, _wgslsmith_dot_vec4_u32(~func_4(vec3<f32>(474f, 125f, 1382f), Struct_3(Struct_1(1238f), Struct_1(2297f)), true, u_input.d), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, 25726u, u_input.c, global0.x), vec4<u32>(global0.x, global0.x, 48585u, u_input.e))), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1261f, global3.x, global3.x) - vec3<f32>(652f, global3.x, global3.x))), Struct_3(Struct_1(global3.x), Struct_1(620f)), true, select(vec2<i32>(1i, -1i), max(var_2.a.xy, var_2.a.zz), global2[_wgslsmith_index_u32(~u_input.a, 28u)])).x);
    let var_4 = var_2.a;
    global1 = array<vec4<bool>, 16>();
    let var_5 = 2147483647i;
    var var_6 = func_2((~firstLeadingBit(vec2<u32>(var_3.x, 4294967295u)) << (_wgslsmith_clamp_vec2_u32(~var_3.yx, func_3(), ~var_3.xz) % vec2<u32>(32u))) >> (func_3() % vec2<u32>(32u)), Struct_3(func_2(max(firstLeadingBit(vec2<u32>(var_3.x, global0.x)), _wgslsmith_div_vec2_u32(vec2<u32>(global0.x, u_input.c), var_3.yz)), func_2(~var_3.zz, func_2(var_3.xw, Struct_3(Struct_1(global3.x), Struct_1(-1749f)), vec3<bool>(var_1, false, true), vec2<f32>(1836f, -2274f)), select(vec3<bool>(var_1, var_1, false), vec3<bool>(var_1, true, var_1), vec3<bool>(false, var_1, var_0.a)), _wgslsmith_f_op_vec2_f32(global3.yy - vec2<f32>(-128f, global3.x))), vec3<bool>(var_1, true, true), _wgslsmith_f_op_vec2_f32(global3.yx + _wgslsmith_f_op_vec2_f32(global3.yy + global3.zx))).b, func_2(~var_3.wz, Struct_3(Struct_1(global3.x), Struct_1(global3.x)), vec3<bool>(true, false, var_0.a | var_0.a), vec2<f32>(_wgslsmith_f_op_f32(min(global3.x, global3.x)), _wgslsmith_f_op_f32(-global3.x))).a), !vec3<bool>(func_1().a, var_1, (var_0.a || false) && var_1), _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, 2141f) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1141f, -292f) + global3.zx), vec2<f32>(_wgslsmith_f_op_f32(-global3.x), -1419f))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~(vec4<u32>(4294967295u, 4294967295u, global0.x, 28820u) & vec4<u32>(0u, 28923u, 1u, u_input.e)))), u_input.b, abs(firstTrailingBit(vec4<i32>(u_input.d.x, u_input.b, u_input.d.x, var_2.a.x) >> (var_3 % vec4<u32>(32u)))));
}

