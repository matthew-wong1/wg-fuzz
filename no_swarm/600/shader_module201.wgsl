struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: Struct_3,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<u32, 8>;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(0i, 1i, 0i), vec2<u32>(0u, 6702u), 13138i);

var<private> global2: array<bool, 19> = array<bool, 19>(false, true, false, true, false, true, false, true, false, false, false, true, false, false, true, false, false, false, false);

var<private> global3: array<vec4<i32>, 6> = array<vec4<i32>, 6>(vec4<i32>(i32(-2147483648), -62644i, -9388i, -13716i), vec4<i32>(-51720i, i32(-2147483648), 36556i, -1i), vec4<i32>(-1i, 15925i, -1i, i32(-2147483648)), vec4<i32>(-17088i, 0i, 25448i, i32(-2147483648)), vec4<i32>(-31082i, 0i, 1i, i32(-2147483648)), vec4<i32>(-3563i, 2147483647i, 0i, 2147483647i));

var<private> global4: array<bool, 25>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -813f);
    global4 = array<bool, 25>();
    global3 = array<vec4<i32>, 6>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1237f, var_0, true)) * -306f), 1998f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0), -970f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(369f - var_0), _wgslsmith_f_op_f32(var_0 + var_0))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2435f, _wgslsmith_f_op_f32(max(var_0, 177f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - var_1.x) * var_1.x)), _wgslsmith_f_op_f32(var_0 - 763f)));
    return countOneBits(vec4<u32>(~1u, ~global1.b.x, _wgslsmith_clamp_u32(global1.b.x, global1.b.x, 6728u), ~1u));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<f32>) -> vec3<bool> {
    var var_0 = arg_0.x;
    var var_1 = Struct_2(arg_0, countOneBits(-(_wgslsmith_sub_vec2_i32(global1.a.zz, vec2<i32>(3358i, u_input.a)) & vec2<i32>(-35425i, global1.a.x))), ~4294967295u);
    let var_2 = reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(50512u, max(4294967295u, 46594u), var_1.c, global0[_wgslsmith_index_u32(0u, 8u)]), ~func_3(vec4<bool>(false, var_1.a.x, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 8u)], 19u)], var_1.a.x), vec3<bool>(global4[_wgslsmith_index_u32(145434u, 25u)], var_1.a.x, global2[_wgslsmith_index_u32(87220u, 19u)]), Struct_1(vec3<i32>(37074i, -2147483647i, -4105i), vec2<u32>(var_1.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.b.x, 8u)], 8u)]), 8465i))) << ((~(~vec4<u32>(global1.b.x, global0[_wgslsmith_index_u32(51960u, 8u)], global1.b.x, 0u)) | (vec4<u32>(30258u, global1.b.x, 9190u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 8u)], 8u)]) ^ ~vec4<u32>(global1.b.x, 53262u, global0[_wgslsmith_index_u32(var_1.c, 8u)], global1.b.x))) % vec4<u32>(32u)));
    global0 = array<u32, 8>();
    let var_3 = Struct_4(vec2<u32>(68890u, func_3(vec4<bool>(global2[_wgslsmith_index_u32(14686u, 19u)], global4[_wgslsmith_index_u32(var_1.c, 25u)], global4[_wgslsmith_index_u32(var_1.c, 25u)], true), vec3<bool>(arg_0.x, false, global2[_wgslsmith_index_u32(var_1.c, 19u)]), Struct_1(global1.a, vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.c, 8u)], 8u)], 47894u), -2147483647i)).x >> (min(0u ^ global0[_wgslsmith_index_u32(1u, 8u)], firstTrailingBit(47937u)) % 32u)), Struct_3(Struct_1(global1.a, var_2.xx ^ ~global1.b, -_wgslsmith_clamp_i32(9962i, -1i, var_1.b.x)), Struct_2(!(!arg_0), ~vec2<i32>(u_input.a, 0i) << (var_2.yx % vec2<u32>(32u)), 1u ^ global0[_wgslsmith_index_u32(countOneBits(var_2.x), 8u)])), Struct_3(Struct_1(vec3<i32>(_wgslsmith_sub_i32(u_input.a, -2147483647i), 27121i, i32(-1i) * -27138i), ~(~vec2<u32>(1u, var_1.c)), i32(-1i) * -2536i), Struct_2(var_1.a, var_1.b, min(var_1.c, max(var_2.x, 4294967295u)))), -18774i, _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1472f + -738f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -141f))))));
    return vec3<bool>(true | !(false & !var_3.b.b.a.x), !var_3.c.b.a.x, !all(var_1.a));
}

fn func_1(arg_0: vec3<i32>) -> Struct_4 {
    var var_0 = arg_0.x;
    var var_1 = !(!all(func_2(vec2<bool>(true, global2[_wgslsmith_index_u32(58234u, 19u)]), vec3<f32>(384f, 737f, -944f))) && (((true && global2[_wgslsmith_index_u32(0u, 19u)]) || global4[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(1u, 8u)], 25u)]) | global4[_wgslsmith_index_u32(~28631u, 25u)]));
    let var_2 = false != global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(28248u, 8u)] >> (34778u % 32u), 8u)], global0[_wgslsmith_index_u32(94060u, 8u)]), 19u)];
    let var_3 = vec2<bool>(all(select(select(vec4<bool>(true, false, global2[_wgslsmith_index_u32(63748u, 19u)], var_2), vec4<bool>(global2[_wgslsmith_index_u32(global1.b.x, 19u)], true, global4[_wgslsmith_index_u32(global1.b.x, 25u)], global4[_wgslsmith_index_u32(85538u, 25u)]), global4[_wgslsmith_index_u32(35160u, 25u)] || true), vec4<bool>(!var_2, var_2, true, true), select(select(vec4<bool>(global4[_wgslsmith_index_u32(1u, 25u)], false, global4[_wgslsmith_index_u32(38464u, 25u)], global2[_wgslsmith_index_u32(4294967295u, 19u)]), vec4<bool>(false, false, true, var_2), true), !vec4<bool>(false, true, global4[_wgslsmith_index_u32(global1.b.x, 25u)], false), global4[_wgslsmith_index_u32(1u, 25u)]))), ~(~global1.b.x) == select(~global1.b.x | select(global1.b.x, 31021u, true), ~global1.b.x, !all(vec2<bool>(false, true))));
    let var_4 = ~(~(-vec3<i32>(_wgslsmith_div_i32(u_input.a, -14383i), -2147483647i, -11317i)));
    return Struct_4(~global1.b, Struct_3(Struct_1(vec3<i32>(1i, ~arg_0.x, -2507i), max(vec2<u32>(global0[_wgslsmith_index_u32(32725u, 8u)], 0u), firstLeadingBit(global1.b)), u_input.a), Struct_2(var_3, vec2<i32>(-21892i, 1602i) | _wgslsmith_mult_vec2_i32(vec2<i32>(-13022i, var_4.x), vec2<i32>(-16237i, arg_0.x)), global1.b.x)), Struct_3(Struct_1(vec3<i32>(arg_0.x, arg_0.x, _wgslsmith_mult_i32(-1i, var_4.x)), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(global1.b, vec2<u32>(global0[_wgslsmith_index_u32(global1.b.x, 8u)], 0u)), vec2<u32>(global1.b.x, 7765u)), -22164i), Struct_2(!select(var_3, var_3, var_3), vec2<i32>(-10813i >> (global0[_wgslsmith_index_u32(global1.b.x, 8u)] % 32u), 7834i | var_4.x), func_3(vec4<bool>(global2[_wgslsmith_index_u32(global1.b.x, 19u)], false, false, true), func_2(var_3, vec3<f32>(-1597f, -353f, -1000f)), Struct_1(vec3<i32>(var_4.x, arg_0.x, 4969i), global1.b, -4345i)).x)), _wgslsmith_clamp_i32(firstLeadingBit(17736i), -(~1i), arg_0.x), 1f);
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_4, arg_3: Struct_3) -> Struct_1 {
    var var_0 = func_1(arg_3.a.a).b;
    var var_1 = func_1(~arg_3.a.a).c.a;
    var var_2 = _wgslsmith_sub_u32(global1.b.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.b.c, var_1.b.x, var_1.b.x, 12019u), vec4<u32>(arg_2.c.a.b.x, 0u, var_0.a.b.x, 30112u))), select(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.b.a.b.x, global0[_wgslsmith_index_u32(arg_3.a.b.x, 8u)], 1u, 64128u), vec4<u32>(35726u, arg_2.c.b.c, 75115u, arg_2.a.x)), vec4<u32>(4294967295u, 0u, 39234u, 4294967295u) & vec4<u32>(var_1.b.x, 0u, var_1.b.x, arg_2.a.x), select(vec4<bool>(false, true, global4[_wgslsmith_index_u32(arg_2.b.a.b.x, 25u)], false), vec4<bool>(arg_2.c.b.a.x, false, false, true), vec4<bool>(false, global2[_wgslsmith_index_u32(7590u, 19u)], false, arg_2.b.b.a.x)))), max(1u, _wgslsmith_div_u32(4294967295u, 6199u))));
    let var_3 = arg_3;
    var var_4 = global3[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(~(~(~4294967295u)), ~(~global0[_wgslsmith_index_u32(0u, 8u)]))), 6u)];
    return arg_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(false, select(vec2<bool>(global2[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global1.b.x, 8u)], 19u)], true), vec2<bool>(global4[_wgslsmith_index_u32(firstLeadingBit(78753u), 25u)], !(!global2[_wgslsmith_index_u32(4294967295u, 19u)])), select(!select(vec2<bool>(true, true), vec2<bool>(global4[_wgslsmith_index_u32(1u, 25u)], global2[_wgslsmith_index_u32(global1.b.x, 19u)]), true), !vec2<bool>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(57866u, 8u)], 8u)], 25u)], global2[_wgslsmith_index_u32(33266u, 19u)]), select(!vec2<bool>(true, global4[_wgslsmith_index_u32(global1.b.x, 25u)]), vec2<bool>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.b.x, 8u)], 25u)], true), vec2<bool>(global2[_wgslsmith_index_u32(51619u, 19u)], true)))), func_1(reverseBits(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 1i, global1.a.x), vec3<i32>(13763i, -1i, u_input.a)), _wgslsmith_sub_vec3_i32(global1.a, vec3<i32>(global1.a.x, 42407i, 20814i))))), Struct_3(Struct_1(global1.a, ~vec2<u32>(15148u, 17315u), -(u_input.a | -1i)), Struct_2(vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 8u)], 8u)], global0[_wgslsmith_index_u32(global1.b.x, 8u)], 0u, 56604u), vec4<u32>(7585u, global0[_wgslsmith_index_u32(29280u, 8u)], global1.b.x, global0[_wgslsmith_index_u32(4294967295u, 8u)])), 19u)], any(vec4<bool>(true, true, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(546u, 8u)], 25u)], global2[_wgslsmith_index_u32(global1.b.x, 19u)]))), global1.a.yx >> (~global1.b % vec2<u32>(32u)), _wgslsmith_clamp_u32(global1.b.x, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], reverseBits(65548u)))));
    global2 = array<bool, 19>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-810f + _wgslsmith_f_op_f32(f32(-1f) * -1022f)));
    var var_1 = Struct_4(max(select(~func_4(false, vec2<bool>(false, false), Struct_4(global1.b, Struct_3(Struct_1(vec3<i32>(u_input.a, global1.a.x, 1177i), vec2<u32>(global1.b.x, 75292u), 2771i), Struct_2(vec2<bool>(global4[_wgslsmith_index_u32(0u, 25u)], global4[_wgslsmith_index_u32(global1.b.x, 25u)]), vec2<i32>(global1.c, u_input.a), 6611u)), Struct_3(Struct_1(global1.a, vec2<u32>(46695u, global0[_wgslsmith_index_u32(34774u, 8u)]), global1.c), Struct_2(vec2<bool>(false, false), vec2<i32>(19953i, u_input.a), 0u)), global1.c, 158f), Struct_3(Struct_1(global1.a, global1.b, u_input.a), Struct_2(vec2<bool>(true, false), global1.a.yy, global1.b.x))).b, vec2<u32>(_wgslsmith_mod_u32(global1.b.x, 4294967295u), global0[_wgslsmith_index_u32(~4294967295u, 8u)]), global2[_wgslsmith_index_u32(1u, 19u)]), vec2<u32>(global1.b.x, _wgslsmith_div_u32(min(global0[_wgslsmith_index_u32(global1.b.x, 8u)], global1.b.x), countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9991u, 8u)], 8u)])))), func_1(countOneBits(abs(global1.a))).c, func_1(global1.a).c, ~select(abs(-u_input.a), u_input.a, global2[_wgslsmith_index_u32(41172u, 19u)]), -1935f);
    let var_2 = func_1(vec3<i32>(abs(-22618i), 10025i, 0i));
    var var_3 = func_1(vec3<i32>(~select(9720i, -global1.c, global2[_wgslsmith_index_u32(16011u, 19u)]), var_2.c.a.c | (1i & (u_input.a | -2147483647i)), var_1.c.a.a.x)).c.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(select(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_3.c, 37136u), vec3<u32>(29539u, 1181u, 68698u)) >> (_wgslsmith_mult_u32(32284u, var_2.a.x) % 32u), 0u, !global2[_wgslsmith_index_u32(var_1.c.b.c, 19u)] | true), countOneBits(1u)));
}

