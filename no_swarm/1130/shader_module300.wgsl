struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: i32) -> u32 {
    global0 = array<f32, 4>();
    let var_0 = u_input.a;
    global0 = array<f32, 4>();
    global0 = array<f32, 4>();
    global0 = array<f32, 4>();
    return abs(47745u);
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_3, arg_3: Struct_3) -> vec3<i32> {
    global0 = array<f32, 4>();
    let var_0 = ~vec3<u32>(func_3(arg_2.a, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 4285u), 4u)] > -938f, _wgslsmith_mult_i32(u_input.c.x << (arg_0 % 32u), abs(arg_2.b.x))), ~u_input.a, 34157u);
    var var_1 = arg_3.a.b.x;
    var var_2 = arg_3;
    let var_3 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-555f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 4u)] + 1022f))));
    return arg_2.a.b;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec4_u32(~(~min(~vec4<u32>(u_input.b, u_input.b, 33361u, u_input.a), reverseBits(vec4<u32>(u_input.b, u_input.a, u_input.a, 33983u)))), (~(vec4<u32>(24010u, 1u, 4294967295u, u_input.a) ^ vec4<u32>(27480u, 11566u, 19295u, u_input.b)) << (vec4<u32>(1u, _wgslsmith_mult_u32(u_input.b, u_input.a), 1u, _wgslsmith_add_u32(41616u, 15972u)) % vec4<u32>(32u))) & vec4<u32>(reverseBits(1u), _wgslsmith_sub_u32(0u, u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 48310u, 50652u), vec3<u32>(31820u, 1u, 4294967295u)) >> (u_input.a % 32u), _wgslsmith_mod_u32(firstTrailingBit(u_input.a), 1u)));
    var var_1 = vec3<bool>(arg_1.a.b.x > _wgslsmith_sub_i32(i32(-1i) * -arg_1.b.x, u_input.c.x), arg_0.c.x, true);
    var var_2 = true;
    let var_3 = vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.b.x, u_input.c.x) << ((~vec2<u32>(0u, u_input.b) >> (~vec2<u32>(u_input.b, 1u) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(vec2<i32>(15629i, _wgslsmith_mult_i32(arg_0.b.x, 2147483647i)), -arg_1.a.b.xy & (arg_0.b.xx & u_input.c))), -u_input.c.x | (u_input.c.x & arg_1.b.x));
    global0 = array<f32, 4>();
    return Struct_1(u_input.b, u_input.c.x);
}

fn func_1(arg_0: f32) -> vec2<f32> {
    var var_0 = func_4(Struct_2(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, any(vec4<bool>(true, false, false, true)), true), select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), all(vec3<bool>(true, true, true)))), func_2(1u, true, Struct_3(Struct_2(vec3<bool>(false, true, true), vec3<i32>(u_input.c.x, 1i, u_input.c.x), vec2<bool>(true, true), vec2<bool>(true, false)), u_input.c), Struct_3(Struct_2(vec3<bool>(true, false, false), vec3<i32>(2147483647i, -5498i, 2147483647i), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<i32>(1i, u_input.c.x))) | vec3<i32>(_wgslsmith_mult_i32(u_input.c.x, -2147483647i), u_input.c.x, reverseBits(u_input.c.x)), select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(false, false, false, true)), true), true), select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(false, false), select(true, true, false)), false)), Struct_3(Struct_2(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), (vec3<i32>(39736i, 1i, -6756i) >> (vec3<u32>(u_input.a, u_input.a, u_input.b) % vec3<u32>(32u))) & max(vec3<i32>(u_input.c.x, 84483i, 9588i), vec3<i32>(u_input.c.x, u_input.c.x, -1i)), vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, false), false)), vec2<i32>(-1i) * -select(u_input.c, u_input.c, vec2<bool>(false, true))));
    var var_1 = _wgslsmith_mod_u32(var_0.a, 15492u);
    let var_2 = Struct_2(!vec3<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), false, select(any(vec2<bool>(true, true)), true, all(vec4<bool>(false, false, false, true)))), vec3<i32>(func_4(Struct_2(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true), -vec3<i32>(-44564i, u_input.c.x, var_0.b), vec2<bool>(false, true), vec2<bool>(true, true)), Struct_3(Struct_2(vec3<bool>(false, true, true), vec3<i32>(var_0.b, 12317i, 8599i), vec2<bool>(false, false), vec2<bool>(false, true)), ~u_input.c)).b, var_0.b, ~(~_wgslsmith_dot_vec2_i32(u_input.c, u_input.c))), select(vec2<bool>(true, true), vec2<bool>(~139177u <= firstLeadingBit(var_0.a), u_input.c.x <= -var_0.b), true), select(vec2<bool>(false, any(vec3<bool>(true, true, true))), vec2<bool>(_wgslsmith_clamp_i32(2147483647i, 14646i, u_input.c.x) < (u_input.c.x | u_input.c.x), true), vec2<bool>(false, ~u_input.b > countOneBits(66912u))));
    let var_3 = firstTrailingBit(vec3<i32>(_wgslsmith_clamp_i32(u_input.c.x, ~var_0.b, -2147483647i) | u_input.c.x, 50075i | -(~u_input.c.x), 2147483647i));
    var var_4 = u_input.a;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(38166u, 4u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 4u)]))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, global0[_wgslsmith_index_u32(~1871u, 4u)]))), select(var_2.a.xx, var_2.d, var_2.d.x & var_2.c.x))));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: f32) -> vec3<i32> {
    var var_0 = u_input.a;
    var var_1 = ~vec2<u32>(u_input.b, 1u);
    var var_2 = Struct_3(Struct_2(!arg_1.a.a, abs(arg_1.a.b), arg_1.a.d, vec2<bool>(arg_1.a.d.x, all(vec2<bool>(true, arg_1.a.a.x)))), arg_1.b);
    let var_3 = Struct_1(0u, 17170i | -arg_1.b.x);
    var var_4 = _wgslsmith_mult_u32(var_1.x, min(var_3.a, _wgslsmith_mod_u32(abs(var_1.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, var_1.x, var_3.a), vec3<u32>(0u, 58394u, 13634u))))) << ((_wgslsmith_mult_u32(8049u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_1.x, 4294967295u), vec3<u32>(35737u, var_1.x, var_3.a)), 4294967295u)) << ((_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(0u, 28948u, 30548u, u_input.b)), ~vec4<u32>(u_input.a, var_1.x, u_input.a, var_3.a)) << (~var_1.x % 32u)) % 32u)) % 32u);
    return firstTrailingBit(vec3<i32>(-1i, _wgslsmith_sub_i32(~(-23620i), ~(arg_1.a.b.x & 2147483647i)), _wgslsmith_add_i32(_wgslsmith_div_i32(-u_input.c.x, select(-2147483647i, var_3.b, var_2.a.d.x)), -var_2.a.b.x)));
}

fn func_6(arg_0: Struct_2, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_3(Struct_2(select(vec3<bool>(arg_0.c.x, true, any(vec4<bool>(true, true, false, arg_0.c.x))), !select(arg_0.a, vec3<bool>(false, true, true), false), arg_0.a.x), vec3<i32>(u_input.c.x ^ 1i, i32(-1i) * -33612i, u_input.c.x), arg_0.a.yz, select(vec2<bool>(true, arg_0.d.x), arg_0.d, vec2<bool>(any(vec4<bool>(false, false, arg_0.c.x, arg_0.c.x)), true))), arg_0.b.xx);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global0[_wgslsmith_index_u32(u_input.a, 4u)], -930f)))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(482f, 730f, -1582f, -992f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 1565f, -659f, -523f) * vec4<f32>(1687f, global0[_wgslsmith_index_u32(66107u, 4u)], 1045f, var_1.x))))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0[_wgslsmith_index_u32(abs(13047u), 4u)], 490f, _wgslsmith_f_op_f32(trunc(-603f)), 1f))))));
    var var_3 = var_0.b;
    var_3 = vec2<i32>(var_0.a.b.x, var_0.a.b.x);
    return Struct_1(36738u, -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 4>();
    let var_0 = func_6(Struct_2(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), func_5(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_1(-1546f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(72280u, 4u)])), vec2<bool>(true, true))), Struct_3(Struct_2(vec3<bool>(true, true, true), vec3<i32>(25249i, u_input.c.x, 0i), vec2<bool>(true, false), vec2<bool>(false, false)), u_input.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.a, 4u)], global0[_wgslsmith_index_u32(u_input.a, 4u)])) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(35100u, 4u)]))), vec2<bool>(!(1154f == global0[_wgslsmith_index_u32(u_input.b, 4u)]), _wgslsmith_f_op_f32(1608f * global0[_wgslsmith_index_u32(74316u, 4u)]) < global0[_wgslsmith_index_u32(u_input.b, 4u)]), vec2<bool>(true, false)), abs(reverseBits(vec3<u32>(18534u, countOneBits(23758u), ~u_input.b))));
    let var_1 = Struct_2(select(!vec3<bool>(true, all(vec3<bool>(false, false, true)), true), !select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true)), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), true), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), any(vec2<bool>(false, true)))), min(vec3<i32>(0i, _wgslsmith_clamp_i32(17127i, _wgslsmith_mod_i32(var_0.b, u_input.c.x), -var_0.b), var_0.b), reverseBits(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-14186i, -1i, 17448i), vec3<i32>(1i, 0i, 6098i)), _wgslsmith_sub_vec3_i32(vec3<i32>(107i, 14967i, 19658i), vec3<i32>(var_0.b, 1882i, 1i))))), !vec2<bool>((global0[_wgslsmith_index_u32(106113u, 4u)] <= 1298f) | true, true), select(select(!select(vec2<bool>(false, false), vec2<bool>(false, false), false), select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(false, false), all(vec3<bool>(false, false, true))), any(vec4<bool>(true, true, true, true))), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), true));
    let var_2 = ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, var_0.a, 3807u & (0u >> (u_input.a % 32u))), ~_wgslsmith_div_vec3_u32(~vec3<u32>(0u, 69349u, 11583u), firstTrailingBit(vec3<u32>(24317u, 13965u, u_input.b))), ~vec3<u32>(1u, ~var_0.a, 43835u));
    let var_3 = func_6(Struct_2(var_1.a, firstTrailingBit(reverseBits(vec3<i32>(var_0.b, var_0.b, var_1.b.x))), select(vec2<bool>(true, true), !(!var_1.a.yx), vec2<bool>(var_1.d.x, var_1.c.x)), select(var_1.d, vec2<bool>(var_1.d.x, var_1.d.x), select(!var_1.c, var_1.d, var_1.a.x | false))), var_2);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1887f * 288f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_2.x, 4u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(var_3.a, 4u)])))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1549f, 1896f), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0[_wgslsmith_index_u32(1u, 4u)], -1637f))))))));
}

