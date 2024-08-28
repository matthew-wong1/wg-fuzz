struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 27>;

var<private> global1: bool;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: Struct_3) -> f32 {
    var var_0 = ~1i;
    var_0 = -_wgslsmith_div_i32(u_input.c, -2147483647i >> (0u % 32u)) << (u_input.e % 32u);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.zy * arg_1.yy)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(226f, arg_1.x) - vec2<f32>(1270f, arg_1.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.d.a.x, arg_2.d.a.x)))) * vec2<f32>(_wgslsmith_f_op_f32(-arg_2.d.a.x), arg_2.d.a.x)));
    global0 = array<vec3<u32>, 27>();
    var var_2 = arg_2.d.a.x;
    return _wgslsmith_f_op_f32(select(161f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(floor(486f))))), all(!arg_2.a)));
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: f32) -> u32 {
    global0 = array<vec3<u32>, 27>();
    var var_0 = arg_0;
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, -784f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2))), vec2<f32>(-492f, arg_2), true)), ~min(u_input.d, ~(-26744i)), true == !all(vec4<bool>(false, true, true, true))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true)));
    let var_2 = _wgslsmith_f_op_f32(func_3(min(countOneBits(~vec4<i32>(21363i, 14831i, 35750i, var_1.a.b)), select(~_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.a.b, u_input.c, -1i, -4558i), vec4<i32>(var_1.a.b, -27442i, u_input.c, var_1.a.b)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, -2147483647i, var_1.a.b, -1i), vec4<i32>(-37061i, u_input.c, 18540i, u_input.c) | vec4<i32>(-1i, -41315i, -58887i, u_input.d)), var_1.a.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-852f * -1397f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1.a.a.x)), arg_2))), Struct_3(vec3<bool>(any(!var_1.b), all(!vec3<bool>(true, var_1.b.x, var_1.a.c)), any(vec3<bool>(var_1.a.c, var_1.a.c, var_1.a.c))), i32(-1i) * -1i, vec3<bool>(false, any(select(var_1.b, var_1.b, var_1.b)), true), Struct_1(var_1.a.a, countOneBits(15778i), true))));
    var var_3 = reverseBits(_wgslsmith_div_vec3_i32(-min(vec3<i32>(-2147483647i, var_1.a.b, 2147483647i) >> (vec3<u32>(arg_1.x, 58974u, 4294967295u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(var_1.a.b, -42826i, 1i), vec3<i32>(0i, var_1.a.b, u_input.c))), vec3<i32>(1i, _wgslsmith_mod_i32(var_1.a.b, var_1.a.b) | abs(2147483647i), u_input.c)));
    return max(firstTrailingBit(_wgslsmith_add_u32(arg_0, abs(49072u))), 51124u);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: Struct_2, arg_3: i32) -> Struct_3 {
    let var_0 = ~(~(~(~vec4<i32>(-2147483647i, u_input.d, 2147483647i, u_input.c))) >> ((vec4<u32>(func_2(4294967295u, arg_1.b.yx, arg_1.a), 46615u, _wgslsmith_dot_vec2_u32(vec2<u32>(16701u, 0u), u_input.a.yx), abs(u_input.b.x)) << (firstTrailingBit(~u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u)));
    global1 = arg_0.x;
    global1 = arg_2.a.c;
    global0 = array<vec3<u32>, 27>();
    let var_1 = 1u;
    return Struct_3(vec3<bool>(all(!vec2<bool>(arg_2.a.c, arg_2.a.c)), any(!(!vec4<bool>(false, arg_2.a.c, true, arg_0.x))), true), u_input.c, !select(vec3<bool>(true, true, true), arg_2.b.xzw, true), Struct_1(arg_2.a.a, arg_3, !select(any(vec3<bool>(arg_2.b.x, arg_2.b.x, arg_2.a.c)), !arg_0.x, arg_2.b.x | true)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: i32) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.d.a.x), 486f, arg_1.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -234f) * -1737f)))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0.d.a), 1i, all(select(vec4<bool>(arg_1.c, arg_0.d.c, arg_1.c, false), select(vec4<bool>(false, arg_1.c, arg_0.d.c, true), vec4<bool>(false, false, true, arg_1.c), arg_1.c), !vec4<bool>(false, false, arg_0.a.x, true)))), vec4<bool>(!(!(1i > arg_1.b)), all(!func_1(vec4<bool>(false, false, false, arg_0.c.x), Struct_4(-626f, global0[_wgslsmith_index_u32(0u, 27u)]), Struct_2(arg_1, vec4<bool>(true, arg_1.c, arg_0.a.x, true)), u_input.d).c), arg_1.c, !arg_0.d.c));
    var var_2 = select(1i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(max(vec4<i32>(-9466i, arg_2, arg_0.b, 19627i), vec4<i32>(2147483647i, 0i, arg_0.d.b, 7258i)), ~vec4<i32>(1i, arg_1.b, arg_2, var_1.a.b)), max(-1i, 46698i)) << (u_input.b.x % 32u), false);
    var var_3 = !select(vec4<bool>(!all(arg_0.a), all(select(var_1.b, vec4<bool>(arg_0.c.x, var_1.a.c, arg_1.c, false), arg_0.c.x)), true, true), vec4<bool>(true || arg_1.c, 0u >= _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.e, u_input.e), u_input.a), arg_0.d.c, all(vec3<bool>(var_1.a.c, false, true))), arg_0.c.x);
    var var_4 = Struct_3(vec3<bool>(false, any(var_1.b.xyz), select(func_1(vec4<bool>(arg_0.d.c, true, arg_0.d.c, arg_1.c), Struct_4(arg_0.d.a.x, vec3<u32>(0u, u_input.a.x, 0u)), Struct_2(Struct_1(arg_1.a, 8259i, arg_1.c), var_1.b), arg_0.b).a.x, true, any(vec2<bool>(arg_0.c.x, false)))), countOneBits(arg_0.b), var_3.wyz, func_1(!select(var_1.b, !var_1.b, var_1.b), Struct_4(-1000f, ~(~u_input.a.wzz)), Struct_2(Struct_1(arg_1.a, select(arg_2, arg_1.b, arg_0.a.x), false), !vec4<bool>(var_1.b.x, true, arg_0.a.x, true)), arg_2).d);
    return vec4<i32>(abs(var_4.b), firstTrailingBit(_wgslsmith_mult_i32(var_4.d.b, arg_0.b)), -_wgslsmith_clamp_i32(-31635i, arg_2, ~2147483647i), ~(-1i) & ~(-2000i >> (u_input.b.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_clamp_vec4_i32((vec4<i32>(91939i, -2114i, 0i, -2147483647i) | abs(vec4<i32>(u_input.c, -13942i, -1i, 1i))) ^ abs(~vec4<i32>(u_input.c, -40383i, u_input.c, u_input.c)), _wgslsmith_sub_vec4_i32(countOneBits(-vec4<i32>(-30420i, 37586i, u_input.d, u_input.d)), func_4(func_1(vec4<bool>(false, true, true, false), Struct_4(-2176f, vec3<u32>(u_input.e, 0u, 30849u)), Struct_2(Struct_1(vec2<f32>(1548f, -1516f), u_input.d, false), vec4<bool>(false, true, false, true)), u_input.c), func_1(vec4<bool>(true, true, false, true), Struct_4(315f, vec3<u32>(u_input.e, u_input.b.x, 1u)), Struct_2(Struct_1(vec2<f32>(998f, 1000f), -10889i, true), vec4<bool>(true, true, true, false)), 2147483647i).d, u_input.c)), _wgslsmith_div_vec4_i32(vec4<i32>(-30724i, max(2147483647i, u_input.d), 47254i << (u_input.b.x % 32u), ~(-1i)), -vec4<i32>(u_input.d, u_input.d, 1164i, u_input.c))));
    var_0 = vec4<i32>(func_1(vec4<bool>(true, true, true, true || (58775i >= var_0.x)), Struct_4(_wgslsmith_f_op_f32(1000f + 1225f), ~(~global0[_wgslsmith_index_u32(4294967295u, 27u)])), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1006f, -1426f) - vec2<f32>(-1076f, -861f)), var_0.x, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), ~(-2147483647i)).d.b, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(var_0.zx, var_0.xw) ^ _wgslsmith_sub_vec2_i32(var_0.zx, vec2<i32>(12698i, 0i)), vec2<i32>(-1i, 2147483647i)), _wgslsmith_add_i32(select(var_0.x | _wgslsmith_sub_i32(u_input.d, var_0.x), var_0.x, true), ~32460i), var_0.x);
    global0 = array<vec3<u32>, 27>();
    let var_1 = true;
    let var_2 = -_wgslsmith_mod_vec4_i32(abs(-(~vec4<i32>(var_0.x, var_0.x, var_0.x, u_input.d))), min(vec4<i32>(_wgslsmith_mult_i32(var_0.x, -19485i), min(u_input.d, -62596i), u_input.c, select(u_input.d, 34811i, true)), -abs(vec4<i32>(2147483647i, 0i, -1i, var_0.x))));
    let var_3 = Struct_2(func_1(select(!vec4<bool>(var_1, true, false, false), vec4<bool>(func_1(vec4<bool>(true, var_1, var_1, false), Struct_4(262f, vec3<u32>(4294967295u, u_input.a.x, u_input.e)), Struct_2(Struct_1(vec2<f32>(-733f, 195f), -24235i, var_1), vec4<bool>(true, var_1, var_1, var_1)), var_2.x).c.x, !var_1, all(vec2<bool>(true, false)), true), true), Struct_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1430f), -412f, true)), min(vec3<u32>(u_input.b.x, 1u, u_input.e), select(vec3<u32>(u_input.e, u_input.b.x, 0u), vec3<u32>(u_input.b.x, u_input.a.x, u_input.b.x), vec3<bool>(var_1, false, var_1)))), Struct_2(func_1(!vec4<bool>(var_1, false, false, var_1), Struct_4(215f, u_input.b), Struct_2(Struct_1(vec2<f32>(-1312f, 172f), var_2.x, var_1), vec4<bool>(false, true, var_1, var_1)), var_2.x).d, vec4<bool>(true, true, false, var_1)), _wgslsmith_sub_i32(27693i, var_0.x)).d, !select(vec4<bool>(all(vec2<bool>(true, var_1)), false, true, var_1), select(vec4<bool>(var_1, var_1, var_1, true), !vec4<bool>(true, true, var_1, var_1), var_1), vec4<bool>(select(var_1, var_1, true), var_1, false, !var_1)));
    var_0 = ~select(-(var_2 << (u_input.a % vec4<u32>(32u))), ~(var_2 ^ var_2), true);
    let var_4 = var_3;
    let var_5 = Struct_2(var_3.a, vec4<bool>(var_4.b.x, false | (false & (var_3.a.c == false)), var_1, true));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

