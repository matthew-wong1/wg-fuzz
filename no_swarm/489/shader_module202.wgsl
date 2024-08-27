struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: f32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: bool,
    d: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7> = array<i32, 7>(-55413i, 13682i, -13429i, -1i, -17205i, 37150i, -22672i);

var<private> global1: array<vec4<u32>, 14>;

var<private> global2: array<bool, 27> = array<bool, 27>(false, true, false, false, false, false, false, true, true, true, false, false, true, false, true, true, true, true, false, true, true, true, true, true, true, false, true);

var<private> global3: array<Struct_1, 6>;

var<private> global4: array<vec2<f32>, 6>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec3<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(floor(arg_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(306f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)))));
    var var_1 = global4[_wgslsmith_index_u32(min(countOneBits(u_input.b.x), select(arg_0.b, _wgslsmith_mod_u32(u_input.b.x, arg_0.b), select(all(vec2<bool>(arg_1.x, arg_0.c)) | !arg_1.x, any(vec4<bool>(arg_0.a.x, arg_1.x, global2[_wgslsmith_index_u32(u_input.a.x, 27u)], global2[_wgslsmith_index_u32(arg_0.b, 27u)])), !arg_0.c))), 6u)];
    let var_2 = global3[_wgslsmith_index_u32(countOneBits(arg_0.b), 6u)];
    return var_2.b.x;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>) -> Struct_1 {
    global2 = array<bool, 27>();
    var var_0 = vec3<bool>(false, -1000f == _wgslsmith_f_op_f32(-326f + arg_0.b.c), any(vec4<bool>(arg_1.x, arg_1.x | func_3(Struct_3(vec3<bool>(arg_0.b.b.x, false, true), u_input.a.x, arg_1.x, global0[_wgslsmith_index_u32(10514u, 7u)]), vec2<bool>(true, arg_0.e.b.x), vec3<f32>(-1000f, 1683f, 1000f)), all(!arg_1), true)));
    let var_1 = Struct_1(vec4<u32>(~(~_wgslsmith_div_u32(u_input.a.x, 26649u)), ~u_input.b.x, 4294967295u, 4294967295u), !arg_1, 542f, 1u, -_wgslsmith_dot_vec3_i32(abs(u_input.c), reverseBits(-u_input.c)));
    var_0 = arg_1;
    var var_2 = Struct_2(Struct_1(~arg_0.e.a, select(vec3<bool>(var_1.b.x, u_input.a.x <= u_input.b.x, arg_0.e.b.x && arg_1.x), !arg_1, !select(var_1.b, vec3<bool>(global2[_wgslsmith_index_u32(0u, 27u)], var_1.b.x, false), arg_1)), 408f, 4294967295u, 3379i), arg_0.b, !var_1.b.x, _wgslsmith_f_op_f32(min(var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-320f + _wgslsmith_f_op_f32(abs(-452f)))))), global3[_wgslsmith_index_u32(~(~46401u << (_wgslsmith_clamp_u32(min(var_1.a.x, u_input.a.x), firstTrailingBit(5558u), _wgslsmith_mult_u32(0u, 1u)) % 32u)), 6u)]);
    return Struct_1(~select(vec4<u32>(var_1.a.x, 17472u, 48106u, var_2.a.a.x), ~vec4<u32>(32659u, var_1.d, var_2.a.a.x, var_1.a.x), false) >> (abs(firstLeadingBit(reverseBits(global1[_wgslsmith_index_u32(45710u, 14u)]))) % vec4<u32>(32u)), select(!select(arg_1, var_2.a.b, arg_0.e.b.x), !select(!vec3<bool>(var_0.x, global2[_wgslsmith_index_u32(1u, 27u)], global2[_wgslsmith_index_u32(arg_0.a.d, 27u)]), var_1.b, arg_1), vec3<bool>(all(select(vec4<bool>(false, var_0.x, global2[_wgslsmith_index_u32(4294967295u, 27u)], true), vec4<bool>(var_1.b.x, true, arg_0.a.b.x, global2[_wgslsmith_index_u32(59604u, 27u)]), vec4<bool>(false, var_0.x, true, global2[_wgslsmith_index_u32(var_2.e.d, 27u)]))), -1728f < _wgslsmith_div_f32(arg_0.a.c, 606f), ~u_input.b.x >= _wgslsmith_dot_vec2_u32(arg_0.b.a.yy, var_2.e.a.wz))), arg_0.e.c, u_input.d, _wgslsmith_dot_vec4_i32(-vec4<i32>(~arg_0.b.e, _wgslsmith_mult_i32(var_1.e, 0i), -1i, var_2.a.e), vec4<i32>((2568i & arg_0.a.e) ^ -global0[_wgslsmith_index_u32(arg_0.e.d, 7u)], firstLeadingBit(_wgslsmith_sub_i32(u_input.c.x, 2147483647i)), _wgslsmith_mult_i32(19097i, 12747i) ^ firstLeadingBit(var_1.e), _wgslsmith_dot_vec2_i32(u_input.c.zx, ~vec2<i32>(var_2.b.e, 676i)))));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_4, arg_3: vec3<f32>) -> i32 {
    var var_0 = func_2(arg_1, arg_1.e.b);
    let var_1 = arg_2;
    var var_2 = (firstLeadingBit(max(_wgslsmith_add_vec3_i32(u_input.c, vec3<i32>(-11944i, 4961i, arg_2.a)), ~vec3<i32>(0i, 21843i, -189i))) | u_input.c) & countOneBits(-max(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, arg_2.e.e, 2147483647i), vec3<i32>(arg_2.a, 5747i, global0[_wgslsmith_index_u32(77059u, 7u)])), abs(u_input.c)));
    let var_3 = var_1.b.b.zy;
    let var_4 = Struct_3(vec3<bool>(var_0.b.x, true, !global2[_wgslsmith_index_u32(u_input.d, 27u)]), ~arg_1.b.d, !(any(vec4<bool>(var_1.e.b.x, global2[_wgslsmith_index_u32(u_input.d, 27u)], var_1.b.b.x, true)) || !(1000f <= var_0.c)), var_1.d.d);
    return -2147483647i;
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: f32, arg_3: i32) -> Struct_1 {
    let var_0 = arg_0.x;
    global4 = array<vec2<f32>, 6>();
    global4 = array<vec2<f32>, 6>();
    global1 = array<vec4<u32>, 14>();
    global4 = array<vec2<f32>, 6>();
    return Struct_1(u_input.a, !(!(!select(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 27u)], global2[_wgslsmith_index_u32(u_input.a.x, 27u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], global2[_wgslsmith_index_u32(u_input.a.x, 27u)], global2[_wgslsmith_index_u32(u_input.d, 27u)]), vec3<bool>(true, true, global2[_wgslsmith_index_u32(1u, 27u)])))), _wgslsmith_f_op_f32(ceil(451f)), _wgslsmith_sub_u32(119361u, u_input.b.x), arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(~(-(firstLeadingBit(vec4<i32>(u_input.c.x, global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(u_input.d, 7u)], u_input.c.x)) ^ (vec4<i32>(u_input.c.x, 6567i, 2147483647i, u_input.c.x) | vec4<i32>(2147483647i, 70133i, global0[_wgslsmith_index_u32(u_input.d, 7u)], global0[_wgslsmith_index_u32(u_input.b.x, 7u)])))), abs(~reverseBits(func_1(global1[_wgslsmith_index_u32(u_input.d, 14u)], Struct_2(Struct_1(vec4<u32>(u_input.d, u_input.a.x, 0u, u_input.d), vec3<bool>(true, false, global2[_wgslsmith_index_u32(u_input.b.x, 27u)]), -1000f, u_input.a.x, u_input.c.x), Struct_1(vec4<u32>(u_input.b.x, u_input.d, u_input.a.x, u_input.d), vec3<bool>(false, false, global2[_wgslsmith_index_u32(u_input.a.x, 27u)]), -1000f, 78004u, u_input.c.x), false, 514f, Struct_1(vec4<u32>(u_input.a.x, u_input.b.x, u_input.b.x, 0u), vec3<bool>(true, false, true), 315f, 0u, -1i)), Struct_4(global0[_wgslsmith_index_u32(57698u, 7u)], global3[_wgslsmith_index_u32(0u, 6u)], global2[_wgslsmith_index_u32(6794u, 27u)], Struct_3(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 27u)], true, false), u_input.d, global2[_wgslsmith_index_u32(0u, 27u)], -8648i), Struct_1(global1[_wgslsmith_index_u32(37266u, 14u)], vec3<bool>(global2[_wgslsmith_index_u32(30911u, 27u)], global2[_wgslsmith_index_u32(u_input.d, 27u)], global2[_wgslsmith_index_u32(u_input.b.x, 27u)]), -599f, u_input.d, 4248i)), vec3<f32>(215f, -964f, -836f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-894f))) - -1110f)), _wgslsmith_dot_vec3_i32(u_input.c << (firstTrailingBit(u_input.a.xyw) % vec3<u32>(32u)), vec3<i32>(func_2(Struct_2(global3[_wgslsmith_index_u32(39090u, 6u)], Struct_1(vec4<u32>(u_input.d, 4294967295u, 52606u, u_input.d), vec3<bool>(global2[_wgslsmith_index_u32(22705u, 27u)], global2[_wgslsmith_index_u32(u_input.b.x, 27u)], true), 2808f, 1u, 14613i), global2[_wgslsmith_index_u32(1u, 27u)], -782f, Struct_1(u_input.a, vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 27u)], true), 2627f, u_input.a.x, 33574i)), vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 27u)], global2[_wgslsmith_index_u32(0u, 27u)], global2[_wgslsmith_index_u32(u_input.a.x, 27u)])).e, ~(-2147483647i), ~(~global0[_wgslsmith_index_u32(u_input.d, 7u)]))));
    var var_1 = Struct_2(Struct_1(vec4<u32>(select(var_0.a.x, var_0.d, global2[_wgslsmith_index_u32(u_input.d, 27u)]), ~u_input.d, 1u, var_0.a.x) << (~global1[_wgslsmith_index_u32(1u, 14u)] % vec4<u32>(32u)), func_4(vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(24710i, u_input.c.x, u_input.c.x)), 0i, 1i, u_input.c.x), countOneBits(_wgslsmith_clamp_i32(u_input.c.x, -26989i, -33517i)), _wgslsmith_div_f32(_wgslsmith_div_f32(-631f, var_0.c), 1143f), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.c.zz, u_input.c.zz), 2147483647i, ~(-2147483647i))).b, -1529f, 9501u, -2147483647i), var_0, false, -337f, func_2(Struct_2(Struct_1(var_0.a << (global1[_wgslsmith_index_u32(var_0.d, 14u)] % vec4<u32>(32u)), vec3<bool>(true, false, global2[_wgslsmith_index_u32(u_input.d, 27u)]), _wgslsmith_f_op_f32(-651f * -449f), 0u, 0i), func_4(select(vec4<i32>(global0[_wgslsmith_index_u32(809u, 7u)], global0[_wgslsmith_index_u32(var_0.a.x, 7u)], var_0.e, 1i), vec4<i32>(global0[_wgslsmith_index_u32(37048u, 7u)], global0[_wgslsmith_index_u32(u_input.d, 7u)], 27022i, var_0.e), vec4<bool>(var_0.b.x, true, true, true)), _wgslsmith_mod_i32(-8701i, global0[_wgslsmith_index_u32(1316u, 7u)]), 1155f, -2147483647i), !(!global2[_wgslsmith_index_u32(63310u, 27u)]), _wgslsmith_f_op_f32(2334f + 1847f), Struct_1(vec4<u32>(34304u, u_input.a.x, 66857u, u_input.a.x) | vec4<u32>(u_input.b.x, var_0.a.x, var_0.a.x, var_0.a.x), select(var_0.b, var_0.b, true), var_0.c, ~1u, -30034i)), var_0.b));
    let var_2 = firstLeadingBit(max(u_input.c, ~u_input.c));
    var_1 = Struct_2(func_4(vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, 1i, -2147483647i, var_1.a.e), vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(0u, 7u)], var_2.x, global0[_wgslsmith_index_u32(u_input.d, 7u)])), var_0.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(132f * -467f) + _wgslsmith_div_f32(func_4(vec4<i32>(88856i, var_0.e, 1i, u_input.c.x), 87129i, var_0.c, 2147483647i).c, -1000f)), _wgslsmith_sub_i32(func_4(reverseBits(vec4<i32>(global0[_wgslsmith_index_u32(u_input.d, 7u)], u_input.c.x, var_1.e.e, global0[_wgslsmith_index_u32(u_input.d, 7u)])), -38856i ^ var_1.e.e, _wgslsmith_f_op_f32(f32(-1f) * -1082f), firstTrailingBit(-10928i)).e, -1i)), var_0, all(var_0.b.yz), func_2(Struct_2(Struct_1(~var_0.a, vec3<bool>(global2[_wgslsmith_index_u32(27690u, 27u)], false, false), _wgslsmith_f_op_f32(-var_1.d), u_input.b.x, ~(-2147483647i)), func_4(~vec4<i32>(global0[_wgslsmith_index_u32(0u, 7u)], -409i, -33582i, 10398i), -2147483647i, var_0.c, max(var_2.x, 1i)), var_1.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1415f)))), Struct_1(var_1.e.a, var_0.b, _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_dot_vec4_u32(var_0.a, global1[_wgslsmith_index_u32(var_0.a.x, 14u)]), i32(-1i) * -2842i)), vec3<bool>((i32(-1i) * -4190i) > var_2.x, all(!vec4<bool>(global2[_wgslsmith_index_u32(6464u, 27u)], false, true, var_0.b.x)), func_2(Struct_2(var_1.a, global3[_wgslsmith_index_u32(22241u, 6u)], var_1.b.b.x, var_0.c, Struct_1(vec4<u32>(1u, 29946u, 1u, 143730u), var_1.e.b, var_1.e.c, 0u, 4801i)), vec3<bool>(var_1.c, false, false)).b.x & false)).c, func_2(Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(46078u, var_1.e.d) & var_0.a.x, 6u)], Struct_1(u_input.a, func_2(Struct_2(var_1.b, var_0, var_0.b.x, var_0.c, Struct_1(vec4<u32>(23156u, var_1.e.a.x, 12748u, u_input.b.x), vec3<bool>(var_1.b.b.x, global2[_wgslsmith_index_u32(1u, 27u)], var_0.b.x), 853f, var_1.e.a.x, 3581i)), vec3<bool>(true, true, global2[_wgslsmith_index_u32(25740u, 27u)])).b, _wgslsmith_f_op_f32(-1165f - var_1.b.c), func_4(vec4<i32>(-1999i, -62206i, 19461i, var_1.b.e), 13612i, var_0.c, 2147483647i).d, ~(-53697i)), true, var_0.c, func_2(Struct_2(global3[_wgslsmith_index_u32(u_input.a.x, 6u)], Struct_1(vec4<u32>(var_0.d, u_input.b.x, 1u, var_0.a.x), vec3<bool>(false, true, global2[_wgslsmith_index_u32(60303u, 27u)]), -1000f, u_input.a.x, 17408i), false, 348f, global3[_wgslsmith_index_u32(1u, 6u)]), vec3<bool>(global2[_wgslsmith_index_u32(var_0.a.x, 27u)], false, var_1.e.b.x))), select(var_1.b.b, var_0.b, global2[_wgslsmith_index_u32(0u, 27u)] & false)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e.c));
    var_1 = Struct_2(Struct_1(global1[_wgslsmith_index_u32(var_0.a.x, 14u)], !func_4(vec4<i32>(2147483647i, 2147483647i, 2147483647i, -4001i), 41071i, var_1.e.c, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.e, 0i, var_0.e, 45123i), vec4<i32>(-27241i, var_1.e.e, -5050i, -12240i))).b, var_1.b.c, max(2919u, u_input.a.x), 7187i), var_0, func_2(Struct_2(var_0, global3[_wgslsmith_index_u32(51774u, 6u)], global2[_wgslsmith_index_u32(var_1.e.d, 27u)], _wgslsmith_f_op_f32(633f + 730f), var_1.b), var_0.b).b.x != true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-116f, var_0.c) * -371f) * _wgslsmith_f_op_f32(f32(-1f) * -224f))), Struct_1(var_1.a.a, var_1.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-370f - var_1.d))), ~(~u_input.a.x << (0u % 32u)), 1i));
    global2 = array<bool, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~func_2(Struct_2(Struct_1(var_1.a.a, vec3<bool>(var_0.b.x, false, var_1.b.b.x), -1174f, 0u, global0[_wgslsmith_index_u32(var_0.d, 7u)]), var_1.e, false, -169f, var_1.b), vec3<bool>(true, false, global2[_wgslsmith_index_u32(var_1.b.d, 27u)])).a.x, 0u), 2067f);
}

