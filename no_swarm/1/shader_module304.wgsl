struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: f32,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec4<i32>(i32(-2147483648), -22469i, -317i, 1i), true, true), Struct_1(vec4<i32>(-1i, i32(-2147483648), 2147483647i, i32(-2147483648)), false, true), Struct_1(vec4<i32>(49303i, 25245i, 526i, 2147483647i), true, true), Struct_1(vec4<i32>(25692i, 2147483647i, 0i, -17835i), false, true), Struct_1(vec4<i32>(2147483647i, -1i, -5587i, 0i), false, true), Struct_1(vec4<i32>(61614i, i32(-2147483648), -1i, -4114i), false, true), Struct_1(vec4<i32>(-52721i, -26346i, 24993i, -26213i), true, true), Struct_1(vec4<i32>(2147483647i, 2147483647i, 60973i, 0i), false, false), Struct_1(vec4<i32>(36727i, 7263i, -50136i, -24558i), false, true), Struct_1(vec4<i32>(-1i, 2147483647i, i32(-2147483648), 0i), false, true), Struct_1(vec4<i32>(2724i, 0i, 33665i, -49336i), true, true), Struct_1(vec4<i32>(-59860i, 1i, -7237i, -995i), false, true), Struct_1(vec4<i32>(-1i, i32(-2147483648), -3405i, -1i), false, false), Struct_1(vec4<i32>(1i, 1i, 0i, 6572i), true, false));

var<private> global1: array<f32, 29> = array<f32, 29>(155f, 529f, 282f, 1545f, 1000f, -469f, 144f, 263f, 1000f, -112f, 1242f, 1000f, 675f, -1165f, -994f, -195f, 527f, -1118f, -1605f, 809f, -1490f, -1561f, -1710f, 501f, 1146f, 818f, -1318f, -1000f, -687f);

var<private> global2: Struct_2;

var<private> global3: Struct_3;

var<private> global4: array<f32, 16> = array<f32, 16>(236f, -1952f, 1155f, -2898f, 1000f, -474f, 193f, 1050f, -893f, -197f, 146f, 1741f, 1000f, -786f, 1136f, 1237f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_5, arg_1: vec3<i32>) -> i32 {
    global1 = array<f32, 29>();
    global3 = Struct_3(4294967295u);
    let var_0 = arg_0.b;
    var var_1 = abs(~global3.a);
    global2 = Struct_2(global2.a, any(select(select(select(vec3<bool>(global2.b, false, global2.b), vec3<bool>(true, false, global2.b), global2.b), vec3<bool>(true, arg_0.a, true), false), vec3<bool>(true, true, true), false)), -600f);
    return 68881i;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_3) -> Struct_4 {
    var var_0 = global3.a;
    global4 = array<f32, 16>();
    global2 = Struct_2(select(-_wgslsmith_div_i32(global2.a, arg_0.a), i32(-1i) * -20028i, true), all(select(select(vec4<bool>(arg_1.b, global2.b, arg_0.b, global2.b), vec4<bool>(true, global2.b, true, arg_1.b), arg_1.c == global4[_wgslsmith_index_u32(arg_2.a, 16u)]), vec4<bool>(global2.b, any(vec3<bool>(global2.b, false, true)), arg_1.c == global1[_wgslsmith_index_u32(39484u, 29u)], true), !vec4<bool>(global2.b, global2.b, false, false))), -170f);
    global1 = array<f32, 29>();
    var var_1 = Struct_2(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(44163i, firstTrailingBit(arg_1.a), 2147483647i, func_3(Struct_5(true, Struct_3(20660u), arg_2), vec3<i32>(-2147483647i, -31540i, u_input.a))), vec4<i32>(arg_0.a, 24086i, abs(u_input.a), 1i)), reverseBits(countOneBits(select(vec4<i32>(arg_0.a, arg_1.a, -61039i, 7785i), vec4<i32>(-2147483647i, 14328i, arg_0.a, 36432i), true)))), true, _wgslsmith_f_op_f32(-arg_1.c));
    return Struct_4(arg_2, Struct_3(select(1u, ~1u, _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(0u, 29u)])) != 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)) + global2.c));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: Struct_3, arg_3: vec4<i32>) -> Struct_1 {
    global1 = array<f32, 29>();
    let var_0 = _wgslsmith_f_op_f32(floor(arg_1.c));
    let var_1 = _wgslsmith_clamp_u32(~(~arg_1.b.a), _wgslsmith_add_u32(~arg_1.a.a, arg_2.a), reverseBits(4294967295u));
    var var_2 = -22546i;
    let var_3 = _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(arg_3.ww, ~(firstLeadingBit(arg_3.yy) | (vec2<i32>(arg_3.x, 25994i) >> (vec2<u32>(4294967295u, var_1) % vec2<u32>(32u))))), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, _wgslsmith_add_i32(-1i, -9425i)), vec2<i32>(i32(-1i) * -11943i, ~32591i)), _wgslsmith_mult_vec2_i32(-vec2<i32>(14582i, 0i), vec2<i32>(-1i) * -vec2<i32>(652i, 48370i))));
    return global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(var_1 & func_2(Struct_2(arg_3.x, arg_0.x, global4[_wgslsmith_index_u32(12259u, 16u)]), Struct_2(var_3.x, false, global1[_wgslsmith_index_u32(var_1, 29u)]), func_2(Struct_2(arg_3.x, global2.b, global2.c), Struct_2(arg_3.x, arg_0.x, 516f), Struct_3(0u)).b).a.a, var_1, 1u & arg_1.a.a), 14u)];
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_4 {
    var var_0 = arg_0.b;
    global1 = array<f32, 29>();
    let var_1 = _wgslsmith_mod_vec2_u32(~arg_1.xy, min(min(~(~vec2<u32>(28780u, global3.a)), ~vec2<u32>(global3.a, arg_1.x)), firstTrailingBit(~(arg_1.zz << (arg_1.xz % vec2<u32>(32u))))));
    global3 = func_2(Struct_2(global2.a, all(!select(vec3<bool>(global2.b, arg_0.b, true), vec3<bool>(false, true, arg_0.c), false)), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.x, arg_1.x), 16u)]), Struct_2(_wgslsmith_sub_i32(-abs(-3728i), u_input.a), (var_1.x > 14541u) && true, global1[_wgslsmith_index_u32(global3.a, 29u)]), Struct_3(29569u >> ((4294967295u >> (var_1.x % 32u)) % 32u))).a;
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-352f, -609f, global2.a < arg_0.a.x)))), global1[_wgslsmith_index_u32(~global3.a, 29u)]));
    return func_2(Struct_2(-_wgslsmith_add_i32(u_input.a, 0i) ^ _wgslsmith_mult_i32(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i), arg_0.a.yw)), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global4[_wgslsmith_index_u32(max(arg_1.x, 18964u), 16u)])))), Struct_2(u_input.a, arg_1.x < 4294967295u, global1[_wgslsmith_index_u32(var_1.x, 29u)]), func_2(Struct_2(min(global2.a, 2147483647i), any(vec2<bool>(true, true)), var_2.x), Struct_2(firstTrailingBit(_wgslsmith_clamp_i32(global2.a, global2.a, global2.a)), global2.b, _wgslsmith_f_op_f32(abs(global2.c))), func_2(Struct_2(func_3(Struct_5(global2.b, Struct_3(1u), Struct_3(arg_1.x)), vec3<i32>(u_input.a, -33528i, -1i)), all(vec3<bool>(true, arg_0.c, arg_0.c)), -220f), Struct_2(func_3(Struct_5(arg_0.c, Struct_3(53788u), Struct_3(var_1.x)), arg_0.a.xzy), global2.b, global1[_wgslsmith_index_u32(~8288u, 29u)]), func_2(Struct_2(global2.a, arg_0.c, 493f), Struct_2(u_input.a, true, var_2.x), Struct_3(57071u)).a).b).b);
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = func_5(func_4(vec4<bool>(false, false, !all(vec2<bool>(false, global2.b)), !any(vec4<bool>(false, arg_0, false, true))), func_2(Struct_2(u_input.a, arg_0, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(5897u, 29u)] * 1460f)), Struct_2(global2.a, !global2.b, global4[_wgslsmith_index_u32(1u, 16u)]), Struct_3(global3.a >> (4294967295u % 32u))), func_2(Struct_2(~2147483647i, all(vec2<bool>(true, false)), -2233f), Struct_2(0i | u_input.a, arg_0 && true, global2.c), Struct_3(firstLeadingBit(0u))).a, abs(vec4<i32>(_wgslsmith_div_i32(u_input.a, global2.a), 9419i, u_input.a, _wgslsmith_sub_i32(-20048i, u_input.a)))), countOneBits(abs(~vec3<u32>(global3.a, 5370u, global3.a) << (_wgslsmith_sub_vec3_u32(vec3<u32>(global3.a, 4294967295u, 1u), vec3<u32>(4294967295u, 2189u, 9448u)) % vec3<u32>(32u)))));
    global4 = array<f32, 16>();
    var var_1 = Struct_5(arg_0, var_0.a, Struct_3(4294967295u));
    global1 = array<f32, 29>();
    global0 = array<Struct_1, 14>();
    return Struct_1(~vec4<i32>(global2.a, firstTrailingBit(0i), _wgslsmith_dot_vec3_i32(~vec3<i32>(global2.a, -52318i, u_input.a), vec3<i32>(-24126i, 26247i, global2.a)), 0i), !any(!vec3<bool>(false, false, arg_0)) != var_1.a, true);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool, arg_3: vec3<f32>) -> vec3<f32> {
    var var_0 = arg_0.a;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-291f * -292f))))));
    var var_2 = arg_0;
    global0 = array<Struct_1, 14>();
    return _wgslsmith_div_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(3543u, ~global3.a), 29u)] * global1[_wgslsmith_index_u32(select(min(4294967295u, 22261u), _wgslsmith_dot_vec3_u32(vec3<u32>(global3.a, global3.a, global3.a), vec3<u32>(9324u, 1u, 12782u)), false), 29u)]), 1560f), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(1u, 16u)]), global1[_wgslsmith_index_u32(1u, 29u)])), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-942f, -859f)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_div_f32(-1370f, arg_3.x), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 29u)]))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(95427u, abs(1u));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_6(func_1(!global2.b), Struct_2(abs(2147483647i), global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c + 258f))), global2.b, vec3<f32>(_wgslsmith_f_op_f32(-284f - global1[_wgslsmith_index_u32(78442u, 29u)]), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(global3.a, 16u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 29u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(1745u, 16u)])) + func_2(Struct_2(33438i, true, 612f), Struct_2(u_input.a, false, -975f), Struct_3(0u)).c)))) + vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_6(global0[_wgslsmith_index_u32(global3.a, 14u)], Struct_2(1i, global2.b, global4[_wgslsmith_index_u32(48370u, 16u)]), false, vec3<f32>(global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(global3.a, 29u)], global1[_wgslsmith_index_u32(251u, 29u)]))).x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global2.c)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(4294967295u, 16u)]))))), 280f));
    let var_2 = true;
    global1 = array<f32, 29>();
    var var_3 = !(!vec3<bool>(global2.b, !all(vec2<bool>(global2.b, false)), any(!vec3<bool>(false, false, var_2))));
    global1 = array<f32, 29>();
    var_3 = !select(select(!select(vec3<bool>(false, var_2, global2.b), vec3<bool>(global2.b, var_2, true), vec3<bool>(var_2, var_3.x, global2.b)), !vec3<bool>(false, var_2, false), var_3.x), vec3<bool>(var_3.x, global2.b, all(vec3<bool>(var_3.x, var_3.x, global2.b)) & (false | var_2)), func_4(!vec4<bool>(false, var_2, false, false), Struct_4(func_5(Struct_1(vec4<i32>(u_input.a, global2.a, u_input.a, u_input.a), false, true), vec3<u32>(global3.a, 1u, global3.a)).a, func_2(Struct_2(2147483647i, true, -742f), Struct_2(u_input.a, false, -1000f), Struct_3(global3.a)).a, _wgslsmith_f_op_f32(112f * 1130f)), Struct_3(4294967295u), firstTrailingBit(-vec4<i32>(global2.a, -2147483647i, global2.a, global2.a))).c);
    var var_4 = func_2(Struct_2(-1i, var_3.x, _wgslsmith_f_op_f32(max(-1855f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2338f) - global2.c)))), Struct_2(_wgslsmith_dot_vec4_i32(~vec4<i32>(global2.a, 2147483647i, -5979i, 54031i), -vec4<i32>(-54270i, 2147483647i, -43481i, global2.a)) << (max(1u, 17079u) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-221f)) + _wgslsmith_f_op_f32(select(-1000f, -1000f, var_2))) != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-2697f - global4[_wgslsmith_index_u32(1802u, 16u)]))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 29u)]), _wgslsmith_f_op_f32(exp2(var_1.x)))), _wgslsmith_f_op_f32(ceil(global4[_wgslsmith_index_u32(~global3.a, 16u)]))))), func_5(func_4(!vec4<bool>(global2.b, var_3.x, true, var_2), Struct_4(func_5(Struct_1(vec4<i32>(u_input.a, -2147483647i, 8570i, global2.a), false, true), vec3<u32>(global3.a, global3.a, 1u)).b, Struct_3(2421u), _wgslsmith_div_f32(var_1.x, 875f)), Struct_3(global3.a), func_1(true).a), _wgslsmith_sub_vec3_u32(~(vec3<u32>(global3.a, 0u, 1u) & vec3<u32>(global3.a, 57760u, 1u)), firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(global3.a, global3.a, 17006u), vec3<u32>(global3.a, global3.a, 20588u))))).b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 36u), vec3<u32>(global3.a, 8504u, global3.a)), 1u), 28953u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(37695u, global3.a, 4294967295u), vec3<u32>(0u, var_4.a.a, 5322u)), var_4.a.a), _wgslsmith_sub_vec4_u32(vec4<u32>(var_4.a.a, var_4.b.a, 20161u, global3.a) ^ vec4<u32>(var_4.a.a, var_4.b.a, 1u, 96177u), _wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, global3.a, var_4.a.a, 7938u), reverseBits(vec4<u32>(1u, global3.a, global3.a, global3.a))))), 1257f, _wgslsmith_mod_vec3_i32(select(countOneBits(reverseBits(vec3<i32>(global2.a, u_input.a, global2.a))), _wgslsmith_add_vec3_i32(vec3<i32>(-28556i, global2.a, u_input.a), ~vec3<i32>(global2.a, u_input.a, 0i)), global2.b), vec3<i32>(global2.a, _wgslsmith_add_i32(u_input.a, _wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a)), -global2.a)), ~vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, 0i), vec2<i32>(-2147483647i, u_input.a) | vec2<i32>(67310i, global2.a)), -38931i, u_input.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-866f, global4[_wgslsmith_index_u32(global3.a, 16u)], -581f), _wgslsmith_div_vec3_f32(var_1, vec3<f32>(global4[_wgslsmith_index_u32(12563u, 16u)], 220f, -1531f)), !vec3<bool>(var_2, false, var_3.x)))) - var_1));
}

