struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<bool>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: bool,
    d: vec3<u32>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec2<i32>, arg_3: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-266f, 1054f, 250f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1023f, 881f, -568f)), select(vec3<bool>(true, true, false), vec3<bool>(arg_3.c, true, arg_3.c), vec3<bool>(arg_3.b.d, true, arg_3.c)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(119f, 1112f, -3083f), vec3<f32>(-584f, -1177f, -1625f)))))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-502f, 439f, -1041f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(897f, -1000f, 139f)))), false | !arg_3.b.d)))));
    global0 = array<i32, 1>();
    global0 = array<i32, 1>();
    global0 = array<i32, 1>();
    global0 = array<i32, 1>();
    return all(!select(vec4<bool>(true, any(vec3<bool>(arg_3.c, false, arg_3.b.d)), all(vec4<bool>(arg_3.a.c.x, arg_3.c, arg_3.b.c.x, true)), true), vec4<bool>(!arg_3.a.d, true, any(vec3<bool>(arg_3.a.c.x, false, arg_3.c)), arg_3.a.c.x), !select(vec4<bool>(arg_3.a.c.x, arg_3.a.c.x, arg_3.a.d, false), vec4<bool>(true, arg_3.c, true, arg_3.c), arg_3.c)));
}

fn func_2(arg_0: vec2<bool>, arg_1: bool, arg_2: vec4<u32>) -> Struct_1 {
    global0 = array<i32, 1>();
    global0 = array<i32, 1>();
    global0 = array<i32, 1>();
    let var_0 = -(vec2<i32>(firstTrailingBit(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(27191u, u_input.a), 1u)]), firstTrailingBit(u_input.c) << (arg_2.x % 32u)) ^ (-(vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(arg_2.x, 1u)]) >> (arg_2.zy % vec2<u32>(32u))) >> (~(vec2<u32>(8702u, arg_2.x) << (arg_2.xx % vec2<u32>(32u))) % vec2<u32>(32u))));
    global0 = array<i32, 1>();
    return Struct_1(~(~select(vec2<u32>(u_input.a, arg_2.x), ~arg_2.wx, any(vec3<bool>(arg_1, arg_1, arg_0.x)))), _wgslsmith_mult_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(37520u, 71136u, 43355u), vec3<u32>(17217u, arg_2.x, 0u)), countOneBits(77322u)), vec2<u32>(0u, 29494u << (arg_2.x % 32u))), select(select(arg_0, arg_0, arg_0.x), vec2<bool>(arg_1, (u_input.a > 0u) || func_3(global0[_wgslsmith_index_u32(27996u, 1u)], 20188u, vec2<i32>(u_input.c, 2147483647i), Struct_2(Struct_1(vec2<u32>(42854u, u_input.b), arg_2.zw, vec2<bool>(arg_1, true), arg_0.x, -7i), Struct_1(vec2<u32>(arg_2.x, arg_2.x), arg_2.zy, arg_0, arg_1, 22297i), false))), !(!(!arg_0))), arg_1, -global0[_wgslsmith_index_u32(firstLeadingBit(arg_2.x), 1u)]);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: u32, arg_3: bool) -> i32 {
    var var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(abs(global0[_wgslsmith_index_u32(abs(4294967295u), 1u)]), countOneBits(-65768i)), _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(global0[_wgslsmith_index_u32(arg_2, 1u)], u_input.c)), ~vec2<i32>(u_input.c, global0[_wgslsmith_index_u32(arg_2, 1u)])) >> (vec2<u32>(firstTrailingBit(3140u), func_2(vec2<bool>(false, arg_0.c.x), arg_3, vec4<u32>(4294967295u, 54484u, 1u, 4294967295u)).a.x) % vec2<u32>(32u)), ~countOneBits(select(vec2<i32>(global0[_wgslsmith_index_u32(arg_2, 1u)], 9289i), vec2<i32>(arg_0.e, 59435i), false))), -_wgslsmith_add_vec2_i32(vec2<i32>(1i, ~2147483647i), _wgslsmith_add_vec2_i32(-vec2<i32>(10555i, u_input.c), firstTrailingBit(vec2<i32>(4556i, 2147483647i)))));
    var var_1 = arg_0.e;
    var var_2 = func_2(func_2(select(vec2<bool>(false, u_input.b < 1u), select(vec2<bool>(arg_3, true), !arg_0.c, select(arg_0.c, arg_0.c, arg_0.c)), !select(vec2<bool>(true, arg_0.d), arg_0.c, arg_0.c)), func_3(-countOneBits(-1i), max(4294967295u, 30237u), _wgslsmith_mod_vec2_i32(vec2<i32>(-22746i, 0i), ~vec2<i32>(u_input.c, 24501i)), Struct_2(arg_0, arg_0, !arg_0.c.x)), ~(~reverseBits(vec4<u32>(0u, 31394u, u_input.b, arg_0.a.x)))).c, !arg_0.c.x, vec4<u32>(max(1u, arg_0.a.x & arg_2) ^ u_input.a, ~_wgslsmith_add_u32(_wgslsmith_sub_u32(1u, u_input.b), abs(u_input.a)), u_input.b, arg_0.b.x)).c;
    let var_3 = Struct_4(arg_0.c);
    var var_4 = Struct_3(arg_1.wz, countOneBits(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, global0[_wgslsmith_index_u32(10636u, 1u)], 20351i, 1i), vec4<i32>(15839i, -33253i, global0[_wgslsmith_index_u32(u_input.b, 1u)], 0i), false), vec4<i32>(_wgslsmith_mult_i32(1i, global0[_wgslsmith_index_u32(arg_0.b.x, 1u)]), -27829i, select(u_input.c, var_0.x, false), ~(-8160i)))), var_3.a.x, _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(arg_2, u_input.b, 61193u)), max(select(vec3<u32>(1u, arg_0.b.x, arg_2), vec3<u32>(1u, 86635u, 10307u), vec3<bool>(true, arg_0.c.x, true)), ~vec3<u32>(54124u, 4294967295u, arg_0.a.x))), countOneBits(_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(0u, u_input.a, arg_0.a.x)), select(vec3<u32>(arg_0.b.x, u_input.a, 12262u), vec3<u32>(40921u, u_input.a, u_input.a), arg_0.c.x))), _wgslsmith_mult_vec3_u32(min(vec3<u32>(u_input.a, 86134u, arg_0.a.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.a), vec3<u32>(arg_2, 4294967295u, 66164u), vec3<u32>(29748u, 4294967295u, 4294967295u))), _wgslsmith_div_vec3_u32(~vec3<u32>(arg_0.b.x, 4294967295u, u_input.a), vec3<u32>(1u, u_input.b, u_input.a) & vec3<u32>(1925u, arg_2, u_input.a)))), select(vec4<bool>(arg_0.d, !var_3.a.x & true, true, any(func_2(arg_0.c, var_3.a.x, vec4<u32>(arg_2, arg_2, u_input.a, 0u)).c)), select(vec4<bool>(true, true, u_input.b >= u_input.b, all(vec3<bool>(arg_0.c.x, arg_3, arg_0.d))), select(select(vec4<bool>(false, true, arg_0.d, false), vec4<bool>(var_2.x, true, var_2.x, var_2.x), arg_0.c.x), vec4<bool>(var_2.x, var_3.a.x, arg_0.c.x, false), vec4<bool>(true, var_2.x, var_3.a.x, arg_0.d)), func_3(min(u_input.c, u_input.c), _wgslsmith_add_u32(arg_0.b.x, 29660u), ~vec2<i32>(-1i, -2147483647i), Struct_2(arg_0, Struct_1(vec2<u32>(33436u, 66443u), vec2<u32>(0u, 1u), arg_0.c, true, arg_0.e), arg_0.c.x))), false & any(!vec3<bool>(var_3.a.x, false, arg_3))));
    return i32(-1i) * -1i;
}

fn func_1() -> bool {
    let var_0 = -vec4<i32>(-func_4(func_2(vec2<bool>(false, true), true, vec4<u32>(63087u, 54792u, u_input.b, u_input.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-621f, -1123f, -675f, -1363f) * vec4<f32>(-1445f, 1997f, 1230f, -2464f)), 64908u, true), ~1i, _wgslsmith_mod_i32(0i, -global0[_wgslsmith_index_u32(52283u, 1u)]), u_input.c);
    global0 = array<i32, 1>();
    var var_1 = vec3<bool>(true, true, true);
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(782f))))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -632f), _wgslsmith_div_f32(211f, -1377f)))))));
    return !select(select(!any(var_1.yy), !var_1.x & all(var_1.zx), false), false, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~_wgslsmith_sub_u32(abs(29650u), ~4294967295u)));
    var var_1 = !any(vec4<bool>(all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), true)), all(vec2<bool>(false, true)) && false, !(u_input.b <= 4294967295u), func_1() && true));
    var var_2 = !vec4<bool>(!all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), true, true, !any(vec2<bool>(true, true)));
    var_0 = u_input.a;
    var_2 = !(!select(!select(vec4<bool>(false, var_2.x, true, var_2.x), vec4<bool>(var_2.x, true, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, true)), !select(vec4<bool>(true, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, true, true, false), var_2.x), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(select(_wgslsmith_div_vec4_i32(vec4<i32>(-11844i, -2147483647i, -44811i, 2147483647i), vec4<i32>(29734i, global0[_wgslsmith_index_u32(u_input.a, 1u)], 49210i, 2147483647i)), firstLeadingBit(vec4<i32>(u_input.c, -2147483647i, 37139i, -53788i)), var_2.x), ~(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 1u)], 0i, u_input.c, -26413i) ^ vec4<i32>(u_input.c, 1i, 0i, u_input.c))), max(vec4<i32>(u_input.c, -411i, 0i, -19792i) & (vec4<i32>(2147483647i, u_input.c, u_input.c, global0[_wgslsmith_index_u32(u_input.a, 1u)]) | vec4<i32>(-49220i, 43626i, 19057i, 0i)), firstTrailingBit(vec4<i32>(-35973i, -1i, -49883i, -2147483647i)))), min(-_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(9331i, -1412i), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 1u)], u_input.c)), min(vec2<i32>(0i, 0i), vec2<i32>(u_input.c, global0[_wgslsmith_index_u32(u_input.b, 1u)])), vec2<i32>(44197i, 2147483647i)), ~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, 2147483647i), vec2<i32>(2147483647i, u_input.c) << (vec2<u32>(u_input.b, u_input.a) % vec2<u32>(32u)))), u_input.c);
}

