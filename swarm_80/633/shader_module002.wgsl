struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec3<u32>(5123u, 39138u, 32050u), 22217i), Struct_1(vec3<u32>(52580u, 67326u, 1u), 0i), Struct_1(vec3<u32>(7735u, 50001u, 35932u), 1i), Struct_1(vec3<u32>(0u, 4294967295u, 0u), 2147483647i), Struct_1(vec3<u32>(4294967295u, 15409u, 1u), -1i), Struct_1(vec3<u32>(0u, 75115u, 79798u), -6702i), Struct_1(vec3<u32>(99995u, 4294967295u, 25772u), -69436i), Struct_1(vec3<u32>(1u, 40956u, 53042u), 1i), Struct_1(vec3<u32>(1u, 0u, 0u), 35975i), Struct_1(vec3<u32>(0u, 28392u, 5830u), 1i), Struct_1(vec3<u32>(64997u, 37559u, 4518u), -4663i), Struct_1(vec3<u32>(0u, 1u, 5674u), 15875i), Struct_1(vec3<u32>(0u, 13877u, 58811u), -34372i), Struct_1(vec3<u32>(4294967295u, 79689u, 28071u), i32(-2147483648)), Struct_1(vec3<u32>(0u, 4294967295u, 11342u), 30432i), Struct_1(vec3<u32>(1u, 35083u, 0u), -1816i), Struct_1(vec3<u32>(1u, 9728u, 4294967295u), 0i), Struct_1(vec3<u32>(0u, 1282u, 4294967295u), 12532i), Struct_1(vec3<u32>(67693u, 29630u, 687u), 56655i), Struct_1(vec3<u32>(22082u, 4294967295u, 40624u), -66596i), Struct_1(vec3<u32>(0u, 0u, 1u), -9875i), Struct_1(vec3<u32>(612u, 4294967295u, 12921u), -1i), Struct_1(vec3<u32>(1u, 1u, 1u), -2273i), Struct_1(vec3<u32>(37257u, 11558u, 4294967295u), -21030i), Struct_1(vec3<u32>(38931u, 7863u, 10304u), 15336i), Struct_1(vec3<u32>(10041u, 81924u, 17963u), -1i), Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u), 0i), Struct_1(vec3<u32>(19932u, 7625u, 1u), 0i), Struct_1(vec3<u32>(4294967295u, 0u, 1u), 2274i), Struct_1(vec3<u32>(0u, 15490u, 0u), 28597i));

var<private> global1: Struct_1;

var<private> global2: array<f32, 18>;

var<private> global3: Struct_1 = Struct_1(vec3<u32>(4294967295u, 41152u, 0u), 0i);

var<private> global4: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<u32>) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(35810u, 30u)];
    let var_1 = abs(-2147483647i);
    var var_2 = !any(vec3<bool>(_wgslsmith_f_op_f32(566f + global2[_wgslsmith_index_u32(global1.a.x, 18u)]) < _wgslsmith_f_op_f32(174f * 481f), false, !(global1.b > global1.b)));
    var var_3 = global1.a.x;
    var var_4 = global1.b & 46262i;
    return global3.a.x;
}

fn func_2() -> Struct_1 {
    var var_0 = -353f;
    global2 = array<f32, 18>();
    var var_1 = -2147483647i;
    let var_2 = Struct_1(vec3<u32>(func_3(vec3<u32>(global3.a.x, 41086u, global3.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(50473u, global1.a.x, global1.a.x, 0u), vec4<u32>(1u, 3183u, 0u, 4294967295u))), _wgslsmith_sub_u32(~4294967295u, ~global1.a.x), global3.a.x) << (vec3<u32>(firstTrailingBit(0u), 7261u, abs(~0u)) % vec3<u32>(32u)), (_wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(-163i, 1i, -2147483647i)) >> (~min(36738u, global3.a.x) % 32u)) >> (~11918u % 32u));
    var var_3 = global0[_wgslsmith_index_u32(abs(~39586u), 30u)];
    return var_2;
}

fn func_1() -> i32 {
    let var_0 = firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(abs(-6251i), ~(-1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(global3.b, u_input.b.x, 0i, u_input.b.x), vec4<i32>(7472i, u_input.e.x, -2147483647i, global3.b)) & (-9333i >> (global3.a.x % 32u)), -1i), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.e.x, global1.b, global3.b), u_input.e), u_input.e), u_input.e)));
    let var_1 = global0[_wgslsmith_index_u32(max(countOneBits(_wgslsmith_add_u32(53078u, abs(50994u))), _wgslsmith_mult_u32(global3.a.x | 1u, _wgslsmith_add_u32(1u, 37308u))), 30u)];
    global1 = global0[_wgslsmith_index_u32(~var_1.a.x, 30u)];
    let var_2 = select(u_input.e.x, global3.b, false) == 0i;
    let var_3 = func_2();
    return countOneBits(global1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.b.x), max(vec2<i32>(1i, 2147483647i), vec2<i32>(global1.b, -31313i))), (i32(-1i) * -11557i) << (global1.a.x % 32u)), ~(global1.b | u_input.b.x), global1.b), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, func_1(), countOneBits(_wgslsmith_mod_i32(global1.b, u_input.e.x))), select(_wgslsmith_mod_vec3_i32(u_input.e, vec3<i32>(3185i, 1i, global1.b)), _wgslsmith_mult_vec3_i32(vec3<i32>(-17354i, u_input.b.x, -38652i), u_input.e), vec3<bool>(true, true, true)) << (vec3<u32>(min(50859u, 0u), u_input.c, select(u_input.d.x, 36076u, true)) % vec3<u32>(32u))));
    var var_1 = Struct_1(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(global1.a, _wgslsmith_sub_vec3_u32(~vec3<u32>(0u, 43960u, 0u), ~global3.a)), vec3<u32>(~abs(global1.a.x), firstLeadingBit(countOneBits(global1.a.x)), ~(global1.a.x & global3.a.x))), ~_wgslsmith_dot_vec4_i32(-max(vec4<i32>(0i, 1i, -80934i, -39872i), vec4<i32>(12129i, var_0.x, u_input.e.x, u_input.b.x)), firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, 15148i, u_input.e.x, global3.b), vec4<i32>(-5890i, global1.b, 29413i, -1i)))));
    var_0 = ~abs(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-23431i, 0i, 1i), _wgslsmith_mult_vec3_i32(u_input.e, u_input.e)), -firstLeadingBit(vec3<i32>(2147483647i, 18248i, global1.b))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1902f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 18u)])))))));
    let var_3 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(~var_1.a.x, firstLeadingBit(_wgslsmith_add_u32(firstTrailingBit(u_input.d.x), ~10336u)), firstTrailingBit(0u)), global3.a.x);
    let var_4 = max(~select(vec2<u32>(3827u, global3.a.x) ^ ~vec2<u32>(0u, u_input.d.x), vec2<u32>(_wgslsmith_div_u32(62169u, global1.a.x), ~21910u), vec2<bool>(true, true)), vec2<u32>(4294967295u, ~var_1.a.x) >> (~(~(~vec2<u32>(0u, 1u))) % vec2<u32>(32u)));
    global0 = array<Struct_1, 30>();
    let var_5 = Struct_1(global1.a, (-2147483647i ^ _wgslsmith_div_i32(var_0.x, _wgslsmith_div_i32(0i, -47316i))) << (_wgslsmith_sub_u32(15295u, global3.a.x << (_wgslsmith_add_u32(4294967295u, global1.a.x) % 32u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec4<i32>(1i, ~global1.b, _wgslsmith_mult_i32(var_0.x, -23210i), _wgslsmith_dot_vec4_i32(vec4<i32>(global3.b, global1.b, -1i, -22394i), vec4<i32>(1i, global1.b, 1i, var_0.x))) >> (vec4<u32>(_wgslsmith_add_u32(69837u, 1u), func_3(var_1.a, vec4<u32>(var_5.a.x, var_3, 1u, u_input.a)), ~var_3, u_input.c) % vec4<u32>(32u))), _wgslsmith_div_f32(1385f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 18u)]), _wgslsmith_f_op_f32(abs(-2008f))) + _wgslsmith_f_op_f32(f32(-1f) * -815f))), -select(-select(vec4<i32>(var_5.b, global1.b, var_1.b, var_1.b), vec4<i32>(-34131i, 1i, 2147483647i, var_1.b), vec4<bool>(false, false, true, false)), vec4<i32>(min(1i, 1i), 14228i, i32(-1i) * -459i, reverseBits(0i)), !global4[_wgslsmith_index_u32(u_input.d.x, 32u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2136f, -2449f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2[_wgslsmith_index_u32(15764u, 18u)], global2[_wgslsmith_index_u32(40284u, 18u)])))))))));
}

