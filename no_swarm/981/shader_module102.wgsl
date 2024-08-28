struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: i32,
    d: i32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: Struct_3,
    d: vec3<i32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: Struct_3,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(-783f, 1320f, 803f, 828f));

var<private> global2: array<f32, 13>;

var<private> global3: vec2<i32>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_mod_vec4_u32((countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.c.b.d, 3557u, u_input.c.x, u_input.c.x), vec4<u32>(global0.b.d, u_input.c.x, 1u, 1u))) ^ firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 68533u, global0.b.d, global0.c.b.d), vec4<u32>(1u, 56809u, u_input.c.x, global0.c.b.d)))) >> (firstLeadingBit(~(vec4<u32>(1u, 77352u, 46198u, u_input.c.x) << (vec4<u32>(4294967295u, 25813u, 47160u, u_input.c.x) % vec4<u32>(32u)))) % vec4<u32>(32u)), vec4<u32>(global0.c.b.d, _wgslsmith_dot_vec2_u32(~vec2<u32>(global0.c.b.d, 4294967295u) ^ _wgslsmith_add_vec2_u32(u_input.c.xx, u_input.c.xz), vec2<u32>(u_input.c.x, ~u_input.c.x)), u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, _wgslsmith_div_u32(0u, 38811u), ~74206u, global0.c.b.d), firstLeadingBit(vec4<u32>(1130u, u_input.c.x, 15424u, 27015u) ^ vec4<u32>(0u, 1u, global0.b.d, global0.b.d)))));
    let var_1 = Struct_5(_wgslsmith_f_op_f32(-global1.a.x), Struct_2(_wgslsmith_f_op_f32(round(global0.a)), !global0.b.b, !global0.b.b.x, ~(~(~var_0.x))), Struct_3(!global0.d.zz, Struct_2(-717f, global0.d.zx, false, abs(var_0.x)), 20553i, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, -1i, 1i, -1i), vec4<i32>(global0.c.c, global0.c.c, u_input.b, global3.x)), global0.c.d, ~global3.x), ~(vec3<i32>(u_input.b, 0i, global3.x) << (var_0.ywx % vec3<u32>(32u))))), vec4<bool>(!(688f == global1.a.x), true, all(vec3<bool>(global0.c.a.x, true, global0.b.c)), false));
    let var_2 = select(!select(global0.d, !var_1.d, _wgslsmith_mult_u32(var_0.x, var_0.x) <= var_1.c.b.d), select(!vec4<bool>(global0.c.a.x, global1.a.x == global2[_wgslsmith_index_u32(var_1.b.d, 13u)], true, true), vec4<bool>(true, (global3.x > global3.x) | !global0.d.x, true, abs(global3.x) < max(u_input.b, 10878i)), !var_1.d), any(var_1.d.zww));
    let var_3 = firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -(vec4<i32>(var_1.c.d, -2147483647i, 0i, 14282i) | vec4<i32>(u_input.b, global0.c.d, 27309i, global3.x)), vec4<i32>(-_wgslsmith_div_i32(14690i, u_input.b), countOneBits(-2147483647i), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(2147483647i, 21853i, 13886i, 0i)), vec4<i32>(u_input.b, global0.c.d, -1i, 22930i)), ~global0.c.d)));
    let var_4 = vec4<bool>(!any(vec4<bool>(true, select(true, var_1.b.c, global0.b.b.x), all(var_1.d), global0.c.b.b.x && var_2.x)), all(vec4<bool>(all(vec2<bool>(global0.c.a.x, var_2.x)), !global0.d.x, ~71887u != (var_0.x & global0.b.d), var_2.x)), (~(var_1.c.d | var_1.c.d) < abs(1i)) & (!global0.b.c && global0.b.b.x), true);
    return min(_wgslsmith_dot_vec4_u32(vec4<u32>(min(u_input.c.x, 1u), 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(1u, var_1.b.d)), ~36971u), select(vec4<u32>(var_1.b.d, 4294967295u, u_input.c.x, global0.c.b.d) & vec4<u32>(var_0.x, 4294967295u, var_1.c.b.d, 19782u), reverseBits(vec4<u32>(var_0.x, 4294967295u, 0u, global0.c.b.d)), all(vec2<bool>(var_2.x, var_4.x)))) << (u_input.c.x % 32u), var_0.x);
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_4(~_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(global0.b.d, 22020u, 110010u), u_input.c.x, global0.c.b.d, 15354u), ~vec4<u32>(u_input.c.x, 13182u, u_input.c.x, 37895u)), vec4<u32>(min(func_3(), firstLeadingBit(20597u)), u_input.c.x, u_input.c.x, (u_input.c.x | 0u) >> (32808u % 32u)) << (vec4<u32>(52096u, u_input.c.x | ~u_input.c.x, ~global0.c.b.d, u_input.c.x) % vec4<u32>(32u)), Struct_3(vec2<bool>(true && any(vec3<bool>(global0.b.b.x, global0.d.x, global0.d.x)), true), global0.b, ~_wgslsmith_add_i32(4137i, ~(-37550i)), -14380i), _wgslsmith_mult_vec3_i32(~countOneBits(vec3<i32>(u_input.b, u_input.b, 25978i)), _wgslsmith_mult_vec3_i32(min(-vec3<i32>(-17810i, 2147483647i, -2147483647i), ~vec3<i32>(u_input.a, global0.c.c, u_input.a)), vec3<i32>(i32(-1i) * -54342i, u_input.b << (u_input.c.x % 32u), max(-11384i, u_input.a)))));
    global1 = Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-611f, 252f)), _wgslsmith_f_op_f32(690f - global2[_wgslsmith_index_u32(11788u, 13u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.c.b.a, 756f)) - 1912f)), global1.a.x, var_0.c.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) + global0.a) * var_0.c.b.a)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(global1.a))), _wgslsmith_div_vec4_f32(vec4<f32>(global1.a.x, var_0.c.b.a, 753f, -439f), _wgslsmith_div_vec4_f32(vec4<f32>(global0.b.a, global2[_wgslsmith_index_u32(37350u, 13u)], -304f, global0.a), vec4<f32>(-361f, global1.a.x, global0.a, global0.b.a)))))));
    return Struct_4(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a.x, 1u, u_input.c.x, var_0.c.b.d), vec4<u32>(13528u, 1u, global0.c.b.d, 0u))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.d, 77280u, var_0.b.x), u_input.c), firstLeadingBit(global0.b.d), global0.c.b.d, u_input.c.x)), (~vec4<u32>(var_0.c.b.d, global0.b.d, 0u, 58246u) | reverseBits(var_0.a)) & var_0.b), var_0.b, global0.c, var_0.d);
}

fn func_4(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: Struct_4) -> bool {
    global2 = array<f32, 13>();
    global0 = Struct_5(-1134f, Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -715f), _wgslsmith_f_op_f32(2945f * arg_2.c.b.a))), arg_0.c.b.a), arg_2.c.b.b, arg_0.c.d <= ~abs(21094i), 26665u), Struct_3(global0.b.b, global0.b, arg_0.d.x, arg_2.d.x), vec4<bool>(false, true, arg_0.c.b.c, arg_1.x));
    global0 = Struct_5(global1.a.x, Struct_2(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_2.c.b.d, 13u)] + _wgslsmith_f_op_f32(-1f)), arg_2.c.a, true, 5243u), Struct_3(select(arg_2.c.a, vec2<bool>(arg_0.c.a.x, arg_0.c.a.x), !(!arg_0.c.a)), Struct_2(global1.a.x, !(!vec2<bool>(arg_0.c.b.b.x, arg_1.x)), !arg_2.c.a.x, func_3()), _wgslsmith_div_i32(-2147483647i, global0.c.d), ~(-(global3.x ^ arg_2.c.c))), global0.d);
    global2 = array<f32, 13>();
    global2 = array<f32, 13>();
    return true;
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    global1 = Struct_1(global1.a);
    var var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(38099u, _wgslsmith_add_u32(firstLeadingBit(global0.c.b.d), 1u) ^ _wgslsmith_add_u32(_wgslsmith_mod_u32(6594u, u_input.c.x), _wgslsmith_add_u32(0u, 48979u)), 43206u >> ((0u & ~global0.b.d) % 32u), global0.b.d), ~(~(~(vec4<u32>(u_input.c.x, 66206u, u_input.c.x, global0.b.d) & vec4<u32>(global0.c.b.d, u_input.c.x, global0.c.b.d, u_input.c.x)))));
    var var_1 = vec4<bool>(true, !select(func_4(func_2(), vec3<bool>(true, global0.c.b.b.x, global0.c.b.b.x), func_2()), any(select(global0.d.wwy, global0.d.yyy, false)), global0.c.a.x), true, true);
    var var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(48059u, u_input.c.x), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(countOneBits(var_0.xw), abs(abs(vec2<u32>(global0.c.b.d, 4294967295u)))), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(40460u, 40556u), vec2<u32>(0u, 0u))), vec2<u32>(~u_input.c.x, ~3793u))));
    var_0 = reverseBits(select(max(~vec4<u32>(65313u, 0u, global0.c.b.d, 1u), vec4<u32>(abs(global0.b.d), global0.c.b.d >> (1u % 32u), 9807u, _wgslsmith_sub_u32(0u, global0.c.b.d))), countOneBits(select(~vec4<u32>(var_0.x, u_input.c.x, 105119u, global0.b.d), min(vec4<u32>(0u, 16091u, global0.b.d, global0.c.b.d), vec4<u32>(u_input.c.x, 1u, 1u, var_0.x)), vec4<bool>(var_1.x, false, false, true))), select(!select(global0.d, vec4<bool>(global0.d.x, true, global0.c.b.c, true), vec4<bool>(var_1.x, false, global0.b.b.x, global0.c.b.b.x)), global0.d, false)));
    return Struct_2(arg_0.a.x, vec2<bool>(true, false), var_1.x, 33407u);
}

fn func_5(arg_0: Struct_5, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<u32>) -> bool {
    var var_0 = func_2();
    var var_1 = var_0.c;
    let var_2 = reverseBits(~arg_0.c.c);
    let var_3 = -1340f;
    var var_4 = var_1.a.x;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !any(vec3<bool>(false, !global0.b.b.x || global0.d.x, 1i <= abs(global3.x)));
    var var_1 = select(!select(select(global0.d, global0.d, !var_0), vec4<bool>(var_0, !var_0, global0.c.b.c, true), func_5(Struct_5(-494f, Struct_2(global1.a.x, global0.d.xx, false, global0.b.d), Struct_3(global0.d.wx, global0.c.b, u_input.b, global3.x), vec4<bool>(true, var_0, false, false)), func_1(Struct_1(vec4<f32>(global2[_wgslsmith_index_u32(205u, 13u)], global1.a.x, -261f, global1.a.x))), Struct_1(vec4<f32>(-253f, global1.a.x, global2[_wgslsmith_index_u32(global0.c.b.d, 13u)], -205f)), _wgslsmith_clamp_vec3_u32(vec3<u32>(global0.b.d, 4294967295u, 54585u), u_input.c, u_input.c))), !select(vec4<bool>(!global0.c.a.x, global0.d.x, var_0, false), global0.d, true), false);
    var var_2 = 0u;
    var var_3 = !(!select(!select(global0.d.wzw, vec3<bool>(false, false, global0.c.a.x), var_1.wyy), var_1.xzy, all(select(vec3<bool>(global0.b.c, false, global0.c.a.x), var_1.wyy, global0.d.xyx))));
    var var_4 = vec3<bool>(all(select(!vec2<bool>(true, var_3.x), !vec2<bool>(global0.b.b.x, false), func_2().c.a)), var_0, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.c.x, 13u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x - -291f))) != _wgslsmith_f_op_f32(-global1.a.x));
    var var_5 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-202f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.b.a)))), func_1(Struct_1(global1.a)), func_2().c, !global0.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(51887u, ~_wgslsmith_sub_u32(u_input.c.x >> (var_5.c.b.d % 32u), global0.c.b.d ^ 0u), var_5.c.b.d), -(~_wgslsmith_sub_vec3_i32(-vec3<i32>(global3.x, global3.x, 2147483647i), -vec3<i32>(-16486i, global3.x, -2147483647i))), vec3<i32>(_wgslsmith_clamp_i32(1i, -10142i, 38983i), 0i, _wgslsmith_add_i32(_wgslsmith_mult_i32(abs(global0.c.d), abs(1i)), var_5.c.c)), u_input.b >> (countOneBits(9929u) % 32u));
}

