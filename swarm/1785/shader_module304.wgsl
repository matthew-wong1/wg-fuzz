struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
    c: Struct_2,
    d: vec2<f32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: vec2<i32>,
    d: Struct_3,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<i32>, 21> = array<vec4<i32>, 21>(vec4<i32>(5793i, -6428i, 2082i, -1i), vec4<i32>(-1i, 452i, -12840i, -1i), vec4<i32>(0i, 0i, 1i, 44264i), vec4<i32>(24428i, -38957i, 37058i, 18713i), vec4<i32>(-1i, -1560i, 32715i, -14642i), vec4<i32>(-22101i, 0i, -11200i, 0i), vec4<i32>(-19118i, -12298i, 43786i, -21870i), vec4<i32>(1i, i32(-2147483648), 36313i, -44201i), vec4<i32>(-32491i, i32(-2147483648), 1i, -1i), vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, 1i), vec4<i32>(i32(-2147483648), 33843i, 58720i, 1i), vec4<i32>(-1i, -19135i, 50669i, 14680i), vec4<i32>(0i, -8706i, -1i, 35422i), vec4<i32>(-3585i, 8787i, 2147483647i, -1i), vec4<i32>(-1i, i32(-2147483648), -60634i, 15411i), vec4<i32>(1i, -17328i, -26572i, 2147483647i), vec4<i32>(-23326i, -1i, i32(-2147483648), 5303i), vec4<i32>(-27406i, 0i, 1i, 2147483647i), vec4<i32>(-394i, -37370i, 34134i, 0i), vec4<i32>(6786i, 41221i, 19777i, 0i), vec4<i32>(1i, 16286i, 12904i, 1i));

var<private> global2: Struct_1 = Struct_1(vec4<u32>(32961u, 1u, 0u, 103959u));

var<private> global3: array<Struct_4, 17>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_5, arg_2: f32) -> f32 {
    global0 = global2.a.x;
    let var_0 = -select(_wgslsmith_div_vec3_i32(vec3<i32>(abs(u_input.a), 18938i, -1i), _wgslsmith_sub_vec3_i32(-vec3<i32>(-2147483647i, arg_1.d.a.x, 49266i), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, arg_1.c.x, 39259i), vec3<i32>(-2147483647i, u_input.a, -31338i)))), max(reverseBits(-vec3<i32>(u_input.a, 29152i, -44764i)), ~vec3<i32>(-8711i, 0i, u_input.a) ^ -vec3<i32>(u_input.a, u_input.a, arg_1.d.a.x)), vec3<bool>(true, !(!arg_1.a), true));
    global3 = array<Struct_4, 17>();
    global2 = Struct_1(max(~vec4<u32>(14810u, 70800u, arg_1.b.b.x, 41222u), vec4<u32>(~4294967295u, ~global2.a.x, ~arg_0.a, _wgslsmith_mult_u32(arg_0.b.x, arg_0.a))) >> (_wgslsmith_add_vec4_u32(~(global2.a | global2.a), _wgslsmith_add_vec4_u32(~vec4<u32>(26639u, global2.a.x, 48451u, 1u), min(global2.a, global2.a))) % vec4<u32>(32u)));
    var var_1 = arg_1.b.b.x;
    return _wgslsmith_f_op_f32(ceil(926f));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: bool) -> Struct_5 {
    global1 = array<vec4<i32>, 21>();
    global1 = array<vec4<i32>, 21>();
    let var_0 = -994f;
    let var_1 = !vec3<bool>(!(_wgslsmith_f_op_f32(func_3(Struct_2(1u, vec3<u32>(global2.a.x, arg_1.a.x, arg_1.a.x), arg_1.a.x), Struct_5(false, Struct_2(global2.a.x, vec3<u32>(22956u, 81119u, 161u), 5541u), arg_0.a, Struct_3(arg_0.a), -1i), var_0)) <= _wgslsmith_f_op_f32(-var_0)), true, arg_2 | arg_2);
    var var_2 = arg_0;
    return Struct_5(!all(vec2<bool>(!var_1.x, any(var_1.yx))), Struct_2(~25276u, global2.a.yyz, _wgslsmith_div_u32(~(~global2.a.x), ~arg_1.a.x)), vec2<i32>(-38508i, 0i), arg_0, var_2.a.x);
}

fn func_4(arg_0: Struct_5, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: Struct_4) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-320f, arg_3.b)), 206f, arg_3.b, _wgslsmith_f_op_f32(abs(arg_3.d.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-arg_3.b), _wgslsmith_f_op_f32(min(arg_3.b, arg_3.b)), _wgslsmith_f_op_f32(-arg_3.b), _wgslsmith_f_op_f32(arg_3.d.x * arg_3.d.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(629f, 1938f, arg_3.b, 246f)))))));
    let var_1 = arg_0.a & all(!vec2<bool>(all(vec2<bool>(arg_0.a, arg_0.a)), arg_0.a));
    var var_2 = Struct_5(var_1, func_2(func_2(arg_0.d, Struct_1(~global2.a), !var_1).d, Struct_1(reverseBits(global2.a)), all(select(!vec2<bool>(arg_0.a, true), vec2<bool>(true, true), arg_2.a >= 49203u))).b, select(vec2<i32>(u_input.a, 29697i), -(arg_3.a.zy | min(vec2<i32>(u_input.a, u_input.a), arg_1.yz)), !vec2<bool>(true | arg_0.a, var_1)), arg_0.d, select(~abs(~17012i), arg_3.a.x, !arg_0.a));
    global2 = Struct_1(abs(vec4<u32>(6758u, _wgslsmith_sub_u32(4294967295u, ~4294967295u), arg_3.c.b.x, ~arg_2.c >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global2.a.x, arg_3.c.c), arg_0.b.b) % 32u))));
    global1 = array<vec4<i32>, 21>();
    return Struct_4(vec3<i32>(-1i) * -reverseBits(-arg_3.a), _wgslsmith_f_op_f32(abs(751f)), arg_0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(arg_3.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(arg_3.d.x, var_0.x), _wgslsmith_f_op_f32(select(var_0.x, var_0.x, false))))));
}

fn func_1(arg_0: u32) -> Struct_2 {
    global0 = 139421u;
    let var_0 = func_4(func_2(Struct_3(_wgslsmith_add_vec2_i32(vec2<i32>(39522i, 1i) << (global2.a.xw % vec2<u32>(32u)), vec2<i32>(-2147483647i, u_input.a) ^ vec2<i32>(u_input.a, -1i))), Struct_1(_wgslsmith_add_vec4_u32(~global2.a, _wgslsmith_sub_vec4_u32(global2.a, global2.a))), true), reverseBits(~abs(select(vec3<i32>(37797i, 43573i, u_input.a), vec3<i32>(u_input.a, u_input.a, 38348i), vec3<bool>(true, true, true)))), Struct_2(func_2(func_2(func_2(Struct_3(vec2<i32>(u_input.a, -2147483647i)), Struct_1(vec4<u32>(global2.a.x, 4294967295u, global2.a.x, arg_0)), true).d, Struct_1(vec4<u32>(arg_0, global2.a.x, 81610u, global2.a.x)), true).d, Struct_1(min(vec4<u32>(arg_0, 1u, 3205u, 4294967295u), vec4<u32>(35991u, global2.a.x, arg_0, 1u))), any(vec4<bool>(false, false, false, true)) & false).b.c, global2.a.ywy, global2.a.x), Struct_4(_wgslsmith_mult_vec3_i32(firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, -1i, 10348i), vec3<i32>(u_input.a, u_input.a, -12216i))), vec3<i32>(-34775i, u_input.a, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(833f, -815f)), Struct_2(min(global2.a.x, arg_0) & firstLeadingBit(global2.a.x), vec3<u32>(~39735u, 0u, ~54152u), arg_0), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-580f)))), -791f)));
    let var_1 = any(select(vec2<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, false), false)), true), select(vec2<bool>(arg_0 < 52741u, 1208f < var_0.d.x), vec2<bool>(true, func_2(Struct_3(vec2<i32>(var_0.a.x, var_0.a.x)), Struct_1(global2.a), false).a), any(vec4<bool>(false, false, false, true)) & true), any(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false))));
    global0 = var_0.c.c;
    let var_2 = vec2<bool>(!((reverseBits(24769i) & (var_0.a.x >> (global2.a.x % 32u))) >= 1i), ~((18323u ^ arg_0) | global2.a.x) <= firstLeadingBit(_wgslsmith_sub_u32(var_0.c.b.x, 4294967295u) ^ var_0.c.c));
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_mult_vec3_i32(vec3<i32>(~countOneBits(u_input.a), u_input.a, abs(_wgslsmith_mod_i32(11811i, u_input.a))), -vec3<i32>(u_input.a, u_input.a, u_input.a) | (vec3<i32>(-1i) * -vec3<i32>(5715i, u_input.a, 27545i))), -1058f, func_1(~4294967295u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-340f, -658f)))) * vec2<f32>(_wgslsmith_f_op_f32(565f * 168f), -210f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(887f, -1266f))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(565f, 532f), vec2<f32>(557f, 486f), false))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -1845f), vec2<f32>(-588f, -1000f), true)), _wgslsmith_div_vec2_f32(vec2<f32>(-351f, 2082f), vec2<f32>(-2698f, 706f))))));
    global1 = array<vec4<i32>, 21>();
    var var_1 = func_4(func_2(Struct_3(vec2<i32>(_wgslsmith_mod_i32(-1i, -20894i), func_4(Struct_5(true, var_0.c, vec2<i32>(-34587i, -1i), Struct_3(var_0.a.zz), 14219i), vec3<i32>(var_0.a.x, 0i, u_input.a), Struct_2(4294967295u, vec3<u32>(global2.a.x, global2.a.x, 33074u), var_0.c.c), Struct_4(var_0.a, var_0.b, var_0.c, vec2<f32>(-1688f, var_0.b))).a.x)), Struct_1(vec4<u32>(1u | global2.a.x, func_2(Struct_3(var_0.a.yz), Struct_1(vec4<u32>(1u, 1u, global2.a.x, 1u)), false).b.a, 0u, _wgslsmith_mod_u32(global2.a.x, global2.a.x))), all(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true)), all(vec3<bool>(true, false, false))))), ~(vec3<i32>(u_input.a, u_input.a, u_input.a) | (var_0.a ^ vec3<i32>(var_0.a.x, -2147483647i, u_input.a))) | countOneBits(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 1i, -14374i), vec3<i32>(-2147483647i, -2147483647i, 53938i)), var_0.a.x, -660i)), var_0.c, var_0);
    global3 = array<Struct_4, 17>();
    let var_2 = var_1.d;
    global1 = array<vec4<i32>, 21>();
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~func_1(77035u).b.x, 45181u), 21u)];
    let var_4 = Struct_1(vec4<u32>(_wgslsmith_mult_u32(~select(1u, global2.a.x, true), 1u), 0u, max(abs(var_1.c.b.x >> (global2.a.x % 32u)), ~4294967295u), var_0.c.a));
    var var_5 = global2.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(var_2.x)));
}

