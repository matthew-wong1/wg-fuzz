struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: vec3<i32>,
    d: u32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<bool>,
    c: Struct_2,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 11543i;

var<private> global1: vec4<u32>;

var<private> global2: array<bool, 12>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_2) -> u32 {
    var var_0 = arg_2.a;
    var var_1 = arg_0.c.yz;
    let var_2 = _wgslsmith_f_op_f32(exp2(arg_2.b)) <= _wgslsmith_f_op_f32(step(-991f, arg_0.b));
    var var_3 = min(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(countOneBits(arg_2.d), max(4294967295u, 16137u), u_input.a), firstTrailingBit(vec3<u32>(arg_2.d, 4294967295u, u_input.a))), abs(~(~global1.wzw))), vec3<u32>(1u, 18174u >> (~_wgslsmith_clamp_u32(11109u, 4294967295u, 1u) % 32u), 4294967295u));
    let var_4 = global1.x;
    return ~arg_0.d;
}

fn func_3(arg_0: Struct_3) -> vec2<i32> {
    global0 = _wgslsmith_mult_i32(_wgslsmith_div_i32(max(-arg_0.a.x ^ -arg_0.a.x, ~u_input.b), _wgslsmith_mult_i32(u_input.b & 0i, _wgslsmith_add_i32(arg_0.a.x | arg_0.a.x, 60590i))), 37212i);
    var var_0 = all(!(!select(select(vec2<bool>(global2[_wgslsmith_index_u32(1u, 12u)], false), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 12u)], false), false), !vec2<bool>(global2[_wgslsmith_index_u32(42412u, 12u)], true), all(vec4<bool>(global2[_wgslsmith_index_u32(global1.x, 12u)], false, global2[_wgslsmith_index_u32(u_input.a, 12u)], false)))));
    var var_1 = all(select(vec2<bool>(false, true), vec2<bool>(true, !global2[_wgslsmith_index_u32(reverseBits(u_input.a), 12u)]), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.a, _wgslsmith_add_u32(u_input.a, u_input.a)), 12u)] || global2[_wgslsmith_index_u32(u_input.a, 12u)]));
    var var_2 = Struct_4(true);
    let var_3 = vec4<i32>(-1i) * -countOneBits(_wgslsmith_add_vec4_i32(abs(vec4<i32>(-1i, -1i, u_input.b, 1i)), min(vec4<i32>(arg_0.a.x, 6722i, u_input.b, 32197i), vec4<i32>(arg_0.a.x, u_input.b, -26686i, 0i))));
    return _wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(~(u_input.b << (11817u % 32u)), u_input.b)), ~select(~max(var_3.yz, vec2<i32>(var_3.x, u_input.b)), vec2<i32>(abs(var_3.x), 14306i), var_2.a));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: i32) -> vec4<u32> {
    var var_0 = Struct_3(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_add_i32(u_input.b, ~24430i), ~u_input.b, _wgslsmith_add_i32(arg_2, min(arg_2, arg_2))), -select(reverseBits(vec3<i32>(u_input.b, -18866i, arg_2)), min(vec3<i32>(u_input.b, 36932i, -19378i), vec3<i32>(-51831i, arg_2, arg_2)), global2[_wgslsmith_index_u32(arg_0.x & global1.x, 12u)])));
    var var_1 = Struct_1(-2147483647i);
    var var_2 = Struct_2(!(!vec3<bool>(true, false, all(vec3<bool>(global2[_wgslsmith_index_u32(global1.x, 12u)], true, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1f, -532f, !all(vec4<bool>(false, true, false, true)))) + _wgslsmith_f_op_f32(trunc(190f))), -min(-abs(var_0.a), reverseBits(_wgslsmith_add_vec3_i32(var_0.a, var_0.a))), 18981u);
    var var_3 = select(-vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.b, var_0.a.x), -var_0.a.x), _wgslsmith_div_i32(u_input.b, var_0.a.x), var_2.c.x, _wgslsmith_add_i32(u_input.b >> (79632u % 32u), reverseBits(u_input.b))), select(-reverseBits(countOneBits(vec4<i32>(-2147483647i, u_input.b, 31540i, arg_2))), vec4<i32>(abs(firstLeadingBit(var_1.a)), func_3(Struct_3(var_0.a)).x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a, var_2.c.x, var_0.a.x, 2147483647i), vec4<i32>(1i, -2147483647i, 73694i, var_1.a)), arg_2), true), vec4<bool>(!select(true, any(vec4<bool>(false, false, var_2.a.x, var_2.a.x)), !global2[_wgslsmith_index_u32(global1.x, 12u)]), true, global2[_wgslsmith_index_u32(u_input.a ^ 4294967295u, 12u)] | any(!vec3<bool>(var_2.a.x, global2[_wgslsmith_index_u32(var_2.d, 12u)], true)), (1483f < _wgslsmith_f_op_f32(ceil(var_2.b))) & true));
    let var_4 = Struct_2(select(var_2.a, !(!select(vec3<bool>(global2[_wgslsmith_index_u32(global1.x, 12u)], var_2.a.x, var_2.a.x), vec3<bool>(true, var_2.a.x, var_2.a.x), vec3<bool>(true, true, true))), var_2.a.x), -1287f, max(-var_0.a, var_2.c), var_2.d);
    return _wgslsmith_div_vec4_u32(abs(select(vec4<u32>(31314u, 4294967295u, 42334u, 4294967295u), ~vec4<u32>(var_2.d, global1.x, global1.x, 1u), !vec4<bool>(global2[_wgslsmith_index_u32(global1.x, 12u)], true, var_4.a.x, true)) ^ vec4<u32>(var_4.d, 1u, global1.x, select(u_input.a, 39033u, true))), select(min(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, u_input.a, var_2.d, u_input.a), vec4<u32>(arg_0.x, global1.x, 1u, 1u)), firstLeadingBit(vec4<u32>(u_input.a, u_input.a, 35902u, global1.x))) >> (firstTrailingBit(vec4<u32>(0u, u_input.a, 16091u, 35204u)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(global1.x, global1.x, 1u, 21367u) | ~vec4<u32>(4294967295u, var_2.d, arg_0.x, global1.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(15614u, 696u, 1u, arg_0.x) & vec4<u32>(u_input.a, 1u, u_input.a, 0u), vec4<u32>(var_2.d, var_2.d, 4294967295u, u_input.a) | vec4<u32>(78047u, var_2.d, var_2.d, 15568u), ~vec4<u32>(var_4.d, var_2.d, arg_0.x, arg_0.x))), false));
}

fn func_1() -> Struct_5 {
    let var_0 = vec3<u32>(~global1.x, ~(~0u), func_2(Struct_2(vec3<bool>(true && global2[_wgslsmith_index_u32(global1.x, 12u)], !global2[_wgslsmith_index_u32(global1.x, 12u)], false), _wgslsmith_f_op_f32(-1150f * _wgslsmith_f_op_f32(min(-248f, 571f))), -(vec3<i32>(9995i, u_input.b, 14846i) & vec3<i32>(2147483647i, 2147483647i, -2558i)), u_input.a), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -562f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(596f + -179f), 526f, global1.x != global1.x))), Struct_2(vec3<bool>(any(vec3<bool>(false, true, global2[_wgslsmith_index_u32(49089u, 12u)])), false, !global2[_wgslsmith_index_u32(global1.x, 12u)]), 1122f, _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, 4681i, u_input.b) | vec3<i32>(u_input.b, 2147483647i, u_input.b), countOneBits(vec3<i32>(2147483647i, u_input.b, u_input.b))), select(global1.x, u_input.a, true))));
    var var_1 = vec2<i32>(i32(-1i) * -(~_wgslsmith_div_i32(u_input.b, 2147483647i)), _wgslsmith_clamp_i32(firstLeadingBit(-1i), _wgslsmith_div_i32(u_input.b, u_input.b), u_input.b));
    global1 = _wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, abs(_wgslsmith_dot_vec2_u32(~global1.zy, vec2<u32>(32733u, 25033u) >> (vec2<u32>(52028u, u_input.a) % vec2<u32>(32u)))), 1u, 50355u), func_4(min(_wgslsmith_sub_vec2_u32(vec2<u32>(15387u, 4294967295u) >> (vec2<u32>(var_0.x, 1u) % vec2<u32>(32u)), vec2<u32>(4294967295u, 1u) & vec2<u32>(u_input.a, 0u)), select(firstLeadingBit(vec2<u32>(0u, 7709u)), ~global1.zy, !global2[_wgslsmith_index_u32(4294967295u, 12u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, -1413f, -1849f, -939f), vec4<f32>(-1057f, -1000f, 1233f, 2927f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1171f, 284f, 874f, -1598f)))), _wgslsmith_dot_vec2_i32(select(reverseBits(vec2<i32>(u_input.b, var_1.x)), func_3(Struct_3(vec3<i32>(31185i, u_input.b, var_1.x))), vec2<bool>(global2[_wgslsmith_index_u32(global1.x, 12u)], global2[_wgslsmith_index_u32(23731u, 12u)])), _wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(-38656i, 1i)), vec2<i32>(-8087i, 2147483647i)))));
    var var_2 = !(!any(vec3<bool>(true, true, global2[_wgslsmith_index_u32(34298u ^ global1.x, 12u)])));
    let var_3 = abs(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, -1835i), _wgslsmith_div_vec3_i32(vec3<i32>(71518i, var_1.x, var_1.x), vec3<i32>(63800i, u_input.b, 69696i)))) > 1i;
    return Struct_5(Struct_4(select(var_3, true, global2[_wgslsmith_index_u32(17925u, 12u)])), vec3<bool>(((32719u | var_0.x) | (u_input.a ^ global1.x)) > _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(var_0.x, u_input.a, global1.x, 0u)), reverseBits(vec4<u32>(var_0.x, 0u, 0u, 24721u))), global2[_wgslsmith_index_u32(~select(var_0.x, ~0u, all(vec3<bool>(false, global2[_wgslsmith_index_u32(31414u, 12u)], true))), 12u)], global2[_wgslsmith_index_u32(10478u, 12u)]), Struct_2(vec3<bool>(any(select(vec3<bool>(var_3, global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(0u, 12u)]), vec3<bool>(true, false, var_3), false)), global2[_wgslsmith_index_u32(1u, 12u)] && true, false), _wgslsmith_f_op_f32(860f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1225f)))), firstLeadingBit(vec3<i32>(_wgslsmith_clamp_i32(32152i, 67316i, 54785i), u_input.b, 1i)), _wgslsmith_add_u32(_wgslsmith_add_u32(16960u, ~121027u), u_input.a)), Struct_4(all(select(!vec2<bool>(var_3, var_3), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 12u)], global2[_wgslsmith_index_u32(u_input.a, 12u)]), !vec2<bool>(global2[_wgslsmith_index_u32(40981u, 12u)], var_3)))));
}

fn func_5(arg_0: Struct_5, arg_1: vec3<f32>, arg_2: u32, arg_3: vec3<f32>) -> Struct_4 {
    let var_0 = 1i;
    let var_1 = -4037i;
    let var_2 = arg_2;
    var var_3 = Struct_3(~arg_0.c.c);
    let var_4 = i32(-1i) * -3221i;
    return Struct_4(all(!(!vec4<bool>(true, true, arg_0.a.a, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -20408i;
    let var_0 = func_5(func_1(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-113f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1674f + -830f) - -632f), 1f)), _wgslsmith_mod_u32(~(~26008u >> (1u % 32u)), global1.x | ~(~u_input.a)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1268f), _wgslsmith_f_op_f32(353f - 365f), _wgslsmith_f_op_f32(trunc(-801f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-627f, -1127f, 1309f) + vec3<f32>(112f, -390f, -950f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1995f, -309f, 225f)))))));
    global2 = array<bool, 12>();
    var var_1 = Struct_2(!select(vec3<bool>(true, true, global2[_wgslsmith_index_u32(1u, 12u)]), func_1().b, vec3<bool>(var_0.a, var_0.a, !global2[_wgslsmith_index_u32(7774u, 12u)])), _wgslsmith_f_op_f32(f32(-1f) * -1000f), abs(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.b, -28673i), vec3<i32>(19852i, -1i, 1i), vec3<i32>(-2147483647i, 24739i, u_input.b)), ~min(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(3634i, 2147483647i, u_input.b)), select(select(vec3<bool>(global2[_wgslsmith_index_u32(global1.x, 12u)], true, var_0.a), vec3<bool>(var_0.a, global2[_wgslsmith_index_u32(global1.x, 12u)], global2[_wgslsmith_index_u32(1u, 12u)]), false), select(vec3<bool>(true, false, var_0.a), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 12u)], var_0.a), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 12u)], global2[_wgslsmith_index_u32(64335u, 12u)], global2[_wgslsmith_index_u32(u_input.a, 12u)])), !vec3<bool>(var_0.a, var_0.a, var_0.a)))), 4294967295u);
    let var_2 = func_1().c;
    let var_3 = !(!var_1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(var_2.b)), _wgslsmith_f_op_f32(max(var_1.b, 894f)), _wgslsmith_f_op_f32(exp2(var_1.b)), _wgslsmith_f_op_f32(-1317f + 684f))), vec4<f32>(var_1.b, -224f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b * -1361f)), var_2.b), var_1.a.x)), firstLeadingBit(func_4(global1.wz, vec4<f32>(var_2.b, _wgslsmith_f_op_f32(f32(-1f) * -1175f), 286f, -1000f), countOneBits(1i)).x), reverseBits(_wgslsmith_add_vec4_i32(select(vec4<i32>(1i, u_input.b, 34866i, var_2.c.x) >> (vec4<u32>(24960u, global1.x, 1u, 4294967295u) % vec4<u32>(32u)), -vec4<i32>(0i, 1i, 23069i, var_1.c.x), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, var_1.d), 12u)]), vec4<i32>(1i, 1i, ~var_1.c.x, ~var_2.c.x))));
}

