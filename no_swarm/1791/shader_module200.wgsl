struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25>;

var<private> global1: vec2<i32> = vec2<i32>(-11751i, i32(-2147483648));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec3<f32>) -> vec3<bool> {
    var var_0 = vec2<f32>(-281f, _wgslsmith_f_op_f32(round(-1000f)));
    let var_1 = vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.b, 25u)], global1.x), -select(vec2<i32>(11324i, global1.x), vec2<i32>(global1.x, global0[_wgslsmith_index_u32(1u, 25u)]), vec2<bool>(arg_0, false))), _wgslsmith_sub_i32(14216i, _wgslsmith_sub_i32(8893i << (arg_1 % 32u), -2147483647i)), -893i) >> (countOneBits(u_input.d.xyy) % vec3<u32>(32u));
    global0 = array<i32, 25>();
    let var_2 = u_input.d.zxx;
    var var_3 = Struct_3(-abs(-(vec2<i32>(4258i, -56977i) | var_1.zz)), 23283u);
    return select(vec3<bool>(any(vec3<bool>(0i >= global0[_wgslsmith_index_u32(73520u, 25u)], arg_0, false)), true, !(any(vec2<bool>(arg_0, arg_0)) && !arg_0)), select(select(!select(vec3<bool>(arg_0, true, false), vec3<bool>(false, false, true), vec3<bool>(false, arg_0, arg_0)), select(select(vec3<bool>(arg_0, false, false), vec3<bool>(true, arg_0, true), vec3<bool>(false, true, false)), !vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, true, true)), !vec3<bool>(arg_0, arg_0, false)), select(!vec3<bool>(false, arg_0, false), vec3<bool>(arg_0, !arg_0, true), !arg_0), !arg_0), select(any(!vec4<bool>(arg_0, arg_0, arg_0, true)) == true, any(!vec2<bool>(arg_0, arg_0)), !arg_0));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<bool>) -> i32 {
    global0 = array<i32, 25>();
    var var_0 = Struct_1(vec4<bool>(arg_0.x, arg_1.x, _wgslsmith_f_op_f32(ceil(1052f)) != -521f, true));
    global0 = array<i32, 25>();
    global1 = (vec2<i32>(-1i) * -(~(vec2<i32>(global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(35962u, 25u)]) << (vec2<u32>(u_input.b, 0u) % vec2<u32>(32u))))) ^ (-(~vec2<i32>(-11362i, -2147483647i) >> (max(vec2<u32>(0u, u_input.d.x), u_input.d.zx) % vec2<u32>(32u))) >> (~abs(u_input.d.yx) % vec2<u32>(32u)));
    let var_1 = Struct_3(vec2<i32>(-_wgslsmith_mult_i32(~(-1i), 31310i), global0[_wgslsmith_index_u32(39923u, 25u)]), max(~(~(~1u)), u_input.b));
    return max(i32(-1i) * -2147483647i, u_input.a);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3) -> Struct_2 {
    global0 = array<i32, 25>();
    global1 = vec2<i32>(-12481i, max(arg_1.a.x, 2147483647i) >> (arg_1.b % 32u));
    global0 = array<i32, 25>();
    global1 = _wgslsmith_mod_vec2_i32(arg_1.a, ~(vec2<i32>(-1i) * -vec2<i32>(2147483647i, -1i)));
    global1 = _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(arg_1.a, arg_0.a), vec2<i32>(min(_wgslsmith_div_i32(43382i, -32162i), abs(arg_0.a.x)), _wgslsmith_dot_vec3_i32(countOneBits(~vec3<i32>(0i, 2147483647i, -4791i)), _wgslsmith_div_vec3_i32(vec3<i32>(35086i, global1.x, arg_0.a.x), abs(vec3<i32>(global0[_wgslsmith_index_u32(5789u, 25u)], arg_1.a.x, -2147483647i))))));
    return Struct_2(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(arg_1.a, arg_1.a), func_4(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false), vec3<bool>(false, false, true), func_3(false, arg_1.b, vec3<f32>(186f, -335f, -1021f))), vec4<bool>(select(false, false, true), true, all(vec3<bool>(false, true, false)), true))), u_input.d);
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: Struct_2, arg_3: bool) -> bool {
    global1 = firstLeadingBit(reverseBits(~vec2<i32>(0i, 7010i)) & vec2<i32>(arg_0, func_4(vec3<bool>(arg_3, true, false), !vec4<bool>(true, false, arg_3, true))));
    global0 = array<i32, 25>();
    var var_0 = arg_2;
    var var_1 = Struct_1(vec4<bool>(true, true, select(false, arg_3, select(true, true, arg_1)) || false, true));
    let var_2 = select(~var_0.b, vec4<u32>(min(124956u, ~4294967295u), ~u_input.b, ~select(var_0.b.x, u_input.d.x, arg_1), ~arg_2.b.x ^ ~arg_2.b.x) ^ abs(select(vec4<u32>(arg_2.b.x, var_0.b.x, arg_2.b.x, 11475u), min(vec4<u32>(arg_2.b.x, 1u, var_0.b.x, var_0.b.x), vec4<u32>(var_0.b.x, u_input.b, arg_2.b.x, 1u)), var_1.a.x | false)), select(all(var_1.a.yx) | true, !var_1.a.x, var_1.a.x));
    return all(select(var_1.a, select(var_1.a, select(!var_1.a, !var_1.a, !vec4<bool>(false, var_1.a.x, false, var_1.a.x)), vec4<bool>(global1.x != var_0.a, select(arg_1, false, false), 12630i >= u_input.c, all(var_1.a.wyw))), !var_1.a.x != any(select(var_1.a, var_1.a, var_1.a.x))));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_3) -> bool {
    let var_0 = ~max(_wgslsmith_add_u32(_wgslsmith_add_u32(4294967295u, arg_1.b), _wgslsmith_add_u32(arg_0.x, 144u)), arg_0.x) | 4294967295u;
    let var_1 = arg_1;
    let var_2 = select(!vec4<bool>(_wgslsmith_f_op_f32(trunc(-1085f)) == -1144f, false, false, all(vec2<bool>(true, true))), vec4<bool>(all(!select(vec2<bool>(true, true), vec2<bool>(false, true), true)), !((arg_1.b >= 10661u) || any(vec2<bool>(true, true))), select(true, func_5(_wgslsmith_clamp_i32(-2147483647i, global1.x, global0[_wgslsmith_index_u32(4294967295u, 25u)]), arg_1.b <= 67798u, func_2(arg_1, Struct_3(var_1.a, 0u)), true), any(vec4<bool>(false, true, false, false)) || all(vec4<bool>(true, true, false, true))), all(vec3<bool>(true, true, true))), !(!all(vec2<bool>(true, true))));
    let var_3 = var_1;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -608f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1323f - 1172f))) - 461f));
    return var_4 >= _wgslsmith_f_op_f32(-103f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1318f, var_4, false))) + -369f));
}

fn func_6(arg_0: u32, arg_1: vec2<bool>) -> Struct_3 {
    var var_0 = vec2<i32>(firstLeadingBit(global0[_wgslsmith_index_u32(4294967295u ^ arg_0, 25u)] ^ ~firstLeadingBit(8573i)), _wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, -1i, ~(global0[_wgslsmith_index_u32(u_input.d.x, 25u)] & global1.x)), vec3<i32>(2147483647i, (u_input.a | -23577i) ^ _wgslsmith_add_i32(global1.x, global1.x), _wgslsmith_dot_vec4_i32(~vec4<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 25u)], u_input.a, 2147483647i, u_input.a), ~vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 25u)], global1.x, global0[_wgslsmith_index_u32(74720u, 25u)], global1.x)))));
    global1 = _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(60181u, 25u)], u_input.c) << ((vec2<u32>(arg_0, u_input.b) << (u_input.d.wz % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(2147483647i & global0[_wgslsmith_index_u32(1u, 25u)], _wgslsmith_clamp_i32(-29556i, global0[_wgslsmith_index_u32(4294967295u, 25u)], -2147483647i))), firstTrailingBit(-vec2<i32>(global0[_wgslsmith_index_u32(1u, 25u)], u_input.a) | _wgslsmith_div_vec2_i32(vec2<i32>(global1.x, -29260i), vec2<i32>(var_0.x, var_0.x)))), _wgslsmith_mult_vec2_i32(~(vec2<i32>(u_input.a, global1.x) >> ((vec2<u32>(u_input.d.x, arg_0) & u_input.d.yz) % vec2<u32>(32u))), select(vec2<i32>(0i, global0[_wgslsmith_index_u32(21583u, 25u)] & 1i), vec2<i32>(var_0.x, ~(-40568i)), arg_1.x)));
    var var_1 = func_2(Struct_3(vec2<i32>(global1.x, -global0[_wgslsmith_index_u32(59075u, 25u)]) ^ abs(vec2<i32>(1i, u_input.c) | vec2<i32>(global1.x, -4992i)), u_input.b), Struct_3(abs(vec2<i32>(global0[_wgslsmith_index_u32(0u, 25u)], var_0.x)), 114593u));
    var var_2 = true;
    global1 = vec2<i32>(17428i, _wgslsmith_mod_i32(countOneBits(2147483647i), min(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(7241i, u_input.c), vec2<i32>(global0[_wgslsmith_index_u32(22234u, 25u)], 1i)))));
    return Struct_3(vec2<i32>(_wgslsmith_div_i32(global1.x, u_input.c) ^ 0i, func_2(Struct_3(vec2<i32>(-18693i, -1i), arg_0), Struct_3(vec2<i32>(var_0.x, -43349i), 1u)).a) ^ max(vec2<i32>(func_2(Struct_3(vec2<i32>(0i, -201i), var_1.b.x), Struct_3(vec2<i32>(-2329i, u_input.a), arg_0)).a, var_0.x), vec2<i32>(var_0.x, -1i)), 16931u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.b;
    var var_1 = func_6(firstTrailingBit(11883u), !select(vec2<bool>(global1.x != global0[_wgslsmith_index_u32(u_input.d.x, 25u)], func_1(u_input.d.xyw, Struct_3(vec2<i32>(global0[_wgslsmith_index_u32(0u, 25u)], global1.x), 4294967295u))), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), true));
    let var_2 = func_2(Struct_3(vec2<i32>(_wgslsmith_sub_i32(u_input.a, 2147483647i), u_input.c), ~var_1.b), Struct_3(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -var_1.a, var_1.a & _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, var_1.a.x), var_1.a)), ~firstTrailingBit(4294967295u) << (abs(var_1.b) % 32u)));
    var var_3 = 1492u;
    var_1 = func_6(~0u, vec2<bool>(true, var_1.b != max(~u_input.d.x, 6441u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(var_2.b.x, 2249u), min(var_2.b.wz, vec2<u32>(var_1.b, 0u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(935f, 1f))), _wgslsmith_div_i32(-1i, -(~var_1.a.x) & -31474i), var_2.b.xwy);
}

