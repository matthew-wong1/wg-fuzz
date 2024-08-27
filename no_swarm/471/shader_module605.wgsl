struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: u32,
    d: vec2<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6> = array<f32, 6>(-237f, -765f, -1178f, 2042f, 643f, -530f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec2<f32> {
    var var_0 = Struct_1(vec2<u32>(reverseBits(~u_input.a.x ^ u_input.a.x), 3756u), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], global0[_wgslsmith_index_u32(65275u, 6u)])) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1247f, global0[_wgslsmith_index_u32(u_input.a.x, 6u)])))))), vec2<f32>(1f, 1f)), ~(u_input.a.x | 0u), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1051f, global0[_wgslsmith_index_u32(4294967295u, 6u)]))), vec2<f32>(global0[_wgslsmith_index_u32(~14959u, 6u)], -278f)))), u_input.a.x);
    let var_1 = vec3<bool>(true, any(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true)));
    var_0 = Struct_1(abs(_wgslsmith_sub_vec2_u32((var_0.a & var_0.a) << (vec2<u32>(4294967295u, 40961u) % vec2<u32>(32u)), vec2<u32>(var_0.a.x >> (var_0.a.x % 32u), ~u_input.a.x))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x * 568f) - _wgslsmith_f_op_f32(f32(-1f) * -3040f)) + 418f), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, ~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), 6u)]), u_input.a.x, _wgslsmith_f_op_vec2_f32(-var_0.b), countOneBits(4692u));
    var var_2 = Struct_1(select(vec2<u32>(firstTrailingBit(14164u), var_0.c), u_input.a.zx, select(select(select(vec2<bool>(true, false), var_1.zz, var_1.x), vec2<bool>(true, false), !var_1.x), !(!var_1.xy), var_1.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(~1u, 6u)], _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], global0[_wgslsmith_index_u32(var_0.c, 6u)]))))), 48473u, var_0.b, _wgslsmith_mult_u32(43057u, u_input.a.x));
    let var_3 = Struct_1(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.e, 39127u), _wgslsmith_mod_vec2_u32(~vec2<u32>(47159u, var_2.e), var_2.a & u_input.a.xy)), select(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), var_2.c ^ var_2.c), vec2<u32>(0u >> (u_input.a.x % 32u), 1u), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(215f, 240f)))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(2650f, global0[_wgslsmith_index_u32(4294967295u, 6u)]), vec2<f32>(-1428f, var_2.b.x))))), var_0.c, var_2.b, 0u);
    return _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(var_3.b.x * global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~var_0.e, u_input.a.x), 6u)]), var_3.d.x)));
}

fn func_2(arg_0: bool, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = ~abs(_wgslsmith_mult_u32(~1u >> (u_input.a.x % 32u), u_input.a.x));
    return Struct_1(~(~(~(~arg_1.yw))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0[_wgslsmith_index_u32(arg_1.x, 6u)], 1000f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], global0[_wgslsmith_index_u32(1u, 6u)])) + vec2<f32>(1420f, 1000f))))), 1u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 6u)], 1000f)))))), 1100u);
}

fn func_4(arg_0: Struct_1) -> f32 {
    global0 = array<f32, 6>();
    return _wgslsmith_div_f32(-457f, _wgslsmith_f_op_f32(min(arg_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(0u, 6u)], -879f)) - _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], arg_0.d.x))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -967f), _wgslsmith_f_op_vec2_f32(func_3()).x)))));
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: vec4<bool>) -> Struct_1 {
    global0 = array<f32, 6>();
    var var_0 = _wgslsmith_f_op_f32(1356f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_div_f32(arg_0, arg_1))));
    let var_1 = func_2(arg_2.x, abs(_wgslsmith_div_vec4_u32(reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 1u, 12389u, 1026u), vec4<u32>(u_input.a.x, 92738u, 1u, u_input.a.x))), ~countOneBits(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 4294967295u)))));
    global0 = array<f32, 6>();
    var var_2 = _wgslsmith_mult_u32(u_input.a.x, abs(u_input.a.x));
    return var_1;
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: vec2<u32>, arg_3: vec3<f32>) -> vec4<f32> {
    global0 = array<f32, 6>();
    var var_0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 6u)] * 1112f))))), _wgslsmith_f_op_f32(func_4(func_2(true, reverseBits(vec4<u32>(u_input.a.x, 4294967295u, 0u, 20731u) & vec4<u32>(45408u, u_input.a.x, 0u, arg_2.x))))), select(select(vec4<bool>(!arg_0, false, arg_0, select(true, arg_0, arg_0)), select(select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(true, false, true, arg_0), true), select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, false, true, false), vec4<bool>(false, arg_0, arg_0, true)), all(vec2<bool>(arg_0, arg_0))), !any(vec4<bool>(false, true, false, true))), !select(select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(false, arg_0, arg_0, arg_0), arg_0), vec4<bool>(false, false, true, true), arg_0), !(!select(vec4<bool>(arg_0, true, false, arg_0), vec4<bool>(false, true, arg_0, false), vec4<bool>(true, arg_0, true, false)))));
    var var_1 = vec2<i32>(min(arg_1.x, arg_1.x), (i32(-1i) * -arg_1.x) << (~(~max(var_0.c, 63018u)) % 32u));
    var var_2 = Struct_1(vec2<u32>(~(~arg_2.x), 1u), _wgslsmith_div_vec2_f32(var_0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_3.zy))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2279f, -274f)) + _wgslsmith_f_op_vec2_f32(exp2(arg_3.xz))))), countOneBits(u_input.a.x), var_0.b, func_5(_wgslsmith_div_f32(_wgslsmith_div_f32(-378f, func_5(global0[_wgslsmith_index_u32(arg_2.x, 6u)], var_0.b.x, vec4<bool>(false, true, false, arg_0)).b.x), -2077f), arg_3.x, vec4<bool>(arg_0, false, true, select(true, 53630u <= arg_2.x, !arg_0))).c);
    let var_3 = func_2(arg_0, _wgslsmith_add_vec4_u32(firstTrailingBit(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_2.c, arg_2.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, arg_2.x, 48051u)), reverseBits(vec4<u32>(48828u, arg_2.x, 4294967295u, 4294967295u)))), _wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(4294967295u, 20683u, var_2.a.x, arg_2.x)), ~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.c, 122928u, u_input.a.x, arg_2.x), vec4<u32>(arg_2.x, arg_2.x, arg_2.x, var_2.a.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u, var_0.a.x, 33675u), reverseBits(vec4<u32>(var_0.e, var_2.a.x, var_0.e, arg_2.x)), abs(vec4<u32>(arg_2.x, u_input.a.x, arg_2.x, var_2.e))))));
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.b.x, arg_3.x, -1595f, var_2.d.x), vec4<f32>(var_2.d.x, -2124f, var_3.d.x, var_3.b.x)), vec4<f32>(var_3.b.x, -611f, var_0.b.x, var_2.d.x))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, var_2.b.x, -1113f, var_0.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-849f, -1168f, arg_3.x, 460f))))))), vec4<bool>(true, true, true, true)));
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec3<bool>) -> f32 {
    let var_0 = select(arg_3, select(vec3<bool>((arg_3.x != true) != all(vec2<bool>(false, arg_3.x)), false, any(vec2<bool>(true, arg_3.x))), !arg_3, any(vec4<bool>(true, !arg_3.x, true, false))), select(!arg_3, select(vec3<bool>(all(vec4<bool>(arg_3.x, false, true, true)), arg_3.x, arg_3.x), select(vec3<bool>(false, arg_3.x, false), select(vec3<bool>(false, false, arg_3.x), arg_3, vec3<bool>(false, false, false)), all(vec4<bool>(true, true, true, arg_3.x))), arg_3.x), all(!arg_3.zx)));
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    let var_1 = vec3<u32>(arg_1.a.x, 2046u, _wgslsmith_mod_u32(countOneBits(_wgslsmith_clamp_u32(~0u, ~u_input.a.x, 0u)), arg_1.c));
    global0 = array<f32, 6>();
    return global0[_wgslsmith_index_u32((13120u | _wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.a.x, ~0u, _wgslsmith_sub_u32(var_1.x, arg_1.e)), ~(~var_1.x))) ^ min(arg_1.e, arg_1.e), 6u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a, ~(~vec3<u32>(2616u, u_input.a.x, 15036u))), 6u)], 626f)), _wgslsmith_f_op_f32(func_6(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-965f, -1076f, global0[_wgslsmith_index_u32(u_input.a.x, 6u)], global0[_wgslsmith_index_u32(u_input.a.x, 6u)]) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], 581f, 1101f, global0[_wgslsmith_index_u32(u_input.a.x, 6u)]))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], -364f, global0[_wgslsmith_index_u32(2041u, 6u)], 869f) + _wgslsmith_f_op_vec4_f32(func_1(true, vec2<i32>(2147483647i, 653i), u_input.a.xy, vec3<f32>(global0[_wgslsmith_index_u32(39051u, 6u)], global0[_wgslsmith_index_u32(u_input.a.x, 6u)], 1391f))))), func_2(true, vec4<u32>(~0u, u_input.a.x & u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.zx, u_input.a.zy), ~0u)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], 748f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], global0[_wgslsmith_index_u32(u_input.a.x, 6u)])))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-819f, global0[_wgslsmith_index_u32(21513u, 6u)])) + vec2<f32>(global0[_wgslsmith_index_u32(70872u, 6u)], global0[_wgslsmith_index_u32(u_input.a.x, 6u)])), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), true))), vec3<bool>(true, true, true))));
    global0 = array<f32, 6>();
    var var_1 = vec3<bool>(all(select(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))))), !all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), true)), true);
    global0 = array<f32, 6>();
    var var_2 = var_1.x;
    var var_3 = Struct_1(vec2<u32>(firstTrailingBit(_wgslsmith_mod_u32(~u_input.a.x, 4294967295u)), reverseBits(51886u)), var_0, 0u, _wgslsmith_f_op_vec2_f32(-var_0), _wgslsmith_mult_u32(func_2(var_1.x, ~countOneBits(vec4<u32>(u_input.a.x, 1u, 0u, u_input.a.x))).e, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec2<i32>(24543i, -22215i), ~vec2<i32>(_wgslsmith_add_i32(-2147483647i, 1i), 1i)), var_3.d.x);
}

